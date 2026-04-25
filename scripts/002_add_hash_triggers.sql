-- ============================================================
-- Migration 002 : Trigger auto-calcul de arabe_hash
-- À exécuter UNE SEULE FOIS (après la migration 001) :
--   psql $DATABASE_URL -f scripts/002_add_hash_triggers.sql
-- ============================================================
-- Après ça, tu peux insérer sans fournir arabe_hash :
--   INSERT INTO hadith (sujet, texte_arabe, ...) VALUES (...)
-- Le trigger le calcule tout seul.
-- ============================================================

BEGIN;

-- Fonction partagée par toutes les tables
CREATE OR REPLACE FUNCTION set_arabe_hash()
RETURNS TRIGGER AS $$
BEGIN
  -- Normalise les espaces et calcule le MD5 du texte arabe
  -- Les harakat sont préservés (cf. choix utilisateur)
  NEW.arabe_hash := md5(trim(regexp_replace(NEW.texte_arabe, '\s+', ' ', 'g')));
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Triggers BEFORE INSERT OR UPDATE sur chaque table
DROP TRIGGER IF EXISTS trg_hadith_arabe_hash ON hadith;
CREATE TRIGGER trg_hadith_arabe_hash
  BEFORE INSERT OR UPDATE OF texte_arabe ON hadith
  FOR EACH ROW EXECUTE FUNCTION set_arabe_hash();

DROP TRIGGER IF EXISTS trg_dhikr_arabe_hash ON dhikr;
CREATE TRIGGER trg_dhikr_arabe_hash
  BEFORE INSERT OR UPDATE OF texte_arabe ON dhikr
  FOR EACH ROW EXECUTE FUNCTION set_arabe_hash();

DROP TRIGGER IF EXISTS trg_douaa_arabe_hash ON douaa;
CREATE TRIGGER trg_douaa_arabe_hash
  BEFORE INSERT OR UPDATE OF texte_arabe ON douaa
  FOR EACH ROW EXECUTE FUNCTION set_arabe_hash();

DROP TRIGGER IF EXISTS trg_coran_arabe_hash ON coran;
CREATE TRIGGER trg_coran_arabe_hash
  BEFORE INSERT OR UPDATE OF texte_arabe ON coran
  FOR EACH ROW EXECUTE FUNCTION set_arabe_hash();

DROP TRIGGER IF EXISTS trg_parole_arabe_hash ON parole;
CREATE TRIGGER trg_parole_arabe_hash
  BEFORE INSERT OR UPDATE OF texte_arabe ON parole
  FOR EACH ROW EXECUTE FUNCTION set_arabe_hash();

COMMIT;
