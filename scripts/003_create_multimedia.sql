-- Table `multimedia` : liens vers des vidéos externes (YouTube)
-- Le front affiche la thumbnail YouTube + iframe au clic (click-to-play)

CREATE TABLE IF NOT EXISTS multimedia (
  id              SERIAL       PRIMARY KEY,
  youtube_id      VARCHAR(20)  NOT NULL UNIQUE,
  titre           VARCHAR(300) NOT NULL,
  description     TEXT,
  categorie       VARCHAR(100) DEFAULT '',
  savant          VARCHAR(200),
  duree_secondes  INTEGER,
  created_at      TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_multimedia_categorie  ON multimedia(categorie);
CREATE INDEX IF NOT EXISTS idx_multimedia_created_at ON multimedia(created_at DESC);
