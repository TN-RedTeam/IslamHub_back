-- Paroles de savants recopiées VERBATIM depuis islamsunnite.net (livres des savants)
-- Contenu religieux : sujet, texte arabe, traduction et explication (référence du
-- livre + commentaire du site) copiés à l'identique. Aucun mot ajouté/retiré/modifié.
-- Le nom du savant vient des catégories du site (arbre « les savants sunnites »).
-- Exclus : articles de mise en garde (citations de personnes critiquées par le site),
-- biographies, fatwas institutionnelles, blocs qui sont des versets coraniques purs.
-- Tags = mots-clés réels du site (métadonnée). URL source en commentaire par entrée.
-- Idempotent (WHERE NOT EXISTS sur le texte arabe).
--
-- À exécuter manuellement dans l'éditeur SQL de Supabase.
-- PARTIE 6/9 (script découpé pour la limite de taille de l'éditeur).
-- Toutes les parties sont idempotentes et exécutables dans n'importe quel ordre.

-- Colonnes si absentes :
ALTER TABLE parole ADD COLUMN IF NOT EXISTS savant VARCHAR(255) DEFAULT '';
ALTER TABLE parole ADD COLUMN IF NOT EXISTS tag VARCHAR(255) DEFAULT '';

-- Resynchronise la séquence des id : des lignes existantes ont des id posés
-- explicitement et la séquence était en retard, d'où l'erreur
-- « duplicate key value violates unique constraint "parole_pkey" ».
SELECT setval(pg_get_serial_sequence('parole', 'id'), COALESCE((SELECT MAX(id) FROM parole), 0) + 1, false);

BEGIN;

-- source: https://islamsunnite.net/limam-al-mawsili-confirme-que-les-moujassimah-sont-mecreants/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Les moujassimah sont mécréants', 'Mawsili', 'ولا تقبل شهادة المجسمة لأنهم كفرة', 'Le témoignage des anthropomorphistes (moujassimah) n’est pas pris en compte car ils sont mécréants', '', 'Dans son livre « Al-Ikhtiyâr li Ta’lîli l-Moukhtâr » (page 363 de cette édition), l’Imâm Al-Mawsili a dit :
Informations utiles :
– L’Imâm, le Faqih (spécialiste de la jurisprudence), le Mouhaddith ‘Abdou l-Lâh Ibn Mahmoûd Al-Mawsili Al-Hanafi est né en 599 et il est décédé en 683 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 750 ans.
– Ici il confirme clairement que les anthropomorphistes (moujassimah) sont mécréants.
– Les anthropomorphistes (moujassimah) sont ceux qui attribuent à Allâh le corps, la direction, l’endroit et autres caractéristiques des créatures.
– De nombreux savants ont confirmé que le fait d’attribuer le corps à Allâh constitue de la mécréance. Parmi eux :
L’Imâm ‘Ali Ibnou Abî Tâlib [ Rapporté par Ibnou Mou’allim al-Qourachi ]
L’Imâm Aboû Hanîfah [ Rapporté par Al-Qarâfi ]
L’Imâm Mâlik [ Rapporté par Al-Qarâfi ]
L’Imâm Ach-Châfi’i [ Rapporté par As-Souyoûti ] et [ Rapporté par Al-Qarâfi ]
L’Imâm Ahmad Ibnou Hanbal [ Rapporté par Az-Zarkachi ] et [ Rapporté par Al-Qarâfi ]
L’Imâm Al-Ach’ari [Dans son livre An-Nawâdir] et [ Rapporté par Al-Bayâdi ] et [ Rapporté par Aboû Mansoûr Al-Baghdâdi ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ Dans son Charh de la partie croyance d’Ar-Riçâlah ]
L’Imâm Aboû Mansoûr Al-Baghdâdi [ Dans son livre Al-Asmâ-ou wa s-Sifât ] et [Dans son livre Ousoûl Ad-Dîn]
L’Imâm Ibnou Battâl (449 H.) [Dans son commentaire du Sahîh Al-Boukhâri]
L’Imâm Al-Bayhaqi [ Dans son livre Chou’abou l-Îmân ]
Le Chaykh Aboû Chakoûr As-Sâlimi Al-Hanafi [Dans son livre At-Tamhîd fî Bayâni t-Tawhîd]
L’Imâm Al-Ghazâli qui rapporte également l’unanimité [ Dans son livre Iljâmou l-‘awâm ]
L’Imâm Fakhrou d-Dîn Ar-Râzi [ Dans son livre Ousoûl Ad-Dîn ]
L’Imâm An-Nawawi (676 H.) [Dans son livre Al-Majmoû’]
L’Imâm Al-Mawsili [Dans son livre Al-Ikhtiyâr]
Le Chaykh Ibnou Hamdân Al-Hambali (695 H.) [ Dans son livre Nihâyatou l-Moubtadi-în ]
L’Imâm Ibnou Abî Jamrah (699 H.) [ Dans son livre Bahjah An-Noufoûs ]
L’Imâm An-Naçafi (710 H.) [ Dans son tafsîr ]
L’Imâm Safiyyou d-Dîn Al-Hindi (715 H.) qui mentionne l’unanimité [Dans son livre Nihâyatou l-Wousoûl]
Le Chaykh Mahmôud Al-Qoûnawi Al-Hanafi (771 H.) [ Dans son livre Al-Qalâ-id ]
Al-Qâdî Ibn Khaldoûn Al-Mâliki (m.808 H.) [Dans son livre Al-Ibar wa Diwânou l-Moubtada]
L’Imâm Taqiyyou d-Dîn Al-Hisni (829 H.) [Dans son livre Kifâyatou l-Akhyâr]
Le Chaykh ‘Alâ-ou d-Dîn Al-Boukhâri qui mentionne l’unanimité [ Dans son livre Mouljimatou l-Moujassimah ]
Le Chaykh Ibnou Amîr Al-Hajj Al-Hanafi (879 H.) [Dans son livre At-Taqrîr wa t-Tahbîr]
Le Chaykh Chihâbou d-Dîn Al-Koûrâni [ Dans son livre Ad-Dourarou l-Lawâmi’ ]
L’Imâm As-Souyoûti [ Dans son livre al-Achbâh wa n-Nadhâ-ir ]
Le Chaykh Ibn Hajar Al-Haytami [ Dans son livre Al-Minhajou l-Qawîm ]
Le Chaykh Al-Mounâwi [ Dans son livre Faydou l-Qadîr ]
Le Chaykh Mouhammad Mayyârah (1072 H.)
Le Chaykh Ibn Balbân [Dans son livre Moukhtasar Al-Ifâdât] et [ Rapporté par Al-Qaddoûmi ]
L’Imâm Al-Bayâdi (1098 H.)
L’Imâm Abdou l-Ghani An-Nâboulouçi [ Dans son livre Al-Fathou r-Rabbâni ]
Le Chaykh ‘Abdou l-Lâh Ibn Houçayn Al-‘Alawi (1272 H.) [Dans son livre Soullamou t-Tawfîq]
Le Moufti de La Mecque, le Chaykh Al-Habîb Mouhammad Ibn Houçayn (1281 H.) [Dans son livre Fat-hou l-Ilâh]
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ Dans son livre Minhou l-Jalîl ]
Le Chaykh Salîm Al-Bichri Al-Azhari (1335 H.) [Rapporté par Al-‘Azzâmi]
Le Chaykh Al-Marighni Az-Zaytoûni qui mentionne l’unanimité [ Dans son livre Tâli’ou l-Bouchrâ ]
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Chaykh Mehmed Zâhid Kotku [ Dans son livre Ehl-i Sünnet Akaidi ]
Le Mouhaddith Mouhammad Yâçîn Al-Fâdâni (1410 H.) qui mentionne l’unanimité [Dans son livre Boughyah Al-Mouchtâq]
Le Mouhaddith Al-Harari (1429 H.) [Dans son livre Boughyah At-Tâlib]
Al-Oustâdh Mouhammad At-Tâwîl Al-Mâliki Al-Maghribi (Enseignant à l’Université Al-Qarawiyyîn) (1436 H.) qui mentionne l’unanimité [ Dans son livre Al-Loubâb fî Charhi Touhfati t-Toullâb ]
Et beaucoup d’autres…
– Retrouvez d’autres paroles de savants confirmant le fait qu’ attribuer le corps à Allâh est de la mécréance : ici .
– De nombreux savants ont confirmé que le fait d’attribuer l’endroit ou la direction à Allâh constitue de la mécréance. Parmi eux :
L’Imâm Ja’far As-Sâdiq [ Rapporté par Al-Qouchayri ] et [ Rapporté par Al-Bâqillâni ] et [ Rapporté par As-Samarqandi ]
L’Imâm Aboû Hanîfah [ Rapporté par Al-Qarâfi ] et [ Rapporté par Ibn ‘Abdi s-Salâm ] et [ Rapporté par As-Samarqandi ]
L’Imâm Mâlik [ Rapporté par Al-Qarâfi ] et [ Rapporté par Al-‘Irâqi ] et [ Rapporté par Mahmoûd As-Soubki ]
L’Imâm Ach-Châfi’i [ Rapporté par As-Souyoûti ] et [ Rapporté par Al-Qarâfi ] et [ Rapporté par Al-‘Irâqi ] et [ Rapporté par Mahmoûd As-Soubki ]
L’Imâm Ahmad Ibnou Hanbal [ Rapporté par Al-Qarâfi ]
L’Imâm Al-Ach’ari [ Rapporté par Al-‘Irâqi ] et [ Rapporté par Mahmoûd As-Soubki ]
L’Imâm Abou l-Layth As-Samarqandi [ Dans son charh de Al-Fiqh Al-Akbar ]
L’Imâm Al-Bâqillâni [ Rapporté par Al-‘Irâqi ] et [ Rapporté par Mahmoûd As-Soubki ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ Dans son Charh de la partie croyance d’Ar-Riçâlah ]
L’Imâm Al-Jouwayni [ Rapporté par ‘Alâ-ou d-Dîn Al-Boukhâri ]
L’Imâm An-Naçafi (508 H.) [ Dans son livre Tabsiratou l-Adil-lah ]
L’Imâm Ahmad Ar-Rifâ’i (578 H.)
L’Imâm Ibnou ‘Abdi s-Salâm [ Dans son livre Hallou r-Roumoûz ]
L’Imâm Fakhrou d-Dîn Ar-Râzi [ Dans son livre Ousoûl Ad-Dîn ]
L’Imâm An-Nawawi [ Dans son livre Rawdat At-Tâlibîn ]
L’Imâm Al-Mawsili [Dans son livre Al-Ikhtiyâr]
Le Chaykh Ibnou Hamdân Al-Hambali (695 H.) [ Dans son livre Nihâyatou l-Moubtadi-în ]
Le Chaykh Badrou r-Rachîd Al-Hanafi [ Dans son livre Riçâlatoun fî Alfâdhi l-Koufr ]
Le Hâfidh Waliyyou d-Dîn Al-‘Irâqi (826 H.) qui rapporté l’unanimité,
L’Imâm Taqiyyou d-Dîn Al-Hisni (829 H.) [Dans son livre Kifâyatou l-Akhyâr]
Le Chaykh Ibn Hajar Al-Haytami [ Dans son livre Al-Minhajou l-Qawîm ]
Le Chaykh Moullâ ‘Ali Al-Qâri [ Dans son Charh de Al-Fiqh Al-Akbar ] et [ Dans son charh de Al-Fiqh Al-Akbar (2) ] et [ Dans son livre Mirqât al-Mafâtîh ] et [ Rapporté par Mahmoûd As-Soubki ]
Le Chaykh Nidhâmou d-Dîn Al-Hindi [ Al-Fatâwa l-Hindiyyah ]
Le Chaykh Al-Mounâwi [ Dans son livre Faydou l-Qadîr ]
Le Moufassir Ismâ’îl Haqqi [ Dans son Tafsîr ]
L’Imâm Abdou l-Ghani An-Nâboulouçi [ Dans son livre Al-Fathou r-Rabbâni ]
Le Chaykh Ibn Balbân [Dans son livre Moukhtasar Al-Ifâdât] et [ Rapporté par Al-Qaddoûmi ]
Le Chaykh As-Sâwi Al-Mâliki [ Dans sa Hâchiyah du Tafsîr al-Jalâlayn ]
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ Dans son livre Minhou l-Jalîl ]
Le Chaykh Al-Qawouqji [ Dans son livre Al-I’timâd fi l-I’tiqâd ]
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Chaykh Mahmoûd As-Soubki Al-Azhari qui mentionne l’unanimité [ Dans son livre It-hâfou l-Kâ-inât ] et [ Dans son livre It-hâfou l-Kâ-inât (2) ] et [ Dans son livre It-hâfou l-Kâ-inât (3) ] et [ Dans son livre It-hâfou l-Kâ-inât (4) ]
Le Chaykh Mehmed Zâhid Kotku [ Dans son livre Ehl-i Sünnet Akaidi ]
Le Mouhaddith Al-Harari (1439 H.) [Dans son livre As-Sirât Al-Moustaqîm]
Et beaucoup d’autres…
– Retrouvez d’autres paroles de savants confirmant le fait qu’ attribuer l’endroit ou la direction à Allâh est de la mécréance : ici .', 'allah, anthropomorphisme, anthropomorphiste, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ولا تقبل شهادة المجسمة لأنهم كفرة');

-- source: https://islamsunnite.net/limam-ach-chahrastani-parle-du-fait-de-traduire-les-attributs-dans-une-autre-langue/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La traduction des attributs dans une autre langue', 'Les Chafi''ites', 'واحتاط بعضهم أكثر احتياط حتى لم يقرأ اليد بالفارسية ولا الوجه ولا الاستواء ولا ما ورد من جنس ذلك بل إن احتاج في ذكرها إلى عبارة عبر عنها بما ورد : لفظا بلفظ . فهذا هو طريق السلامة وليس هو من التشبيه في شيء', '« Certains [savants] étaient prudents au point qu’ils ne traduisaient pas les mots « yad », « wajh » et « istiwâ » en farsi [persan] ainsi que pour tout ce qui est parvenu et qui est du même genre. S’ils avaient besoin d’une expression pour les mentionner, ils les citaient mot pour mot [les expressions révélées en arabe]. En effet telle est la voie saine : cela ne constitue en rien de l’assimilationnisme (tachbîh). »', '', 'Dans son livre « Al-Milal wa n-Nihal » (page 68 de cette édition), l’Imâm Ach-Chahrastâni a dit :
Informations utiles :
– Le Chaykh Mouhammad Ibnou ‘Abdou l-Karîm Ach-Chahrastâni est décédé en 548 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 880 ans. Il était du madh-hab (école de jurisprudence) de l’Imâm Ach-Châfi’i.
– Son livre « Al-Milal wa n-Nihal » traite des différentes religions et des différentes sectes se réclamant de l’Islam tel que les mou’tazilah, les jabriyyah, les khawârij, les mouchabbihah etc…
– Ici il dit que certains savants ne s’aventuraient pas à traduire certains mots présents dans les textes non-explicites (moutachâbihât) tels que « yad », « wajh » ou « istiwâ » ainsi que les autres termes du même ordre. Et que ces savants se contentaient de citer mot pour mot le terme tel qu’il est mentionné dans les textes, c’est-à-dire en arabe.
– Cela a également été mentionné par l’Imâm Aboû Hanîfah dans son livre « Al-Fiqh Al-Akbar », dans lequel il dit qu’on ne peut pas traduire le terme « yad » en persan, car le mot persan qui se dit « Daste » ne donne que le sens de l’organe, de la main. Il a dit : « Tout ce que les savants ont cité en Persan comme attribut de Allâh ta’âlâ il est permis de le dire hormis pour al-yad en Persan » .
– Le Chaykh Abou l-Mountahâ Al-Hanafi a dit : « Il n’est pas permis de dire « la main de Dieu » (daste khoudâ)» [Dans son commentaire du livre Al-Fiqh Al-Akbar]. En effet, le terme « daste » en persan, ne désigne que le sens de la partie corporelle, le sens de la main, c’est pour cela qu’il n’est pas permis d’employer ce terme au sujet de Allâh.
– Egalement l’Imâm An-Naçafi (m.508 h.) a dit à ce sujet : « Il est permis de dire que Allâh ta’âlâ a un yad en Arabe, mais ce n’est pas permis en Persan. » [ Dans son livre Bahrou l-Kalâm ]
– Ceux qui sont précautionneux concernant leur religion suivent également cette règle pour le français. Ou bien ils traduisent selon l’interprétation correcte donnée par les savants de l’Islâm.
– Malheureusement dans de nombreuses soi-disante traductions du Qour-ân et de recueils de hadîth, les auteurs n’ont pas fait preuve de prudence et se sont aventuré à traduire ces termes selon le sens apparent, et non selon le sens du verset et du hadîth. Par cela ils ont induit en erreur beaucoup de personnes ignorantes de la richesse de la langue arabe. Au point qu’en lisant ces ouvrages, certains se sont mis à croire que Allâh aurait des mains, des doigts, des pieds, un visage, des yeux, qu’Il serait concerné par l’étonnement, l’orgueil, le rire, la colère, l’oubli, la position assise, l’établissement, la descente, la venue, la direction, l’endroit et de nombreuses autres caractéristiques humaines. Ainsi ces gens là pensent avoir lu le Qour-ân, et des hadîth du Prophète (صلى الله عليه وسلم) et ils pensent être musulman alors qu’ils ont une croyance très éloignée de l’Islâm.
– Alors soyons prudent, car les livres que l’on trouve sur le marché francophone sont dans de nombreux cas parsemés non seulement d’expressions qui nuisent à la compréhension, mais aussi et surtout, d’expressions qui nuisent à la vraie croyance.', 'al milal wa n-nihal, allah, aqida, book'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'واحتاط بعضهم أكثر احتياط حتى لم يقرأ اليد بالفارسية ولا الوجه ولا الاستواء ولا ما ورد من جنس ذلك بل إن احتاج في ذكرها إلى عبارة عبر عنها بما ورد : لفظا بلفظ . فهذا هو طريق السلامة وليس هو من التشبيه في شيء');

-- source: https://islamsunnite.net/limam-al-moutawalli-dit-que-cest-de-la-mecreance-dattribuer-a-allah-la-couleur-le-contact-et-la-separation/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Règle d’apostasie', 'Les Chafi''ites', 'قال المتولي : […] أو أثبت ما هو منفي عنه بالاجماع، كالالوان، أو أثبت له الاتصال والانفصال، كان كافرا', '« Al-Moutawalli a dit : « Celui qui attribue à Allâh ce dont Il est exempt par unanimité comme la couleur, ou lui attribue le fait d’être en contact ou le fait d’être séparé est mécréant »', '', 'Dans son livre « Rawdatou t-Tâlibîn » dans le chapitre de l’apostasie, l’Imâm An-Nawawi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth) Aboû Zakariyyâ Mouhyi d-Dîn Yahyâ Ibnou Charaf An-Nawawi est un savant de référence. Il est né en 631 et il est décédé en 676 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 750 ans. Il est du madh-hab (Ecole de jurisprudence) de l’Imâm Ach-Châfi’i. Il est l’auteur de nombreux ouvrages tels que Riyâd As-Sâlihîn, un commentaire du Sahîh Mouslim et autres …
– Al-‘Allâmah (l’illustre savant), l’Imâm, le Ousoûli (spécialiste des fondements), le Faqîh (spécialiste de la jurisprudence) Aboû Sa’îd ‘Abdou r-Rahmân An-Nayçâboûri, connu sous le nom de Al-Moutawalli Ach-Châfi’i est né en 426 à Nayçâboûr et il est décédé en 478 de l’Hégire à Baghdâd (رحمه الله). C’est-à-dire il y a environ 960 ans. Il succéda à l’Imâm Ach-Chîrâzi comme enseignant à la célèbre école An-Nidhâmiyyah de Baghdâd. Il étudia la jurisprudence Chafi’ite auprès du savant, le Qâdî Houçayn Ach-Châfi’i (m.463 A.H) celui dont l’Imâm Ar-Râfi’i (m.623 A.H.) disait : « On le surnommait le savant de la communauté», et autres que lui . L’Imâm An-Nawawi (m.676 A.H.) le cite souvent comme référence dans ses ouvrages.
Adh-Dhahabi a dit à son sujet : « L’illustre savant (Al-‘Allâmah) le Chaykh des Chafi’ites » [Siyarou A’lâmi n-Noubalâ] , et il a également dit de lui : « Il était un Faqîh (spécialiste de la jurisprudence) Chafi’ite, l’un des grands savants, Il était un Faqîh reconnu, et un savant méticuleux » [Târîkhou l-Islâm] .
Quant à Ibn Kathîr, il a dit à son sujet : « Il était éloquent, un grand orateur, et maîtrisait de nombreuses sciences » [Al-Bidâyah wa n-Nihâyah] , il a dit également : « Il était un Faqîh (spécialiste de la jurisprudence) reconnu, et un savant méticuleux », il a également fait son éloge en disant : « Il était l’un des ash-hâbou l-woujoûh (une catégorie de savants en dessous du degré du moujtahid, qui est apte à déduire les jugements religieux à partir des textes de l’Imâm fondateur de l’école) dans le madh-hab [Châfi’i] ». [Tabaqâtou ch-Châfi’iyyîn]
As-Safadi a dit de lui : « Il comptait parmi les meilleurs des gens de par le comportement et le caractère, et de parmi les savants les plus modestes et généreux, il était reconnu et méticuleux tout en étant un grand orateur, éloquent, et nombreux devenaient des imams en assistant à ses assemblées de science » . [Al-Wâfî bi l-Wafayât]
Tâjou d-Dîn As-Soubki a dit de lui : « Il est l’un des Imâm aux degrés les plus élevés de parmi nos compagnons » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ].
Et Ibn Khallikân a dit à son sujet : « Il était un Faqîh Chafi’ite originaire de Nayçâboûr, il a rassemblé la science, l’application de la religion, et les bons caractères, il a maîtrisé le Fiqh (la jurisprudence), Al-Ousoûl (les fondements) et al-Khilâf (les divergences religieuses) » [Wafayâtou l-A’yân].
– L’Imâm Al-Moutawalli donne ici une règle très importante : le fait d’attribuer à Allâh ce dont Il est exempt par unanimité, cela est de la mécréance.
– Cette citation est importante pour la bonne compréhension du tawhîd. Car il confirme que le fait d’attribuer à Allâh la couleur, le contact et la séparation est de la mécréance. En effet ce sont là trois caractéristiques des corps. Et Allâh est exempt du corps et des caractéristiques des corps par unanimité.
– Cette règle a été énoncée par de nombreux savants, parmi eux :
L’Imâm Al-Moutawalli dans son livre Al-Ghounyah.
L’Imâm Al-Qazwîni qui a dit concernant les choses qui sont de l’apostasie : « Attribuer à Allâh ce dont Il est obligatoirement exempt par unanimité, comme la couleur, ou Lui attribuer le contact ou la séparation » . [Al-‘Azîz Charh Al-Wajîz]
Chaykhou l-Islâm Zakariyyâ Al-Ansâri qui a dit dans le chapitre des choses qui font sortir de l’Islâm : « Attribuer à Allâh ce dont Il est obligatoirement exempt par unanimité, comme la couleur » . [Asna l-Matâlib]
Le Hâfidh Ibn Moulaqqin qui a dit dans le chapitre de l’apostasie : « Attribuer à Allâh ce dont Il est obligatoirement exempt par unanimité, comme la couleur ou Lui attribuer le fait d’être en contact ou le fait d’être séparé. Al-Moutawalli a rapporté cela » . [‘Oujâlatou l-Mouhtâj]
Le Chaykh Taqiyyou d-Dîn Al-Hisni qui a dit : « Quant à la mécréance par la croyance , elle est très nombreuses. Ainsi celui qui croit que le monde n’a pas de début, ou que Le Créateur est entré en existence, ou qui renie au sujet de Allâh ce qui est confirmé par unanimité à Son sujet, ou qui Attribue à Allâh ce dont Il est obligatoirement exempt par unanimité, comme la couleur, le contact et la séparation, alors il est mécréant » . [Kifâyatou l-Akhyâr]
Le Chaykh Al-Khatîb Ach-Chirbîni qui mentionne parmi les choses qui font sortir de l’Islâm : « Attribuer à Allâh ce dont Il est obligatoirement exempt par unanimité, comme l’entrée en existence » . [Moughni l-Mouhtâj]
Le Chaykh Ibn Hajar Al-Haytami qui mentionne parmi les cas d’apostasie : « Attribuer à Allâh ce dont Il est obligatoirement exempt par unanimité, comme la couleur, ou le contact avec le monde ou la séparation avec lui » . [Touhfatou l-Mouhtâj]
Le Chaykh ‘Abdou l-Lâh Ibn Houçayn Ibn Tâhir qui mentionne parmi les cas d’apostasie : « Attribuer à Allâh ce dont Il est obligatoirement exempt par unanimité, comme le corps » . [Soullamou t-Tawfîq]
Le Moufti de La Mecque, le Chaykh Al-Habîb Mouhammad Ibn Houçayn Ach-Châfi’i a dit au sujet des croyances d’apostasie : « Confirmer pour Allâh un attribut dont il est obligatoire de l’exempter par unanimité, comme le corps » . [Fat-hou l-Ilâh bimâ Yajibou ‘ala l-‘Abdi li-Mawlah]
– Les anthropomorphistes lorsqu’ils prétendent que Allâh est assis ou établit sur le trône, ils Lui attribuent de nombreuses caractéristiques des créatures, telles que l’endroit, la direction, le corps, la forme, le contact etc. C’est pour cela que les savants ont été unanimes à les déclarer mécréant.
– Le Chaykh Al-Mounâwi a dit : « Quant à celui qui devient mécréant par son innovation, c’est comme celui qui renie la connaissance de Allâh en prétendant qu’il ne connait pas le détail, ou qui prétend que Allâh serait un corps, ou qu’Il serait dans une direction. De même celui qui dit que Allâh est en contact avec le monde ou détaché de lui » . [ Faydou l-Qadîr ]
– Le Chaykh As-Soubki Al-Azhari a rédigé une longue fatwâ, dans laquelle il a dit : « Quiconque a cru que Allâh ta’âlâ est incarné dans un endroit, ou qu’Il est en contact avec un endroit, ou avec quoi que ce soit parmi les créatures comme le trône (al-‘Arch), le piédestal (al-Koursi), le ciel, la terre ou autre que cela est catégoriquement un mécréant ». [ Ithâfou l-Kâ-inât ]
– Les Karrâmiyyah – groupe égaré qui est tombé dans le tachbîh (assimilation) et le tajsîm (corporalisme)- ont affirmé que Allâh est en contact avec le trône. En effet :
L’Imâm Abou l-Haçân Al-Ach’ari (رحمه الله) a dit : « Et il n’y a aucun problème concernant celui qui déclare mécréant les karrâmiyyah corporalistes (moujassimah) du Khourâçân concernant leur propos lorsqu’ils disent que Allâh ta’âlâ serait un corps, qu’Il aurait une limite et une fin par le bas, qu’Il serait en contact avec Son trône et qu’Il serait sujet aux choses qui entrent en existence » [ Rapporté par l’Imâm Aboû Mansoûr ‘Abdou l-Qâhir At-Tamîmi dans son livre « Al-Asmâ-ou wa s-Sifât » d’après ce qu’a rapporté de lui [l’Imâm] At-Taqî As-Soubki ]
L’Imâm Aboû Mansoûr Al-Baghdâdi a dit : « les Karrâmiyyah prétendent que Allâh est en contact avec Son Trône» [ Dans son livre « Al-Farqou Bayna l-Firaq » ]
L’Imâm Abou l-Moudhaffar Al-Isfarâyîni qui a dit : « Certains d’entre eux (c’est-à-dire des Karrâmiyyah) ont dit que Allâh est plus grand que le trône et d’autres ont dit qu’Il est similaire au trône […] Parmi les égarements qu’ils ont inventés et que personne avant eux n’avait osé avouer par crainte d’être immédiatement dévoilé, c’est leur déclaration d’adorer un être auquel il adviendrait des attributs entrés en existence, que ses paroles, sa volonté, sa perception du visible et de l’audible adviendraient à son être et ils ont appelé cela « écoute » (sam’an) et « regard » (tabassouran). Ils ont dit également que le contact de la face supérieur du Trône adviendrait à son être : ils ont prétendu que toutes ces caractéristiques adviendraient à son être. Allâh est exempt de ce qu’ils ont dit. » [Dans son livre At-Tabsirou fi d-Dîn].
– Ainsi, nous constatons que les Karrâmiyyah sont les prédécesseurs des wahhabites (qui se font appeler mensongèrement « Salafi »). En effet, à notre époque ce sont les adeptes de la secte wahhabite qui prétendent que Allâh serait assis et établi sur le trône. [ Plus d’explications : ici ]
– Bonne croyance : L’istiwâ de Allâh sur le trône n’est pas une position assise, ni un établissement. Allâh n’est pas concerné par le fait d’être en contact avec le trône, ni avec n’importe quelle autre créature.
L’Imâm Al-Khattâbi a dit : « Lorsque les musulmans disent « Allâh istawâ sur le Trône (‘arch) » le sens n’est pas que Allâh serait en contact avec lui, ni qu’Il l’aurait pris comme endroit, ni que Allâh serait localisé dans une des directions, en effet Allâh est différent de la totalité de Ses créatures et cela (l’istiwâ) est cité dans les Textes. Nous le mentionnons à ce titre tout en niant le comment (al-kayf) à Son sujet car rien n’est tel que Allâh et Il est Celui Qui entend et Qui voit » [ Rapporté par Al-Bayhaqi ]
L’Imâm Ach-Chîrâzi a dit, au sujet de Allâh : « Son istiwâ n’est pas un établissement ni le fait d’être en contact, car l’établissement et le fait d’être en contact sont des caractéristiques des corps qui sont donc créés alors que le Seigneur, ‘azza wa jall, est de toute éternité ». [ Al-Ichârah ilâ madh-hab ahli l-Haqq ]
L’Imâm Al-Ghazâli a dit : « Et Allâh est « istawâ ‘ala l-‘Arch » (le Trône), tel qu’Il l’a révélé et avec le sens qu’Il a voulu, d’un « istiwâ » exempt du contact, de l’établissement, du fait d’être dans un endroit, d’être incarné ou d’être en mouvement. Il n’est pas porté par le Trône, au contraire, le Trône est porté grâce à Sa puissance et Sa grâce. » [ Ihyâ-ou ‘Ouloumi d-Dîn ]
L’Imâm Ibnou ‘Abdi s-Salâm a dit au sujet de Allâh : « istiwâ ‘ala l-‘arch al-majîd comme Il nous l’a appris, et dans le sens qu’Il a visé d’un istiwâ qui est exempt du contact, de l’établissement, du fait d’être dans un endroit, du déplacement, ainsi Allâh Al-Kabîr Al-Mouta’âl est totalement exempt de ce que disent à Son sujet les gens de l’hérésie et de l’égarement. Et le trône ne Le porte pas mais plutôt c’est le trône et les porteurs du trône qui sont portés par la grâce de Sa toute-puissance et ils sont sous Sa domination, et Allâh englobe toute chose par Sa science et dénombre toute chose parfaitement » [ Rapporté par Tâjou d-Dîn As-Soubki ]
L’Imâm Ibnou Foûrak a dit : « Sache que, lorsque nous disons que Allâh ‘azza wa jall est “fawqa mâ khalaqa” (supérieur à ce qu’Il a créé), cela ne veut pas dire que c’est une fawqiyyah (supériorité) spatiale ni une élévation sur les endroits par la distance ni leur supervision par le contact avec quoi que ce soit de ces endroits » [ Mouchkilou l-Hadîth ] .
Le Chaykh Al-Oûchi a dit : « Le seigneur du trône est supérieur (fawqa) au trône sans attribution de localisation ni de contact » [Bad-ou l-Amâlî]. En effet, la supériorité (fawqiyyah) de Allâh est une supériorité par la puissance et le mérite et non une supériorité par l’endroit ou la direction.
le Chaykh Ad-Dardîr Al-Mâliki a dit au sujet de Allâh ta’âlâ : « Il (Allâh) est exempt de l’incarnation, de la direction, du contact, de la séparation et de ce qui serait stupide de Lui attribuer » [ Al-Kharîdah al-Bahiyyah ]
Le Chaykh Mahmoûd As-Soubki a dit : « Quant à la voie du Salaf et du Khalaf concernant les versets et les hadiths non explicites (moutachâbih), tous se sont accordés à dire que Allâh ta’âlâ est exempt des caractéristiques des créatures, que Allâh ‘azza wa jall n’a pas d’endroit, ni au trône, ni dans le ciel, ni ailleurs. Et qu’Il n’est pas caractérisé par l’incarnation dans des choses qui seraient entrées en existence, ni par le contact avec quoi que ce soit, ni par le changement, ni par le déplacement et ce qui est du même ordre des caractéristiques de ce qui entre en existence. Mais Allâh soubhânahou wa ta’âlâ est tel qu’Il est [de toute éternité], avant qu’Il n’ait créé le trône, le piédestal, les cieux et autres choses qui sont entrées en existence. » [ It-hâfou l-Kâ-inat ]
Le Mouhaddith Al-Harari a dit : « Les gens de la vérité ont dit que Allâh n’est pas localisé dans un endroit c’est-à-dire qu’il est impossible à Son sujet d’être en contact d’un endroit ou d’y être localisé » [Idh-hârou l-‘Aqîdati s-Sounniyyah]
– Important : L’ancien Moufti d’Egypte, le Chaykh Mouhammad Bakhît Al-Moutî’i Al-Hanafi a dit : « L’ensemble de la communauté Islamique est sur la croyance que Allâh est exempt de l’incarnation dans les endroits, et qu’Il est exempt de la direction, c’est-à-dire d’être au-dessus de quelque chose, ou en dessous, ou à droite, ou à gauche, ou derrière ou devant. Et on ne dit pas que Allâh serait en contact par Son Être avec quelque chose, ou qu’Il serait séparé de quelque chose, ainsi on ne dit pas que Allâh serait séparé du monde, ou en contact avec lui » [Rapporté par le Chaykh Mahmoûd As-Soubki Al-Azhari dans son livre It-hâfou l-Kâ-inât]. En effet, le contact et la séparation sont des caractéristiques des corps, et Allâh n’est pas corps, Il n’est donc pas concerné par le contact et la séparation.
– Règle à retenir : L’Imâm Aboû ja’far At-Tahâwi (m.321 H.) a dit : « Celui qui attribue à Allâh l’une des significations propres aux humains est devenu mécréant. Celui qui aura bien compris cela en aura tiré des leçons et se sera écarté des propos semblables à ceux des mécréants, il aura su que Allâh avec Ses attributs n’est pas semblable aux humains » [ Al-‘Aqîdatou t-Tahâwiyyah ]', 'allah, an-nawawi, an-nawawiyy, apostasie'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال المتولي : […] أو أثبت ما هو منفي عنه بالاجماع، كالالوان، أو أثبت له الاتصال والانفصال، كان كافرا');

-- source: https://islamsunnite.net/limam-ach-chafii-declare-mecreant-ceux-qui-ont-pour-croyance-que-allah-serait-assis-sur-le-trone/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Croire que Allâh est assis sur le trône est de la mécréance', 'Les Chafi''ites', 'ومن كفرناه من اهل القبلة القائلين بخلق القرءان وبأنه لا يعلم المعدومات قبل وجودها ومن لا يؤمن بالقدر وكذا من يعتقد ان الله جالس على العرش كما حكاه القاضي حسين هنا عن نص الشافعي', 'Et ceux que nous avons déclaré mécréants parmi les gens de la Qiblah sont par exemple ceux qui croient que le Qour-ân serait créé, que Allâh ne saurait pas les choses inexistantes avant qu’elles n’existent, et ceux qui ne croient pas en la prédestination, également ceux qui croient que Allâh serait assis sur le Trône comme l’a cité le Qâdî Houçayn du texte de Ach-Châfi’i.', '', 'Dans son livre « Kifâyatou n-Nabîh Charh at-Tanbîh », le Chaykh Ibnou Ar-Rif’ah a dit :
Informations utiles :
– Le Chaykh, le Faqîh (spécialiste de la jurisprudence) Abou l-‘Abbâs Najmou d-Dîn Ahmad Ibn Mouhammad Ibnou Ar-Rif’ah Al-Misri Ach-Châfi’i est né en 645 et il est décédé en 710 de l’Hégire (رحمه الله) en Egypte, c’est-à-dire il y a environ 730 ans.
Ibn Qâdî Choubhah a dit de lui : « Le Chaykh, le savant, Al-‘Allâmah (l’illustre savant), Chaykh al-Islâm, celui qui porte la bannière des Chafi’ites à son époque » [Chadharâtou dh-Dhahab]
Tâjou d-Dîn As-Soubki a dit à son sujet : « Le Chaykh, l’Imâm, Chaykh al-Islâm […] le Chafi’ite de l’époque » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ].
Al-Isnawi a dit de lui : « Il était le Chafi’ite de son époque, l’Imâm de son temps » [Choudhouratou dh-Dhahab].
– Ici, il mentionne différent cas d’apostasie et il explique que ceux qui ont pour croyance que Allâh serait assis sur le trône sont déclaré mécréants, et il précise que cela est un jugement confirmé de la part de l’Imâm Ach-Châfi’i.
– L’Imâm, le Moujtahid –jurisconsulte– Mouhammad Ibnou Idrîs Ach-Châfi’i est l’un des plus grands savants de notre communauté, c’est une référence incontournable pour tout musulman. C’est un salaf (C’est à dire qu’il a vécu dans les trois premiers siècles de l’hégire), il est né en 150 et il est décédé en 204 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 1230 ans. Il est l’Imâm de l’école (madh-hab) chafi’ite.
L’Imâm Abou l-Haçan As-Soulami a dit à son sujet : « Mouhammad Ibn Idrîs Ach-Châfi’i est le savant à la tête du second siècle [de l’Hégire] (c’est-à-dire le moujaddid – savant revivificateur) » [Rapporté par le Hâfidh Ibnou ‘Açâkir dans Tabyînou kadhibi l-Mouftari]
– Allâh ta’âlâ dit : {لَيْسَ كَمِثْلِهِ شَيْءٌ} [Ce qui a pour sens] : « Rien n’est tel que Lui – d’aucune façon que ce soit -». Les savants spécialistes de tafsîr du Qour-ân ont confirmé que ce verset en lui-même est une preuve pour exempter Allâh du corps. Parmi eux : l’Imâm Ar-Râzi [ Dans son Tafsîr ], l’Imâm As-Souyoûti [ Dans son livre Al-Iklîl ] et autres.
– Et le Messager de Allâh (صلى الله عليه وسلم) a dit dans un hadîth sahîh (authentique) rapporté par Al-Boukhâri et autre : « كَـــــانَ اللهُ وَلَــــمْ يَــــكُــــنْ شَــىءٌ غَــيْـــرُهُ » [ce qui a pour sens ] : «Allâh existe de toute éternité et rien d’autre que Lui n’est de toute éternité ». Ce hadîth nous indique qu’hormis Allâh et Ses Attributs, rien n’existe de toute éternité, ni terre, ni ciel, ni mer, ni endroit, ni trône, ni corps, ni membre, ni organe, ni aucune autre créature quelle qu’elle soit. Après cela comment attribuer à Allâh des choses entrées en existence ?!
– Cette position de l’Imâm Ach-Châfi’i a également été rapportée de lui par :
Le Qâdî Houçayn qui a dit : « Ach-Châfi’i –que Allâh lui fasse miséricorde- a dit textuellement […] : celui qui croit que Allâh ta’âlâ est assis sur le trône il est jugé mécréant, et la prière n’est pas valable derrière ceux-là » [ At-Ta’lîqah ]
Le Chaykh Al-Qourachi qui a dit : « Ceci est de la mécréance selon l’Unanimité et nous déclarons mécréant ceux qui se réclament de l’Islâm qui disent que la Parole de Allâh est créée et ceux qui disent que Allâh ne sait pas les choses avant leur existence et celui qui ne croit pas en la Prédestination et celui qui croit que Allâh est assis sur le trône tout comme a rapporté ce jugement Al-Qâdî Houçayn d’après le texte de Ach-Châfi’i » [ Dans son livre Najmou l-Mouhtadi ]
– De nombreux autres savants ont confirmé que le fait de croire que Allâh serait assis sur le trône est une croyance qui constitue de la mécréance. Parmi eux :
L’Imâm Al-Bayhaqi qui a dit : « Il y a également parmi eux ceux qui ont dit qu’il est un corps (jism) et d’autres ont dit qu’il est possible qu’Il soit assis sur un trône, tout comme un roi est sur son lit. Toutes ces paroles entraînent l’attribution de la mécréance pour celui qui les dit, tout comme c’est le cas de celui qui fait preuve de négationnisme ou d’association. » [ Dans son livre Chou’abou l-Îmân ] ;
L’Imâm An-Nawawi qui a dit : « Et s’il dit “Allâh s’est levé pour la justice” il est devenu mécréant, ou s’il dit “Allâh s’est assis pour la justice” il est devenu mécréant » [Rawdatou t-Tâlibîn / Kitâb Ar-Riddah] et Ibn Noujaym Al-Hanafi a tenu avec exactitude les mêmes propos dans son livre « Al-Bahrou r-Râ-iq », et également Adh-Dhahabi dans “Ith-hâfou l-Akâbir fî tahdhîbi kitâbi l-Kabâ-ir” ;
L’Imâm Al-Kawthari qui rapporte l’unanimité en disant : « La mécréance de celui qui attribue le mouvement, la position assise et les limites à Allâh ta’âlâ est une chose au sujet de laquelle deux musulmans ne sont pas en désaccord. » [ Dans son livre Maqâlâtou l-Kawthari ]
L’Imâm Al-Kawthari a dit également : « Ce qu’adore ce perdant se lève, s’assoit, et bouge ! Peut-être que ce Sijzi (originaire du Sijistan) a hérité cette croyance de ses voisins, les adorateurs des vaches (les hindous), et celui qui croit cela au sujet du Seigneur des mondes, c’est un mécréant par accord [des savants]. Malheur à celui qui suit des gens comme lui dans la prière ou dans le mariage ! » [ Dans son livre Maqâlâtou l-Kawthari ] ;
Le Chaykh Mahmoûd As-Soubki Al-Azhari qui rapporte également l’unanimité en disant : « Un de ceux qui veulent connaître la science de la religion, et s’attacher à la voie du Salaf et du Khalaf m’a interrogé au sujet de ce qui n’est pas explicite dans les versets et les hadîth, par sa parole : « Que disent les maîtres des savants, que Allâh ta’âlâ les protège, au sujet de celui qui a pour croyance que Allâh ‘azza wa jall a une direction, ou qu’Il serait assis sur le trône dans un endroit spécifique et qui dit que cela est la croyance du Salaf ?» Plus loin, il répond : « Le jugement de cette croyance est qu’elle est infondée et celui qui y croit est un mécréant par l’unanimité des savants musulmans que l’on prend en considération. » [ Dans son livre It-hâfou l-Kâ-inât ] ;
Le Mouhaddith Al-Harari qui a dit : « L’exégèse du verset : {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} (Ar-Rahmânou ‘ala l-‘archi stawâ) : Il est un devoir de faire l’exégèse de ce verset dans un sens autre que celui de l’établissement (al-istiqrâr), de la position assise (al-jouloûss) ou de ce qui est de cet ordre. Celui qui croit une telle chose est devenu mécréant » [ Dans son livre As-Sirât Al-Moustaqîm ]
Et beaucoup d’autres …
– L’Imâm Ach-Châfi’i, lorsqu’il a été interrogé au sujet de l’istiwâ de Allâh, il a répondu : « J’ai cru fermement en cela sans assimilation, j’en ai reconnu la véracité sans attribuer d’image, je me suis fait à l’idée que j’étais incapable d’en atteindre la réalité et je me suis abstenu d’engager une discussion à ce sujet d’une totale abstention » [ Rapporté par l’Imâm Ahmad Ar-Rifâ’i et d’autres ]. C’est-à-dire qu’il a accepté les termes mentionnés dans le Qour-ân sans en comprendre un sens qui implique l’assimilation (tachbîh) comme la position assise, l’installation, ou l’établissement sur le trône.
– Ibnou Kathîr mentionne également la position de l’Imâm Ach-Châfi’i concernant l’un des versets au sujet de l’istiwâ, qui est d’y croire sans assimilation, sans comment et sans prendre le sens apparent (comme la position assise ou l’établissement). [ Dans son tafsîr ]
– De même, l’Imâm Ibn Hajar Al-‘Asqalâni rapporte la croyance de l’Imâm Ach-Châfi’i concernant les textes équivoques (moutachâbih) qui est d’y croire dans leur globalité, en exemptant Allâh du comment (kayfiyyah) et de toute assimilation (tachbîh), et sans prendre ces textes selon leurs sens apparents. [ Dans son livre Fat-hou l-Bârî ]
– L’Imâm Ach-Châfi’i a dit : « Allâh ta’âlâ existe de toute éternité alors qu’aucun endroit n’est de toute éternité. Il a créé l’endroit en ayant l’attribut de l’exemption de début, tout comme avant la création des endroits, le changement n’est pas possible selon la raison à Son sujet, ni pour Son Être ni pour Ses attributs » [ Rapporté par Az-Zabîdi dans son livre It-hâfou s-Sâdati l-Mouttaqîn ]
– Sachez aussi que l’Imâm Ach-Châfi’i considérait également mécréants ceux qui attribuent le corps ou la direction à Allâh [Voir à ce sujet : le livre du Chaykh Moulla ‘Ali Al-Qâri : ici ; le livre du Chaykh Al-Haytami : ici ; le livre de l’Imâm As-Souyoûti : ici ; et le livre du Chaykh Mahmoûd As-Soubki : ici ].
– Les savants de l’Islâm ont été unanimes sur le fait que l’istiwâ de Allâh n’est pas une position assise (jouloûss) ni un établissement (istiqrâr). Parmi eux :
L’Imâm Aboû Hanîfah [ Dans son livre Al-Wasiyyah ]
L’Imâm Al-Bâqillâni [ Dans son livre Al-Insâf ]
L’Imâm Ibnou Foûrak [ Dans son livre Mouchkilou l-Hadîth ]
L’Imâm ‘Abdou l-Lâh Al-Jouwayni (père de l’Imâm Al-Haramayn) [Dans son livre Kifâyatou l-Mou’taqad]
Le Chaykh Ibn Battâl [ Dans son commentaire du Sahîh Al-Boukhâri ]
L’Imâm Al-Bayhaqi [ Dans son livre Al-I’tiqâd ]
L’Imâm Ach-Chîrâzi [ Dans son livre Al-Ichârah ]
L’Imâm Al-Haramayn Al-Jouwayni [Dans son livre Al-Irchâd]
L’Imâm Al-Moutawalli [ Dans son livre Al-Ghounyah ]
Le Chaykh Aboû Mouhammad Rizqou l-Lâh Ibn ‘Abdi l-Wahhâb At-Tamîmi Al-Hambali (m. 488 H.) a dit : « On ne dit pas que le trône est Son endroit, car les endroits sont créés par Allâh et ils sont entrés en existence contrairement à Lui, et on ne dit pas qu’Il est assis (qâ’id) par Son Être sur le trône, ou debout, ou allongé, ou endormi, ou en contact, ou proche. Mais nous employons le terme de cet attribut (c’est-à-dire le terme istawâ) tout comme cela est parvenu dans le Qour-ân » [Rapporté par Ibn Hamdân dans Nihâyatou l-Moubtadi-în].
L’Imâm Al-Ghazâli [ Dans son livre Ihyâ-ou ‘Ouloûmi d-Dîn ]
Le Qâdî Ibn Rouchd Al-Jadd [ Rapporté par Ibnou l-Hâjj Al-Mâliki ]
Le Chaykh Al-Lâmichi Al-Hanafi [Dans son livre At-Tamhîd li Qawâ’id At-Tahwîd]
L’Imâm Ahmad Ar-Rifâ’i [Dans son livre Al-Bourhânou l-Mou-ayyad]
L’Imâm Aboû Madyan [ Dans son traité de croyance ]
L’Imâm Fakhrou d-Dîn Ar-Râzî
L’Imâm Ibn ‘Abdi s-Salâm [ Rapporté par Tâjou d-Dîn As-Soubki ]
L’Imâm Zaynou d-Dîn Ibnou l-Mounayyir [Dans son livre Tafsîr Mouchkilât Ahâdith youchkilou dhâhirouhâ]
L’Imâm Ibnou Abî Jamrah [Dans son livre Bahjatou n-Noufoûs]
Al-Qâdî Ibn Jamâ’ah
Le Moufassir Al-Khâzin [Dans son Tafsîr]
L’Imâm Abou Hayyân Al-Andalouçi [Dans son Tafsîr : An-Nahrou l-Mâdd]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit lors de l’explication du verset {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} « Ar-Rahmânou ‘ala l-‘Archi stawâ » [Soûrat Taha/5] : « Il n’est pas permis de le prendre dans le sens de l’établissement (istiqrâr) » [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
Le Hâfidh Waliyyou d-Dîn Al-‘Irâqi [Dans son livre Tarhou t-Tathrîb]
Le Chaykh Ahmad Zarroûq Al-Fâçi [ Dans son livre Charh ‘Aqîdati l-Ghazâli ]
L’Imâm Al-Qastallâni
Chaykh Al-Islâm Zakariyyâ Al-Ansâri [ Dans son livre Ihkâm ad-Dalâlah ]
Le Chaykh Moullâ ‘Alî Al-Qârî
L’Imâm Al-Kawthari (qui rapporte l’unanimité) [ Dans son livre Maqâlâtou l-Kawthari ]
Le Chaykh Al-‘Azzâmi [ Dans son livre Fourqân al-Qour-ân ]
Le Chaykh Ibn ‘Âchoûr [ Dans son tafsîr ]
Le Chaykh Mehmed Zâhid Kotku [ Dans son livre Ehl-i Sünnet Akaidi ]
Le Hâfidh Al-Harari [ Dans son livre As-Sirât al-Moustaqîm ]
et de nombreux autres savants.
Il n’est donc pas permis de traduire le verset {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} (Ar-Rahmânou ‘ala l-’archi stawâ) et ceux qui sont similaires par le fait que Allâh serait établi sur le trône car cette explication est contraire au tawhîd (l’unicité de Allâh). Consultez d’autres paroles de savants au sujet du terme « istawâ » : ici .
– Malgré cela, certains leaders de la mouvance sectaire wahhabite, ont diffusé la croyance hideuse d’ Ibn Taymiyah (moujassim) et ont déclaré mensongèrement que Allâh serait assis sur le trône. Voir à ce sujet : Ar-Râjihi et Fawzân (wahhabites) prétendent que Allâh est assis sur le trône .
– L’Imâm Ach-Châfi’i a précisé qu’il n’est pas valable de prier derrière quelqu’un qui croit que Allâh est assis sur le trône car il s’agit là d’une croyance faisant sortir de l’Islâm, et les actes d’adorations ne sont valables que de la part du musulman. A ce sujet :
L’Imâm An-Nawawi a dit : « Et nous avons certes mentionné que celui qui est devenu mécréant par son innovation, la prière n’est pas valable derrière lui […] et parmi ceux qui sont devenu mécréant il y a celui qui attribue clairement le corps [à Allâh] » [dans son livre « Al-Majmoû’ Charhou l-Mouhadh-dhab »]
Le Chaykh Mehmed Zâhid Kotku Al-Hanafi a dit : « Les Mouchabbihah (assimilationnistes) attribuent au Créateur (Al-Khâliq Dhou l-Jalâlah) les parties corporelles tout comme les créatures, ainsi la prière n’est pas valable derrière eux, ces gens là sont sortis de l’Islâm. Celui qui attribue à Allâh un endroit ou qui dit que Allâh est dans le ciel, lui-aussi sort de l’Islâm, également nous déclarons mécréant celui qui a pour croyance que Allâh (Al-Haqq ta’âlâ) serait établie sur le trône. Alors malheur aux wahhabites » [ Dans son livre Ehl-i Sünnet Akaidi (la croyance de Ahlou s-Sounnah) ]
Le Chaykh As-Sayyid Mahmoûd Al-Hanafi Al-Khâdhami Al-Bâkistâni a été interrogé sur la validité de prier derrière un wahhabite, il a dit dans sa fatwâ : «Il n’est pas permis de prier derrière eux, et il n’est pas permis de prendre l’un d’eux comme Imâm, ou juge, ou pour l’enseignement du Livre et de la Sounnah ou pour la jurisprudence […] ils sont certes mécréants en Allâh et en Son messager […] ils sont certes d’une des pires mécréance et hypocrisie […] les savants ont émis une fatwâ à leur sujet indiquant qu’ils ont apostasié en la croyance en Allâh et en l’Islâm […] ceux-là sont mécréant, ils ne sont pas des sâdiqîn, ils sont de parmi les plus menteurs des gens à l’égard de Allâh et de Son Messager, ils sont des gens de la mécréance » [Rapporté à la suite du livre “khoulâsatou l-Kalâm fî bayâni oumarâ-i l-Baladi l-Harâm du Chaykh Ibnou Zayni Dahlân, édition Waqf Ikhlâs]
– Consultez également les articles sur le thème : Allâh n’est pas sur le trône : ici .
– Consultez également les articles sur le thème : Attribuer l’endroit ou la direction à Allâh est de la mécréance : ici .
– Retrouvez d’autres paroles de savants confirmant le fait qu’ attribuer le corps à Allâh est de la mécréance : ici .', 'ahloul qiblah, allah, apostasie, apostat'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ومن كفرناه من اهل القبلة القائلين بخلق القرءان وبأنه لا يعلم المعدومات قبل وجودها ومن لا يؤمن بالقدر وكذا من يعتقد ان الله جالس على العرش كما حكاه القاضي حسين هنا عن نص الشافعي');

-- source: https://islamsunnite.net/imam-al-qouchayri-rapporte-retour-islam-attribuer-direction-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm Al-Qouchayri rapporte le retour à l’Islâm de quelqu’un qui attribuait la direction à Allâh', 'Les Chafi''ites', 'وسمعت الإِمَام أبا بَكْر بْن فورك رحمه اللَّه تعالي يَقُول : سمعت أبا عُثْمَان المغربي يَقُول : كنت أعتقد شَيْئًا من حَدِيث الجهة فلما قدمت بغداد زال ذَلِكَ عَن قلبي فكتبت إِلَى أَصْحَابنا بمكة إني أسلمت الآن إسلاما جديدا.', '« J’ai entendu l’Imâm Aboû Bakr Ibn Foûrak (رحمه اللَّه), dire: « J’ai entendu Aboû ‘Outhmân Al-Maghribi dire: « Je croyais en certaines choses concernant la direction [c’est-à-dire qu’il attribuait une direction à Allâh] et quand je suis arrivé à Baghdâd, j’ai délaissé cela, alors j’ai écrit à mes compagnons de La Mecque [pour leur dire]: Je suis maintenant entré en Islâm »', '', 'Dans sa célèbre Epître « Ar-Riçâlatou l-Qouchayriyyah » (page 10 de cette édition) l’Imâm Al-Qouchayri rapporte :
Informations utiles :
– Le Mouhaddith–transmetteurs du hadîth–, le Moufassir –exégète–, le Chaykh Abou l-Qâçim Abdou l-Karîm ibnou Houwâzin al-Qouchayri est né en 375 et il est décédé en 465 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 970 ans. Son livre « Ar-Riçâlatou l-Qouchayriyyah » est son ouvrage le plus connu. La première partie de ce livre est consacrée à la croyance de Ahlou s-Sounnah wa-l Jamâ’ah. On compte de parmi ses nombreux Chouyoûkh : l’Imâm Ibnou Foûrak, Aboû Is-hâq Al-Isfarâyîni, et le Hâfidh Al-Hâkim.
Tâjou d-Dîn As-Soubki a dit à son sujet : « L’Imâm absolu, l’auteur de « Ar-Riçâlah » qui s’est répandu de l’orient à l’occident […] l’un des Imâms des musulmans dans la science et les œuvres, une forteresse de la religion par ses actes et ses paroles, l’Imams des Imams […] le Chaykh des Mâchaykh […] il était Faqîh (spécialiste du fiqh), excellent, un Ousoûli (spécialiste des fondements), précautionneux, un Moutakallim (spécialiste de la science de la croyance), un Mouhaddith (transmetteur du hadîth), un Hâfidh (spécialiste de la science du hadîth), un Moufassir (spécialiste de l’explication du Qour-ân), il était versé dans les diverses sciences, un Nahwi (spécialiste de la grammaire), un Loughawi (spécialiste de la langue Arabe) […] les gens de son époque sont unanimes qu’il est le maître (sayyid) de son temps, le modèle (qoudwah) de son époque, et une bénédiction pour les musulmans dans son époque » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Ibn Khallikân a dit à son sujet : « Abou l-Qâçim était un illustre savant (‘allâmah) dans le fiqh (jurisprudence), le tafsîr (explication du Qour-ân), le hadîth, al-Ousoûl (les fondements de la religion) » [Wafayâtou l-A’yân]
Adh-Dhahabi a dit de lui : « L’Imâm, l’ascète, le modèle (Qoudwah)» [Siyar A’lâmi n-Noubalâ]
– L’Imâm, le Hâfidh (spécialiste de la science du hadîth), le moutakallim (spécialiste de la croyance), le Ousoûli (spécialiste des fondements), le Faqîh (spécialiste de la jurisprudence) Aboû Bakr Mouhammad Ibnou l-Haçan Ibnou Foûrak (certains le nomment « Ibnou Fawrak ») al-Asbahâni ach-Châfi’i est décédé en 406 de l’Hégire (رحمه الله), c’est-à-dire il y a environ 1030 ans. Il était un grand défenseur de la croyance de Ahlou s-Sounnah wa-l jamâ’ah. On compte parmi ses illustres élèves : l’Imâm Al-Bayhaqi et l’Imâm Abou l-Qâçim Al-Qouchayri.
L’Imâm An-Nawawi faisait son éloge en disant : « Al-Oustâdh [Al-Isfarâyîni] est l’une des trois personnes qui vécurent à la même époque et qui se levèrent afin de défendre l’école du Hadîth et de la Sounnah dans les questions de croyance, il s’agit ainsi de ceux qui ont défendu l’école du Chaykh Abou l-Haçan Al-Ach’ari. Ce sont Al-Oustâdh Aboû Is-hâq Al-Isfarâyîni, Al-Qâdî Aboû Bakr Al-Bâqillâni et l’Imâm Aboû Bakr Ibnou Foûrak. » [Tahdhîbou l-Asmâ-i wa l-Loughât]
Adh-Dhahabi a dit de lui : « L’Imâm, l’Illustre savant (Al-‘Allâmah), le vertueux (As-Sâlih) le Chaykh des théologiens (moutakallimîn)» [Siyar A’lâmi n-Noubalâ]
– Ici, ils rapportent que Aboû ‘Outhmân Al-Maghribi est revenu à l’Islâm après avoir abandonné sa croyance que Allâh serait dans une direction. Cela nous confirme que le fait d’attribuer à Allâh l’endroit ou la direction est de la mécréance.
Chaykh Al-Islâm Zakariyyâ Al-Ansâri a dit lors de son commentaire -inclus dans le texte- : « J’ai entendu l’Imâm Aboû Bakr Ibn Foûrak (رحمه اللَّه), dire: « J’ai entendu Aboû ‘Outhmân Al-Maghribi dire: « Je croyais en certaines choses concernant la direction et qu’Il (Allâh) serait sur le trône et quand je suis arrivé à Baghdâd et que j’ai entendu la parole des mouhaqqiqîn (savants qui détiennent les preuves et arguments) concernant Son exemption ta’âlâ, j’ai délaissé cela, alors j’ai écrit à mes compagnons qui se trouvent à La Mecque, de parmi ceux qui croyaient en mon madh-hab et qui œuvraient en conformité avec [pour leur dire]: Je suis maintenant entré en Islâm, car j’ai connu la vérité et je l’ai suivis» [Dans son commentaire de la Riçâlah : Ihkâmou d-Dalâlah]
Le Chaykh Tâjou d-Dîn As-Soubki a dit : « Et sont revenu [à l’Islâm] également tout ceux qui le suivaient de cela (cette mauvaise croyance en la direction au sujet de Allâh)» [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Le Chaykh Moustafâ Al-‘Aroûçi Al-Misri Al-Azhari Ach-Châfi’i a dit dans son commentaire de la parole de Aboû ‘Outhmân Al-Maghribi : « Je croyais en certaines choses concernant la direction » : « C’est-à-dire que je croyais en la direction au sujet de Allâh ta’âlâ, en suivant en cela les jihawiyyah que Allâh ta’âlâ les enlaidisse » . [Dans sa Hâchiyyah : Natâ-ijou l-Akfâr Al-Qoudsiyyah]
– Aboû ‘Outhmân Sa’îd Ibnou Salâm Al-Maghribi Al-Qayrawâni est né à Qayrawân (Tunisie) et il est décédé en 373 de l’Hégire (رحمه الله) à Nayçaboûr.
Le Hâfidh Al-Khatîb Al-Baghdâdi a dit à son sujet : « Il était de parmi les plus grands des Machaykh et il a eu des prodiges » [Târîkh Baghdâd]
Adh-Dhahabi a dit de lui : « L’Imâm, le modèle (qoudwah)» [Siyar A’lâmi n-Noubalâ]
– De nombreux savants ont confirmé que le fait d’attribuer l’endroit ou la direction à Allâh constitue de la mécréance. Parmi eux :
L’Imâm Ja’far As-Sâdiq [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Aboû Hanîfah [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Mâlik [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Ach-Châfi’i [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Ahmad Ibnou Hanbal [ voir : ici ]
L’Imâm Al-Ach’ari [ voir : ici ] et [ voir : ici ]
L’Imâm Abou l-Layth As-Samarqandi [ voir : ici ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ voir : ici ]
L’Imâm Al-Jouwayni [voir ci-dessus]
L’Imâm An-Naçafi (508 H.) [ voir : ici ]
L’Imâm Ahmad Ar-Rifâ’i (578 H.)
L’Imâm Ibnou ‘Abdi s-Salâm [ voir : ici ]
L’Imâm Fakhrou d-Dîn Ar-Râzi [ voir : ici ]
L’Imâm An-Nawawi [ voir : ici ]
L’Imâm Al-Mawsili [ voir : ici ]
Le Chaykh Badrou r-Rachîd Al-Hanafi [ voir : ici ]
Le Hâfidh Waliyyou d-Dîn Al-‘Irâqi (826 H.) qui rapporté l’unanimité,
L’Imâm Taqiyyou d-Dîn Al-Hisni (829 H.)
Le Chaykh Ibn Hajar Al-Haytami [ voir : ici ]
Le Chaykh Moullâ ‘Ali Al-Qâri [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
Le Chaykh Nidhâmou d-Dîn Al-Hindi (Al-Fatâwa l-Hindiyyah) [ voir : ici ]
Le Chaykh Al-Mounâwi [ voir : ici ]
Le Moufassir Ismâ’îl Haqqi [ voir : ici ]
L’Imâm Abdou l-Ghani An-Nâboulouçi [ voir : ici ]
Le Chaykh Ibn Balbân [ voir : ici ]
Le Chaykh As-Sâwi Al-Mâliki [ voir : ici ]
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ voir : ici ]
Le Chaykh Al-Qawouqji [ voir : ici ]
L’Imâm Al-Kawthari [ voir : ici ]
Le Chaykh Mahmoûd As-Soubki Al-Azhari qui mentionne l’unanimité [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
Le Mouhaddith Al-Harari (1439 H.)
Et beaucoup d’autres…', 'al-qochayri, al-quchayri, allah, apostasie'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وسمعت الإِمَام أبا بَكْر بْن فورك رحمه اللَّه تعالي يَقُول : سمعت أبا عُثْمَان المغربي يَقُول : كنت أعتقد شَيْئًا من حَدِيث الجهة فلما قدمت بغداد زال ذَلِكَ عَن قلبي فكتبت إِلَى أَصْحَابنا بمكة إني أسلمت الآن إسلاما جديدا.');

-- source: https://islamsunnite.net/hadith-prophete-permis-porter-sur-soi-des-ecrits-qour-an-hirz/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Hadîth du Prophète sur le fait qu’il est permis de porter sur soi des écrits comportant du Qour-ân', '''Aichah', 'أخبرنا محمد بن أبي بكر الحافظ قال، أخْبَرَنا أبو الفضل أحمد بن إبراهيم بن أحمد البلخي من أصل كتابه أخبرنا جعفر بن محمد بوران الحكاك ببلخ، حَدَّثَنا سليمان بن داود الهروي، حَدَّثَنا إسحاق بن منصور، حَدَّثَنا أبو داود الطيالسي، حَدَّثَنا شعبة، حَدَّثَنا مالك بن أنس عن ابن شهاب قال: دخلت على أنس بن مالك فرأيته يعلق التعويذ على ابن له فقلت له: ياأبا حمزة هل نزل به بلاء؟ قال: لا ثم ضرب بيده على منكبي فقال: يا أبا بكر سمعت رسول الله صلى الله عليه وسلم يقول: لا بأس بتعليق التعويذ من القرآن قبل نزول البلاء وبعد نزول البلاء.', '« (…) Mâlik Ibnou Anas [c’est-à-dire l’Imâm Mâlik] nous a rapporté de Ibnou Chihâb : « Je suis entré chez Anas Ibnou Mâlik et je l’ai vu accrocher un ta’wîdh (hirz) autour du cou d’un de ses fils, alors je lui ai dit : « Ô toi, père de Hamzah, est-ce que l’épreuve est descendue sur lui [c’est-à-dire sur son fils] ? Il [c’est-à-dire Anas Ibnou Mâlik ] a dit : « Non ! » Puis il a posé sa main sur mon épaule et a dit : « Ô toi, père de Bakr, j’ai entendu le Messager de Allâh (صلى الله عليه وسلم) dire (ce qui a pour sens) : « Il n’y a pas de mal dans le fait de porter autour du cou le ta’wîdh (hirz) comportant du Qour-ân avant la descente de l’épreuve, tout comme après la descente de l’épreuve »', '', 'Dans son livre « Fadâ-ilou l-Qour-ân », dans le chapitre de ce qui a été rapporté concernant l’autorisation de porter le ta’wîdh (hirz) comportant du Qour-ân avant la descente de l’épreuve, le Hâfidh Al-Moustaghfiri a dit :
Informations utiles :
– Le Hâfidh (spécialiste de la science du Hadîth) Abou l-’Abbâs Ja’far Ibn Mouhammad Al-Moustaghfiri est décédé en 432 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 1000 ans. Il était un savant du madh-hab Hanafite.
– L’illustre successeur des compagnons (tâbi’i) Mouhammad Ibn Mouslim Ibn Chihâb Az-Zouhri était un médinois, spécialiste du fiqh (jurisprudence) et de la science du hadîth. Il a rencontré une dizaine de compagnons du prophète (صلى الله عليه وسلم). Il était l’un des enseignants de l’Imâm Mâlik, ainsi que d’autres grands savants tels que l’Imâm Soufyân Ath-Thawri.
– L’Illustre compagnon, Anas Ibn Mâlik Ibn Nadar Al-Khazraji Al-Ansâri est décédé en 90 de l’Hégire (رضي الله عنه), il était l’un des compagnons qui étaient au service du Prophète (صلى الله عليه وسلم), de ce fait, il est l’un de ceux qui ont transmis le plus de hadîth.
– Ici, nous voyons que Anas Ibn Mâlik accrochait des inscriptions comportant du Qour-ân (ta’wîdh ou hirz) au cou de l’un de ses fils, puis il rapporte une parole du prophète (صلى الله عليه وسلم) sur le fait qu’il est permis de porter autour du cou le hirz comportant du Qour-ân, avant la descente de l’épreuve, tout comme après.
– Le Hafidh Jalâlou d-Din As-Souyoûti, dans son livre Jami’ou l-ahâdîth, rapporte également cette parole d’une part, du Hâfidh Aboû Nou’aym Al-Asbahâni qui la rapporte de ‘Â-ichah la femme du Prophète (صلى الله عليه وسلم), et d’autre part de Ad-Daylami qui la rapporte de Anas. Et ceci est également rapporté dans le livre Kanzou l-‘Ammali fi Sounani l-Aqwâli wa l-Af’âl par ‘Alâ-ou d-Dîn Ibni Qâdî Khân Al-Qâdiri Ach-Châdhili Al-Hindi.
– Nous voyons par ce hadîth du Prophète (صلى الله عليه وسلم) et par l’acte de ce compagnon éminent, le caractère licite de porter sur soi des écrits comportant du Qour-ân.
– Parmi les autres preuves du caractère licite de cela, il y a la parole de Allâh ta’âlâ :', 'al-moustaghfiri, al-moustaghfiriyy, al-mustaghfiri, al-mustaghfiriyy'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'أخبرنا محمد بن أبي بكر الحافظ قال، أخْبَرَنا أبو الفضل أحمد بن إبراهيم بن أحمد البلخي من أصل كتابه أخبرنا جعفر بن محمد بوران الحكاك ببلخ، حَدَّثَنا سليمان بن داود الهروي، حَدَّثَنا إسحاق بن منصور، حَدَّثَنا أبو داود الطيالسي، حَدَّثَنا شعبة، حَدَّثَنا مالك بن أنس عن ابن شهاب قال: دخلت على أنس بن مالك فرأيته يعلق التعويذ على ابن له فقلت له: ياأبا حمزة هل نزل به بلاء؟ قال: لا ثم ضرب بيده على منكبي فقال: يا أبا بكر سمعت رسول الله صلى الله عليه وسلم يقول: لا بأس بتعليق التعويذ من القرآن قبل نزول البلاء وبعد نزول البلاء.');

-- source: https://islamsunnite.net/chaykh-mouhammad-illaych-attribuer-endroit-ou-corps-a-allah-mecreance/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Attribuer l’endroit ou le corps à Allâh est de la mécréance', 'Al Azhar', 'وسواء كفر بقول صريح في الكفر كقوله كفرت بالله أو برسول الله أو بالقرآن أو الإله اثنان أو ثلاثة أو المسيح ابن الله أو العزيز ابن الله أو بلفظ يقتضيه أي يستلزم اللفظ الكفر استلزاما بينا كجحد مشروعية شيء مجمع عليه معلوم من الدين ضرورة ، فإنه يستلزم تكذيب القرآن أو الرسول، وكاعتقاد جسمية الله وتحيزه، فإنه يستلزم حدوثه واحتياجه لمحدِث', '« C’est de la mécréance explicite si quelqu’un dit : « je suis mécréant en Allâh » , ou « en le Messager de Allâh » ou « en le Qour-ân », ou celui qui dit que Dieu est deux ou trois, ou celui qui dit : « Jésus est le fils de Dieu » ou « ‘Ouzayr est le fils de Dieu », ou celui qui renie quelque chose qui fait partie de la religion selon l’unanimité qui est bien connue qu’elle fait partie de la religion, car ceci implique le démenti du Qour-ân ou du Messager ; ou le fait de croire que Allâh serait un corps ou qu’Il serait localisé, ce qui impliquerait qu’Il soit entré en existence et qu’Il aurait eu besoin de qui l’a créé »', '', 'Dans son livre « Minhou l-Jalîl ‘alâ Moukhtasari l-‘Allâmati Khalîl », le Chaykh Mouhammad ‘Illaych, a dit dans le chapitre de l’apostasie :
Informations utiles :
– Le Chaykh, le Faqîh (spécialiste de la jurisprudence), le Moufti des contrées égyptiennes, Aboû ‘Abdi l-Lâh Mouhammad Ibn Ahmad ‘Illaych Al-Mâliki Al-Azhari, est né en 1217 au Caire (Egypte) et il est décédé en 1299 de l’hégire au Caire (رحمه الله) c’est-à-dire il y a environ 150 ans.
Az-Zirikli a dit à son sujet : « Il est l’un des plus grands spécialistes du Fiqh (jurisprudence) Mâlikite » [Al-A’lâm]
– Dans son chapitre concernant les choses qui font sortir de l’Islâm (l’apostasie), il mentionne, entre autres, le fait de croire que Allâh serait un corps ou de croire que Allâh serait localisé, c’est-à-dire croire que Allâh serait dans un endroit ou une direction.
– De nombreux savants ont confirmé que le fait d’attribuer le corps à Allâh constitue de la mécréance. Parmi eux :
L’Imâm ‘Ali Ibnou Abî Tâlib [ Rapporté par Ibnou Mou’allim al-Qourachi ]
L’Imâm Aboû Hanîfah [ Rapporté par Al-Qarâfi ]
L’Imâm Mâlik [ Rapporté par Al-Qarâfi ]
L’Imâm Ach-Châfi’i [ Rapporté par As-Souyoûti ] et [ Rapporté par Al-Qarâfi ]
L’Imâm Ahmad Ibnou Hanbal [ Rapporté par Az-Zarkachi ] et [ Rapporté par Al-Qarâfi ]
L’Imâm Al-Ach’ari [Dans son livre An-Nawâdir] et [ Rapporté par Al-Bayâdi ] et [ Rapporté par Aboû Mansoûr Al-Baghdâdi ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ Dans son Charh de la partie croyance d’Ar-Riçâlah ]
L’Imâm Aboû Mansoûr Al-Baghdâdi [ Dans son livre Al-Asmâ-ou wa s-Sifât ] et [Dans son livre Ousoûl Ad-Dîn]
L’Imâm Ibnou Battâl (449 H.) [Dans son commentaire du Sahîh Al-Boukhâri]
L’Imâm Al-Bayhaqi [ Dans son livre Chou’abou l-Îmân ]
Le Chaykh Aboû Chakoûr As-Sâlimi Al-Hanafi [Dans son livre At-Tamhîd fî Bayâni t-Tawhîd]
L’Imâm Al-Ghazâli qui rapporte également l’unanimité [ Dans son livre Iljâmou l-‘awâm ]
L’Imâm Fakhrou d-Dîn Ar-Râzi [ Dans son livre Ousoûl Ad-Dîn ]
L’Imâm An-Nawawi (676 H.) [Dans son livre Al-Majmoû’]
L’Imâm Al-Mawsili [ Dans son livre Al-Ikhtiyâr ]
Le Chaykh Ibnou Hamdân Al-Hambali (695 H.) [ Dans son livre Nihâyatou l-Moubtadi-în ]
L’Imâm Ibnou Abî Jamrah (699 H.) [ Dans son livre Bahjah An-Noufoûs ]
L’Imâm An-Naçafi (710 H.) [ Dans son tafsîr ]
L’Imâm Safiyyou d-Dîn Al-Hindi (715 H.) qui mentionne l’unanimité [Dans son livre Nihâyatou l-Wousoûl]
Le Chaykh Mahmôud Al-Qoûnawi Al-Hanafi (771 H.) [ Dans son livre Al-Qalâ-id ]
Al-Qâdî Ibn Khaldoûn Al-Mâliki (m.808 H.) [Dans son livre Al-Ibar wa Diwânou l-Moubtada]
L’Imâm Taqiyyou d-Dîn Al-Hisni (829 H.) [Dans son livre Kifâyatou l-Akhyâr]
Le Chaykh ‘Alâ-ou d-Dîn Al-Boukhâri qui mentionne l’unanimité [ Dans son livre Mouljimatou l-Moujassimah ]
Le Chaykh Ibnou Amîr Al-Hajj Al-Hanafi (879 H.) [Dans son livre At-Taqrîr wa t-Tahbîr]
Le Chaykh Chihâbou d-Dîn Al-Koûrâni [ Dans son livre Ad-Dourarou l-Lawâmi’ ]
L’Imâm As-Souyoûti [ Dans son livre al-Achbâh wa n-Nadhâ-ir ]
Le Chaykh Ibn Hajar Al-Haytami [ Dans son livre Al-Minhajou l-Qawîm ]
Le Chaykh Al-Mounâwi [ Dans son livre Faydou l-Qadîr ]
Le Chaykh Mouhammad Mayyârah (1072 H.)
Le Chaykh Ibn Balbân [Dans son livre Moukhtasar Al-Ifâdât] et [ Rapporté par Al-Qaddoûmi ]
L’Imâm Al-Bayâdi (1098 H.)
L’Imâm Abdou l-Ghani An-Nâboulouçi [ Dans son livre Al-Fathou r-Rabbâni ]
Le Chaykh ‘Abdou l-Lâh Ibn Houçayn Al-‘Alawi (1272 H.) [Dans son livre Soullamou t-Tawfîq]
Le Moufti de La Mecque, le Chaykh Al-Habîb Mouhammad Ibn Houçayn (1281 H.) [Dans son livre Fat-hou l-Ilâh]
Le Chaykh Mouhammad ‘illaych Al-Mâliki [Dans son livre Minhou l-Jalîl]
Le Chaykh Salîm Al-Bichri Al-Azhari (1335 H.) [Rapporté par Al-‘Azzâmi]
Le Chaykh Al-Marighni Az-Zaytoûni qui mentionne l’unanimité [ Dans son livre Tâli’ou l-Bouchrâ ]
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Chaykh Mehmed Zâhid Kotku [ Dans son livre Ehl-i Sünnet Akaidi ]
Le Mouhaddith Mouhammad Yâçîn Al-Fâdâni (1410 H.) qui mentionne l’unanimité [Dans son livre Boughyah Al-Mouchtâq]
Le Mouhaddith Al-Harari (1429 H.) [Dans son livre Boughyah At-Tâlib]
Al-Oustâdh Mouhammad At-Tâwîl Al-Mâliki Al-Maghribi (Enseignant à l’Université Al-Qarawiyyîn) (1436 H.) qui mentionne l’unanimité [ Dans son livre Al-Loubâb fî Charhi Touhfati t-Toullâb ]
Et beaucoup d’autres…
– De nombreux savants ont confirmé que le fait d’attribuer l’endroit ou la direction à Allâh constitue de la mécréance. Parmi eux :
L’Imâm Ja’far As-Sâdiq [ Rapporté par Al-Qouchayri ] et [ Rapporté par Al-Bâqillâni ] et [ Rapporté par As-Samarqandi ]
L’Imâm Aboû Hanîfah [ Rapporté par Al-Qarâfi ] et [ Rapporté par Ibn ‘Abdi s-Salâm ] et [ Rapporté par As-Samarqandi ]
L’Imâm Mâlik [ Rapporté par Al-Qarâfi ] et [ Rapporté par Al-‘Irâqi ] et [ Rapporté par Mahmoûd As-Soubki ]
L’Imâm Ach-Châfi’i [ Rapporté par As-Souyoûti ] et [ Rapporté par Al-Qarâfi ] et [ Rapporté par Al-‘Irâqi ] et [ Rapporté par Mahmoûd As-Soubki ]
L’Imâm Ahmad Ibnou Hanbal [ Rapporté par Al-Qarâfi ]
L’Imâm Al-Ach’ari [ Rapporté par Al-‘Irâqi ] et [ Rapporté par Mahmoûd As-Soubki ]
L’Imâm Abou l-Layth As-Samarqandi [ Dans son charh de Al-Fiqh Al-Akbar ]
L’Imâm Al-Bâqillâni [ Rapporté par Al-‘Irâqi ] et [ Rapporté par Mahmoûd As-Soubki ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ Dans son Charh de la partie croyance d’Ar-Riçâlah ]
L’Imâm Al-Jouwayni [ Rapporté par ‘Alâ-ou d-Dîn Al-Boukhâri ]
L’Imâm An-Naçafi (508 H.) [ Dans son livre Tabsiratou l-Adil-lah ]
L’Imâm Ahmad Ar-Rifâ’i (578 H.)
L’Imâm Ibnou ‘Abdi s-Salâm [ Dans son livre Hallou r-Roumoûz ]
L’Imâm Fakhrou d-Dîn Ar-Râzi [ Dans son livre Ousoûl Ad-Dîn ]
L’Imâm An-Nawawi [ Dans son livre Rawdat At-Tâlibîn ]
L’Imâm Al-Mawsili [ Dans son livre Al-Ikhtiyâr ]
Le Chaykh Ibnou Hamdân Al-Hambali (695 H.) [ Dans son livre Nihâyatou l-Moubtadi-în ]
Le Chaykh Badrou r-Rachîd Al-Hanafi [ Dans son livre Riçâlatoun fî Alfâdhi l-Koufr ]
Le Hâfidh Waliyyou d-Dîn Al-‘Irâqi (826 H.) qui rapporté l’unanimité,
L’Imâm Taqiyyou d-Dîn Al-Hisni (829 H.) [Dans son livre Kifâyatou l-Akhyâr]
Le Chaykh Ibn Hajar Al-Haytami [ Dans son livre Al-Minhajou l-Qawîm ]
Le Chaykh Moullâ ‘Ali Al-Qâri [ Dans son Charh de Al-Fiqh Al-Akbar ] et [ Dans son charh de Al-Fiqh Al-Akbar (2) ] et [ Dans son livre Mirqât al-Mafâtîh ] et [ Rapporté par Mahmoûd As-Soubki ]
Le Chaykh Nidhâmou d-Dîn Al-Hindi [ Al-Fatâwa l-Hindiyyah ]
Le Chaykh Al-Mounâwi [ Dans son livre Faydou l-Qadîr ]
Le Moufassir Ismâ’îl Haqqi [ Dans son Tafsîr ]
L’Imâm Abdou l-Ghani An-Nâboulouçi [ Dans son livre Al-Fathou r-Rabbâni ]
Le Chaykh Ibn Balbân [Dans son livre Moukhtasar Al-Ifâdât] et [ Rapporté par Al-Qaddoûmi ]
Le Chaykh As-Sâwi Al-Mâliki [ Dans sa Hâchiyah du Tafsîr al-Jalâlayn ]
Le Chaykh Mouhammad ‘illaych Al-Mâliki [Dans son livre Minhou l-Jalîl]
Le Chaykh Al-Qawouqji [ Dans son livre Al-I’timâd fi l-I’tiqâd ]
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Chaykh Mahmoûd As-Soubki Al-Azhari qui mentionne l’unanimité [ Dans son livre It-hâfou l-Kâ-inât ] et [ Dans son livre It-hâfou l-Kâ-inât (2) ] et [ Dans son livre It-hâfou l-Kâ-inât (3) ] et [ Dans son livre It-hâfou l-Kâ-inât (4) ]
Le Chaykh Mehmed Zâhid Kotku [ Dans son livre Ehl-i Sünnet Akaidi ]
Le Mouhaddith Al-Harari (1439 H.) [Dans son livre As-Sirât Al-Moustaqîm]
Et beaucoup d’autres…
– Celui qui a commis une mécréance doit revenir immédiatement à l’Islam en prononçant les deux témoignages, qui sont (ach-hadou an l a il a ha il-la l-L a h, wa ach-hadou anna Mou h ammadan raç ou lou l-L a h) c’est-à-dire : « je témoigne qu’il n’est de dieu que Allâh et je témoigne que Mouhammad est le Messager de Allâh ». Il ne suffit pas de dire « astaghfirou l-Lâh ».', '''illish al maliki, allah, apostasie, apostat'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وسواء كفر بقول صريح في الكفر كقوله كفرت بالله أو برسول الله أو بالقرآن أو الإله اثنان أو ثلاثة أو المسيح ابن الله أو العزيز ابن الله أو بلفظ يقتضيه أي يستلزم اللفظ الكفر استلزاما بينا كجحد مشروعية شيء مجمع عليه معلوم من الدين ضرورة ، فإنه يستلزم تكذيب القرآن أو الرسول، وكاعتقاد جسمية الله وتحيزه، فإنه يستلزم حدوثه واحتياجه لمحدِث');

-- source: https://islamsunnite.net/imam-malik-istiwa-de-allah-sans-comment-qayrawani/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La position de l’Imâm Mâlik sur l’istiwâ de Allâh', 'Les Malikites', 'و قال رجل لمالك : » يا أبا عبد الله { الرحمن على العرش استوى } كيف استوى ؟ قال : الاستواء غير مجهول و الكيف منه غير معقول و السؤال عنه بدعة و الإيمان به واجب ، و أراك صاحب بدعة ، أخرجوه', '« Un homme demanda à [l’Imâm] Mâlik : « Ô Abâ ‘Abdi l-Lâh [il récita le verset : ] « Ar-Rahmân ‘ala ‘arch istawâ » : Istawâ comment ? L’Imâm Mâlik répondit : « L’istiwâ n’est pas inconnu et le comment n’est pas concevable, poser la question à ce sujet est une innovation, et y croire est un devoir et je pense que tu fais partie des [mauvais] innovateurs ! Faites le sortir ! ».»', '', 'Dans son livre « Kitâb Al-Jâmi’ fi s-Sounan wa l-Âdâb wa l-Maghâzi wa t-Târîkh », l’Imâm Ibn Abî Zayd Al-Qayrawâni a dit :
Informations utiles :
– L’Imâm Aboû Mouhammad ‘Abdou l-Lâh Ibn Abî Zayd Al-Qayrawâni Al-Mâliki est né en 310 à Qayrawân -Kairouan- (Tunisie) et il est décédé en 386 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1060 ans. Il était surnommé Mâlik As-Saghîr, c’est-à-dire le petit Mâlik. Son ouvrage Ar-Riçâlah est très réputé.
– L’Imâm, le spécialiste de la science du Hadîth, le Moujtahid (jurisconsulte), Mâlik Ibnou Anas est l’un des plus grands savants de notre communauté, il est une référence incontournable pour tous musulman. C’est un Salaf (C’est-à-dire qu’il a vécu dans les trois premiers siècles de l’Hégire), il est né en 93 et il est décédé en 179 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1260 ans. Il est l’Imâm de l’école (madh-hab) Malikite. L’Imâm Ach-Châfi’i disait de lui « Lorsque les savants sont cités, Mâlik est comme une étoile » . Consultez sa biographie : ici .
– Ici, l’Imâm Mâlik dit clairement que le comment au sujet de l’istiwâ de Allâh est inconcevable, c’est-à-dire que c’est un istiwâ sans comment (bilâ kayf). En effet, l’Imâm Mâlik n’a pas accepté que l’on demande « comment ? » au sujet de l’istiwâ de Allâh. Ceci nous confirme donc que l’istiwâ de Allâh n’est pas une position assise, ni un établissement, ni une installation, ni une élévation spatiale ni aucun autres sens qui font partie des attributs des créatures et qui sont concerné par le « comment » [al-kayf]. [ Voir à ce sujet l’explication du Chaykh Al-‘Azzâmi Al-Mâliki ]
– Le comment (al-kayf / al-kayfiyyah) c’est ce par quoi on décrit les créatures, c’est-à-dire les dimensions, le début, la fin, la couleur, l’endroit, la direction, la forme, le poids, la position assise, l’établissement, la proximité, la distance, le mouvement, le déplacement, le changement et tout ce qui fait partie des attributs des créatures. Allâh n’est pas concerné par cela.
Le Loughawi (spécialiste de la langue Arabe) Ar-Râghib Al-Asbahâni (m.502 A.H.) a dit : « “Kayfa” est un terme par lequel on demande à connaitre ce qu’il convient de dire [au sujet de quelqu’un], c’est-à-dire en terme de comparaison ou autre, tel que le blanc et le noir, la personne saine et le malade, et c’est pour cela qu’il n’est pas valable de dire au sujet de Allâh ‘azza wa jall “kayfa” (comment) » [Al-Moufradât fî Gharîbi l-Qour-ân]
Le Loughawi (spécialiste de la langue Arabe) Ar-Râghib Al-Asbahâni (m.502 A.H.) a dit également : « La forme (ach-chakl), l’aspect (al-hay-ah), l’image (as-soûrah), la similitude (an-nidd) concernent le genre et la comparaison et sont compris dans la kayfiyyah (le comment, la description physique) » [Rapporté par Al-Mounâwi dans son livre : At-Tawqîf ‘alâ Mouhimmâti t-Ta’ârîf]
Le Loughawi (spécialiste de la langue Arabe) Ar-Râghib Al-Asbahâni (m.502 A.H.) a dit également : « La comparaison est dans la kayfiyyah » [Rapporté par Al-‘Askari dans son ouvrage : Al-Fouroûq Al-Loughawiyyah]
Le Loughawi (spécialiste de la langue arabe) Ibn Mandhoûr (m.711 A.H.) a dit : « al-hay-ah et al-hî-ah (l’aspect, l’apparence) est l’état d’une chose, c’est sa kayfiyyah (comment, description physique) » [Liçân al-‘Arab]
Le Loughawi (spécialiste de la langue Arabe) Al-Fayroûzâbâdi (m.817 A.H.) a dit : « Les adeptes du Tawhîd (l’unicité divine) ont dit que Allâh ta’âlâ est sans kammiyyah (quantité, volume) et sans kayfiyyah (comment, description physique) » [Al-Qâmoûs Al-Mouhît]
Le Mouhaddith (transmetteur du hadîth) Mouhammad ‘Abdou r-Ra-oûf Al-Mounâwi (m.1031 A.H.) a dit : « “Kayfa” est un mot dont la portée est une interrogation sur les états de façon générale, sur ce que l’on perçoit par nos sens » [At-Tawqîf ‘alâ Mouhimmâti t-Ta’ârîf]
– L’Imâm Al-Bayhaqi a bien résumé tout cela en disant au sujet de Allâh ta’âlâ : « Il est Celui Qui n’est pas soumis aux illusions de la kayfiyyah (comment, description physique) » [Dans son livre : Al-I’tiqâd]
– L’Imâm Mâlik a dit : « l’istiwâ n’est pas inconnu » (al-istiwâ ghayrou majhoul) c’est-à-dire que l’istiwâ est connu car il est rapporté dans le Qour-ân, puis il a dit : « le comment n’est pas concevable » (al-kayfou ghayrou ma’qoûl) c’est-à-dire que le comment est exclu, impossible à Son sujet, à savoir que l’istiwâ dans le sens du comment, c’est-à-dire de l’attitude comme la position assise, n’est pas concevable : la raison ne l’accepte pas puisqu’il fait partie des caractéristiques des créatures. En effet, la position assise n’est valable que pour un être qui a des membres, c’est-à-dire un postérieur et des genoux, gloire à Allâh Qui est exempté de tout cela.
– Cette citation est rapportée avec une chaîne de transmission authentique. Elle a également été citée par :
Le Hâfidh Al-Bayhaqi [dans son livre « Al-Asmâ-ou wa s-Sifât »] et également [ dans son livre « Al-I’tiqâd» ] ;
Le Hâfidh Ibnou Hajar Al-‘Asqalâni l’a rapportée dans son livre « Fathou l-Bârî charh Sahîh Al-Boukhâri » ;
Le Hâfidh Aboû Nou’aym dans « Hilyatou l-Awliyâ » ;
L’Imâm Al-Qourtoubi l’a citée [ dans son tafsîr] ;
et d’autres qu’eux.
– Elle est d’ailleurs confirmée dans le manuscrit du livre Al-I’tiqâd :
– Le Hâfidh Az-Zabîdi a dit : « Ibnou l-Labân a dit dans l’explication de la parole de Mâlik : sa parole « Kayf ghayrou ma’qoûl » (le comment est inconcevable) : c’est-à-dire que le kayf (comment) fait parti des caractéristiques de ce qui entre en existence, et tout ce qui fait parti des attributs des choses entrées en existence, le fait de les attribuer à Allâh contredit la raison, de ce fait cela est catégoriquement renié pour Allâh ta’âlâ. Quant à sa parole : « wa l-Istiwâ ghayrou majhoûl » (l’istiwâ n’est pas inconnu) c’est-à-dire que son sens est connu par les spécialistes de la langue Arabe, et sa parole « wa l-îmânou bihi» (et y croire) c’est-à-dire selon ce qui est digne de Lui ta’âlâ, « wâjib» (est un devoir) car cela fait parti de la foi en Allâh et en Ses livres, « wa s-sou-âlou ‘anhou bid’ah » ( poser la question à ce sujet est une innovation ) c’est-à-dire une nouveauté car les compagnons connaissaient son sens qui est digne d’être attribué à Allâh du point du vue de la langue, ainsi ils n’ont pas été amené à poser cette question» [It-hâfou s-Sâdati l-Mouttaqîn].
– Au sujet de la parole « fauteur d’innovation » [صاحب بدعة] adressé par l’Imâm Mâlik à cet homme qui lui avait demandé « comment est l’istiwâ de Allâh », le Chaykh Al-Qoudâ’i Al-’Azzâmi Al-Azhari explique en disant : « Parce que sa question sur le comment de l’istiwâ indique qu’il a compris l’istiwâ selon son sens apparent, physique, qui relève de l’emprise d’un corps sur un autre et de son établissement dessus, et qu’il n’a fait que douter sur le comment de cet établissement. Il a donc demandé à son sujet. Et c’est exactement cela l’assimilation (tachbîh) que l’Imâm Mâlik a pointé comme étant une innovation (bid’ah)» [ Dans son livre «Fourqânou l-Qour-ân» ]
Ici, lors de l’explication de l’histoire de cet homme ignorant qui a osé demander à l’Imâm Mâlik « comment est l’istiwâ de Allâh ? », l’Imâm Al-‘Azzâmi dit que justement si l’Imâm Mâlik a dit à cet homme qu’il est un mauvais innovateur et qu’il l’a fait sortir, c’est que la question de cet homme relevait de l’innovation blâmable. En effet, le fait qu’il ait demandé « comment ? » au sujet de l’istiwâ de Allâh est en soit une mauvaise innovation.
– Une autre version authentique proche de celle-ci est rapportée avec les termes (wa kayfa ‘anhou marfoû’) c’est-à-dire : « Dire “comment” est exclu à Son sujet ». Cela est rapporté par le Hâfidh Al-Bayhaqi dans « Al-Asmâ-ou wa s-Sifât », par le Hâfidh Ibnou Hajar Al-‘Asqalâni dans son livre « Fathou l-Bârî charh Sahîh Al-Boukhâri », par Adh-Dhahabi dans « Siyarou A’lâmi n-Noubalâ » et d’autres.
– Quant à la version propagée par les anthropomorphistes, selon laquelle Mâlik aurait dit « le comment est ignoré » (al-kayfou majhoûl), cette version n’est pas vraie ; elle n’a été validée d’aucun des Salaf ; elle n’a pas été confirmée comme étant la parole de Mâlik ni de personne d’autre parmi les Imâm. L’Imâm Mâlik n’a pas dit « le comment est ignoré » (al-kayfou majhoûl). Cette version n’a aucune chaîne de transmission sur laquelle on puisse se baser et elle n’est pas conforme au tawhîd. En effet, le fait de dire que le comment est ignoré, cela insinue que Allâh aurait des attributs qui ont un comment (des caractéristiques des créatures), mais que nous ne saurions pas par lesquelles de ces caractéristiques Il serait attribué; et cela contredit le tawhîd. Cependant certains savants on cité cette version dans leurs ouvrages en expliquant « al-kayf » par « al-haqîqah » c’est-à-dire Sa réalité, ainsi ils expliquent que nul ne connaît la réalité de Allâh si ce n’est Lui-même.
– Le Chaykh Ahmad Zarroûq Al-Mâliki explique [ dans son livre « Charh ‘Aqîdati l-Ghazâli » ] que la version contenant les termes « al-kayfiyyatou majhoûlah » n’est pas authentique, car elle signifierait que le comment est inconnu. Cette parole impliquerait donc qu’il existe un comment mais que celui-ci serait ignoré, alors que l’Imâm Mâlik a justement voulu expliquer qu’il n’y a pas de comment.
– Ce qui confirme davantage la position de l’Imâm Mâlik, c’est ce que rapporte l’Imâm Al-Bayhaqi qui a dit : « [Les imâms] Al-Awzâ’i, Mâlik, Soufyân Ath-Thawri et Al-Layth Ibn Sa’d ont été questionné au sujet de ces hadîth (les hadîth moutachâbih – équivoques -), alors ils ont dit : Citez les comme ils sont parvenus, sans attribuer de comment (bilâ kayfiyyah) » [ Dans son livre “Al-I’tiqâd” ].
– De même l’Imâm Mâlik considérait le verset de l’istiwâ de parmi les moutachâbihât (textes équivoques). En effet, l’Imâm Aboû Mansoûr Al-Baghdâdi a dit : « Certains d’entre eux [c’est-à-dire les savants] ont dit que le verset de l’istiwâ est moutachâbih (équivoque), et ceci est l’avis de Mâlik Ibn Anas, des Fouqahâ de Médine et de Al-Asma’i » [Dans son livre Ousoûlou d-Dîn].
– Remarque importante : il y a une grande différence entre :
La parole des gens de la Sounnah qui disent que Allâh est sans comment (bilâ kayf), c’est-à-dire qu’Il n’est pas concerné par le comment, la description physique, comme cela a clairement été déclaré par les grands Imâm de la Oummah ;
et la parole des mouchabbihah (assimilateurs) qui se sont illusionné et qui ont pris pour croyance que Allâh aurait un comment mais que ce comment serait d’après eux ignoré, et qui disent : on ne sait pas comment. Ainsi, Ibn ‘Outhaymîn le wahhabite a contredit ouvertement les gens de la Sounnah en disant : « Nous ne nions pas à leurs sujets [les textes moutachâbihah] la kayfiyyah (comment, description physique) au contraire nous croyons qu’ils ont une kayfiyyah, mais nous n’avons pas connaissance de cette kayfiyyah » [Dans son livre intitulé “Charh al-‘Aqîdah Al-Wâsitiyyah”].
– Certains leaders de la mouvance sectaire wahhabite ont même prétendu textuellement que Allâh serait assis sur le trône. Article à consulter à ce sujet : Ar-Râjihi et Fawzân (wahhabites) prétendent que Allâh est assis sur le trône.
– Les wahhabites ont hérité cette croyance abjecte d’Ibn Taymiyah (moujassim) qui a également prétendu que Allâh serait assis. Article à consulter à ce sujet : L’Imam Abou Hayyan Al-Andalouçi dénonce l’égarement de Ibn Taymiyah .
– Il a été rapporté que l’Imâm Mâlik considérait mécréant ceux qui ont pour croyance que Allâh serait dans une direction ou qu’Il serait un corps [ Rapporté par Al-Haytami ] et [ Rapporté par Al-Qâri ] et [ Rapporté par Mahmoûd As-Soubki Al-Azhari ].
– Les savants de l’Islâm ont été unanimes sur le fait que l’istiwâ de Allâh n’est pas une position assise (jouloûss) ni un établissement (istiqrâr). Parmi eux :
L’Imâm Aboû Hanîfah [ Dans son livre Al-Wasiyyah ]
L’Imâm Al-Bâqillâni [ Dans son livre Al-Insâf ]
L’Imâm Ibnou Foûrak [ Dans son livre Mouchkilou l-Hadîth ]
L’Imâm ‘Abdou l-Lâh Al-Jouwayni (père de l’Imâm Al-Haramayn) [Dans son livre Kifâyatou l-Mou’taqad]
Le Chaykh Ibn Battâl [ Dans son commentaire du Sahîh Al-Boukhâri ]
L’Imâm Al-Bayhaqi [ Dans son livre Al-I’tiqâd ]
L’Imâm Ach-Chîrâzi [ Dans son livre Al-Ichârah ]
L’Imâm Al-Haramayn Al-Jouwayni [Dans son livre Al-Irchâd]
L’Imâm Al-Moutawalli [ Dans son livre Al-Ghounyah ]
Le Chaykh Aboû Mouhammad Rizqou l-Lâh Ibn ‘Abdi l-Wahhâb At-Tamîmi Al-Hambali (m. 488 H.) a dit : « On ne dit pas que le trône est Son endroit, car les endroits sont créés par Allâh et ils sont entrés en existence contrairement à Lui, et on ne dit pas qu’Il est assis (qâ’id) par Son Être sur le trône, ou debout, ou allongé, ou endormi, ou en contact, ou proche. Mais nous employons le terme de cet attribut (c’est-à-dire le terme istawâ) tout comme cela est parvenu dans le Qour-ân » [Rapporté par Ibn Hamdân dans Nihâyatou l-Moubtadi-în].
L’Imâm Al-Ghazâli [ Dans son livre Ihyâ-ou ‘Ouloûmi d-Dîn ]
Le Qâdî Ibn Rouchd Al-Jadd [ Rapporté par Ibnou l-Hâjj Al-Mâliki ]
Le Chaykh Al-Lâmichi Al-Hanafi [Dans son livre At-Tamhîd li Qawâ’id At-Tahwîd]
L’Imâm Ahmad Ar-Rifâ’i [Dans son livre Al-Bourhânou l-Mou-ayyad]
L’Imâm Aboû Madyan [ Dans son traité de croyance ]
L’Imâm Fakhrou d-Dîn Ar-Râzî
L’Imâm Ibn ‘Abdi s-Salâm [ Rapporté par Tâjou d-Dîn As-Soubki ]
L’Imâm Zaynou d-Dîn Ibnou l-Mounayyir [Dans son livre Tafsîr Mouchkilât Ahâdith youchkilou dhâhirouhâ]
L’Imâm Ibnou Abî Jamrah [Dans son livre Bahjatou n-Noufoûs]
Al-Qâdî Ibn Jamâ’ah
Le Moufassir Al-Khâzin [Dans son Tafsîr]
L’Imâm Abou Hayyân Al-Andalouçi [Dans son Tafsîr : An-Nahrou l-Mâdd]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit lors de l’explication du verset {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} « Ar-Rahmânou ‘ala l-‘Archi stawâ » [Soûrat Taha/5] : « Il n’est pas permis de le prendre dans le sens de l’établissement (istiqrâr) » [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
Le Hâfidh Waliyyou d-Dîn Al-‘Irâqi [Dans son livre Tarhou t-Tathrîb]
Le Chaykh Ahmad Zarroûq Al-Fâçi [ Dans son livre Charh ‘Aqîdati l-Ghazâli ]
L’Imâm Al-Qastallâni
Chaykh Al-Islâm Zakariyyâ Al-Ansâri [ Dans son livre Ihkâm ad-Dalâlah ]
Le Chaykh Moullâ ‘Alî Al-Qârî
L’Imâm Al-Kawthari (qui rapporte l’unanimité) [ Dans son livre Maqâlâtou l-Kawthari ]
Le Chaykh Al-‘Azzâmi [Dans son livre Fourqân al-Qour-ân]
Le Chaykh Ibn ‘Âchoûr [ Dans son tafsîr ]
Le Chaykh Mehmed Zâhid Kotku [ Dans son livre Ehl-i Sünnet Akaidi ]
Le Hâfidh Al-Harari [ Dans son livre As-Sirât al-Moustaqîm ]
et de nombreux autres savants.
Il n’est donc pas permis de traduire le verset {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} (Ar-Rahmânou ‘ala l-’archi stawâ) et ceux qui sont similaires par le fait que Allâh serait établi sur le trône car cette explication est contraire au tawhîd (l’unicité de Allâh).
– Retrouvez d’autres paroles de savants concernant l’Istiwâ de Allâh : ici .', 'abou nou3aym, al kayf ghayrou ma3qoul, al kayfou ghayrou ma3qoul, al qayrawaniyy'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'و قال رجل لمالك : » يا أبا عبد الله { الرحمن على العرش استوى } كيف استوى ؟ قال : الاستواء غير مجهول و الكيف منه غير معقول و السؤال عنه بدعة و الإيمان به واجب ، و أراك صاحب بدعة ، أخرجوه');

-- source: https://islamsunnite.net/hafidh-abou-awanah-confirme-apostasie/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Hâfidh Aboû ‘Awânah confirme qu’une personne peut sortir de l’Islâm sans l’avoir voulu', 'Les Chafi''ites', 'وفيه أن من المسلمين من يخرج من الدين من غير أن يقصد الخروج منه ومن غير أن يختار دينًا على دين الإسلام', 'Certes, il y a parmi les musulmans qui sortent de l’Islâm sans qu’ils aient voulu en sortir, et sans qu’ils aient choisi une autre religion que l’Islâm', '', 'Dans son commentaire du Sahîh de Al-Boukhâri «Fath Al-Bâri », l’Imâm Ibnou Hajar Al-’Asqalâni rapporte que le grand Hâfidh Aboû ‘Awânah a dit :
Informations utiles :
– Chaykhou l-Islâm, Amîr al-Mouminîn fi l-hadîth (le Prince des croyants dans la science du hadîth) Chihâb ad-Dîn Abou l-Fadl Ahmad Ibnou ‘Ali Ibnou Hajar Al-‘Asqalâni est né en 773 et il est décédé en 852 de l’hégire (رحمه الله) c’est-à-dire il y a plus de 590 ans. C’est un très grand spécialiste de la science du hadîth qui a écrit de nombreux ouvrages. Il est du madh-hab (Ecole de jurisprudence) de l’Imam Ach-Châfi’i. Son livre « Fath Al-Bârî » est incontournable, c’est le plus célèbre commentaire du Sahîh Al-Boukhâri. Consultez sa biographie : ici .
L’Imâm As-Souyoûti a dit de lui : « Chaykhou l-Islâm, l’Imâm des houffâdh (spécialistes de la science du hadîth) de son temps, le Hâfidh (spécialiste du hadîth) des contrées Egyptienne mais il est aussi le Hâfidh de tout le bas-monde, le juge des juges » [Tabaqât Al-Houffâdh].
Le Hâfidh Ibn Nasrou d-Dîn Ad-Dimachqi Ach-Châfi’i a dit à son sujet : « Notre Maître (mawlanâ wa sayyidounâ), Chaykhou l-Islâm, le grand Hâfidh (spécialiste de la science du hadîth), celui qui supporte la sounnah, l’Imâm des Imams, le juge des juges de la oummah » [Al-Jawâhir].
– L’Imâm, le Hâfidh (spécialiste de la science du hadîth) Aboû ‘Awânah Ya’qoûb Ibn Is-hâq Ibn Ibrâhîm Ibn Yazîd Al-Isfarâyîni est un savant du salaf, il est né en 230 et il est décédé en 316 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 1120 ans.
– Ici il parle de l’apostasie, qui est le fait qu’un musulman sorte de l’Islâm, c’est-à-dire qu’il devient mécréant. Et il dit qu’il se peut que quelqu’un sorte de l’Islâm sans avoir eu l’intention de quitter l’Islâm et sans avoir voulu changer pour autant de religion.
– Cette citation réfute la prétention de certains ignorants des sujets de l’apostasie, qui prétendent que la personne sortirait de l’Islâm uniquement si elle aurait eu l’intention d’en sortir ou si elle aurait changé de religion.
– Ceci est conforme à la parole du Prophète (صلى الله عليه وسلم) :', 'abou ‘awanah, abu ‘awanah, allah, apostasie'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وفيه أن من المسلمين من يخرج من الدين من غير أن يقصد الخروج منه ومن غير أن يختار دينًا على دين الإسلام');

-- source: https://islamsunnite.net/hafidh-abou-awanah-confirme-apostasie/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Hâfidh Aboû ‘Awânah confirme qu’une personne peut sortir de l’Islâm sans l’avoir voulu', 'Les Chafi''ites', 'إِنَّ العَبْدَ لَيَتَكَلَّمُ بِالكَلِمَةِ لا يَرىَ بِهَا بَأْساً يَهْوِي بِهَا فِي النَّارِ سَبْعِينَ خَرِيفاً', '', '', 'qui a pour sens : « Certes, il arrive que quelqu’un dise une parole dans laquelle il ne voit pas de mal, mais à cause de laquelle il chutera en enfer pendant soixante – dix automnes » . C’est-à-dire une distance parcourue en soixante-dix ans de chute pour atteindre le fond de l’enfer, le fond de l’enfer étant réservé aux mécréants. Ce hadîth a été rapporté par At-Tirmidhi, qui lui a donné le degré de haçan (bon). Dans le même sens, il existe un autre hadîth rapporté par Al-Boukhâri et Mouslim.
– Ainsi, la personne se doit de connaître les sujets liés à l’apostasie afin de se préserver de tomber dans la mécréance. Car comme nous avons vu précédemment, il se peux qu’une personne sorte de l’Islâm sans même s’en apercevoir.
– Le Chaykh Bourhânou d-Dîn Ibn Mâzah Al-Boukhâri Al-Hanafi (m.616 H.) a dit : « Celui qui prononce une parole de mécréance tout en sachant qu’il s’agit d’une parole de mécréance et en y croyant, il a certes commis de la mécréance. Et s’il ne croyait pas en ce qu’il a prononcé, ou qu’il ne savait pas qu’il s’agit d’une parole de mécréance, mais qu’il l’a prononcé volontairement, alors il est devenu mécréant selon l’ensemble des savants, et il n’est pas excusé par son ignorance. Et s’il n’a pas eu l’intention de faire cela [c’est-à-dire de prononcer la parole de mécréance] de sorte qu’il a voulu prononcé autre chose mais qu’il soit sorti de sa langue la parole de mécréance sans qu’il l’ai voulu, comme si par exemple il voulait dire « il n’est de dieu que Allâh » mais qu’il est sorti de sa langue la parole « il y a avec Dieu un autre dieu » il ne devient pas mécréant » [Al-Mouhîtou l-Bourhâni]
– Le Qâdî Aboû Bakr Ibnou l-‘Arabi Al-Mâliki (m. 543 H.) a dit : « Faire de la mécréance en plaisantant est de la mécréance, il n’y a pas de divergence à ce sujet dans la communauté musulmane » [Dans son livre Ahkâmou l-Qour-ân et également rapporté de lui par Al-Qourtoubi dans son Tafsîr]
– L’Imâm Ibn Noujaym Al-Hanafi (m. 970 H.) a dit : « Celui qui prononce une parole de mécréance en plaisantant ou pour s’amuser devient mécréant selon tout les savants » [Dans son livre Al-Bahrou r-Râ-iq et également rapporté de lui parIbn ‘Âbidîn dans Raddou l-Mouhtâr]
– Celui qui a commis une mécréance doit revenir immédiatement à l’Islâm en prononçant les deux témoignages, qui sont (ach-hadou an l a il a ha il-la l-L a h, wa ach-hadou anna Mou h ammadan raç ou lou l-L a h) c’est-à-dire : « je témoigne qu’il n’est de dieu que Allâh et je témoigne que Mouhammad est le Messager de Allâh ». Il ne suffit pas de dire « astaghfirou l-Lâh ».
Le Chaykh ‘Abdou l-Lâh Ibn Houçayn Al-Hadrami a dit : « Il est obligatoire pour celui qui est tombé dans l’apostasie de revenir immédiatement à l’Islam, en prononçant les deux témoignages et en abandonnant ce par quoi l’apostasie a eu lieu. » [Soullam At-Tawfîq]', 'abou ‘awanah, abu ‘awanah, allah, apostasie'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'إِنَّ العَبْدَ لَيَتَكَلَّمُ بِالكَلِمَةِ لا يَرىَ بِهَا بَأْساً يَهْوِي بِهَا فِي النَّارِ سَبْعِينَ خَرِيفاً');

-- source: https://islamsunnite.net/imam-fakhroun-d-din-ar-razi-confirme-que-les-moujassimah-sont-mecreants/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm Fakhrou d-Dîn Ar-Râzi confirme que les moujassimah sont mécréants et que Allâh existe sans endroit', 'Les Chafi''ites', 'المُجسّمة كفّار لأنهم اعتقدوا أنّ كلّ ما لا يكون متحيزاً ولا في جهة فليس بموجود ونحن نعتقد أنّ كلّ متحيّز فهو مُحْدَثٌ وخالقه موجود ليس بمُتحيّز ولا في جهة فالمُجسّمة نَفَوا ذات الشىء الذي هو الإله فيلزمهم الكفر', 'Les moujassimah (anthropomorphistes) sont mécréants car ils ont cru que tout ce qui n’est pas localisé, limité et dans une direction alors n’existe pas. Et nous, nous croyons que tout ce qui est localisé, limité est entré en existence et Son Créateur existe et n’est ni localisé, ni limité et ni dans une direction. Les moujassimah (anthropomorphistes) ont donc nié l’Etre Qui a la divinité c’est pour cela qu’ils sont déclaré mécréants.', '', 'Dans son livre « Ousoûl Ad-Dîn » le Chaykh Fakhrou d-Dîn Ar-Râzi a dit :
Informations utiles :
– Chaykh al-Islâm, l’Imâm, le Moufassir –exégète– Aboû ‘Abdoul-Lâh Mouhammad ‘Oumar Al-Houçayn Fakhrou d-Dîn Ar-Râzi est né en 543 et il est décédé en 606 de l’hégire (rahimahou l-Lâh) c’est-à-dire il y a plus de 830 ans. Il était du madh-hab (école de jurisprudence) de l’Imam Ach-Châfi’i. C’est un savant de référence et son oeuvre « At-Tafsîrou l-Kabîr » est l’un des tafsîr les plus célèbres et les plus répandus. Certains savants, comme l’Imâm As-Souyoûti, l’ont désigné comme le moujaddid du 6ème siècle de l’hégire (c’est-à-dire celui qui revitalise la science de la religion).
Ibnou l-Athîr a dit de lui : « Il était le savant de ce bas-monde à son époque » [Al-Kâmil]
Le Chaykh Tâjou d-Dîn As-Soubki a dit : « Il était surnommé Chaykhou l-Islâm » [Tabaqâtou ch-Châfi’iyyah]
– Ici, il confirme que les moujassimah (ceux qui attribuent le corps, la direction et l’endroit à Allâh) sont mécréants.
– Il confirme également le fait que Allâh n’est pas dans un endroit, ni une direction et qu’Il n’est pas limité.
– Dans d’autres passages de ses ouvrages, l’Imâm Fakhrou d-Dîn Ar-Razi confirme la croyance des gens de la Sounnah :
Dans son tafsîr, lorsqu’il aborde le verset 11 de soûrat Ach-Choûra { ليس كمثله شيء } (layça kamithlihi chay) qui signifie « Rien n’est tel que Lui », l’Imâm Fakhrou d-Dîn Ar-Râzi a dit : « Les savants du Tawhîd par le passé et par le présent ont retenu cette âyah comme argument pour nier le fait que Allâh ta’âlâ soit un corps composé d’organes et de parties étant dans un endroit et une direction. Ils ont dit s’Il était un corps Il aurait été semblable à tous les corps et ceci implique qu’Il aurait des semblables et des ressemblants à Lui, or ceci est faux du fait même du Texte explicite de Sa Parole ta’âlâ : { ليس كمثله شيء } (layça kamithlihi chay) qui signifie « Rien n’est tel que Lui ». » [ voir l’article : ici ]
Dans son tafsîr, lors de l’explication du verset 4 de soûrat Ach-Choûrâ, l’Imâm Fakhrou d-Dîn Ar-Râzi a dit : « Dans la parole de Allâh ta’âlâ : {وَهُوَ ٱلۡعَلِىُّ ٱلۡعَظِيمُ} (wa houwa l-‘Aliyyou l-‘Adhîm) [qui signifie : « Il est Celui Qui a la domination absolue par la puissance et l’éminence du mérite »], il n’est pas possible que ce qui est visé par Al-‘Aliyy soit l’élévation par la direction et l’endroit puisque les preuves de la corruption de cette croyance ont été confirmées. Il n’est pas possible non plus que ce qui est visé par Al-‘Adhîm soit l’éminence par la corpulence et l’ampleur du corps car cela impliquerait qu’il soit composé de parties et d’éléments et cela est contraire à la parole de Allâh : {اللَّهُ أَحَدٌ} (Allâhou ahad) [qui signifie : « Allâh est unique »]. ». [ voir l’article : ici ]
Dans son tafsîr, lors de l’explication du verset { وَهُوَ مَعَكُمْ أَيْنَمَا كُنْتُم} (wa houwa ma’akoum aynamâ kountoum) [Soûrat Al-Hadîd/4] , l’Imam Fakhrou d-Dîn Ar-Râzi a dit : « Les spécialistes de la science de la croyance (al-moutakallimoûn) ont dit que cette « ma’iyyah » est soit par la science, soit par la préservation et la protection ou bien les deux. Il est confirmé l’unanimité sur le fait que Allâh soubhânah n’est pas avec nous dans un endroit, ni une direction, ni dans un espace. Donc concernant Sa parole “wa houwa ma’akoum” il est indispensable d’en faire le ta-wîl (interprétation), et si le ta-wîl (interprétation) nous est permis ici, alors il est indispensable qu’il soit permis dans d’autres endroits [c’est-à-dire d’autres versets]». [ voir l’article : ici ]
– De nombreux savants ont confirmé que le fait d’attribuer le corps à Allâh constitue de la mécréance. Parmi eux :
L’Imâm ‘Ali Ibnou Abî Tâlib [ voir : ici ]
L’Imâm Aboû Hanîfah [ voir : ici ]
L’Imâm Mâlik [ voir : ici ]
L’Imâm Ach-Châfi’i [ voir : ici ] et [ voir : ici ]
L’Imâm Ahmad Ibnou Hanbal [ voir : ici ]
L’Imâm Al-Ach’ari [ voir : ici ] et [ voir : ici ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ voir : ici ]
L’Imâm Aboû Mansoûr Al-Baghdâdi [ voir : ici ]
L’Imâm Ibnou Battâl (449 H.)
L’Imâm Al-Bayhaqi [ voir : ici ]
L’Imâm Al-Ghazâli qui rapporte également l’unanimité [ voir : ici ]
L’Imâm Fakhrou d-Dîn Ar-Râzi [voir ci-dessus]
L’Imâm An-Nawawi (676 H.)
L’Imâm Al-Mawsili [ voir : ici ]
L’Imâm Ibnou Abî Jamrah (699 H.)
L’Imâm An-Naçafi (710 H.) [ voir : ici ]
L’Imâm Safiyyou d-Dîn Al-Hindi (715 H.)
Le Chaykh Ibnou Amîr Al-Hajj Al-Hanafi (733 H.)
Le Chaykh Mahmôud Al-Qoûnawi Al-Hanafi (771 H.)
L’Imâm Taqiyyou d-Dîn Al-Hisni (829 H.)
Le Chaykh ‘Alâ-ou d-Dîn Al-Boukhâri qui rapporte l’unanimité [ voir : ici ]
L’Imâm As-Souyoûti [ voir : ici ]
Le Chaykh Ibn Hajar Al-Haytami [ voir : ici ]
Le Chaykh Al-Mounâwi [ voir : ici ]
Le Chaykh Mouhammad Mayyârah (1072 H.)
Le Chaykh Ibn Balbân [ voir : ici ]
L’Imâm Al-Bayâdi (1098 H.)
L’Imâm Abdou l-Ghani An-Nâboulouçi [ voir : ici ]
Le Chaykh ‘Abdou l-Lâh Ibn Houçayn Al-‘Alawi (1272 H.)
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ voir : ici ]
Le Chaykh Salîm Al-Bichri Al-Azhari (1335 H.)
Le Chaykh Al-Marighni Az-Zaytoûni qui mentionne l’unanimité [ voir : ici ]
L’Imâm Al-Kawthari [ voir : ici ]
Le Chaykh Mehmed Zâhid Kotku [ voir : ici ]
Le Mouhaddith Mouhammad Yâçîn Al-Fâdâni (1410 H.)
Le Mouhaddith Al-Harari (1429 H.)
Et beaucoup d’autres…
– De nombreux savants ont confirmé que le fait d’attribuer l’endroit ou la direction à Allâh constitue de la mécréance. Parmi eux :
L’Imâm Ja’far As-Sâdiq [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Aboû Hanîfah [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Mâlik [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Ach-Châfi’i [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Ahmad Ibnou Hanbal [ voir : ici ]
L’Imâm Al-Ach’ari [ voir : ici ] et [ voir : ici ]
L’Imâm Abou l-Layth As-Samarqandi [ voir : ici ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ voir : ici ]
L’Imâm Al-Jouwayni [ voir : ici ]
L’Imâm An-Naçafi (508 H.) [ voir : ici ]
L’Imâm Ahmad Ar-Rifâ’i (578 H.)
L’Imâm Ibnou ‘Abdi s-Salâm [ voir : ici ]
L’Imâm Fakhrou d-Dîn Ar-Râzi [voir ci-dessus]
L’Imâm An-Nawawi [ voir : ici ]
L’Imâm Al-Mawsili [ voir : ici ]
Le Chaykh Badrou r-Rachîd Al-Hanafi [ voir : ici ]
Le Hâfidh Waliyyou d-Dîn Al-‘Irâqi (826 H.) qui rapporté l’unanimité,
L’Imâm Taqiyyou d-Dîn Al-Hisni (829 H.)
Le Chaykh Ibn Hajar Al-Haytami [ voir : ici ]
Le Chaykh Moullâ ‘Ali Al-Qâri [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
Le Chaykh Nidhâmou d-Dîn Al-Hindi (Al-Fatâwa l-Hindiyyah) [ voir : ici ]
Le Chaykh Al-Mounâwi [ voir : ici ]
Le Moufassir Ismâ’îl Haqqi [ voir : ici ]
L’Imâm Abdou l-Ghani An-Nâboulouçi [ voir : ici ]
Le Chaykh Ibn Balbân [ voir : ici ]
Le Chaykh As-Sâwi Al-Mâliki [ voir : ici ]
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ voir : ici ]
Le Chaykh Al-Qawouqji [ voir : ici ]
L’Imâm Al-Kawthari [ voir : ici ]
Le Chaykh Mahmoûd As-Soubki Al-Azhari qui mentionne l’unanimité [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
Le Chaykh Mehmed Zâhid Kotku [ voir : ici ]
Le Mouhaddith Al-Harari (1439 H.)
Et beaucoup d’autres…', '3oulama, ahlou s-sounnah, allah, anthropomorphisme'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'المُجسّمة كفّار لأنهم اعتقدوا أنّ كلّ ما لا يكون متحيزاً ولا في جهة فليس بموجود ونحن نعتقد أنّ كلّ متحيّز فهو مُحْدَثٌ وخالقه موجود ليس بمُتحيّز ولا في جهة فالمُجسّمة نَفَوا ذات الشىء الذي هو الإله فيلزمهم الكفر');

-- source: https://islamsunnite.net/limam-al-qayrawani-innovation-du-second-adhan-par-outhman/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Les bonnes innovations.', '''Outhman Ibn ''Affan', 'وهذا الأذان الثاني أحدثه بنو أمية', 'Le deuxième appel à la prière (adhan) a été innové par les Banoû Oumayyah', '', 'Dans son célèbre livre Ar-Riçâlah (dans le chapitre concernant la prière du vendredi), l’Imâm Al-Qayrawâni a dit :
Informations utiles :
– L’Imâm Aboû Mouhammad ‘Abdou l-Lâh Ibn Abî Zayd Al-Qayrawâni Al-Mâliki est né en 310 à Qayrawân -Kairouan- (Tunisie) et il est décédé en 386 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1060 ans. Il était surnommé Mâlik As-Saghîr, c’est-à-dire le petit Mâlik. Son ouvrage Ar-Riçâlah est très réputé.
– Ici, il rapporte que le second appel à la prière du vendredi -joumou’ah- a été ajouté par les Banoû Oumayyah, la tribu du grand Calife ‘Outhmân Ibnou ’Affân (رضي الله عنه) qui est celui qui a innové cet acte, comme cela est rapporté dans le Sahîh Al-Boukhâri ; ceci alors que ni Prophète (صلى الله عليه وسلم), ni Aboû Bakr, ni ‘Oumar ne le faisait. De nos jours cette bonne innovation est pratiquée par l’ensemble des musulmans à travers le monde.
– L’Illustre Compagnon, Amîr al-Mou-minîn, ‘Outhmân Ibn ‘Affân Dhoun-Noûrayn est décédé en 36 de l’Hégire (رضي الله عنه) c’est-à-dire il y a environ 1400 ans. Le prophète (صلى الله عليه وسلم) a fait son éloge à de nombreuses occasions. Il a été surnommé « Dhou n-Noûrayn » (l’homme aux deux lumières) car il a épousé successivement deux des filles du Messager de Allâh (صلى الله عليه وسلم). ‘Outhmân fait également parti des compagnons à qui le Prophète (صلى الله عليه وسلم) a annoncé qu’ils auraient le Paradis.
– Cet acte nous confirme que ce n’est pas toute chose que le Messager (صلى الله عليه وسلم) ne nous a pas ordonné de faire (sans nous l’interdire), qui est forcement quelque chose d’interdite. Au contraire le Prophète (صلى الله عليه وسلم) a dit : «مَنْ سَنَّ فِى الإِسْلامِ سُنَّةً حَسَنَةً فَلَهُ أَجْرُهَا» (ce qui a pour sens le sens) : « Celui qui instaure dans l’Islam une bonne tradition (sounnah) en aura la récompense » [ Rapporté par Mouslim ].
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ]
– Cette bonne innovation de ‘Outhmân est mentionnée par l’Imâm Al-Boukhâri [ Dans son Sahîh ], dans le livre de la prière de vendredi : chapitre l’appel à la prière le jour de vendredi.
– Le Hâfidh Ibnou Hajar Al-’Asqalâni, dans son livre « Fath al-Bârî », explique que le premier appel à la prière que nous réalisons le jour du vendredi est celui que ‘Outhmân (رضي الله عنه) a lui-même ajouté. Et personne n’a jamais blâmé cela.
– L’Imâm, le Hâfidh As-Souyoûti a dit au sujet de ‘Outhmân Ibn ‘Affân (رضي الله عنه) : « Il est le premier à avoir instauré le premier adhân du joumou’ah » [Dans son livre Târîkhou l-Khoulafâ]
– Retrouvez d’autres paroles de savants concernant les bonnes innovations : ici .', '3outhman, adhan, al boukhari, al qayrawaniyy'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وهذا الأذان الثاني أحدثه بنو أمية');

-- source: https://islamsunnite.net/limam-al-ghazali-lunanimite-moujassimah-mecreant/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les moujassimah sont mécréant par unanimité', 'Unanimité', 'أعني بالجسم عبارة عن مقدار له طول وعرض وعمق', '« Je vise par « le corps » (jism) ce qui a une longueur, une largeur et une profondeur. »', '', 'Dans sa riçâlah « Iljâmou l-‘awâmm ‘an ‘ilmi l-kalâm » l’Imâm Al-Ghazâli a dit :
Puis il dit :', '3oulama, ahlou s-sounnah, al-ghazali, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'أعني بالجسم عبارة عن مقدار له طول وعرض وعمق');

-- source: https://islamsunnite.net/limam-al-ghazali-lunanimite-moujassimah-mecreant/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les moujassimah sont mécréant par unanimité', 'Unanimité', 'من عبد جسمًا فهو كافر بإجماع الأئمة السلف منهم والخلف', 'Quiconque adore un corps est un mécréant par unanimité des Imams du Salaf (prédécesseurs) et du Khalaf (successeurs).', '', 'Informations utiles :
– Le Chaykh, l’Imâm Aboû Hâmid Mouhammad Ibnou Mouhammad Al-Ghazâli est né en 450 à Tus et il est décédé en 505 de l’Hégire à Tus (رحمه الله) c’est-à-dire il y a plus de 940 ans. C’est un savant très célèbre, il était surnommé « houjjatou l-Islâm » c’est-à-dire qu’il était capable de prouver la véracité, la beauté et la sagesse de l’Islâm. Certains l’ont désigné comme le moujaddid du 5ème siècle de l’Hégire (c’est-à-dire celui qui revitalise la science de la religion). Il était du madh-hab (école de jurisprudence) de l’Imâm Ach-Châfi’i. Son livre «Ihyâ-ou ‘Ouloûmi d-Dîn » est son ouvrage le plus connu.
Le Hâfidh Ibnou ‘Açâkir a dit à son sujet : « Selon moi, le savant qui était à la tête du 5ème siècle [de l’hégire] (c’est-à-dire le Moujaddid – savant revivificateur) est l’Imâm Aboû Hâmid Mouhammad Ibnou Mouhammad Ibn Mouhammad Ibn Mouhammad Al-Ghazâli At-Toûçi, le Faqîh (spécialiste de la jurisprudence), car il était un savant qui œuvrait (conformément à sa science), un Faqîh (spécialiste de la jurisprudence), un vertueux (Fâdil), un spécialiste des fondements (ousoûli), quelqu’un de complet, auteur d’ouvrages, doué de raison et dont la mention du fait qu’il ait de la science s’est propagée dans tous les horizons et il surpassa ses contemporains du Khouraçân, du Châm et d’Irak » [Tabyînou kadhibi l-Mouftarî]
– Sa riçâlah « iljâmou l-‘awâmm ‘an ‘ilmi l-kalâm » fait partie des derniers ouvrages qu’il a écrit. L’Imâm Taqiyyou d-Dîn Ibn Salâh a dit : « Il s’agit du dernier ouvrage de Al-Ghazâli dans l’absolu ou alors le dernier ouvrage qu’il a composé dans ousoûlou d-dîn» [Rapporté par Az-Zarkachi dans Al-Bahrou l-Mouhît]
– Ici nous voyons clairement que l’Imâm Al-Ghazâli déclare mécréant les moujassimah (anthropomorphistes) c’est-à-dire ceux qui ont pour croyance que Allâh serait un corps. Bien plus, l’Imâm Al-Ghazâli mentionne qu’il y a unanimité des Salafs et des Khalafs sur le fait que les moujassimah (anthropomorphistes) sont mécréant.
– Dans un autre passage de son livre, l’Imâm Al-Ghazâli confirme ses propos en disant : « Certes, celui qui adore un corps alors il adore une idole, que ce corps soit petit ou grand, laid ou beau, dans la direction du bas ou du haut, sur terre ou sur le trône » [Iljâmou l-‘awâmm]
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah]
– De plus, l’Imâm Al-Ghazâli nous donne ici la définition du corps, à savoir : ce qui a une longueur, une largeur et une profondeur. Il n’est donc pas permis d’attribuer cela à Allâh. D’autres savants ont dit que le corps est ce qui est composé de deux substances élémentaires (jawhar) ou plus, c’est-à-dire que le corps est ce qui est composé. Et Allâh n’est ni composé ni un composant.
L’Imâm Ahmad Ibn Hambal a dit : « Les spécialistes de la langue ont mentionné que le mot « corps » (jism) est attribué pour tout ce qui présente une longueur, une largeur, une épaisseur, une composition et une image, et Allâh ta’âlâ est exempt de tout ceci » [ Rapporté par Abou l-Fadl At-Tamîmi ]
L’Imâm Al-Moutawalli (m.478 h.) a dit : « Le corps (jism) c’est ce qui est composé, et le minimum d’un corps c’est la composition de deux substances [élémentaires] (jawhar)» [Dans son livre Al-Ghounyah fî Ousoûli d-Dîn]
Le Loughawi (spécialiste de la langue Arabe) Ar-Râghib Al-Asbahâni (m.502 A.H.) a dit : « Le corps (jism) c’est ce qui a une longueur, une largeur et une profondeur » [Rapporté par Az-Zabîdi dans Tâj al-‘Aroûss]
Le Mouhaddith Mouhammad ‘Abdou r-Ra-oûf Al-Mounâwi (m.1031 A.H.) a dit : « Le corps (jism) est ce qui a une longueur, une largeur et une profondeur » [At-Ta’ârîf]
Le Mouhaddith ‘Abdou l-Lâh Al-Harari a dit : « Le corps (jism) c’est tout ce qui a un volume ou une longueur, une largeur et une profondeur, qu’il soit grand ou petit » [Boughyatou t-Tâlib]
– Les corps se divisent en deux catégories : les corps palpables et les corps impalpables. Les corps palpables, c’est ce qu’on peut saisir à la main tel que les pierres, les plantes, les humains… Et les corps impalpables, c’est ce qu’on ne peut pas saisir à la main tel que la lumière, les Anges, les Jinns, les âmes… Les corps, qu’ils soient palpables ou impalpables, ainsi que leurs caractéristiques sont tous créés par Allâh, par conséquent Allâh n’est pas un corps, ni un corps palpable, ni un corps impalpable.
– Celui qui attribue à Allâh le fait d’avoir une longueur, ou une largeur, ou une profondeur, ou d’être composé, ou d’être un composant est mécréant par unanimité des savants qu’ils soient du Salaf ou du Khalaf. Il n’est donc pas permis de dire ou de croire que Allâh aurait des membres ou des organes, tels que la main, les doigts, les yeux, le pied, le tibia, le visage …
– De nombreux savants ont confirmé que le fait d’attribuer le corps à Allâh constitue de la mécréance. Parmi eux :
L’Imâm ‘Ali Ibnou Abî Tâlib [ Rapporté par Ibnou Mou’allim al-Qourachi ]
L’Imâm Aboû Hanîfah [ Rapporté par Al-Qarâfi ]
L’Imâm Mâlik [ Rapporté par Al-Qarâfi ]
L’Imâm Ach-Châfi’i [ Rapporté par As-Souyoûti ] et [ Rapporté par Al-Qarâfi ]
L’Imâm Ahmad Ibnou Hanbal [ Rapporté par Az-Zarkachi ] et [ Rapporté par Al-Qarâfi ]
L’Imâm Al-Ach’ari [Dans son livre An-Nawâdir] et [ Rapporté par Al-Bayâdi ] et [ Rapporté par Aboû Mansoûr Al-Baghdâdi ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ Dans son Charh de la partie croyance d’Ar-Riçâlah ]
L’Imâm Aboû Mansoûr Al-Baghdâdi [ Dans son livre Al-Asmâ-ou wa s-Sifât ] et [Dans son livre Ousoûl Ad-Dîn]
L’Imâm Ibnou Battâl (449 H.) [Dans son commentaire du Sahîh Al-Boukhâri]
L’Imâm Al-Bayhaqi [ Dans son livre Chou’abou l-Îmân ]
Le Chaykh Aboû Chakoûr As-Sâlimi Al-Hanafi [Dans son livre At-Tamhîd fî Bayâni t-Tawhîd]
L’Imâm Al-Ghazâli qui rapporte également l’unanimité [Dans son livre Iljâmou l-‘awâm]
L’Imâm Fakhrou d-Dîn Ar-Râzi [ Dans son livre Ousoûl Ad-Dîn ]
L’Imâm An-Nawawi (676 H.) [Dans son livre Al-Majmoû’]
L’Imâm Al-Mawsili [ Dans son livre Al-Ikhtiyâr ]
Le Chaykh Ibnou Hamdân Al-Hambali (695 H.) [ Dans son livre Nihâyatou l-Moubtadi-în ]
L’Imâm Ibnou Abî Jamrah (699 H.) [ Dans son livre Bahjah An-Noufoûs ]
L’Imâm An-Naçafi (710 H.) [ Dans son tafsîr ]
L’Imâm Safiyyou d-Dîn Al-Hindi (715 H.) qui mentionne l’unanimité [Dans son livre Nihâyatou l-Wousoûl]
Le Chaykh Mahmôud Al-Qoûnawi Al-Hanafi (771 H.) [ Dans son livre Al-Qalâ-id ]
Al-Qâdî Ibn Khaldoûn Al-Mâliki (m.808 H.) [Dans son livre Al-Ibar wa Diwânou l-Moubtada]
L’Imâm Taqiyyou d-Dîn Al-Hisni (829 H.) [Dans son livre Kifâyatou l-Akhyâr]
Le Chaykh ‘Alâ-ou d-Dîn Al-Boukhâri qui mentionne l’unanimité [ Dans son livre Mouljimatou l-Moujassimah ]
Le Chaykh Ibnou Amîr Al-Hajj Al-Hanafi (879 H.) [Dans son livre At-Taqrîr wa t-Tahbîr]
L’Imâm As-Souyoûti [ Dans son livre al-Achbâh wa n-Nadhâ-ir ]
Le Chaykh Ibn Hajar Al-Haytami [ Dans son livre Al-Minhajou l-Qawîm ]
Le Chaykh Al-Mounâwi [ Dans son livre Faydou l-Qadîr ]
Le Chaykh Mouhammad Mayyârah (1072 H.)
Le Chaykh Ibn Balbân [Dans son livre Moukhtasar Al-Ifâdât] et [ Rapporté par Al-Qaddoûmi ]
L’Imâm Al-Bayâdi (1098 H.)
L’Imâm Abdou l-Ghani An-Nâboulouçi [ Dans son livre Al-Fathou r-Rabbâni ]
Le Chaykh ‘Abdou l-Lâh Ibn Houçayn Al-‘Alawi (1272 H.) [Dans son livre Soullamou t-Tawfîq]
Le Moufti de La Mecque, le Chaykh Al-Habîb Mouhammad Ibn Houçayn (1281 H.) [Dans son livre Fat-hou l-Ilâh]
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ Dans son livre Minhou l-Jalîl ]
Le Chaykh Salîm Al-Bichri Al-Azhari (1335 H.) [Rapporté par Al-‘Azzâmi]
Le Chaykh Al-Marighni Az-Zaytoûni qui mentionne l’unanimité [ Dans son livre Tâli’ou l-Bouchrâ ]
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Chaykh Mehmed Zâhid Kotku [ Dans son livre Ehl-i Sünnet Akaidi ]
Le Mouhaddith Mouhammad Yâçîn Al-Fâdâni (1410 H.) qui mentionne l’unanimité [Dans son livre Boughyah Al-Mouchtâq]
Le Mouhaddith Al-Harari (1429 H.) [Dans son livre Boughyah At-Tâlib]
Al-Oustâdh Mouhammad At-Tâwîl Al-Mâliki Al-Maghribi (Enseignant à l’Université Al-Qarawiyyîn) (1436 H.) qui mentionne l’unanimité [ Dans son livre Al-Loubâb fî Charhi Touhfati t-Toullâb ]
Et beaucoup d’autres…', '3oulama, ahlou s-sounnah, al-ghazali, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'من عبد جسمًا فهو كافر بإجماع الأئمة السلف منهم والخلف');

-- source: https://islamsunnite.net/limam-ibn-al-jawzi-parle-du-hadith-an-nouzoul/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm Ibn Al-Jawzi parle du hadîth du nouzoûl et de la mauvaise compréhension des égarés', 'Ibn Al-Jawzi', 'فترى أقواماً يسمعون أخبار الصفات فيحملونَها على ما يقتضيه الحس ، كقول قائلهم : ينـزل بذاته إلى السماء ويتنقل ، وهذا فهم ردىء ، لأن الـمتنقـل يكون من مكان إلى مكان ، ويوجب ذلك كون الـمكان أكبر منه ، ويلزم منه الحركة ، وكل ذلك محال على الحق عزَّ وجلَّ', '« Tu trouves des gens qui entendent les nouvelles concernant les attributs [de Allâh] et qui leur donnent le sens physique, comme certains qui déclarent que Allâh descend au ciel ou qu’Il se déplace. Ceci est une mauvaise compréhension car celui qui se déplace se déplace d’un endroit à un autre et cela implique que l’espace soit plus grand que lui, cela implique aussi le mouvement alors que tout cela est impossible au sujet de Allâh (Al-Haqq) ‘azza wa jall ».', '', 'Dans son livre « Saydou l-Khâtir », l’Imâm Ibn Al-Jawzi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste des chaînes de transmission du hadîth), le Moufassir (exégète) ‘Abdou r-Rahmân Ibnou ‘Ali connu sous le nom de Ibnou l-Jawzi le Hanbalite, est né en 508 à Baghdâd et il est décédé en 597 de l’Hégire à Baghdâd (رحمه الله) c’est-à-dire il y a 835 ans.
– Ibnou l-Jawzi fait partie des piliers des hanbalites. Il a écrit un livre appelé « Daf’ou Choubahi t-Tachbîh » pour répliquer à ceux qui ont attribué le corps à Allâh tout en se réclamant de l’école de l’Imâm Ahmad alors que l’Imâm Ahmad est innocent de ce qu’ils ont pris pour croyance. L’Imâm Ibnou l-Jawzi est à lui seul une armée contre les moujassimah qui se réclament hanbalites.
– Ici, il parle des moujassimah (anthropomorphistes) et des mouchabbihah (assimilationnistes), qui par leurs mauvaises compréhensions des fondements de la religion, pensent que Allâh descend au ciel et qu’Il se déplace. A notre époque nous rencontrons toujours ce genre de personnes, principalement au sein de la mouvance sectaire wahhabite.
– L’Imâm Ibnou-l Jawzi dit clairement que le déplacement et le mouvement sont impossibles au sujet de Allâh. En effet, le mouvement et le déplacement sont des caractéristiques propres aux créatures.
– Le Messager de Allâh (صلى الله عليه وسلم) a dit :', 'allah, an-nouzoul, an-nuzul, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فترى أقواماً يسمعون أخبار الصفات فيحملونَها على ما يقتضيه الحس ، كقول قائلهم : ينـزل بذاته إلى السماء ويتنقل ، وهذا فهم ردىء ، لأن الـمتنقـل يكون من مكان إلى مكان ، ويوجب ذلك كون الـمكان أكبر منه ، ويلزم منه الحركة ، وكل ذلك محال على الحق عزَّ وجلَّ');

-- source: https://islamsunnite.net/limam-ibn-al-jawzi-parle-du-hadith-an-nouzoul/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm Ibn Al-Jawzi parle du hadîth du nouzoûl et de la mauvaise compréhension des égarés', 'Ibn Al-Jawzi', 'ينـزل ربنا إلى سماء الدنيا', '', '', '[-yanzilou Rabbounâ ilâ samâ-i d-dounyâ-] mais ce hadîth ne signifie absolument pas que Allâh se déplacerait d’un endroit vers un autre, comme l’ont compris certains égarés.
– Les savants de l’Islâm, qu’ils soient du Salaf ou du Khalaf, sont unanimes a confirmer l’attribut du nouzoûl au sujet de Allâh, tout en exemptant Allâh du comment (kayf), c’est-à-dire des caractéristiques des corps comme le mouvement, le déplacement et la descente de Son Être. Nous pouvons citer parmi eux :
L’Imâm Al-Mâtourîdi [ voir : ici ]
Le Hâfidh Ibn Hibbân [ voir : ici ]
L’Imâm Al-Khattâbi
L’Imâm Al-Halîmi [ voir : ici ]
L’Imâm Ibn Battâl
L’Imâm Al-Bâqillâni [ voir : ici ]
L’Imâm Al-Bayhaqi [ voir : ici ]
L’Imâm Al-Isfarâyîni [ voir : ici ]
L’Imâm Ach-Chirâzi [ voir : ici ]
L’Imâm Al-Jouwayni
L’Imâm Al-Ghazâli [ voir : ici ]
Le Qâdî Ibn Rouchd Al-Jadd [ voir : ici ]
L’Imâm An-Naçafi (m.508 H.)
L’Imâm Ibn Al-Jawzi [ voir : ici ] et [ voir : ici ]
L’Imâm Al-Qourtoubi : [ voir : ici ] et [ voir : ici ]
L’Imâm An-Nawawi [ voir : ici ] et [ voir : ici ]
L’Imâm Al-Baydâwi [ voir : ici ] et [ voir : ici ]
Le Chaykh Mouhammad At-Tîbi
Le Loughawi Ibn Mandhoûr [ voir : ici ]
Le Qâdî Ibn Jamâ’ah [ voir : ici ]
Le Chaykh ‘Abdou l-Lâh Al-Yamani
L’Imâm Tâjou d-Dîn As-Soubki
L’Imâm Taqiyyou d-Dîn Al-Hisni [ voir :ici ]
L’Imâm Ibn Hajar Al-‘Asqalâni qui mentionne l’unanimité du Salaf et du Khalaf [ voir : ici ] et [ voir : ici ]
L’Imâm Al-Qastallâni
La Chaykh Moullâ ‘Ali Al-Qâri
L’Imâm Az-Zourqâni [ voir : ici ]
Le Chaykh Ahmad Ridâ [ voir : ici ]
Le Chaykh Mahmoud As-Soubki, qui mentionne l’unanimité des savants du Salaf et du Khalaf [ voir : ici ] et [ voir : ici ]
Le Chaykh Al-‘Azzâmi qui mentionne l’unanimité du Salaf et du Khalaf [ voir : ici ]
Le Hâfidh ‘Abdou l-Lâh Al-Ghoumâri
Le Chaykh Al-Harari [ voir : ici ]
et beaucoup d’autres…
– Certains savants ont mentionné de manière explicite dans leurs ouvrages que le fait d’attribuer à Allâh le mouvement ou le déplacement est de la mécréance. Parmi eux :
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ voir : ici ]
L’Imâm Taqiyyou d-Dîn Al-Hisni [ voir : ici ]
L’Imâm Al-Kawthari qui mentionne l’unanimité [ voir : ici ] et [ voir : ici ]
– De nombreux savants ont fait une interprétation détaillée de ce hadîth en expliquant que c’est l’ordre de Allâh, ou un ange, ou encore Sa miséricorde qui descend. Parmi ceux qui ont soutenue cela, il y a :
L’Imâm Mâlik, comme le mentionne An-Nawawi qui présente cette interprétation comme l’une des voies valables chez les gens de la sounnah [ voir : ici ], Az-Zourqâni [ voir : ici ], Ibn Battâl, Al-Qâdî ‘Iyâd, Al-Qastallâni, Al-Yamani, Moullâ ‘Ali Al-Qâri ainsi que Ibn ‘Abdi l-Barr et autres.
L’Imâm Ibn Foûrak
Le Qâdî Aboû Bakr Ibn ‘Arabi
Le Qâdî ‘Iyâd
L’Imâm Al-Moutawalli [ voir : ici ]
L’Imâm Al-Jouwayni
L’Imâm Al-Qourtoubi
Le Loughawi Ibn Mandhoûr [ voir : ici ]
L’Imâm Badrou d-Dîn Al-‘Ayni
L’Imâm As-Souyoûti
L’Imâm Al-Qastallâni
Le Chaykh Ibn Hajar Al-Haytami [ voir : ici ]
Le Chaykh Mouhammad Al-Khatîb Al-Misri
Le Chaykh Moullâ ‘Ali Al-Qâri
Le Chaykh Mahmoûd As-Soubki [ voir : ici ]
Le Hâfidh ‘Abdou l-Lâh Al-Ghoumâri
et beaucoup d’autres…
– Ainsi il ne convient pas de prêter attention aux propos des wahhabites qui accusent les gens de la Sounnah qui ont interprété ce hadîth d’être des mou’attil (négateur/athée). Ces mêmes wahhabites qui prétendent qu’il s’agit d’une descente véritable de Allâh tout comme l’a prétendu Ibn Outhaymîn (wahhabite) qui a dit : « Et il s’agit d’une descente véritable qui convient à Allâh. Et les négateurs (ahlou t-Ta’tîl) l’ont interprété par la descente de Son ordre, de Sa miséricorde ou d’un de parmi Ses anges » [voir l’article à ce sujet : ici] . Ainsi, il est venu avec une croyance totalement opposée aux savants mentionnés ci-dessus.
– Cette croyance que défendent les wahhabites est propre aux mouchabbihah (anthropomorphistes) comme l’a signalé l’Imâm Ibn Hajar dans son commentaire du Sahîh de l’Imâm Al-Boukhâri, lorsqu’il a dit : “ Les gens ont divergé sur le sens de an-nouzoûl : certains l’ont pris selon son sens apparent et son sens propre (haqîqi), et ce sont les anthropomorphistes (al-Mouchabbihah), et Allâh est exempt de ce qu’ils disent. ” [ retrouvez l’article : ici ], et cette croyance que prône Ibn ‘Outhaymîn est celle que prônait l’ancêtre des moujassimah, Aboû ‘Abdi l-Lâh Ibn Karrâm qui prétendait que ce qu’il adore est concerné par le changement de lieu, le déplacement et la descente [ voir à ce sujet le livre de l’Imâm Ach-Charastâni : ici ].
– Retrouvez d’autres paroles de savants concernant le hadîth du nouzoûl : ici .', 'allah, an-nouzoul, an-nuzul, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ينـزل ربنا إلى سماء الدنيا');

-- source: https://islamsunnite.net/faqih-said-ibn-al-mousayyib-al-bayhaqi-hirz-qouran/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le port du hirz est permis', 'Sa''id Ibn Al-Mousayyib', 'أَخْبَرَنَا أَبُو زَكَرِيَّا بْنُ أَبِي إِسْحَاقَ، وَأَبُو بَكْرِ بْنُ الْحَسَنِ قَالَا: ثنا أَبُو الْعَبَّاسِ الْأَصَمُّ، ثنا بَحْرُ بْنُ نَصْرٍ، ثنا ابْنُ وَهْبٍ، أَخْبَرَنِي نَافِعُ بْنُ يَزِيدَ، أَنَّهُ سَأَلَ يَحْيَى بْنَ سَعِيدٍ عَنِ الرُّقَى وَتَعْلِيقِ الْكُتُبِ، فَقَالَ: كَانَ سَعِيدُ بْنُ الْمُسَيِّبِ يَأْمُرُ بِتَعْلِيقِ الْقُرْآنِ وَقَالَ: لَا بَأْسَ بِهِ. قَالَ الشَّيْخُ رَحِمَهُ اللهُ: وَهَذَا كُلُّهُ يَرْجِعُ إِلَى مَا قُلْنَا مِنْ أَنَّهُ إِنْ رَقَى بِمَا لَا يُعْرَفُ أَوْ عَلَى مَا كَانَ مِنْ أَهْلِ الْجَاهِلِيَّةِ مِنْ إِضَافَةِ الْعَافِيَةِ إِلَى الرُّقَى لَمْ يَجُزْ , وَإِنْ رَقَى بِكِتَابِ اللهِ أَوْ بِمَا يُعْرَفُ مِنْ ذِكْرِ اللهِ مُتَبَرِّكًا بِهِ وَهُوَ يَرَى نُزُولَ الشِّفَاءِ مِنَ اللهِ تَعَالَى فَلَا بَأْسَ بِهِ، وَبِاللهِ التَّوْفِيقُ.', '« (…) Nâfi’ Ibnou Yazîd m’a rapporté qu’il a interrogé Yahyâ Ibnou Sa’îd sur le jugement des Rouqâ et du fait de porter sur soi des écritures, et qu’il lui a répondu : Sa’îd Ibnou l-Mousayyib incitait à porter des écrits Coraniques et il disait : « Il n’y a pas de mal en cela ! »', '', 'Dans son recueil de Hadîth « As-Sounan Al-Koubrâ », le Hâfidh Al-Bayhaqi rapporte :
Le Chaykh (Al-Bayhaqi), que Allâh lui fasse miséricorde, a dit : « Et tout cela revient à ce que nous disons, à savoir que si la personne porte des écrits dont on ignore la signification ou qui provient des gens de la jâhiliyyah [période avant la venue du Prophète Mouhammad] qui attribuaient aux rouqâ le pouvoir de les garder en bonne santé par elles-mêmes [sans la Volonté de Allâh], cela est interdit. Mais si la personne porte les rouqâ, qui comportent des versets du Qour-ân ou ce qui est connu comme étant du dhikr (évocation) de Allâh, dans le but de profiter de leur barakah, tout en sachant que la guérison ne provient que de Allâh, alors il n’y a pas de mal en cela, et c’est certes Allâh qui accorde la réussite. »
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence), le Ousoûli (spécialiste des fondements) Aboû Bakr Ahmad Ibnou l-Houçayn Al-Bayhaqi, est né en 384 et il est décédé en 458 de l’Hégire (رحمه الله), c’est-à-dire il y a presque 1000 ans. Il fait partie des plus grands savants du hadîth, et il est de l’école de jurisprudence Châfi’ite.
Ibnou l-Jawzi a dit à son sujet : « Il n’avait pas d’égal à son époque dans la mémorisation et la grande maîtrise [des sciences], il est l’auteur de bons ouvrages, il maîtrisait aussi bien la science du Hadîth, que la jurisprudence (Fiqh) et les fondements (Ousoûl), et il compte parmi les plus grands compagnons de [l’Imâm] Al-Hâkim Abî ‘Abdi l-Lâh (m.405 H) » [Al-Mountadham]
Ibnou l-Athîr a dit de lui : « Il était un savant dans le Hadîth et dans la jurisprudence (Fiqh) et il est l’auteur de nombreux ouvrages qui démontrent ses nombreux mérites » [Al-Loubâb] et il a dit de lui également : « Il était un Imâm dans le Hadîth et dans la jurisprudence au sein du Madh-hab de l’Imâm Ach-Châfi’i et il est l’auteur à ce sujet de différents ouvrages » [Al-Kâmil]
Le Hâfidh Salâhou d-Dîn Al-‘Alâ-i a dit à propos de lui : « Personne n’est venu après Al-Bayhaqi et Ad-Dâraqoutni qui les égale ou qui se rapproche de leur niveau [dans la science du Hadîth]» . [Al-Wachyou l-Mou’am]
Adh-Dhahabi a dit de lui : « Il est le Hâfidh (spécialiste de la science du Hadîth), l’illustre savant (‘Allâmah), le digne de confiance, le spécialiste de la jurisprudence (Faqîh), Chaykhou l-Islâm » , il disait également à son sujet : « Si l’Imâm Al-Bayhaqi auvait voulu fonder sa propre école (Madh-hab) dans laquelle il réalise son ijtihâd (effort de recherche) il aurait été capable de cela vu l’abondance de sa science, et sa connaissance des divergences» [Siyar A’lâmi n-Noubalâ]
Tâjou d-Dîn As-Soubki a dit à son sujet : « L’Imâm Al-Bayhaqi était l’un des Imâm des musulmans, quelqu’un qui appelait à s’accrocher fermement à la religion, un éminent spécialiste de la jurisprudence (Faqîh), un grand Hâfidh (spécialiste du Hadîth), un spécialiste des fondements (Ousoûli) intelligent, un ascète pieux, un fervent adorateur de Allâh, il se dressait pour soutenir le Madh-hab (c’est-à-dire le Madh-hab de l’Imâm Ach-Châfi’i) dans les fondements et dans les ramifications, il était une montagne de parmi les montagnes de science » [At-Tabaqât]
Ibnou Kathîr a dit à propos de lui : « Il n’avait pas de semblable à son époque dans la maîtrise [des sciences], la mémorisation, le Fiqh (la jurisprudence) et l’écriture [d’ouvrages], Il était un spécialiste de la jurisprudence (Faqîh), un spécialiste du Hadîth (Mouhaddith), un spécialiste des fondements (Ousoûli), il a étudié la science auprès de Al-Hâkim ‘Abdou l-Lâh An-Nayçâboûri , et il étudia également de nombreux sujets auprès d’autres savants, il a composé de nombreux ouvrages utiles qui n’ont pas eu de semblable » [Al-Bidâyah wa n-Nihâyah]
‘Abdou l-Ghaffâr Al-Fâriçi a dit de lui : « L’Imâm, le Hâfidh (spécialiste du Hadîth), Al-Faqîh (spécialiste de la jurisprudence), Al-Ousoûli (spécialiste des fondements), le pieux, le vertueux, celui qui n’avait pas d’équivalent à son époque dans la mémorisation, Il a excellé dans la maîtrise [des sciences] et la mémorisation » [Al-Mountakhab]
Ibnou ‘Abdi l-Hâdi a dit à son sujet : « L’Imâm, le Hâfidh (spécialiste du Hadîth), l’illustre savant, le Chaykh de Khourâçân » [Tabaqât ‘oulamâ-i l-Hadîth]
Ibn Khallikân a dit de lui : « Il était celui qui soutenait le plus la voie de l’Imâm Ach-Châfi’i » [Wafayâtou l-A’yân]
Retrouvez la biographie de l’Imâm Al-Bayhaqi : ici .
– L’Illustre successeur des compagnons (Tâbi’i), le Faqîh (jurisconsulte) Sa’îd Ibnou l-Mousayyib Ibn Hazn Aboû Mouhammad Al-Qouraychi est né en 15 et il est décédé en 94 de l’Hégire (رضي الله عنه), c’est-à-dire il y a plus de 1040 ans. Il est connu comme étant l’un des sept célèbres fouqahâ de Médine, l’un des plus grands savants de son temps, au point que certains l’on surnommé « Faqîhou l-Fouqahâ » c’est-à-dire le juriste des juristes. Il était également le gendre de Aboû Hourayrah (رضي الله عنه). Il rencontra et appris la science de la religion auprès de nombreux compagnons éminents tel que ‘Oumar Ibnou l-Khattâb, ‘Outhmân Ibnou l-‘Affân, ‘Ali Ibn Abî Tâlib, Ibn ‘Abbâs, ‘Abdou l-Lâh Ibn ‘Oumar et beaucoup d’autres. Nombreux sont les gens de science qui ont fait son éloge, tel que l’Imâm Mâlik, l’Imâm Ach-Châfi’i ou encore l’Imâm Ahmad Ibn Hanbal.
– Nous voyons que ces deux grands savants ont confirmé le caractère licite de porter sur soi des écrits comportant du Qour-ân ou du Dhikr de Allâh dans le but d’en rechercher leur barakah (bénédiction).
– Parmi les autres preuves du caractère licite de cela, il y a la parole de Allâh ta’âlâ :', '''oumar ''outhman, ahmad, al-bayhaqi, al-bayhaqiyy'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'أَخْبَرَنَا أَبُو زَكَرِيَّا بْنُ أَبِي إِسْحَاقَ، وَأَبُو بَكْرِ بْنُ الْحَسَنِ قَالَا: ثنا أَبُو الْعَبَّاسِ الْأَصَمُّ، ثنا بَحْرُ بْنُ نَصْرٍ، ثنا ابْنُ وَهْبٍ، أَخْبَرَنِي نَافِعُ بْنُ يَزِيدَ، أَنَّهُ سَأَلَ يَحْيَى بْنَ سَعِيدٍ عَنِ الرُّقَى وَتَعْلِيقِ الْكُتُبِ، فَقَالَ: كَانَ سَعِيدُ بْنُ الْمُسَيِّبِ يَأْمُرُ بِتَعْلِيقِ الْقُرْآنِ وَقَالَ: لَا بَأْسَ بِهِ. قَالَ الشَّيْخُ رَحِمَهُ اللهُ: وَهَذَا كُلُّهُ يَرْجِعُ إِلَى مَا قُلْنَا مِنْ أَنَّهُ إِنْ رَقَى بِمَا لَا يُعْرَفُ أَوْ عَلَى مَا كَانَ مِنْ أَهْلِ الْجَاهِلِيَّةِ مِنْ إِضَافَةِ الْعَافِيَةِ إِلَى الرُّقَى لَمْ يَجُزْ , وَإِنْ رَقَى بِكِتَابِ اللهِ أَوْ بِمَا يُعْرَفُ مِنْ ذِكْرِ اللهِ مُتَبَرِّكًا بِهِ وَهُوَ يَرَى نُزُولَ الشِّفَاءِ مِنَ اللهِ تَعَالَى فَلَا بَأْسَ بِهِ، وَبِاللهِ التَّوْفِيقُ.');

-- source: https://islamsunnite.net/imam-al-qayrawani-qouran-hirz/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le port du Hirz est permis.', 'Qayrawani (Ibn Abi Zayd)', 'ولا بأس بالاكتواء والرقى بكتاب الله وبالكلام الطيب. ولا بأس بالمعاذة تعلق، وفيها القرآن', 'Il n’y a aucun mal dans la pratique de al-iktiwâ et des rouqâ basées sur le Livre de Allâh et l’écriture de la bonne parole. Et il n’y a pas de mal non plus dans le fait de porter sur soi des inscriptions protectrices (ma’âdhah) comportant du Qour-ân', '', 'Dans son célèbre livre Ar-Riçâlah (chapitre de la médication, et de l’évocation des rouqâ), L’Imâm Ibn Abî Zayd Al-Qayrawâni a dit :
Informations utiles :
– L’Imâm Aboû Mouhammad ‘Abdou l-Lâh Ibn Abî Zayd Al-Qayrawâni Al-Mâliki est né en 310 à Qayrawân -Kairouan- (Tunisie) et il est décédé en 386 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1060 ans. Il était surnommé Mâlik As-Saghîr, c’est-à-dire le petit Mâlik. Son ouvrage Ar-Riçâlah est très réputé.
– Ici, il dit qu’il n’y a pas de mal à porter sur soi des versets du Qour-ân, ou l’écriture de bonnes paroles comme du dhikr de Allâh, pour la protection et la bénédiction.
– Parmi les autres preuves du caractère licite de cela, il y a la parole de Allâh ta’âlâ :', 'al qayrawaniyy, al-qayrawani, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ولا بأس بالاكتواء والرقى بكتاب الله وبالكلام الطيب. ولا بأس بالمعاذة تعلق، وفيها القرآن');

-- source: https://islamsunnite.net/retarder-lentree-en-islam-dun-mecreant-est-de-la-mecreance-an-nawawi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Retarder l’entrée en Islâm d’un non-musulman est de la mécréance (An-Nawawi)', 'Les Chafi''ites', 'ولو قال كافر لمسلم : اعرض علي الإسلام ، فقال : حتى أرى ، أو اصبر إلى الغد ، أو طلب عرض الإسلام من واعظ ، فقال : اجلس إلى آخر المجلس ، كفر. وقد حكينا نظيره عن المتولي', '« Si un mécréant demande à un musulman d’être invité à l’Islâm, et que celui-ci lui dit « On verra plus tard », ou « Patiente jusqu’à demain », ou bien si ce mécréant demande à être invité à l’Islâm à quelqu’un en train de faire un discours, et que ce dernier lui répond « Assieds-toi jusqu’à la fin de l’assemblée », il devient mécréant. Et nous avons rapporté ce même jugement de la part de Al-Moutawalli»', '', 'Dans son livre « Rawdatou t-Tâlibîn » dans le chapitre de l’apostasie, l’Imâm An-Nawawi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence) Aboû Zakariyyâ Mouhyi d-Dîn Yahyâ Ibnou Charaf An-Nawawi est un savant de référence. Il est né en 631 et il est décédé en 676 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 750 ans. C’est un savant dans l’école de jurisprudence Chafi’ite. Il a écrit de nombreux ouvrages de référence tels qu’un commentaire du Sahîh Mouslim, le célèbre « Riyâd as-Sâlihîn » (le jardin des vertueux), le recueil de 40 hadîth si connus et beaucoup d’autres.
Tâjou d-Dîn As-Soubki le surnommait « Chaykhou l-Islâm » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « Le Moufti de la Oummah, Chaykhou l-Islâm […] le Hâfidh (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chafi’ite, l’ascète, l’un des étendards (de la religion) » [Târîkhou l-Islâm]. Il a dit également : « Le Chaykh, le modèle (qoudwah) […] le Hâfidh (spécialiste de la science du hadîth), l’ascète, le pieux adorateur, le Faqîh (spécialiste de la jurisprudence), le moujtahid versé dans l’adoration de Son Seigneur, Chaykhou l-Islâm » [Siyar A’lâmi n-Noubalâ]
Ibn Kathîr a dit à son sujet : « Le Chaykh, l’Imâm, l’illustre savant (al-‘Allâmah), le Hâfidh (spécialiste de la science du hadîth) l’honorable Faqîh (spécialiste de la jurisprudence) […] l’un des pieux adorateurs et ascètes» [Tabaqâtou ch-Châfi’iyyah]
– Ici, dans son chapitre au sujet de l’apostasie (ar-riddah), c’est-à-dire des choses qui font sortir de l’Islâm, il cite une règle importante : Le fait de retarder l’entrée en Islâm d’un mécréant, cela est de la mécréance. C’est-à-dire que si une personne retarde l’entrée en Islâm d’un non-musulman qui souhaite devenir musulman, elle sort de l’Islâm.
– Pour cela il cite plusieurs exemples : le fait de dire à cette personne « on verra plus tard » ou « patiente jusqu’à demain » ou même le fait de dire à cette personne d’attendre la fin du discours ; tout cela est de la mécréance.
– De nombreux savants ont dit semblable à l’Imâm An-Nawawi, parmi eux :
L’Imâm Al-Moutawalli ;
Le Chaykh Taqiyyou d-Dîn Al-Hisni ;
Le Chaykh Ibn Hajar Al-Haytami ;
Le Chaykh Zaynou d-Dîn Al-Malîbâri ;
Le Chaykh ‘Abdou l-Bâçit Al-Fakhoûri ;
Le Chaykh ‘Abdou r-Rahmân Al-Hoût Al-Bayroûti ;
Le Mouhaddith ‘Abdou l-Lâh Al-Harari ;
Et de nombreux autres.
– Ici, on parle d’une personne qui souhaite devenir musulmane, mais la seule chose qui lui manque c’est de savoir comment faire. On ne parle pas de quelqu’un qui souhaite uniquement obtenir des informations sur l’Islâm.
– À notre époque, nombreux sont les gens qui retardent l’entrée en Islâm de non-musulmans, en leur disant par exemple « tu es sûr ?» ou « réfléchi bien ! » ou « va prendre une douche » ou « va voir un Imâm » ou « va chercher des témoins » ou « apprend l’arabe avant » ou « va te circoncire » ou « pourquoi tu veux devenir musulman ? » ou « choisis un prénom musulman avant » etc.
– Sachez donc qu’il n’est pas nécessaire d’aller voir un Imâm, ou de réunir des témoins, ou de changer de prénom, ou d’apprendre l’arabe, ou de se circoncire, ou de se doucher pour que l’entrée en Islâm soit effective.
– La seule et unique condition pour entrer en Islâm, c’est de prononcer les deux témoignages en y ayant foi. Donc si on rencontre ce genre de personne, il est de notre devoir, de lui demander immédiatement de dire : « Je témoigne qu’il n’est de dieu que Dieu et je témoigne que Mou h ammad est le Messager de Dieu » ou tout autres expressions ayant la même signification.
– Le Chaykh d’Al-Azhar de son époque, le Chaykh Ibrâhîm Al-Bâjoûri Ach-Châfi’i (m. 1276 H.) a dit : « Ils ont été explicite sur la déclaration de mécréance de celui qui dit à un mécréant qui souhaite devenir musulman : « va faire un ghousl (un bain ou une douche) et ensuite devient musulman » car il aura accepté qu’il reste mécréant durant ce moment » [Dans sa hâchiyah du Charh de Al-Ghazzi]', 'allah, an-nawawi, an-nawawiyy, apostasie'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ولو قال كافر لمسلم : اعرض علي الإسلام ، فقال : حتى أرى ، أو اصبر إلى الغد ، أو طلب عرض الإسلام من واعظ ، فقال : اجلس إلى آخر المجلس ، كفر. وقد حكينا نظيره عن المتولي');

-- source: https://islamsunnite.net/imam-as-sakhawi-fait-eloge-du-mawlid-3-rapporte-par-ibn-zayni-dahlan/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La bonne innovation du Mawlid', 'Sakhawi', 'قال السخاوي : عمل المولد حدث بعد القرون الثلاثة ثم لا زال أهل الإسلام في سائر الأقطار والمدن الكبار يعملون المولد ويتصدقون في لياليه بأنواع الصدقات ويعتنون بقراءة مولده الكريم ويظهر عليهم من بركاته كل فضل عميم', 'As-Sakhâwi a dit : La Commémoration du Mawlid a été instauré après les trois premiers siècles, et les musulmans dans les différentes régions et grandes villes le fêtent et font les festins originaux comportant la bonne joie, ils donnent différentes sortes d’aumônes durant ses nuits et ils s’appliquent à lire le récit de sa Noble Naissance, ainsi tous les Mérites largement répandus rejaillissaient sur eux grâce à ses Bénédictions', '', 'Dans son livre « As-Sîrah an-Nabawiyyah», le Moufti de La Mecque, le Chaykh Ahmad Ibn Zayni Dahlân a consacré un chapitre à la commémoration du Mawlid dans lequel il a dit :
Informations utiles :
– Le Moufti de La Mecque, Le Chaykh Ahmad Ibn Zaynî Dahlân Al-Makki est né en 1231 et il est décédé en 1304 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 130 ans. Il était spécialiste de la Charî’ah, de la grammaire et de l’histoire ainsi que d’autres domaines. Il a apporté sa contribution à de nombreuses sciences. Il était le Moufti des maîtres Châfi’i à la ville Sainte de la Mecque, il était surnommé Chaykhou l-Islâm. Il est l’auteur du livre « Ad-Dourarou s-Saniyyah fî Raddi ‘ala l-Wahhâbiyyah » ainsi que du livre « Al-Foutoûhâtou l-Islâmiyyah » (Les conquêtes islamiques) dans lequel se trouve le fameux chapitre de mise en garde contre la secte wahhabite qu’il a intitulé « Fitnatou l-Wahhâbiyyah » (La discorde des Wahhabites). Consultez sa biographie : ici .
– Dans son livre « As-Sîrah an-Nabawiyyah» il a écrit un chapitre au sujet du Mawlid. Ici il cite le Hâfidh As-Sakhâwi qui fait l’éloge de la commémoration du Mawlid.
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth) Chamsou d-Dîn Mouhammad Ibnou ‘Abdi r-Rahmân As-Sakhâwi est né en 831 au Caire et il est décédé en 902 de l’Hégire à Médine (رحمه الله) c’est-à-dire il y a environ 530 ans. Il était un grand savant reconnu dans la science du hadîth et il était du madhab (école de jurisprudence) Chafi’ite. Il a eu de parmi ses Chaykh l’Imâm Ibnou Hajar Al-‘Asqalâni.
– L’Imam As-Sakhâwi confirme la voie de Ahlou s-Sounnah sur le fait que le Mawlid fait partie des bonnes innovations (bid’ah haçanah), et qu’il y a du mérite et des bénédictions à l’accomplir.
– L’Imâm As-Sakhâwi mentionne cette citation dans son propre ouvrage [ Al-Ajwibatou l-Mardiyyah ] et d’autres savants rapportent également cela de lui comme [ L’Imâm Mouhammad Ibn Yoûçouf as-Sâlihi ach-Châmi ] et [ Le Mouhaddith Al-Harari ]. Cela a également été rapporté par le centre de Fatwâ de l’Université Islamique Al-Azhar .
– En quoi consiste le Mawlid ?
Du fait de rassembler les musulmans dans le bien : ceci est un bien dans la religion.
De récitation du Qour-ân : ceci est un bien dans la religion.
De Dhikr (évocation de Allâh) : ceci est un bien dans la religion.
D’éloge du prophète (صلى الله عليه وسلم) : ceci est un bien dans la religion.
De cours et conférences religieuses : ceci est un bien dans la religion.
Du fait de s’inciter mutuellement à la piété : ceci est un bien dans la religion.
Distribuer des aumônes (nourritures et boissons) : ceci est un bien dans la religion.
D’invocations à l’égard de Allâh : ceci est un bien dans la religion.
– L’Imâm As-Souyoûti a d’ailleurs résumé tout cela en disant : « la commémoration de la naissance (Mawlid) à l’origine consiste en le rassemblement des gens, la récitation de ce qu’il est possible de réciter du Qour-ân, la narration des nouvelles rapportées au sujet du début de l’histoire du Prophète et ce qui est advenu comme signes à sa naissance, à la suite de quoi il leur est présenté de la nourriture qu’ils consomment puis partent sans rien ajouter à cela. Ceci compte parmi les bonnes innovations pour laquelle celui qui la fait sera récompensé, et ce, pour ce que cela comporte comme glorification du degré du Prophète (صلى الله عليه وسلم), et comme manifestation de joie et de réjouissance pour sa noble naissance » [ Housnou l-Maqsid fi ‘Amali l-Mawlid ].
– Le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ]
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ].
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .', '3oulama, ad-dourarou s-saniyyah, ahmad ibn zayni dahlan, al-foutouhatou l-‘islamiyyah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال السخاوي : عمل المولد حدث بعد القرون الثلاثة ثم لا زال أهل الإسلام في سائر الأقطار والمدن الكبار يعملون المولد ويتصدقون في لياليه بأنواع الصدقات ويعتنون بقراءة مولده الكريم ويظهر عليهم من بركاته كل فضل عميم');

-- source: https://islamsunnite.net/loughawi-ibn-mandhour-dit-que-al-qourb-de-allah-nest-pas-par-lendroit/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Loughawi Ibn Mandhoûr dit que la proximité de Allâh n’est pas par la distance et qu’Il n’est pas un corps', 'Ibn Mandhour', '«وفي الحديث : « من تقرب إلي شبرا تقربت إليه ذراعا ». المراد بقرب العبد من الله تعالى القرب بالذكر والعمل الصالح لا قرب الذات والمكان لأن ذلك من صفات الأجسام والله يتعالى عن ذلك ويتقدس »', '« Dans le hadîth [qoudsi] : « man taqarraba ilayya chibran taqarrabtou ilayhi dhirâ’â », ce qui est visé par “al-qourb” (la proximité) de l’esclave vis-à-vis de Allâh ta’âlâ c’est la proximité de l’agrément de Allâh par les évocations et les actes de vertus et il n’est pas visé par cela la proximité [physique] de Allâh Lui-même ni la proximité de l’endroit car ceci fait partie des attributs des corps et Allâh est exempt de cela ».', '', 'Dans son célèbre dictionnaire « Liçânou l-‘Arab», le Loughawi Ibn Mandhoûr a dit :
Informations utiles :
– Le Chaykh, le Loughawi (spécialiste de la langue arabe) Mouhammad Ibn Moukarram Al-Ifrîqi Al-Misri connu sous le nom de Ibn Mandhoûr est né en 630 à Gafsah (Tunisie) et il est décédé en 711 de l’hégire au Caire (Egypte) (رحمه الله), c’est-à-dire il y a environ 730 ans. Son dictionnaire « Liçânou l-‘arab » est un ouvrage de référence dans la langue Arabe.
– Ici, il dit que lorsque l’on attribut « al-qourb » (la proximité) au sujet de Allâh cela signifie la proximité de Son agrément, cela ne signifie pas la proximité par l’endroit, car Allâh n’est pas un corps et il n’est pas concerné par les endroits, les directions et les distances.
– Ainsi concernant le hadîth Qoudsi :', 'agrément, allah, aqida, aqrab'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '«وفي الحديث : « من تقرب إلي شبرا تقربت إليه ذراعا ». المراد بقرب العبد من الله تعالى القرب بالذكر والعمل الصالح لا قرب الذات والمكان لأن ذلك من صفات الأجسام والله يتعالى عن ذلك ويتقدس »');

-- source: https://islamsunnite.net/loughawi-ibn-mandhour-dit-que-al-qourb-de-allah-nest-pas-par-lendroit/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Loughawi Ibn Mandhoûr dit que la proximité de Allâh n’est pas par la distance et qu’Il n’est pas un corps', 'Ibn Mandhour', 'من تقرب إلي شبرا تقربت إليه ذراعا', 'man taqarraba ilayya chibran taqarrabtou ilayhi dhirâ’â', '', 'Il n’est pas permis de croire que si l’esclave se rapprocherait physiquement de Allâh, alors Allâh se rapprocherait physiquement de cet esclave. En effet, cette compréhension est totalement opposée à la croyance musulmane.
– La proximité et l’éloignement par la distance est impossible au sujet de Allâh. Celui qui est au sommet de la montagne ou même les anges qui portent le Trône, et celui qui est tout en bas de la vallée sont équivalents par rapport à Allâh. Car Allâh ta’âlâ est sans endroit, Il exempt de la proximité et de l’éloignement physique, c’est-à-dire la proximité et l’éloignement par la distance.
– C’est pour cela que l’Imâm Al-Jouwayni (رحمه الله) a dit : « Certes [le prophète] Mouhammad (صلى الله عليه وسلم), lors de la nuit de al-Isrâ (c’est-à-dire lors du voyage nocturne et de l’ascension), n’a pas été plus proche [physiquement] de Allâh ‘azza wa jall que [le prophète] Yoûnous Ibnou Matâ lorsqu’il était dans le ventre de la baleine » . [ Retrouvez l’article : ici ]
– Nombreux sont les savants qui ont confirmé cela, parmi eux :
L’Imâm Aboû Hanîfah [ voir : ici ]
L’Imâm Aboû Mansoûr Al-Mâtourîdi.
Le Chaykh Loughawi Ar-Râghib Al-Asbahâni.
L’Imâm Fakhrou d-Dîn Ar-Râzi.
Le Chaykh Ibnou l-Athîr qui a tenu avec exactitude les mêmes propos que l’Imâm Ibn Mandhoûr.
L’Imâm Al-Qourtoubi lorsqu’il a expliqué le hadîth « أقرب ما يكون العبد من ربِّه وهو ساجد» [ voir : ici ]
Le Chaykh Loughawi Fayroûzabâdi.
L’Imâm As-Souyoûti.
L’Imâm As-Sindi Al-Hanafi.
Le Chaykh Ibnou ‘Âbidîn Al-Hanafi.
Le Chaykh Al-Kawthari qui a dit : « Al-qourb (le rapprochement) envers Allâh n’est pas en terme de distance, et al-bou’d (l’éloignement) envers Lui n’est pas en terme de distance» [Maqalâtou l-Kawthari] .
Le Chaykh Al-‘Azzâmi Al-Mâliki qui mentionne l’unanimité [ voir : ici ]
Et beaucoup d’autres.', 'agrément, allah, aqida, aqrab'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'من تقرب إلي شبرا تقربت إليه ذراعا');

-- source: https://islamsunnite.net/imam-al-khattabi-confirme-que-allah-nest-pas-une-lumiere-bayhaqi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm Al-Khattâbi confirme que Allâh n’est pas une lumière [rapporté par Al-Bayhaqi]', 'Les Chafi''ites', 'قَالَ أَبُو سُلَيْمَانَ فِيمَا أُخْبِرْتُ عَنْهُ : وَلا يَجُوزُ أَنْ يُتَوَهَّمَ أَنَّ اللَّهَ سُبْحَانَهُ وَتَعَالَى نُورٌ مِنَ الأَنْوَارِ ، فَإِنَّ النُّورَ تُضَادُّهُ الظُّلْمَةُ وَتُعَاقِبُهُ فَتُزِيلُهُ , وَتَعَالَى اللَّهُ أَنْ يَكُونَ لَهُ ضِدٌّ أَوْ نِدٌّ', 'Aboû Soulaymân [Al-Khattâbi] a dit, selon ce que l’on m’a rapporté de lui : ‘‘Et il n’est pas permis de s’imaginer que Allâh soubhânahou wa ta’âlâ, serait une lumière parmi les lumières. Car celle-ci a pour opposée l’obscurité qui la remplace et l’élimine. Or, Allâh est exempt d’avoir un rival et ou un égal', '', 'Dans son livre « Al-Asmâ-ou wa s-Sifât » (tome 1 page 144 de cette édition), lors de l’explication du Nom de Allâh « An-Noûr », l’Imâm Al-Bayhaqi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence), le Ousoûli (spécialiste des fondements) Aboû Bakr Ahmad Ibnou l-Houçayn Al-Bayhaqi, est né en 384 et il est décédé en 458 de l’Hégire (رحمه الله), c’est-à-dire il y a presque 1000 ans. Il fait partie des plus grands savants du hadîth, et il est de l’école de jurisprudence Châfi’ite.
Ibnou l-Jawzi a dit à son sujet : « Il n’avait pas d’égal à son époque dans la mémorisation et la grande maîtrise [des sciences], il est l’auteur de bons ouvrages, il maîtrisait aussi bien la science du Hadîth, que la jurisprudence (Fiqh) et les fondements (Ousoûl), et il compte parmi les plus grands compagnons de [l’Imâm] Al-Hâkim Abî ‘Abdi l-Lâh (m.405 H) » [Al-Mountadham]
Ibnou l-Athîr a dit de lui : « Il était un savant dans le Hadîth et dans la jurisprudence (Fiqh) et il est l’auteur de nombreux ouvrages qui démontrent ses nombreux mérites » [Al-Loubâb] et il a dit de lui également : « Il était un Imâm dans le Hadîth et dans la jurisprudence au sein du Madh-hab de l’Imâm Ach-Châfi’i et il est l’auteur à ce sujet de différents ouvrages » [Al-Kâmil]
Le Hâfidh Salâhou d-Dîn Al-‘Alâ-i a dit à propos de lui : « Personne n’est venu après Al-Bayhaqi et Ad-Dâraqoutni qui les égale ou qui se rapproche de leur niveau [dans la science du Hadîth]» . [Al-Wachyou l-Mou’am]
Adh-Dhahabi a dit de lui : « Il est le Hâfidh (spécialiste de la science du Hadîth), l’illustre savant (‘Allâmah), le digne de confiance, le spécialiste de la jurisprudence (Faqîh), Chaykhou l-Islâm » , il disait également à son sujet : « Si l’Imâm Al-Bayhaqi auvait voulu fonder sa propre école (Madh-hab) dans laquelle il réalise son ijtihâd (effort de recherche) il aurait été capable de cela vu l’abondance de sa science, et sa connaissance des divergences» [Siyar A’lâmi n-Noubalâ]
Tâjou d-Dîn As-Soubki a dit à son sujet : « L’Imâm Al-Bayhaqi était l’un des Imâm des musulmans, quelqu’un qui appelait à s’accrocher fermement à la religion, un éminent spécialiste de la jurisprudence (Faqîh), un grand Hâfidh (spécialiste du Hadîth), un spécialiste des fondements (Ousoûli) intelligent, un ascète pieux, un fervent adorateur de Allâh, il se dressait pour soutenir le Madh-hab (c’est-à-dire le Madh-hab de l’Imâm Ach-Châfi’i) dans les fondements et dans les ramifications, il était une montagne de parmi les montagnes de science » [At-Tabaqât]
Ibnou Kathîr a dit à propos de lui : « Il n’avait pas de semblable à son époque dans la maîtrise [des sciences], la mémorisation, le Fiqh (la jurisprudence) et l’écriture [d’ouvrages], Il était un spécialiste de la jurisprudence (Faqîh), un spécialiste du Hadîth (Mouhaddith), un spécialiste des fondements (Ousoûli), il a étudié la science auprès de Al-Hâkim ‘Abdou l-Lâh An-Nayçâboûri , et il étudia également de nombreux sujets auprès d’autres savants, il a composé de nombreux ouvrages utiles qui n’ont pas eu de semblable » [Al-Bidâyah wa n-Nihâyah]
‘Abdou l-Ghaffâr Al-Fâriçi a dit de lui : « L’Imâm, le Hâfidh (spécialiste du Hadîth), Al-Faqîh (spécialiste de la jurisprudence), Al-Ousoûli (spécialiste des fondements), le pieux, le vertueux, celui qui n’avait pas d’équivalent à son époque dans la mémorisation, Il a excellé dans la maîtrise [des sciences] et la mémorisation » [Al-Mountakhab]
Ibnou ‘Abdi l-Hâdi a dit à son sujet : « L’Imâm, le Hâfidh (spécialiste du Hadîth), l’illustre savant, le Chaykh de Khourâçân » [Tabaqât ‘oulamâ-i l-Hadîth]
Ibn Khallikân a dit de lui : « Il était celui qui soutenait le plus la voie de l’Imâm Ach-Châfi’i » [Wafayâtou l-A’yân]
Retrouvez la biographie de l’Imâm Al-Bayhaqi : ici .
– L’Imâm, l’illustre savant, le Faqîh (le spécialiste de la jurisprudence), le Hâfidh (spécialiste de la science du hadîth), le Loughawi (spécialiste de la langue Arabe) Abou Soulaymân Al-Khattâbi est né en 319 à Boust (dans l’actuel Afghanistan) et il est décédé en 388 de l’hégire (رحمه الله) à Boust également, c’est-à-dire il y a plus de 1040 ans. Il fait parti des savants qui avaient le plus de science dans les sujets du hadîth. Il est de l’école de jurisprudence Chafi’ite. Parmi les savants qui ont rapporté le hadîth de lui : le Hâfidh Al-Hâkim, l’Imâm Aboû Hâmid Al-Isfarâyîni et autres qu’eux. L’Imâm al-Bayhaqi le cite énormément dans son livre « Al-Asmâ-ou wa s-Sifât ».
As-Souyoûti a dit à son sujet : « L’Imâm, l’illustre savant (al-‘Allâmah) bénéfique, le Mouhaddith (spécialiste de la science du hadîth) voyageur […] il était digne de confiance, et confirmé dans la connaissance de la science » [Tabaqâtou l-Houffâdh]
Tâjou d-Dîn As-Soubki a dit de lui : « Il etait un Imâm dans le Fiqh (jurisprudence), dans le hadîth, et dans la langue Arabe » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « L’illustre savant (al-‘Allâmah) le Hâfidh (spécialiste de la science du hadîth), le Loughawi (spécialiste de la langue Arabe) » [Siyar A’lâmi n-Noubalâ], Il a dit également : « Il était un illustre savant (‘Allâmah) reconnu » [Al-‘Ibr]
Ibn Khallikân a dit à son sujet : « Il était un Faqîh (spécialiste de la jurisprudence), lettré (adîb), Mouhaddith (spécialiste de la science du hadîth), auteur d’ouvrages sans précédents» [Wafayâtou l-A’yân]
Fayroûz Âbâdi a dit de lui : « Le Mouhaddith (spécialiste de la science du hadith), le Loughawi (spécialiste de la langue Arabe), le vérificateur scrupuleux, de parmi l’élite des Imâm » [Al-Boulaghatou fî Tarâjimi A-immah an-Nahwi wa l-Loughah]
– Ici, l’Imâm Al-Khattâbi confirme que Allâh n’est pas une lumière; en effet le Nom de Allâh « An-Noûr » signifie que Allâh est « Al-Hâdî » c’est-à-dire Celui Qui guide. Il ne faut pas comprendre de ce Nom, que Allâh serait une lumière qui est le contraire de l’obscurité car Il est Celui Qui crée la lumière.
– De nombreux savants ont tenu des propos similaire. Parmi eux :
Le compagnon Ibnou l-‘Abbâs [ voir : ici ],
Le Loughâwi Aboû Mansoûr Al-Azhari [ voir : ici ]
L’Imâm Al-Halîmi [ voir :ici ]
L’Imâm Al-Bayhaqi qui a dit : « An-Noûr : Il est Celui Qui guide (Al-Hâdi), et il a été dit : Celui Qui crée la lumière (Al-Mounawwir)» [Al-I’tiqâd]
L’Imâm Al-Jouwayni [ voir : ici ]
L’Imâm Ibnou l-Athîr [ voir : ici ]
Le Loughâwi Ibnou Mandhoûr [ voir : ici ]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Les mouchabbihah (assimilationnistes) ont dit : « Il est permis de dire que Allâh ta’âlâ est une lumière qui scintille » et Ahlou s-Sounnah wa l-Jamâ’ah ont dit : ceci n’est pas permis ! Car Allâh est Le Créateur de la lumière, et Il est Celui qui fait briller la lumière, et la lumière a une couleur, et si on dit qu’Il aurait une couleur cela impliquerait le tachbîh (la ressemblance avec les créatures) et Allâh ta’âlâ est exempt de la ressemblance avec les créatures. Et Ils (les mouchabbihah) ont argumenté avec la parole de Allâh ta’âlâ {الله نور السماوات والأرض} [qui a pour sens : ] « Allâh est noûr des cieux et de la terre » [et ils disent : ] Il s’est nommé lui-même « noûr ». Alors nous leur disons : Ibn ‘Abbâs (رضي الله عنهما) a dit : cela signifie Celui Qui illumine les cieux et la terre. Et d’autres ont dit : cela signifie Celui Qui guide les gens des cieux et de la terre. » [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {اللَّهُ نُورُ السَّمَاوَاتِ وَالْأَرْضِ} (Allâhou Noûrou s-samâwâti wa l-ard) : c’est-à-dire qu’Il est Celui qui a la lumière des cieux et de la terre, et ces deux lumières sont le soleil et la lune, le sens est : Il est Celui qui guide ceux qui y sont (c’est-à-dire dans les cieux et sur terre) par sa lumière » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
Le Mouhaddith Al-Harari qui a dit : « Sa parole ta’âlâ : [اللهُ نُورُ السَّمَوَاتِ وَالأَرْض] (Allâhou noûrou s-samâwâti wa l-ard) signifie que Allâh ta’âlâ est Celui Qui guide les gens des cieux et de la terre vers la lumière de la foi, rapporté par Al-Bayhaqi de ‘Abdou l-Lâh Ibnou l-‘Abbâs, que Allâh les agrée tous deux. Allâh ta’âlâ n’est pas “noûr” dans le sens de « lumière » » [As-Sirâtou l-Moustaqîm]
Et beaucoup d’autres.
– Allâh ta’âlâ dit dans Soûrat Al-An’âm : { وَجَعَلَ الظُّلُمَاتِ وَالنُّورَ } [ce qui a pour sens] : « Et Il (Allâh) créa les obscurités et la lumière », Dès lors, comment serait-il possible qu’Il soit une lumière comme Ses créatures ?!
– Le fait de croire que Allâh serait une lumière (contraire de l’obscurité) est une croyance contraire à l’Islâm, et cette croyance fait sortir de l’islâm. [ voir à ce sujet la citation de l’Imâm An-Nâboulouçi : ici ].
– Le Chaykh, le Faqîh Aboû Chakoûr As-Sâlimi Al-Hanafi (m.~460 H.) a dit au sujet des Mouchabbihah (ceux qui ont pour croyance que Allâh ressemble aux créatures) : « Parmi eux certains disent que « Allâh ta’âlâ est une lumière qui scintille » et cela est de la mécréance car il y a le reniement d’un texte et il s’agit de la parole de Allâh ta’âlâ [qui a pour sens : ] {Rien n’est tel que Lui} » [Dans son livre At-Tamhîd fî Bayâni t-Tawhîd]
– Les savants ont dit que les corps sont de deux sortes : les corps palpables (que l’on peux toucher) et les corps impalpables (que l’on ne peux pas toucher). La lumière est un corps impalpable et Allâh n’est ni un corps palpable ni un corps impalpable. Les savants ont été unanimes sur le fait qu’attribuer le corps à Allâh est de la mécréance. [ Retrouvez des citations à ce sujet : ici ]
– Retrouvez d’autres paroles de savants ayant mentionné que Allâh n’est pas une lumière : ici .', 'ahlou s-sounnah, al-hadi, allah, an-noor'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قَالَ أَبُو سُلَيْمَانَ فِيمَا أُخْبِرْتُ عَنْهُ : وَلا يَجُوزُ أَنْ يُتَوَهَّمَ أَنَّ اللَّهَ سُبْحَانَهُ وَتَعَالَى نُورٌ مِنَ الأَنْوَارِ ، فَإِنَّ النُّورَ تُضَادُّهُ الظُّلْمَةُ وَتُعَاقِبُهُ فَتُزِيلُهُ , وَتَعَالَى اللَّهُ أَنْ يَكُونَ لَهُ ضِدٌّ أَوْ نِدٌّ');

-- source: https://islamsunnite.net/al-qastallani-eloge-du-mawlid/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Mawlid est autorisé.', 'Qastallani', 'الاحتفال بالمولد : و لا زال أهل الإسلام يحتفلون بشهر مولده ـ عليه السَّلام ـ ، ويعملون الولائم ويتصدقون في لياليه بأنواع الصدقات،ويظهرون السرور، ويزيدون في المبرات ويعتنون بقراءة مولده الكريم. ويظهر عليهم من بركاته كل فضل عميم', 'La commémoration du Mawlid : Les gens de l’Islâm (les musulmans) ne cessent de commémorer durant le mois de sa naissance (‘alayhi s-salâm). Et ils font des repas, des aumônes de différentes sortes durant ces nuits, ils manifestent leur joie et ils rajoutent en acte de bien et s’attachent au récit de sa naissance honorée, et la bénédiction apparaît sur eux.', '', 'Dans son livre « Al-Mawâhibou l-Ladouniyyah » l’Imâm Al-Qastallâni a dit :
Informations utiles :
– L’Imâm, le Mouhaddith (transmetteur du Hadîth) Abou l-’Abbâs Chihâbou d-Dîn Ahmad Ibn Mouhammad Al-Qastallâni Al-Misri Ach-Châfi’i est né en 851 et il est décédé en 923 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 500 ans. Il est très connu pour son ouvrage « Irchâdou s-Sârî » qui est un commentaire du sahîh Al-Boukhâri.
– Ici, il dit que les musulmans sont très attachés au Mawlid et que le fait de le commémorer apporte des bénédictions.
– En quoi consiste le Mawlid ?
Du fait de rassembler les musulmans dans le bien : ceci est un bien dans la religion.
De récitation du Qour-ân : ceci est un bien dans la religion.
De Dhikr (évocation de Allâh) : ceci est un bien dans la religion.
D’éloge du prophète (صلى الله عليه وسلم) : ceci est un bien dans la religion.
De cours et conférences religieuses : ceci est un bien dans la religion.
Du fait de s’inciter mutuellement à la piété : ceci est un bien dans la religion.
Distribuer des aumônes (nourritures et boissons) : ceci est un bien dans la religion.
D’invocations à l’égard de Allâh : ceci est un bien dans la religion.
– L’Imâm As-Souyoûti a d’ailleurs résumé tout cela en disant : « la commémoration de la naissance (Mawlid) à l’origine consiste en le rassemblement des gens, la récitation de ce qu’il est possible de réciter du Qour-ân, la narration des nouvelles rapportées au sujet du début de l’histoire du Prophète et ce qui est advenu comme signes à sa naissance, à la suite de quoi il leur est présenté de la nourriture qu’ils consomment puis partent sans rien ajouter à cela. Ceci compte parmi les bonnes innovations pour laquelle celui qui la fait sera récompensé, et ce, pour ce que cela comporte comme glorification du degré du Prophète (صلى الله عليه وسلم), et comme manifestation de joie et de réjouissance pour sa noble naissance » [ Housnou l-Maqsid fî ‘Amali l-Mawlid ].
– Ainsi le Mawlid compte de parmi les bonnes innovations, et le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ] .
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ]
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .
– Retrouvez de nombreuses paroles de savants concernant le Mawlid : ici .', '3oulama, al-mawahibou l-ladouniyyah, al-muwahib al-ladunniyyah bi al-minah al-muhammadiyya, al-qastalani'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'الاحتفال بالمولد : و لا زال أهل الإسلام يحتفلون بشهر مولده ـ عليه السَّلام ـ ، ويعملون الولائم ويتصدقون في لياليه بأنواع الصدقات،ويظهرون السرور، ويزيدون في المبرات ويعتنون بقراءة مولده الكريم. ويظهر عليهم من بركاته كل فضل عميم');

-- source: https://islamsunnite.net/le-chaykh-al-harari-confirme-quil-est-permis-de-faire-le-tabarrouk-par-les-traces-physiques-du-prophete/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Chaykh Al-Harari confirme qu’il est permis de faire le tabarrouk par les traces physiques du Prophète', 'Harari', 'اعلم أن الصحابة رضوان الله عليهم كانوا يتبركون بآثار النبي صلى الله عليه وسلم في حياته وبعد مماته ولا زال المسلمون بعدهم إلى يومنا هذا على ذلك وجواز هذا الأمر يعرف من فعل النبي صلى الله عليه وسلم وذلك أنه صلى الله عليه وسلم قسم شعره حين حلق في حجة الوداع و أظفاره', 'Sachez que les compagnons, que Allâh les agrée, recherchaient les bénédictions par les traces physiques du Prophète (صلى الله عليه وسلم) au cours de sa vie et après sa mort. Les musulmans n’ont cessé de suivre cette voie jusqu’à nos jours. On a su la permission de cette pratique à partir des actes du Prophète (صلى الله عليه وسلم) puisqu’il a partagé (صلى الله عليه وسلم) ses cheveux lorsqu’il a fait raser sa tête lors du pèlerinage de l’adieu, de même qu’il a partagé ses coupures d’ongles.', '', 'Dans son livre « As-Sirâtou l-Moustaqîm », le Chaykh ‘Abdoul-Lâh Al-Harari a dit :
Informations utiles :
– Al-‘Allâmah (l’illustre savant), l’Imâm, le Mouhaddith (transmetteur du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chaykh ‘Abdoul-Lâh Al-Harari Ach-Châfi’i Ach-Chaybi Al-‘Abdari connu sous le nom de Al-Habachi est décédé en 1429 de l’Hégire (رحمه الله). Il était un grand défenseur de la croyance de Ahlou s-Sounnah. De nombreux savants et responsables d’institutions islamiques ont fait son éloge. Parmi eux :
Le Mouhaddith des contrées marocaines, le Chaykh ‘Abdou l-‘Azîz Al-Ghoumâri a dit à son sujet : « Le Chaykh ‘Abdou l-Lâh est juste (‘adl)… Il a des ouvrages dignes de considération et des livres utiles dans l’explication des Lois de Allâh pour les musulmans, qui montrent bien qu’il fait partie des religieux qui ont une grandeur d’âme et qui œuvrent pour la religion de Allâh. Il n’est donc pas permis, après tout cela, qu’on le calomnie dans sa religion, qu’on le discrédite dans sa croyance ou qu’on récuse sa justesse » .
Le Chaykh Mouhammad Châh Al-Hâmidi Al-Houçayni a dit : « Certe, le Chaykh ‘Abdou l-Lâh est un Imâm dans la ‘Aqîdah (croyance), le Fiqh ( jurisprudence), la langue arabe, le Hadîth, et il est rare de trouver semblable à lui dans cette époque. Et ceci n’est pas uniquement mon propre témoignage mais aussi le témoignage de mon père Al-‘Allâmah (l’illustre savant) le Chaykh Qoutbou d-Dîn Al-Hâmidi Al-Houçayni (rahimahou l-Lâh) le Moufti de Deir ez-Zor, et c’est également le témoignage de beaucoup des plus grands de parmi les gens de science de la région du Châm et d’ailleurs »
Le Président de l’Université et de l’Institut islamique “Az-Ziyâdah” à Jakarta en Indonésie, Habîb Al-Miçâwî, a dit : « J’ai pris connaissance des livres du Mouhaddith, le Chaykh respectable ‘Abdoul-Lâh Al-Harari Ach-Chaybi, que Allâh le préserve, surtout les livres “Al-Maqalatou s-Sounniyyah” et “Sarîhou l-Bayân”, j’ai trouvé en lui un savant, un jurisconsulte, versé dans la science et le Hadîth, je témoigne qu’il est unique à son époque et son ère et qu’il est le Moujaddid de ce siècle » . (c’est-à-dire celui qui revitalise la science de la religion).
Le Moufti Mouhammad Ayyoûb An-Na’îmi, Université Na’îmiyyah , en Inde a dit : « Mon cœur a été fortement sensible, ma poitrine s’est fortement réjouie et mon cœur s’est illuminé par le service que le Grand savant, le Mouhaddith, le Chaykh ‘Abdoul-Lâh Al-Harari plus connu sous le nom de Al-Habachi porte à la communauté. J’ai pu lire ses livres, son excellent livre As-Sirâtou l-Moustaqîm à plusieurs reprises et j’ai constaté que c’est un livre qui constitue un rappel de nos Salaf vertueux. J’invoque Allâh ‘azza wa jall qu’Il fasse que son œuvre soit récompensée et que les savants ainsi que le commun des gens de l’islâm puissent profiter de ses bénédictions. Âmîn. As-salâmou ‘alaykoum.»
Le Chaykh Mouhammad Noûrou d-Dîn Al-Banjari Al-Makki (l’un des Chouyoukh d’Indonésie) a dit de lui : « Concernant la science il est difficile de trouver quelqu’un de semblable au Chaykh ‘Abdou l-Lâh Al-Harari ou quelqu’un qui se rapproche de son niveau » .
Le Chaykh Mouhammad Dhafar (Dâr al-‘ouloûm Amjadiyyah de Karachi au Pakistan) a dit : « L’illustre savant érudit (Al-‘Allâmah al-Kabîr) Al-Hâfidh Al-Mouhaddith (spécialiste de la science du hadîth) l’éducateur et l’honorable Chaykh Abdoullâh Al-Harari connu par Al-Habachi suit le Madh-hab Al-Haqq (l’école de droiture) et marche sur la voie droite, celle des Sahâbah du Messager de Allâh (صلى الله عليه وسلم) , des prédécesseurs vertueux ainsi que leurs successeurs. Puisse Allâh leur accorder à tous encore davantage d’agrément et d’approbation. Et il est un Imâm (guide et référence) très grand, et il est une référence en la religion (houjjatou fi d-Dîn). Il est pieux et vertueux, véridique et sincère. ».
– Ici, le Chaykh Al-Harari confirme le fait qu’il est permis de faire le tabarrouk par les traces physiques du prophète (صلى الله عليه وسلم), c’est-à-dire qu’il est permis d’en rechercher des bénédictions.
– Nous avons su la permission de cette pratique à partir des actes même du Prophète (صلى الله عليه وسلم) puisqu’il a partagé ses cheveux lorsqu’il a fait raser sa tête lors du pèlerinage de l’adieu. En effet, dans son célèbre recueil de hadîth sahîh, l’Imâm Mouslim rapporte que Anas Ibnou Mâlik a dit [ce qui a pour sens : ] « Une fois accomplis le lancer à Jamrah (Al-‘Aqabah) et l’égorgement de son offrande, le Prophète (صلى الله عليه وسلم), lors de son rasage rituel, a tendu au barbier la partie droite de sa tête. Celui-ci l’a rasée puis il a appelé Aboû Talhah Al-Ansâri et lui a donné les cheveux. Ensuite, le Prophète a tendu au barbier la partie gauche de sa tête et lui a dit : “Rase”. Il a donc rasé. Le Prophète a donné les cheveux à Aboû Talhah et lui a dit : “Distribue-les aux gens” » [ Voir l’article à ce sujet : ici ].
Le Mouhaddith Mouhammad Habîbou l-Lâh Ach-Chanqîti a dit concernant ce hadîth : « Le prophète a ordonné à Talhah de distribuer ses cheveux parmi les compagnons afin qu’ils en recherchent des bénédictions » [Dans son livre : Zâdou l-Mouslim]
– La permission de cette pratique est également sue à partir des actes des compagnons tels que :
Khâlid Ibnou-l Walîd qui gardait toujours avec lui une mèche de cheveux du prophète, comme cela est rapporté par Al-Hâkim dans son Moustadrak (ceci fera l’objet d’un article إن شاء الله).
Asmâ Bintou Abî Bakr. En effet, dans son célèbre recueil de hadîth sahîh, l’Imâm Mouslim rapporte du Mawlâ de Asmâ Bintou Abî Bakr qu’il a dit : « Asmâ nous a présenté une tunique longue (joubbah), dont l’encolure était ornée de brocart et les emmanchures ourlées, puis elle a dit : « C’est la joubbah du Messager de Allâh (صلى الله عليه وسلم) ; elle se trouvait chez ‘Â-ichah. Je l’ai récupérée lorsqu’elle est décédée. Le Prophète (صلى الله عليه وسلم) la portait. Nous la trempons dans l’eau pour les malades et recherchons par elle la guérison ». [ Retrouvez l’article : ici ]
L’Imâm An-Nawawi a dit concernant ce hadîth : « Il y a dans ce hadîth une preuve sur la recommandation de pratiquer le tabarrouk (la recherche de bénédiction) par les traces (âthâr) des vertueux et par leurs vêtements » [ voir : ici ]
– Parmi les grands savant du salaf, il y a également l’Imâm Ahmad Ibnou Hanbal qui faisait le tabarrouk avec les cheveux du prophète. En effet, dans son livre « Siyarou A’lâmi n-Noubalâ », Adh-Dhahabi a dit : « ‘Abdou l-Lâh ibnou Ahmad (le fils de l’Imâm Ahmad ibnou Hanbal) a dit: J’ai vu mon père (l’Imâm Ahmad ibnou Hanbal) prendre un cheveu de ceux du Prophète (صلى الله عليه وسلم), il l’a mis dans sa bouche puis l’a embrassé. Et je suis sur de l’avoir vu le mettre sur ses deux yeux, et l’avoir mélangé avec de l’eau, d’avoir bu cette eau en recherchant la guérison par cela. Et je l’ai vu prendre le bol du Prophète, le laver dans un puits, puis boire dedans. Je l’ai vu boire de l’eau de Zamzam en recherchant la guérison et s’essuyer les mains et le visage avec elle. […] Il fut rapporté que ‘Abdou l-Lâh demanda à son père au sujet de quelqu’un qui touche le pommeau du minbar du Prophète (صلى الله عليه وسلم) et touche le mur de la chambre Honorée du Prophète (صلى الله عليه وسلم) et Ahmad Ibnou Hanbal répondit : « Je ne vois aucun mal dans cela ».» [ Voir l’article à ce sujet : ici ].
– Concernant le partage de ses coupures d’ongles, cela est rapporté par l’Imâm Ahmad Ibn Hanbal dans son Mousnad (ceci fera l’objet d’un article إن شاء الله).
– L’Imâm An-Nawawi a dit : « Le Calife ‘Oumar Ibn ‘Abdi l-‘Azîz a demandé à ce que soit enterré avec lui l’un des cheveux du prophète (salla l-Lâhou ‘alayhi wa sallam) qu’il avait avec lui, et également l’un de ses ongles. Il disait : “si je meurt alors mettez-les dans mon linceul”, et c’est ainsi qu’ils ont fait » [Dans son livre Tahdhîbou l-Asmâ wa l-Loughât]
– Le tabarrouk c’est la recherche de bénédiction par les traces physiques d’un Prophète ou d’un être de vertu, tout en sachant, bien évidemment, que c’est Allâh ta’âlâ qui est Le Créateur de la guérison, du profit, de la barakah etc. Donc le tabarrouk n’est pas une adoration d’autre que Allâh comme le considère à tord certains ignorants.
– Il n’y a donc aucune considération à donner à la prétention de ceux qui renient le tabarrouk par les traces physiques honorées du Prophète (صلى الله عليه وسلم).
– Retrouvez d’autres articles au sujet du tabarrouk : ici .', 'a.p.b.i.f, abache, abaches, abachi'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'اعلم أن الصحابة رضوان الله عليهم كانوا يتبركون بآثار النبي صلى الله عليه وسلم في حياته وبعد مماته ولا زال المسلمون بعدهم إلى يومنا هذا على ذلك وجواز هذا الأمر يعرف من فعل النبي صلى الله عليه وسلم وذلك أنه صلى الله عليه وسلم قسم شعره حين حلق في حجة الوداع و أظفاره');

-- source: https://islamsunnite.net/limam-abou-chamah-fait-leloge-du-mawlid-rapporte-par-ibn-zayni-dahlan/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La bonne innovation du Mawlid', 'Abou Chamah', 'قال الإمام أبو شامة شيخ النووي : ومن أحسن ما إبتدع في زماننا ما يفعل كل عام في اليوم الموافق ليوم مولده صلى الله عليه و سلم من الصدقات والمعروف ، وإظهار الزينة والسرور ، فإن ذلك – مع ما فيه من الإحسان للفقراء – مشعر بمحبة النبي صلى الله عليه و سلم وتعظيمه في قلب فاعل ذلك وشكر الله تعالى على ما من به من إيجاد رسول الله صلى الله عليه و سلم الذي أرسله رحمة للعالمين.', 'L’Imâm Aboû Châmah, le Chaykh de An-Nawawi a dit : parmi les meilleures choses qui ont été innovées à notre époque, il y a ce qui se fait chaque année, lors des jours qui correspondent au jour du Mawlid, d’entre les aumônes et les actes de générosités et le fait de montrer les beaux habits ainsi que la joie, tout ce que cela comporte comme générosité envers les pauvres est une indication d’amour porté à l’égard du prophète (صلى الله عليه وسلم) et de sa glorification dans le cœur de celui qui fait cela, ainsi que du remerciement à Allâh pour ce qu’Il a accordé comme bienfait dans l’apparition du prophète (صلى الله عليه وسلم), celui qui a été envoyé comme miséricorde pour les mondes.', '', 'Dans son livre « As-Sîrah an-Nabawiyyah », le Moufti de La Mecque, le Chaykh Ahmad Ibn Zaynî Dahlân a consacré un chapitre à la commémoration du Mawlid dans lequel il a dit :
Informations utiles :
– Le Moufti de La Mecque, Le Chaykh Ahmad Ibn Zaynî Dahlân Al-Makki est né en 1231 et il est décédé en 1304 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 130 ans. Il était spécialiste de la Charî’ah, de la grammaire et de l’histoire ainsi que d’autres domaines. Il a apporté sa contribution à de nombreuses sciences. Il était le Moufti des maîtres Châfi’i à la ville Sainte de la Mecque, il était surnommé Chaykhou l-Islâm. Il est l’auteur du livre « Ad-Dourarou s-Saniyyah » ainsi que du livre « Al-Foutoûhâtou l-Islâmiyyah » (Les conquêtes islamiques) dans lequel se trouve le fameux chapitre de mise en garde contre la secte wahhabite qu’il a intitulé « Fitnatou l-Wahhâbiyyah » (La discorde des Wahhabites). Consultez sa biographie : ici .
– Dans son livre « As-Sîrah an-Nabawiyyah» il a écrit un chapitre au sujet du Mawlid. Ici il cite l’Imâm Aboû Châmah qui fait l’éloge de la commémoration du Mawlid.
– Cette citation de l’Imâm Aboû Châmah (رحمه الله) provient de son livre « Al-Bâ’ithou ‘alâ Inkâri l-bida’ wa l-hawâdith ».
– L’Imâm, Le Hâfidh (le spécialiste de la science du hadith), le Mouhaddith (transmetteur du Hadîth), le Faqîh (spécialiste de la jurisprudence) Chihâbou d-Dîn Aboû Châmah Abdou r-Rahmân Ibn Ismâ’îl Al-Maqdiçi Ad-Dimachqi Ach-Châmi Ach-Châfi’i est né en 559 à Damas (Syrie) et il est décédé en 665 de l’hégire à Damas également (رحمه الله) c’est-à-dire il y a environ 800 ans. Il était Chaykh à Dâroul-Hadîth Achrafiyyah, et il était l’un des Chaykh de l’Imâm An-Nawawi (رحمه الله). Et il fût l’élève d’éminents savants tels que Chaykhou l-Islâm Ibn ‘Abdi s-Salâm et le Hâfidh Ibn ‘Açâkir.
– Il dit que le Mawlid fait parti des meilleures choses innovées. Sa citation nous confirme qu’une innovation peut être bonne contrairement à ce que prétendent certains ignorants à notre époque.
– Ainsi le Mawlid est une bonne innovation et le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ].
– Quant au hadîth qui comprend les termes « كل بدعة ضلالة » [koullou bid’atin dalâlah], les savants de l’Islâm ont dit que « كل » [koullou] signifie ici « la plupart », c’est-à-dire que la plupart des innovations mènent à l’égarement. [ Voir la parole de l’Imâm An-Nawawi : ici ]
– Retrouvez d’autres paroles de savants concernant les bonnes innovations : ici .
– Consultez d’autres paroles de savants concernant le Mawlid : ici .', '3oulama, abou chama, abou chamah, abou shama'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال الإمام أبو شامة شيخ النووي : ومن أحسن ما إبتدع في زماننا ما يفعل كل عام في اليوم الموافق ليوم مولده صلى الله عليه و سلم من الصدقات والمعروف ، وإظهار الزينة والسرور ، فإن ذلك – مع ما فيه من الإحسان للفقراء – مشعر بمحبة النبي صلى الله عليه و سلم وتعظيمه في قلب فاعل ذلك وشكر الله تعالى على ما من به من إيجاد رسول الله صلى الله عليه و سلم الذي أرسله رحمة للعالمين.');

-- source: https://islamsunnite.net/le-chaykh-al-mounawi-declare-mecreant-ceux-qui-attribuent-la-direction-ou-le-corps-a-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Chaykh Al-Mounâwi déclare mécréant ceux qui attribuent la direction ou le corps à Allâh', 'Les Chafi''ites', '[…] والكلام كله في مبتدع لا يكفر ببدعته أما من كفر بها كمنكر العلم بالجزئيات، وزاعم التجسيم أو الجهة أو الكون أو الاتصال بالعالم أو الانفصال عنه فلا يوصف عمله بقبول ولا رد لأنه أحقر من ذلك', '« […] Tous nos propos, tout ce qui vient d’être dit ici, concerne un innovateur qui ne devient pas mécréant par sa mauvaise innovation. Quant à celui qui devient mécréant par sa mauvaise innovation, c’est comme celui qui renie la connaissance de Allâh en prétendant que Allâh ne connait pas le détail, ou qui prétend que Allâh serait un corps, ou qu’Il serait dans une direction. De même celui qui dit que Allâh est en contact avec le monde ou détaché de lui. On ne caractérise pas les actes de ces derniers seulement par le rejet car il est plus vil que cela par sa mauvaise croyance ».', '', 'Dans son livre « Faydou l-Qadîr Charh Al-Jâmi’ As-Saghîr », le Chaykh Al-Mounâwi a dit :
Informations utiles :
– Le Chaykh, le Mouhaddith (transmetteur du hadîth) Mouhammad ‘Abdou r-Ra-oûf Al-Mounâwi Al-Qâhiri Ach-Châfi’i est né 952 et il est décédé en 1031 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 400 ans. Son livre « Faydou l-Qadîr Charh al-Jâmi’ as-Saghîr » est le commentaire d’un ouvrage du Hâfidh As-Souyoûti (رحمه الله).
– Ici, il confirme que le fait d’attribuer à Allâh le corps ou la direction est de la mécréance. Il explique que ces croyances sont des innovations qui sont de la mécréance. D’autres savants ont également tenu des propos similaires :
L’Imâm An-Nawawi a dit dans son livre « Al-Majmoû’ Charhou l-Mouhadh-dhab » : « Et nous avons certes mentionné que celui qui est devenu mécréant par son innovation, la prière n’est pas valable derrière lui […] et parmi ceux qui sont devenu mécréant il y a celui qui attribue clairement le corps [à Allâh] ».
Le Chaykh Taqiyyou d-Dîn Al-Hisni a dit: « L’Imâm An-Nawawi, dans le chapitre de la description de la prière de son commentaire de Al-Mouhadh-dhab, a confirmé la déclaration de mécréance (takfîr) à l’égard des moujassimah (anthropomorphistes), et je dit [Al-Hisni] que c’est cela qui est correct » [Kifâyatou l-Akhyâr].
L’Imâm As-Souyoûti a dit dans son livre « Tadrîbou r-Râwî »: « Celui qui est devenu mécréant par son innovation, et cela comme le dit l’auteur (An-Nawawi) du commentaire de Al-Mouhadh-dhab : le moujassim (celui qui attribue à Allâh le corps ou les caractéristiques des corps) et celui qui nie que Allâh connait le détail des choses .. .».
L’Imâm As-Souyoûti a dit également dans son livre « Al-Achbâh wa n-Nadhâ-ir » : « Certains savants ont dit : les moubtadi’ah (innovateurs dans la croyance) sont de différentes sortes : La première : ceux que nous déclarons mécréant de façon catégorique ; comme celui qui attribue la fornication à ‘Â-ichah (رضي الله عنها) et celui qui nie que Allâh connait le détail des choses et la résurrection des corps, ainsi que les moujassimah (ceux qui attribuent à Allâh le corps ou les caractéristiques des corps) et celui qui prétend que le monde serait sans début… ». [ Retrouvez l’article : ici ]
– Et il dit également que le fait de croire que Allâh serait en contact avec le monde ou détaché de lui est également de la mécréance.
– De nombreux savants ont confirmé que le fait d’attribuer le corps à Allâh constitue de la mécréance. Parmi eux :
L’Imâm ‘Ali Ibnou Abî Tâlib [ voir : ici ]
L’Imâm Aboû Hanîfah [ voir : ici ]
L’Imâm Mâlik [ voir : ici ]
L’Imâm Ach-Châfi’i [ voir : ici ] et [ voir : ici ]
L’Imâm Ahmad Ibnou Hanbal [ voir : ici ]
L’Imâm Al-Ach’ari [ voir : ici ] et [ voir : ici ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ voir : ici ]
L’Imâm Aboû Mansoûr Al-Baghdâdi [ voir : ici ]
L’Imâm Ibnou Battâl (449 H.)
L’Imâm Al-Bayhaqi [ voir : ici ]
L’Imâm Al-Ghazâli qui rapporte également l’unanimité [ voir : ici ]
L’Imâm Fakhrou d-Dîn Ar-Râzi [ voir : ici ]
L’Imâm An-Nawawi (676 H.)
L’Imâm Al-Mawsili [ voir : ici ]
L’Imâm Ibnou Abî Jamrah (699 H.)
L’Imâm An-Naçafi (710 H.) [ voir : ici ]
L’Imâm Safiyyou d-Dîn Al-Hindi (715 H.)
Le Chaykh Ibnou Amîr Al-Hajj Al-Hanafi (733 H.)
Le Chaykh Mahmôud Al-Qoûnawi Al-Hanafi (771 H.)
L’Imâm Taqiyyou d-Dîn Al-Hisni (829 H.)
Le Chaykh ‘Alâ-ou d-Dîn Al-Boukhâri qui rapporte l’unanimité [ voir : ici ]
L’Imâm As-Souyoûti [ voir : ici ]
Le Chaykh Ibn Hajar Al-Haytami [ voir : ici ]
Le Chaykh Al-Mounâwi comme cela est indiqué ci-dessus.
Le Chaykh Mouhammad Mayyârah (1072 H.)
Le Chaykh Ibn Balbân [ voir : ici ]
L’Imâm Al-Bayâdi (1098 H.)
L’Imâm Abdou l-Ghani An-Nâboulouçi [ voir : ici ]
Le Chaykh ‘Abdou l-Lâh Ibn Houçayn Al-‘Alawi (1272 H.)
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ voir : ici ]
Le Chaykh Salîm Al-Bichri Al-Azhari (1335 H.)
Le Chaykh Al-Marighni Az-Zaytoûni qui mentionne l’unanimité [ voir : ici ]
L’Imâm Al-Kawthari [ voir : ici ]
Le Chaykh Mehmed Zâhid Kotku [ voir : ici ]
Le Mouhaddith Mouhammad Yâçîn Al-Fâdâni (1410 H.)
Le Mouhaddith Al-Harari (1429 H.)
Et beaucoup d’autres…
– De nombreux savants ont confirmé que le fait d’attribuer l’endroit ou la direction à Allâh constitue de la mécréance. Parmi eux :
L’Imâm Ja’far As-Sâdiq [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Aboû Hanîfah [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Mâlik [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Ach-Châfi’i [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Ahmad Ibnou Hanbal [ voir : ici ]
L’Imâm Al-Ach’ari [ voir : ici ] et [ voir : ici ]
L’Imâm Abou l-Layth As-Samarqandi [ voir : ici ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ voir : ici ]
L’Imâm Al-Jouwayni [ voir : ici ]
L’Imâm An-Naçafi (508 H.) [ voir : ici ]
L’Imâm Ahmad Ar-Rifâ’i (578 H.)
L’Imâm Ibnou ‘Abdi s-Salâm [ voir : ici ]
L’Imâm Fakhrou d-Dîn Ar-Râzi [ voir : ici ]
L’Imâm An-Nawawi [ voir : ici ]
L’Imâm Al-Mawsili [ voir : ici ]
Le Chaykh Badrou r-Rachîd Al-Hanafi [ voir : ici ]
Le Hâfidh Waliyyou d-Dîn Al-‘Irâqi (826 H.) qui rapporté l’unanimité,
L’Imâm Taqiyyou d-Dîn Al-Hisni (829 H.)
Le Chaykh Ibn Hajar Al-Haytami [ voir : ici ]
Le Chaykh Moullâ ‘Ali Al-Qâri [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
Le Chaykh Nidhâmou d-Dîn Al-Hindi (Al-Fatâwa l-Hindiyyah) [ voir : ici ]
Le Chaykh Al-Mounâwi comme cela est indiqué ci-dessus.
Le Moufassir Ismâ’îl Haqqi [ voir : ici ]
L’Imâm Abdou l-Ghani An-Nâboulouçi [ voir : ici ]
Le Chaykh Ibn Balbân [ voir : ici ]
Le Chaykh As-Sâwi Al-Mâliki [ voir : ici ]
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ voir : ici ]
Le Chaykh Al-Qawouqji [ voir : ici ]
L’Imâm Al-Kawthari [ voir : ici ]
Le Chaykh Mahmoûd As-Soubki Al-Azhari qui mentionne l’unanimité [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
Le Chaykh Mehmed Zâhid Kotku [ voir : ici ]
Le Mouhaddith Al-Harari (1439 H.)
Et beaucoup d’autres…
– Le Chaykh Al-Mounâwi fait partis de ces nombreux savants qui ont confirmé qu’Ibn Taymiyah a contredit l’unanimité des musulmans en prétendant que l’enfer sera anéanti. Ainsi dans ce même livre (Faydou l-Qadîr), à la suite du hadîth rapporté par Mouslim dans son sahîh d’après Aboû Hourayrah qui rapporte que Prophète (صلى الله عليه وسلم) a dit :', 'al-mounawi, al-mounawiyy, allah, anthropomorphisme'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '[…] والكلام كله في مبتدع لا يكفر ببدعته أما من كفر بها كمنكر العلم بالجزئيات، وزاعم التجسيم أو الجهة أو الكون أو الاتصال بالعالم أو الانفصال عنه فلا يوصف عمله بقبول ولا رد لأنه أحقر من ذلك');

-- source: https://islamsunnite.net/le-chaykh-al-mounawi-declare-mecreant-ceux-qui-attribuent-la-direction-ou-le-corps-a-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Chaykh Al-Mounâwi déclare mécréant ceux qui attribuent la direction ou le corps à Allâh', 'Les Chafi''ites', 'من يدخل الجنة يَنعَم لا ييْأس، لا تبلى ثيابه، ولا يفنى شبابه', '', '', '[Sens en français : ] « Celui qui entre au Paradis sera heureux et ne perdra plus espoir, ses habits ne s’useront plus et sa jeunesse ne passera jamais » ; Le Chaykh Al-Mounâwi a dit : « Ceci est explicite pour confirmer que le Paradis est éternel et qu’il ne s’anéantira pas, et l’enfer pareillement. Et Jahm Ibnou Safwân a prétendu qu’ils s’anéantiront parce qu’ils sont entrés en existence, mais aucun des gens de l’Islâm ne l’a suivi, bien au contraire, ils l’ont déclaré mécréant pour cela. Certains ont été d’avis que l’enfer s’anéantira au contraire du paradis, Ibnou l-Qayyim tout comme son chaykh Ibnou Taymiyah, se sont longuement attaché à faire vaincre cet avis dans plusieurs ouvrages, ce faisant il est passé plus près de la mécréance que de la foi à cause de sa contradiction avec le texte du Qour-ân, il a conclu ainsi son livre qui décrit le paradis » . [ Pour en savoir plus, consultez le livre “Al-Bourhân wa l-I’tibâr : ici ]', 'al-mounawi, al-mounawiyy, allah, anthropomorphisme'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'من يدخل الجنة يَنعَم لا ييْأس، لا تبلى ثيابه، ولا يفنى شبابه');

-- source: https://islamsunnite.net/le-qadi-ibn-al-arabi-confirme-le-fait-que-allah-nest-pas-dans-une-direction-ni-dans-un-endroit/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Qâdî Ibn Al-‘Arabi confirme le fait que Allâh n’est pas dans une direction ni dans un endroit', 'Les Malikites', 'البارئ تعـالى يتقدس عن أن يُحَدَّ بالجهــــات أو أن تكتنفه الأقطار', 'Al-Bâri (Le Créateur)- c’est-à-dire Allâh – ta’âlâ est exempt d’être limité dans une direction ou d’être contenu dans un endroit', '', 'Dans son livre « Al-Qabas fî Charh Mouwattâ Mâlik Ibnou Anas » Al-Qâdî Aboû Bakr Ibnou l-‘Arabi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste du Hadîth), Al-Qâdî (le juge) Aboû Bakr Mouhammad Ibnou ‘AbdilLâh Ibnou l-’Arabi Al-Ichbîli Al-Andalouçi Al-Mâliki est né en 468 à Séville (Espagne) et il décédé en 543 de l’Hégire (رحمه الله) à Fès (Maroc), c’est-à-dire il y a environ 900 ans. L’ouvrage dont est tiré cette citation est un commentaire du recueil de hadith « Al-Mouwatta » de l’Imam Malik.
L’Imâm An-Nawawi a dit à son sujet : « L’Imâm, le Hâfidh (spécialiste de la science du hadîth), le Qâdî (juge) » . [Tahdhîbou l-Asmâ wa l-Loughât]
Adh-Dhahabi a dit de lui : « L’Imâm, l’illustre savant (Al-‘Allâmah), le Hâfidh (spécialiste de la science du hadîth), le Qâdî (juge) » . [Siyar A’lâmi n-Noubalâ]
– Ici, Al-Qâdî Ibn Al-‘Arabi confirme la croyance des musulmans sur le fait que Allâh n’est pas dans une direction ni dans un endroit.
– Dans son commentaire du recueil de hadîth de At-Tirmidhi, le Qâdî Ibn Al-‘Arabi a dit également : « [Les assimilationnistes] ont dit [mensongèrement] que : Les musulmans qui croient en l’Unicité de Dieu ont été d’accord sur le fait qu’ils lèvent les mains vers le ciel pour les invocations car Moûçâ a dit “ Allâh est aux cieux ‘’ quand il s’est adressé à Pharaon, et Pharaon lui a répondu : Ô Haman, construis-moi une Tour. Nous [Les musulmans de Ahlou Sounnah] leur répliquons : Vous mentez car Moûçâ n’a jamais dit cela. Comment auriez-vous pu savoir que Moûçâ pouvait dire cela ?! Vous n’êtes que des gens qui suivent Pharaon qui a eu pour croyance que le Créateur est dans une direction et il a voulu ainsi monter sur une échelle selon lui vers Dieu ! Il vous suffit comme rabaissement que vous êtes des gens qui le suivent et qu’il est votre Imâm. » [Retrouvez l’article : ici]
– Il ne faut pas confondre Al-Qâdî Ibn Al-‘Arabi (décédé en 543 de l’Hégire) avec Ibn ‘Arabi (décédé en 638 de l’Hégire).', 'al-qabas fi charh mouwatta malik ibnou anas, allah, aqida, croyance'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'البارئ تعـالى يتقدس عن أن يُحَدَّ بالجهــــات أو أن تكتنفه الأقطار');

-- source: https://islamsunnite.net/le-moufti-de-la-mecque-le-chaykh-ibn-zayni-dahlan-fait-leloge-du-mawlid/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Moufti de La Mecque approuve le Mawlid', 'Soubki (Taqiyyou d-Din)', '« فائدة : جرت العادة أن الناس إذا سمعوا ذكر وضعه صلى الله عليه و سلم يقومون تعظيماً له صلى الله عليه و سلم ، وهذا القيام مستحسن لما فيه من تعظيم النبي صلى الله عليه و سلم ، وقد فعل ذلك كثير من علماء الأمة الذين يقتدى بهم. قال الحلبي في السيرة : فقد حكى بعضهم أن الإمام السبكي إجتمع عنده كثير من علماء عصره فأنشد منشده قول الصرصري في مدحه صلى الله عليه و سلم:', '', '', 'Dans son livre « As-Sîrah an-Nabawiyyah», le Moufti de La Mecque, le Chaykh Ahmad ibn Zaynî Dahlân a consacré un chapitre à la commémoration du Mawlid dans lequel il a dit :', '3oulama, ad-dourarou s-saniyyah, ahlou s-sounnah, ahmad ibn zayni dahlan'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« فائدة : جرت العادة أن الناس إذا سمعوا ذكر وضعه صلى الله عليه و سلم يقومون تعظيماً له صلى الله عليه و سلم ، وهذا القيام مستحسن لما فيه من تعظيم النبي صلى الله عليه و سلم ، وقد فعل ذلك كثير من علماء الأمة الذين يقتدى بهم. قال الحلبي في السيرة : فقد حكى بعضهم أن الإمام السبكي إجتمع عنده كثير من علماء عصره فأنشد منشده قول الصرصري في مدحه صلى الله عليه و سلم:');

-- source: https://islamsunnite.net/le-moufti-de-la-mecque-le-chaykh-ibn-zayni-dahlan-fait-leloge-du-mawlid/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Moufti de La Mecque approuve le Mawlid', 'Soubki (Taqiyyou d-Din)', 'قليل لمدح المصطفى الخط بالذهب * على ورق من خط أحسن من كتب وأن تنهض الأشراف عند سماعه * قياماً صفوفاً أو جثياً على الركب', '', '', '', '3oulama, ad-dourarou s-saniyyah, ahlou s-sounnah, ahmad ibn zayni dahlan'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قليل لمدح المصطفى الخط بالذهب * على ورق من خط أحسن من كتب وأن تنهض الأشراف عند سماعه * قياماً صفوفاً أو جثياً على الركب');

-- source: https://islamsunnite.net/le-moufti-de-la-mecque-le-chaykh-ibn-zayni-dahlan-fait-leloge-du-mawlid/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Moufti de La Mecque approuve le Mawlid', 'Soubki (Taqiyyou d-Din)', 'فعند ذلك قام الإمام السبكي وجميع من بالمجلس ، فحصل أنس كبير في ذلك المجلس ، وعمل المولد وإجتماع الناس له كذلك مستحسن.»', '« Il est de l’habitude des gens lorsqu’ils entendent le récit de sa naissance honorée, de se lever par glorification pour lui [le prophète] (صلى الله عليه و سلم), et cet acte est un acte de bien en raison de ce que cela comporte comme glorification du prophète (صلى الله عليه و سلم) ; et cela fût pratiqué par un grand nombre de savants de la communauté, parmi ceux qui sont pris en exemple.', '', 'Al-Halabi a dit dans As-Sîrah: Certains ont dit que l’Imâm As-Soubki s’était réuni avec beaucoup de savants de son époque, c’est alors qu’un poète s’est mis à chanter les paroles de As-Sarsari faisant l’éloge du prophète (صلى الله عليه و سلم) :', '3oulama, ad-dourarou s-saniyyah, ahlou s-sounnah, ahmad ibn zayni dahlan'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فعند ذلك قام الإمام السبكي وجميع من بالمجلس ، فحصل أنس كبير في ذلك المجلس ، وعمل المولد وإجتماع الناس له كذلك مستحسن.»');

-- source: https://islamsunnite.net/imam-ibn-abbas-explique-le-nom-de-allah-an-nour-rapporte-par-al-bayhaqi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas une luminosité', 'Les Chafi''ites', 'الله سبحانه وتعالى هادي أهل السماوات والأرض', 'Allâh soubhânahou wa ta’âlâ est Celui Qui guide les gens des Cieux et de la Terre', '', 'Dans son livre « Al-Asmâ-ou wa s-Sifât » (tome 1 pages 143-144 de cette édition), l’Imâm Al-Bayhaqi rapporte que l’Imâm Ibn ‘Abbâs a dit au sujet du verset 35 de Soûrat An-Noûr : {الله نور السماوات والأرض} « Allâhou Noûrou s-samâwâti wa l-Ard » :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence), le Ousoûli (spécialiste des fondements) Aboû Bakr Ahmad Ibnou l-Houçayn Al-Bayhaqi, est né en 384 et il est décédé en 458 de l’Hégire (رحمه الله), c’est-à-dire il y a presque 1000 ans. Il fait partie des plus grands savants du hadîth, et il est de l’école de jurisprudence Châfi’ite.
Ibnou l-Jawzi a dit à son sujet : « Il n’avait pas d’égal à son époque dans la mémorisation et la grande maîtrise [des sciences], il est l’auteur de bons ouvrages, il maîtrisait aussi bien la science du Hadîth, que la jurisprudence (Fiqh) et les fondements (Ousoûl), et il compte parmi les plus grands compagnons de [l’Imâm] Al-Hâkim Abî ‘Abdi l-Lâh (m.405 H) » [Al-Mountadham]
Ibnou l-Athîr a dit de lui : « Il était un savant dans le Hadîth et dans la jurisprudence (Fiqh) et il est l’auteur de nombreux ouvrages qui démontrent ses nombreux mérites » [Al-Loubâb] et il a dit de lui également : « Il était un Imâm dans le Hadîth et dans la jurisprudence au sein du Madh-hab de l’Imâm Ach-Châfi’i et il est l’auteur à ce sujet de différents ouvrages » [Al-Kâmil]
Le Hâfidh Salâhou d-Dîn Al-‘Alâ-i a dit à propos de lui : « Personne n’est venu après Al-Bayhaqi et Ad-Dâraqoutni qui les égale ou qui se rapproche de leur niveau [dans la science du Hadîth]» . [Al-Wachyou l-Mou’am]
Adh-Dhahabi a dit de lui : « Il est le Hâfidh (spécialiste de la science du Hadîth), l’illustre savant (‘Allâmah), le digne de confiance, le spécialiste de la jurisprudence (Faqîh), Chaykhou l-Islâm » , il disait également à son sujet : « Si l’Imâm Al-Bayhaqi auvait voulu fonder sa propre école (Madh-hab) dans laquelle il réalise son ijtihâd (effort de recherche) il aurait été capable de cela vu l’abondance de sa science, et sa connaissance des divergences» [Siyar A’lâmi n-Noubalâ]
Tâjou d-Dîn As-Soubki a dit à son sujet : « L’Imâm Al-Bayhaqi était l’un des Imâm des musulmans, quelqu’un qui appelait à s’accrocher fermement à la religion, un éminent spécialiste de la jurisprudence (Faqîh), un grand Hâfidh (spécialiste du Hadîth), un spécialiste des fondements (Ousoûli) intelligent, un ascète pieux, un fervent adorateur de Allâh, il se dressait pour soutenir le Madh-hab (c’est-à-dire le Madh-hab de l’Imâm Ach-Châfi’i) dans les fondements et dans les ramifications, il était une montagne de parmi les montagnes de science » [At-Tabaqât]
Ibnou Kathîr a dit à propos de lui : « Il n’avait pas de semblable à son époque dans la maîtrise [des sciences], la mémorisation, le Fiqh (la jurisprudence) et l’écriture [d’ouvrages], Il était un spécialiste de la jurisprudence (Faqîh), un spécialiste du Hadîth (Mouhaddith), un spécialiste des fondements (Ousoûli), il a étudié la science auprès de Al-Hâkim ‘Abdou l-Lâh An-Nayçâboûri , et il étudia également de nombreux sujets auprès d’autres savants, il a composé de nombreux ouvrages utiles qui n’ont pas eu de semblable » [Al-Bidâyah wa n-Nihâyah]
‘Abdou l-Ghaffâr Al-Fâriçi a dit de lui : « L’Imâm, le Hâfidh (spécialiste du Hadîth), Al-Faqîh (spécialiste de la jurisprudence), Al-Ousoûli (spécialiste des fondements), le pieux, le vertueux, celui qui n’avait pas d’équivalent à son époque dans la mémorisation, Il a excellé dans la maîtrise [des sciences] et la mémorisation » [Al-Mountakhab]
Ibnou ‘Abdi l-Hâdi a dit à son sujet : « L’Imâm, le Hâfidh (spécialiste du Hadîth), l’illustre savant, le Chaykh de Khourâçân » [Tabaqât ‘oulamâ-i l-Hadîth]
Ibn Khallikân a dit de lui : « Il était celui qui soutenait le plus la voie de l’Imâm Ach-Châfi’i » [Wafayâtou l-A’yân]
Retrouvez la biographie de l’Imâm Al-Bayhaqi : ici .
– L’éminent savant du Salaf, l’Imâm des Moufassir, ‘Abdou l-Lâh Ibnou ‘Abbâs est un compagnon et il est le cousin du Prophète (صلى الله عليه وسلم). Il est décédé en 68 de l’Hégire (رضي الله عنه) c’est-à-dire il y a environ 1365 ans. Il est très connu pour sa science de l’interprétation (ta-wîl) du Qour-ân. Le Messager de Allah (صلى الله عليه وسلم) a fait une invocation en sa faveur, par sa parole : « Allâhoumma ‘allimhou l-hikmata wa ta-wîla l-kitâb » . Cela signifie : « Ô Allâh, apprends-lui la sagesse et l’interprétation du Livre » . Cette parole est rapportée par Al-Boukhâri, Ibnou Mâjah et d’autres encore en des termes différents. Le Hâfidh Ibnou l-Jawzi dans son livre Al-Majâlis a dit : «Et il n’y a pas de doute que Allâh a exaucé cette invocation du Messager» . Retrouvez sa biographie : ici .
– Ici, l’Imâm Ibnou ‘Abbâs explique que le Nom de Allâh “An-Noûr” signifie ” Al-Hâdî ” c’est-à-dire Celui Qui guide. Mais il n’est pas permis de croire que Allâh serait une lumière, qui est le contraire de l’obscurité car Il est Celui Qui crée la lumière.
– Cette citation est une des nombreuses preuves que les compagnons ont eu recours au ta-wîl (interprétation détaillée), contrairement à ce que prétendent certains ignorants qui interdisent cela.
– De nombreux savants ont tenu des propos similaires. Parmi eux :
Le Loughâwi Aboû Mansoûr Al-Azhari [ Rapporté par Ibn Mandhoûr ]
L’Imâm Al-Khattâbi [ Rapporté par Al-Bayhaqi ]
L’Imâm Al-Halîmi [ Rapporté par Al-Bayhaqi ]
L’Imâm Al-Bayhaqi qui a dit : « An-Noûr : Il est Celui Qui guide (Al-Hâdi), et il a été dit : Celui Qui crée la lumière (Al-Mounawwir)» [Al-I’tiqâd]
L’Imâm Al-Jouwayni [ Dans son livre Al-Irchâd ]
L’Imâm An-Nasafi [ Dans son livre Bahrou l-Kalâm ]
L’Imâm Ibnou l-Athîr [ Rapporté par Ibn Mandhoûr ]
Le Loughâwi Ibnou Mandhoûr [ Dans son ouvrage Liçânou l-‘Arab ]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Les mouchabbihah (assimilationnistes) ont dit : « Il est permis de dire que Allâh ta’âlâ est une lumière qui scintille » et Ahlou s-Sounnah wa l-Jamâ’ah ont dit : ceci n’est pas permis ! Car Allâh est Le Créateur de la lumière, et Il est Celui qui fait briller la lumière, et la lumière a une couleur, et si on dit qu’Il aurait une couleur cela impliquerait le tachbîh (la ressemblance avec les créatures) et Allâh ta’âlâ est exempt de la ressemblance avec les créatures. Et Ils (les mouchabbihah) ont argumenté avec la parole de Allâh ta’âlâ {الله نور السماوات والأرض} [qui a pour sens : ] « Allâh est noûr des cieux et de la terre » [et ils disent : ] Il s’est nommé lui-même « noûr ». Alors nous leur disons : Ibn ‘Abbâs (رضي الله عنهما) a dit : cela signifie Celui Qui illumine les cieux et la terre. Et d’autres ont dit : cela signifie Celui Qui guide les gens des cieux et de la terre. » [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {اللَّهُ نُورُ السَّمَاوَاتِ وَالْأَرْضِ} (Allâhou Noûrou s-samâwâti wa l-ard) : c’est-à-dire qu’Il est Celui qui a la lumière des cieux et de la terre, et ces deux lumières sont le soleil et la lune, le sens est : Il est Celui qui guide ceux qui y sont (c’est-à-dire dans les cieux et sur terre) par sa lumière » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
Le Mouhaddith Al-Harari qui a dit : « Sa parole ta’âlâ : [اللهُ نُورُ السَّمَوَاتِ وَالأَرْض] (Allâhou noûrou s-samâwâti wa l-ard) signifie que Allâh ta’âlâ est Celui Qui guide les gens des cieux et de la terre vers la lumière de la foi, rapporté par Al-Bayhaqi de ‘Abdou l-Lâh Ibnou l-‘Abbâs, que Allâh les agrée tous deux. Allâh ta’âlâ n’est pas “noûr” dans le sens de « lumière » » [As-Sirâtou l-Moustaqîm]
Et beaucoup d’autres.
– Allâh ta’âlâ dit dans Soûrat Al-An’âm : { وَجَعَلَ الظُّلُمَاتِ وَالنُّورَ } [ce qui a pour sens] : « Et Il (Allâh) créa les obscurités et la lumière ». Dès lors, comment serait-il possible qu’Il soit une lumière comme Ses créatures ?!
– Le fait de croire que Allâh serait une lumière (contraire de l’obscurité) est une croyance contraire à l’Islâm, et cette croyance fait sortir de l’islâm. [ voir à ce sujet la citation de l’Imâm An-Nâboulouçi : ici ].
– Le Chaykh, le Faqîh Aboû Chakoûr As-Sâlimi Al-Hanafi (m.~460 H.) a dit au sujet des Mouchabbihah (ceux qui ont pour croyance que Allâh ressemble aux créatures) : « Parmi eux certains disent que « Allâh ta’âlâ est une lumière qui scintille » et cela est de la mécréance car il y a le reniement d’un texte et il s’agit de la parole de Allâh ta’âlâ [qui a pour sens : ] {Rien n’est tel que Lui} » [Dans son livre At-Tamhîd fî Bayâni t-Tawhîd]
– Les savants ont dit que les corps sont de deux sortes : les corps palpables (que l’on peux toucher) et les corps impalpables (que l’on ne peux pas toucher). La lumière est un corps impalpable et Allâh n’est ni un corps palpable ni un corps impalpable. Les savants ont été unanimes sur le fait qu’attribuer le corps à Allâh est de la mécréance. [ Retrouvez des citations à ce sujet : ici ]
– Retrouvez d’autres paroles de savants ayant mentionné que Allâh n’est pas une lumière : ici .', 'al-hadi, allah, an-noor, an-nour'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'الله سبحانه وتعالى هادي أهل السماوات والأرض');

-- source: https://islamsunnite.net/le-hafidh-al-bayhaqi-declare-mecreant-ceux-qui-croient-que-allah-est-assis-sur-le-trone/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Hâfidh Al-Bayhaqi déclare mécréant ceux qui croient que Allâh est assis sur le trône', 'Les Chafi''ites', 'وأما البراءة من التشبيه بإثبات أنه ليس بجوهر ولا عرض فلأن قوما زاغوا عن الحق فوصفوا الباري جل وعز ببعض صفات المحدثين ، فمنهم من قالك إنه جوهر، ومنهم من قال إنه جسم، ومنهم من أجاز أن يكون على العرش قاعدا كما يكون الملك على سريره وكل ذلك في وجوب اسم الكفر لقائله كالتعطيل والتشريك', '« Concernant la réfutation du tachbîh (c’est-à-dire la réfutation de l’assimilation de Allâh à Ses créatures) il est confirmé que Allâh n’est ni une substance (jawhar) ni une caractéristique des substances (‘arad). En effet, il y a des gens qui se sont écartés de la vérité en attribuant au créateur Jalla wa ‘azz des caractéristiques propres à ce qui entrent en existence.', '', 'Dans son livre « Chou’abou l-Îmân » le Hâfidh Al-Bayhaqi a dit :
Il y a parmi eux ceux qui ont dit qu’Il est ta’âlâ une substance (jawhar). Il y a également parmi eux ceux qui ont dit qu’il est un corps (jism) et d’autres ont dit qu’il est possible qu’Il soit assis sur un trône, tout comme un roi est sur son lit. Toutes ces paroles entraînent l’attribution de la mécréance pour celui qui les dit, tout comme c’est le cas de celui qui fait preuve de négationnisme ou d’association. »
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence), le Ousoûli (spécialiste des fondements) Aboû Bakr Ahmad Ibnou l-Houçayn Al-Bayhaqi, est né en 384 et il est décédé en 458 de l’Hégire (رحمه الله), c’est-à-dire il y a presque 1000 ans. Il fait partie des plus grands savants du hadîth, et il est de l’école de jurisprudence Châfi’ite.
Ibnou l-Jawzi a dit à son sujet : « Il n’avait pas d’égal à son époque dans la mémorisation et la grande maîtrise [des sciences], il est l’auteur de bons ouvrages, il maîtrisait aussi bien la science du Hadîth, que la jurisprudence (Fiqh) et les fondements (Ousoûl), et il compte parmi les plus grands compagnons de [l’Imâm] Al-Hâkim Abî ‘Abdi l-Lâh (m.405 H) » [Al-Mountadham]
Ibnou l-Athîr a dit de lui : « Il était un savant dans le Hadîth et dans la jurisprudence (Fiqh) et il est l’auteur de nombreux ouvrages qui démontrent ses nombreux mérites » [Al-Loubâb] et il a dit de lui également : « Il était un Imâm dans le Hadîth et dans la jurisprudence au sein du Madh-hab de l’Imâm Ach-Châfi’i et il est l’auteur à ce sujet de différents ouvrages » [Al-Kâmil]
Le Hâfidh Salâhou d-Dîn Al-‘Alâ-i a dit à propos de lui : « Personne n’est venu après Al-Bayhaqi et Ad-Dâraqoutni qui les égale ou qui se rapproche de leur niveau [dans la science du Hadîth]» . [Al-Wachyou l-Mou’am]
Adh-Dhahabi a dit de lui : « Il est le Hâfidh (spécialiste de la science du Hadîth), l’illustre savant (‘Allâmah), le digne de confiance, le spécialiste de la jurisprudence (Faqîh), Chaykhou l-Islâm » , il disait également à son sujet : « Si l’Imâm Al-Bayhaqi auvait voulu fonder sa propre école (Madh-hab) dans laquelle il réalise son ijtihâd (effort de recherche) il aurait été capable de cela vu l’abondance de sa science, et sa connaissance des divergences» [Siyar A’lâmi n-Noubalâ]
Tâjou d-Dîn As-Soubki a dit à son sujet : « L’Imâm Al-Bayhaqi était l’un des Imâm des musulmans, quelqu’un qui appelait à s’accrocher fermement à la religion, un éminent spécialiste de la jurisprudence (Faqîh), un grand Hâfidh (spécialiste du Hadîth), un spécialiste des fondements (Ousoûli) intelligent, un ascète pieux, un fervent adorateur de Allâh, il se dressait pour soutenir le Madh-hab (c’est-à-dire le Madh-hab de l’Imâm Ach-Châfi’i) dans les fondements et dans les ramifications, il était une montagne de parmi les montagnes de science » [At-Tabaqât]
Ibnou Kathîr a dit à propos de lui : « Il n’avait pas de semblable à son époque dans la maîtrise [des sciences], la mémorisation, le Fiqh (la jurisprudence) et l’écriture [d’ouvrages], Il était un spécialiste de la jurisprudence (Faqîh), un spécialiste du Hadîth (Mouhaddith), un spécialiste des fondements (Ousoûli), il a étudié la science auprès de Al-Hâkim ‘Abdou l-Lâh An-Nayçâboûri , et il étudia également de nombreux sujets auprès d’autres savants, il a composé de nombreux ouvrages utiles qui n’ont pas eu de semblable » [Al-Bidâyah wa n-Nihâyah]
‘Abdou l-Ghaffâr Al-Fâriçi a dit de lui : « L’Imâm, le Hâfidh (spécialiste du Hadîth), Al-Faqîh (spécialiste de la jurisprudence), Al-Ousoûli (spécialiste des fondements), le pieux, le vertueux, celui qui n’avait pas d’équivalent à son époque dans la mémorisation, Il a excellé dans la maîtrise [des sciences] et la mémorisation » [Al-Mountakhab]
Ibnou ‘Abdi l-Hâdi a dit à son sujet : « L’Imâm, le Hâfidh (spécialiste du Hadîth), l’illustre savant, le Chaykh de Khourâçân » [Tabaqât ‘oulamâ-i l-Hadîth]
Ibn Khallikân a dit de lui : « Il était celui qui soutenait le plus la voie de l’Imâm Ach-Châfi’i » [Wafayâtou l-A’yân]
Retrouvez la biographie de l’Imâm Al-Bayhaqi : ici .
– Ici, il rejette la croyance du tachbîh, c’est-à-dire de l’assimilation de Allâh à Ses créatures. Il confirme que Allâh n’est pas un corps, qu’Il n’est pas une substance (jawhar), ni une caractéristique des substance (‘arad).
– Ensuite, il confirme que celui qui croit que Allâh serait un corps ou une substance, ou qui croit que Allâh s’assoit sur le Trône est mécréant. Et les savants musulmans sont unanimes sur ce jugement.
– Ainsi l’istiwâ de Allâh sur le trône n’est pas une position assise, ni un établissement dans un endroit, tout comme l’a dit l’Imâm Al-Bayhaqi : « Il faut savoir que l’istiwâ de Allâh soubhânahou wa ta’âlâ n’est pas interprété par le fait de se redresser après avoir été courbé, ni par le fait de s’établir dans un endroit, ni de toucher quelque chose de Sa création. On dit au contraire que Allâh istawâ ‘ala l-‘arch comme cela est rapporté, sans comment et sans « où » [c’est-à-dire sans endroit]. » [ Retrouvez l’article : ici ]
– Egalement l’Imâm Al-Bayhaqi rapporte dans son livre « Al-Asmâ-ou wa s-Sifât » de l’Imâm Al-Khattâbi qu’il a dit : « Lorsque les musulmans disent « Allâh istawâ sur le Trône (‘arch) » le sens n’est pas que Allâh serait en contact avec lui, ni qu’Il l’aurait pris comme endroit, ni que Allâh serait localisé dans une des directions, en effet Allâh est différent de la totalité de Ses créatures et cela (l’istiwâ) est cité dans les Textes. Nous le mentionnons à ce titre tout en niant le comment (al-kayf) à Son sujet car rien n’est tel que Allâh et Il est Celui Qui entend et Qui voit » [ Retrouvez l’article : ici ]
– Ainsi, de nombreux savants ont confirmé que le fait d’attribuer le corps à Allâh constitue de la mécréance. Parmi eux :
L’Imâm ‘Ali Ibnou Abî Tâlib [ voir : ici ]
L’Imâm Aboû Hanîfah [ voir : ici ]
L’Imâm Mâlik [ voir : ici ]
L’Imâm Ach-Châfi’i [ voir : ici ] et [ voir : ici ]
L’Imâm Ahmad Ibnou Hanbal [ voir : ici ]
L’Imâm Al-Ach’ari [ voir : ici ] et [ voir : ici ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ voir : ici ]
L’Imâm Aboû Mansoûr Al-Baghdâdi [ voir : ici ]
L’Imâm Ibnou Battâl (449 H.)
L’Imâm Al-Bayhaqi [voir ci-dessus]
L’Imâm Al-Ghazâli qui rapporte également l’unanimité [ voir : ici ]
L’Imâm Fakhrou d-Dîn Ar-Râzi [ voir : ici ]
L’Imâm An-Nawawi (676 H.)
L’Imâm Al-Mawsili [ voir : ici ]
L’Imâm An-Naçafi (710 H.) [ voir : ici ]
L’Imâm Safiyyou d-Dîn Al-Hindi (715 H.)
Le Chaykh Ibnou Amîr Al-Hajj Al-Hanafi (733 H.)
Le Chaykh Mahmôud Al-Qoûnawi Al-Hanafi (771 H.)
L’Imâm Taqiyyou d-Dîn Al-Hisni (829 H.)
Le Chaykh ‘Alâ-ou d-Dîn Al-Boukhâri qui rapporte l’unanimité [ voir : ici ]
L’Imâm As-Souyoûti [ voir : ici ]
Le Chaykh Ibn Hajar Al-Haytami [ voir : ici ]
Le Chaykh Al-Mounâwi [ voir : ici ]
Le Chaykh Mouhammad Mayyârah (1072 H.)
Le Chaykh Ibn Balbân [ voir : ici ]
L’Imâm Al-Bayâdi (1098 H.)
L’Imâm Abdou l-Ghani An-Nâboulouçi [ voir : ici ]
Le Chaykh ‘Abdou l-Lâh Ibn Houçayn Al-‘Alawi (1272 H.)
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ voir : ici ]
Le Chaykh Salîm Al-Bichri Al-Azhari (1335 H.)
Le Chaykh Al-Marighni Az-Zaytoûni qui mentionne l’unanimité [ voir : ici ]
L’Imâm Al-Kawthari [ voir : ici ]
Le Chaykh Mehmed Zâhid Kotku [ voir : ici ]
Le Mouhaddith Mouhammad Yâçîn Al-Fâdâni (1410 H.)
Le Mouhaddith Al-Harari (1429 H.)
Et beaucoup d’autres…
– De nombreux savants ont confirmé que le fait de croire que Allâh serait assis sur le trône est une croyance qui constitue également de la mécréance. Parmi eux :
L’Imâm Ach-Châfi’i tout comme le rapporte Al-Qourachi qui mentionne d’ailleurs que cela fait l’objet de l’unanimité [ voir : ici ] et Ibnou Ar-Rif’ah [ voir : ici ] ;
L’Imâm An-Nawawi qui a dit : « Et s’il dit “Allâh s’est levé pour la justice” il est devenu mécréant, ou s’il dit “Allâh s’est assis pour la justice” il est devenu mécréant » [Rawdatou t-Tâlibîn / Kitâb Ar-Riddah] et Ibn Noujaym Al-Hanafi a tenu avec exactitude les mêmes propos dans son livre « Al-Bahrou r-Râ-iq », et également Adh-Dhahabi dans “Ith-hâfou l-Akâbir fî tahdhîbi kitâbi l-Kabâ-ir” ;
L’Imâm Al-Kawthari qui mentionne l’unanimité [ voir : ici ] et [ voir : ici ];
Le Chaykh Mahmoûd As-Soubki Al-Azhari rapporte également l’unanimité [ voir : ici ] ;
Et beaucoup d’autres …
– Consultez également les articles sur le thème : Allâh n’est pas sur le trône : ici
– Consultez également les articles sur le thème : Attribuer l’endroit ou la direction à Allâh est de la mécréance : ici', '3arch, al-bayhaqiyy, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وأما البراءة من التشبيه بإثبات أنه ليس بجوهر ولا عرض فلأن قوما زاغوا عن الحق فوصفوا الباري جل وعز ببعض صفات المحدثين ، فمنهم من قالك إنه جوهر، ومنهم من قال إنه جسم، ومنهم من أجاز أن يكون على العرش قاعدا كما يكون الملك على سريره وكل ذلك في وجوب اسم الكفر لقائله كالتعطيل والتشريك');

-- source: https://islamsunnite.net/le-hafidh-al-iraqi-a-compose-un-ouvrage-deloge-concernant-le-mawlid/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Mawlid du prophète', '''Iraqi (m.806H)', 'إبليس رن أربع رنات رنة حين لعن ورنة حين أهبط ورنة حين ولد رسول الله صلى الله عليه و سلم ورنة حين أنزلت فاتحة الكتاب', 'Iblîs a poussé un cri terrible à quatre reprises : lorsqu’il a été maudit, lorsqu’il a été chassé du paradis, lorsque le prophète (صلى الله عليه و سلم) est né et lorsque [Soûrat] Al-Fâtihah a été descendue par révélation', '', 'Le Hâfidh Al-‘Irâqi a écrit un livre dans lequel il fait l’éloge du Mawlid ; il l’a intitulé « Al-Mawridou l-Haniyy fi l-Mawlid as-Saniyy ». Dans cet ouvrage il rapporte d’après le Hâfidh Baqiyy Ibnou Makhlad, l’élève de l’Imâm Ahmad Ibn Hambal :
Informations utiles:
– L’Imâm, le Hâfidh (spécialiste de la science du hadîth) Abou-l Fadl Zaynou d-Dîn ‘Abdou r-Rahîm Ibnou l-Houçayn Al-‘Irâqi Al-Misri Ach-Châfi’i est né en 725 et il est décédé en 806 de l’Hégire (رحمه الله) c’est à dire il y a environ 630 ans. C’est un grand savant qui est très connu pour sa maîtrise de la science du hadîth. Il est connu comme étant le chaykh des houffâdh (spécialistes de la science du hadîth). Il était l’un des principaux chaykh de l’Imâm Ibn Hajar Al-‘Asqalâni.
– Il est l’auteur de ce livre qu’il a intitulé « Al-Mawridou l-Haniyy fi l-Mawlid as-Saniyy » dans lequel il fait l’éloge du Mawlid An-Nabawi.
– Nous avons choisi de citer cet extrait de l’ouvrage afin de vous montrer la similitude entre ce qu’a fait Iblîs (le diable) lors de la naissance du prophète (صلى الله عليه و سلم), et ce que font certains partisans de Iblîs, de nos jours à l’approche du Mawlid.
– Tout comme Iblîs a poussé un grand cri lors de la naissance honoré du prophète (صلى الله عليه و سلم) , chaque année nous entendons à l’approche du Mawlid les opposants à cette commémoration pousser des cris, suivant les traces de Chaytân, afin d’empêcher les musulmans d’y participer.
– Le Mawlid compte de parmi les bonnes innovations que les savants de l’Islâm ont approuvé. Parmi eux :
Le Chaykh de l’Imâm An-Nawawi, le Hâfidh Aboû Châma [ Al-Bâ’ithou ‘alâ Inkâri l-bida’ wa l-hawâdith ],
L’Imâm As-Souyoûti [ Housnou l-Maqsid fi ‘Amali l-Mawlid ],
L’Imâm Ibn Hajar Al-‘Asqalâni [ Rapporté par As-Souyoûti ],
Le Hafîdh As-Sakhawi [ Al-Ajwibatou l-Mardiyyah ],
Le Chaykh Ibn Hajar Al-Haytami qui rapporte l’unanimité [ Rapporté par le Moufassir Ismâ’îl Haqqî ],
Et beaucoup d’autres. Retrouvez de nombreuses paroles de savants concernant le Mawlid : ici .
– En quoi consiste le Mawlid ?
Du fait de rassembler les musulmans dans le bien : ceci est un bien dans la religion.
De récitation du Qour-ân : ceci est un bien dans la religion.
De Dhikr (évocation de Allâh) : ceci est un bien dans la religion.
D’éloge du prophète (صلى الله عليه وسلم) : ceci est un bien dans la religion.
De cours et conférences religieuses : ceci est un bien dans la religion.
Du fait de s’inciter mutuellement à la piété : ceci est un bien dans la religion.
Distribuer des aumônes (nourritures et boissons) : ceci est un bien dans la religion.
D’invocations à l’égard de Allâh : ceci est un bien dans la religion.
– L’Imâm As-Souyoûti a d’ailleurs résumé tout cela en disant : « la commémoration de la naissance (Mawlid) à l’origine consiste en le rassemblement des gens, la récitation de ce qu’il est possible de réciter du Qour-ân, la narration des nouvelles rapportées au sujet du début de l’histoire du Prophète et ce qui est advenu comme signes à sa naissance, à la suite de quoi il leur est présenté de la nourriture qu’ils consomment puis partent sans rien ajouter à cela. Ceci compte parmi les bonnes innovations pour laquelle celui qui la fait sera récompensé, et ce, pour ce que cela comporte comme glorification du degré du Prophète (صلى الله عليه وسلم), et comme manifestation de joie et de réjouissance pour sa noble naissance » [ Housnou l-Maqsid fî ‘Amali l-Mawlid ].
– Ainsi le Mawlid compte de parmi les bonnes innovations, et le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ] .
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ].
– Article à consulter : Les wahhabites interdisent le Mawlid du prophète mais innovent une semaine de fête pour Mouhammad Ibn ‘Abdi l-Wahhâb .', '3oulama, al mawlid al heni fi al mawlid al sani, al-iraqi, al-mawrid al-hani fi al-mawlid al-sani'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'إبليس رن أربع رنات رنة حين لعن ورنة حين أهبط ورنة حين ولد رسول الله صلى الله عليه و سلم ورنة حين أنزلت فاتحة الكتاب');

-- source: https://islamsunnite.net/hafidh-sakhawi-eloge-mawlid-imam-salihi-chami/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La célébration du Mawlid.', 'Chami', 'قال الحافظ أبو الخير السخاوي رحمه الله تعالى في فتاويه : عمل المولد الشريف لم ينقل عن أحد من السلف الصالح في القرون الثلاثة الفاضلة، وإنما حدث بعد، ثم لا زال أهل الإسلام في سائر الأقطار والمدن الكبار يحتفلون في شهر مولده صلى الله عليه وسلم بعمل الولائم البديعة، المشتملة على الأمور البهجة الرفيعة، ويتصدقون في لياليه بأنواع الصدقات، ويظهرون السرور ويزيدون في المبرات، ويعتنون بقراءة مولده الكريم، ويظهر عليهم من بركاته كل فضل عميم', 'Le Hâfidh Abou l-Khayr As-Sakhâwi, que Allâh ta’âlâ lui fasse miséricorde, a dit dans ses fatâwâ : La Commémoration du Mawlid Honoré n’a été rapporté d’aucun des pieux prédécesseurs des trois premiers siècles de mérites, mais elle a été instauré après, et les musulmans dans les différentes régions et grandes villes le fêtent pendant le mois de Sa Naissance (صلى الله عليه وسلم), et font les festins originaux comportant la bonne joie, ils donnent différentes sortes d’aumônes durant ses nuits, ils expriment la joie, ils augmentent en bienfaisance, et ils s’appliquent à lire le récit de sa Noble Naissance, ainsi tous les Mérites largement répandus rejaillissaient sur eux grâce à ses Bénédictions', '', 'Dans son livre « Souboul al-Houdâ wa r-Rachad fî sîrati khayri l-‘Ibâd » l’Imâm Mouhammad Ibn Yoûçouf as-Sâlihi ach-Châmi a dit :
Informations utiles :
– L’Imâm, le Mouhaddith (transmetteur du hadîth) Mouhammad Ibn Yoûçouf as-Sâlihi ad-Dimachqi ach-Châmi Al-Misri Ach-Châfi’i est décédé en 942 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 500 ans.
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth) Chamsou d-Dîn Mouhammad Ibnou ‘Abdi r-Rahmân As-Sakhâwi est né en 831 au Caire et il est décédé en 902 de l’Hégire à Médine (رحمه الله) c’est-à-dire il y a environ 530 ans. Il était un grand savant reconnu dans la science du hadîth et il était du madhab (école de jurisprudence) Chafi’ite. Il a eu de parmi ses Chaykh l’Imâm Ibnou Hajar Al-‘Asqalâni.
– Ici, il fait l’éloge de la commémoration du Mawlid du Prophète (صلى الله عليه وسلم).
– L’Imâm As-Sakhâwi confirme la voie de Ahlou s-Sounnah sur le fait que le Mawlid fait partie des bonnes innovations (bid’ah haçanah), et qu’il y a du mérite et des bénédictions à l’accomplir.
– L’Imâm As-Sakhâwi mentionne cette citation dans son propre ouvrage [ Al-Ajwibatou l-Mardiyyah ] et d’autres savants rapportent également cela de lui [ Rapporté par le Chaykh Ibn Zayni Dahlân ] et [ Rapporté par le Mouhaddith Al-Harari ]. Cela a également été rapporté par le centre de Fatwâ de l’Université Islamique Al-Azhar .
– En quoi consiste le Mawlid ?
Du fait de rassembler les musulmans dans le bien : ceci est un bien dans la religion.
De récitation du Qour-ân : ceci est un bien dans la religion.
De Dhikr (évocation de Allâh) : ceci est un bien dans la religion.
D’éloge du prophète (صلى الله عليه وسلم) : ceci est un bien dans la religion.
De cours et conférences religieuses : ceci est un bien dans la religion.
Du fait de s’inciter mutuellement à la piété : ceci est un bien dans la religion.
Distribuer des aumônes (nourritures et boissons) : ceci est un bien dans la religion.
D’invocations à l’égard de Allâh : ceci est un bien dans la religion.
– L’Imâm As-Souyoûti a d’ailleurs résumé tout cela en disant : « la commémoration de la naissance (Mawlid) à l’origine consiste en le rassemblement des gens, la récitation de ce qu’il est possible de réciter du Qour-ân, la narration des nouvelles rapportées au sujet du début de l’histoire du Prophète et ce qui est advenu comme signes à sa naissance, à la suite de quoi il leur est présenté de la nourriture qu’ils consomment puis partent sans rien ajouter à cela. Ceci compte parmi les bonnes innovations pour laquelle celui qui la fait sera récompensé, et ce, pour ce que cela comporte comme glorification du degré du Prophète (صلى الله عليه وسلم), et comme manifestation de joie et de réjouissance pour sa noble naissance » [ Housnou l-Maqsid fi ‘Amali l-Mawlid ].
– Le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ] .
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ].
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .', '3oulama, al-ajwibatou l-mardiyyah, allah, anniversaire'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال الحافظ أبو الخير السخاوي رحمه الله تعالى في فتاويه : عمل المولد الشريف لم ينقل عن أحد من السلف الصالح في القرون الثلاثة الفاضلة، وإنما حدث بعد، ثم لا زال أهل الإسلام في سائر الأقطار والمدن الكبار يحتفلون في شهر مولده صلى الله عليه وسلم بعمل الولائم البديعة، المشتملة على الأمور البهجة الرفيعة، ويتصدقون في لياليه بأنواع الصدقات، ويظهرون السرور ويزيدون في المبرات، ويعتنون بقراءة مولده الكريم، ويظهر عليهم من بركاته كل فضل عميم');

-- source: https://islamsunnite.net/le-chaykh-abdoullah-al-harari-eloge-du-mawlid/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Chaykh ‘Abdou l-Lâh Al-Harari fait l’éloge du Mawlid', 'Harari', 'فصل في الاحتفال بالمولد الشريف، وذكر أدلة جوازه : من البدع الحسنة الاحتفال بمولد رسول الله صلى الله عليه وسلم، فهذا العمل لم يكن في عهد النبي صلى الله عليه وسلم ولا فيما يليه، إنما أحدث في أوائل القرن السابع للهجرة، وأول من أحدثه ملك إربل وكان عالمًا تقيًّا شجاعًا يقال له المظفر. جمع لهذا كثيرًا من العلماء فيهم من أهل الحديث والصوفية الصادقين. فاستحسن ذلك العمل العلماء في مشارق الأرض ومغاربها، منهم الحافظ أحمد بن حجر العسقلاني، وتلميذه الحافظ السخاوي، وكذلك الحافظ السيوطي وغيرهم', '« Chapitre de la commémoration de la naissance honorée (al-mawlid ach-charîf) et l’évocation des preuves de son caractère permis :', '', 'Dans son livre « Ar-Rawâ-ihou z-Zakiyyah fî Mawlidi khayri l-Bariyyah » (les senteurs pures dans la commémoration de la naissance de la meilleur des créatures), le Chaykh ‘Abdoul-Lâh Al-Harari a dit :
Parmi les bonnes innovations, il y a la célébration de la naissance (Mawlid) du Prophète (صلى الله عليه وسلم). Cette pratique n’existait pas à l’époque du Prophète (صلى الله عليه وسلم) ni à l’époque qui l’a suivie. Mais elle fut innovée aux débuts du septième siècle de l’Hégire. Le premier à l’avoir innovée fut le roi de Irbil. Il était savant, pieux, courageux et il est surnommé Al-Moudhaffar. Il réunit pour cela beaucoup de savants, parmi lesquels il y avait des gens du hadîth et des soufis véridiques. Les savants des orients de la terre et de ses occidents ont approuvé cela. Il y a parmi eux le Hâfidh Ahmad Ibnou Hajar Al-‘Asqalâni et son élève le Hâfidh As-Sakhâwi ainsi que le Hâfidh As-Souyoûti et d’autres encore. »
Informations utiles :
– Al-‘Allâmah (l’illustre savant), l’Imâm, le Mouhaddith (transmetteur du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chaykh ‘Abdoul-Lâh Al-Harari Ach-Châfi’i Ach-Chaybi Al-‘Abdari connu sous le nom de Al-Habachi est décédé en 1429 de l’Hégire (رحمه الله). Il était un grand défenseur de la croyance de Ahlou s-Sounnah. De nombreux savants et responsables d’institutions islamiques ont fait son éloge. Parmi eux :
Le Président de l’Université et de l’Institut islamique “Az-Ziyâdah” à Jakarta en Indonésie, Habîb Al-Miçâwî, a dit : « J’ai pris connaissance des livres du Mouhaddith, le Chaykh respectable ‘Abdoul-Lâh Al-Harari Ach-Chaybi, que Allâh le préserve, surtout les livres “Al-Maqalatou s-Sounniyyah” et “Sarîhou l-Bayân”, j’ai trouvé en lui un savant, un jurisconsulte, versé dans la science et le Hadîth, je témoigne qu’il est unique à son époque et son ère et qu’il est le Moujaddid de ce siècle » . (c’est-à-dire celui qui revitalise la science de la religion).
Le Mouhaddith des contrées marocaines, le Chaykh ‘Abdou l-‘Azîz Al-Ghoumâri a dit à son sujet : « Le Chaykh ‘Abdou l-Lâh est juste (‘adl)… Il a des ouvrages dignes de considération et des livres utiles dans l’explication des Lois de Allâh pour les musulmans, qui montrent bien qu’il fait partie des religieux qui ont une grandeur d’âme et qui œuvrent pour la religion de Allâh. Il n’est donc pas permis, après tout cela, qu’on le calomnie dans sa religion, qu’on le discrédite dans sa croyance ou qu’on récuse sa justesse » .
Le Docteur ‘Oumar Hâchim, qui était président de l’université Al-Azhar en Egypte a dit de lui : « Le Mouhaddith, le Chaykh ‘Abdou l-Lâh Al-Harari est illustre par sa science et sa piété » .
Le Chaykh ‘Abdou r-Rahmân Kanj Koya Tankal Al-Boukhâri, le Juge de la province de “Yalal”, doyen de la faculté “As-Sayyid Madani” et guide de l’Association des savants de Ahlou-s-Sounnah wal-Jamâ’ah dans l’ensemble de l’Inde : « J’ai été très heureux de connaître le Chaykh ‘Abdou l-Lâh Al-Harari au travers de ses ouvrages et de ses disciples. Ainsi, j’ai pu me rendre compte personnellement de l’éminence de cet homme ; j’ai trouvé en lui le savant érudit, le Mouhaddith, dont il est rare de trouver le pareil, et le jurisconsulte Moujaddid qui combat la bid’ah (la mauvaise innovation) et qui soutient la Sounnah » .
Le Chaykh Mouhammad Châh Al-Hâmidi Al-Houçayni a dit : « Certe, le Chaykh ‘Abdou l-Lâh est un Imâm dans la ‘Aqîdah (croyance), le Fiqh ( jurisprudence), la langue arabe, le Hadîth, et il est rare de trouver semblable à lui dans cette époque. Et ceci n’est pas uniquement mon propre témoignage mais aussi le témoignage de mon père Al-‘Allâmah (l’illustre savant) le Chaykh Qoutbou d-Dîn Al-Hâmidi Al-Houçayni (rahimahou l-Lâh) le Moufti de Deir ez-Zor, et c’est également le témoignage de beaucoup des plus grands de parmi les gens de science de la région du Châm et d’ailleurs »
Le Chaykh Mouhammad Dhafar (Dâr al-‘ouloûm Amjadiyyah de Karachi au Pakistan) a dit : « L’illustre savant érudit (Al-‘Allâmah al-Kabîr) Al-Hâfidh Al-Mouhaddith (spécialiste de la science du hadîth) l’éducateur et l’honorable Chaykh Abdoullâh Al-Harari connu par Al-Habachi suit le Madh-hab Al-Haqq (l’école de droiture) et marche sur la voie droite, celle des Sahâbah du Messager de Allâh (صلى الله عليه وسلم) , des prédécesseurs vertueux ainsi que leurs successeurs. Puisse Allâh leur accorder à tous encore davantage d’agrément et d’approbation. Et il est un Imâm (guide et référence) très grand, et il est une référence en la religion (houjjatou fi d-Dîn). Il est pieux et vertueux, véridique et sincère. » .
Le Chaykh Mouhammad Noûrou d-Dîn Al-Banjari Al-Makki (l’un des Chouyoukh d’Indonésie) a dit de lui : « Concernant la science il est difficile de trouver quelqu’un de semblable au Chaykh ‘Abdou l-Lâh Al-Harari ou quelqu’un qui se rapproche de son niveau » .
Le Chaykh Indonésien, Hajj Mouhammad Châfi’i Hadhâmi, le président de l’assemblée des savants de Jakarta (capitale Indonésienne) a écrit une lettre d’éloge en sa faveur dans laquelle il a dit : « Il est le Chaykh, Al-‘Allâmah (l’illustre savant) ‘Abdou l-Lâh Ibnou Mouhammad Ach-Chaybi Al-‘Abdari Al-Harari connu sous le nom de Al-Habachi, qui est un vérificateur scrupuleux, minutieux, et qui compose avec un style synthétique. Que Allâh augmente le nombre de gens semblable à lui. Que Allâh le récompense en bien pour nous et pour les musulmans, pour ses œuvres dans sa réprimande des bid’ah [mauvaises innovations] et l’élévation de la sounnah prophétique »
– Ici, le Chaykh ‘Abdoul-Lâh Al-Harari confirme le fait que la commémoration du Mawlid rentre dans le cadre des bonnes innovations qui ont été acceptées par les savants de l’Islâm. Parmi eux il mentionne :
le Hâfidh Ibnou Hajar Al-‘Asqalâni [ voir : ici ],
le Hâfidh As-Sakhâwi [ voir : ici ]
et le Hâfidh As-Souyoûti [ voir : ici ].
– En quoi consiste le Mawlid ?
Du fait de rassembler les musulmans dans le bien : ceci est un bien dans la religion.
De récitation du Qour-ân : ceci est un bien dans la religion.
De Dhikr (évocation de Allâh) : ceci est un bien dans la religion.
D’éloge du prophète (صلى الله عليه وسلم) : ceci est un bien dans la religion.
De cours et conférences religieuses : ceci est un bien dans la religion.
Du fait de s’inciter mutuellement à la piété : ceci est un bien dans la religion.
Distribuer des aumônes (nourritures et boissons) : ceci est un bien dans la religion.
D’invocations à l’égard de Allâh : ceci est un bien dans la religion.
– L’Imâm As-Souyoûti a d’ailleurs résumé tout cela en disant : « la commémoration de la naissance (Mawlid) à l’origine consiste en le rassemblement des gens, la récitation de ce qu’il est possible de réciter du Qour-ân, la narration des nouvelles rapportées au sujet du début de l’histoire du Prophète et ce qui est advenu comme signes à sa naissance, à la suite de quoi il leur est présenté de la nourriture qu’ils consomment puis partent sans rien ajouter à cela. Ceci compte parmi les bonnes innovations pour laquelle celui qui la fait sera récompensé, et ce, pour ce que cela comporte comme glorification du degré du Prophète (صلى الله عليه وسلم), et comme manifestation de joie et de réjouissance pour sa noble naissance » [ voir l’article : ici ].
– Au début de son ouvrage le Chaykh Al-Harari donne une explication détaillée au sujet des différentes sortes d’innovations [ retrouvez l’article : ici ].
– Le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » (Rapporté par Mouslim) [ Retrouvez l’article : ici ] .
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ]
– Chaykhou l-Islâm, Amîr al-Mouminîn fi l-hadîth (le Prince des croyants dans la science du hadîth) Chihâb ad-Dîn Abou l-Fadl Ahmad Ibnou ‘Ali Ibnou Hajar Al-‘Asqalâni est né en 773 et il est décédé en 852 de l’hégire (رحمه الله) c’est-à-dire il y a plus de 590 ans. C’est un très grand spécialiste de la science du hadîth qui a écrit de nombreux ouvrages. Il est du madh-hab (Ecole de jurisprudence) de l’Imam Ach-Châfi’i. Son livre « Fath Al-Bârî » est incontournable, c’est le plus célèbre commentaire du Sahîh Al-Boukhâri. Consultez sa biographie : ici .
– Le Hâfidh (spécialiste de la science du Hadîth) Chamsou d-Dîn Mouhammad Ibnou ‘Abdi r-Rahmân As-Sakhâwi est né en 831 au Caire et il est décédé en 902 de l’Hégire à Médine (رحمه الله) c’est-à-dire il y a environ 530 ans. Il était un grand savant reconnu dans la science du hadîth et il était du madhab (école de jurisprudence) Chafi’ite. Il a eu de parmi ses Chaykh l’Imâm Ibnou Hajar Al-‘Asqalâni.
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Moufassir (spécialiste de l’exégèse), le Faqîh (spécialiste de la jurisprudence), Abou l-Fadl ‘Abdou r-Rahmân ibnou Abî Bakr Jalâlou d-Dîn as-Souyoûti est un grand savant Chafi’ite reconnu par toute la communauté musulmane. Il est né en 849 au Caire et il est décédé en 911 de l’hégire au Caire (رحمه الله) c’est-à-dire il y a environ 520 ans. Certains l’ont désigné comme le moujaddid du 10ème siècle de l’hégire (c’est-à-dire celui qui revitalise la science de la religion).
– Le Savant Sunnite, le Sultân attaché à la religion, le Gouverneur de Irbil, l’éminent Roi Al-Moudhaffar Aboû Sa’îd Koûkabri Ibnou Zaynou d-Dîn ‘Ali Ibnou Baktakîn est né 549 et il est décédé en 630 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 800 ans. Il était très proche du grand Moujâhid Salâhou d-Dîn Al-Ayyoûbi (رحمه الله), le Roi Al-Moudhaffar était d’ailleurs marié avec la sœur du Sultân Salâhou d-Dîn. Nombreux sont les savants qui ont fait son éloge.', 'abache, abaches, abachi, abachites'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فصل في الاحتفال بالمولد الشريف، وذكر أدلة جوازه : من البدع الحسنة الاحتفال بمولد رسول الله صلى الله عليه وسلم، فهذا العمل لم يكن في عهد النبي صلى الله عليه وسلم ولا فيما يليه، إنما أحدث في أوائل القرن السابع للهجرة، وأول من أحدثه ملك إربل وكان عالمًا تقيًّا شجاعًا يقال له المظفر. جمع لهذا كثيرًا من العلماء فيهم من أهل الحديث والصوفية الصادقين. فاستحسن ذلك العمل العلماء في مشارق الأرض ومغاربها، منهم الحافظ أحمد بن حجر العسقلاني، وتلميذه الحافظ السخاوي، وكذلك الحافظ السيوطي وغيرهم');

-- source: https://islamsunnite.net/hafidh-as-sakhawi-leloge-du-mawlid/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le mawlid est une bonne innovation', 'Sakhawi', 'سئلت عن أصل عمل المولد الشريف. فأجبت: لم ينقل عن أحد من السلف الصالح في القرون الثلاثة الفاضلة، وإنما حدث بعد، ثم ما زال أهل الإسلام في سائر الأقطار والمدن العظام يحتفلون في شهر مولده صلى الله عليه وسلم وشرف وكرم يعملون الولائم البديعة المشتملة على الأمور البهجة الرفيعة، ويتصدقون في لياليه بأنواع الصدقات، ويظهرون السرور، ويزيدون في المبرات بل يعتنون بقراءة مولده الكريم وتظهر عليهم من بركاته كل فضل عميم', 'J’ai été interrogé sur l’origine de la commémoration de la naissance honoré (al-Mawlid ach-Charîf), et j’ai répondu : cela n’a été rapporté d’aucun des pieux prédécesseurs des trois premiers siècles de mérites, mais il a été innové après, et les musulmans dans les différentes régions et grandes villes le fêtent pendant le mois de Sa Naissance que Allâh l’honore et l’élève davantage en degré, et font les festins originaux comportant la bonne joie, ils donnent différentes sortes d’aumônes durant ses nuits, ils expriment la joie, ils augmentent en bienfaisance, et ils s’appliquent à lire le récit de sa Noble Naissance, ainsi tous les Mérites largement répandus rejaillissaient sur eux grâce à ses Bénédictions', '', 'Dans ses Fatâwâ « Al-Ajwibatou l-Mardiyyah », le Hâfidh As-Sakhâwi a dit au sujet de la commémoration du Mawlid :
Informations utiles :
– Le Hâfidh (spécialiste de la science du Hadîth) Chamsou d-Dîn Mouhammad Ibnou ‘Abdi r-Rahmân As-Sakhâwi est né en 831 au Caire et il est décédé en 902 de l’Hégire à Médine (رحمه الله) c’est-à-dire il y a environ 530 ans. Il était un grand savant reconnu dans la science du hadîth et il était du madhab (école de jurisprudence) Chafi’ite. Il a eu de parmi ses Chaykh l’Imâm Ibnou Hajar Al-‘Asqalâni.
– Ici, il fait l’éloge de la commémoration du Mawlid du Prophète (صلى الله عليه وسلم).
– L’Imam As-Sakhâwi confirme la voie de Ahlou s-Sounnah sur le fait que le Mawlid fait partie des bonnes innovations (bid’ah haçanah), et qu’il y a du mérite et des bénédictions à l’accomplir.
– De nombreux savants ont mentionné sur cette citation de l’Imâm As-Sakhawi dans leurs ouvrages, parmi eux :
Le Moufti de La Mecque, le Chaykh Ibn Zayni Dahlân [As-Sîrah an-Nabawiyyah]
L’Imâm Mouhammad Ibn Yoûçouf as-Sâlihi ach-Châmi [Souboul al-Houdâ]
Le Mouhaddith Al-Harari [Ar-Rawâ-ihou z-Zakiyyah]
Cela a également été rapporté par le centre de Fatwâ de l’Université Islamique Al-Azhar .
– En quoi consiste le Mawlid ?
Du fait de rassembler les musulmans dans le bien : ceci est un bien dans la religion.
De récitation du Qour-ân : ceci est un bien dans la religion.
De Dhikr (évocation de Allâh) : ceci est un bien dans la religion.
D’éloge du prophète (صلى الله عليه وسلم) : ceci est un bien dans la religion.
De cours et conférences religieuses : ceci est un bien dans la religion.
Du fait de s’inciter mutuellement à la piété : ceci est un bien dans la religion.
Distribuer des aumônes (nourritures et boissons) : ceci est un bien dans la religion.
D’invocations à l’égard de Allâh : ceci est un bien dans la religion.
– L’Imâm As-Souyoûti a d’ailleurs résumé tout cela en disant : « la commémoration de la naissance (Mawlid) à l’origine consiste en le rassemblement des gens, la récitation de ce qu’il est possible de réciter du Qour-ân, la narration des nouvelles rapportées au sujet du début de l’histoire du Prophète et ce qui est advenu comme signes à sa naissance, à la suite de quoi il leur est présenté de la nourriture qu’ils consomment puis partent sans rien ajouter à cela. Ceci compte parmi les bonnes innovations pour laquelle celui qui la fait sera récompensé, et ce, pour ce que cela comporte comme glorification du degré du Prophète (صلى الله عليه وسلم), et comme manifestation de joie et de réjouissance pour sa noble naissance » [ Housnou l-Maqsid fi ‘Amali l-Mawlid ].
– Ainsi le Mawlid compte de parmi les bonnes innovations, et le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ]
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ].
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .
– Retrouvez de nombreuses paroles de savants concernant le Mawlid : ici .', '3oulama, al-ajwibatou l-mardiyyah, allah, anniversaire'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'سئلت عن أصل عمل المولد الشريف. فأجبت: لم ينقل عن أحد من السلف الصالح في القرون الثلاثة الفاضلة، وإنما حدث بعد، ثم ما زال أهل الإسلام في سائر الأقطار والمدن العظام يحتفلون في شهر مولده صلى الله عليه وسلم وشرف وكرم يعملون الولائم البديعة المشتملة على الأمور البهجة الرفيعة، ويتصدقون في لياليه بأنواع الصدقات، ويظهرون السرور، ويزيدون في المبرات بل يعتنون بقراءة مولده الكريم وتظهر عليهم من بركاته كل فضل عميم');

-- source: https://islamsunnite.net/le-qadi-abdil-wahhab-al-maliki-dit-quattribuer-lendroit-a-allah-est-de-la-mecreance-par-unanimite/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Qâdî ‘Abdil-Wahhâb Al-Mâliki dit qu’attribuer l’endroit à Allâh est de la mécréance par unanimité', 'Unanimité', 'ولا يجوز أن يثبت له كيفية لأن الشرع لم يرد بذلك، ولا أخبر النبي عليه السلام فيه بشىء، ولا سألته الصحابة عنه، ولأن ذلك يرجع إلى التنقل والتحول وإشغال الحيّز والافتقار إلى الأماكن وذلك يؤول إلى التجسيم وإلى قِدم الأجسام وهذا كفرعند كافة أهل الإسلام', 'Il n’est pas permis d’attribuer à Allâh le comment car ce n’est pas une chose parvenue dans la Loi. Le prophète (‘alayhi s-Salâm) n’a pas parlé de cela et les compagnons ne l’ont pas du tout interrogé à ce sujet. Et comme cela nécessite un déplacement, un changement, l’occupation d’un endroit, le besoin des endroits, ce qui entraîne l’attribution du corps et l’éternité des corps, ceci est de la mécréance selon tous les gens de l’Islâm.', '', 'Dans son commentaire sur la croyance de Mâlik As-Saghîr, le Qâdî ‘Abdil-Wahhâb Al-Baghdâdi Al-Mâliki a dit :
Informations utiles :
– Le Qâdî ‘Abdil-Wahhâb Ibnou ‘Ali Ibnou Nasr Al-Baghdâdi Al-Mâliki est né en 362 à Baghdâd et il est décédé en 422 de l’Hégire au Caire (رحمه الله), c’est-à-dire il y a plus de 1000 ans. C’est un des savants les plus connu de l’école de jurisprudence (madh-hab) Malikite.
Ibnou Farhoûn al-Mâliki a dit de lui : « Le Qâdî (Juge) Aboû Mouhammad est un des Imâm de l’école (malikite) […] Il avait une bonne réflexion, d’excellentes remarques, il était un grand chercheur, un défenseur de l’école, digne de confiance, un argument sans semblable, unique en son temps. » [Ad-Dîbâj]
– Ici, après avoir dit qu’il n’est pas permis d’attribuer le comment à Allâh, il confirme que le fait d’attribuer à Allâh le déplacement, le changement, l’occupation d’un endroit et le corps est de la mécréance selon tous les gens de l’Islâm. C’est-à-dire selon l’unanimité des musulmans.
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah].
– Le comment (al-kayf / al-kayfiyyah) c’est ce par quoi on décrit les créatures, c’est-à-dire les dimensions, le début, la fin, la couleur, l’endroit, la direction, la forme, le poids, la position assise, l’établissement, la proximité, la distance, le mouvement, le déplacement, le changement et tout ce qui fait partie des attributs des créatures. Allâh n’est pas concerné par cela.
– De nombreux savants ont confirmé que le fait d’attribuer le corps à Allâh constitue de la mécréance. Parmi eux :
L’Imâm ‘Ali Ibnou Abî Tâlib [ voir : ici ]
L’Imâm Aboû Hanîfah [ voir : ici ]
L’Imâm Mâlik [ voir : ici ]
L’Imâm Ach-Châfi’i [ voir : ici ] et [ voir : ici ]
L’Imâm Ahmad Ibnou Hanbal [ voir : ici ]
L’Imâm Al-Ach’ari [ voir : ici ] et [ voir : ici ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité comme nous l’avons vu ci-dessus ;
L’Imâm Aboû Mansoûr Al-Baghdâdi [ voir : ici ]
L’Imâm Ibnou Battâl (449 H.)
L’Imâm Al-Bayhaqi [ voir : ici ]
L’Imâm Al-Ghazâli qui rapporte également l’unanimité [ voir : ici ]
L’Imâm Fakhrou d-Dîn Ar-Râzi [ voir : ici ]
L’Imâm An-Nawawi (676 H.)
L’Imâm Al-Mawsili [ voir : ici ]
L’Imâm Ibnou Abî Jamrah (699 H.)
L’Imâm An-Naçafi (710 H.) [ voir : ici ]
L’Imâm Safiyyou d-Dîn Al-Hindi (715 H.)
Le Chaykh Ibnou Amîr Al-Hajj Al-Hanafi (733 H.)
Le Chaykh Mahmôud Al-Qoûnawi Al-Hanafi (771 H.)
L’Imâm Taqiyyou d-Dîn Al-Hisni (829 H.)
Le Chaykh Chaykh ‘Alâ-ou d-Dîn Al-Boukhâri qui rapporte l’unanimité [ voir : ici ]
L’Imâm As-Souyoûti [ voir : ici ]
Le Chaykh Ibn Hajar Al-Haytami [ voir : ici ]
Le Chaykh Al-Mounâwi [ voir : ici ]
Le Chaykh Mouhammad Mayyârah (1072 H.)
Le Chaykh Ibn Balbân [ voir : ici ]
L’Imâm Al-Bayâdi (1098 H.)
L’Imâm Abdou l-Ghani An-Nâboulouçi [ voir : ici ]
Le Chaykh ‘Abdou l-Lâh Ibn Houçayn Al-‘Alawi (1272 H.)
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ voir : ici ]
Le Chaykh Salîm Al-Bichri Al-Azhari (1335 H.)
Le Chaykh Al-Marighni Az-Zaytoûni qui mentionne l’unanimité [ voir : ici ]
L’Imâm Al-Kawthari [ voir : ici ]
Le Chaykh Mehmed Zâhid Kotku [ voir : ici ]
Le Mouhaddith Mouhammad Yâçîn Al-Fâdâni (1410 H.)
Le Mouhaddith Al-Harari (1429 H.)
Et beaucoup d’autres…
– De nombreux savants ont confirmé que le fait d’attribuer l’endroit ou la direction à Allâh constitue de la mécréance. Parmi eux :
L’Imâm Ja’far As-Sâdiq [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Aboû Hanîfah [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Mâlik [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Ach-Châfi’i [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
L’Imâm Ahmad Ibnou Hanbal [ voir : ici ]
L’Imâm Al-Ach’ari [ voir : ici ] et [ voir : ici ]
L’Imâm Abou l-Layth As-Samarqandi [ voir : ici ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité comme nous l’avons vu ci-dessus ;
L’Imâm Al-Jouwayni [ voir : ici ]
L’Imâm An-Naçafi (508 H.) [ voir : ici ]
L’Imâm Ahmad Ar-Rifâ’i (578 H.)
L’Imâm Ibnou ‘Abdi s-Salâm [ voir : ici ]
L’Imâm Fakhrou d-Dîn Ar-Râzi [ voir : ici ]
L’Imâm An-Nawawi [ voir : ici ]
L’Imâm Al-Mawsili [ voir : ici ]
Le Chaykh Badrou r-Rachîd Al-Hanafi [ voir : ici ]
Le Hâfidh Waliyyou d-Dîn Al-‘Irâqi (826 H.) qui rapporté l’unanimité,
L’Imâm Taqiyyou d-Dîn Al-Hisni (829 H.)
Le Chaykh Ibn Hajar Al-Haytami [ voir : ici ]
Le Chaykh Moullâ ‘Ali Al-Qâri [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
Le Chaykh Nidhâmou d-Dîn Al-Hindi (Al-Fatâwa l-Hindiyyah) [ voir : ici ]
Le Chaykh Al-Mounâwi [ voir : ici ]
Le Moufassir Ismâ’îl Haqqi [ voir : ici ]
L’Imâm Abdou l-Ghani An-Nâboulouçi [ voir : ici ]
Le Chaykh Ibn Balbân [ voir : ici ]
Le Chaykh As-Sâwi Al-Mâliki [ voir : ici ]
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ voir : ici ]
Le Chaykh Al-Qawouqji [ voir : ici ]
L’Imâm Al-Kawthari [ voir : ici ]
Le Chaykh Mahmoûd As-Soubki Al-Azhari qui mentionne l’unanimité [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ]
Le Chaykh Mehmed Zâhid Kotku [ voir : ici ]
Le Mouhaddith Al-Harari (1439 H.)
Et beaucoup d’autres…
– Certains savants ont mentionné de manière explicite dans leurs ouvrages que le fait d’attribuer à Allâh le mouvement ou le déplacement est de la mécréance. Parmi eux :
L’Imâm Abou l-Haçan Al-Ach’ari [ voir : ici ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité, comme l’avons vu ci-dessus.
L’Imâm Taqiyyou d-Dîn Al-Hisni [ voir : ici ]
L’Imâm Al-Kawthari qui mentionne l’unanimité [ voir : ici ] et [ voir : ici ]
– Le livre dont est extrait cette citation est un commentaire de la partie croyance de la riçalah de l’Imâm Ibnou Abî Zayd Al-Qayrawâni (m.386 A.H.) qui était surnommé Mâlik As-Saghîr, c’est à dire le petit Mâlik.
– Retrouvez d’autres paroles de savants confirmant le fait qu’attribuer l’endroit à Allâh est de la mécréance : ici .', 'al-baghdadi, al-qayrawani, allah, apostasie'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ولا يجوز أن يثبت له كيفية لأن الشرع لم يرد بذلك، ولا أخبر النبي عليه السلام فيه بشىء، ولا سألته الصحابة عنه، ولأن ذلك يرجع إلى التنقل والتحول وإشغال الحيّز والافتقار إلى الأماكن وذلك يؤول إلى التجسيم وإلى قِدم الأجسام وهذا كفرعند كافة أهل الإسلام');

-- source: https://islamsunnite.net/exposition-dun-cas-dapostasie-extrait-du-livre-al-fatawa-al-hindiyyah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Exposition d’un cas d’apostasie extrait du livre « Al-Fatâwâ Al-Hindiyyah »', 'Nidham', 'وكذا إذا قيل لرجل : ألا تخشى الله تعالى ؟ فقال في حالة الغضب : لا، يصير كافرًا كذا في فتاوى قاضيخان', '« Et de même si une personne a été interrogée : « ne crains-tu pas Allâh ? » et qu’elle a dit dans l’état de la colère : « non » elle devient mécréante, comme cela est mentionné dans Fatâwâ Qâdî-khân » .', '', 'Dans le livre « Al-Fatâwâ Al-Hindiyyah » composé par Chaykh Nidhâm Ad-Dîn Al-Bourhânboûri et un groupe de 500 savants, il est mentionné dans le chapitre au sujet des actes d’apostasie :
Informations utiles :
– L’ouvrage «Al-Fatâwâ Al-Hindiyyah» est un recueil de fatwâ de savants Hanafites principalement du sous-contient Indien (Inde, Pakistan, Bangladesh…), mais aussi d’Irak et du Hijâz (la région qui comprend La Mecque et Médine) qui regroupe presque tous les avis de l’école Hanafite et qui est une référence jusqu’à nos jours concernant les jugements de l’école. Il a été écrit il y a plus de 300 ans.
– Il a été dit que 500 savants du sous-continent Indien, d’Irak et du Hijâz ont travaillé à ce recueil (chaque groupe de savants d’une région était en charge d’un chapitre), et qu’ils n’écrivaient une fatwâ que lorsque personne ne la contestait.
– Le titre original de ce recueil c’est Fatâwâ al-‘Âlamgîriyyah, en perse, du nom du Sultan Aboû Moudhaffar Mouhyi d-Dîn Mouhammad Aurangzeb ‘Âlamgîr (décédé en 1118 H.) qui avait facilité aux savants hanafites la compilation de ces fatwâ. Elles ont très vite été surnommées “al-Fatâwâ al-Hindiyyah” en arabe.
– Le Chaykh Nidhâm Ad-Dîn Al-Bourhânboûri Al-Hindi Al-Hanafi était en charge de compiler les différentes Fatwâ au sein d’un ouvrage.
‘Abdou l-Hayy Al-Haçani a dit de lui : « Le Chaykh, le savant (‘âlim), le Faqîh (spécialiste de la jurisprudence), […] l’un des plus grands savants et faqîh Hanafite réputés» . [Nouzhatou l-Khawâtir]
– Ici, il est dit que si une personne interroge une autre en lui disant « ne crains-tu pas Allâh ? » et que celle-ci répond délibérément « non » sous l’état de la colère, elle devient mécréante. C’est-à-dire que par cette parole, elle sera sortie de l’Islâm.
– Le Faqîh Badrou r-Rachîd Al-Hanafi mentionne également cela dans son livre « Riçâlatoun fî Alfâdhi l-Koufr ».
– D’autres savants ont également mentionné ce cas de mécréance en disant : « Si un homme s’emporte sous la colère contre son fils ou son serviteur et le frappe violemment et qu’un autre lui dit : « n’es-tu pas musulman ? » S’il répond délibérément « non », il a apostasié ». Cela a été dit par :
L’Imâm An-Nawawi dans son livre « Rawdat At-Tâlibîn ».
Le Mouhaddith Al-Harari dans son livre « Moukhtasar ‘Abdi l-Lâh Al-Harari al-Kâfila bi ‘ilmi d-Dîn Ad-Daroûri ».
Et autres qu’eux… Adh-Dhahabi l’a également mentionné dans son livre « It-hâfou l-Akâbir ».
– Cette parole nous confirme que la colère n’est pas un cas d’excuse concernant la chute dans la mécréance; et qu’il se peut que quelqu’un sorte de l’Islâm sans avoir eu l’intention de quitter l’Islâm et sans avoir voulu changer pour autant de religion.
– Celui qui a commis une mécréance doit revenir immédiatement à l’Islam en prononçant les deux témoignages, qui sont (ach-hadou an l â il â ha il-la l-L â h, wa ach-hadou anna Mou h ammadan raç oû lou l-L â h) c’est-à-dire : « je témoigne qu’il n’est de dieu que All â h et je témoigne que Mou h ammad est le Messager de All â h ». Il ne suffit pas de dire « astaghfirou l-L â h ».
– Dans ce même livre, toujours dans le chapitre de l’apostasie, il est confirmé qu’attribuer l’endroit à Allâh est de la mécréance [ retrouvez l’article : ici ].', 'al-fatawa al-hindiyya, allah, apostasie, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وكذا إذا قيل لرجل : ألا تخشى الله تعالى ؟ فقال في حالة الغضب : لا، يصير كافرًا كذا في فتاوى قاضيخان');

-- source: https://islamsunnite.net/le-chaykh-abdou-l-lah-al-harari-confirme-le-fait-que-allah-existe-sans-endroit-et-sans-direction/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Chaykh ‘Abdou l-Lâh Al-Harari confirme le fait que Allâh existe sans endroit et sans direction', 'Harari', 'والله تعَالى غَنِيٌّ عن العَالمينَ أي مُسْتَغنٍ عَن كُلّ ما سِوَاهُ أَزَلا وأَبَدًا فَلا يَحْتَاجُ إلى مَكَانٍ يتحيز فيه أو شَىءٍ يَحُلُّ به أو إلى جِهَةٍ لأنه ليس كشىءٍ منَ الأشياء ليس حجمًا كثيفًا ولا حجمًا لطيفًا والتحيزُ من صفاتِ الجسمِ الكثيفِ واللطيفِ فالجسمُ الكثيفُ والجسمُ اللطيفُ متحيزٌ في جهةٍ ومكانٍ قال الله تعالى: ﴿وَهُوَ الَّذِي خَلَقَ اللَّيْلَ وَالنَّهَارَ وَالشَّمْسَ وَالْقَمَرَ كُلٌّ فِي فَلَكٍ يَسْبَحُونَ (33)﴾ [سورة الأنبياء] فأثبتَ الله تعالى لكل من الأربعة التحيز في فلكه وهو المدار. ويَكفِي في تَنزِيهِ الله عن المَكَانِ والحَيّزِ والجِهَةِ قَولُه تَعالى: ﴿لَيْسَ كَمِثْلِهِ شَىْءٌ (11)﴾ [سورة الشورى] لأنه لَو كَانَ لَه مَكانٌ لَكَانَ لَهُ أَمثَالٌ وأبعَادٌ طُولٌ وعَرْضٌ وعُمْقٌ، ومَنْ كَانَ كذَلِكَ كَانَ مُحْدَثًا مُحْتَاجًا لِمَنْ حَدَّهُ بِهَذَا الطُّولِ وبِهَذَا العَرْضِ وبِهَذَا العُمْقِ، هذَا الدليلُ منَ القُرءانِ.', '« Allâh ta’âlâ n’a pas besoin des mondes, c’est-à-dire qu’Il Se passe de tout ce qui est autre que Lui éternellement sans début et sans fin. Il n’a donc pas besoin d’un endroit où se tenir, ni d’une chose pour s’y incarner, ni d’une direction car Il n’est pas tel que la créature. Il n’est ni un corps palpable ni un corps impalpable et la localisation est un attribut des corps palpables et impalpables. Par conséquent, le corps palpable, aussi bien que le corps impalpable sont localisés dans une direction et un endroit.', '', 'Dans son livre As-Sirâtou l-Moustaqîm, le Chaykh ‘Abdoul-Lâh Al-Harari a dit :
Allâh ta’âlâ dit : {وَهُوَ الَّذِي خَلَقَ اللَّيْلَ وَالنَّهَارَ وَالشَّمْسَ وَالْقَمَرَ كُلٌّ فِي فَلَكٍ يَسْبَحُونَ} [soûrat Al-Anbiyâ / 33] ce qui a pour sens : « C’est Lui (Allâh) Qui a créé la nuit et le jour, le soleil et la lune, tous se déplacent dans une orbite ». Allâh a donc confirmé pour chacune de ces quatre créatures la localisation dans son orbite, qui est la trajectoire de leurs mouvements.
Il suffit comme preuve de l’exemption de Allâh de l’endroit, de la localisation et de la direction, Sa parole ta’âlâ : {لَيْسَ كَمِثْلِهِ شَىْء} [ce qui a pour sens :] « Rien n’est tel que Lui – d’aucune façon que ce soit-». En effet, s’Il était dans un endroit, Il aurait des semblables et des dimensions : hauteur, largeur et profondeur et ce qui est ainsi est entré en existence et nécessite qui l’a limité par cette hauteur, cette largeur et cette profondeur. Ceci est la preuve à partir du Qour-ân. »
Informations utiles :
– Al-‘Allâmah (l’illustre savant), l’Imâm, le Mouhaddith (transmetteur du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chaykh ‘Abdoul-Lâh Al-Harari Ach-Châfi’i Ach-Chaybi Al-‘Abdari connu sous le nom de Al-Habachi est décédé en 1429 de l’Hégire (رحمه الله). Il était un grand défenseur de la croyance de Ahlou s-Sounnah. De nombreux savants et responsables d’institutions islamiques ont fait son éloge. Parmi eux :
Le Mouhaddith des contrées marocaines, le Chaykh ‘Abdou l-‘Azîz Al-Ghoumâri a dit à son sujet : « Le Chaykh ‘Abdou l-Lâh est juste (‘adl)… Il a des ouvrages dignes de considération et des livres utiles dans l’explication des Lois de Allâh pour les musulmans, qui montrent bien qu’il fait partie des religieux qui ont une grandeur d’âme et qui œuvrent pour la religion de Allâh. Il n’est donc pas permis, après tout cela, qu’on le calomnie dans sa religion, qu’on le discrédite dans sa croyance ou qu’on récuse sa justesse » .
Le Chaykh Mouhammad Châh Al-Hâmidi Al-Houçayni a dit : « Certe, le Chaykh ‘Abdou l-Lâh est un Imâm dans la ‘Aqîdah (croyance), le Fiqh ( jurisprudence), la langue arabe, le Hadîth, et il est rare de trouver semblable à lui dans cette époque. Et ceci n’est pas uniquement mon propre témoignage mais aussi le témoignage de mon père Al-‘Allâmah (l’illustre savant) le Chaykh Qoutbou d-Dîn Al-Hâmidi Al-Houçayni (rahimahou l-Lâh) le Moufti de Deir ez-Zor, et c’est également le témoignage de beaucoup des plus grands de parmi les gens de science de la région du Châm et d’ailleurs »
Le Président de l’Université et de l’Institut islamique “Az-Ziyâdah” à Jakarta en Indonésie, Habîb Al-Miçâwî, a dit : « J’ai pris connaissance des livres du Mouhaddith, le Chaykh respectable ‘Abdoul-Lâh Al-Harari Ach-Chaybi, que Allâh le préserve, surtout les livres “Al-Maqalatou s-Sounniyyah” et “Sarîhou l-Bayân”, j’ai trouvé en lui un savant, un jurisconsulte, versé dans la science et le Hadîth, je témoigne qu’il est unique à son époque et son ère et qu’il est le Moujaddid de ce siècle » . (c’est-à-dire celui qui revitalise la science de la religion).
Le Moufti Mouhammad Ayyoûb An-Na’îmi, Université Na’îmiyyah , en Inde a dit : « Mon cœur a été fortement sensible, ma poitrine s’est fortement réjouie et mon cœur s’est illuminé par le service que le Grand savant, le Mouhaddith, le Chaykh ‘Abdoul-Lâh Al-Harari plus connu sous le nom de Al-Habachi porte à la communauté. J’ai pu lire ses livres, son excellent livre As-Sirâtou l-Moustaqîm à plusieurs reprises et j’ai constaté que c’est un livre qui constitue un rappel de nos Salaf vertueux. J’invoque Allâh ‘azza wa jall qu’Il fasse que son œuvre soit récompensée et que les savants ainsi que le commun des gens de l’islâm puissent profiter de ses bénédictions. Âmîn. As-salâmou ‘alaykoum.»
Le Chaykh Mouhammad Noûrou d-Dîn Al-Banjari Al-Makki (l’un des Chouyoukh d’Indonésie) a dit de lui : « Concernant la science il est difficile de trouver quelqu’un de semblable au Chaykh ‘Abdou l-Lâh Al-Harari ou quelqu’un qui se rapproche de son niveau » .
Le Chaykh Mouhammad Dhafar (Dâr al-‘ouloûm Amjadiyyah de Karachi au Pakistan) a dit : « L’illustre savant érudit (Al-‘Allâmah al-Kabîr) Al-Hâfidh Al-Mouhaddith (spécialiste de la science du hadîth) l’éducateur et l’honorable Chaykh Abdoullâh Al-Harari connu par Al-Habachi suit le Madh-hab Al-Haqq (l’école de droiture) et marche sur la voie droite, celle des Sahâbah du Messager de Allâh (صلى الله عليه وسلم) , des prédécesseurs vertueux ainsi que leurs successeurs. Puisse Allâh leur accorder à tous encore davantage d’agrément et d’approbation. Et il est un Imâm (guide et référence) très grand, et il est une référence en la religion (houjjatou fi d-Dîn). Il est pieux et vertueux, véridique et sincère. »
– Ici nous voyons que le Chaykh ‘Abdou l-Lâh Al-Harari confirme la croyance de Ahlou s-Sounnah sur le fait que Allâh existe sans endroit et sans direction. Et il dit que la âyah {لَيْسَ كَمِثْلِهِ شَىْء} [qui a pour sens :] « Rien n’est tel que Lui » est preuve suffisante pour renier l’endroit et la direction au sujet de Allâh.
– Tout les musulmans ont pour croyance que Allâh existe sans endroit et sans direction. Cette unanimité a été mentionnée par de nombreux savants tels que :
L’Imâm Aboû Mansoûr Al-Baghdâdi [ voir : ici ],
L’Imâm Al-Jouwayni [ voir ici ],
L’Imâm Ar-Râzi [ voir : ici ],
Le Chaykh Salîm Al-Bichri Al-Azhari [ voir : ici ],
Le Chaykh Al-Qoudâ’i Al-’Azzâmi [ voir : ici ],
Le Chaykh Mouhammad Al-‘Arabi At-Tabbâni [ voir : ici ],
Le Chaykh Mahmoûd As-Soubki [ voir : ici ] et [ voir : ici ],
Le Chaykh Ach-Chanqîti [ voir : ici ],
Dârou l-Iftâ Al-Misriyyah [ voir : ici ]
Et beaucoup d’autres [ voir : ici ]
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah]
– Les corps se divisent en deux catégories : les corps palpables et les corps impalpables. Les corps palpables, c’est ce qu’on peut saisir à la main tel que les pierres, les plantes, les humains… Et les corps impalpables, c’est ce qu’on ne peut pas saisir à la main tel que la lumière, les Anges, les Jinns, les âmes… Quant aux caractéristiques des corps, c’est ce qui advient aux corps tel que le goût, la couleur, la pensée, le mouvement, le sentiment… Les corps qu’ils soient palpables ou impalpables ainsi que leurs caractéristiques sont tous créés par Allâh, par conséquent Allâh n’est pas un corps, ni un corps palpable, ni un corps impalpable.', 'abache, abaches, abachi, abachites'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'والله تعَالى غَنِيٌّ عن العَالمينَ أي مُسْتَغنٍ عَن كُلّ ما سِوَاهُ أَزَلا وأَبَدًا فَلا يَحْتَاجُ إلى مَكَانٍ يتحيز فيه أو شَىءٍ يَحُلُّ به أو إلى جِهَةٍ لأنه ليس كشىءٍ منَ الأشياء ليس حجمًا كثيفًا ولا حجمًا لطيفًا والتحيزُ من صفاتِ الجسمِ الكثيفِ واللطيفِ فالجسمُ الكثيفُ والجسمُ اللطيفُ متحيزٌ في جهةٍ ومكانٍ قال الله تعالى: ﴿وَهُوَ الَّذِي خَلَقَ اللَّيْلَ وَالنَّهَارَ وَالشَّمْسَ وَالْقَمَرَ كُلٌّ فِي فَلَكٍ يَسْبَحُونَ (33)﴾ [سورة الأنبياء] فأثبتَ الله تعالى لكل من الأربعة التحيز في فلكه وهو المدار. ويَكفِي في تَنزِيهِ الله عن المَكَانِ والحَيّزِ والجِهَةِ قَولُه تَعالى: ﴿لَيْسَ كَمِثْلِهِ شَىْءٌ (11)﴾ [سورة الشورى] لأنه لَو كَانَ لَه مَكانٌ لَكَانَ لَهُ أَمثَالٌ وأبعَادٌ طُولٌ وعَرْضٌ وعُمْقٌ، ومَنْ كَانَ كذَلِكَ كَانَ مُحْدَثًا مُحْتَاجًا لِمَنْ حَدَّهُ بِهَذَا الطُّولِ وبِهَذَا العَرْضِ وبِهَذَا العُمْقِ، هذَا الدليلُ منَ القُرءانِ.');

-- source: https://islamsunnite.net/le-chaykh-mouhammad-al-khidr-houcayn-fait-leloge-du-mawlid/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Chaykh Mouhammad Al-Khidr Houçayn fait l’éloge du Mawlid', '''Ali Ibn Abi Talib', 'أما احتفالنا بذكرى مولده فإنا لم نفعل غير ما فعله حسان بن ثابت رضي الله عنه حين كان يجلس إليه الناس و يُسمعهم مديح رسول الله صلى الله عليه و سلم في شعر, و لم نفعل غير ما فعل علي بن أبي طالب أو البراء بن عازب أو أنس بن مالك رضي الله عنهم حين يتحدثون عن محاسن رسول الله الخُلقية و الخلقية في جماعة', 'Quant au fait que l’on commémore la naissance du Prophète, nous n’avons pas fait autre que ce qu’a fait le compagnon Hassan Ibnou Thâbit (رضي الله عنه) dont s’asseyaient autour de lui les gens et il leurs faisait écouter l’éloge du Prophète (صلى الله عليه وسلم) en poésie, et nous n’avons pas fait autre que ce qu’a fait ‘Ali Ibnou Abî Tâlib ou Al-Barâ Ibnou ‘Âzib ou Anas Ibnou Mâlik quand ils évoquaient les qualités morales et physiques du Prophète en assemblée', '', 'Dans le Magazine « Al-Hidâyatou l-Islâmiyyah » le Chaykh Mouhammad Al-Khidr Houçayn a dit concernant la commémoration du Mawlid du Prophète (صلى الله عليه وسلم) :
Informations utiles :
– Le Chaykh Mouhammad Al-Khidr Houçayn Al-Haçani At-Toûniçi Al-Azhari Al-Mâliki est né en 1293 à Nefta en Tunisie et il est décédé en 1377 de l’hégire (رحمه الله), c’est-à-dire il y a bientôt 60 ans. Il est issue d’une famille d’origine Algérienne. Il étudia dans sa jeunesse à l’Université Az-Zaytoûnah de Tunis. Il s’installa par la suite en Egypte où il devint un savant reconnu, et il accéda au poste de Grand Imâm d’Al-Azhar.
– Ici, il fait l’éloge du mawlid et dit que c’est une commémoration qui est en accord avec la méthodologie des compagnons. En effet les compagnons tel que ‘Ali Ibn Abî Tâlib, Anas ibn Mâlik et d’autres étaient de ceux qui faisaient beaucoup d’éloges du Prophète (صلى الله عليه وسلم) dans des poèmes et lors d’assemblées.
– Ainsi le Mawlid compte de parmi les bonnes innovations que les savants de l’Islâm ont approuvé. Parmi eux :
Le Chaykh de l’Imâm An-Nawawi, le Hâfidh Aboû Châma [ voir : ici ],
L’Imâm As-Souyoûti [ voir : ici ],
L’Imâm Ibn Hajar Al-‘Asqalâni [ voir : ici ],
Le Hafîdh As-Sakhâwi [ voir : ici ]
Et beaucoup d’autres. Retrouvez de nombreuses paroles de savants concernant le Mawlid : ici .
– En quoi consiste le Mawlid ?
Du fait de rassembler les musulmans dans le bien : ceci est un bien dans la religion.
De récitation du Qour-ân : ceci est un bien dans la religion.
De Dhikr (évocation de Allâh) : ceci est un bien dans la religion.
D’éloge du prophète (صلى الله عليه وسلم) : ceci est un bien dans la religion.
De cours et conférences religieuses : ceci est un bien dans la religion.
Du fait de s’inciter mutuellement à la piété : ceci est un bien dans la religion.
Distribuer des aumônes (nourritures et boissons) : ceci est un bien dans la religion.
D’invocations à l’égard de Allâh : ceci est un bien dans la religion.
– L’Imâm As-Souyoûti a d’ailleurs résumé tout cela en disant : « la commémoration de la naissance (Mawlid) à l’origine consiste en le rassemblement des gens, la récitation de ce qu’il est possible de réciter du Qour-ân, la narration des nouvelles rapportées au sujet du début de l’histoire du Prophète et ce qui est advenu comme signes à sa naissance, à la suite de quoi il leur est présenté de la nourriture qu’ils consomment puis partent sans rien ajouter à cela. Ceci compte parmi les bonnes innovations pour laquelle celui qui la fait sera récompensé, et ce, pour ce que cela comporte comme glorification du degré du Prophète (صلى الله عليه وسلم), et comme manifestation de joie et de réjouissance pour sa noble naissance » [ voir l’article : ici ].
– Ainsi le Mawlid compte de parmi les bonnes innovations, et le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » (Rapporté par Mouslim) [ Retrouvez l’article : ici ] .
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ].
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .', 'al-azhar, al-barra ibn ‘azib, al-hidayah, al-hidayatou l-islamiyyah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'أما احتفالنا بذكرى مولده فإنا لم نفعل غير ما فعله حسان بن ثابت رضي الله عنه حين كان يجلس إليه الناس و يُسمعهم مديح رسول الله صلى الله عليه و سلم في شعر, و لم نفعل غير ما فعل علي بن أبي طالب أو البراء بن عازب أو أنس بن مالك رضي الله عنهم حين يتحدثون عن محاسن رسول الله الخُلقية و الخلقية في جماعة');

-- source: https://islamsunnite.net/le-chaykh-ibn-acakir-parle-de-la-croyance-en-allah-et-confirme-quil-existe-sans-endroit-et-sans-direction/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Chaykh Ibn ‘Açâkir parle de la croyance en Allâh et confirme qu’Il existe sans endroit et sans direction', 'Les Chafi''ites', 'موجودٌ قبل الخلقِ، ليس له قبلٌ ولا بعدٌ، ولا فوقٌ ولا تحتٌ، ولا يَمينٌ ولا شمالٌ، ولا أمامٌ ولا خلفٌ، ولا كلٌّ، ولا بعضٌ. ولا يقالُ متى كانَ ولا أينَ كانَ ولا كيفَ، كان ولا مكان، كوَّنَ الأكوانَ ودبَّر الزمانَ، لا يتقيَّدُ بالزمانِ ولا يتخصَّصُ بالمكان، ولا يشغلُهُ شأنٌ عن شأن، ولا يلحقُهُ وهمٌ، ولا يكتَنِفُهُ عقلٌ، ولا يتخصَّصُ بالذهنِ، ولا يتمثلُ في النفسِ، ولا يتصورُ في الوهمِ، ولا يتكيَّفُ في العقلِ، لا تَلحقُهُ الأوهامُ والأفكارُ، » لَيْسَ كَمِثلِهِ شَىءٌ وَهُوَ السَّمِيعُ البَصِيرُ »', '« Il (Allâh) existe de toute éternité avant la création, sans début ni fin, sans haut ni bas, sans droite ni gauche, sans avant ni arrière. Il n’est ni composé, ni un composant.', '', 'Dans son livre « Tabaqâtou ch-Châfi’iyyati l-Koubrâ », l’Imâm Tâjou d-Dîn As-Soubki rapporte le traité de croyance « Al-‘Aqîdatou l-Mourchidah » que le Chaykh Ibn ‘Açâkir a rendu célèbre et dans lequel il est dit :
On ne dit pas : quand a-t-Il existé ? ni : où était-Il ? ni : comment ?
Il existe de toute éternité alors qu’aucun endroit n’existe de toute éternité. Il a fait exister les êtres et Il a établi le temps. Il ne dépend pas du temps et Il n’est pas spécifié par l’endroit. Aucune chose ne L’accapare au détriment d’une autre. Aucune imagination ne peut l’atteindre et aucune raison ne peut Le cerner. Il n’est pas spécifiable par l’intellect et Il ne s’identifie pas à travers les passions, Il ne se représente pas dans les illusions et Il ne Lui est pas donné de comment par la raison, les imaginations et les pensées ne l’atteignent pas.
Rien n’est tel que Lui et Il est Celui Qui entend et Qui voit. »
Informations utiles :
– Le Chaykh Tâjou d-Dîn Aboû Nasr ‘Abdou l-Wahhâb Ibn ‘Ali Ibn Abdou l-Kâfî As-Soubki est né en 728 et il est décédé en 771 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 660 ans. Il est le fils du grand savant Taqiyyou d-Dîn As-Soubki. Son livre « Tabaqâtou ch-Châfi’iyyati l-Koubrâ » est un ensemble de biographies de savants chafi’ites.
– Le Chaykh Fakhrou d-Dîn Aboû Mansoûr ‘Abdou r-Rahmân ibnou Mouhammad Ibni l-Haçan Ibni Hibati l-Lâh Ibni ‘Abdi l-Lâh Ibni l-Houçayn Ad-Dimachqi connu sous le nom de Ibnou ‘Açâkir est né en 550 et il est décédé en 620 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 800 ans. Il est un spécialiste du fiqh Chafi’ite très célèbre. Il enseignait la religion, notamment la science du hadîth à La Mecque, Damas et Jérusalem (Al-Qouds). De nombreux savants ont fait son éloge. Retrouvez sa biographie : ici .
Tâjou d-Din As-Soubki a dit à son sujet : « Il était celui que personne après lui n’a surpassé et qui a réuni la science et l’action. Ses contemporains furent d’accord à reconnaître son éminence dans l’intelligence et la religion » [Tabaqâtou ch-Châfi’iyyah]
– Il ne faut pas le confondre avec son oncle Al-Hâfidh Abou l-Qâçim ‘Ali Ibn Al-Haçan Ibn Hibati l-Lâh Ad-Dimachqi qui est également connu sous le nom de Ibnou ‘Açâkir, qui est décédé en 571 de l’Hégire (رحمه الله), dont vous pouvez retrouver des citations : ici .
– L’auteur du traité de croyance est Mouhammad Ibnou Toûmart Al-Maghribi. Il est né en ~ 471 et il est décédé en 524 de l’Hégire (رحمه الله) à Marrakech (Maroc). Il était l’un des illustres élèves de l’Imâm Al-Ghazâli.
– Dans son traité de croyance il confirme que Allâh n’est pas concerné par l’endroit et les directions, qu’Il n’est pas possible de L’Imaginer, qu’Il n’est ni composant ni composé, qu’Il ne dépend pas du temps, et qu’Il n’est pas concerné par le comment (les caractéristiques des créatures).
– Le Hâfidh Al-‘Alâ-i a dit : « Et l’auteur de cette croyance qui guide vers la vérité l’a écrite conformément à la voie et à la croyance de droiture, il a dit vrai concernant ce qu’il a mentionné au sujet de l’exemption de Allâ h Al-‘Aliyyou l-‘Adhî m de toute ressemblance avec les créatures » [Rapporté par Tâjou d-Dîn As-Soubki]
– L’Imâm Tâjou d-Dîn As-Soubki après avoir rapporté et approuvé le traité de croyance, il conclu en disant : « Il n’y a pas en lui ce que renierait un Sunnite » . C’est-à-dire que ce qui est contenu dans ce traité de croyance fait l’objet de l’unanimité chez les gens de la Sounnah.
– L’Imâm Mouhammad Ibn Yoûçouf As-Sanoûçi (m.895 H.) a dit : « Les Imâms sont unanimes sur la validité de cette croyance et sur le fait qu’elle guide vers la vérité » [Dans son commentaire de la ‘Aqîdah Al-Mourchidah]
– L’Imâm Ibnou ‘Arafah Al-Mâliki (m.803 H.) dit : « Quelle belle parole de l’Imâm [Mouhammad Ibn Toûmart] Al-Mahdi dans son traité de croyance, lorsqu’il a dit : On ne dit pas [concernant Allâh] : quand a-t-Il existé ? ni : où était-Il ? ni : comment ? Il existe de toute éternité alors qu’aucun endroit n’existe de toute éternité. Il a fait exister les êtres et Il a établi le temps. Il ne dépend pas du temps et Il n’est pas spécifié par l’endroit. » [ Dans son Tafsîr ]', 'açakir, al-‘aqidatou l-mourchidah, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'موجودٌ قبل الخلقِ، ليس له قبلٌ ولا بعدٌ، ولا فوقٌ ولا تحتٌ، ولا يَمينٌ ولا شمالٌ، ولا أمامٌ ولا خلفٌ، ولا كلٌّ، ولا بعضٌ. ولا يقالُ متى كانَ ولا أينَ كانَ ولا كيفَ، كان ولا مكان، كوَّنَ الأكوانَ ودبَّر الزمانَ، لا يتقيَّدُ بالزمانِ ولا يتخصَّصُ بالمكان، ولا يشغلُهُ شأنٌ عن شأن، ولا يلحقُهُ وهمٌ، ولا يكتَنِفُهُ عقلٌ، ولا يتخصَّصُ بالذهنِ، ولا يتمثلُ في النفسِ، ولا يتصورُ في الوهمِ، ولا يتكيَّفُ في العقلِ، لا تَلحقُهُ الأوهامُ والأفكارُ، » لَيْسَ كَمِثلِهِ شَىءٌ وَهُوَ السَّمِيعُ البَصِيرُ »');

-- source: https://islamsunnite.net/limam-al-halimi-explique-le-nom-de-allah-an-nour-rapporte-par-al-bayhaqi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm Al-Halîmi explique le nom de Allâh « An-Noûr » (rapporté par Al-Bayhaqi)', 'Halimi', 'وهو الهادي لا يعلم العباد إلا ما علمهم ولا يدركون إلا ما يسر لهم إدراكه ، فالحواس والعقل فطرته وخلقه وعطيته', 'Il est Celui Qui guide (Al-Hâdi) ; les esclaves ne connaissent que ce qu’Il leur a appris, et ils ne saisissent [ou comprennent] que ce qu’Il leur a facilité pour pouvoir le saisir [et le comprendre]. En effet les sens et les raisons sont faits, créés et accordés par Lui.', '', 'Dans son livre « Al-Asmâ-ou wa s-Sifât » (tome 1 page 143 de cette édition), l’Imâm Al-Bayhaqi rapporte que l’Imâm Al-Halîmi a dit au sujet du nom de Allâh « An-Noûr » :
Informations utiles :
– L’Imâm, le Hâfidh Aboû Bakr Ahmad Ibnou l-Houçayn Al-Bayhaqi, est né en 384 et il est décédé en 458 de l’hégire (رحمه الله), c’est-à-dire il y a presque 1000 ans. Il fait partie des plus grands savants du hadîth, et il est de l’école de jurisprudence Châfi’ite. Son livre « Al-Asmâ-ou wa s-Sifât » est un livre de référence sur la croyance, qui traite des Noms et des Attributs de Allah. Voir la biographie de l’Imâm Al-Bayhaqi : ici .
– L’Imâm, le Faqîh( spécialiste de la jurisprudence), le Qâdî (juge), Abou ‘Abdi l-Lâh Al-Houçayn Ibnou Al-Haçan Al-Halîmi Al-Boukhâri Ach-Châfi’i est né en 338 et il est décédé en 403 de l’Hégire à Boukhârâ (رحمه الله) c’est-à-dire il y a environ de 1030 ans. C’est un grand savant dans l’école de jurisprudence (madh-hab) de l’Imâm Ach-Châfi’i, dans lequel il a le niveau de Moujtahid mouqayyad. Il est également très connu dans la science du hadîth. L’Imâm Al-Bayhaqi le cite énormément dans son livre « Al-Asmâ-ou wa s-Sifât ».
– Ici, l’Imâm Al-Halîmi explique que le Nom de Allâh « An-Noûr » signifie que Allâh est « Al-Hâdi » c’est-à-dire Celui Qui guide. Il ne faut pas comprendre de ce Nom, que Allâh serait une lumière qui est le contraire de l’obscurité car Il est Celui Qui crée la lumière.
– Allâh ta’âlâ dit dans Soûrat Al-An’âm : { وَجَعَلَ الظُّلُمَاتِ وَالنُّورَ } [ce qui a pour sens] : « Et Il (Allâh) créa les obscurités et la lumière » , Dès lors, comment serait-il possible qu’Il soit une lumière comme Ses créatures ?!
– De nombreux savants ont tenu des propos similaire. Parmi eux :
Le compagnon Ibnou l-‘Abbâs [ voir : ici ]
Le Loughâwi Aboû Mansoûr Al-Azhari [ voir : ici ]
L’Imâm Al-Khattâbi [ voir : ici ],
L’Imâm Al-Bayhaqi qui a dit : « An-Noûr : Il est Celui Qui guide (Al-Hâdi), et il a été dit : Celui Qui crée la lumière (Al-Mounawwir)» [Al-I’tiqâd]
L’Imâm Al-Jouwayni [ voir : ici ]
L’Imâm Ibnou l-Athîr [ voir : ici ]
Le Loughâwi Ibnou Mandhoûr [ voir : ici ]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Les mouchabbihah (assimilationnistes) ont dit : « Il est permis de dire que Allâh ta’âlâ est une lumière qui scintille » et Ahlou s-Sounnah wa l-Jamâ’ah ont dit : ceci n’est pas permis ! Car Allâh est Le Créateur de la lumière, et Il est Celui qui fait briller la lumière, et la lumière a une couleur, et si on dit qu’Il aurait une couleur cela impliquerait le tachbîh (la ressemblance avec les créatures) et Allâh ta’âlâ est exempt de la ressemblance avec les créatures. Et Ils (les mouchabbihah) ont argumenté avec la parole de Allâh ta’âlâ {الله نور السماوات والأرض} [qui a pour sens : ] « Allâh est noûr des cieux et de la terre » [et ils disent : ] Il s’est nommé lui-même « noûr ». Alors nous leur disons : Ibn ‘Abbâs (رضي الله عنهما) a dit : cela signifie Celui Qui illumine les cieux et la terre. Et d’autres ont dit : cela signifie Celui Qui guide les gens des cieux et de la terre. » [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {اللَّهُ نُورُ السَّمَاوَاتِ وَالْأَرْضِ} (Allâhou Noûrou s-samâwâti wa l-ard) : c’est-à-dire qu’Il est Celui qui a la lumière des cieux et de la terre, et ces deux lumières sont le soleil et la lune, le sens est : Il est Celui qui guide ceux qui y sont (c’est-à-dire dans les cieux et sur terre) par sa lumière » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
Le Mouhaddith Al-Harari qui a dit : « Sa parole ta’âlâ : [اللهُ نُورُ السَّمَوَاتِ وَالأَرْض] (Allâhou noûrou s-samâwâti wa l-ard) signifie que Allâh ta’âlâ est Celui Qui guide les gens des cieux et de la terre vers la lumière de la foi, rapporté par Al-Bayhaqi de ‘Abdou l-Lâh Ibnou l-‘Abbâs, que Allâh les agrée tous deux. Allâh ta’âlâ n’est pas « noûr » dans le sens de « lumière » » [As-Sirâtou l-Moustaqîm]
Et beaucoup d’autres.
– Le fait de croire que Allâh serait une lumière (contraire de l’obscurité) est une croyance contraire à l’Islâm, et cette croyance fait sortir de l’islâm. [ voir à ce sujet la citation de l’Imâm An-Nâboulouçi : ici ].
– Le Chaykh, le Faqîh Aboû Chakoûr As-Sâlimi Al-Hanafi (m.~460 H.) a dit au sujet des Mouchabbihah (ceux qui ont pour croyance que Allâh ressemble aux créatures) : « Parmi eux certains disent que « Allâh ta’âlâ est une lumière qui scintille » et cela est de la mécréance car il y a le reniement d’un texte et il s’agit de la parole de Allâh ta’âlâ [qui a pour sens : ] {Rien n’est tel que Lui} » [Dans son livre At-Tamhîd fî Bayâni t-Tawhîd]
– Les savants ont dit que les corps sont de deux sortes : les corps palpables (que l’on peux toucher) et les corps impalpables (que l’on ne peux pas toucher). La lumière est un corps impalpable et Allâh n’est ni un corps palpable ni un corps impalpable. Les savants ont été unanimes sur le fait qu’attribuer le corps à Allâh est de la mécréance. [ Retrouvez des citations à ce sujet : ici ]
– Retrouvez d’autres paroles de savants ayant mentionné que Allâh n’est pas une lumière : ici .', 'al-hadi, allah, an-noor, an-nour'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وهو الهادي لا يعلم العباد إلا ما علمهم ولا يدركون إلا ما يسر لهم إدراكه ، فالحواس والعقل فطرته وخلقه وعطيته');

-- source: https://islamsunnite.net/le-chaykh-abdou-l-lah-al-ghoumari-confirme-que-allah-existe-de-toute-eternite-sans-endroit/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Chaykh ‘Abdou l-Lâh Al-Ghoumâri confirme que Allâh existe de toute éternité sans endroit', 'Ghoumari (''Abdou l-Lah)', 'كان الله ولـم يكن شىءٌ غيره فلـم يكن زمانٌ ولا مكان ولا قُطْرٌ ولا أوانٌ ، ولا عرشٌ ولا ملكٌ ، ولا كوكبٌ ولا فلكٌ ، ثم أوجد العالـم من غير احتياجٍ إليه ، ولو شاء ما أوجده . فهذا العالـم كله بما فيه من جواهر وأعراض حادثٌ عن عدم ، ليس فيه شائبة من قِدم ، حسبما اقتضته قضايا العقول ، وأيدته دلائل النقول ، أجمع عليه الـملِّيُّون قاطبةً إلاّ شُذاذاً من الفلاسفة قالوا بقدم العالـم ، وهم كفار بلا نزاع', '« Allâh est de toute éternité et rien d’autre que Lui n’est de toute éternité, il n’est de toute éternité ni temps ni endroit, ni périmètre, ni instant, ni Trône, ni anges, ni astres, ni planètes. Il fait exister le monde sans en avoir besoin et s’Il le voulait Il ne le ferait pas exister. Tout ce monde avec ce qu’il contient de substances (jawhar) et de caractéristiques qui adviennent au corps (‘arad) tout cela est passé du néant à l’existence. Il n’y a pas dans tout cela quoi que ce soit qui soit de toute éternité tout comme l’indique la preuve rationnelle et tout comme le rapportent les preuves textuelles. Toutes les communautés sont d’accord sur ce point, mis à part l’aberration des philosophes qui ont prétendu que ce monde est sans début ; ce sont incontestablement des mécréants ».', '', 'Dans son livre « Qisasou l-Ambiyâ : Âdam ‘alayhi s-salâm », le Chaykh ‘Abdou l-Lâh Al-Ghoumâri a dit :
Informations utiles :
– Al-‘Allâmah (l’illustre savant), le Mouhaddith (spécialiste de la science du hadîth) du Maghreb, le Chaykh Abou l-Fadl ‘Abdou l-Lâh Ibnou Mouhammad As-Siddîq Al-Ghoumâri Al-Hassani est décédé en 1413 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 30 ans.
– Ici il dit que Allâh existe de toute éternité sans endroit, sans trône, ni aucune autres créatures.
– Cela est tiré de la parole même du Messager de Allâh (صلى الله عليه وسلم) a dit dans un hadîth Sahîh rapporté par Al-Boukhâri et autre : « كَـــــانَ اللهُ وَلَــــمْ يَــــكُــــنْ شَــىءٌ غَــيْـــرُهُ » [ce qui a pour sens ] : « Allâh existe de toute éternité et rien d’autre que Lui n’est de toute éternité » . Ainsi ni la terre, ni les cieux, ni les corps, ni les lettres, ni les langues, ni les directions, ni les endroits, ni le trône, ni autre qu’eux n’existent de toute éternité avec Allâh.
– Il confirme également que celui qui a pour croyance qu’il y aurait quelque chose qui existerait de toute éternité avec Allâh, alors il est un mécréant.', 'adam, ahlou s-sounnah, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'كان الله ولـم يكن شىءٌ غيره فلـم يكن زمانٌ ولا مكان ولا قُطْرٌ ولا أوانٌ ، ولا عرشٌ ولا ملكٌ ، ولا كوكبٌ ولا فلكٌ ، ثم أوجد العالـم من غير احتياجٍ إليه ، ولو شاء ما أوجده . فهذا العالـم كله بما فيه من جواهر وأعراض حادثٌ عن عدم ، ليس فيه شائبة من قِدم ، حسبما اقتضته قضايا العقول ، وأيدته دلائل النقول ، أجمع عليه الـملِّيُّون قاطبةً إلاّ شُذاذاً من الفلاسفة قالوا بقدم العالـم ، وهم كفار بلا نزاع');

-- source: https://islamsunnite.net/limam-as-soubki-rapporte-que-adam-a-fait-le-tawassoul-par-le-prophete-mouhammad/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm As-Soubki rapporte que Âdam a fait le tawassoul par le Prophète Mouhammad', 'Soubki (Taqiyyou d-Din)', '« عن عمر بن الخطاب رضي الله عنه قال: قال رسول الله (صلى الله عليه وسلم): « لما اعترف آدم عليه السلام بالخطيئة قال: يا رب أسألك بحق محمد لما غفرت لي. فقال الله: يا آدم، وكيف عرفت محمدا ولم أخلقه؟ قال: يا رب لأنك لما خلقتني بيدك، ونفخت فيّ من روحك رفعت رأسي، فرأيت على قوائم العرش مكتوبا: (لا إله إلا الله، محمد رسول الله) فعرفت أنك لم تضف إلى اسمك إلا أحب الخلق إليك، فقال الله: صدقت يا آدم، إنه لأحب الخلق إليّ، إذ سألتني بحقه فقد غفرت لك، ولولا محمد ما خلقتك ». قال الحاكم: هذا حديث صحيح الإسناد »', '« ‘Oumar Ibnou l-Khattâb (رضي الله عنه) a dit : « Le Messager de Allâh (صلى الله عليه وسلم) a dit [ce qui a pour sens] :', '', 'Dans son livre « Chifâ-ou s-Saqâm fî Ziyârati Khayri l-Anâm » (page 358 et 359 de cette édition), l’Imâm Taqiyyou d-Dîn As-Soubki a dit :
« Lorsque Âdam (عليه السلام) a commis le [petit] péché, il a dit : Ô Seigneur, je te demande par le degré de Mouhammad de me pardonner. Allâh ‘azza wa jall lui dit [et Allâh sait toute chose de toute éternité]: Ô Âdam, Comment as-tu connu Mouhammad alors que Je ne l’ai pas encore créé. Il lui a dit : Ô Seigneur , parce que lorsque Tu m’as créé par Ta toute-puissance et que Tu as fait insuffler en moi l’âme honorée qui T’appartient, j’ai levé les yeux et j’ai vu inscrit sur les piliers du Trône : « Il n’est de dieu que Allâh, Mouhammad est le messager de Allâh ». J’ai su alors que Tu n’as joint à Ton nom que celle de Tes créatures que Tu agréés le plus. Allâh ‘azza wa jall dit : Tu dis vrai ô Âdam. Il est certes celle de Mes créatures que J’agréé le plus. Comme tu M’as invoqué par son degré, Je te pardonne et si ce n’était à cause de Mouhammad, Je ne T’aurais pas créé ».
Al-Hâkim a dit : « ceci est un hadîth dont la chaîne de transmission est sahîh (authentique) ». »
Informations utiles :
– L’Illustre savant, Chaykhou l-Islâm, le Qâdî (Juge), le Hâfidh (spécialiste de la sience du hadîth), le Faqîh (spécialiste de la jurisprudence), le Moujtahid (jurisconsulte), le Ousoûli (spécialiste des fondements), le Loughawi (spécialiste de la langue arabe) le Chaykh Taqiyyou d-Dîn ‘Ali Ibnou ‘Abdi l-Kâfî As-Soubki est né en 683 à Soubk et il est décédé en 756 de l’Hégire au Caire (رحمه الله) c’est-à-dire il y a environ 680 ans. Il était du Madh-hab (Ecole de jurisprudence) de l’Imâm Ach-Châfi’i. Son père et son fils (Taj ad-Dîn Aboû Nasr ‘Abdou l-Wahhâb Ibn Taqiyyou d-Dîn as-Soubki) étaient également des savants reconnues.
Le Hâfidh As-Souyoûti a dit le concernant : « L’Imâm, le Faqîh (spécialiste de la jurisprudence), le Mouhaddith (transmetteur du hadîth), le Hâfidh (spécialiste de la science du Hadîth), le Moufassir (exégète), le Ousoûli (spécialiste des fondements), al-Adîb, le Moujtahid […] Chaykou l-Islâm, l’Imâm de son époque » . [Tabaqâtou l-Houffâdh]
Le Chaykh Ibnou Hajar Al-Haytami le surnommait « Chaykh al-Islâm ». [Al-Jawhar], et il a dit de lui : « L’Imâm, le Moujtahid, celui pour lequel il y a accord sur le fait qu’Il est un grand imâm et sur son grand degré, sa grande maîtrise, son rang d’ijtihad» [Al-Fatâwa l-Hadîthiyyah]
Tâjou d-Dîn As-Soubki (son fils) a dit à son sujet : « Le Chaykh, l’Imâm, le Faqîh (spécialiste de la jurisprudence), le Mouhaddith (transmetteur du hadîth), le Hâfidh (spécialiste de la science du hadîth), le Moufassir (exégète), le Mouqri (spécialiste de la récitation), le Ousoûli (spécialiste des fondements), le Moutakallim (spécialiste de la croyance), al-Adîb, le Nahwi (spécialiste de la grammaire Arabe), le Loughawi (spécialiste de la langue Arabe), le Moujtahid […] Chaykou l-Islâm, le juge des juges (Qâdi l-Qoudâ) » . [At-Tabaqât]
Chamsou d-Dîn Ad-Dâwoûdi a dit à son sujet : « Taqiyyou d-Dîn Abou l-Haçan le Faqîh (spécialiste de la jurisprudence) Châfi’ite, le Moufassir (exégète), le Hâfidh (spécialiste de la science du Hadîth), le Ousoûli (spécialiste des fondements), le Nahwi (spécialiste de la grammaire Arabe), le Loughawi (spécialiste de la langue Arabe), le Mouqri (spécialiste de la récitation) […] Chaykh al-Islâm, l’un des grands Moujtahid» [Tabaqâtou l-Moufassirîn]
As-Safadi a dit de lui : « Le juge des juges (Qâdi l-Qoudâ) […] le Chaykh, l’Imâm, le savant (al-‘Âlim), l’Illustre savant (al-‘Allâmah) […] le Moufassir (exégète), le Mouqri (spécialiste de la récitation), le Mouhaddîth (transmetteur du hadîth), le Ousoûli (spécialiste des fondements), le Faqîh (spécialiste de la jurisprudence) […] le Nahwi (spécialiste de la grammaire), le Loughawi (spécialiste de la langue Arabe) […] le Hâfidh (spécialiste de la science du hadîth), l’un des grands moujtahid […] Chaykhou l-Islâm, le grand savant de la Oummah, le pôle des Imâms » . [Al-Wâfî bi l-Wafayât]
Adh-Dhahabi a dit à son sujet : « Al-Qâdî (Juge), l’Imâm, Al-‘Allâmah (l’illustre savant), le Faqîh (spécialiste de la jurisprudence), le Mouhaddith (transmetteur du hadîth), le Hâfidh (spécialiste de la science du Hadîth), la fierté des savants » [Al-Mou’jam Al-Moukhtas]. Et Adh-Dhahabi a dit ces deux vers (poésie arabe) en éloge à Taqiyyou d-Dîn As-Soubki : “Que le Minbar Omeyyade soit fier lorsque le sage, l’océan de science, le taqiyy l’a gravi, Celui qui mémorise le plus parmi tous les chaykh de son époque, Le plus éloquent d’entre eux, celui qui maîtrise le plus la science des lois : ‘Ali” , il s’agit de ‘Ali le fils de ‘Abdou l-Kâfî, As-Soubki.
Az-Zirikli a dit à son sujet : « Le Chaykh al-Islâm de son époque, l’un des Houffâdh (spécialistes de la science du hadîth) et des Moufassirîn (exégètes) » [Al-A’lâm]
– Ici, après avoir confirmé que le tawassoul par le Prophète (صلى الله عليه وسلم) est permis dans tout les cas, même après sa mort [ voir l’article : ici ], il rapporte le tawassoul effectué par Âdam (عليه السلام).
– Ce hadîth a été rapporté par :
Le Hâfidh Al-Hâkim qui l’a déclaré sahîh (authentique) ;
Le Hâfidh Al-Bayhaqi avec une chaîne de transmission sahîh (authentique) tout comme l’a mentionné le Moufti de La Mecque, le Chaykh Ahmad Ibn Zayni Dahlân ;
Le Hâfidh At-Tabarâni ;
Le Hâfidh Ibnou ‘Açâkir ;
Et autres qu’eux.
– Le tawassoul est le fait de demander à Allâh l’obtention d’un profit ou l’empêchement d’une nuisance et ce, par la mention du nom d’un prophète ou d’un saint, par honneur pour celui par lequel le tawassoul est fait. Faire le tawassoul est permis en leur présence et en leur absence tout comme l’indique les preuves selon la Loi de l’Islâm. Le tawassoul ne constitue donc pas une adoration pour autre que Allâh.
– Le prophète Mouhammad (صلى الله عليه وسلم) enseigna lui-même le tawassoul aux compagnons et les compagnons le pratiquaient également après son décès (صلى الله عليه وسلم). [ voir l’article à ce sujet : ici ]
– Le tawassoul est donc un acte que nous ont enseigné les prophètes (‘alayhimou s-salâm).
– Lorsque Allâh demande à Âdam « Comment as-tu connu Mouhammad alors que Je ne l’ai pas encore créé », ce n’est pas par ignorance, car Allâh sait toute chose de toute éternité, et Il n’est pas concerné par l’ignorance. Cette demande était pour une sagesse particulière.
– Dans ce même ouvrage l’Imâm As-Soubki dit que le premier à avoir innové l’interdiction du tawassoul est Ibn Taymiyah (moujassim) [Voir l’article : ici]
– Retrouvez d’autres citations au sujet du tawassoul et du tabarrouk : ici .
– L’Imâm, le Hâfidh Aboû ‘Abdi l-Lâh Mouhammad Ibnou ‘Abdou l-Lâh Al-Hâkim An-Nayçâboûri est né en 321 à Nayçâboûr et il est décédé en 405 de l’Hégire à Nayçâboûr également (رحمه الله), c’est-à-dire il y a environ 1030 ans. Il était du madh-hab (école de jurisprudence) de l’Imâm Ach-Châfi’i. Il est très connu dans la science du hadîth, et son ouvrage le plus réputé est son recueil de hadîth « Al-Moustadrak ‘ala s-Sahîhayn » dans lequel il rapporte des hadîth selon les conditions d’acceptation de l’Imâm Al-Boukhâri et de l’Imâm Mouslim.', 'adam, al-hakim, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« عن عمر بن الخطاب رضي الله عنه قال: قال رسول الله (صلى الله عليه وسلم): « لما اعترف آدم عليه السلام بالخطيئة قال: يا رب أسألك بحق محمد لما غفرت لي. فقال الله: يا آدم، وكيف عرفت محمدا ولم أخلقه؟ قال: يا رب لأنك لما خلقتني بيدك، ونفخت فيّ من روحك رفعت رأسي، فرأيت على قوائم العرش مكتوبا: (لا إله إلا الله، محمد رسول الله) فعرفت أنك لم تضف إلى اسمك إلا أحب الخلق إليك، فقال الله: صدقت يا آدم، إنه لأحب الخلق إليّ، إذ سألتني بحقه فقد غفرت لك، ولولا محمد ما خلقتك ». قال الحاكم: هذا حديث صحيح الإسناد »');

-- source: https://islamsunnite.net/limam-al-qourtoubi-explique-le-verset-wa-ja-a-rabbouka-et-confirme-que-allah-est-sans-endroit/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit', 'Haçan Al-Basri', '{وَجَاءَ رَبُّكَ} أي أمره و قضاؤه. قاله الحسن ، وهو من باب حذف المضاف', '« « wa jâ-a Rabbouka » {وَجَآءَ رَبُّك }, c’est-à-dire que viendront l’ordre de ton Seigneur et Son jugement. Al-Haçân [Al-Basri] a dit cela.»', '', 'Dans son célèbre tafsîr, lors de l’explication du verset 22 de Soûrat Al-Fajr, l’Imâm Al-Qourtoubi a dit :
Plus loin, il dit :', 'allah, aqida, aube, book'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '{وَجَاءَ رَبُّكَ} أي أمره و قضاؤه. قاله الحسن ، وهو من باب حذف المضاف');

-- source: https://islamsunnite.net/limam-al-qourtoubi-explique-le-verset-wa-ja-a-rabbouka-et-confirme-que-allah-est-sans-endroit/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit', 'Haçan Al-Basri', 'والله جل ثناؤه لا يوصف بالتحول من مكانٍ إلى مكانٍ ، وأنَّى له التحول والانتقال ولا مكان له ولا أوان ، ولا يجري عليه وقتٌ ولا زمــان ، لأن في جريان الوقت على الشىء فــوت الأوقات ، ومن فــاته شىء فهو عاجز', '« Allâh, gloire à Lui, n’est pas qualifié par l’évolution d’un endroit à un autre, Il Lui est impossible le changement, le déplacement, Il n’a pas d’endroit ni d’époque. Il n’est pas sujet à l’instant ni au temps car l’écoulement du temps sur quelque chose implique que les moments passés lui échappent et celui à qui quelque chose échappe n’est pas tout puissant ».', '', 'Informations utiles :
– Le Moufassir (exégète) Mouhammad Ibnou Ahmad Al-Ansâri Al-Qourtoubi est décédé en 671 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 760 ans. Il est du madh-hab (Ecole de jurisprudence) de l’Imâm Mâlik. Son tafsîr « Al-Jâmi’ou li Ahkâmi l-Qour-ân » est une référence incontournable.
Adh-Dhahabi a dit à son sujet : « L’illustre savant (Al-‘Allâmah) […] un Imâm très intelligent, un érudit dans la science, il est l’auteur de nombreux ouvrages qui sont très utiles et qui indiquent sa grande connaissance, et l’abondance de sa vertu » [Târîkhou l-Islâm]
Ibnou Farhoûn al-Mâliki a dit de lui : « Le Chaykh, l’Imâm […] le moufassir (exégète), Il était parmi les esclaves vertueux de Allâh, de parmi les savants , les connaisseurs, les pieux, les détachés du bas-monde, ceux qui sont occupé par les affaires qui concernent l’au-delà. » Et il a dit au sujet de son Tafsîr (exégèse du Qour-ân) : « Il compte parmi les tafsîr les plus importants et les plus éminents en terme de mérite » [Ad-Dîbâj]
Ibnou ‘Imâd al-Hambali a dit : « Il était un Imâm, un savant, de parmi ceux qui ont une grande connaissance du hadîth, auteur de bons ouvrages » [Chadharâtou dh-Dhahab]
Mouhammad Makhloûf a dit à son sujet : « Le savant, l’Imâm, le glorieux (al-jalîl), le vertueux (al-fâdil), le spécialiste de la jurisprudence (faqîh), le spécialiste de l’explication du Qour-ân (moufassir), le pieux, celui qui est scrupuleux, celui qui est complet, il était parmi les esclaves vertueux de Allâh et de parmi les savants qui ont le plus de science » [Chajaratou n-Noûr]
Az-Zirikli a dit de lui : « Il est de parmi les plus grands des moufassiroûn (exégètes du Qour-ân), il était vertueux, et pieux» [Al-A’lâm]
– Ici il explique le verset {وجاءَ ربُّكَ} « wa jâ-a rabbouka » [Soûrat Al-Fajr/22] et dit que cela signifie que c’est l’ordre de Allâh et Son jugement qui viendront. Et il précise que cette explication a été donnée par l’Imâm Al-Haçân Al-Basri. D’autres savants rapportent cela de lui comme l’Imâm Al-Baghawi [ Dans son tafsîr ].
– L’Illustre successeur des compagnons (tâbi’i), l’Imâm Aboû Sa’îd Al-Haçan Ibn Abi l-Haçan Yaçâr Al-Basri est né en 21 et est décédé en 110 de l’Hégire (رحمه الله), c’est-à-dire il y a environ 1325 ans. Il fut l’un des savants de l’Islâm les plus réputé, de nombreux compagnons et autres savants de l’Islâm ont fait son éloge.
– Ce verset ne veut pas dire que c’est Allâh Lui-même qui viendra comme l’ont prétendu certains anthropomorphistes. L’Imâm Ach-Chahrastâni a dit à ce sujet : « En ce qui concerne les expressions révélées (c’est-à-dire présentes dans le Qour-ân ou la Sounnah) telles que « al-istiwâ », « al-wajh », « al-yadayn », « al-janb », « al-majî » [comme dans le verset wa jâ-a Rabbouka], « al-ityân », « al-fawqiyyah » et d’autres que celles-ci, les anthropomorphistes les prennent selon leur sens apparent, je veux dire telles qu’elles sont comprises lorsqu’elles sont employées au sujet des corps » [ Al-Milal wa n-Nihal ]
– Cette interprétation à également été rapportée de l’Imâm Ahmad Ibn Hanbal dans de nombreux ouvrages de savants. Parmi eux :
Le Hâfidh Al-Bayhaqi, avec une chaîne de transmission authentique comme le mentionne Ibnou Kathîr [ Al-Bidâyah wa n-Nihâyah ]
L’Imâm Ibnou l-Jawzi Al-Hanbali [dans son livre Daf’ou Choubahi t-Tachbîh]
Le Chaykh Ahmad Ibn Hamdân Al-Hanbali [dans son livre Nihâyatou l-Moubtadi-în]
Le Chaykh Taqiyyou d-Dîn Al-Hisni [ Daf’ou choubahi man chabbaha wa tamarrad ]
Le Chaykh As-Sa’di Al-Hanbali [ Al-Jawhar Al-Mouhsal ]
Le Chaykh Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali [dans son tafsîr]
Le Chaykh Al-Kawthari [dans son introduction du livre Al-Asmâ-ou wa s-Sifât]
– Cette citation est une preuve supplémentaire confirmant le fait que les musulmans du Salaf avaient quelquefois recours à l’interprétation détaillé (ta-wîl).
– Le Chaykh Ibn Hamdân Al-Hanbali a dit : « Et [l’Imâm] Ahmad a certes interprété certains versets et certains hadîths comme le verset de an-najwâ, ainsi que Sa parole { أَن يَأْتِيَهُمُ اللّهُ } [an ya-tiyahoumou l-Lâh] et il a dit qu’il s’agit de Sa puissance (c’est-à-dire les manifestations de Sa toute puissance) et Son ordre. Et Sa parole { وَجَاء رَبُّكَ } [wa jâ-a rabbouk] et il a dit qu’il s’agit de Sa puissance. Et Ibnou l-Jawzi [Al-Hambali] a mentionné ces deux interprétations [de l’Imâm Ahmad] dans « Al-Minhâj » et il a, quant à lui, penché vers le fait de prendre les versets tels qu’ils sont parvenus sans en donner d’explications, et Ibn ‘Aqîl [Al-Hambali] a interprété de nombreux versets et khabar. Et [l’Imâm] Ahmad a interprété la parole du prophète (صلى الله عليه وسلم) : « الحجر الأسود يمين الله في الارض » [al-hajarou l-aswad yamînou l-Lâhi fi l-ard] et ce qui est similaire » [Nihâyatou l-Moubtadi-în]. Cela nous indique que bien que la voie majoritaire des savants du Salaf était de ne pas procéder à l’interprétation, il est toutefois arrivé que certains d’entre eux, à l’image de l’Imâm Ahmad Ibn Hambal, la pratique dans certains cas. Et il en est de même concernant les savants du madh-hab Hambalite.
– De nombreux autres savants ont donné des explications similaires, parmi eux :
L’Imâm Al-Bayhaqi qui dit que le Majî de Allâh n’est pas un mouvement ou un déplacement [ Dans son livre Al-I’tiqâd ] et il explique qu’il est valable de se contenter d’accepter le majî sans comment (bilâ kayf) [ Dans son ouvrage Al-I’tiqâd ] en niant par cette expression le déplacement ou le mouvement à l’égard de Allâh.
L’Imâm Al-Jouwayni (m.478 H.) qui a dit : « Le sens du majî n’est pas le déplacement et la disparition [d’un endroit à autre], Allâh est exempt de cela, mais le sens de Sa parole { وجاء ربك } « wa jâ-a Rabbouk » c’est-à-dire l’ordre de ton Seigneur viendra, ainsi que Son jugement » [Dans son livre Al-Irchâd]
L’Imâm Al-Baghawi [ Dans son tafsîr ]
L’Imâm Ibnou l-Jawzi [ Dans son livre Daf’ou Choubahi t-Tachbîh ]
L’Imâm Al-Qourtoubi [Dans son tafsîr]
L’Imâm Ibnou Abî Jamrah (m.699 H.) qui a dit : « L a parole de Allâh ta’âlâ { وجاء ربك والملك } « wa jâ-a Rabbouka wa l-malak » c’est-à-dire : l’ordre de ton Seigneur viendra ; et ceci [ce genre de formulation] est très utilisé dans la langue arabe » [Dans son livre Bahjatou n-Noufoûs]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Il n’est pas permis d’attribuer à Allâh la venue (majî) et l’aller (dhahâb) [c’est-à-dire le mouvement et le déplacement] car cela fait partie des attributs des créatures et des caractéristiques des choses entrées en existence, ce sont donc deux attributs qui sont rejetés concernant Allâh ta’âlâ. Ne vois-tu pas comment [le prophète] Ibrahîm -عليه السلام- a argumenté sur le fait que ce qui se déplace d’un endroit à un autre endroit n’est pas Dieu, lorsqu’il a dit : {فَلَمَّا أَفَلَ قَالَ لَا أُحِبُّ الْآفِلِينَ} [ce qui signifie] «Je n’adore pas les choses qui disparaissent».» [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Le sens de la parole de Allâh ta’âla {وجاء ربك} « wa jâ-a Rabbouka » est : viendra l’ordre de ton Seigneur» [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
L’Imâm Ath-Tha’âlibi [ Dans son tafsîr ]
Et autres qu’eux.
– Les savants de l’Islâm, qu’ils soient du Salaf ou du Khalaf, sont unanimes a exempter Allâh des caractéristiques des corps comme le mouvement et le déplacement. Nous pouvons citer parmi eux :
L’Imâm Al-Mâtourîdi [ Kitâbou t-Tawhîd ]
Le Hâfidh Ibn Hibbân [ Dans son Sahîh ]
L’Imâm Al-Khattâbi
L’Imâm Al-Halîmi [ Rapporté par Al-Bayhaqi ]
L’Imâm Ibn Battâl
Abou l-Fadl At-Tamîmi Al-Hambali qui a dit concernant le hadîth du nouzoûl : « Et il n’est pas possible à Son sujet le déplacement et l’incarnation dans les endroits » [Rapporté par Ibn Hamdân dans Nihâyatou l-Moubtadi-în]
Ibnou l-Bannâ Al-Hambali qui a dit concernant le hadîth du nouzoûl : « On ne dit pas que cela a lieu par un mouvement ou un déplacement » [Rapporté par Ibn Hamdân dans Nihâyatou l-Moubtadi-în]
L’Imâm Al-Bâqillâni [ Al-Insâf ]
L’Imâm Al-Bayhaqi [ Al-I’tiqâd ]
L’Imâm Al-Isfarâyîni [ At-Tabsîrou fi d-Dîn ]
L’Imâm Ach-Chirâzi [ Al-Ichârah ]
L’Imâm Al-Jouwayni
L’Imâm Al-Ghazâli [ Ihyâ-ou ‘Ouloûmi d-Dîn ]
Le Qâdî Ibn Rouchd Al-Jadd [ Al-Mouqaddimât al-Moumahhadât ]
L’Imâm An-Naçafi (m.508 H.)
Le Chaykh Ibn ‘Aqîl Al-Hambali a dit concernant le hadîth du nouzoûl : « Ce n’est pas par la disparition (d’un endroit à un autre) ou un déplacement, et ce n’est pas comme notre nouzoûl […] devient mécréant celui qui assimile Allâh à ce qu’Il a créé » [Rapporté par Ibn Hamdân Nihâyatou l-Moubtadi-în]
L’Imâm Ibn Al-Jawzi [ Saydou l-Khâtir ] et [ Daf’ou Choubahi t-Tachbîh ]
L’Imâm Al-Qourtoubi : [ Dans son Tafsîr (1) ] et [ Dans son Tafsîr (2) ]
L’Imâm An-Nawawi [ Charh Sahîh Mouslim (1) ] et [ Charh Sahîh Mouslim (2) ]
L’Imâm Al-Baydâwi [ Rapporté par Ibn Hajar ] et [ Rapporté par Az-Zourqâni ]
Le Chaykh Mouhammad At-Tîbi
Le Loughawi Ibn Mandhoûr [ Liçânou l-‘Arab ]
Le Qâdî Ibn Jamâ’ah [ Idâhou d-Dalîl ]
Le Chaykh ‘Abdou l-Lâh Al-Yamani
L’Imâm Tâjou d-Dîn As-Soubki
L’Imâm Taqiyyou d-Dîn Al-Hisni [ Daf’ou choubahi man chabbaha wa tamarrad ]
L’Imâm Ibn Hajar Al-‘Asqalâni qui mentionne l’unanimité du Salaf et du Khalaf [ Charh Sahîh Al-Boukhâri (1) ] et [ Charh Sahîh Al-Boukhâri (2) ]
Le Chaykh Badrou d-Dîn Al-‘Ayni qui a dit : «Il est impossible d’attribuer à Allâh ta’âlâ l’endroit et le nouzoûl dans le sens du déplacement » [Dans son commentaire du Sahîh Al-Boukhâri]
L’Imâm As-Sanoûçi qui a dit : «Il est impossible au sujet de Allâh ta’âlâ […] le mouvement et l’immobilité » [Dans son traité de croyance Al-Moufîdah li l-Wildân wa n-Niçâ-i l-Mou-minât]
L’Imâm Al-Qastallâni
La Chaykh Moullâ ‘Ali Al-Qâri
L’Imâm Az-Zourqâni [ Charh du Mouwatta de l’Imâm Mâlik ]
Le Chaykh Ahmad Ridâ [ Qawâri’ou l-Qahhâr ]
Le Chaykh Mahmoud As-Soubki, qui mentionne l’unanimité des savants du Salaf et du Khalaf [ It-hâfou l-Kâ-inat (1) ] et [ It-hâfou l-Kâ-inat (2) ]
L’ancien Moufti d’Egypte, le Chaykh Mouhammad Bakhît Al-Moutî’i Al-Hanafi Al-Misri qui a dit : «Il est impossible d’attribuer à Allâh ta’âlâ l’endroit et le nouzoûl dans le sens du déplacement » [Dans son livre Al-Kalimâtou t-Tayyibâtou fî Ma-thoûri ‘ani l-Isrâ-i wa l-Mi’râj mina r-Riwâyât]
Le Chaykh Al-‘Azzâmi qui mentionne l’unanimité du Salaf et du Khalaf [ Fourqânou l-Qour-ân ]
Le Hâfidh ‘Abdou l-Lâh Al-Ghoumâri
Le Chaykh Al-Harari [ As-Sirâtou l-Moustaqîm ]
et beaucoup d’autres…
– Le Hâfidh Ibnou l-Qattân Al-Fâçi Al-Mâliki (m.628 H.) a dit : « Et ils [les gens de la Sounnah, du Salaf et du Khalaf] ont été unanimes que Allâh yajî au jour du jugement […] et Son majî n’est pas un mouvement ni un déplacement » [Al-Iqnâ’]
– Certains savants ont mentionné de manière explicite dans leurs ouvrages que le fait d’attribuer à Allâh le mouvement ou le déplacement est de la mécréance. Parmi eux :
L’Imâm Abou l-Haçan Al-Ach’ari [ Rapporté par As-Soubki ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ Charh ‘Aqîdah Mâlik As-Saghîr ]
L’Imâm Taqiyyou d-Dîn Al-Hisni [ Daf’ou choubahi man chabbaha wa tamarrad ]
L’Imâm Al-Kawthari qui mentionne l’unanimité [ Maqâlâtou l-Kawthari (1) ] et [ Maqâlâtou l-Kawthari (2) ]
Ibnou l-Bannâ Al-Hambali qui a dit : « Celui qui prend le nouzoûl dans le sens de quitter un endroit pour en occuper un autre, et du déplacement alors c’est de la mécréance » [Al-Ousoûlou l-Moujarradah].
– Puis, l’Imâm Al-Qourtoubi confirme le fait que Allâh existe sans endroit, qu’Il n’est pas concerné par le changement et le déplacement, et qu’Il ne dépend pas du temps.', 'allah, aqida, aube, book'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'والله جل ثناؤه لا يوصف بالتحول من مكانٍ إلى مكانٍ ، وأنَّى له التحول والانتقال ولا مكان له ولا أوان ، ولا يجري عليه وقتٌ ولا زمــان ، لأن في جريان الوقت على الشىء فــوت الأوقات ، ومن فــاته شىء فهو عاجز');

-- source: https://islamsunnite.net/limam-ibn-abdi-s-salam-parle-de-la-croyance-en-allah-et-confirme-quil-est-sans-endroit/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm Ibn ‘Abdi s-Salâm parle de la croyance en Allâh et confirme qu’Il est sans endroit', 'Ibn ''Abdi s-Salam', 'ليس – أي الله – بجسم مصوَّر ، ولا جوهرٍ محدودٍ مقدَّرٍ ، ولا يُشبه شيئاً، ولا يُشبهه شىءٌ ، ولا تحيط به الجهات ، ولا تكتنفه الأرضون ولا السموات ، كان قبل أن كوَّن الـمكان ودبَّر الزمان ، وهو الآن على ما عليه كان', '« Allâh n’est pas un corps qui aurait une image ni une substance limitée qui aurait une quantité. Il n’a pas de ressemblance avec quoi que ce soit et rien n’a de ressemblance avec Lui. Il n’est pas entouré par les directions. Il n’est pas contenu par les terres et les cieux. Son existence prime sur la création de l’endroit. Il a établi le temps et Il est maintenant tel qu’Il est de tout éternité ».', '', 'Dans son livre « Tabaqâtou ch-Châfi’iyyati l-Koubrâ », l’Imâm Tâjou d-Dîn As-Soubki rapporte que l’Imâm Ibnou ‘Abdi s-Salâm a dit :
Informations utiles :
– Le Chaykh Tâjou d-Dîn Aboû Nasr ‘Abdou l-Wahhâb Ibn ‘Ali Ibn Abdou l-Kâfî As-Soubki est né en 728 et il est décédé en 771 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 660 ans. Il est le fils du grand savant Taqiyyou d-Dîn As-Soubki. Son livre « Tabaqâtou ch-Châfi’iyyati l-Koubrâ » est un ensemble de biographies de savants chafi’ites.
– Chaykhou l-Islâm Aboû Mouhammad ‘Izzou d-Dîn ‘Abdou l-‘Azîz Ibnou ‘Abdi s-Salâm était surnommé le Sultan des Savants, il est né en 577 à Damas et il est décédé en 660 de l’Hégire au Caire (رحمه الله) c’est-à-dire il y a environ 775 ans, il était du madh-hab (école de jurisprudence) Chafi’ite. Il y a de parmi ses nombreux Chouyoûkh : l’Imâm Fakhrou d-Dîn Ar-Râzi, l’Imâm Sayfou d-Dîn Al-Âmidi et le Chaykh Fakhrou d-Dîn Ibnou ‘Açâkir. Et on compte de parmi ses plus illustres élèves : l’Imâm Ibnou Daqîq Al-‘Îd, l’Imâm Chihâbou d-Dîn Al-Qarâfi et le Hâfidh Ad-Dimyâti.
An-Nawawi a dit à son sujet : «L’Imâm, le Chaykh, à propos duquel il y a unanimité sur le fait qu’il est un guide, sur sa grandeur, sur sa maîtrise de nombreuses sortes de sciences et sur le fait qu’il y excellait» [Tahdhîbou l-‘Asmâ-i wa l-Loughât]
Ibnou Daqîq Al-‘Îd a dit de lui : «Ibnou ‘Abdi s-Salâm était l’un des Sultans des savants » [Tabaqâtou l-Moufassirîn]
Aboû ‘Oumar Ibnou l-Hâjib a dit le concernant : « Ibnou ‘Abdi s-Salâm a plus de science (afqah) que Al-Ghazâli » [Tabaqâtou l-Moufassirîn]
Tâjou d-Dîn As-Soubki a dit : « le Chaykh de l’Islâm et des musulmans, l’un des illustres Imams, le sultan des savants, l’Imâm de son époque sans contestation, celui qui accomplit l’ordre du bien et l’interdiction du mal de son époque, celui qui connaît les sujets de la Loi et les sujets qui sont le moins à la portée des gens, celui qui connaît les significations de la Loi. Il n’a pas rencontré quelqu’un qui lui soit semblable dans la science et ceux qui l’ont vu n’ont pas vu qui lui soit semblable dans la science, dans l’ascèse, dans le fait d’ordonner le bien et d’interdire le mal, dans le courage, la forte personnalité et la force du cœur » [At-Tabaqât]
As-Souyoûti a dit à son sujet : « Chaykh al-Islâm, le Sultan des savants » [Housnou l-Mouhâdarah]
Moullâ ‘Ali Al-Qârî a dit : « Il n’y a pas de doute que Ibnou ‘Abdi s-Salâm fait partie des plus illustres des savants et ceux qui sont les plus fiables» [Charh Al-Fiqh Al-Akbar]
Ibn Kathîr a dit de lui : « Il a rassemblé les différentes sortes de sciences, le tafsîr, le hadîth, le fiqh (jurisprudence), les fondements (ousoûl), la langue Arabe, et autres jusqu’à atteindre le niveau de l’ijtihâd » [Al-Bidâyah wa n-Nihâyah]
Adh-Dhahabi a dit le concernant : « Il a atteint le niveau de l’ijtihâd » [Al-‘Ibr]
– Ici, il dit clairement que Allâh n’est pas un corps, qu’Il n’a pas d’image, qu’Il n’est pas entouré par les directions, qu’Il n’est ni dans les terres, ni dans les cieux, et qu’Il existe sans endroit.
– Cette citation de l’Imâm Ibnou ‘Abdi s-Salâm provient de son propre livre « Moulhatou l-I’tiqâd ».
– Dans d’autres de ses ouvrages, l’Imâm Ibnou ‘Abdi s-Salâm a confirmé cette croyance. En effet il a expliqué la parole de l’Imâm Aboû Hanifah : « Celui qui dit : Je ne sais pas si Allâh ta’âlâ est au ciel ou sur terre est devenu mécréant» en disant : « Car cette parole donne l’illusion que Allâh (Al-Haqq) aurait un endroit et celui qui se donne l’illusion que Allâh a un endroit est un assimilationniste (mouchabbih)» ainsi dans cette citation il confirme clairement que le fait de croire que Allâh serait dans un endroit est de la mécréance [Retrouvez l’article : ici] .', 'allah, aqida, as-soubki, ciel'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ليس – أي الله – بجسم مصوَّر ، ولا جوهرٍ محدودٍ مقدَّرٍ ، ولا يُشبه شيئاً، ولا يُشبهه شىءٌ ، ولا تحيط به الجهات ، ولا تكتنفه الأرضون ولا السموات ، كان قبل أن كوَّن الـمكان ودبَّر الزمان ، وهو الآن على ما عليه كان');

-- source: https://islamsunnite.net/limam-ibn-abbas-interprete-saq-dans-sourat-al-qalam42-rapporte-par-at-tabari/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm Ibn ‘Abbâs interprète « sâq » dans soûrat Al-Qalam/42 [rapporté par At-Tabari]', 'Tabari', 'حدثني عليّ، قال: ثنا أبو صالح، قال: ثنا معاوية، عن ابن عباس، قوله { يَوْمَ يُكْشَفُ عَن ساقٍ } هو الأمر الشديد المفظع من الهول يوم القيامة', '« Ibnou ’Abbâs a dit au sujet de la parole de Allâh : { يَوْمَ يُكْشَفُ عَنْ ساقٍ } (yawma youkchafou ‘an sâq) [-soûrat Al-Qalam / 42-, qui signifie : « Le jour où sera découvert un sâq »] c’est l’intensité et la difficulté dues à l’angoisse au Jour du Jugement. »', '', 'Dans son célèbre tafsîr, l’Imâm At-Tabari a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Moujtahid Aboû Ja’far Mouhammad Ibnou Jarîr At-Tabari est un célèbre savant du Salaf, il est né en 224 et il est décédé en 310 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1120 ans. Son tafsîr connu sous le nom de « Jâmi’ou l-bayân fî ta-wîl al-Qour-ân» est très réputé.
Le Chaykh ‘Abdou l-Lâh Al-Harari a dit de lui : « At-Tabari est un Imâm moujtahid. Il a mémorisé plus de cent milles Hadîth. Il était similaire à l’Imâm Ach-Châfi’i et à l’Imâm Mâlik (que Allâh les agréé) »
– L’éminent savant du Salaf, l’Imâm des Moufassir, Abdou l-Lâh Ibnou ‘Abbâs est un compagnon et il est le cousin du Prophète (صلى الله عليه وسلم). Il est décédé en 68 de l’Hégire (رضي الله عنه) c’est-à-dire il y a environ 1365 ans. Il est très connu pour sa science de l’interprétation (ta-wîl) du Qour-ân. Le Messager de Allah (صلى الله عليه وسلم) a fait une invocation en sa faveur, par sa parole : « Allâhoumma ‘allimhou l-hikmata wa ta-wîla l-kitâb ». Cela signifie : « Ô Allâh, apprends-lui la sagesse et l’interprétation du Livre ». Cette parole est rapportée par Al-Boukhâri, Ibnou Mâjah et d’autres encore en des termes différents. Le Hâfidh Ibnou l-Jawzi dans son livre Al-Majâlis a dit : “Et il n’y a pas de doute que Allâh a exaucé cette invocation du Messager”. Retrouvez sa biographie : ici .
– Ici, il dit que ce qui est visé par « sâq » dans ce verset, c’est l’intensité et la difficulté dues à l’angoisse au Jour du Jugement.
– Cette interprétation de l’Imâm Ibnou ‘Abbâs a également été rapportée de lui par l’Imâm Al-Bayhaqi [ voir : ici ], par l’Imâm Al-Qourtoubi, par l’Imâm As-Souyoûti et beaucoup d’autres savants.
– Ce verset ne veut absolument pas dire que Allâh aurait une jambe ou un tibia, comme l’ont prétendu certains assimilateurs. Dans la langue arabe, le mot « sâq » a différents sens. Lorsqu’il est employé au sujet de Allâh, il n’est pas à prendre selon le sens apparent, car le sens apparent de « sâq » est jambe ou tibia. Attribuer un membre ou un organe à Allâh est de l’anthropomorphisme et donc de la mécréance.
– L’Imâm At-Tahâwi (رحمه الله) qui fait partie des illustres savants du salaf a dit dans son traité présentant la croyance de l’ensemble des gens de la Sounnah : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres. Les six directions ne Le délimitent pas, contrairement à toutes les créatures » [ voir : ici ].
– Cette interprétation a également été mentionnée par Qatâdah [ Voir : ici ], par Moujâhid, par At-Tabari [ voir : ici ], par Al-Khattâbi [ Voir : ici ], et autres qu’eux. Ceci nous démontre que les savants du Salaf, qu’ils soient compagnons, successeurs des compagnons ou autres, avaient quelquefois recourt à l’interprétation détaillée.
– L’Imâm Zaynou d-Dîn Ibnou l-Mounayyir (m.695 h.) qui a dit : « Le Sâq est expliqué par une difficulté, et le fait qu’il soit dévoilé signifie l’intensité de la difficulté » [Dans son livre Tafsîr Mouchkilât Ahâdith youchkilou dhâhirouhâ]
– Retrouvez d’autres citations de savants concernant le terme « sâq » : ici .', 'allah, aqida, book, compagnon'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'حدثني عليّ، قال: ثنا أبو صالح، قال: ثنا معاوية، عن ابن عباس، قوله { يَوْمَ يُكْشَفُ عَن ساقٍ } هو الأمر الشديد المفظع من الهول يوم القيامة');

-- source: https://islamsunnite.net/chaykh-ahmadou-bamba-confirme-que-allah-existe-sans-endroit/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Chaykh Ahmadou Bamba confirme que Allâh existe sans endroit', 'Ahmadou Bamba', 'فـكـل مـا يـخـطـر بالبـال أبـد فـبخـلاف ذاك ربـنـا الأحـد »', '« Il (Allâh) n’a pas de semblable, Il ne dépends pas du temps, Il est exempt du genre et Il est sans endroit.', '', 'Dans son livre « Mawâhibou l-Qouddoûs », le Chaykh Ahmadou Bamba a dit :
« ﺇﺫ ﻻ ﻟـــﻪ ﻣﺜـــﻞ ﻭﻻ ﺯﻣـــﺎﻥ ﻭﻻ ﻟـــﻪ ﺟـــﻨﺲ ﻭﻻ ﻣﻜـــﺎﻥ
Et toutes les choses que tu imagines en ton esprit, notre Seigneur qui est Unique n’est pas ainsi »
Informations utiles :
– Le Chaykh Ahmad Ibn Mouhammad Ibn Habîbou l-Lâh Bamba Al-Baki Al-Mâliki connu sous le nom de Ahmadou Bamba est décédé en 1345 de l’hégire (رحمه الله), c’est-à-dire il y a environ 90 ans. Il fait partie des savants les plus connus d’Afrique de l’ouest.
– Ici, il confirme la croyance des musulmans sur le fait que Allâh n’a aucun semblable, qu’Il existe sans endroit et qu’Il ne dépend pas du temps.
– En effet, Allâh ta’âlâ a dit dans Son Livre honoré {لَيْسَ كَمِثْلِهِ شَيْءٌ} [Ce qui a pour sens] : « Rien n’est tel que Lui – d’aucune façon que ce soit -». Les savants de l’Islâm ont confirmé que ce verset en lui-même est une preuve pour exempter Allâh de l’endroit, de la direction et du corps. Parmi eux : l’Imâm Al-Baqillâni [ voir : ici ], l’Imâm Ar-Râzi [ voir : ici ], l’Imâm As-Souyoûti [ voir : ici ], l’Imâm Al-Kawthari [ voir : ici ], le Mouhaddith Al-Harari [ voir : ici ] et autres.', 'afrique, ahmadou, ahmadou bamba, al-baki'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فـكـل مـا يـخـطـر بالبـال أبـد فـبخـلاف ذاك ربـنـا الأحـد »');

-- source: https://islamsunnite.net/limam-al-qourtoubi-dit-que-allah-est-exempt-de-lendroit-de-la-direction-et-du-temps/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm Al-Qourtoubi dit que Allâh est exempt de l’endroit, de la direction et du temps', 'Qourtoubi', 'ومن علم أن الله سبحانه الغني على الاطلاق نزهه عن المكان و الزمان و الجهة', 'Celui qui aura su que Allâh est Al-Ghaniyy [C’est-à-dire Celui Qui n’a pas besoin des créatures et dont toutes les créatures ont besoin] dans l’absolu, aura exempté Allâh de l’endroit, du temps et de la direction.', '', 'Dans son livre Al-Asnâ (page 170 de cette édition), l’Imâm Al-Qourtoubi a dit :
Informations utiles :
– Le Moufassir (exégète) Mouhammad Ibnou Ahmad Al-Ansâri Al-Qourtoubi est décédé en 671 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 760 ans. Il est du madh-hab (Ecole de jurisprudence) de l’Imâm Mâlik. Son tafsîr « Al-Jâmi’ou li Ahkâmi l-Qour-ân » est une référence incontournable.
Adh-Dhahabi a dit à son sujet : « L’illustre savant (Al-‘Allâmah) […] un Imâm très intelligent, un érudit dans la science, il est l’auteur de nombreux ouvrages qui sont très utiles et qui indiquent sa grande connaissance, et l’abondance de sa vertu » [Târîkhou l-Islâm]
Ibnou Farhoûn al-Mâliki a dit de lui : « Le Chaykh, l’Imâm […] le moufassir (exégète), Il était parmi les esclaves vertueux de Allâh, de parmi les savants , les connaisseurs, les pieux, les détachés du bas-monde, ceux qui sont occupé par les affaires qui concernent l’au-delà. » Et il a dit au sujet de son Tafsîr (exégèse du Qour-ân) : « Il compte parmi les tafsîr les plus importants et les plus éminents en terme de mérite » [Ad-Dîbâj]
Ibnou ‘Imâd al-Hambali a dit : « Il était un Imâm, un savant, de parmi ceux qui ont une grande connaissance du hadîth, auteur de bons ouvrages » [Chadharâtou dh-Dhahab]
Mouhammad Makhloûf a dit à son sujet : « Le savant, l’Imâm, le glorieux (al-jalîl), le vertueux (al-fâdil), le spécialiste de la jurisprudence (faqîh), le spécialiste de l’explication du Qour-ân (moufassir), le pieux, celui qui est scrupuleux, celui qui est complet, il était parmi les esclaves vertueux de Allâh et de parmi les savants qui ont le plus de science » [Chajaratou n-Noûr]
Az-Zirikli a dit de lui : « Il est de parmi les plus grands des moufassiroûn (exégètes du Qour-ân), il était vertueux, et pieux» [Al-A’lâm]
– Ici, il dit que Allâh est Al-Ghaniyy, c’est-à-dire Celui Qui n’a pas besoin des créatures et que par conséquent Allâh est exempt de l’endroit, de la direction et du temps.
– Dans de nombreux passages de ses ouvrages l’Imâm Al-Qourtoubi a appuyé la croyance des gens de la Sounnah en disant que Allâh existe sans endroit et sans direction [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ] …', 'al asna, al-asnâ fî charh asmâ'' allah al-housnâ, al-ghani, al-ghaniyy'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ومن علم أن الله سبحانه الغني على الاطلاق نزهه عن المكان و الزمان و الجهة');

-- source: https://islamsunnite.net/limam-ibn-noujaym-declare-mecreant-ceux-qui-attribuent-lendroit-a-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm Ibn Noujaym déclare mécréant ceux qui attribuent l’endroit à Allâh', 'Ibn Noujaym', 'ويكفر باثبات المكان لله تعالى، فإن قال: الله في السماء، فإن قصد حكاية ما جاء في ظاهر الأخبار لا يكفر، وإن أراد المكان كفر', '« Devient mécréant, celui qui attribue l’endroit à Allâh ta’âlâ, et s’il dit : « Allâh fi s-samâ », [il y a deux cas : ] s’il visait le simple fait de répéter ce qui est parvenu de manière apparente dans les textes, il ne commet pas de mécréance, mais s’il visait par cela l’endroit, il commet de la mécréance. »', '', 'Dans son livre « Al-Bahrou r-Râ-iq » (Tome 5 pages 202 et 203 de notre édition), l’Imâm Ibn Noujaym Al-Hanafi a dit, en citant les mauvaises croyances qui font sortir de l’Islâm :
Informations utiles :
– L’Imâm, Zaynou d-Dîn Ibnou Ibrâhîm Ibnou Mouhammad, connu sous le nom de Ibn Noujaym al-Hanafi Al-Misri est né en 926 et il est décédé en 970 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 450 ans. Il était un Faqîh (spécialiste de la jurisprudence) et un grand savant Hanafite.
– Ici, il dit clairement qu’attribuer à Allâh un endroit est de la mécréance, en précisant que celui qui dit « Allâh fi s-samâ» et qui vise par cette parole que Allâh est dans un endroit, alors il a commis de la mécréance, mais s’il a dit cette expression simplement pour répéter ce qui est parvenu de manière apparente dans les textes, sans attribuer l’endroit à Allâh, alors il ne commet pas de mécréance. Ce jugement a également été mentionné par d’autres savants tels que le Moufassir Ismâ’îl Haqqi et le Chaykh Mahmoud As-Soubki Al-Azhari [ voir : ici ], et dans le recueil «Al-Fatâwâ Al-Hindiyyah» composé par un grand groupe de savants de la région de l’Inde [ voir : ici ].
– Le Chaykh Ahmad Ridâ Khân a dit : « Dans [le livre] Al-Bahrou r-Râ-iq [de l’Imâm Ibn Noujaym Al-Hanafi] et dans [Al-Fatâwâ] Al-Hindiyyah, il est stipulé : Devient mécréant celui qui attribue l’endroit à Allâh ta’âlâ. Et dans les Fatâwâ de l’Imâm Qâdî Khân : un homme qui dit : « Allâh est dans le ciel, Il sait que je ne possède rien » il commet de la mécréance car Allâh ta’âlâ est exempt de l’endroit. Et dans Fatâwa l-Khoulâsah : si quelqu’un dit : « prend l’arc et monte dans le ciel pour combattre Allâh » il commet de la mécréance car il aura attribué l’endroit à Allâh ta’âlâ ». [Dans son livre « Qawâri’ou l-Qahhâr fi r-Raddi ‘ala l-Moujassimah al-foujjâr »]
– Ibnou Noujaym qui est un savant Hanafite, mentionne ici ce qui est conforme à la position même de l’Imâm Aboû Hanîfah. Cela ayant été confirmé de lui par de nombreux savants tels que l’Imâm As-Samarqandi [ Voir : ici ], le Chaykh Ibn Hajar Al-Haytami, le Chaykh Al-Qarâfi [ Voir : ici ], le Chaykh Moullâ ‘Ali Al-Qâri [ Voir : ici ] et [ Voir : ici ], le Chaykh Mahmoûd As-Soubki [ Voir : ici ], et autres. Et l’Imâm At-Tahâwi dans son célèbre traité de croyance qu’il a présenté comme étant conforme à la voie de l’Imâm Aboû Hanîfah et de ses deux illustres élèves a dit : « Celui qui attribue à Allâh l’une des significations propres aux humains est devenu mécréant.» [ Voir l’article: ici ] .
– Les savants de l’islam ont été en accord pour déclarer mécréant celui qui a pour croyance que Allâh serait dans un endroit ou une direction, voir plusieurs citations à ce sujet : ici .
– Ainsi prenez garde aux propos des wahhabites qui prétendent que le hadîth de la femme esclave serait une preuve pour attribuer l’endroit à Allâh, tout comme l’a prétendu Ibn ‘Outhaymine (wahhabite) qui a dit : « Dans le hadîth de la femme esclave il y a au sujet des attributs de Allâh : La confirmation d’un endroit à Allâh et qu’Il est dans le ciel » [Dans son livre Majmoû’ Al-Fatâwâ]. C’est exactement cette croyance corrompue que Ibnou Noujaym et les autres savants, considèrent comme de la mécréance.
– Concernant la version du hadîth de la femme esclave où le prophète aurait demandé “ayna l-Lâh” et que la femme esclave aurait répondu « fi s-Samâ » les savants ont expliqué qu’il ne s’agit pas ici d’un questionnement au sujet de l’endroit. Consultez l’ explication de l’Imâm An-Nawawi : ici .
– Dans ce même ouvrage Ibnou Noujaym Al-Hanafi (رحمه الله) a dit : « Allâh n’est pas un corps, ni une substance, ni une caractéristique des substances et Il n’est pas localisé dans un endroit […] et Il n’est pas attribué du comment (kayfiyyah)»', 'al hanafi, allah, apostasie, apostat'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ويكفر باثبات المكان لله تعالى، فإن قال: الله في السماء، فإن قصد حكاية ما جاء في ظاهر الأخبار لا يكفر، وإن أراد المكان كفر');

-- source: https://islamsunnite.net/limam-ali-confirme-quon-ne-dit-pas-ou-ni-comment-au-sujet-de-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm ‘Ali confirme qu’on ne dit pas « où ? » ni « comment ? » au sujet de Allâh', '''Ali Ibn Abi Talib', 'إن الذي أين الأين لا يقال له أين', '« On ne dit pas « où ?» pour Celui qui a créé les endroits. »', '', 'Dans son livre « At-Tabsirou fi d-Dîn », l’Imâm Al-Isfarâyini rapporte que lorsqu’une personne demande à l’Imâm ‘Ali « ayna l-Lâh ?», l’Imâm ‘Ali lui répondit :
Puis la personne lui demanda « comment est Allâh ? » et l’Imam ‘Ali répondit :', 'al isfarayini, ali, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'إن الذي أين الأين لا يقال له أين');

-- source: https://islamsunnite.net/limam-ali-confirme-quon-ne-dit-pas-ou-ni-comment-au-sujet-de-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm ‘Ali confirme qu’on ne dit pas « où ? » ni « comment ? » au sujet de Allâh', '''Ali Ibn Abi Talib', 'إن الذي كيف الكيف لا يقال له كيف', '« On ne dit pas « comment ? » pour Celui qui a créé le comment »', '', 'Informations utiles :
– L’Imâm, le Ousoûli (spécialiste des fondements), le Faqîh (spécialiste de la jurisprudence), le Moutakallim (spécialiste de la croyance), le Moufassir (exégète) Tâhir Ibnou Mouhammad Abou l-Moudhaffar Al-Isfarâyini est décédé en 471 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 950 ans. C’est un savant de l’école de jurisprudence (madh-hab) de l’Imâm Ach-Châfi’i.
Le Hâfidh Ibnou ‘Açakir a dit à son sujet : «L’Imâm accompli (Kâmil), le Faqîh (spécialiste de la jurisprudence), le Ousoûli (spécialiste des fondements), le Moufassir (spécialiste de l’exégèse du Qour-ân) » [Tabyînou kadhibi l-Mouftarî].
Tâjou d-Dîn As-Soubki a dit de lui : « L’Imâm, le Ousoûli (spécialiste des fondements), le Faqîh (spécialiste de la jurisprudence), le moufassir (spécialiste de l’exégèse du Qour-ân)» [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Chamsou d-Dîn Ad-Dâwoûdi a dit de lui : «L’Imâm accompli (Kâmil), le Faqîh (spécialiste de la jurisprudence), le Ousoûli (spécialiste des fondements), le Moufassir (spécialiste de l’exégèse du Qour-ân) » [Tabaqâtou l-Moufassirîn].
Adh-Dhahabi a dit à son sujet : « L’illustre savant (Al-‘Allâmah), le Mouftî […] Il faisait parti des plus illustres savants» [Siyarou A’lâmi n-Noubalâ]
L’Imâm Al-Kawthari a dit de lui : « L’un des plus grands Imams de Ousoûlou d-Dîn » [Dans son édition de At-Tabsîrou fi d-Dîn]
– Il ne faut pas le confondre avec le savant, l’Imâm Aboû Is-hâq Al-Isfarâyîni qui est décédé en 418 de l’Hégire.
– Ici, il rapporte que l’Imâm ‘Ali met en garde contre la question « où est Allâh ? » que posent certaines personnes qui ignorent la science du tawhîd. L’Imâm ‘Ali explique qu’on ne dit pas « où » au sujet de Allâh car Il est le Créateur des endroits.
– Et lorsque la personne lui demanda « comment est Allâh ? » l’Imâm ‘Ali répondit que Allâh est le Créateur du comment et que par conséquent Il n’en est pas concerné. Le comment (al-kayf / al-kayfiyyah) c’est ce par quoi on décrit les créatures, c’est-à-dire les dimensions, le début, la fin, la couleur, l’endroit, la direction, la forme, le poids, la position assise, l’établissement, la proximité, la distance, le mouvement, le déplacement, le changement et tout ce qui fait partie des attributs des créatures. Allâh n’est pas concerné par cela.
L’Imâm Al-Bayhaqi a dit au sujet de Allâh ta’âlâ : « Il est Celui Qui n’est pas soumis aux illusions de la kayfiyyah (comment, description physique) » [Dans son livre : Al-I’tiqâd]
Le Loughawi (spécialiste de la langue Arabe) Al-Fayroûzâbâdi (m.817 A.H.) a dit : « Les adeptes du Tawhîd (l’unicité divine) ont dit que Allâh ta’âlâ est sans kammiyyah (quantité, volume) et sans kayfiyyah (comment, description physique) » [Al-Qâmoûs Al-Mouhît]
– Remarque importante : il y a une grande différence entre :
La parole des gens de la Sounnah qui disent que Allâh est sans comment (bilâ kayf), c’est-à-dire qu’Il n’est pas concerné par le comment, la description physique, comme cela a clairement été déclaré par les grands Imâm de la Oummah ;
et la parole des mouchabbihah (assimilateurs) qui se sont illusionné et qui ont pris pour croyance que Allâh aurait un comment mais que ce comment serait d’après eux ignoré, et qui disent : on ne sait pas comment. Ainsi, Ibn ‘Outhaymîn le wahhabite a contredit ouvertement les gens de la Sounnah en disant : « Nous ne nions pas à leurs sujets [les textes moutachâbihah] la kayfiyyah (comment, description physique) au contraire nous croyons qu’ils ont une kayfiyyah, mais nous n’avons pas connaissance de cette kayfiyyah » [Dans son livre intitulé “Charh al-‘Aqîdah Al-Wâsitiyyah”].
– De nombreuses autres paroles de l’Imâm ‘Ali ont été rapportées concernant le Tawhîd. Parmi elles :
Ibnou ‘Abdi Rabbih (m.328 H.) a dit : « Il fût demandé à ‘Ali Ibn Abî Tâlib (que Allâh l’agréé) : « Où était notre Seigneur avant qu’Il ne créé le ciel et la terre ? Alors il (‘Ali Ibn Abî Tâlib) répondit : « la question « où » nécessite l’endroit et Allâh ‘azza wa jall existe de toute éternité et ce n’est pas le cas de l’endroit. » [Al-‘Iqdou l-Farîd]
L’Imâm Aboû Mansoûr Al-Baghdâdi (m. 429 H.) a dit : « L’émir des croyants, ‘Ali (Ibn Abî Tâlib) a dit : « Allâh ta’âlâ a créé le Trône comme manifestation de Sa Toute-puissance et ne l’a pas pris comme endroit pour lui-même » [voir l’article : ici]
L’Imâm Aboû Nou’aym (m.430 H.) rapporte que l’Imâm ‘Ali Ibn Abî Tâlib qui a dit : « Celui qui prétend que notre Seigneur est limité, alors certes il n’a pas connu le Créateur, Celui Qui mérite d’être adoré » [Hilyatou l-Awliyâ]
L’Imâm Aboû Mansoûr Al-Baghdâdi (m. 429 H.) a dit ensuite : « Et il (‘Ali Ibn Abî Tâlib) a dit également : « Allâh existe de toute éternité alors qu’il n’y a pas d’endroit de toute éternité et Il est maintenant tel qu’Il est de toute éternité » [voir l’article : ici]
L’Imâm An-Naçafi (m.508 H.) a dit : « Il fût demandé à ‘Ali Ibn Abî Tâlib (que Allâh l’agréé) : « Où était notre Seigneur avant qu’Il ne créé le trône ? Alors il (‘Ali Ibn Abî Tâlib) répondit : « la question « où » concerne l’endroit et Allâh ‘azza wa jall existe de toute éternité sans endroit et sans le temps, et Il est maintenant tel qu’Il est de toute éternité (c’est-à-dire sans endroit et sans dépendre du temps) » [Bahrou l-Kalâm]
Le Chaykh Ibnou Mou’allim al-Qourachi (m. 725 H.) a dit : « [L’Imâm] ‘Ali [Ibn Abî Tâlib] que Allâh l’agrée a dit : « à l’approche du jour dernier il y aura des gens qui vont devenir mécréants », un homme a dit : « Ô émir des croyants leur mécréance à cause du fait qu’ils innovent une chose contraire à la religion ou en reniant une croyance de l’Islâm ? » Il a dit : « En reniant, ils renient leur Créateur ils Lui attribuent le corps et les membres » [ voir l’article : ici ]
– Retrouvez d’autres paroles de savants sur le thème : On ne demande pas : “Où est Allah ?” : ici .
– Retrouvez d’autres paroles de savants sur le thème : Allâh est sans comment : ici.
– Concernant la version du hadîth de la femme esclave où le prophète aurait demandé “ayna l-Lâh” les savants ont expliqué qu’il ne s’agit pas ici d’un questionnement au sujet de l’endroit. Consultez l’ explication de l’Imâm An-Nawawi : ici .', 'al isfarayini, ali, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'إن الذي كيف الكيف لا يقال له كيف');

-- source: https://islamsunnite.net/limam-at-tabari-rapporte-des-compagnons-linterpretation-de-saq-dans-sourat-al-qalam42/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm At-Tabari rapporte des compagnons l’interprétation de « sâq » dans soûrat Al-Qalam/42', 'Tabari', 'يقول تعالى ذكره { يَوْمَ يُكْشَفُ عَنْ ساقٍ } قال جماعة من الصحابة والتابعين من أهل التأويل : يبدو عن أمر شديد', '« Allâh ta’âlâ dit : { يَوْمَ يُكْشَفُ عَنْ ساقٍ } (yawma youkchafou ‘an sâq) [-soûrat Al-Qalam / 42-, qui signifie : « Le jour où sera découvert un sâq »] : un ensemble de compagnons et de successeurs (tâbi’în) spécialiste de l’interprétation du Qour-ân ont dit : « l’avènement d’une difficulté ».»', '', 'Dans son célèbre tafsîr, l’Imâm At-Tabari a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Moujtahid Aboû Ja’far Mouhammad Ibnou Jarîr At-Tabari est un célèbre savant du Salaf, il est né en 224 et il est décédé en 310 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1120 ans. Son tafsîr connu sous le nom de « Jâmi’ou l-bayân fî ta-wîl al-Qour-ân» est très réputé.
Le Chaykh ‘Abdou l-Lâh Al-Harari a dit de lui : « At-Tabari est un Imâm moujtahid. Il a mémorisé plus de cent milles Hadîth. Il était similaire à l’Imâm Ach-Châfi’i et à l’Imâm Mâlik (que Allâh les agréé) »
– Ici, il rapporte qu’un ensemble de compagnons et de successeurs des compagnons (tâbi’în) spécialiste de l’interprétation du Qour-ân, ont dit que ce qui est visé par « sâq » dans ce verset est « l’avènement d’une difficulté ».
– Cette interprétation a également été mentionnée par le compagnon ‘Abdou l-Lâh Ibn ‘Abbâs [ Voir : ici ] et [ Voir : ici ], par Qatâdah [ Voir : ici ], par Moujâhid, par Al-Khattâbi [ Voir : ici ], et autres qu’eux. Ceci nous démontre que les savants du Salaf, qu’ils soient compagnons, successeurs des compagnons ou autres, avaient quelquefois recourt à l’interprétation détaillée.
– L’Imâm Zaynou d-Dîn Ibnou l-Mounayyir (m.695 h.) qui a dit : « Le Sâq est expliqué par une difficulté, et le fait qu’il soit dévoilé signifie l’intensité de la difficulté » [Dans son livre Tafsîr Mouchkilât Ahâdith youchkilou dhâhirouhâ]
– Dans la langue arabe, le mot « sâq » a différents sens. Lorsqu’il est employé au sujet de Allâh, il n’est pas à prendre selon le sens apparent, car le sens apparent de « sâq » est jambe ou tibia. Attribuer un membre ou un organe à Allâh est de l’anthropomorphisme et donc de la mécréance.', 'allah, aqida, compagnon, croyance'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'يقول تعالى ذكره { يَوْمَ يُكْشَفُ عَنْ ساقٍ } قال جماعة من الصحابة والتابعين من أهل التأويل : يبدو عن أمر شديد');

-- source: https://islamsunnite.net/al-qadi-iyad-rapporte-lunanimite-au-sujet-du-caractere-recommande-de-la-visite-de-la-tombe-du-prophete/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Al-Qâdî ‘Iyâd rapporte l’unanimité au sujet du caractère recommandé de la visite de la tombe du Prophète', 'Unanimité', 'وزيارة قبره – صلى الله عليه وسلم – سنة من سنن المسلمين مجمع عليها ، وفضيلة مرغب فيها روي عن ابن عمر رضي الله عنه', '« La visite de la tombe du Prophète (صلى الله عليه وسلم) est une sounnah qui fait l’unanimité des musulmans et une vertu vivement recommandée, comme le rapporte Ibnou ‘Oumar (رضي الله عنه).', '', 'Dans son livre Ach-Chifâ, Al-Qâdî ‘Iyâd a dit :
[Puis il mentionne le hadîth rapporté par Ibnou ‘Oumar, à retrouver : ici ] »
Informations utiles :
– Le Qâdî (juge) Abou l-Fadl ‘Iyâd Ibnou Moûçâ Ibnou ‘Iyâd al-Yahsoubi connu sous le nom de Qâdî ‘Iyâd, est un grand savant Malikite. Il est né en 476 à Ceuta et il est décédé en 544 de l’Hégire à Marrakech (Maroc) (رحمه الله) c’est-à-dire il y a plus de 950 ans. Son ouvrage « Ach-Chifâ » est très connu, le titre complet du livre est « Ach-Chifâ bi ta’rîf houqoûq al-Moustafâ ».
Adh-Dhahabi a dit de lui : « L’Imâm, Al-‘Allâmah (l’illustre savant), le Hâfidh (le spécialiste de la science du hadîth), celui qui n’a pas de pareil, Chaykhou l-Islâm, le Qâdî (Juge) » et il a dit également : « Ses ouvrages sont précieux » [Siyar A’lâmi n-Noubalâ]
Ibn Bachkwâl a dit à son sujet : « Il était parmi les gens de science qui sont intelligents et qui ont une bonne compréhension » [Siyar A’lâmi n-Noubalâ]
Ibn Khallikân a dit de lui : « Il est l’Imâm du hadîth de son temps, et le plus connaisseur des gens de ses sciences, de la grammaire, la langue, la parole des arabes, leurs histoires, et les généalogies.» [Wafayâtou l-A’yân]
– Ici il rapporte l’unanimité sur le fait que la visite de la tombe du Prophète (صلى الله عليه وسلم) est un acte fortement recommandé.
– Cette unanimité a été mentionnée par de nombreux autres savants. Parmi eux :
Le Chaykh Ibnou l-Hâjj Al-Mâliki a dit: « Abou Houbayrah [Al-Hambali] a dit dans son livre concernant l’unanimité des imams : Mâlik, Ach-Châfi’i, Aboû Hanîfah et Ahmad Ibnou Hambal, que Allâh ta’âlâ leur fasse miséricorde, ont été en accord que la visite du prophète (صلى الله عليه وسلم) est recommandée (moustahabb)» [Dans son livre Al-Madkhal].
L’Imâm Taqiyyou d-Dîn As-Soubki a également rapporté l’unanimité dans son livre Chifâ-ou s-Saqâm.
Le Chaykh Taqiyyou d-Dîn Al-Hisni a dit au sujet de la visite de la tombe du prophète : « Il s’agit d’ une des sounnah des envoyés par unanimité chez les croyants en l’unicité (mouwahhidîn), personne n’y porterait atteinte sauf quelqu’un dont le cœur contient la maladie des hypocrites » [Dans son livre Daf’ou choubahi man chabaha wa tamarrad].
Le Chaykh Moullâ ‘Ali Al-Qârî Al-Hanafi a dit : « Le voyage pour visiter la tombe du prophète (صلى الله عليه وسلم) fait partie de ce sur quoi les savants ont été unanimes sur son caractère recommandé (moustahabb) » [Dans son livre Charh Ach-Chifâ]
Le Chaykh Mayyârah Al-Mâliki a dit : « Sa visite (du prophète) est une sounnah qui fait l’objet de l’unanimité » [Dans son livre Ad-Dourrou th-Thamîn wa l-Mawridou l-Ma’în]
Le Chaykh Ibnou ‘Âbidîn Al-Hanafi rapporte également l’unanimité dans son livre Raddou l-Mouhtâri ‘ala d-Dourri l-Moukhtâr.
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « Sache, que Allâh te fasse miséricorde, que la visite de la tombe de notre Prophète (صلى الله عليه وسلم) est permise et requise par le Livre [le Qour-ân], la Sounnah, et l’unanimité (ijmâ’) de la Oummah» [ Voir l’article : ici ]
Le Mouhaddith ‘Abdou l-Lâh Al-Harari a dit : « Il est recommandé de visiter la tombe du Messager (صلى الله عليه وسلم) par l’unanimité, c’est-à-dire selon l’unanimité des Imams de l’ijtihâd, les quatres et les autres ; aussi bien pour celui qui habite à Médine que pour les habitants des différents horizons qui ont, par leur voyage, l’objectif de visiter sa tombe honorée. Il s’agit-là d’un des actes les plus éminents qui rapprochent de l’agrément de Allâh.» [Dans son livre Boughyah At-Tâlib]
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah]
– Le compagnon ‘Abdou l-Lâh Ibnou ‘Oumar est décédé en 73 de l’Hégire (رضي الله عنه) c’est à dire il y a environ 1360 ans. Le Prophète (صلى الله عليه وسلم) a dit de lui qu’il est un homme vertueux (sâlih). Il est le fils du second Calife de l’Islâm : ‘Oumar Ibnou l-Khattâb (رضي الله عنه).
– Malgré cela Ibnou Taymiyah et ses adeptes ont rejeté la parole du prophète (صلى الله عليه وسلم) pour suivre leurs passions. En effet Ibnou Taymiyah a contredit le prophète (صلى الله عليه وسلم) en interdisant la visite de sa tombe. Les savants lui ont vivement répliqué. Pour plus d’informations, consultez cet article : Ibnou Taymiyah interdit de rendre visite au prophète .
– De même, dans son livre « Ad-Dawlatou l-‘Outhmâniyyah min Kitâbi l-Foutoûhâtou l-Islâmiyyah , le Chaykh Ahmad Ibnou Zayni Dahlân dénonce Mouhammad Ibnou ‘Abdi l-Wahhâb (le fondateur de la secte wahhabite) qui déclarait mécréant ceux qui visitent la tombe du prophète (صلى الله عليه وسلم) [ Voir l’article : ici ].
– Voir d’autres articles concernant la visite de la tombe du prophète (salla l-Lahou ‘alayhi wa sallam) : ici .', 'allah, aqida, book, chifa'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وزيارة قبره – صلى الله عليه وسلم – سنة من سنن المسلمين مجمع عليها ، وفضيلة مرغب فيها روي عن ابن عمر رضي الله عنه');

-- source: https://islamsunnite.net/limam-ibn-jawzi-explique-le-verset-wa-ja-a-rabbouka-en-citant-lavis-des-salafs/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’interprétation (ta-wîl) chez les salafs', 'Ibn Al-Jawzi', 'اعلم أنّ الناس في أخبار الصفات على ثلاث مراتب : إحداها : إصرارها على ما جاءت من غير تفسير ولا تأويل ، إلّا أن تقع ضرورة كقوله تعالى : { وَجَاءَ رَبُّكَ } [الفجر : 22]، أي جاء أمره وهذا مذهب السلف', '« Sache que les gens sont, au sujet de ce qui est parvenus des attributs [de Allâh dans les textes moutachâbihah], de trois sortes: L’une d’entre elle : Les laissez tels qu’ils sont parvenus, sans tafsîr et sans ta-wîl sauf dans le cas où il y a une nécessité comme dans la parole de Allâh ta’âlâ {وجاءَ ربُّكَ} « wa jâ-a rabbouka » c’est-à-dire : l’ordre de ton Seigneur viendra, et ceci est la voie des Salafs. »', '', 'Dans son livre « Daf’ou Choubahi t-Tachbîh » (page 224 de cette édition), l’Imâm Ibnou l-Jawzi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste des chaînes de transmission du hadîth), le Moufassir (exégète) ‘Abdou r-Rahmân Ibnou ‘Ali connu sous le nom de Ibnou l-Jawzi le Hanbalite, est né en 508 à Baghdâd et il est décédé en 597 de l’Hégire à Baghdâd (رحمه الله) c’est-à-dire il y a plus de 845 ans..
– Ibnou l-Jawzi fait partie des piliers des hanbalites. Il a écrit un livre appelé « Daf’ou Choubahi t-Tachbîh » pour répliquer à ceux qui ont attribué le corps à Allâh tout en se réclamant de l’école de l’Imâm Ahmad Ibn Hambal alors que l’Imâm Ahmad est innocent de ce qu’ils ont pris pour croyance. L’Imâm Ibnou l-Jawzi est à lui seul une armée contre les moujassimah qui se réclament hanbalites.
– Ici, il explique que la voie adoptée par les gens du Salaf, c’est-à-dire la majorité d’entre eux, concernant les Textes équivoques traitant des attributs de Allâh était de les laisser tels qu’ils sont parvenus sans rentrer dans le détail du sens et sans interprétation, sauf s’il y a nécessité.
– Ainsi, cette citation est une preuve supplémentaire confirmant le fait que les musulmans du Salaf avaient quelquefois recours à l’interprétation détaillé (ta-wîl).
– Ensuite, il explique le verset {وجاءَ ربُّكَ} « wa jâ-a rabbouka » [Soûrat Al-Fajr/22] et dit que cela signifie que c’est l’ordre de Allâh qui viendra.
– Cette interprétation a été rapportée de l’Imâm Ahmad Ibn Hambal dans de nombreux ouvrages de savants. Parmi eux :
Le Hâfidh Al-Bayhaqi, avec une chaîne de transmission authentique comme le mentionne Ibnou Kathîr [ Al-Bidâyah wa n-Nihâyah ]
L’Imâm Ibnou l-Jawzi Al-Hanbali [ dans son livre Daf’ou Choubahi t-Tachbîh ]
Le Chaykh Ahmad Ibn Hamdân Al-Hanbali [dans son livre Nihâyatou l-Moubtadi-în]
Le Chaykh Taqiyyou d-Dîn Al-Hisni [Daf’ou choubahi man chabbaha wa tamarrad]
Le Chaykh As-Sa’idi Al-Hanbali [ Al-Jawhar Al-Mouhsal ]
Le Chaykh Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali [dans son tafsîr]
Le Chaykh Al-Kawthari [dans son introduction du livre Al-Asmâ-ou wa s-Sifât]
– Le Chaykh Ibn Hamdân Al-Hanbali a dit : « Et [l’Imâm] Ahmad a certes interprété certains versets et certains hadîths comme le verset de an-najwâ, ainsi que Sa parole { أَن يَأْتِيَهُمُ اللّهُ } [an ya-tiyahoumou l-Lâh] et il a dit qu’il s’agit de Sa puissance (c’est-à-dire les manifestations de Sa toute puissance) et Son ordre. Et Sa parole { وَجَاء رَبُّكَ } [wa jâ-a rabbouk] et il a dit qu’il s’agit de Sa puissance. Et Ibnou l-Jawzi [Al-Hambali] a mentionné ces deux interprétations [de l’Imâm Ahmad] dans « Al-Minhâj » et il a, quant à lui, penché vers le fait de prendre les versets tels qu’ils sont parvenus sans en donner d’explications, et Ibn ‘Aqîl [Al-Hambali] a interprété de nombreux versets et khabar. Et [l’Imâm] Ahmad a interprété la parole du prophète (صلى الله عليه وسلم) : « الحجر الأسود يمين الله في الارض » [al-hajarou l-aswad yamînou l-Lâhi fi l-ard] et ce qui est similaire » [Nihâyatou l-Moubtadi-în]. Cela nous indique que bien que la voie majoritaire des savants du Salaf était de ne pas procéder à l’interprétation, il est toutefois arrivé que certains d’entre eux, à l’image de l’Imâm Ahmad Ibn Hambal, la pratique dans certains cas. Et il en est de même concernant les savants du madh-hab Hambalite.
– De nombreux savants ont donné des explications similaires, parmi eux :
L’Imâm Al-Bayhaqi qui dit que le Majî de Allâh n’est pas un mouvement ou un déplacement [ Dans son livre Al-I’tiqâd ] et il explique qu’il est valable de se contenter d’accepter le majî sans comment (bilâ kayf) [ Dans son ouvrage Al-I’tiqâd ] en niant par cette expression le déplacement ou le mouvement à l’égard de Allâh.
L’Imâm Al-Jouwayni (m.478 H.) qui a dit : « Le sens du majî n’est pas le déplacement et la disparition [d’un endroit à autre], Allâh est exempt de cela, mais le sens de Sa parole { وجاء ربك } « wa jâ-a Rabbouk » c’est-à-dire l’ordre de ton Seigneur viendra, ainsi que Son jugement » [Dans son livre Al-Irchâd]
L’Imâm Al-Baghawi [ Dans son tafsîr ]
L’Imâm Ibnou l-Jawzi [Dans son livre Daf’ou Choubahi t-Tachbîh]
L’Imâm Al-Qourtoubi [ Dans son tafsîr ]
L’Imâm Ibnou Abî Jamrah (m.699 H.) qui a dit : « L a parole de Allâh ta’âlâ { وجاء ربك والملك } « wa jâ-a Rabbouka wa l-malak » c’est-à-dire : l’ordre de ton Seigneur viendra ; et ceci [ce genre de formulation] est très utilisé dans la langue arabe » [Dans son livre Bahjatou n-Noufoûs]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Il n’est pas permis d’attribuer à Allâh la venue (majî) et l’aller (dhahâb) [c’est-à-dire le mouvement et le déplacement] car cela fait partie des attributs des créatures et des caractéristiques des choses entrées en existence, ce sont donc deux attributs qui sont rejetés concernant Allâh ta’âlâ. Ne vois-tu pas comment [le prophète] Ibrahîm -عليه السلام- a argumenté sur le fait que ce qui se déplace d’un endroit à un autre endroit n’est pas Dieu, lorsqu’il a dit : {فَلَمَّا أَفَلَ قَالَ لَا أُحِبُّ الْآفِلِينَ} [ce qui signifie] «Je n’adore pas les choses qui disparaissent».» [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Le sens de la parole de Allâh ta’âla {وجاء ربك} « wa jâ-a Rabbouka » est : viendra l’ordre de ton Seigneur» [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
L’Imâm Ath-Tha’âlibi [ Dans son tafsîr ]
Et autres qu’eux.
– Quant aux moujassimah (ceux qui attribuent à Allâh les caractéristiques des créatures) ils comprennent de ce verset que Allâh lui-même viendra, c’est-à-dire qu’ils attribuent à Allâh le mouvement et le déplacement, et cela est un égarement clair.
– Ainsi, ce verset ne veut pas dire que c’est Allâh lui-même qui viendra comme l’ont prétendu certains anthropomorphistes. L’Imâm Ach-Chahrastâni a dit à ce sujet : « En ce qui concerne les expressions révélées (c’est-à-dire présentes dans le Qour-ân ou la Sounnah) telles que « al-istiwâ », « al-wajh », « al-yadayn », « al-janb », « al-majî » [comme dans le verset wa jâ-a Rabbouka], « al-ityân », « al-fawqiyyah » et d’autres que celles-ci, les anthropomorphistes les prennent selon leur sens apparent, je veux dire telles qu’elles sont comprises lorsqu’elles sont employées au sujet des corps » [ Voir : ici ]
– Les savants de l’Islâm, qu’ils soient du Salaf ou du Khalaf, sont unanimes à exempter Allâh des caractéristiques des corps comme le mouvement et le déplacement. Nous pouvons citer parmi eux :
L’Imâm Al-Mâtourîdi [ Kitâbou t-Tawhîd ]
Le Hâfidh Ibn Hibbân [ Dans son Sahîh ]
L’Imâm Al-Khattâbi
L’Imâm Al-Halîmi [ Rapporté par Al-Bayhaqi ]
L’Imâm Ibn Battâl
Abou l-Fadl At-Tamîmi Al-Hambali qui a dit concernant le hadîth du nouzoûl : « Et il n’est pas possible à Son sujet le déplacement et l’incarnation dans les endroits » [Rapporté par Ibn Hamdân dans Nihâyatou l-Moubtadi-în]
Ibnou l-Bannâ Al-Hambali qui a dit concernant le hadîth du nouzoûl : « On ne dit pas que cela a lieu par un mouvement ou un déplacement » [Rapporté par Ibn Hamdân dans Nihâyatou l-Moubtadi-în]
L’Imâm Al-Bâqillâni [ Al-Insâf ]
L’Imâm Al-Bayhaqi [ Al-I’tiqâd ]
L’Imâm Al-Isfarâyîni [ At-Tabsîrou fi d-Dîn ]
L’Imâm Ach-Chirâzi [ Al-Ichârah ]
L’Imâm Al-Jouwayni
L’Imâm Al-Ghazâli [ Ihyâ-ou ‘Ouloûmi d-Dîn ]
Le Qâdî Ibn Rouchd Al-Jadd [ Al-Mouqaddimât al-Moumahhadât ]
L’Imâm An-Naçafi (m.508 H.)
Le Chaykh Ibn ‘Aqîl Al-Hambali a dit concernant le hadîth du nouzoûl : « Ce n’est pas par la disparition (d’un endroit à un autre) ou un déplacement, et ce n’est pas comme notre nouzoûl […] devient mécréant celui qui assimile Allâh à ce qu’Il a créé » [Rapporté par Ibn Hamdân Nihâyatou l-Moubtadi-în]
L’Imâm Ibn Al-Jawzi [ Saydou l-Khâtir ] et [ Daf’ou Choubahi t-Tachbîh ]
L’Imâm Al-Qourtoubi : [ Dans son Tafsîr (1) ] et [ Dans son Tafsîr (2) ]
L’Imâm An-Nawawi [ Charh Sahîh Mouslim (1) ] et [ Charh Sahîh Mouslim (2) ]
L’Imâm Al-Baydâwi [ Rapporté par Ibn Hajar ] et [ Rapporté par Az-Zourqâni ]
Le Chaykh Mouhammad At-Tîbi
Le Loughawi Ibn Mandhoûr [ Liçânou l-‘Arab ]
Le Qâdî Ibn Jamâ’ah [ Idâhou d-Dalîl ]
Le Chaykh ‘Abdou l-Lâh Al-Yamani
L’Imâm Tâjou d-Dîn As-Soubki
L’Imâm Taqiyyou d-Dîn Al-Hisni [ Daf’ou choubahi man chabbaha wa tamarrad ]
L’Imâm Ibn Hajar Al-‘Asqalâni qui mentionne l’unanimité du Salaf et du Khalaf [ Charh Sahîh Al-Boukhâri (1) ] et [ Charh Sahîh Al-Boukhâri (2) ]
Le Chaykh Badrou d-Dîn Al-‘Ayni qui a dit : «Il est impossible d’attribuer à Allâh ta’âlâ l’endroit et le nouzoûl dans le sens du déplacement » [Dans son commentaire du Sahîh Al-Boukhâri]
L’Imâm As-Sanoûçi qui a dit : «Il est impossible au sujet de Allâh ta’âlâ […] le mouvement et l’immobilité » [Dans son traité de croyance Al-Moufîdah li l-Wildân wa n-Niçâ-i l-Mou-minât]
L’Imâm Al-Qastallâni
La Chaykh Moullâ ‘Ali Al-Qâri
L’Imâm Az-Zourqâni [ Charh du Mouwatta de l’Imâm Mâlik ]
Le Chaykh Ahmad Ridâ [ Qawâri’ou l-Qahhâr ]
Le Chaykh Mahmoud As-Soubki, qui mentionne l’unanimité des savants du Salaf et du Khalaf [ It-hâfou l-Kâ-inat (1) ] et [ It-hâfou l-Kâ-inat (2) ]
L’ancien Moufti d’Egypte, le Chaykh Mouhammad Bakhît Al-Moutî’i Al-Hanafi Al-Misri qui a dit : «Il est impossible d’attribuer à Allâh ta’âlâ l’endroit et le nouzoûl dans le sens du déplacement » [Dans son livre Al-Kalimâtou t-Tayyibâtou fî Ma-thoûri ‘ani l-Isrâ-i wa l-Mi’râj mina r-Riwâyât]
Le Chaykh Al-‘Azzâmi qui mentionne l’unanimité du Salaf et du Khalaf [ Fourqânou l-Qour-ân ]
Le Hâfidh ‘Abdou l-Lâh Al-Ghoumâri
Le Chaykh Al-Harari [ As-Sirâtou l-Moustaqîm ]
et beaucoup d’autres…
– Le Hâfidh Ibnou l-Qattân Al-Fâçi Al-Mâliki (m.628 H.) a dit : « Et ils [les gens de la Sounnah, du Salaf et du Khalaf] ont été unanimes que Allâh yajî au jour du jugement […] et Son majî n’est pas un mouvement ni un déplacement » [Al-Iqnâ’]
– Certains savants ont mentionné de manière explicite dans leurs ouvrages que le fait d’attribuer à Allâh le mouvement ou le déplacement est de la mécréance. Parmi eux :
L’Imâm Abou l-Haçan Al-Ach’ari [ Rapporté par As-Soubki ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ Charh ‘Aqîdah Mâlik As-Saghîr ]
L’Imâm Taqiyyou d-Dîn Al-Hisni [ Daf’ou choubahi man chabbaha wa tamarrad ]
L’Imâm Al-Kawthari qui mentionne l’unanimité [ Maqâlâtou l-Kawthari (1) ] et [ Maqâlâtou l-Kawthari (2) ]
Ibnou l-Bannâ Al-Hambali qui a dit : « Celui qui prend le nouzoûl dans le sens de quitter un endroit pour en occuper un autre, et du déplacement alors c’est de la mécréance » [Al-Ousoûlou l-Moujarradah].', 'ahmad, ahmad ibn hanbal, ahmed, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'اعلم أنّ الناس في أخبار الصفات على ثلاث مراتب : إحداها : إصرارها على ما جاءت من غير تفسير ولا تأويل ، إلّا أن تقع ضرورة كقوله تعالى : { وَجَاءَ رَبُّكَ } [الفجر : 22]، أي جاء أمره وهذا مذهب السلف');

-- source: https://islamsunnite.net/limam-al-qourtoubi-denonce-les-anthropomorphistes-au-sujet-de-nom-de-allah-ali/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm Al-Qourtoubi dénonce les corporalistes au sujet de nom de Allâh  » ‘Ali »', 'Qourtoubi', 'وقالت المجسمة : فعلو المسافة و بعد المقدار و محاذاة الاجرام تعالى الله عن قولهم', 'Les corporalistes (moujassimah) ont dit qu’il s’agit de l’élévation par la distance ainsi que l’éloignement par la distance, et le fait de faire face au corps ; alors qu’Il est ta’âlâ exempt de leurs propos (c’est-à-dire des propos des moujassimah).', '', 'Dans son livre Al-Asnâ (page 147 de cette édition), lors de l’explication du Nom de Allâh « Al-‘Aliyy » l’Imâm Al-Qourtoubi dénonce les corporalistes en disant :
Informations utiles :
– Le Moufassir (exégète) Mouhammad Ibnou Ahmad Al-Ansâri Al-Qourtoubi est décédé en 671 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 760 ans. Il est du madh-hab (Ecole de jurisprudence) de l’Imâm Mâlik. Son tafsîr « Al-Jâmi’ou li Ahkâmi l-Qour-ân » est une référence incontournable.
Adh-Dhahabi a dit à son sujet : « L’illustre savant (Al-‘Allâmah) […] un Imâm très intelligent, un érudit dans la science, il est l’auteur de nombreux ouvrages qui sont très utiles et qui indiquent sa grande connaissance, et l’abondance de sa vertu » [Târîkhou l-Islâm]
Ibnou Farhoûn al-Mâliki a dit de lui : « Le Chaykh, l’Imâm […] le moufassir (exégète), Il était parmi les esclaves vertueux de Allâh, de parmi les savants , les connaisseurs, les pieux, les détachés du bas-monde, ceux qui sont occupé par les affaires qui concernent l’au-delà. » Et il a dit au sujet de son Tafsîr (exégèse du Qour-ân) : « Il compte parmi les tafsîr les plus importants et les plus éminents en terme de mérite » [Ad-Dîbâj]
Ibnou ‘Imâd al-Hambali a dit : « Il était un Imâm, un savant, de parmi ceux qui ont une grande connaissance du hadîth, auteur de bons ouvrages » [Chadharâtou dh-Dhahab]
Mouhammad Makhloûf a dit à son sujet : « Le savant, l’Imâm, le glorieux (al-jalîl), le vertueux (al-fâdil), le spécialiste de la jurisprudence (faqîh), le spécialiste de l’explication du Qour-ân (moufassir), le pieux, celui qui est scrupuleux, celui qui est complet, il était parmi les esclaves vertueux de Allâh et de parmi les savants qui ont le plus de science » [Chajaratou n-Noûr]
Az-Zirikli a dit de lui : « Il est de parmi les plus grands des moufassiroûn (exégètes du Qour-ân), il était vertueux, et pieux» [Al-A’lâm]
– Il condamne ici la mauvaise compréhension des corporalistes qui comprennent du nom de Allâh « Al-’Aliyy », l’élévation spatiale et l’éloignement par la distance.
– Le nom de Allâh « Al-’Aliyy » ne signifie pas que Allâh serait dans la direction du haut comme le prétendent à tord ces ignorants.
– L’Imâm Al-Qourtoubi a expliqué le nom de Allâh « Al-’Aliyy » en disant : « Un groupe de savants a dit [au sujet de Allâh]: Il est « ‘Âli », cela signifie qu’Il est exempt des attributs qui entrent en existence, et exempt des attributs qui ont une ressemblance avec ceux des créatures, et des attributs qui indiquent la localisation, et cela est un bon avis. » [ voir l’article à ce sujet : ici ]
– Dans de nombreux passages de ses ouvrages l’Imâm Al-Qourtoubi a appuyé la croyance des gens de la Sounnah en disant que Allâh existe sans endroit et sans direction [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ] et [ voir : ici ] …', 'al asna, al-3ali, al-3aliyy, ali'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وقالت المجسمة : فعلو المسافة و بعد المقدار و محاذاة الاجرام تعالى الله عن قولهم');

-- source: https://islamsunnite.net/limam-abou-hayyan-al-andalouci-dit-que-allah-nest-pas-dans-une-direction/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm Aboû Hayyân Al-Andalouci explique le verset {man fi s-Samâ} et dit que Allâh n’est pas dans une direction', 'Abou Hayyan Al-Andalouçi', '{من في السماء} هذا مجاز وقد قام البرهان العـقلي على أنه تعالى ليس بمتحـيز في جهـة', '« La parole de Allâh {Man Fi s-Samâ} est au sens figuré, et les preuves selon la raison ont été établies que Allâh ta’âlâ n’est pas localisé dans une direction ».', '', 'Dans son célèbre tafsîr « Al-Bahrou l-Mouhît », lors de l’explication du verset 16 de Soûrat Al-Moulk, l’Imâm Aboû Hayyân Al-Andalouçi a dit :
Informations utiles :
– L’Imâm, Al-‘Allâmah (l’Illustre savant), le Moufassir (exégète), le Mouqri (spécialiste de la récitation), le Nahwiyy (spécialiste de la grammaire) Mouhammad Ibn Yoûçouf Aboû Hayyân Al-Andalouçi Al-Gharnâti est né en 654 à Grenade (Espagne) et il décédé en 745 de l’hégire (رحمه الله) au Caire (Egypte) c’est-à-dire il y a environ 690 ans. C’est un savant du madh-hab (école de jurisprudence) de l’Imâm Ach-Châfi’i. De nombreux grands savants ont étudié auprès de lui, parmi eux : Taqiyyou d-Dîn As-Soubki, Tâjou d-Dîn As-Soubki, Badrou d-Dîn Ibn Jamâ’ah, et autres.
L’Imâm As-Souyoûti a dit de lui : « Il est le nahwi (spécialiste de la grammaire), le Loughawi (spécialiste de la langue Arabe), le Moufassir (spécialiste du tafsîr), le Mouhaddith (spécialiste de la transmission du hadîth), le Mouqri (spécialiste de la récitation), et l’Historien de son époque » [Al-Boughyah]
L’Imâm Ibn Hajar Al-‘Asqalâni a dit à son sujet : « Il est le Chaykh de son époque et le revivificateur des sciences » et il a dit aussi : « Il a une grande maîtrise du tafsîr et de ses explications » [Ad-Dourarou l-Kâminah]
As-Safadi a dit le concernant : « Il a une grande maîtrise du tafsîr, du hadîth, et des biographies ».
Ibnou l-Jazari a dit de lui : « L’Imâm, le Hâfidh, le Chaykh de la langue Arabe, des récitations, et qui est honnete et digne de confiance ».
Ibnou Battoûtah a dit de lui après avoir cité un groupe de savants : « Et parmi eux [c’est-à-dire les savants d’Egypte] Athîrou d-Dîn Aboû Hayyân Mouhammad Ibn Yoûçouf Ibn Hayyân Al-Gharnâti, et il est le plus savant d’entre eux dans la grammaire (nahw) » [Ar-Rihlah] .
Az-Zirikli a dit à son sujet : « Il compte de parmi les plus grands savants dans la langue Arabe, le tafsîr (l’exégèse du Qour-ân), le hadîth, les biographies, et les matières linguistiques ». [Al-A’lâm]
– Ici,il explique que le verset 16 de soûrat Al-Moulk qui comprend {من في السماء} (Man fi s-Samâ) est à prendre au sens figuré (majâz), c’est-à-dire que ce verset ne doit pas être compris au sens apparent. Ainsi il n’est pas permis de croire que Allâh serait incarné dans le ciel. De nombreux savants ont tenu des propos similaires :
Al-Qâdî ‘Iyâd a dit d’après ce qu’a rapporté de lui l’Imâm An-Nawawi : « Il n’y a pas de divergence entre les musulmans dans leur totalité, qu’il s’agisse des savants du fiqh, du hadîth (mouhaddith), de la croyance (moutakallim), et de ceux qui les suivent, que les textes apparents [du Qour-ân et du hadîth] dans lesquelles il est cité “Allâh fi s-samâ ” comme Sa parole ta’âlâ {ءَأَمِنتُم مَّن فِى ٱلسَّمَآءِ أَن يَخۡسِفَ بِكُمُ ٱلۡأَرۡضَ } (a-amintoum man fi s-samâ an yakhsifa bikoumou l-ard ) ne sont pas pris dans le sens apparent (dhâhir), mais ils sont interprétés [par ce qui est digne de Allâh] chez la totalité d’entre eux (les savants). » [ voir : ici ]
Le Mouhaddith, le Faqîh Ahmad Ibn ‘Oumar Al-Qourtoubi (m.656 H.) a dit : « Avertissement : Sache qu’il n’y a pas de divergence chez les musulmans dans leur totalité, que ce soit chez leurs spécialistes du hadîth, leur Faqîh, leurs spécialistes de la croyance, et chez ceux qui les suivent, que les textes apparents [du Qour-ân et du hadîth] dans lesquelles il est cité “Allâh fi s-samâ ” comme Sa parole ta’âlâ {ءَأَمِنتُم مَّن فِى ٱلسَّمَآءِ أَن يَخۡسِفَ بِكُمُ ٱلۡأَرۡضَ } (a-amintoum man fi s-samâ an yakhsifa bikoumou l-ard ) ne sont pas pris dans le sens apparent (dhâhir), mais ils sont interprétés [par ce qui est digne de Allâh] chez la totalité d’entre eux (les savants) » [Al-Moufhim limâ Achkala min Talkhîssi Kitâbi Mouslim]
L’Imâm Al-Qourtoubi a dit dans son tafsîr : « Ce qui est visé ici, c’est Sa glorification, Son exemption du bas et du dessous et Sa qualification par al-‘oulouww (l’élévation du mérite) et al-‘adhamah (l’éminence) et non pas la qualification par les endroits, les directions et les limites car ce sont des caractéristiques des corps » [ voir : ici ]
Le Hâfidh Al-Karmâni a dit d’après ce que rapporte de lui l’Imâm Ibn Hajar Al-‘Asqalâni : « Le sens apparent de Sa parole (fi s-samâ) n’est pas le sens qui est visé car Allâh est exempt de l’incarnation dans un endroit et comme la direction du haut est une direction honorable, plus honorable que les autres directions, cela est une attribution qui indique l’exemption de toutes imperfections de l’Être et des attributs » [ voir : ici ]
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit lors de l’explication de Soûrat Al-Moulk : « {مَنْ فِي السَّمَاءِ} (man fi s-samâ) : Ce passage fait partie des versets équivoques (moutachâbih) dont Allâh s’est réservé la connaissance, nous y croyons sans nous exposer à expliquer le sens et nous en remettons la connaissance à Allâh » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
Le Chaykh Mahmoûd As-Soubki Al-Azhari a dit : « Et la signification de { ءأمنتم من في السماء } [a-amintoum man fis-samâ] (soûrat Al-Moulk), c’est : « Celui dont la souveraineté est au ciel », ou alors c’est une forme (en langue arabe) qui indique la glorification de Allâh ta’âlâ en lui attribuant al-‘oulouww (l’élévation du mérite) et al-‘adhamah (l’éminence) et l’exemption du fait d’être dessous ou en bas (as-soufl wa at-taht), non pas que Allâh ta’âlâ serait incarné dans le ciel, car l’incarnation fait partie des caractéristiques des corps et des signes d’entrée en existence et Allâh est exempt de cela. » [ voir : ici ]
Le Chaykh Ibn ‘Âchoûr a dit dans son tafsîr : « Sa parole : {مَن فِي السَّمَاءِ} (man fi s-samâ) fait partie à deux reprises de ce qui n’est pas explicite et dont le sens apparent donne le sens de l’incarnation dans un endroit, mais ceci n’est pas digne de Allâh » [ voir : ici ]
– Par la suite, il explique que certains savants ont dit que {من} « man » (celui/ceux) dans ce verset désigne l’ange Jibrîl (عليه السلام) qui est l’ange responsable du châtiment par l’ensevelissement, et autres que lui.
– Les savants ont dit que le fait de comprendre de ce verset que Allâh serait dans le ciel est la voie des mouchabbihah (anthropomorphistes). L’Imâm Fakhrou d-Dîn Ar-Râzi a dit dans son tafsîr : « Sache que les mouchabbihah (assimilationnistes) ont considéré comme preuve pour confirmer l’endroit au sujet de Allâh ta’âlâ Sa parole : {ءَأَمِنتُم مَّن فِى ٱلسَّمَآءِ} (a-amintoum man fi s-samâ) » [ voir : ici ]
– À partir de là, les savants ont dit que celui qui dit : “Allâh fi s-Samâ” alors il y a deux cas : 1- S’il dit cela en visant l’endroit, alors il a commis de la mécréance. 2- Mais s’il visait le simple fait de répéter ce qui est parvenu de manière apparente dans les textes, comme dans ce verset, alors il ne commet pas de mécréance. Voir à ce sujet :
L’extrait du livre Al-Fatâwâ Al-Hindiyyah : ici ;
La citation du Chaykh Ibn Noujaym : ici ;
Et la citation du Chaykh Ismâ’îl Haqqi : ici .
– Puis l’Imâm Aboû Hayyân confirme la croyance des musulmans sur le fait que Allâh existe sans endroit et sans direction.
– En effet, tout les musulmans ont pour croyance que Allâh existe sans endroit et sans direction. Cette unanimité a été mentionnée par de nombreux savants tels que :
L’Imâm Aboû Mansoûr Al-Baghdâdi [ voir : ici ],
L’Imâm Al-Jouwayni [ voir ici ],
L’Imâm Ar-Râzi [ voir : ici ],
Le Chaykh Salîm Al-Bichri Al-Azhari [ voir : ici ],
Le Chaykh Al-Qoudâ’i Al-’Azzâmi [ voir : ici ],
Le Chaykh Mouhammad Al-‘Arabi At-Tabbâni [ voir : ici ],
Le Chaykh Mahmoûd As-Soubki [ voir : ici ] et [ voir : ici ],
Le Chaykh Ach-Chanqîti [ voir : ici ],
Le Mouhaddith Al-Harari,
Et beaucoup d’autres [ voir : ici ]
– Dans d’autres passages de son tafsîr, l’Imâm Aboû Hayyân confirme cette croyance [ voir : ici ] et [ voir : ici ]. Et il a également mis en garde contre Ibn Taymiyah qui a prétendu que Allâh serait assis sur le koursiyy [ voir : ici ].', 'abou hayyan, abu hayyan, al andalouçi, al andaloussi'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '{من في السماء} هذا مجاز وقد قام البرهان العـقلي على أنه تعالى ليس بمتحـيز في جهـة');

-- source: https://islamsunnite.net/limam-an-nacafi-dit-quattribuer-lendroit-a-allah-contredit-le-tawhid/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm An-Naçafi dit qu’attribuer l’endroit à Allâh contredit le tawhîd', 'Naçafi (m.508H)', 'القول بالـمكان – أي في حق الله – منافيٌ للتوحيد', '« Attribuer l’endroit à Allâh contredit le tawhîd (c’est-à-dire la croyance en l’unicité de Allâh) ».', '', 'Dans son livre « Tabsiratou l-Adil-lah » (tome 1 page 171 de cette édition) l’Imâm An-Naçafi a dit :
Informations utiles :
– L’Imâm, Al-Moutakallim (le spécialiste de la croyance), Al-Ousoûli (le spécialiste des fondements) Abou l-Mou’în Maymoûn Ibnou Mouhammad An-Naçafi Al-Hanafi Al-Mâtourîdi est né en 418 et il est décédé en 508 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 930 ans.
– Ici, il dit clairement qu’attribuer l’endroit à Allâh est contraire au tawhîd.
– En effet, Allâh est le Créateur des sept cieux et des terres, du trône et du piédestal et Il est le Créateur de tous les endroits. C’est pour cela qu’il n’est pas permis de croire que Allâh existerait quelque part ou dans tous les endroits, qu’Il existerait dans le ciel ou qu’Il serait établi ou assis sur le Trône, ou encore qu’Il serait répandu dans l’air ou serait proche ou éloigné de nous par la distance.
– Dans ce même ouvrage il explique que le fait d’attribuer à Allâh l’endroit est de la mécréance [ voir : ici ].
– L’Imâm Ibnou Hajar Al-‘Asqalâni a dit : « Les gens de la Sounnah ont expliqué que le tawhîd est le fait de nier l’assimilation [à Allâh] et l’athéisme» [Fat-hou l-Bârî]
– Plusieurs grands savants de l’Islâm porte le nom An-Naçafi, en effet il y a également Aboû Hafs Najmou d-Dîn ‘Oumar Ibnou Mouhammad An-Naçafi qui est décédé en 537 de l’Hégire (رحمه الله) [voir des articles à son sujet : ici] , et aussi ‘Abdou l-Lâh Ibnou Ahmad An-Naçafi qui est décédé en 710 de l’Hégire (certains ayant dit en 701 de l’Hégire) (رحمه الله), qui est l’auteur du célèbre tafsîr [voir des articles à son sujet : ici] .', 'allah, aqida, bokhara, book'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'القول بالـمكان – أي في حق الله – منافيٌ للتوحيد');

-- source: https://islamsunnite.net/limam-an-nawawi-confirme-que-lombre-du-jour-du-jugement-est-celle-du-trone/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm An-Nawawi confirme que l’ombre du Jour du Jugement est celle du Trône', 'Les Chafi''ites', 'والمراد هنا ظل العرش كما جاء في حديث آخر مبينا ، والمراد يوم القيامة إذا قام الناس لرب العالمين ودنت منهم الشمس واشتد عليهم حرها ، وأخذهم العرق ، ولا ظل هناك لشيء إلا للعرش', 'Le sens qui est visé ici, c’est l’ombre du trône comme cela est parvenu clairement dans un autre hadîth ; le sens c’est qu’au Jour Dernier, lorsque les gens seront stationnés pour le Jugement du Seigneur des mondes, que le soleil se rapprochera, sa chaleur s’intensifiera et que leur sueur coulera, il n’y aura pas à ce moment là d’autre ombre que celle du Trône.', '', 'Dans son commentaire du Sahîh Mouslim, l’Imâm An-Nawawi a dit au sujet du hadîth qui comporte l’expression « في ظله » (fî dhillihi) :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence) Aboû Zakariyyâ Mouhyi d-Dîn Yahyâ Ibnou Charaf An-Nawawi est un savant de référence. Il est né en 631 et il est décédé en 676 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 750 ans. C’est un savant dans l’école de jurisprudence Chafi’ite. Son commentaire du sahîh de l’Imâm Mouslim est très célèbre. Il a écrit d’autres livres tels que « Riyâd as-Sâlihîn » (le jardin des vertueux), et le recueil de 40 hadîth si connus.
Tâjou d-Dîn As-Soubki le surnommait « Chaykhou l-Islâm » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « Le Moufti de la Oummah, Chaykhou l-Islâm […] le Hâfidh (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chafi’ite, l’ascète, l’un des étendards (de la religion) » [Târîkhou l-Islâm]. Il a dit également : « Le Chaykh, le modèle (qoudwah) […] le Hâfidh (spécialiste de la science du hadîth), l’ascète, le pieux adorateur, le Faqîh (spécialiste de la jurisprudence), le moujtahid versé dans l’adoration de Son Seigneur, Chaykhou l-Islâm » [Siyar A’lâmi n-Noubalâ]
Ibn Kathîr a dit à son sujet : « Le Chaykh, l’Imâm, l’illustre savant (al-‘Allâmah), le Hâfidh (spécialiste de la science du hadîth) l’honorable Faqîh (spécialiste de la jurisprudence) […] l’un des pieux adorateurs et ascètes» [Tabaqâtou ch-Châfi’iyyah]
– Ici, il explique que ce qui est visé par l’expression « في ظله » (fî dhillihi, qui signifierait au sens apparent : Son ombre), c’est l’ombre du Trône, comme cela est indiqué dans un autre hadîth qui a le degré de Haçan (fort). Et cela ne signifie pas que Allâh serait un corps qui aurait une ombre, comme l’ont prétendu certains assimilateurs (mouchabbihah).
– En effet, le wahhabite Ibn Bâz a prétendu dans son ouvre intitulé “Majmoû’ Fatâwâ” que Allâh aurait une ombre dont on ignorerait le comment, c’est-à-dire une ombre qui aurait un comment (c’est-à-dire des caractéristiques des créatures telles que la taille, la forme, la couleur …) mais que nous ignorons ce comment.
– Le Chaykh Jamîl Halîm Al-Houçayni a dit : « Que l’on prenne garde à ce que pensent certains ignorants qui croient que Allâh serait un volume (hajm) qui aurait une ombre, wa l-‘iyâdhoubilLâhi ta’âlâ, ceux qui expliquent la parole du prophète “fî dhillihi” dans le sens que Allâh serait un corps (jism) qui aurait une ombre, Allâh est totalement exempt de cela, Il est totalement exempt de toutes ressemblances avec ce qui entre en existence » [Dans son livre Ijmâ’ Ahli t-Tanzîl ‘alâ Ithbâti haqqiyyati t-Ta-wîl]
– Allâh ta’âlâ a dit dans Son livre honoré {لَيْسَ كَمِثْلِهِ شَيْءٌ} [Ce qui a pour sens] : « Rien n’est tel que Lui – d’aucune façon que ce soit -». Les savants spécialistes de tafsîr du Qour-ân ont confirmé que ce verset en lui-même est une preuve pour exempter Allâh du corps et des caractéristiques des corps (comme l’ombre).
De nombreux savants ont donné des explications similaires à celles de l’Imâm An-Nawawi, parmi eux :
Al-Qâdî ‘Iyâd (رحمه الله) a dit dans son commentaire du sahîh de Mouslim : « L’annexion de l’ombre ici à Allâh est une annexion indiquant la possession […] et il s’agit de l’ombre du trône comme cela est parvenue dans un autre hadîth »
Le Hâfidh Ibn Hajar Al-‘Asqalâni qui a dit dans son commentaire du sahîh de Al-Boukhâri : « Il a été dit que le sens visé est l’ombre du Trône ; ce qui démontre cela c’est le Hadîth de Salmân d’après Sa’îd ibn Mansoûr avec une chaîne de transmission Haçan (forte) : [qui a pour sens :] « Sept catégories de personnes seront abritées à l’ombre du Trône (‘Arch) » [Voir l’article à ce sujet : ici]
Le Hâfidh As-Souyoûti a dit : « L’ombre dans ce hadîth, il en est voulu la miséricorde (ar-rahmah) ; Al-Qâdî ‘Iyâd a dit : L’annexion de l’ombre ici à Allâh est une annexion indiquant la possession, et d’autres que lui ont dit : cela désigne l’attribution d’honneur. Îçâ Ibn Dînâr a dit : le sens de « dhillihi » est l’honneur qu’il accorde et Sa préservation. Et d’autres ont dit : ce qui en est visé c’est l’ombre de Son trône, comme cela est clairement indiqué dans beaucoup de hadîth. » [Dans son charh du Mouwatta de l’Imâm Mâlik]
Le Chaykh Moullâ ‘Ali Al-Qârî a dit : « Allâh abritera c’est-à-dire qu’ils rentreront “fî dhillihi” c’est-à-dire sous sa miséricorde (rahmatihi), et il a été dit que le sens est l’ombre du trône du fait qu’il est parvenu certaines versions du hadîth avec les termes [qui ont pour sens :] sous l’ombre de Son trône. » [Dans son livre Mirqât al-Mafâtîh, Charh Michkât al-Masâbîh]
Le Chaykh Az-Zourqâni Al-Mâliki Al-Azhari a dit dans son commentaire du Mouwattâ de l’Imâm Mâlik : « Il s’agit d’une annexion indiquant la possession […] et il a été dit qu’il s’agit de l’ombre du trône, et ce qui indique cela c’est le hadîth rapporté par Salmân d’après Sa’îd Ibn Mansoûr avec une chaîne de transmission haçan [forte] [qui a pour sens :] « Sept catégories de personnes seront abritées à l’ombre du Trône (‘Arch) » »
Le Mouhaddith Al-Harari (رحمه الله) a dit : « Le hadîth [qui a pour sens :] « Sept catégories de personnes seront abritées par Allâh fî dhillih » c’est-à-dire à l’ombre de Son trône » [Dans son livre As-Sirât Al-Moustaqîm]
– Al-Hâfidh Al-‘Irâqi (رحمه الله) mort au huitième siècle de l’hégire a dit : « La meilleure façon d’expliquer un hadîth c’est de l’expliquer par un autre hadîth. » .', '3arch, 3arsh, accord, al boukhari'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'والمراد هنا ظل العرش كما جاء في حديث آخر مبينا ، والمراد يوم القيامة إذا قام الناس لرب العالمين ودنت منهم الشمس واشتد عليهم حرها ، وأخذهم العرق ، ولا ظل هناك لشيء إلا للعرش');

-- source: https://islamsunnite.net/les-savants-du-salaf-et-du-khalaf-declarent-mecreant-ceux-qui-attribuent-une-direction-a-allah-2/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Attribuer l’endroit à Allâh est de la mécréance', '''Iraqi (m.806H)', 'وقد قال جمع من السلف والخلف إن من اعتقد أن الله في جهة فهو كافر كما صرح به العراقي ، وبه قال أبو حنيفة ومالك والشافعي وأبو الحسن الأشعري والباقلاني ، ذكره العلامة ملا علي قاري في شرح المشكاة', 'Un groupe de [savants du] Salaf et de Khalaf ont dit que celui qui a pour croyance que Allâh est dans une direction est un mécréant tout comme l’a dit Al-’Irâqi, et parmi eux il a cité : Aboû Hanîfah, Mâlik, Ach-Châfi’i, Abou l-Haçan Al-Ach’ari et Al-Bâqillâni. Le savant Moullâ ‘Ali al-Qârî a cité cela dans son Charh de al-Michkâh', '', 'Dans son ouvrage « It-hâfou l-Kâ-inât bi-bayâni s-salaf wa l-khalaf fi l-moutachâbihât », le Chaykh As-Soubki Al-Azhari a rédigé une longue fatwâ, dans laquelle il a dit :
Informations utiles :
– Le Chaykh, le Faqîh (spécialiste de la jurisprudence), le Mouhaddith (spécialiste de la science du Hadîth) Aboû Mouhammad Mahmoûd ibnou Mouhammad ibnou Ahmad Khattâb As-Soubki Al-Azhari Al-Mâliki est né en 1274 à Soubk al-Ahad (Egypte) et il est décédé en 1352 de l’Hégire au Caire (رحمه الله) c’est-à-dire il y a plus de 80 ans. Il était l’un des Chaykh de l’Université Islamique Al-Azhar et y enseigna durant 37 ans.
– Ici, il confirme que les savants du salaf et du khalaf déclarent mécréant ceux qui ont pour croyance que Allâh serait dans une direction. Suite à cela il cite parmi eux, sept savants de référence dans la communauté musulmane, à savoir : Aboû Hanîfah, Mâlik, Ach-Châfi’i, Al-Ach’ari, Al-Baqillâni, Al-‘Irâqi et le Chaykh Moullâ ‘Ali Al-Qârî.
– Voir l’extrait du livre « Mirqâtou l-Mafâtîh, Charh Michkât al-Masâbîh » du Chaykh Moullâ ‘Ali Al-Qârî : ici .
– L’Imâm, le Moujtahid (jurisconsulte) Aboû Hanîfah An-Nou’mân Ibnou Thâbit, est l’un des savants du Salaf les plus réputés. Il est né en 80 et il est décédé en 150 de l’Hégire (رحمه الله). C’est-à-dire il y a plus de 1280 ans. Il est l’Imâm de l’école (madh-hab) Hanafite et il a eu l’honneur de rencontrer des compagnons du Messager de Allâh (صلى الله عليه وسلم). Retrouvez sa biographie : ici .
– Cette déclaration de mécréance de l’Imâm Aboû Hanîfah à l’égard de ceux qui ont pour croyance que Allâh serait dans un endroit ou une direction, ou qu’Il serait un corps est également confirmée de lui par de nombreux savants tels que :
L’Imâm Abou l-Layth As-Samarqandi [ Charh Al-Fiqh Al-Akbar ],
Le Chaykh Ahmad Ar-Rifâ’i [Al-Bourhânou l-Mou-ayyad],
Chaykhou l-Islâm Ibnou ‘Abdi s-Salâm [ Rapporté par Moullâ ‘Ali Al-Qârî ],
L’Imâm Al-‘Irâqi [ Rapporté par Moullâ ‘Ali Al-Qâri ] et [Rapporté par Mahmoûd As-Soubki] et [ Rapporté par Al-Kawthari ],
Le Chaykh Taqiyyou d-Dîn Al-Hisni [Daf’ou choubahi man chabbaha wa tamarrad],
L’Imâm Al-Bayâdi Al-Hanafi [Ichâratou l-Marâm],
Le Chaykh Ibn Hajar Al-Haytami [ Al-Minhajou l-Qawîm ],
Le Chaykh Al-Qarâfi [ Rapporté par Al-Haytami ] et [Fat-hou l-Ilâh fî Charhi l-Michkâh],
Le Chaykh Moullâ ‘Ali Al-Qâri [ Charh Al-Fiqh Al-Akbar ] et [ Mirqât al-Mafâtîh ] et [ Rapporté par Al-Kawthari ],
Le Chaykh Mahmoûd As-Soubki [It-hâfou l-Kâ-inât],
L’Imâm Al-Kawthari [ Maqâlâtou l-Kawthari ],
Et autres qu’eux.
Et l’Imâm At-Tahâwi dans son célèbre traité de croyance qu’il a présenté comme étant conforme à la voie de l’Imâm Aboû Hanîfah et de ses deux illustres élèves a dit : « Celui qui attribue à Allâh l’une des significations propres aux humains est devenu mécréant.» [ Al-‘Aqîdah At-Tahâwiyyah ] .
– L’Imâm, le spécialiste de la science du Hadîth, le Moujtahid (jurisconsulte), Mâlik Ibnou Anas est l’un des plus grands savants de notre communauté, il est une référence incontournable pour tous musulman. C’est un Salaf (C’est-à-dire qu’il a vécu dans les trois premiers siècles de l’Hégire), il est né en 93 et il est décédé en 179 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1260 ans. Il est l’Imâm de l’école (madh-hab) Malikite. L’Imâm Ach-Châfi’i disait de lui « Lorsque les savants sont cités, Mâlik est comme une étoile » . Consultez sa biographie : ici .
– Cette déclaration de mécréance de l’Imâm Mâlik à l’égard de ceux qui ont pour croyance que Allâh serait un corps, ou qu’Il serait dans un endroit ou une direction, ou qu’il serait assis sur le trône est également confirmée de lui par de nombreux savants tels que :
L’Imâm Al-‘Irâqi [ Rapporté par Moullâ ‘Ali Al-Qâri ] et [Rapporté par Mahmoûd As-Soubki] et [ Rapporté par Al-Kawthari ],
Le Chaykh Moullâ ‘Ali Al-Qâri [ Mirqât al-Mafâtîh ] et [ Rapporté par Al-Kawthari ],
Le Chaykh Ibnou Hajar Al-Haytami [ Al-Minhajou l-Qawîm ] et [Fat-hou l-Ilâh fî Charhi l-Michkâh],
L’Imâm Al-Kawthari [ Maqâlâtou l-Kawthari ],
et autres.
De plus, l’une des plus grandes références de l’école de l’Imâm Mâlik, le Qâdî ‘Abdou l-Wahhâb Al-Mâliki (362 – 422 H.) confirme que le fait d’attribuer à Allâh l’endroit ou la direction est de la mécréance selon tout les gens de l’Islâm, c’est-à-dire par unanimité. [ Charh ‘Aqîtadi Mâlik As-Saghîr ].
– L’Imâm, le Moujtahid (jurisconsulte) Mouhammad Ibnou Idrîs Ach-Châfi’i est l’un des plus grands savants de notre communauté, c’est une référence incontournable pour tout musulman. C’est un salaf (C’est-à-dire qu’il a vécu dans les trois premiers siècles de l’hégire), il est né en 150 et il est décédé en 204 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 1230 ans. Il est l’Imâm de l’école (madh-hab) Chafi’ite.
L’Imâm Abou l-Haçan As-Soulami a dit à son sujet : « Mouhammad Ibn Idrîs Ach-Châfi’i est le savant à la tête du second siècle [de l’Hégire] (c’est-à-dire le moujaddid – savant revivificateur) » [Rapporté par le Hâfidh Ibnou ‘Açâkir dans Tabyînou kadhibi l-Mouftari]
– Cette déclaration de mécréance de l’Imâm Ach-Châfi’i à l’égard de ceux qui ont pour croyance que Allâh serait un corps, ou qu’Il serait dans un endroit ou une direction, ou qu’il serait assis sur le trône est également confirmée de lui par de nombreux savants tels que :
Al-Qâdî Houçayn [ Rapporté par Ibnou Ar-Rif’ah ] et [ Rapporté par Al-Qourachi ],
Le Chaykh Al-Qourachi [ Najmou l-Mouhtadi ],
Le Chaykh Ibnou Ar-Rif’ah [ Kifâyatou n-Nabîh ],
L’Imâm Al-‘Irâqi [ Rapporté par Moullâ ‘Ali Al-Qâri ] et [Rapporté par Mahmoûd As-Soubki] et [ Rapporté par Al-Kawthari ],
Le Chaykh Moullâ ‘Ali Al-Qâri [ Mirqât al-Mafâtîh ] et [ Rapporté par Al-Kawthari ],
Le Chaykh Ibnou Hajar Al-Haytami [ Al-Minhajou l-Qawîm ] et [Fat-hou l-Ilâh fî Charhi l-Michkâh],
L’Imâm As-Souyoûti [ al-Achbâh wa n-Nadhâ-ir ]
L’Imâm Al-Kawthari [ Maqâlâtou l-Kawthari ],
Et autres.
– L’Imâm Abou l-Haçan Al-Ach’ari est un savant du salaf (C’est-à-dire ayant vécu dans les trois premiers siècles de l’hégire) il est né en 260 (certains ont dit 270) et il est décédé en 324 de l’Hégire (d’autres ont dit 330 ou 333) (رحمه الله). Un très grand nombre de savants ont fait son éloge et le considèrent comme l’un des plus grands défenseurs de la croyance de Ahlou s-sounnah wa-l Jamâ’ah. Consultez sa biographie : ici.
L’Imâm Abou l-Haçan As-Soulami a dit à son sujet : « Al-Ach’ari est le savant à la tête du 3ème siècle [de l’Hégire] (c’est-à-dire le moujaddid – savant revivificateur) » [Rapporté par le Hâfidh Ibnou ‘Açâkir dans Tabyîn kadhib al-Mouftari]
Le Chaykh Mouhammad Ibn A’mar An-Nâbighah Al-Ghalâwi a dit de lui : « Al-Ach’ari est l’Imâm de Ahlou s-Sounnah » [Al-Moubâchir ‘ala Bni ‘Âchir]
Le Mouhaddith ‘Abdou l-Bâsit Al-Fâkhoûri a dit : « Nous disons que Ach-Châfi’i, Mâlik, Aboû Hanîfah, Ahmad Ibn Hanbal, Al-Awzâ’i, et le reste des moujtahidîn sont sur la bonne guidée de leur Seigneur, et que Abou l-Haçan Al-Ach’ari est un Imâm de la Sounnah, tout comme Aboû Mansoûr Al-Mâtourîdi » [Al-Kifâyah li Dhawi l-‘Inâyah]
– Cette déclaration de mécréance de l’Imâm Al-Ach’ari à l’égard de ceux qui ont pour croyance que Allâh serait un corps, ou qu’Il serait dans un endroit ou une direction, est également confirmée de lui par de nombreux savants tels que :
L’Imâm Aboû Mansoûr Al-Baghdâdi [ Al-Asmâ-ou wa s-Sifât ],
L’Imâm Taqiyyou d-Dîn As-Soubki [ Rapporté par Al-Kawthari ],
Le Chaykh Al-Bayâdi [ Ichâratou l-Marâm ],
L’Imâm Al-‘Irâqi [ Rapporté par Moullâ ‘Ali Al-Qâri ] et [Rapporté par Mahmoûd As-Soubki],
Le Chaykh Moullâ ‘Ali Al-Qâri [ Mirqât al-Mafâtîh ],
Le Chaykh Ibn Hajar Al-Haytami [Al-Minhajou l-Qawîm] et [Fat-hou l-Ilâh fî Charhi l-Michkâh]
L’Imâm Al-Kawthari [ Maqâlâtou l-Kawthari ]
Et autres.
– L’Imâm, le Qâdî Aboû Bakr Mouhammad Al-Bâqillâni Al-Mâliki est né en 338 à Bassora et il est décédé en 403 de l’Hégire à Baghdâd (رحمه الله) c’est-à-dire il y a environ 1030 ans. Il était l’un des plus grands savants du madh-hab (Ecole de jurisprudence) Malikite durant son époque et un grand défenseur de la croyance de Ahlou s-Sounnah. Certains l’ont désigné comme le Moujaddid du 4ème siècle de l’Hégire (c’est-à-dire celui qui revitalise la science de la religion).
Al-Qâdî ‘Iyâd a dit à son sujet : « Il est surnommé le Chaykh de la Sounnah et le porte-parole de la Oummah (Liçânou l-Oummah), il était un spécialiste de la croyance dans le madh-hab qui comporte les preuves décisives, et de parmi les gens du hadîth » . Et il le considérait comme le Moujaddid du 4ème siècle. [Tartîb al-Madârik]
Le Hâfidh Ibnou ‘Açâkir a dit le concernant : « Il est surnommé le Chaykh de la Sounnah et le porte-parole de la Oummah (Liçânou l-Oummah) » [Tabyînou kadhibi l-mouftari]
Le Hâfidh Ad-Dâraqoutni a dit de lui : « Il est le soutien de la Sounnah et il a maitrisé les Mou’tazilah » . [Tartîb al-Madârik]
Ibnou Jahdam disait de lui : « Il était le Chaykh de son temps, le savant de son époque, celui vers qui l’on revenait lorsqu’il y avait un litige avec autre que lui » . [Tartîb al-Madârik]
Aboû ‘Imrân al-Fâçi a dit à son sujet : « Il est l’épée d’Ahlou s-Sounnah de son époque, l’Imâm des savants spécialistes de la croyance de parmi les gens de la vérité de son temps » . [Tartîb al-Madârik]
Ibnou ‘Ammâr Al-Mayourqi disait de lui : « Il est surnommé le Chaykh de la Sounnah et le porte-parole de la Oummah (Liçânou l-Oummah) » ; il a dit également : « Il était l’une des forteresses des musulmans et les gens de l’innovation (ahlou-l bida’) n’ont jamais connu plus grande joie que celle qu’ils ont ressenti au moment de sa mort » [Tartîb al-Madârik]
Salâhou d-Dîn As-Safadi à dit à son sujet : « Il n’avait pas d’égal à son époque » [Al-Wâfî bi l-Wafayât]
Al-Yâfi’i a dit de lui : « Sayfou s-Sounnah (l’épée de la Sounnah), le soutien de la religion, le grand Imâm, le célèbre érudit, le porte parole des spécialistes de la croyance (liçânou l-Moutakallimîn), celui qui disposait des arguments incontestables, celui qui a maitrisé les innovateurs [dans la croyance] celui qui a réfuté les mensonges » ; il a dit également de lui : « Il est un spécialiste des fondements religieux (ousoûli), un spécialiste de la croyance (moutakallim), un Mâliki, un Ach’ari, le Moujaddid (revivificateur) de la religion du quatrième siècle, selon l’avis authentique (sahîh) » ; il a dit aussi : « Il n’avait pas d’égal à son époque » [Mir-atou l-Jinân]
As-Sam’âni a dit à son sujet : « Il était unique en son temps, incomparable dans l’intelligence, la mémorisation, et dans le fait de vaincre ses adversaires» . [Al-Insâb]
L’Imâm As-Souyoûti le considère également comme l’un des trois possible Moujaddid du quatrième siècle, dans sa Qasîdah « Touhfatou l-Mouhtadîn »
L’Imâm Abou l-Haçan As-Soulami a dit à son sujet : « Al-Baqillâni est le savant à la tête du 4ème siècle [de l’Hégire] (c’est-à-dire le moujaddid – savant revivificateur) » [Rapporté par le Hâfidh Ibnou ‘Açâkir dans Tabyîn kadhib al-Mouftari]
Adh-Dhahabi a dit de lui : « L’Imâm, l’illustre savant (Al-‘Allâmah), l’incomparable spécialiste de la croyance (moutakallim), le spécialiste des fondements religieux surpassant les autres, le Qâdî » , il a dit également dit de lui : « Il faisait preuve d’une forte compréhension et d’intelligence » . Il rapporte également qu’il était surnommé « Sayfou s-Sounnah » (l’épée de la Sounnah) [Siyar A’lâmi n-Noubalâ]
– Cette déclaration de mécréance de l’Imâm Al-Bâqillâni à l’égard de ceux qui ont pour croyance que Allâh serait un corps, ou qu’Il serait dans un endroit ou une direction, est également confirmée de lui dans son propre ouvrage “ Al-Insâf ” dans lequel il rapporte la célèbre parole de l’Imâm Ja’far As-Sâdiq, et cela a également été confirmé de lui par :
L’Imâm Al-‘Irâqi [ Rapporté par Moullâ ‘Ali Al-Qâri ] et [Rapporté par Mahmoûd As-Soubki],
le Chaykh Moullâ ‘Ali Al-Qâri [ Mirqât al-Mafâtîh ],
Et le Chaykh Ibn Hajar Al-Haytami [Al-Minhajou l-Qawîm] et [Fat-hou l-Ilâh fî Charhi l-Michkâh].
– L’Imâm, l’Illustre savant, le Mouhaddith (transmetteur du Hadîth), le Faqîh (spécialiste de la jurisprudence), le Chaykh Moullâ ‘Ali Al-Qârî est un grand savant du madh-hab (école de jurisprudence) Hanafite, il est né en Afghanistan et il est décédé à La Mecque en 1014 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 430 ans. Il a écrit un commentaire du livre « Al-Fiqh Al-Akbar » de l’Imâm Aboû Hanîfah qui est très connu.
Ibn ‘Âbidîn Al-Hanafi a dit à son sujet : « Al-‘Allâmah (l’illustre savant) ‘Ali Al-Qârî, le dernier de ceux qui sont enraciné [dans la science] » [Raddou l-Mouhtâr]
Ibn ‘Âbidîn Al-Hanafi a dit également à son sujet : « Le dernier des spécialistes de la récitation, des spécialistes du fiqh, des spécialistes de la science du hadîth, l’élite des authentificateurs et vérificateurs » [Majmou’atou Raçâ-il Ibn ‘Âbidîn]
Al-Mouhibbi a dit le concernant : « L’une des références de science, il était sans pareil à son époque » [Khoulâsatou l-Athar]
Az-Zirikli a dit de lui : « Il est un faqîh (spécialiste de la jurisprudence) Hanafite, de parmi les références de science de son époque […] il a écrit de nombreux ouvrages » [Al-A’lâm]
– Le Chaykh Moullâ ‘Ali Al-Qâri déclarait également les moujassimah (anthropomorphistes) mécréant comme cela apparaît dans son Charh (commentaire) du livre « Al-Fiqh Al-Akbar » de l’Imâm Aboû Hanîfah.
– Le Chaykh Mahmoûd As-Soubki a également mentionné dans d’autres passages de ses ouvrages que les moujassimah sont mécréant par unanimité [ Extrait 1 ] et [ Extrait 2 ] et [ Extrait 3 ].
– Cette fatwâ du Chaykh Mahmoûd As-Soubki fut validée par une assemblée de savants de l’Université Islamique Al-Azhar, composée :
du Chaykh Mouhammad An-Najdi, le Chaykh des maîtres des Chafi’ites ;
du Chaykh Mouhammad Sabî’ Adh-Dhahabi, le Chaykh des maîtres Hanbalites ;
du Chaykh Mouhammad al-‘Azbi Rizq, l’enseignant des hautes études ;
du Chaykh ‘Abdoul-Hamîd ‘Ammâr, l’enseignant des hautes études ;
du Chaykh ‘Aliyy An-Nahrawi, l’enseignant des hautes études ;
du Chaykh Dousoûqi ‘AbdoulLâh Al-‘Arabi, du comité des grands savants ;
du Chaykh ‘Ali Mahfoûdh, l’enseignant dans les spécialités de Al-Azhar ;
du Chaykh Ibrâhîm ‘Ayyârah Ad-Daljamoûni, l’enseignant dans la section spécialisation de Al-Azhar ;
du Chaykh Mouhammad ‘Alyân, grand savant de Al-Azhar ;
du Chaykh Ahmad Makki, l’enseignant dans la section des spécialisations de Al-Azhar ;
et du Chaykh Mouhammad Houcayn Himdân.
– D’autres extraits de cette fatwâ sont disponible sur le site [ à retrouver : ici ].
– Retrouvez d’autres paroles de savants confirmant le fait qu’ attribuer le corps à Allâh est de la mécréance : ici .
– Retrouvez d’autres paroles de savants confirmant le fait qu’ attribuer l’endroit ou la direction à Allâh est de la mécréance : ici .', '3oulama, 4 écoles, abi hanifa, abi hanifah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وقد قال جمع من السلف والخلف إن من اعتقد أن الله في جهة فهو كافر كما صرح به العراقي ، وبه قال أبو حنيفة ومالك والشافعي وأبو الحسن الأشعري والباقلاني ، ذكره العلامة ملا علي قاري في شرح المشكاة');

-- source: https://islamsunnite.net/les-compagnons-faisaient-le-tabarrouk-par-la-tunique-du-prophete-rapporte-par-mouslim/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Les compagnons faisaient le tabarrouk par la tunique du prophète [rapporté par Mouslim]', 'Mouslim', 'فرجعت إلى أسماء فخبرتها فقالت هذه جبة رسول الله صلى الله عليه وسلم فأخرجت إلي جبة طيالسة كسروانية لها لبنة ديباج وفرجيها مكفوفين بالديباج فقالت هذه كانت عند عائشة حتى قبضت فلما قبضت قبضتها وكان النبي صلى الله عليه وسلم يلبسها فنحن نغسلها للمرضى يستشفى بها', '« Asmâ nous a présenté une tunique longue (joubbah), dont l’encolure était ornée de brocart et les emmanchures ourlées, puis elle a dit : « C’est la joubbah du Messager de Allâh (صلى الله عليه وسلم) ; elle se trouvait chez ‘Â-ichah. Je l’ai récupérée lorsqu’elle est décédée. Le Prophète (صلى الله عليه وسلم) la portait. Nous la trempons dans l’eau pour les malades et recherchons par elle la guérison ».', '', 'Dans son célèbre recueil de hadîth sahîh, l’Imâm Mouslim rapporte du Mawlâ de Asmâ Bintou Abî Bakr qu’il a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du hadîth) Mouslim Ibnou Al-Hajjâj Ibnou Mouslim Al-Qouchayri An-Nayçâboûri, l’auteur du célèbre recueil de Hadîth authentique (sahîh) connu sous le nom de « Sahîh Mouslim » est né en 202 et il est décédé en 261 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1170 ans. Il est une référence incontournable dans la science du Hadîth.
– Dans une autre version, il est rapporté à la fin du hadîth : « Nous la trempons dans l’eau pour quiconque est malade parmi nous ».
– Ce hadîth nous montre que les compagnons, et les proches de la famille du prophète (صلى الله عليه وسلم) autorisaient et pratiquaient le tabarrouk par les traces du prophète (صلى الله عليه وسلم).
– Le tabarrouk c’est la recherche de bénédiction par les traces physiques d’un Prophète ou d’un être de vertu, tout en sachant, bien évidemment, que c’est Allâh ta’âlâ qui est Le Créateur de la guérison, du profit, de la barakah etc. Donc le tabarrouk n’est pas une adoration d’autre que Allâh comme le considère à tord certains ignorants.
– Il n’y a donc aucune considération à donner à la prétention de ceux qui renient le tabarrouk par les traces physiques honorées du Prophète (صلى الله عليه وسلم).
– Les savants de l’Islâm ce sont d’ailleurs appuyé sur ce hadîth pour confirmé que le tabarrouk (recherche de bénédictions) est permis et même recommandé.
– L’Imâm An-Nawawi (رحمه الله) a dit : « Il y a dans ce hadîth une preuve sur la recommandation de pratiquer le tabarrouk (la recherche de bénédiction) par les traces (âthâr) des vertueux et par leurs vêtements » [ retrouvez l’article : ici ]
– ‘Abdou l-Lâh ibnou Ahmad (le fils de l’Imâm Ahmad ibnou Hanbal) a dit : « J’ai vu mon père (l’Imâm Ahmad ibnou Hanbal) prendre un cheveu de ceux du Prophète (صلى الله عليه وسلم), il l’a mis dans sa bouche puis l’a embrassé. Et je suis sur de l’avoir vu le mettre sur ses deux yeux, et l’avoir mélangé avec de l’eau, d’avoir bu cette eau en recherchant la guérison par cela. Et je l’ai vu prendre le bol du Prophète, le laver dans un puits, puis boire dedans. Je l’ai vu boire de l’eau de Zamzam en recherchant la guérison et s’essuyer les mains et le visage avec elle. » (rapporté par Adh-Dhahabi) [ voir l’article : ici ]
– ‘Abdou l-Lâh Ibn Ahmad Ibn Hambal a dit également : « Je l’ai interrogé (c’est-à-dire son père, l’Imâm Ahmad Ibnou Hanbal) à propos de quelqu’un qui touche le minbar du Prophète (صلى الله عليه وسلم) en faisant le tabarrouk (la recherche de bénédiction), en le touchant et en l’embrassant, et qui fait la même chose auprès de la tombe ou ce qui est du même ordre en visant par là le rapprochement de l’agrément de Allâh ‘azza wa jall. Il m’a répondu : il n’y a pas de mal en cela (lâ ba-sa bidhâlik)» [ voir l’article : ici ]
– Adh-Dhahabi a confirme cela en disant : « Il fut rapporté que ‘Abdou l-Lâh demanda à son père au sujet de quelqu’un qui touche le pommeau du minbar du Prophète (صلى الله عليه وسلم) et touche le mur de la chambre Honorée du Prophète (صلى الله عليه وسلم) et Ahmad Ibnou Hanbal répondit : « Je ne vois aucun mal dans cela ».» [ voir l’article : ici ]
– L’Imâm An-Nawawi a dit : « Le Calife ‘Oumar Ibn ‘Abdi l-‘Azîz a demandé à ce que soit enterré avec lui l’un des cheveux du prophète (salla l-Lâhou ‘alayhi wa sallam) qu’il avait avec lui, et également l’un de ses ongles. Il disait : “si je meurt alors mettez-les dans mon linceul”, et c’est ainsi qu’ils ont fait » [Dans son livre Tahdhîbou l-Asmâ wa l-Loughât]
– Le Mouhaddith Al-Harari a dit : « Sachez que les compagnons, que Allâh les agrée, recherchaient les bénédictions par les traces physiques du Prophète (صلى الله عليه وسلم) au cours de sa vie et après sa mort. Les musulmans n’ont cessé de suivre cette voie jusqu’à nos jours. » [ voir l’article : ici ]
– Retrouvez d’autres articles au sujet du tabarrouk : ici .', '3a''icha, aicha, aichah, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فرجعت إلى أسماء فخبرتها فقالت هذه جبة رسول الله صلى الله عليه وسلم فأخرجت إلي جبة طيالسة كسروانية لها لبنة ديباج وفرجيها مكفوفين بالديباج فقالت هذه كانت عند عائشة حتى قبضت فلما قبضت قبضتها وكان النبي صلى الله عليه وسلم يلبسها فنحن نغسلها للمرضى يستشفى بها');

-- source: https://islamsunnite.net/le-chaykh-ali-al-qari-dit-que-le-oulouww-elevation-de-allah-nest-pas-par-lendroit/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Chaykh ‘Ali Al-Qârî dit que le ‘oulouww (élévation) de Allâh n’est pas par l’endroit', 'Qari', 'وأما علوّه تعالى على خلقه الـمُستفاد من نحو قوله تعالى {وهُوَ القاهرُ فَوْقَ عِبَادِهِ} (سورة الأنعام / 18) فعلوّ مكانة ومَرتبةٍ لا علوّ مكانٍ كما هو مُقرَّرٌ عند أهل السنة والجماعة', 'Quant à Son ‘oulouww, ta’âlâ, par rapport à Ses créatures qui est tiré de ce qui est de l’ordre de la parole de Allâh ta’âlâ : {وَ هُوَ القَاهِرُ فَوْقَ عِبَادِهِ} (wa houwa l-Qâhirou fawqa ‘ibâdih) [soûrat Al-An’âm / 61], il s’agit d’un ‘oulouww (élévation) par le mérite et l’éminence et non pas d’une élévation par l’endroit, conformément à ce qui est décrété chez les gens de Ahlou s-Sounnah wa l-Jamâ’ah', '', 'Dans son Charh (commentaire) du livre « Al-Fiqh Al-Akbar » de l’Imâm Aboû Hanîfah, (page 332 de cette édition), le Chaykh Moullâ ʹAli Al-Qârî a dit :
Informations utiles :
– L’Imâm, l’Illustre savant, le Mouhaddith (transmetteur du Hadîth), le Faqîh (spécialiste de la jurisprudence), le Chaykh Moullâ ‘Ali Al-Qârî est un grand savant du madh-hab (école de jurisprudence) Hanafite, il est né en Afghanistan et il est décédé à La Mecque en 1014 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 430 ans. Il a écrit un commentaire du livre « Al-Fiqh Al-Akbar » de l’Imâm Aboû Hanîfah qui est très connu.
Ibn ‘Âbidîn Al-Hanafi a dit à son sujet : « Al-‘Allâmah (l’illustre savant) ‘Ali Al-Qârî, le dernier de ceux qui sont enraciné [dans la science] » [Raddou l-Mouhtâr]
Ibn ‘Âbidîn Al-Hanafi a dit également à son sujet : « Le dernier des spécialistes de la récitation, des spécialistes du fiqh, des spécialistes de la science du hadîth, l’élite des authentificateurs et vérificateurs » [Majmou’atou Raçâ-il Ibn ‘Âbidîn]
Al-Mouhibbi a dit le concernant : « L’une des références de science, il était sans pareil à son époque » [Khoulâsatou l-Athar]
Az-Zirikli a dit de lui : « Il est un faqîh (spécialiste de la jurisprudence) Hanafite, de parmi les références de science de son époque […] il a écrit de nombreux ouvrages » [Al-A’lâm]
– Ici, il explique l’attribut de Allâh « al-‘oulouww » et il précise que c’est une élévation de mérite et d’éminence, et non pas une élévation par l’endroit et la direction. Et il dit bien que cela est la position des gens de Ahlou s-Sounnah wa l-Jama’âh. La personne qui a pour croyance que Allâh est élevé par l’endroit ou la direction, a une croyance contraire à celle des musulmans.
– D’autres savants ont tenus des propos similaire :
L’Imâm du Salaf, Az-Zajjâj a dit : « Ce qui est visé par al-‘oulouww n’est pas l’élévation spatiale car Allâh ta’âlâ est exempt de l’emplacement et de l’endroit. Dans ce cas, al-‘oulouww ne veut dire que l’élévation du mérite et la supériorité de la souveraineté » [ voir : ici ]
Le Chaykh Abou n-Nasr Al-Qouchayri a dit : « Ainsi Ar-Rabb [c’est-à-dire Allâh] est attribué du ‘Oulouww (élévation) et de la Fawqiyyah (supériorité) par le mérite et l’éminence et Il est exempt d’être dans un endroit et d’être en face d’un corps» [Dans son livre At-Tadhkirah Ach-Charqiyyah]
L’Imâm Ar-Râzi a dit : « Il n’est pas possible que ce qui est visé par Al-‘Aliyy soit l’élévation (al-‘oulouww) par la direction et l’endroit puisque les preuves de la corruption de cette croyance ont été confirmées » [ voir : ici ]
L’Imâm Al-Qourtoubi a dit : « Par Al-‘Aliyy, on vise ‘oulouwwou l-qadr wa l-manzilah (l’élévation par le mérite et l’éminence) et non pas ‘oulouwwou l-makân (l’élévation par l’endroit) car Allâh est exempt de la localisation » [voir : ici]
L’Imâm Ibn Hajar Al-‘Asqalâni a dit : « Le fait que les deux directions du haut et du bas soient impossibles au sujet de Allâh n’implique pas qu’on ne Le qualifie pas par al-‘oulouww (l’élévation par le degré) car Son attribution par al-‘oulouww vient dans le sens figuré. Ce qui est impossible, c’est qu’il vienne dans le sens physique (c’est-à-dire l’élévation par l’endroit) » [ voir : ici ]
Le Moufassir Ath-Tha’âlibi a dit : « Il n’est pas possible que le terme « fawqa » [dans le verset : { وَهُوَ ٱلۡقَاهِرُ فَوۡقَ عِبَادِهِ } ] vienne dans le sens de la direction, mais il s’agit d’une élévation (‘oulouww) par la puissance et le mérite» [ voir : ici ]
Le Moufassir Ath-Tha’âlibi a dit également : « “Al-‘Aliyy” : Il est voulu par cela l’élévation (‘oulouww) par le mérite et l’éminence, et non d’une élévation spatiale [par l’endroit], car Allâh soubhânahou wa ta’âlâ est exempt de la localisation » [ voir : ici ]
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « Le verset { وَهُوَ ٱلۡقَاهِرُ فَوۡقَ عِبَادِهِ } (wa houwa l-Qâhirou fawqa ‘ibâdihi) c’est-à-dire que Allâh est Al-Qâdir (Celui qui est tout-puissant sur toutes choses) et Al-Ghâlib (Celui qui domine toutes choses). Et ce qui est voulu par « fawqa » est la supériorité (‘oulouww) en termes de puissance et de mérite, comme dans Sa parole { وَإِنَّا فَوْقَهُمْ قَاهِرُونَ} » [ Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân ]
Le Chaykh Yoûçouf Ad-Dajwi a dit : « Sache que les gens du Salaf déclarent que la supériorité spatiale (al-‘oulouww al-Makânî) est impossible à Son sujet (c’est-à-dire au sujet de Allâh) ta’âlâ, contrairement à certains ignorants qui débattent à tort et à travers à ce propos. » [ voir : ici ]
Le Chaykh Yoûçouf Ad-Dajwi a dit aussi : « Al-A’lâ est un attribut du Seigneur. Ce qui en est visé c’est la supériorité (‘oulouww) par la domination et la manifestation de la puissance et non pas par l’endroit et la direction, qu’Il soit absolument exempté de tout cela » [voir : ici]
– Le Messager de Allâh (صلى الله عليه وسلم) a lui même nié les directions au sujet de Allâh [ Voir l’article à ce sujet : ici ].
– Retrouvez d’autres paroles de savants au sujet du ‘oulouww (élévation) de Allâh : ici .', '3oulouww, afghan, afghanistan, al-an3am'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وأما علوّه تعالى على خلقه الـمُستفاد من نحو قوله تعالى {وهُوَ القاهرُ فَوْقَ عِبَادِهِ} (سورة الأنعام / 18) فعلوّ مكانة ومَرتبةٍ لا علوّ مكانٍ كما هو مُقرَّرٌ عند أهل السنة والجماعة');

COMMIT;
