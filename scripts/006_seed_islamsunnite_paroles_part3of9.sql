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
-- PARTIE 3/9 (script découpé pour la limite de taille de l'éditeur).
-- Toutes les parties sont idempotentes et exécutables dans n'importe quel ordre.

-- Colonnes si absentes :
ALTER TABLE parole ADD COLUMN IF NOT EXISTS savant VARCHAR(255) DEFAULT '';
ALTER TABLE parole ADD COLUMN IF NOT EXISTS tag VARCHAR(255) DEFAULT '';

-- Resynchronise la séquence des id : des lignes existantes ont des id posés
-- explicitement et la séquence était en retard, d'où l'erreur
-- « duplicate key value violates unique constraint "parole_pkey" ».
SELECT setval(pg_get_serial_sequence('parole', 'id'), COALESCE((SELECT MAX(id) FROM parole), 0) + 1, false);

BEGIN;

-- source: https://islamsunnite.net/mouhammad-illaych-al-maliki-eloge-mawlid/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La bonne innovation du Mawlid.', 'Moudhaffar', 'ولا زال أهل الإسلام يحتفلون ويهتمون بشهر مولده عليه الصلاة والسلام ويعملون الولائم ويتصدقون في لياليه بأنواع الصدقات ويظهرون السرور ويظهر عليهم من بركاته كل فضل عميم. وأول من أحدث فعل المولد الملك المظفر ابو سعيد صاحب اربل فكان يعمله في ربيع الأول ويحتفل احتفالاً هائلاً', '', '', 'Dans son livre al-Qawlou l-Mounjiyy, le chaykh Mouhammed ‘Illaych Al-Mâliki a dit :', '''illish al maliki, 3oulama, ahlou s-sounnah, al azhar'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ولا زال أهل الإسلام يحتفلون ويهتمون بشهر مولده عليه الصلاة والسلام ويعملون الولائم ويتصدقون في لياليه بأنواع الصدقات ويظهرون السرور ويظهر عليهم من بركاته كل فضل عميم. وأول من أحدث فعل المولد الملك المظفر ابو سعيد صاحب اربل فكان يعمله في ربيع الأول ويحتفل احتفالاً هائلاً');

-- source: https://islamsunnite.net/mouhammad-illaych-al-maliki-eloge-mawlid/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La bonne innovation du Mawlid.', 'Moudhaffar', 'ثم يمدح الملك المظفر بقوله : « وكان شهما شجاعا بطلا عاقلا عالما عادلا »', '« Les gens de l’Islâm (les musulmans) ne cessent de commémorer durant le mois de sa naissance (‘alayhi s-salâtou wa s-salâm). Et ils font des repas, des aumônes de différentes sortes durant ces nuits, ils manifestent leur joie et ils rajoutent en acte de bien et s’attachent au récit de sa naissance honorée, et la bénédiction apparaît sur eux. Le premier qui a instauré la célébration du Mawlid est le roi Al-Moudhaffar Aboû Sa’îd, le roi de Irbil. Il l’organisait durant le mois de Rabî’ou l-Awwal et le fêtait par une festivité grandiose.».', '', 'Puis il fait l’éloge du roi Al-Moudhaffar en disant : « Il était magnanime, courageux, brave, sage, savant et juste ».
Informations utiles :
– Le Chaykh, le Faqîh (spécialiste de la jurisprudence), le Moufti des contrées égyptiennes, Aboû ‘Abdi l-Lâh Mouhammad Ibn Ahmad ‘Illaych Al-Mâliki Al-Azhari, est né en 1217 au Caire (Egypte) et il est décédé en 1299 de l’hégire au Caire (رحمه الله) c’est-à-dire il y a environ 150 ans.
Az-Zirikli a dit à son sujet : « Il est l’un des plus grands spécialistes du Fiqh (jurisprudence) Mâlikite » [Al-A’lâm]
– Le Savant Sunnite, le Sultân attaché à la religion, le Gouverneur de Irbil, l’éminent Roi Al-Moudhaffar Aboû Sa’îd Koûkabri Ibnou Zaynou d-Dîn ‘Ali Ibnou Baktakîn est né 549 et il est décédé en 630 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 800 ans. Il était très proche du grand Moujâhid Salâhou d-Dîn Al-Ayyoûbi (رحمه الله), le Roi Al-Moudhaffar était d’ailleurs marié avec la sœur du Sultân Salâhou d-Dîn. Nombreux sont les savants qui ont fait son éloge.
– Ici, le Chaykh Mouhammad ‘Illaych fait l’éloge de la célébration du Mawlid et du savant et Roi Al-Moudhaffar qui fût le premier à l’instaurer.
– En quoi consiste le Mawlid ?
Du fait de rassembler les musulmans dans le bien : ceci est un bien dans la religion.
De récitation du Qour-ân : ceci est un bien dans la religion.
De Dhikr (évocation de Allâh) : ceci est un bien dans la religion.
D’éloge du prophète (صلى الله عليه وسلم) : ceci est un bien dans la religion.
De cours et conférences religieuses : ceci est un bien dans la religion.
Du fait de s’inciter mutuellement à la piété : ceci est un bien dans la religion.
Distribuer des aumônes (nourritures et boissons) : ceci est un bien dans la religion.
D’invocations à l’égard de Allâh : ceci est un bien dans la religion.
– L’Imâm As-Souyoûti a d’ailleurs résumé tout cela en disant : « la commémoration de la naissance (Mawlid) à l’origine consiste en le rassemblement des gens, la récitation de ce qu’il est possible de réciter du Qour-ân, la narration des nouvelles rapportées au sujet du début de l’histoire du Prophète et ce qui est advenu comme signes à sa naissance, à la suite de quoi il leur est présenté de la nourriture qu’ils consomment puis partent sans rien ajouter à cela. Ceci compte parmi les bonnes innovations pour laquelle celui qui la fait sera récompensé, et ce, pour ce que cela comporte comme glorification du degré du Prophète (صلى الله عليه وسلم), et comme manifestation de joie et de réjouissance pour sa noble naissance » [ Dans son livre Al-Hâwi li l-Fatâwi ].
– Ainsi le Mawlid compte de parmi les bonnes innovations, et le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ] .
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ]
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .
– Retrouvez de nombreuses paroles de savants concernant le Mawlid : ici .', '''illish al maliki, 3oulama, ahlou s-sounnah, al azhar'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ثم يمدح الملك المظفر بقوله : « وكان شهما شجاعا بطلا عاقلا عالما عادلا »');

-- source: https://islamsunnite.net/zakariyya-al-ansari-parle-sens-istawa-istiwa/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas sur le trône.', 'Ansari (Zakariyya)', 'وللفظ (استوى) محامل: (جلس) و (اعتدل) و (استولى) و (علا) مكانا أو رتبة و (قصد)، كقوله تعالى: {ثُمَّ اسْتَوَى إِلَى السَّمَاءِ} [البقرة: 29]: قصد إلى فعل أمر فيها. فالأولان والرابع بمعنى علوِّ المكان محالات في حقه تعالى، بخلاف ما عداها! والعرش لغة سرير الملك والسقف', '« Le terme « istawâ » peut être employé [dans la langue arabe] pour dire s’assoir (jalassa), se redresser (i’tadala), dominer (istawlâ), être élevé par l’endroit (‘alâ makânan) ou [êtré élevé] par le mérite (routbatan), vouloir (qasada) comme dans Sa parole ta’âlâ : « thoumma stawâ ila s-samâ ».', '', 'Dans son commentaire de « Ar-Riçâlatou l-Qouchayriyyah » intitulé « Ihkâmou d-Dalâlah », Chaykh Al-Islâm Zakariyyâ Al-Ansâri a dit :
Les deux premiers sens [c’est-à-dire le sens de la position assise et du redressement] ainsi que le quatrième dans le sens d’être élevé par l’endroit est impossible au sujet de Allâh ta’âlâ contrairement aux autres sens cités [c’est-à-dire le sens de la domination (istawlâ), le sens d’être élevé par le mérite (‘alâ routbatan) et vouloir (qasada)]. Et al-‘arch (trône) dans la langue arabe signifie le lit du roi, et le toit. »
Informations utiles :
– Chaykh Al-Islâm, le Qâdî (juge), le Hâfidh (spécialiste du Hadîth), le Moufassir (exégète), le Faqîh (spécialiste de la jurisprudence) Zakariyyâ Ibn Mouhammad Ibn Ahmad Al-Ansâri Al-Misri Al-Azhari Ach-Châfi’i est né en 824 et il est décédé en 926 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 500 ans. Il étudia auprès de très grands savants comme l’Imâm Al-Boulqîni, l’Imâm Ibn Hajar Al-‘Asqalâni… Et on compte de parmi ses élèves, le Chaykh Ibn Hajar Al-Haytami…
Le Chaykh Mourâd Youçoûf Al-Hanafi a dit de lui : « Le Chaykh, l’Imâm profitable […] le savant, Al-‘Allâmah (l’illustre savant), le modèle (qoudwah) […] le Faqîh (spécialiste de la jurisprudence), le Hâfidh (spécialiste de la science du hadîth), le mouhaddith, le moufassir (l’exégète), le waliyy, le vertueux […] le juge des juges (Qâdi l-Qoudâh) » [Fath-ou l l-Bârî fîma khtassa l-Lâh bihi ach-Chaykh Zakariyyâ Al-Ansâri]
Ibnou Iyyâs a dit à son sujet : « Chaykh Al-Islâm et des musulmans, le moufti, le reste des salafs, le soutien des khalafs » [Badâ-i’ou z-Zouhoûr]
Az-Zirikli a dit de lui : « Chaykh Al-Islâm, le Qâdî (juge), le moufassir (exégète), il est de parmi les houffâdh du hadîth» [Al-A’lâm]
– Ici, le Chaykh Zakariyyâ Al-Ansâri mentionne différent sens du terme istawâ dans la langue Arabe. Il conclu en disant :
Qu ‘il n’est pas permis d’attribuer à Allâh le sens de la position assise (jalassa), ni celui du redressement (i’tadala), ni celui de l’élévation par l’endroit (‘alâ makânan).
Qu’ il est permis d’attribuer à Allâh le sens de la domination (istawlâ), de l’élévation du mérite (‘alâ routbatan) et de vouloir (qasada).
– Il confirme bien que l’élévation (‘oulouww) qu’il est permis d’attribuer à Allâh, c’est l’élévation par le mérite et l’éminence et non l’élévation par l’endroit et la direction. De nombreux savants ont tenu des propos similaires :
L’Imâm du Salaf, Az-Zajjâj a dit : « Ce qui est visé par al-‘oulouww n’est pas l’élévation spatiale car Allâh ta’âlâ est exempt de l’emplacement et de l’endroit. Dans ce cas, al-‘oulouww ne veut dire que l’élévation du mérite et la supériorité de la souveraineté » [ Dans son livre Tafsîrou l-Asmâ-i l-Housnâ ]
Le Chaykh Abou n-Nasr Al-Qouchayri a dit : « Ainsi Ar-Rabb [c’est-à-dire Allâh] est attribué du ‘Oulouww (élévation) et de la Fawqiyyah (supériorité) par le mérite et l’éminence et Il est exempt d’être dans un endroit et d’être en face d’un corps» [Dans son livre At-Tadhkirah Ach-Charqiyyah]
L’Imâm Ar-Râzi a dit : « Il n’est pas possible que ce qui est visé par Al-‘Aliyy soit l’élévation (al-‘oulouww) par la direction et l’endroit puisque les preuves de la corruption de cette croyance ont été confirmées » [ Dans son Tafsîr ]
L’Imâm Al-Qourtoubi a dit : « Par Al-‘Aliyy, on vise ‘oulouwwou l-qadr wa l-manzilah (l’élévation par le mérite et l’éminence) et non pas ‘oulouwwou l-makân (l’élévation par l’endroit) car Allâh est exempt de la localisation » [ Dans son Tafsîr ]
L’Imâm Ibn Hajar Al-‘Asqalâni a dit : « Le fait que les deux directions du haut et du bas soient impossibles au sujet de Allâh n’implique pas qu’on ne Le qualifie pas par al-‘oulouww (l’élévation par le degré) car Son attribution par al-‘oulouww vient dans le sens figuré. Ce qui est impossible, c’est qu’il vienne dans le sens physique (c’est-à-dire l’élévation par l’endroit) » [ Dans son commentaire du Sahîh Al-Boukhâri ]
Le Moufassir Ath-Tha’âlibi a dit : « Il n’est pas possible que le terme « fawqa » [dans le verset : { وَهُوَ ٱلۡقَاهِرُ فَوۡقَ عِبَادِهِ } ] vienne dans le sens de la direction, mais il s’agit d’une élévation (‘oulouww) par la puissance et le mérite» [ Dans son Tafsîr ]
Le Moufassir Ath-Tha’âlibi a dit également : « “Al-‘Aliyy” : Il est voulu par cela l’élévation (‘oulouww) par le mérite et l’éminence, et non d’une élévation spatiale [par l’endroit], car Allâh soubhânahou wa ta’âlâ est exempt de la localisation » [ Dans son Tafsîr ]
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « Le verset { وَهُوَ ٱلۡقَاهِرُ فَوۡقَ عِبَادِهِ } (wa houwa l-Qâhirou fawqa ‘ibâdihi) c’est-à-dire que Allâh est Al-Qâdir (Celui qui est tout-puissant sur toutes choses) et Al-Ghâlib (Celui qui domine toutes choses). Et ce qui est voulu par « fawqa » est la supériorité (‘oulouww) en termes de puissance et de mérite, comme dans Sa parole { وَإِنَّا فَوْقَهُمْ قَاهِرُونَ} » [ Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân ]
Le Chaykh Moullâ ‘Ali Al-Qâri a dit : « Quant à Son ‘oulouww, ta’âlâ, par rapport à Ses créatures qui est tiré de ce qui est de l’ordre de la parole de Allâh ta’âlâ : {وَ هُوَ القَاهِرُ فَوْقَ عِبَادِهِ} (wa houwa l-Qâhirou fawqa ‘ibâdih) [soûrat Al-An’âm / 61], il s’agit d’un ‘oulouww (élévation) par le mérite et l’éminence et non pas d’une élévation par l’endroit, conformément à ce qui est décrété chez les gens de Ahlou s-Sounnah wa l-Jamâ’ah » [ Dans son commentaire du livre Al-Fiqh Al-Akbar ]
Le Chaykh Mouhammad Ibn ‘Oumar Nawawi Al-Jâwi a dit : « Al-‘Aliyy, c’est-à-dire Celui Qui a un mérite élevé » [Dans son livre Mirqâh Sou’oûdi t-Tasdîq]
Le Chaykh Yoûçouf Ad-Dajwi a dit : « Sache que les gens du Salaf déclarent que la supériorité spatiale (al-‘oulouww al-Makânî) est impossible à Son sujet (c’est-à-dire au sujet de Allâh) ta’âlâ, contrairement à certains ignorants qui débattent à tort et à travers à ce propos. » [ Dans son ouvrage Maqâlât wa Fatâwâ ]
Le Chaykh Yoûçouf Ad-Dajwi a dit aussi : « Al-A’lâ est un attribut du Seigneur. Ce qui en est visé c’est la supériorité (‘oulouww) par la domination et la manifestation de la puissance et non pas par l’endroit et la direction, qu’Il soit absolument exempté de tout cela » [ Dans son livre Maqâlât wa Fatâwâ ]
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
– De nombreux savants ont proposé l’interprétation (ta-wîl) du terme “istawâ” par la domination par la toute-puissance. Parmi eux :
Le Loughawi ‘Abdou l-Lâh Ibnou Yahyâ Ibnou l-Moubârak
L’Imâm Az-Zajjâj [ Dans son livre Ma’âni Al-Qour-ân ] et [ Rapporté par An-Naçafi ]
L’Imâm Aboû Mansoûr Al-Mâtourîdi
L’Imâm At-Tabarâni [ Dans son Tafsîr ]
L’Imâm Aboû Bakr Ahmad Ar-Râzi Al-Jassâs Al-Hanafi
L’Imâm Abou l-Layth As-Samarqandi
L’Imâm Ibnou Foûrak [ Dans son livre Mouchkilou l-Hadîth ]
L’Imâm Aboû Mansoûr Mouhammad Ibnou l-Haçan Ibnou Abî Ayyoûb Al-Ayyoûbi An-Nayçâboûri
L’Imâm ‘Abdou l-Lâh Al-Jouwayni [père de l’Imâm Al-Haramayn]
Le Moufassir Abou l-Haçan ‘Ali Ibn Mouhammad Al-Mâwardi
Le Moufassir Al-Wâhidi [ Rapporté par Ibn Rouch Al-Jadd ]
L’Imâm Abou Is-hâq Ach-Chîrâzi
Le Moufassir Ad-Damghâni Al-Hanafi
L’Imâm Al-Moutawalli [ Dans son livre Al-Ghounyah ]
L’Imâm Al-Haramayn Al-Jouwayni [ Dans son livre Louma’ al-Adillah ]
Le Loughawi Ar-Râghib Al-Asbahâni
L’Imâm Al-Ghazâli
L’Imâm An-Naçafi (508 H.)
L’Imâm Abou n-Nasr Al-Qouchayri
Le Qâdî Ibnou Rouchd Al-Jadd [ Rapporté par Ibnou l-Hâjj Al-Mâliki ]
Al-Allâmah Al-Lâmichi Al-Hanafi
Le Moufassir Ibnou ‘Atiyyah Al-Andalouçi
L’Imâm Fakhrou d-Dîn Ar-Râzi
Le Chaykh Ismâ’îl Ibnou Ibrâhîm Ach-Chaybâni Al-Hanafi
Le Chaykh Sayfou d-Dîn Al-Âmidi
Le Chaykh Ibnou l-Hâjib Al-Mâliki
L’Imâm Al-‘Îzz Ibnou ‘Abdi s-Salâm
L’Imâm Al-Qourtoubi
Le Chaykh Chihâbou d-Dîn Al-Qarâfi
Le Moufassir An-Naçafi [ Dans son Tafsîr ]
Le Moufassir Al-Baydâwi
Le Qâdî Badrou d-Dîn Ibnou l-Jamâ’ah
Le Qâdî ‘Abdou r-Rahmân Al-Îji
L’Imâm Taqiyyou d-Dîn As-Soubki
Le Chaykh Al-Yâfi’i
Le Qâdî Ibnou s-Sirâj Al-Hanafi
Le Qâdî Tâjou d-Dîn As-Soubki
Le Chaykh ‘Izzou d-Dîn Ibn Jamâ’ah [ Dans son livre Darajou l-Ma’âlî ]
Le Loughawi Fayroûzâbâdi [ Dans son livre Basâ-irou dhawi t-Tamyîz ]
L’Imâm As-Souyoûti
L’Imâm Al-Qastallâni
Chaykh Al-Islâm Zakariyyâ Al-Ansâri [voir ci-dessus]
Le Chaykh Moullâ ‘Ali Al-Qâri
Le Moufassir Ismâ’îl Haqqi Al-Hanafi
Le Hâfidh Mourtadâ Az-Zabîdi
Le Chaykh Mahmoûd As-Soubki Al-Azhari [ Dans son livre It-hâfou l-Kâ-inat ]
Le Chaykh Az-Zourqâni Al-Mâliki
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Hâfidh ‘Abdou l-Lâh Al-Harari [ Dans son livre As-Sirâtou l-Moustaqîm ]
et de nombreux autres savants.
– Retrouvez d’autres paroles de savants concernant l’istiwâ de Allâh : ici .', 'al misri, al qouchayriyya, al qouchayriyyah, al-istiwa’'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وللفظ (استوى) محامل: (جلس) و (اعتدل) و (استولى) و (علا) مكانا أو رتبة و (قصد)، كقوله تعالى: {ثُمَّ اسْتَوَى إِلَى السَّمَاءِ} [البقرة: 29]: قصد إلى فعل أمر فيها. فالأولان والرابع بمعنى علوِّ المكان محالات في حقه تعالى، بخلاف ما عداها! والعرش لغة سرير الملك والسقف');

-- source: https://islamsunnite.net/ibn-hajar-haytami-explique-textes-equivoque-istawa-wajh-yad/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Les versets et hadîth équivoques.', 'Ibn Hajar Al-Haytami', 'وبالجملة فيجب على كل مؤمن أن يعتقد من هذا الحديث ومشابهه من المشكلات الواردة في الكتاب والسنة كـ: {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} ، {وَيَبْقَى وَجْهُ رَبِّكَ} ،{يَدُ اللَّهِ فَوْقَ أَيْدِيهِمْ} , وغير ذلك مما شاكله أنه ليس المراد بها ظواهرها لاستحالتها عليه تبارك وتعالى عما يقول الظالمون والجاحدون علوًا كبيرًا، ثم هو بعد ذلك مخير إن شاء أولها بنحو ما ذكرناه وهي طريقة الخلف وآثروها لكثرة المبتدعة القائلين بالجهة والجسمية وغيرهما مما هو محال على الله تعالى وإن شاء فوض علمها إلى الله تعالى وهي طريقة السلف وآثروها لخلو زمانهم عما حدث من الضلالات الشنيعة والبدع القبيحة فلم يكن لهم حاجة إلى الخوض فيها', '« Dans l’ensemble, il est un devoir pour tout musulman, de croire au sujet de ce hadîth (il parle ici du hadîth du nouzoûl) et de ce qui est similaire de parmi ce qui est équivoque et qui est parvenue dans le Livre (Qour-ân) et la Sounnah, comme les versets « Ar-Rahmânou ‘ala l-‘Archi stawâ », « wa yabqâ wajhou rabbik », « yadou l-Lâhi fawqa aydîhim » et autres que ceux là de parmi les textes équivoques, que le sens voulu n’est pas le sens apparent, du fait de l’impossibilité de l’attribuer à Allâh, Qui est totalement exempt de ce que disent les injustes et les mécréants. Ensuite, la personne a le choix : si elle veut, elle interprète du même genre que ce que nous avons mentionné [il parle de l’interprétation qu’il a mentionné concernant le hadîth du nouzoûl, voir l’article à ce sujet : ici ] et il s’agit de la voie des gens du Khalaf (c’est-à-dire majoritairement), ils ont adopté cette position compte tenu de l’augmentation des mauvais innovateurs (moubtadi’ah) qui attribuaient à Allâh la direction et le corps et autres de parmi ce qui est impossible à l’égard de Allâh ta’âlâ. Ou alors, si la personne veut, elle laisse le sens (fawada) à Allâh ta’âlâ, et il s’agît de la voie des gens du Salaf (c’est-à-dire majoritairement), ils ont adopté cette position car il ne s’était pas répandu à leur époque des égarements et des innovations laides, ainsi ils n’avaient pas eu la nécessité de s’y engager (dans l’interprétation détaillée) »', '', 'Le Chaykh Ibnou Hajar Al-Haytami a dit, dans son livre « Al-Minhajou l-Qawîm » (pages 253 et 254 de cette édition) :
[Puis il mentionne que Aboû Hanîfah, Mâlik, Ach-Châfi’i et Ahmad déclaraient mécréant ceux qui croient que Allâh serait dans une direction ou qu’Il serait un corps ( voir l’article : ici ) ]
Informations utiles :
– Le Chaykh Chihâbou d-Dîn Ahmad Ibnou Mouhammad Ibnou Hajar Al-Haytami Al-Makki est né en 907 en Egypte et il est décédé en 974 de l’Hégire à La Mecque (رحمه الله) c’est-à-dire il y a environ 460 ans. Il était un savant dans l’école de jurisprudence (madh-hab) Chafi’ite. On peut citer de parmi ses chouyoûkh : Chaykh Al-Islâm Zakariyyâ Al-Ansâri, le Chaykh Chihâbou d-Dîn Ar-Ramli et bien d’autres…
– Ici il explique les deux méthodologies correctes face aux textes équivoques :
La première : croire en ce qui est révélé dans les Textes sans rentrer dans les détails du sens, tout en exemptant Allâh de toutes ressemblances et caractéristiques des créatures (c’est ce qu’on appelle tafwîd ou encore interprétation globale -ta-wîl ijmâliyy-). Voici quelques exemples :
L’Imâm Aboû Hanîfah concernant l’Istiwâ [ Dans son livre Al-Wasiyyah ]
L’Imâm Aboû Hanîfah concernant le Yad [ Dans son livre Al Fiqh al Akbar ]
L’Imâm Mâlik concernant l’Istiwâ [ Rapporté par Al-Bayhaqi ] et [ Rapporté par Al-Qayrawâni ] et [ Rapporté par Al-’Azzâmi ] et [ Rapporté par Al-Qourtoubi ] et [ Rapporté par Ibn Kathîr ]
L’Imâm Ibn Hibbân concernant le hadîth du Nouzoûl [ Dans son Sahîh ]
La seconde : Interpréter selon un sens digne d’être attribué à Allâh et valable dans la langue (c’est ce qu’on appelle l’interprétation détaillée – ta-wîl tafsîliyy -). Voici quelques exemples :
L’Imâm Ibn ‘Abbâs concernant le Sâq [ Rapporté par At-Tabari ] et [ Rapporté par Al-Bayhaqi ]
L’Imâm Al-Boukhâri concernant le Wajh [ Dans son Sahîh ]
L’Imâm Ahmad concernant le verset : “wa jâ-a rabbouka” [ Rapporté par Al-Bayhaqi ] et [ Rapporté par As-Sa’di ] et [ Rapporté par Al-Hisni ]
L’Imâm At-Tabarâni concernant l’Istiwâ [ Dans son Tafsîr ]
Ces deux voies qui sont toutes les deux correctes ont en commun de ne pas prendre le sens apparent . Remarquons que les savants du Salaf, bien qu’ils utilisaient majoritairement l’interprétation globale, ils avaient quelque fois recours à l’interprétation détaillée également, comme cela apparaît dans les exemples ci-dessus.
– De nombreux savants ont mentionné les deux méthodologies valables concernant les versets équivoques (moutachâbih), parmi eux :
L’Imâm Ibnou l-Jawzi [ Dans son livre Daf’ou Choubahi t-Tachbîh ]
L’Imâm Al-Qourtoubi [ Dans son Tafsîr ] et [ Dans son livre At-Tidhkâr ]
L’Imâm An-Nawawi [ Dans son Charh Sahîh Mouslim ] et [ Dans son commentaire du Sahîh de Mouslim ]
Le Chaykh Ibnou Jouzay
L’Imâm Ibnou Hajar Al-‘Asqalâni [ Dans son livre Fath Al-Bârî ]
Le Chaykh Ibnou Hajar Al-Haytami [voir ci-dessus]
Le Mouhaddith ‘Abdou l-Lâh Al-Harari [ Dans son livre As-Sirâtou l-Moustaqîm ]
Et autres qu’eux…
– Le Chaykh Ibnou Hajar Al-Haytami mentionne trois exemples de Textes équivoques :
Le verset {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} « Ar-Rahmânou ‘ala l-‘Archi stawâ » [Soûrat Taha/5]. Ainsi il n’est pas permis de croire que ce verset signifierait que Allâh serait assis ou établi sur le trône, ni que le trône serait un endroit pour Allâh. [ Retrouvez d’autres articles à ce sujet : ici ]
Le verset {وَيَبْقَى وَجْهُ رَبِّكَ} « wa yabqâ wajhou rabbik » [Soûrat Ar-Rahmân/27]. Il n’est donc pas permis de prendre le terme « wajh » dans ce verset au sens apparent, qui est le sens de la partie corporelles, c’est-à-dire de la face ou du visage [ Retrouvez d’autres article à ce sujet : ici ]
Le verset {يَدُ اللَّهِ فَوْقَ أَيْدِيهِمْ} « yadou l-Lâhi fawqa aydîhim » [Soûrat Al-Fat-h/10]. Ainsi il n’est pas permis de croire que le terme « yad » aurait ici le sens du membre, c’est-à-dire de la main. [ Retrouvez d’autres article à ce sujet : ici ]
– L’Imâm Ibnou l-Jawzi a d’ailleurs répliqué à ceux qui prétendent que les savants du Salaf n’ont pas réalisé d’interprétations [ Dans son livre Al-Majâlis ].
– Le Chaykh Ibnou Hajar Al-Haytami qualifie de « moubtadi’ah » (mauvais innovateurs) ceux qui attribuent à Allâh le corps et la direction, ainsi que tout ce qui n’est pas permis de Lui attribuer. Après cela il dit : « Sache que Al-Qarâfi et d’autres ont rapporté de Ach-Châfi’i, de Mâlik, de Ahmad [Ibn Hanbal] et de Aboû Hanîfah, que Allâh les agrée, que ceux qui disent [à propos de Allâh] qu’Il est dans une direction ou qu’Il est un corps ont commis de la mécréance, et ils [ces savants] ont raison en cela ». [ Al-Minhajou l-Qawîm ]
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
L’Imâm Al-Ghazâli qui rapporte également l’unanimité [ Dans son livre Iljâmou l-‘awâm ]
L’Imâm Fakhrou d-Dîn Ar-Râzi [ Dans son livre Ousoûl Ad-Dîn ]
L’Imâm An-Nawawi (676 H.) [Dans son livre Al-Majmoû’]
L’Imâm Al-Mawsili [ Dans son livre Al-Ikhtiyâr ]
L’Imâm Ibnou Abî Jamrah (699 H.) [Dans son livre Bahjah An-Noufoûs]
L’Imâm An-Naçafi (710 H.) [ Dans son tafsîr ]
L’Imâm Safiyyou d-Dîn Al-Hindi (715 H.) qui mentionne l’unanimité [Dans son livre Nihâyatou l-Wousoûl]
Le Chaykh Ibnou Amîr Al-Hajj Al-Hanafi (733 H.)
Le Chaykh Mahmôud Al-Qoûnawi Al-Hanafi (771 H.)
L’Imâm Taqiyyou d-Dîn Al-Hisni (829 H.) [Dans son livre Kifâyatou l-Akhyâr]
Le Chaykh ‘Alâ-ou d-Dîn Al-Boukhâri qui mentionne l’unanimité [ Dans son livre Mouljimatou l-Moujassimah ]
L’Imâm As-Souyoûti [ Dans son livre al-Achbâh wa n-Nadhâ-ir ]
Le Chaykh Ibn Hajar Al-Haytami [ Dans son livre Al-Minhajou l-Qawîm ]
Le Chaykh Al-Mounâwi [ Dans son livre Faydou l-Qadîr ]
Le Chaykh Mouhammad Mayyârah (1072 H.)
Le Chaykh Ibn Balbân [Dans son livre Moukhtasar Al-Ifâdât] et [ Rapporté par Al-Qaddoûmi ]
L’Imâm Al-Bayâdi (1098 H.)
L’Imâm Abdou l-Ghani An-Nâboulouçi [ Dans son livre Al-Fathou r-Rabbâni ]
Le Chaykh ‘Abdou l-Lâh Ibn Houçayn Al-‘Alawi (1272 H.) [Dans son livre Soullamou t-Tawfîq]
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ Dans son livre Minhou l-Jalîl ]
Le Chaykh Salîm Al-Bichri Al-Azhari (1335 H.) [Rapporté par Al-‘Azzâmi]
Le Chaykh Al-Marighni Az-Zaytoûni qui mentionne l’unanimité [ Dans son livre Tâli’ou l-Bouchrâ ]
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Chaykh Mehmed Zâhid Kotku [Dans son livre Ehl-i Sünnet Akaidi]
Le Mouhaddith Mouhammad Yâçîn Al-Fâdâni (1410 H.) qui mentionne l’unanimité [Dans son livre Boughyah Al-Mouchtâq]
Le Mouhaddith Al-Harari (1429 H.) [Dans son livre Boughyah At-Tâlib]
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
Le Chaykh Mehmed Zâhid Kotku [Dans son livre Ehl-i Sünnet Akaidi]
Le Mouhaddith Al-Harari (1439 H.) [Dans son livre As-Sirât Al-Moustaqîm]
Et beaucoup d’autres…', '4 écoles, al azhar, al haytami, al-azhar'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وبالجملة فيجب على كل مؤمن أن يعتقد من هذا الحديث ومشابهه من المشكلات الواردة في الكتاب والسنة كـ: {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} ، {وَيَبْقَى وَجْهُ رَبِّكَ} ،{يَدُ اللَّهِ فَوْقَ أَيْدِيهِمْ} , وغير ذلك مما شاكله أنه ليس المراد بها ظواهرها لاستحالتها عليه تبارك وتعالى عما يقول الظالمون والجاحدون علوًا كبيرًا، ثم هو بعد ذلك مخير إن شاء أولها بنحو ما ذكرناه وهي طريقة الخلف وآثروها لكثرة المبتدعة القائلين بالجهة والجسمية وغيرهما مما هو محال على الله تعالى وإن شاء فوض علمها إلى الله تعالى وهي طريقة السلف وآثروها لخلو زمانهم عما حدث من الضلالات الشنيعة والبدع القبيحة فلم يكن لهم حاجة إلى الخوض فيها');

-- source: https://islamsunnite.net/oumar-ibnou-l-khattab-tawassoul-al-abbas/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le tawassoul est permis et pratiqué par les compagnons.', '''Oumar Ibn Al-khattab', 'أن عمر بن الخطاب رضي الله عنه كان إذا قحطوا استسقى بالعباس بن عبد المطلب فقال اللهم إنا كنا نتوسل إليك بنبينا فتسقينا وإنا نتوسل إليك بعم نبينا فاسقنا قال فيسقون', '« Lors des périodes de sécheresses, ‘Oumar Ibnou l-Khattâb (رضي الله عنه) réalisait la demande de pluie (istisqâ) par le biais de Al-‘Abbâs Ibnou ‘Abdi l-Mouttalib. Il disait : Ô Allâh nous réalisions le tawassoul à toi par notre Prophète et tu nous accordais la pluie, et nous réalisons le tawassoul par le biais de l’oncle de notre Prophète, alors accorde nous la pluie. Et il a dit [c’est-à-dire Anas Ibnou Mâlik] : « la pluie leur a été accordé ».', '', 'Dans son célèbre recueil de hadîth, l’Imâm Al-Boukhâri rapporte d’après le compagnon Anas Ibnou Mâlik qu’il a dit :
Informations utiles :
– L’Imâm, le Chaykh des Mouhaddith Aboû ‘Abdi l-Lâh Mouhammad Ibnou Ismâ’îl Al-Boukhâri, l’auteur du célèbre « Sahîh » connu comme étant le livre le plus authentique après le Qour-ân, est né en 194 et il est décédé en 256 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1175 ans. Il est une référence incontournable dans la science du hadîth. Consultez sa biographie : ici .
– L’Illustre Compagnon, Amîr al-Mou-minîn, Aboû Hafs, ‘Oumar Ibnou l-Khattâb est décédé en 23 de l’hégire (رضي الله عنه) c’est-à-dire il y a environ 1410 ans. Le prophète (صلى الله عليه وسلم) a fait son éloge en de nombreuses occasions. Il l’a surnommé Al-Fâroûk (c’est-à-dire celui qui discerne le vrai du faux). Il a dit a son sujet (ce qui a pour sens) : « Allâh a fait que la vérité sorte de la bouche de ‘Oumar et qu’elle soit dans son cœur. » et il a dit également (ce qui a pour sens) : « Si il y avait un prophète après moi, se serai ‘Oumar » . ‘Oumar fait également parti des compagnons à qui le Prophète (صلى الله عليه وسلم) a annoncé qu’ils auraient le Paradis.
– Ici, il est rapporté par l’Imâm Al-Boukhâri avec sa chaîne de transmission sahîh (authentique) que le Calife ‘Oumar Ibnou l-Khattâb (رضي الله عنه) a réalisé le tawassoul par Al-‘Abbâs (رضي الله عنه), l’oncle paternel du prophète (صلى الله عليه وسلم).
– Il y a dans ce hadîth une réplique suffisante à ceux qui renie le tawassoul dans l’absolu, par le biais d’un vivant ou d’un mort, et à ceux qui prétendent qu’il ne serait permis de réaliser le tawassoul que par le biais du prophète (صلى الله عليه وسلم).
– Le Hâfidh Ibnou Hajar Al-‘Asqalâni a dit dans le commentaire de ce hadîth : « On tire comme profit de cette histoire avec Al-‘Abbâs, le caractère recommandé (moustahabb) de la demande d’intercession (istichfâ’) par les gens de bien, par les vertueux et par les proches parents musulmans du prophète (ahlou l-Bayt)» [Dans son commentaire du Sahîh Al-Boukhâri : Fat-hou l-Bârî]
– Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « ‘Oumar Ibnou l-Khattâb (رضي الله عنه) durant la période de son Califat, a réalisé la demande de pluie (istisqâ) par le biais de Al-‘Abbâs Ibnou ‘Abdi l-Mouttalib, lorsque s’était intensifié la famine durant l’année de la secheresse, et ils ont obtenu la pluie […] il y a clairement dans cela la pratique du tawassoul, et ceci invalide la parole de ceux qui interdisent le tawassoul dans l’absolu, que le tawassoul ait lieu par un vivant ou par un mort, ainsi que la parole de ceux qui interdisent le tawassoul par tout autre que le prophète (صلى الله عليه وسلم) » [Dans son livre Ad-Dourarou s-Saniyyah fî Raddi ‘ala l-Wahhâbiyyah]
– Cet acte du Calife ‘Oumar Ibnou l-Khattâb nous montre la mauvaise compréhension de ceux qui interdisent la pratique du tawassoul en se basant sur le hadîth :', '''oumar ibnou l-khattâb, ahlou s-sounnah, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'أن عمر بن الخطاب رضي الله عنه كان إذا قحطوا استسقى بالعباس بن عبد المطلب فقال اللهم إنا كنا نتوسل إليك بنبينا فتسقينا وإنا نتوسل إليك بعم نبينا فاسقنا قال فيسقون');

-- source: https://islamsunnite.net/oumar-ibnou-l-khattab-tawassoul-al-abbas/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le tawassoul est permis et pratiqué par les compagnons.', '''Oumar Ibn Al-khattab', 'إذا سَأَلْتَ فَاسْألِ اللهَ وَ إذا اسْتَعَنْتَ فَاسْتَعِنْ بِاللهِ', '', '', '[qui a pour sens : ] « Si tu demandes alors demande à Allâh et si tu recherches l’aide alors recherche là par Allâh » . En effet, ni ‘Oumar, ni aucun autre compagnon n’a compris de ce hadîth qu’il ne serait pas permis de demander ou de rechercher de l’aide à autre que Allâh ni de pratiquer le tawassoul. En effet, aucun compagnon n’a blâmé ‘Oumar pour sa pratique du tawassoul, et aucun d’entre eux ne lui a répliqué par ce hadîth.
– Le Mouhaddith Al-Harari a dit : « Le sens du hadîth, c’est que Celui à qui tu demandes en priorité c’est Allâh. Parce que Allâh ta’âlâ est le Créateur du bien et du mal, c’est le Créateur des profits et des nuisances. Et ce hadîth ressemble du point de vue du sens au hadîth du Sahîh de Ibnou Hibbân dans lequel le Prophète (صلى الله عليه وسلم) a dit :', '''oumar ibnou l-khattâb, ahlou s-sounnah, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'إذا سَأَلْتَ فَاسْألِ اللهَ وَ إذا اسْتَعَنْتَ فَاسْتَعِنْ بِاللهِ');

-- source: https://islamsunnite.net/oumar-ibnou-l-khattab-tawassoul-al-abbas/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le tawassoul est permis et pratiqué par les compagnons.', '''Oumar Ibn Al-khattab', 'لا تُصَاحِبْ إلّا مُؤمِناً وَ لا تَأكُل طَعَامَكَ إلّا تَقِي', '', '', '[qui a pour sens] : « Ne tiens la compagnie que d’un croyant et ne mange de ta nourriture qu’un pieux ».
Là encore, le hadîth signifie seulement que celui qui te tiens compagnie ou à qui tu tiens compagnie, en priorité c’est le musulman. De même celui qui est prioritaire pour que tu lui donnes de ta nourriture, c’est le musulman pieux. Ainsi, le Prophète (صلى الله عليه وسلم) n’a pas visé dans ce hadîth qu’il ne serait pas permis d’avoir la compagnie d’un non musulman, mais ce que le Prophète (صلى الله عليه وسلم) a visé c’est que celui qui est prioritaire dans la compagnie est le croyant. Et de même dans la deuxième partie du hadîth [qui a pour sens] : « et ne donne à manger qu’à un pieux », le Prophète (صلى الله عليه وسلم) a voulu par cela, que celui qui est prioritaire pour que tu lui donnes à manger c’est le pieux. Donc le hadîth :', '''oumar ibnou l-khattâb, ahlou s-sounnah, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'لا تُصَاحِبْ إلّا مُؤمِناً وَ لا تَأكُل طَعَامَكَ إلّا تَقِي');

-- source: https://islamsunnite.net/oumar-ibnou-l-khattab-tawassoul-al-abbas/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le tawassoul est permis et pratiqué par les compagnons.', '''Oumar Ibn Al-khattab', 'وَيُطۡعِمُونَ ٱلطَّعَامَ عَلَىٰ حُبِّهِۦ مِسۡكِينً۬ا وَيَتِيمً۬ا وَأَسِيرًا', '', '', '[Soûrat Al-Insân / 8] ce qui signifie : « Ils donnent à manger la nourriture qu’ils aiment au pauvre, à l’orphelin et au captif». Le captif ici désigne le captif non musulman. Il a par ailleurs été rapporté dans les Sahîh de Mouslim et de Al-Boukhâri que trois personnes ont demandé à Allâh par leurs bons actes.» fin de citation du livre ‘Aqîdatou l-Mouslimîn.
– Point important : Le tawassoul de ‘Oumar Ibnou l-Khattâb par le biais de Al-‘Abbâs n’est pas une preuve qu’il serait interdit de faire le tawassoul par le prophète après son décès. En effet, il est parvenu dans le hadîth de ‘Outhmân Ibnou Hounayf [ Rapporté par At-Tabarâni ] et le hadîth de Bilâl Ibnou l-Harîth Al-Mouzani au temps du Califat de ‘Oumar [ Rapporté par Ibn Kathîr ] et [ Rapporté par Al-Hisni ] et [ Rapporté par Adh-Dhahabi ] et [ Rapporté dans le livre ‘aqîdatou l-Mouslimîn approuvé par Al-Azhar ] qui sont tout deux authentiques (sahîh), que les compagnons pratiquaient le tawassoul par le prophète, même après son décès. Mais ‘Oumar n’a fait cela que pour tenir compte de l’honneur de la parenté de Al-‘Abbâs avec le prophète (صلى الله عليه وسلم). La preuve en est la parole de Al-‘Abbâs lorsque ‘Oumar l’a fait avancer : « Ô Allâh, les gens se sont adressés à Toi par moi, pour ma parenté avec Ton prophète » ceci ayant été rapporté par Az-Zoubayr Ibnou Bakkâr tout comme l’a dit le Hâfidh Ibnou Hajar dans Fat-hou l-Bârî. De plus, le Hâfidh Al-Hâkim a rapporté que ‘Oumar a dit lors d’un discours : « Ô gens, certes le Messager de Allâh considérait Al-‘Abbâs comme un fils considère son père. Alors prenez exemple sur lui en son oncle Al-‘Abbâs et prenez-le pour cause ( waçîlah ) dans vos demandes à Allâh » [Al-Moustadrak]. De plus, le simple fait de délaisser une chose n’implique pas que cette chose soit illicite.
– Le tawassoul est le fait de demander à Allâh l’obtention d’un profit ou l’empêchement d’une nuisance et ce, par la mention du nom d’un prophète ou d’un saint, par honneur pour celui par lequel le tawassoul est fait. Faire le tawassoul est permis en leur présence et en leur absence tout comme l’indique les preuves selon la Loi de l’Islâm. Le tawassoul ne constitue donc pas une adoration pour autre que Allâh.
– Le prophète (صلى الله عليه وسلم) enseigna lui-même le tawassoul aux compagnons et les compagnons le pratiquaient également après son décès (صلى الله عليه وسلم). [ Rapporté par At-Tabarâni ]
– Ainsi, le tawassoul est une pratique qui est permise selon l’unanimité des musulmans comme le rapporte l’Imâm Taqiyyou d-Dîn As-Soubki [ Dans son livre Chifâ-ou s-Saqâm ]
– L’adoration (al-‘Ibâdah) : c’est l’extrême limite de la crainte et de la soumission, comme l’a mentionné l’Imâm Moujtahid, le Hâfidh (spécialiste du Hadîth), le Loughawi (spécialiste de la langue Arabe) Taqiyyou d-Dîn As-Soubki.
Ainsi le simple fait d’appeler (nidâ) un vivant ou un mort ne constitue pas une adoration d’autre que Allâh, ni le simple fait de glorifier (ta’dhîm) ou de faire al-istighâthah (la recherche du renfort) par autre que Allâh. De même, le simple fait de visiter la tombe d’un saint pour le tabarrouk (la recherche des bénédictions) ne constitue pas une adoration d’autre que Allâh. De même, le simple fait de demander ce qu’il n’est pas habituel de demander aux gens ne constitue pas une adoration d’autre que Allâh. De même, la formule de al-isti’ânah (demande d’aide) à autre que Allâh ta’âlâ ne constitue pas une adoration d’autre que Allâh. Egalement, la simple humilité n’est pas une adoration envers autre que Allâh car sinon, tous ceux qui font preuve d’humilité avec les rois et les nobles seraient devenus mécréants.
C’est-à-dire que tout cela n’est pas du chirk (le fait d’attribuer des associés à Allâh), car la définition de l’adoration (al-‘ibâdah) selon les spécialistes de la langue ne s’applique pas à tout cela. En effet, pour eux, l’adoration (al-‘ibâdah) comme nous venons de le voir est l’obéissance avec la soumission. Voir à ce sujet l’explication de l’Imâm du Salaf, le Loughawi (spécialiste de la langue Arabe) Aboû Is-hâq Ibrâhîm Az-Zajjâj : ici .
– Retrouvez d’autres articles au sujet du tawassoul et du tabarrouk : ici .', '''oumar ibnou l-khattâb, ahlou s-sounnah, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وَيُطۡعِمُونَ ٱلطَّعَامَ عَلَىٰ حُبِّهِۦ مِسۡكِينً۬ا وَيَتِيمً۬ا وَأَسِيرًا');

-- source: https://islamsunnite.net/moufti-de-la-mecque-chaykh-ibn-zayni-dahlan-unanimite-recommandation-visite-tombe-prophete/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La visite de la tombe du prophète.', 'Unanimité', 'اعلم رحمك الله أن زيارة قبر نبينا صلى الله عليه وسلم مشروعة مطلوبة بالكتاب والسنة وإجماع الأمة', 'Sache, que Allâh te fasse miséricorde, que la visite de la tombe de notre Prophète (صلى الله عليه وسلم) est permise et requise par le Livre [le Qour-ân], la Sounnah, et l’unanimité (ijmâ’) de la Oummah', '', 'Dans son livre « Ad-Dourarou s-Saniyyah fî Raddi ‘ala l-Wahhâbiyyah », le Moufti de La Mecque, le Chaykh Ahmad Ibn Zayni Dahlân a dit :
Informations utiles :
– Le Moufti de La Mecque, Le Chaykh Ahmad Ibn Zaynî Dahlân Al-Makki est né en 1231 et il est décédé en 1304 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 130 ans. Il était spécialiste de la Charî’ah, de la grammaire et de l’histoire ainsi que d’autres domaines. Il a apporté sa contribution à de nombreuses sciences. Il était le Moufti des maîtres Châfi’i à la ville Sainte de la Mecque, il était surnommé Chaykhou l-Islâm. Il est l’auteur du livre « Ad-Dourarou s-Saniyyah fî Raddi ‘ala l-Wahhâbiyyah » ainsi que du livre « Al-Foutoûhâtou l-Islâmiyyah » (Les conquêtes islamiques) dans lequel se trouve le fameux chapitre de mise en garde contre la secte wahhabite qu’il a intitulé « Fitnatou l-Wahhâbiyyah » (La discorde des Wahhabites). Consultez sa biographie : ici .
– Ici il rapporte l’unanimité sur le fait que la visite de la tombe du Prophète (صلى الله عليه وسلم) est un acte fortement recommandé.
– Cette unanimité a été mentionnée par de nombreux autres savants. Parmi eux :
Al-Qâdî ‘Iyâd Al-Mâliki a dit : « La visite de la tombe du Prophète (صلى الله عليه وسلم) est une sounnah qui fait l’unanimité des musulmans et une vertu vivement recommandée, comme le rapporte Ibnou ‘Oumar (رضي الله عنه). » [ Dans son livre Ach-Chifâ ]
Le Chaykh Ibnou l-Hâjj Al-Mâliki a dit: « Abou Houbayrah [Al-Hambali] a dit dans son livre concernant l’unanimité des imams : Mâlik, Ach-Châfi’i, Aboû Hanîfah et Ahmad Ibnou Hambal, que Allâh ta’âlâ leur fasse miséricorde, ont été en accord que la visite du prophète (صلى الله عليه وسلم) est recommandé (moustahabb)» [Dans son livre Al-Madkhal].
L’Imâm Taqiyyou d-Dîn As-Soubki a également rapporté l’unanimité dans son livre Chifâ-ou s-Saqâm.
Le Chaykh Taqiyyou d-Dîn Al-Hisni a dit au sujet de la visite de la tombe du prophète : « Il s’agit d’ une des sounnah des envoyés par unanimité chez les croyants en l’unicité (mouwahhidîn), personne n’y porterait atteinte sauf quelqu’un dont le cœur contient la maladie des hypocrites » [Dans son livre Daf’ou choubahi man chabaha wa tamarrad].
Le Chaykh Moullâ ‘Ali Al-Qârî Al-Hanafi a dit : « Le voyage pour visiter la tombe du prophète (صلى الله عليه وسلم) fait partie de ce sur quoi les savants ont été unanimes sur son caractère recommandé (moustahabb) » [Dans son livre Charh Ach-Chifâ]
Le Chaykh Mayyârah Al-Mâliki a dit : « Sa visite (du prophète) est une sounnah qui fait l’objet de l’unanimité » [Dans son livre Ad-Dourrou th-Thamîn wa l-Mawridou l-Ma’în]
Le Chaykh Ibnou ‘Âbidîn Al-Hanafi rapporte également l’unanimité dans son livre Raddou l-Mouhtâri ‘ala d-Dourri l-Moukhtâr.
Le Mouhaddith ‘Abdou l-Lâh Al-Harari a dit : « Il est recommandé de visiter la tombe du Messager (صلى الله عليه وسلم) par l’unanimité, c’est-à-dire selon l’unanimité des Imams de l’ijtihâd, les quatre et les autres ; aussi bien pour celui qui habite à Médine que pour les habitants des différents horizons qui ont, par leur voyage, l’objectif de visiter sa tombe honorée. Il s’agit-là d’un des actes les plus éminents qui rapprochent de l’agrément de Allâh.» [Dans son livre Boughyah At-Tâlib]
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah]
– Parmi les preuves du caractère recommandé de la visite de la tombe du prophète, il y a le hadîth sahîh (authentique) :', '3oulama, ad-dourarou s-saniyyah, ahlou s-sounnah, ahmad ibn zayni dahlan'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'اعلم رحمك الله أن زيارة قبر نبينا صلى الله عليه وسلم مشروعة مطلوبة بالكتاب والسنة وإجماع الأمة');

-- source: https://islamsunnite.net/imam-jouwayni-interpretation-istiwa-istawa-allah-trone-domination-puissance/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas établi sur le trône.', 'Les Chafi''ites', '« فإن سئلنا عن قوله تعالى :{الرحمن على العرش استوى} قلنا : المراد بـ «الاستواء» القهر والغلبة والعلو. ومنه قول العرب : استوى فلان على المملكة أي استعلى عليها واطردت له. ومنه قول الشاعر : قد استوى بشر على العراق … من غير سيف ودم مهراق »', '« Si on nous interroge sur la parole de Allâh ta’âlâ : {الرحمن على العرش استوى} [Ar-Rahmân ‘ala l-‘archi stawâ], nous disons : Ce qui est voulu par l’istiwâ c’est la domination par la toute-puissance (al-qahr wa l-ghalabah) et l’élévation [du mérite]. Dans le même sens les Arabes disent de quelqu’un qu’il s’est «istawâ» sur un royaume, quand il domine sur lui et que le royaume lui est soumis. Et à ce sujet la parole du poète : « Bichr a dominé (istawâ) l’Irak assurément … sans tirer d’épée et sans faire couler de sang ».»', '', 'Dans son livre «Louma’ al-Adillah» (page 108 de cette édition), Imâm Al-Haramayn Al-Jouwayni a dit :
Informations utiles :
– Imâm Al-Haramayn (des deux Haram) Abou l-Ma’âli ‘Abdou l-Malik Ibnou ‘Abdi l-Lâh Al-Jouwayni, est né en 419 et il est décédé en 478 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 950 ans. C’est un grand savant reconnu par toute la communauté musulmane. Il était surnommé « Imâm al-Haramayn » c’est-à-dire l’Imâm des deux enceintes sacrées de La Mecque et Médine. Il était du madh-hab (Ecole de jurisprudence) de l’Imâm Ach-Châfi’i et il fût l’un des chouyoûkh de l’Imâm Aboû Hâmid Al-Ghazâli (رحمه الله).
Le Chaykh Aboû Is-hâq Ach-Chîrâzi a fait son éloge en lui disant : « Oh toi qui est profitable aux gens d’orient et d’occident, certes les premiers comme les derniers ont profité de ta science ». Il lui a dit également : « Tu es en ce jour, l’Imâm des Imâms » [Dhayl Târîkh Baghdâd]
‘Abdou l-Ghaffâr Al-Fâriçi a dit de lui : « Imâm Al-Haramayn (des deux Haram), la fierté de l’Islâm, l’Imâm de la Oummah dans l’absolue, le docte dans la charî’ah, celui qui a réunis le statut d’Imâm en orient et en occident » [Al-Mountakhab]
Le Hâfidh Ibn Najjâr Al-Baghdâdi a dit à son sujet : « Il est un Faqîh (spécialiste de la jurisprudence) Chafi’ite, il est surnommé Imâm Al-Haramayn […] il est l’Imâm des fouqahâ (spécialistes de la jurisprudence) d’orient et d’occident […] il est parvenu au degré de l’ijtihâd» [Dhayl Târîkh Baghdâd]
‘Abdou l-Lâh Ibn Yoûçouf Al-Jarjâni a dit : « Abou l-Ma’âli Al-Jouwayni est l’Imâm de son temps » [Dhayl Târîkh Baghdâd]
– Ici, l’Imâm Al-Jouwayni explique l’istiwâ de Allâh sur le trône en disant que cela signifie que Allâh domine le trône par sa toute puissance. Il confirme que dans la langue Arabe, le terme «istawâ» peut venir dans le sens de la domination, et il cite pour cela le célèbre vers de poésie au sujet de Bichr.
– Dans son livre Al-Irchâd, l’Imâm Al-Jouwayni confirme également que l’istiwâ de Allâh vient dans le sens de la domination par la toute-puissance, puis il précise qu’il ne vient absolument pas dans le sens de l’établissement (istiqrâr).
– Le Moufassir Ath-Tha’âlibi mentionne également la position de l’Imâm Al-Jouwayni en disant : « Sa parole soubhânah : « { ثُمَّ ٱسۡتَوَىٰ عَلَى ٱلۡعَرۡشِ } (thoumma stawâ ’ala l-’arch) » signifie d’après Abou l-Ma’âli [Al-Jouwayni] et d’autres que lui de parmi les spécialistes de la Croyance (moutakallimîn) : la royauté et la souveraineté. Et le fait que le trône soit mentionné spécifiquement est en raison de son honneur, car il est la plus grande des créatures » [ Dans son Tafsîr ]
– Voici d’autres citations de l’Imâm Al-Jouwayni, indiquant que Allâh n’est pas dans un endroit, ni une direction et qu’Il n’est pas concerné par la notion de distance.
L’Imâm Al-Jouwayni a dit : « Al-Bârî (Le Créateur : c’est-à-dire Allâh) soubhânahou wa ta’âlâ n’a pas besoin d’autrui, Il est exempt d’avoir besoin d’un endroit où S’incarner , ou d’un endroit qui Le porte » . [ Dans son livre Al-Irchâd ]
L’Imâm Al-Jouwayni a dit également : « La voie de tous les gens de la vérité sans exception c’est que Allâh soubhânahou wa ta’âlâ est exempt de la localisation et de la spécification par les directions » [ Dans son livre Al-Irchâd ]
L’Imâm Al-Jouwayni a dit aussi : « Sachez que la voie des gens de la vérité : c’est [de croire] que Allâh (Ar-Rabb) soubhânah est exempt d’occuper un espace, et Il est exempt d’être spécifié par la direction » [ Dans son livre Ach-Châmil fî Ousoûli d-Dîn ]
L’Imâm Al-Jouwayni a dit aussi : « Certes [le prophète] Mouhammad (صلى الله عليه وسلم), lors de la nuit de al-Isrâ (c’est-à-dire lors du voyage nocturne et de l’ascension), n’a pas été plus proche [physiquement] de Allâh ‘azza wa jall que [le prophète] Yoûnous Ibnou Matâ lorsqu’il était dans le ventre de la baleine » [ Rapporté par Al-Qourtoubi ]
De plus l’Imâm Al-Jouwayni a dit : « Attribuer la direction à Allâh est de la mécréance manifeste » [ Rapporté par ‘Alâ-ou d-Dîn Al-Boukhâri ]
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
Il n’est donc pas permis de traduire le verset {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} (Ar-Rahmânou ‘ala l-’archi stawâ) et ceux qui sont similaires par le fait que Allâh serait établi sur le trône car cette explication est contraire au tawhîd (l’unicité de Allâh).
– De nombreux savants ont proposé l’interprétation (ta-wîl) du terme “istawâ” par la domination par la toute-puissance. Parmi eux :
Le Loughawi ‘Abdou l-Lâh Ibnou Yahyâ Ibnou l-Moubârak
L’Imâm Az-Zajjâj [ Dans son livre Ma’âni Al-Qour-ân ] et [ Rapporté par An-Naçafi ]
L’Imâm Aboû Mansoûr Al-Mâtourîdi
L’Imâm At-Tabarâni [ Dans son Tafsîr ]
L’Imâm Aboû Bakr Ahmad Ar-Râzi Al-Jassâs Al-Hanafi
L’Imâm Abou l-Layth As-Samarqandi
L’Imâm Ibnou Foûrak [ Dans son livre Mouchkilou l-Hadîth ]
L’Imâm Aboû Mansoûr Mouhammad Ibnou l-Haçan Ibnou Abî Ayyoûb Al-Ayyoûbi An-Nayçâboûri
L’Imâm ‘Abdou l-Lâh Al-Jouwayni [père de l’Imâm Al-Haramayn]
Le Moufassir Abou l-Haçan ‘Ali Ibn Mouhammad Al-Mâwardi
Le Moufassir Al-Wâhidi [ Rapporté par Ibn Rouch Al-Jadd ]
L’Imâm Abou Is-hâq Ach-Chîrâzi
Le Moufassir Ad-Damghâni Al-Hanafi
L’Imâm Al-Moutawalli [ Dans son livre Al-Ghounyah ]
L’Imâm Al-Haramayn Al-Jouwayni [Dans son livre Louma’ al-Adillah]
Le Loughawi Ar-Râghib Al-Asbahâni
L’Imâm Al-Ghazâli
L’Imâm An-Naçafi (508 H.)
L’Imâm Abou n-Nasr Al-Qouchayri
Le Qâdî Ibnou Rouchd Al-Jadd [ Rapporté par Ibnou l-Hâjj Al-Mâliki ]
Al-Allâmah Al-Lâmichi Al-Hanafi
Le Moufassir Ibnou ‘Atiyyah Al-Andalouçi
L’Imâm Fakhrou d-Dîn Ar-Râzi
Le Chaykh Ismâ’îl Ibnou Ibrâhîm Ach-Chaybâni Al-Hanafi
Le Chaykh Sayfou d-Dîn Al-Âmidi
Le Chaykh Ibnou l-Hâjib Al-Mâliki
L’Imâm Al-‘Îzz Ibnou ‘Abdi s-Salâm
L’Imâm Al-Qourtoubi
Le Chaykh Chihâbou d-Dîn Al-Qarâfi
Le Moufassir An-Naçafi [ Dans son Tafsîr ]
Le Moufassir Al-Baydâwi
Le Qâdî Badrou d-Dîn Ibnou l-Jamâ’ah
Le Qâdî ‘Abdou r-Rahmân Al-Îji
L’Imâm Taqiyyou d-Dîn As-Soubki
Le Chaykh Al-Yâfi’i
Le Qâdî Ibnou s-Sirâj Al-Hanafi
Le Qâdî Tâjou d-Dîn As-Soubki
Le Chaykh ‘Izzou d-Dîn Ibn Jamâ’ah [ Dans son livre Darajou l-Ma’âlî ]
Le Loughawi Fayroûzâbâdi [ Dans son livre Basâ-irou dhawi t-Tamyîz ]
L’Imâm As-Souyoûti
L’Imâm Al-Qastallâni
Chaykh Al-Islâm Zakariyyâ Al-Ansâri [ Dans son livre Ihkâmou d-Dalâlah ]
Le Chaykh Moullâ ‘Ali Al-Qâri
Le Moufassir Ismâ’îl Haqqi Al-Hanafi
Le Hâfidh Mourtadâ Az-Zabîdi
Le Chaykh Mahmoûd As-Soubki Al-Azhari [ Dans son livre It-hâfou l-Kâ-inat ]
Le Chaykh Az-Zourqâni Al-Mâliki
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Hâfidh ‘Abdou l-Lâh Al-Harari [ Dans son livre As-Sirâtou l-Moustaqîm ]
et de nombreux autres savants.
– Retrouvez d’autres paroles de savants concernant l’istiwâ de Allâh : ici .', 'al-istiwa’, allah, aqida, ar-rahman ''ala l-''arch istawa'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« فإن سئلنا عن قوله تعالى :{الرحمن على العرش استوى} قلنا : المراد بـ «الاستواء» القهر والغلبة والعلو. ومنه قول العرب : استوى فلان على المملكة أي استعلى عليها واطردت له. ومنه قول الشاعر : قد استوى بشر على العراق … من غير سيف ودم مهراق »');

-- source: https://islamsunnite.net/version-darimi-hadith-femme-esclave-jariyah-servante/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le hadîth de la femme esclave.', 'Darimi', 'أخبرنا أبو الوليد الطيالسي ثنا حماد بن سلمة عن محمد بن عمرو عن أبي سلمة عن الشريد قال أتيت النبي صلى الله عليه و سلم فقلت إن على أمي رقبة وإن عندي جارية سوداء نويبية أفتجزىء عنها قال ادع بها فقال أتشهدين أن لا إله إلا الله قالت نعم قال اعتقها فإنها مؤمنة', '', '', 'Dans son recueil de hadîth « Al-Mousnad Al-Jâmi’» connu également sous le nom de « Sounan Ad-Dârimi», l’Imâm Ad-Dârimi rapporte le hadîth suivant :
[sens en français : ] « D’après Ach-Charîd qui a dit : je suis venu au prophète (صلى الله عليه و سلم) et j’ai dit : Ma mère doit affranchir une esclave, et j’ai pour ma part une jeune esclave noire Nubienne, est-ce que je l’affranchis ? Il a dit : Appelle la. Alors, il lui a dit : « Témoignes-tu qu’il n’est de dieu que Allâh ? », elle a répondu « oui », alors il a dit : « Affranchis la, elle est certes croyante ».».
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du hadîth), le Moufassir (exégète) Aboû Mouhammad ‘Abdou l-Lâh ibnou ‘Abdou r-Rahmân Ad-Dârimi As-Samarqandi est né en 181 et il est décédé en 255 de l’Hégire (رحمه الله), c’est à dire il y a presque 1200 ans. Il est l’auteur du recueil de hadîth connu sous le nom de « Sounan Ad-Dârimi ». Il est le Chaykh de nombreux autres spécialistes de la science du hadîth tels que : Mouslim, Aboû Dâwoûd, At-Tirmidhi et autres.
– Ici, il rapporte avec sa chaîne de transmission une version du hadîth de la femme esclave (jâriyah) qui est très différente de celle sur laquelle s’appuie les assimilateurs (mouchabbihah) pour tenter de faire croire aux musulmans que Allâh serait incarné dans le ciel.
– Cette version de Ad-Dârimi se rapproche de celle de l’Imâm Mâlik [ Dans son livre Al-Mouwattâ ], de l’Imâm Ahmad et d’autres qu’eux, dans laquelle il est rapporté ce qui a pour sens : « Le Messager de Allâh (salla l-Lâhou ‘alayhi wa sallam) s’adressant à l’esclave lui dit : « Témoignes-tu qu’il n’est de dieu que Allâh ? » , elle répondit « oui », Il lui dit ensuite : « Témoignes-tu que Mouhammad est le Messager de Allâh ? », elle répondit « oui ».
– Il est à savoir que ce hadîth a été rapporté avec plusieurs versions qui sont incompatibles les unes avec les autres, au point que certains savants du hadîth l’ont jugé moudtarib (perturbé) [ voir la parole de Al-Kawthari : ici ], et le hadîth moudtarib fait partie des hadîth qui sont faible comme l’a mentionné le Hâfidh Al-‘Irâqi et d’autres. Et on ne se base pas sur un hadîth perturbé en terme de croyance.
– Si quelqu’un s’étonne que l’on parle de hadîth faible concernant la version avec les termes « ayna l-Lâh » et « fi s-Samâ » rapportée dans le sahîh Mouslim, qu’il sache que certains savants du Hadîth comme l’Imâm Ach-Châfi’i, l’Imâm Al-Boukhâri et l’Imâm As-Souyoûti ont considéré faibles des hadîth qui se trouvent dans le Sahîh Mouslim.
– Aussi certains savants ont rejeté la version de Mouslim de ce hadîth car il est en contradiction avec des hadîth qui ont une chaîne de transmission beaucoup plus forte et qui indiquent que la personne n’est considérée musulmane que si elle prononce les deux témoignages en y croyant, et non en disant “Allâhou fi s-Samâ”. D’autant plus que les chrétiens et les juifs sont en accord avec les moujassimah (corporalistes) sur le fait que Allâh serait aux cieux. Alors comment pourraient-on se baser sur ce genre de parole pour considérer quelqu’un musulman ?! La version du hadîth qui est en accord avec les fondements est celle rapportée par l’Imâm Mâlik [ Dans son Mouwattâ ], l’Imâm Ahmad, et autres qu’eux.
Ibn Kathîr a dit au sujet de la version rapportée par l’Imâm Ahmad : « Sa chaîne de transmission est authentique (sahîh) » [Dans son Tafsîr]
– De même, il est à savoir que ce hadîth n’a pas été mentionné par l’Imâm Mouslim dans le livre de la foi, mais dans le livre : “Al-Maçâjid wa Mawâdi’ as-Salah”, chapitre : “tahrîm al-Kalâm fi s-Salât” ce qui nous indique que l’Imâm Mouslim n’accordait pas à ce hadîth une quelconque importance concernant les sujets de la croyance.
– Les savants de l’Islâm ont dit que celui qui dit : “Allâh fi s-Samâ” alors il y a deux cas : 1- S’il dit cela en visant l’endroit, alors il a commis de la mécréance. 2- Mais s’il visait le simple fait de répéter ce qui est parvenu de manière apparente dans les textes, comme dans ce hadîth, sans viser l’endroit, alors il ne commet pas de mécréance. Voir à ce sujet :
l’extrait du livre Al-Fatâwâ Al-Hindiyyah [ Compilé par Chaykh Nidhâm ] ;
la citation du Chaykh Ibn Noujaym [ Dans son livre Al-Bahrou r-Râ-iq ] ;
et la citation du Chaykh Ismâ’îl Haqqi [ Dans son tafsîr ].
– De plus, les savants ont dit que la personne qui dirait pour entrer en Islâm “Il n’y a pas d’autre dieu à part Allâh, qui est localisé aux cieux” cela n’est pas valable de sa part et il ne devient pas musulman car le fait de croire que Allâh est dans un endroit ou une direction est une croyance qui est contraire à l’Islâm, contraire au tawhîd. Cela a été mentionné entre autre par :
L’Imâm An-Nawawi qui a dit : « Si quelqu’un qui dit “Il n’y a pas d’autre dieu à part celui qui est dans les cieux”, il ne devient pas croyant (musulman), et il en est de même s’il dit “Il n’y a pas d’autre dieu à part Allâh, qui est localisé aux cieux”, parce que le fait d’être localisé est impossible au sujet de Allâh ta’âlâ. » [ Dans son Charh du Sahîh de Mouslim ]
L’Imâm Badrou r-Rachîd Al-Hanafi qui a confirmé ses propos [ Riçâlatoun fî Alfâdhi l-Koufr ].
– Retrouvez de nombreuses autres paroles de savants confirmant qu’ attribuer l’endroit ou la direction à Allâh est de la mécréance : ici .
– Ainsi prenez garde aux propos des wahhabites qui prétendent que le hadîth de la femme esclave serait une preuve pour attribuer l’endroit à Allâh, tout comme l’a prétendu Ibn ‘Outhaymîn (wahhabite) qui a dit : « Dans le hadîth de la femme esclave il y a au sujet des attributs de Allâh : La confirmation d’un endroit à Allâh et qu’Il est dans le ciel » [Dans son livre Majmoû’ Al-Fatâwâ]. C’est exactement cette croyance corrompue que les savants de l’Islâm considèrent comme de la mécréance.
– De plus il y a unanimité chez les savants que tout les textes qui laisseraient croire selon leurs sens apparents que Allâh serait dans les cieux, doivent être interprété selon un sens digne d’être attribué à Allâh. A ce sujet :
Al-Qâdî ‘Iyâd a dit : « Il n’y a pas de divergence entre les musulmans dans leur totalité, qu’il s’agisse des savants du fiqh, du hadîth (mouhaddith), de la croyance (moutakallim), et de ceux qui les suivent, que les textes apparents [du Qour-ân et du hadîth] dans lesquelles il est cité “Allâh fi s-samâ ” comme Sa parole ta’âlâ {ءَأَمِنتُم مَّن فِى ٱلسَّمَآءِ أَن يَخۡسِفَ بِكُمُ ٱلۡأَرۡضَ } (a-amintoum man fi s-samâ an yakhsifa bikoumou l-ard ) ne sont pas pris dans le sens apparent (dhâhir), mais ils sont interprétés [par ce qui est digne de Allâh] chez la totalité d’entre eux (les savants). » [ Rapporté par An-Nawawi ]
Le Mouhaddith, le Faqîh Ahmad Ibn ‘Oumar Al-Qourtoubi (m.656 H.) a dit : « Avertissement : Sache qu’il n’y a pas de divergence chez les musulmans dans leur totalité, que ce soit chez leurs spécialistes du hadîth, leur Faqîh (spécialistes de la jurisprudence), leurs spécialistes de la croyance, et chez ceux qui les suivent, que les textes apparents [du Qour-ân et du hadîth] dans lesquelles il est cité “Allâh fi s-samâ ” comme Sa parole ta’âlâ {ءَأَمِنتُم مَّن فِى ٱلسَّمَآءِ أَن يَخۡسِفَ بِكُمُ ٱلۡأَرۡضَ } (a-amintoum man fi s-samâ an yakhsifa bikoumou l-ard ) ne sont pas pris dans le sens apparent (dhâhir), mais ils sont interprétés [par ce qui est digne de Allâh] chez la totalité d’entre eux (les savants) […] la parole de la femme esclave “fi s-samâ” n’est pas à prendre au sens apparent selon l’unanimité des musulmans […] et celui qui la prendrait selon son sens apparent un est égaré de parmi les égarés » [Al-Moufhim limâ Achkala min Talkhîssi Kitâbi Mouslim]
L’Imâm Al-Kawthari a dit : «La communauté a été unanime, que ce soit les sunnites ou les innovateurs, que Allâh n’est pas dans le ciel ; bien plus, tout ce qui est rapporté et qui laisserait penser cela doit être interprété par accord des savants, tout comme l’a mentionné Al-Qâdî ‘Iyâd dans Ikmâlou l-Mou’lim, et An-Nawawi a rapporté sa citation dans son commentaire du Sahîh de Mouslim » [Dans ses annotations du livre Al-Asmâ-ou wa s-Sifât de l’Imâm Al-Bayhaqi]
Le Moufassir Al-Qourtoubi (m.676 H.) a dit : « Tout ce qui est dans [ou au-dessus] les cieux (fi s-samâ) et sur terre et ce qui est entre eux est une création de Allâh ta’âlâ et Lui appartient, et s’il en est ainsi, il est donc impossible que Allâh soit dans [ou au-dessus] les cieux (fi s-samâ) ou sur terre, car s’Il était dans quelque chose Il serait circonscrit ou limité, et s’Il était ainsi, Il aurait été créé. Ceci est la voie des gens de la vérité. Et [on suit] la même règle pour Sa parole « A-amintoum man fi s-samâ » et sa parole [c’est-à-dire la parole du Prophète (صلى الله عليه وسلم)] à la femme esclave : «Ayna l-Lâh ?» et elle a répondu « fi s-samâ » et il ne l’a pas contredit, et ce qui est de cet ordre, ce n’est pas selon le sens apparent mais c’est interprété avec des interprétations correctes, qui sont très nombreuses dans les livres des gens de science » [ Dans son livre At-Tidhkâr ]
– Retrouvez d’autres articles concernant le hadîth de la femme esclave (Jâriyah) : ici', 'ad-darimi, ad-darimiyy, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'أخبرنا أبو الوليد الطيالسي ثنا حماد بن سلمة عن محمد بن عمرو عن أبي سلمة عن الشريد قال أتيت النبي صلى الله عليه و سلم فقلت إن على أمي رقبة وإن عندي جارية سوداء نويبية أفتجزىء عنها قال ادع بها فقال أتشهدين أن لا إله إلا الله قالت نعم قال اعتقها فإنها مؤمنة');

-- source: https://islamsunnite.net/imam-moutawalli-explique-verset-tajri-bi-ayounina-allah-a-pas-d-oeil/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’a pas d’oeil.', 'Les Chafi''ites', 'قوله تعالى : {تجري بأعيننا} فالمراد به الأعين التي انفجرت من الأرض وإضافته إلى الله سبحانه على سبيل الملك', 'Quant à la parole de Allâh ta’âlâ : {Tajrî bi A’youninâ} [verset 14 de Soûrat Al-Qamar], ce qui en est visé sont les sources qui ont jailli de la terre, et leur annexion au nom de Allâh est pour indiquer la possession', '', 'Dans son livre « Al-Ghounyah fî Ousoûli d-Dîn » (page 114 de cette édition) l’Imâm Al-Moutawalli a dit :
Informations utiles :
– Al-‘Allâmah (l’illustre savant), l’Imâm, le Ousoûli (spécialiste des fondements), le Faqîh (spécialiste de la jurisprudence) Aboû Sa’îd ‘Abdou r-Rahmân An-Nayçâboûri, connu sous le nom de Al-Moutawalli Ach-Châfi’i est né en 426 à Nayçâboûr et il est décédé en 478 de l’Hégire à Baghdâd (رحمه الله). C’est-à-dire il y a plus de 960 ans. Il succéda à l’Imâm Ach-Chîrâzi comme enseignant à la célèbre école An-Nidhâmiyyah de Baghdâd. Il étudia la jurisprudence Chafi’ite auprès du savant, le Qâdî Houçayn Ach-Châfi’i (m.463 A.H) celui dont l’Imâm Ar-Râfi’i (m.623 A.H.) disait : « On le surnommait le savant de la communauté» , et autres que lui. L’Imâm An-Nawawi (m.676 A.H.) le cite souvent comme référence dans ses ouvrages.
Adh-Dhahabi a dit à son sujet : « L’illustre savant (Al-‘Allâmah) le Chaykh des Chafi’ites » [Siyarou A’lâmi n-Noubalâ], et il a également dit de lui : « Il était un Faqîh (spécialiste de la jurisprudence) Chafi’ite, l’un des grands savants, Il était un Faqîh reconnu, et un savant méticuleux » [Târîkhou l-Islâm].
Quant à Ibn Kathîr, il a dit à son sujet : « Il était éloquent, un grand orateur, et maîtrisait de nombreuses sciences » [Al-Bidâyah wa n-Nihâyah] ; il a dit également : « Il était un Faqîh (spécialiste de la jurisprudence) reconnu, et un savant méticuleux » , il a également fait son éloge en disant : « Il était l’un des ash-hâbou l-woujoûh (une catégorie de savants en dessous du degré du moujtahid, qui est apte à déduire les jugements religieux à partir des textes de l’Imâm fondateur de l’école) dans le madh-hab [Châfi’i] » . [Tabaqâtou ch-Châfi’iyyîn]
As-Safadi a dit de lui : « Il comptait parmi les meilleurs des gens de par le comportement et le caractère, et de parmi les savants les plus modestes et généreux, il était reconnu et méticuleux tout en étant un grand orateur, éloquent, et nombreux devenaient des imams en assistant à ses assemblées de science » . [Al-Wâfî bi l-Wafayât]
Tâjou d-Dîn As-Soubki a dit de lui : « Il est l’un des Imâm aux degrés les plus élevés de parmi nos compagnons » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ].
Et Ibn Khallikân a dit à son sujet : « Il était un Faqîh Chafi’ite originaire de Nayçâboûr, il a rassemblé la science, l’application de la religion, et les bons caractères, il a maîtrisé le Fiqh (la jurisprudence), Al-Ousoûl (les fondements) et al-Khilâf (les divergences religieuses) » [Wafayâtou l-A’yân].
– L’Imâm Al-Moutawalli aborde ici le verset {Tajrî bi A’youninâ} et il explique que le terme “A’youn” dans ce verset désigne les sources d’eau qui ont jailli de la terre.
– Ainsi, ce verset ne signifie en aucun cas que Allâh aurait des yeux. De plus le terme “A’youn” est le pluriel du terme “‘ayn”. Et dans la langue Arabe le pluriel s’utilise à partir de trois. Ainsi celui qui se base sur ce verset pour attribuer les yeux à Allâh, il lui aura attribué au minimum trois yeux. Que Allâh nous préserve du chirk !
– L’Imâm Al-Jouwayni a dit : « Concernant la parole de Allâh ta’âlâ au sujet l’arche de Noûh (‘alayhi s-Salâm) : {Tajrî bi A’youninâ} [verset 14 de Soûrat Al-Qamar] Personne de parmi les savants vérificateurs n’a attribué des yeux à Allâh ta’âlâ. Le sens du verset est que l’arche voguait bi A’youninâ, c’est-à-dire dans un endroit entouré par les anges, préservé, et protégé. […] Il a été dit que le sens de « A’youn » dans ce verset désigne les sources qui ont jailli de la terre, et elles sont annexées à Allâh pour indiquer la possession, et cela [cette explication] est acceptable.» [ Al-Irchad ]
– De nombreux autres savants ont expliqué ce verset sans en conclure que Allâh aurait des yeux :
L’Imâm Soufyân Ibnou ‘Ouyaynah a dit au sujet du verset {Tajrî bi A’youninâ} « C’est-à-dire : par Notre ordre» [Rapporté par At-Tabari et Al-Baghâwi dans leurs Tafsîr]
L’Imâm Az-Zajjâj a dit concernant le verset {wasna’i l-foulka bi a’youninâ} : « La signification de « Bi A’youninâ » est à Notre vue et par Notre préservation à ton égard » [ Ma’âni Al-Qour-ân ].
L’Imâm Ibnou ‘Atiyyah a dit : « La parole de Allâh {Tajrî bi A’youninâ} : la majorité (al-joumhoûr) a dit que cela signifie : par Notre préservation » [Dans son Tafsîr] .
L’Imâm Fakhrou d-Dîn Ar-Razi a dit : « La parole de Allâh {Tajrî bi A’youninâ} c’est-à-dire à Notre vue ou par Notre préservation.» [Dans son Tafsîr] .
L’Imâm Al-Qourtoubi a dit : « La parole de Allâh {Tajrî bi A’youninâ} c’est-à-dire à Notre vue. Et il a été dit : par Notre ordre. Et il a été dit : par Notre préservation. Et il a été dit : par Notre révélation. Et il a été dit que ce qui est visé par “A’youn” sont les sources sortant de la terre. Et il a été dit que “A’youn” signifie les saints de parmi les anges qui étaient chargé de préserver l’arche. Et tout ce que Allâh a créé, il est permis de Lui annexer» [Dans son Tafsîr].
L’Imâm Al-Baydâwi a dit : « La parole de Allâh {Tajrî bi A’youninâ} à Notre vue, c’est-à-dire une préservation de parmi Nos préservations» [Dans son Tafsîr].
L’Imâm An-Naçafi a dit : « La parole de Allâh {Tajrî bi A’youninâ} c’est-à-dire à Notre vue ou par Notre préservation.» [Dans son Tafsîr].
L’Imâm Al-Khâzin a dit : « La parole de Allâh {Tajrî bi A’youninâ} c’est-à-dire à Notre vue. Et il a été dit : par Notre préservation. Et il a été dit : par Notre ordre.» [Dans son Tafsîr].
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {تَجْرِي بِأَعْيُنِنَا} (tajrî bi A’youninâ) : c’est-à-dire par Notre préservation et Notre protection » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân].
Ibn Kathîr a donné une explication similaire en disant : « La parole de Allâh {Tajrî bi A’youninâ} c’est-à-dire par Notre ordre, Notre protection et sous Notre préservation.» [Dans son Tafsîr].
Et beaucoup d’autres…
– L’Imâm At-Tahâwi (رحمه الله) qui fait partie des illustres savants du salaf a dit dans son traité présentant la croyance de l’ensemble des gens de la Sounnah : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres. Les six directions ne Le délimitent pas, contrairement à toutes les créatures » [ Al-‘Aqîdah At-Tahâwiyyah ].
– L’Imâm Abou l-Haçan Al-Ach’ari a dit au sujet de Allâh : « Il a un ‘ayn sans comment (bilâ kayf)». [Dans son livre Al-Ibânah, d’après Ibnou ‘Açâkir dans son livre Tabyînou kadhibi l-Mouftarî]. Le comment (kayf) c’est ce par quoi on décrit les créatures, comme la forme, la taille, le poids, la couleur, le mouvement, l’immobilité etc. Ainsi, en niant le comment (kayf), l’Imâm Abou l-Haçan Al-Ach’ari a nié le fait que le terme ‘ayn au sujet de Allâh vienne dans le sens de la partie corporelle, c’est-à-dire de l’œil.
– L’Imâm Al-Khattâbi a dit : « Il est confirmé l’attribut de la vue et de l’ouïe au sujet de Allâh, mais Il n’est pas attribué de l’oreille et de l’œil car ce sont des organes». [Charh Sounan Abî Dâwoûd]
– L’Imâm Al-Bayhaqi a dit : «Son « ‘ayn » n’est pas un globe oculaire [un oeil]» . [ Al-I’tiqâd ].
– L’Imâm Al-Bayhaqi a dit aussi concernant l’attribut du ‘ayn : «Il s’agit d’un attribut qui n’est pas un globe oculaire [un oeil]» [Al-Asmâ-ou wa s-Sifât]
– L’Imâm An-Naçafi (m.508 h.) a dit : « Allâh voit sans œil » [ Bahrou l-Kalâm ]
– L’Imâm Ahmad Ar-Rifâ’i a dit : « Ne dites pas que le yad et le ‘ayn [au sujet de Allâh] sont des organes » [Dans son livre Al-Bourhânou l-Mou-ayyad]
– L’Imâm Ahmad Ar-Rifâ’i a dit également au sujet de Allâh : « Il voit sans globe oculaire [c’est-à-dire sans œil] ni paupières, Il entend sans tympans ni oreilles » [Ad-Dourratou s-Sâmiyah fî Ma’rifati fadâ-ili souloûki t-Tarîqati r-Rifâ’iyyah]
– L’Imâm Ahmad Ar-Rifâ’i a dit aussi au sujet de Allâh : « Il entend sans oreille, Il voit sans globe oculaire [c’est-à-dire sans œil] et Il parle sans langue. » [Al-Majâlis ar-Rifâ’iyyah]
– L’Imâm Al-Marjâni At-Toûniçi Al-Mâliki (m. 699 H.) a dit au sujet de Allâh: « Il ne voit pas par le biais d’un globe oculaire [oeil] ni d’une paupière » . [I’tiqâdou Ahli s-Sounnah wa ‘Oulamâ-i l-Oummah]
– Le Chaykh Abou l-Mountahâ Al-Hanafi a dit : « La vue de Allâh qui est Son attribut qui est éternel, sans organe (lâ bi l-âlah)» [Dans son charh du livre Al-Fiqh Al-Akbar] ;
– Le Moufti de La Mecque, le Chaykh Ahmad Ibn Zaynî Dahlân dit au sujet de Allâh : « Il voit sans globe oculaire [c’est-à-dire sans oeil] ni paupières » [Charh Al-‘Aqîdah al-Moukhtasarah]
– Le Chaykh Mouhammad Ibn ‘Oumar Nawawi Al-Jâwi a dit : « Allâh voit sans œil » [Dans son livre Mirqâh Sou’oûdi t-Tasdîq]
– Le Mouhaddith ‘Abdou l-Bâsit Al-Fâkhoûri a dit : « [L’attribut de Allâh de] la vue : Il s’agit d’un attribut éternel sans début, propre à Son Être ta’âlâ, sans globe oculaire [œil] ni paupières » [Al-Kifâyah li Dhawi l-‘Inâyah]
– Le Chaykh Mouhammad Al-Mourâkouchi Al-Mâliki Al-Mouwaqqit a dit : « Le sens du fait que Allâh soubhânah entend et voit est qu’Il entend tout ce qui est audible que ce soit de faible volume ou fort, et qu’Il voit ce qui est visible que ce soit caché ou apparent, mais sans oreille et sans œil et sans organe, car les organes font partis des attributs de ce qui entre en existence » [Al-Hablou l-Matîn ‘alâ Nadhmi l-Mourchidi l-Mou’în]
– Retrouvez d’autres paroles de savants sur le thème : Allâh n’est pas un corps et n’a pas d’organes : ici .
– Retrouvez d’autres paroles de savants sur le thème : Attribuer le corps à Allâh est de la mécréance : ici .', '3ayn, 3oulama, a''younina, ahlou s-sounnah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قوله تعالى : {تجري بأعيننا} فالمراد به الأعين التي انفجرت من الأرض وإضافته إلى الله سبحانه على سبيل الملك');

-- source: https://islamsunnite.net/ibn-rajab-confirme-calcul-pas-valable-determiner-ramadan/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La détermination du début de Ramadân.', 'Ibn Rajab', '« قال [النبي] :« صوموا لرؤيته، وأفطروا لرؤيته، فإنْ غُمَّ عليكم فأكمِلُوا العِدّة» فتبين أن ديننا لا يحتاج إلى حساب ولا كتاب، كما يفعله أهل الكتاب من ضبط عباداتهم بمسير الشمس وحسباناتها، وأن ديننا في ميقات الصيام معلق بما يُرى بالبصر وهو رؤية الهلال، فإن غمّ أكملنا عدة الشهر ولم نحتج إلى حساب.»', '«Le prophète (صلى الله عليه وسلم) a dit [ce qui a pour sens] : « Commencez le jeûne à l’observation du croissant lunaire et terminez le jeûne à l’observation du croissant lunaire. Si l’observation est gênée [comme par des nuages] alors complétez le compte de Cha’bân [à trente jours]», cela montre que notre religion ne nécessite pas de calculs ni d’écrits [pour déterminer les actes d’adoration], contrairement aux pratiques des gens du livre basées sur la trajectoire du soleil et ses calculs. Et que notre religion, concernant la détermination du jeûne [de Ramadân], est liée à l’observation visuelle, et il s’agit de la vision du croissant lunaire. Et si l’observation est gênée [comme par des nuages] alors nous complétons le compte du mois [à trente jours], mais nous n’avons pas recours aux calculs.»', '', 'Dans son commentaire du Sahîh Al-Boukhâri « Fathou l-Bârî » (tome 3 page 67 de cette édition), Ibnou Rajab Al-Hanbali a dit :
Informations utiles :
– Le Hâfidh (spécialiste de la science du hadîth) Zaynou d-Dîn ‘Abdou r-Rahmân Ibnou Ahmad Ibnou Rajab Al-Baghdâdi puis Ad-Dimachqi est né à Baghdâd (Irak) en 736 et il est décédé en 795 de l’Hégire à Damas (Syrie). Il est un savant Hambalite.
– Ici, il dit clairement qu’il n’est pas valable de se baser sur le calcul pour déterminer le début du mois de Ramadân.
– En effet le Messager de Allâh (صلى الله عليه وسلم) a dit :', 'ahlou s-sounnah, al boukhari, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« قال [النبي] :« صوموا لرؤيته، وأفطروا لرؤيته، فإنْ غُمَّ عليكم فأكمِلُوا العِدّة» فتبين أن ديننا لا يحتاج إلى حساب ولا كتاب، كما يفعله أهل الكتاب من ضبط عباداتهم بمسير الشمس وحسباناتها، وأن ديننا في ميقات الصيام معلق بما يُرى بالبصر وهو رؤية الهلال، فإن غمّ أكملنا عدة الشهر ولم نحتج إلى حساب.»');

-- source: https://islamsunnite.net/imam-kawthari-hadith-femme-esclave-jariyah-ayna/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le hadîth de la femme esclave.', 'Les Hanafites', 'ويلهج المسكين في موضع بحديث (أين الله) على اضطرابه متناً وسنداً مع أن (أين) قد تكون للسؤال عن المكان وقد تكون للسؤال عن المكانة، فيكون الحديث بمعنى ما هي مكانة الله عندك؟ كما نجد تفصيل ذلك في عارضة أبي بكر العربي، ومن المعروف بين العرب قولهم: فلان مكانه في السماء، يعنون علو شأنه من غير ملاحظة السماء ولا التمكن فيها أصلاً، ومن هذا القبيل قول نابغة بني جعد: علونا السماء مجدنا وجدودنا … وإنا لنبغي فوق ذلك مظهرا', '« Et ce misérable cite le hadîth [qui comprend les termes] « ayna l-Lâh » [il s’agit de l’une des versions du hadîth de la femme esclave (jâriyah)] alors qu’il est perturbé (moudtarib) que ce soit du point de vue du texte du hadîth (matn) ou de sa chaîne de transmission (sanad), et que le mot « ayna » peut être une interrogation au sujet de l’endroit (makân) et peut être une interrogation au sujet du mérite -ou du degré- (makânah); ainsi le sens du hadîth serait : « Quel est le degré que tu accordes à Allâh -dans ton adoration- ? », tout comme tu vois ce détail dans [le livre] ‘Âridah [al-Ahwadhi] d’Aboû Bakr Ibnou l-‘Arabi ; et ce qui est connu chez les Arabes c’est que lorsqu’ils disent : « foulân makânouhou fi s-samâ », ils veulent dire que c’est quelqu’un qui a un haut degré, sans que cela veuille dire qu’il ne soit lui-même dans le ciel . Et ceci c’est comme ce qu’a dit [le compagnon et poète] Nâbighah Banî Ja’ad :', '', 'L’assistant du dernier Calife des musulmans, l’Imâm Al-Kawthari a dit dans son livre « Maqâlâtou l-Kawthari » (page 281 de cette édition) dans sa mise en garde d’un homme égaré :
علونا السماء مجدنا وجدودنا وإنا لنبغى فوق ذلك مظهرا [qui est un vers de poésie, où le mot « samâ » vise le degré et non l’endroit] »
Informations utiles :
– L’Imâm, le Mouhaddith (spécialiste de la science du hadîth), le Chaykh Mouhammad Zâhid Al-Kawthari Al-Hanafi était l’assistant du dernier Calife des musulmans (le Califat a pris fin en 1924). Il était un grand savant Hanafite qui a même été appelé par certains le « Moujaddid » du siècle dernier (c’est-à-dire celui qui revitalise la science de la religion). Il est né en 1296 et il est décédé en 1371 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 70 ans.
Le Chaykh Al-Qoudâ’i Al-’Azzâmi a dit de lui : « Al-‘Allâmah (l’illustre savant) scrupuleux, qui est très intelligent, le vérificateur, l’éminent enseignant (al-Oustâdh al-Kabîr), le Chaykh Mouhammad Zâhid Al-Kawthari » [Al-Fourqân]
– Ici, l’Imâm Al-Kawthari aborde le hadîth de la femme esclave (jâriyah) et plus particulièrement la version qui comprend les termes « ayna l-Lâh ». Il explique que l’on ne peux pas se baser sur ce hadîth dans la croyance car c’est un hadîth moudtarib (perturbé) que ce soit au niveau de son texte (matn) tout comme au niveau de sa chaîne de transmission.
– Il explique également que dans la langue Arabe le terme « ayna » peut désigner l’interrogation au sujet de l’endroit, mais il peut également être une interrogation au sujet du mérite ou du degré. Ainsi le sens de la question serait : « Quel est le degré que tu accordes à Allâh -dans ton adoration- ? ».
– A ce sujet, il fait référence à l’Imâm Aboû Bakr Ibnou l-‘Arabi qui a dit : « [la parole] « ayna l-Lâh ? » ce qui est voulu par sa question ici, c’est concernant le degré (al-makânah) car le fait d’être dans un endroit est impossible pour Allâh » [Dans son commentaire du recueil de hadîth de l’Imâm At-Tirmidhi « ‘Âridatou l-Ahwadhi »]
– Et il explique également que dans la langue Arabe, lorsque l’ont dit « untel fi s-samâ », cela peut désigner que cette personne dont on parle a un haut degré, sans qu’on ne veuille dire qu’il serait lui-même dans le ciel. Et il cite pour prouver cela un vers de poésie d’un compagnon, dans lequel il utilise le terme « as-samâ » sans en viser le ciel.
– Il est à savoir que ce hadîth a été rapporté avec plusieurs versions qui sont incompatibles les unes avec les autres, au point que certains savants du hadîth l’ont jugé moudtarib (perturbé), et le hadîth moudtarib fait partie des hadîth qui sont faible comme l’a mentionné le Hâfidh Al-‘Irâqi et d’autres. Et on ne se base pas sur un hadîth perturbé en terme de croyance.
– Si quelqu’un s’étonne que l’on parle de hadîth faible concernant le sahîh Mouslim, qu’il sache que certains savants du Hadîth comme l’Imâm Ach-Châfi’i, l’Imâm Al-Boukhâri et l’Imâm As-Souyoûti ont considéré faibles des hadîth qui se trouvent dans le Sahîh Mouslim.
– Aussi certains savants ont rejeté la version de Mouslim de ce hadîth car il est en contradiction avec des hadîth qui ont une chaîne de transmission beaucoup plus forte et qui indiquent que la personne n’est considérée musulmane que si elle prononce les deux témoignages en y croyant, et non en disant “Allâhou fi s-Samâ”. D’autant plus que les chrétiens et les juifs sont en accord avec les moujassimah (corporalistes) sur le fait que Allâh serait aux cieux. Alors comment pourraient-on se baser sur ce genre de parole pour considérer quelqu’un musulman ?! La version du hadîth qui est en accord avec les fondements est celle rapportée par l’Imâm Mâlik [ Dans son livre Al-Mouwattâ ], et par l’Imâm Ahmad et autres qu’eux. Et la version de l’Imâm Ad-Dârimi est proche de leur version [ Dans ses sounan ].
Ibn Kathîr a dit au sujet de la version rapportée par l’Imâm Ahmad : « Sa chaîne de transmission est authentique (sahîh) » [Dans son Tafsîr]
– De même, il est à savoir que ce hadîth n’a pas été mentionné par l’Imâm Mouslim dans le livre de la foi, mais dans le livre : “Al-Maçâjid wa Mawâdi’ as-Salah”, chapitre : “tahrîm al-Kalâm fi s-Salât” ce qui nous indique que l’Imâm Mouslim n’accordait pas à ce hadîth une quelconque importance concernant les sujets de la croyance.
– Les savants de l’Islâm ont dit que celui qui dit : “Allâh fi s-Samâ” alors il y a deux cas : 1- S’il dit cela en visant l’endroit, alors il a commis de la mécréance. 2- Mais s’il visait le simple fait de répéter ce qui est parvenu de manière apparente dans les textes, comme dans ce hadîth, sans viser l’endroit, alors il ne commet pas de mécréance. Voir à ce sujet :
l’extrait du livre Al-Fatâwâ Al-Hindiyyah : ici ;
la citation du Chaykh Ibn Noujaym : ici ;
et la citation du Chaykh Ismâ’îl Haqqi : ici .
– De plus, les savants ont dit que la personne qui dirait pour entrer en Islâm “Il n’y a pas d’autre dieu à part Allâh, qui est localisé aux cieux” cela n’est pas valable de sa part et il ne devient pas musulman car le fait de croire que Allâh est dans un endroit ou une direction est une croyance qui est contraire à l’Islâm, contraire au tawhîd. Cela a été mentionné entre autre par :
L’Imâm An-Nawawi qui a dit : « Si quelqu’un qui dit “Il n’y a pas d’autre dieu à part celui qui est dans les cieux”, il ne devient pas croyant (musulman), et il en est de même s’il dit “Il n’y a pas d’autre dieu à part Allâh, qui est localisé aux cieux”, parce que le fait d’être localisé est impossible au sujet de Allâh ta’âlâ. » [ Dans son livre Rawdat At-Tâlibîn ]
L’Imâm Badrou r-Rachîd Al-Hanafi qui a confirmé ses propos [ Dans son ouvrage Riçâlatoun fî Alfâdhi l-Koufr ].
– L’Imâm Al-Kawthari était lui-même en accord avec tout ces jugements. Il a dit dans ce même ouvrage : « Celui qui considère que Allâh soubhânah est dans un endroit, c’est un adorateur d’idole, et il quitte la communauté des musulmans [c’est-à-dire qu’il n’est plus musulman], tout comme cela a été rapporté par plus d’un des Imâm des fondements de la religion. Allâh est exempt de telles calomnies. » [ Maqâlatou l-Kawthâri ]
– Retrouvez de nombreuses autres paroles de savants confirmant qu’ attribuer l’endroit ou la direction à Allâh est de la mécréance : ici .
– Ainsi prenez garde aux propos des wahhabites qui prétendent que le hadîth de la femme esclave serait une preuve pour attribuer l’endroit à Allâh, tout comme l’a prétendu Ibn ‘Outhaymîn (wahhabite) qui a dit : « Dans le hadîth de la femme esclave il y a au sujet des attributs de Allâh : La confirmation d’un endroit à Allâh et qu’Il est dans le ciel » [Dans son livre Majmoû’ Al-Fatâwâ]. C’est exactement cette croyance corrompue que les savants de l’Islâm considèrent comme de la mécréance.
– De plus il y a unanimité chez les savants que tout les textes qui laisseraient croire selon leurs sens apparents que Allâh serait dans les cieux, doivent être interprété selon un sens digne d’être attribué à Allâh. A ce sujet :
Al-Qâdî ‘Iyâd a dit : « Il n’y a pas de divergence entre les musulmans dans leur totalité, qu’il s’agisse des savants du fiqh, du hadîth (mouhaddith), de la croyance (moutakallim), et de ceux qui les suivent, que les textes apparents [du Qour-ân et du hadîth] dans lesquelles il est cité “Allâh fi s-samâ ” comme Sa parole ta’âlâ {ءَأَمِنتُم مَّن فِى ٱلسَّمَآءِ أَن يَخۡسِفَ بِكُمُ ٱلۡأَرۡضَ } (a-amintoum man fi s-samâ an yakhsifa bikoumou l-ard ) ne sont pas pris dans le sens apparent (dhâhir), mais ils sont interprétés [par ce qui est digne de Allâh] chez la totalité d’entre eux (les savants). » [ Rapporté par An-Nawawi dans son Charh Sahîh Mouslim ]
Le Mouhaddith, le Faqîh Ahmad Ibn ‘Oumar Al-Qourtoubi (m.656 H.) a dit : « Avertissement : Sache qu’il n’y a pas de divergence chez les musulmans dans leur totalité, que ce soit chez leurs spécialistes du hadîth, leur Faqîh (spécialistes de la jurisprudence), leurs spécialistes de la croyance, et chez ceux qui les suivent, que les textes apparents [du Qour-ân et du hadîth] dans lesquelles il est cité “Allâh fi s-samâ ” comme Sa parole ta’âlâ {ءَأَمِنتُم مَّن فِى ٱلسَّمَآءِ أَن يَخۡسِفَ بِكُمُ ٱلۡأَرۡضَ } (a-amintoum man fi s-samâ an yakhsifa bikoumou l-ard ) ne sont pas pris dans le sens apparent (dhâhir), mais ils sont interprétés [par ce qui est digne de Allâh] chez la totalité d’entre eux (les savants) […] la parole de la femme esclave “fi s-samâ” n’est pas à prendre au sens apparent selon l’unanimité des musulmans […] et celui qui la prendrait selon son sens apparent un est égaré de parmi les égarés » [Al-Moufhim limâ Achkala min Talkhîssi Kitâbi Mouslim]
L’Imâm Al-Kawthari qui a dit : «La communauté a été unanime, que ce soit les sunnites ou les innovateurs, que Allâh n’est pas dans le ciel ; bien plus, tout ce qui est rapporté et qui laisserait penser cela doit être interprété par accord des savants, tout comme l’a mentionné Al-Qâdî ‘Iyâd dans Ikmâlou l-Mou’lim, et An-Nawawi a rapporté sa citation dans son commentaire du Sahîh de Mouslim » [Dans ses annotations du livre Al-Asmâ-ou wa s-Sifât de l’Imâm Al-Bayhaqi]
Le Moufassir Al-Qourtoubi (m.676 H.) a dit : « Tout ce qui est dans [ou au-dessus] les cieux (fi s-samâ) et sur terre et ce qui est entre eux est une création de Allâh ta’âlâ et Lui appartient, et s’il en est ainsi, il est donc impossible que Allâh soit dans [ou au-dessus] les cieux (fi s-samâ) ou sur terre, car s’Il était dans quelque chose Il serait circonscrit ou limité, et s’Il était ainsi, Il aurait été créé. Ceci est la voie des gens de la vérité. Et [on suit] la même règle pour Sa parole « A-amintoum man fi s-samâ » et sa parole [c’est-à-dire la parole du Prophète (صلى الله عليه وسلم)] à la femme esclave : «Ayna l-Lâh ?» et elle a répondu « fi s-samâ » et il ne l’a pas contredit, et ce qui est de cet ordre, ce n’est pas selon le sens apparent mais c’est interprété avec des interprétations correctes, qui sont très nombreuses dans les livres des gens de science » [ Dans son livre At-Tidhkâr fî Afdali l-Adhkâr ]
– Retrouvez d’autres articles concernant le hadîth de la femme esclave (Jâriyah) : ici', 'ahlou s-sounnah, ahlou sounnah, al-asmâ-ou wa s-sifât, al-jariyah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ويلهج المسكين في موضع بحديث (أين الله) على اضطرابه متناً وسنداً مع أن (أين) قد تكون للسؤال عن المكان وقد تكون للسؤال عن المكانة، فيكون الحديث بمعنى ما هي مكانة الله عندك؟ كما نجد تفصيل ذلك في عارضة أبي بكر العربي، ومن المعروف بين العرب قولهم: فلان مكانه في السماء، يعنون علو شأنه من غير ملاحظة السماء ولا التمكن فيها أصلاً، ومن هذا القبيل قول نابغة بني جعد: علونا السماء مجدنا وجدودنا … وإنا لنبغي فوق ذلك مظهرا');

-- source: https://islamsunnite.net/le-chaykh-ad-doussouqi-al-maliki-dit-que-linvocation-en-faveur-du-prophete-apres-lappel-a-la-priere-est-une-bonne-innovation/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Invocation en faveur du prophète après le adhân.', 'Al Azhar', 'وأما الصلاة على النبي صلى الله عليه وسلم بعد الأذان فبدعة حسنة', 'Quant à l’invocation en faveur du prophète (صلى الله عليه وسلم) après l’appel à la prière (adhân), il s’agit d’une bonne innovation (bid’ah haçanah)', '', 'Dans sa Hâchiyah du Charh Al-Kabîr (tome 1 page 193), le Chaykh Ad-Doussoûqi Al-Mâliki a dit :
Informations utiles :
– Le Chaykh, Al-‘Allâmah (l’illustre savant) Chamsou d-Dîn Mouhammad Ibnou Ahmad Ibnou ‘Arafah Ad-Doussoûqi Al-Misri Al-Mâliki est né à Doussoûq (Egypte) et il décédé au Caire (Egypte) en 1230 de l’Hégire (رحمه الله). Il était enseignant dans l’Université Islamique Al-Azhar.
– Ce livre est un commentaire du livre Charh Al-Kabîr du Chaykh Ahmad Ad-Dardîr Al-Mâliki (رحمه الله).
– Ici, le Chaykh Ad-Doussoûqi dit que le fait de dire l’invocation en faveur du prophète (صلى الله عليه وسلم) après l’appel à la prière est une bonne innovation.
– Nous retenons également de sa parole, qu’une innovation n’est pas forcément mauvaise, mais qu’il existe des bonnes innovations (bid’ah haçanah). Et il s’agit des innovations qui ne viennent pas en contradiction avec la religion. Comme c’est le cas, ici, du fait de dire l’invocation en faveur du prophète (صلى الله عليه وسلم). Il s’agit en effet d’un acte vivement encouragé dans la religion. En effet :
Allâh ta’âlâ dit : ﴿ يَا أَيُّهَا الَّذِينَ آمَنُوا صَلُّوا عَلَيْهِ وَسَلِّمُوا تَسْلِيمًا ﴾ [ce qui a pour sens : ] « Ô vous qui avez cru, invoquez Allâh pour qu’Il élève davantage en degré le Prophète et qu’Il préserve sa communauté de ce qu’il craint pour elle » [Soûrat Al-Ahzâb / 56]
Le Messager de Allâh (صلى الله عليه وسلم) a dit : « إِذَا سَمِعْتُمْ الْمُؤَذِّنَ فَقُولُوا مِثْلَ مَا يَقُولُ ، ثُمَّ صَلُّوا عَلَيَّ » [ce qui a pour sens : ] « Lorsque vous entendez le mou-adh-dhin, répétez ce qu’il dit, ensuite faites l’invocation en ma faveur » [Rapporté par Mouslim].
Le Messager de Allâh (صلى الله عليه وسلم) a dit : « مَنْ ذَكَرَنِي فَلْيُصَلِّ عَلَيَّ » [ce qui a pour sens : ] « Celui qui cite mon nom, qu’il fasse l’invocation en ma faveur » [Rapporté par le Hâfidh As-Sakhâwi et Aboû Ya’lâ] Le Hâfidh As-Sakhâwi a dit : «Il n’y a pas de défaut dans sa chaîne de transmission» [Dans son livre Al-Qawlou l-Badî’].
– Le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ rapporté par Mouslim ] .
– Ainsi, le hadîth qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah) est un hadîth dont les termes sont générales mais dont le sens est restreint c’est-à-dire que ce ne sont pas toute les innovations -dans l’absolu- qui sont de l’égarement, mais il s’agit des innovations qui contredisent la religion. Ainsi ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ].
– D’autres savants ont confirmé qu’il est une bonne chose de dire l’invocation en faveur du prophète après l’appel à la prière. Parmi eux :
Le Hâfidh As-Sakhâwi qui a dit qu’il s’agit d’une bonne innovation (bid’ah haçanah) ;
Le Chaykh ‘Alâ-ou d-Dîn Al-Haskafi Al-Hanafi qui a dit qu’il s’agit d’une bonne innovation (bid’ah haçanah) ;
Le Chaykh ‘Abdou l-Lâh Al-Harari [Dans son livre Ach-Charhou l-Qawîm];
et autres qu’eux…
– Dans l’ouvrage « ‘Aqîdatou l-Mouslimîn» qui est approuvé par la section des Fondements de la Religion (Ousoûlou d-Dîn) de l’Université de Al-Azhar Ach-Charîf, il est dit : « Il est permis de faire l’invocation en faveur du Prophète après l’appel à la prière et on ne prête aucune attention à celui qui l’interdit » .
– Ainsi il ne convient pas de prêter attention à ceux qui l’interdisent, et il s’agît principalement des adeptes de la mouvance sectaire wahhabite.
– D’ailleurs certains grands récitateurs du Qour-ân pratiquaient cette bonne innovation. C’est le cas du Chaykh Al-Minchâwi (رحمه الله), du Chaykh ‘Abdou l-Bâsit ‘Abdou s-Samad (رحمه الله) et d’autres.
– Cette tradition est ainsi pratiquée dans de nombreux pays musulmans, principalement en Egypte, et dans les pays du Châm : Liban, Jordanie, Syrie et Palestine, et elle est pratiquée dans la Mosquée Al-Aqsâ à Al-Qouds (Jérusalem).
– Cette tradition était également pratiquée au sein de la grande Mosquée de La Mecque et de Médine durant plusieurs siècles, mais ce sont les wahhabites qui ont interdit cette pratique, comme le rapporte le Moufti de La Mecque, le Chaykh Ahmad Ibn Zaynî Dahlân. Il est d’ailleurs rapporté que Mouhammad Ibn ‘Abdi l-Wahhâb (le fondateur de la secte) a fait exécuter un homme aveugle car il pratiquait l’invocation en faveur du prophète après l’appel à la prière :
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zaynî Dahlân a dit : « Les wahhabites interdisent l’invocation en faveur du prophète (صلى الله عليه وسلم) depuis les manâbir (pl.minbar) après l’appel à la prière (adhân), au point où il y avait un homme vertueux qui était aveugle, il faisait l’appel à la prière, et réalisait l’invocation en faveur du prophète (صلى الله عليه وسلم) après le adhân, et ceci après que les wahhabites l’aient interdit, alors ils l’ont pris et l’ont emmené jusqu’à Mouhammad Ibnou ‘Abdi l-Wahhâb qui a ordonné qu’on l’exécute, et il fût tué » [ Dans son livre Fitnatou l-Wahhâbiyyah (la discorde des wahhabites) ].
Le Mouhaddith ‘Abdou l-Lâh Al-Harari a dit : « Parmi les innovations des wahhabites instaurées par Mouhammad Ibnou ‘Abdi l-Wahhâb, il y a l’interdiction de faire l’invocation en faveur du prophète à voix haute par le Mou-adh-dhin après l’appel à la prière. Ils exagèrent à ce sujet au point que l’un d’entre eux dans le Châm, dans la mosquée Ad-Daqqâq lorsqu’il a entendu le mou-adh-dhin dire « As-Salâtou wa s-Salâm ‘alayka yâ Raçoûla l-Lâh », il a dit (ce wahhabite) : Ceci est interdit, ceci est similaire à celui qui fait la fornication avec sa propre mère. Plus encore, leur chef Mouhammad Ibnou ‘Abdi l-Wahhâb a ordonné l’exécution d’un mou-adh-dhin aveugle qui faisait l’invocation en faveur du prophète à voix haute après l’appel à la prière » [Dans son livre Ach-Charhou l-Qawîm].
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .', 'adhan, allah, appel à la prière, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وأما الصلاة على النبي صلى الله عليه وسلم بعد الأذان فبدعة حسنة');

-- source: https://islamsunnite.net/chaykh-as-sawi-maliki-blame-secte-wahhabite-wahhabisme/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Mise en garde contre les wahhabites.', 'Sawi', 'وقيل هذه الآية نزلت في الخوارج الذين يحرفون تأويل الكتاب والسنة ويستحلون بذلك دماء المسلمين وأموالهم كما هو مشاهد الآن في نظائرهم وهو فرقة بأرض الحجاز يقال لهم الوهابية يحسبون أنهم على شئ إلا أنهم هم الكاذبون استحوذ عليهم الشيطان فأنساهم ذكر الله أولئك حزب الشيطان ألا إن حزب الشيطان هم الخاسرون نسأل الله الكريم أن يقطع دابرهم', 'Il a été dit que ce verset a été révélé sur les Khawârij ceux qui falsifient l’interprétation (ta-wîl) du Livre et de la Sounnah et qui se rendent par cela permis le sang des musulmans et leurs biens, comme nous constatons à présent dans leurs manières d’agir ceux d’un groupe du Hijâz [Région correspondant de nos jours à une partie de l’Arabie Saoudite] qui sont appelés les Wahhabites qui pensent être sur la vérité alors que ceux sont eux les menteurs, le Chaytân a eu emprise sur eux et leur a fait oublier le rappel de Allâh, certes ils sont le parti de Chaytân et certes le parti de Chaytân est le perdant et nous demandons à Allâh qu’Il les extermine jusqu’au dernier.', '', 'Dans son livre « Hâchiyatou s-Sâwi ‘alâ tafsîr al-Jalâlayn », lors de l’explication du verset : {إِنَّ ٱلشَّيۡطَـٰنَ لَكُمۡ عَدُوٌّ۬ فَٱتَّخِذُوهُ عَدُوًّاۚ إِنَّمَا يَدۡعُواْ حِزۡبَهُ ۥ لِيَكُونُواْ مِنۡ أَصۡحَـٰبِ ٱلسَّعِيرِ} dont le sens en français est : {Certes le diable est un ennemi pour vous alors prenez-le comme ennemi. Il appelle ses partisans afin qu’ils deviennent des gens parmi ceux de l’enfer} [verset 6 de Soûrat Fâtir] le Chaykh As-Sâwi Al-Mâliki a dit :
Informations utiles :
– Al-‘Allâmah (l’lillustre savant), le Faqîh (spécialiste de la jurisprudence) le Chaykh Abou l-‘Abbâs Ahmad Ibnou Mouhammad As-Sâwi Al-Misri Al-Mâliki est né en 1175 en Egypte et il est décédé à Médine en 1241 de l’Hégire (رحمه الله), c’est-à-dire il y a environ 200 ans. Son ouvrage « Hâchiyatou s-Sâwi » est un commentaire du tafsîr al-Jalâlayn.
– Ici, l’Imâm As-Sâwi dénonce la secte wahhabite en les désignants comme étant les Khawârij de son époque et comme étant le parti du Chaytân. Il dit que les wahhabites prétendent être sur la vérité alors qu’en réalité ils sont des menteurs.
– D’autres savants ont également désigné les wahhabites comme étant les Khawârij de notre époque. Parmi eux :
Le Sultân Mahmoûd II ;
Le Moufti de Médine, le Chaykh Mouhammad Al-Kourdi ;
L’Imâm Ibnou ‘Âbîdîn Al-Hanafi [ Dans son livre Raddou l-Mouhtâr ] ;
Le Qâdî ‘Outhmân Ibnou Mansoûr An-Nâsiri ;
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân ;
Le Chaykh ‘Abdoul-Lâh Al-Qaddoûmi An-Nâboulouçi Al-Madani Al-Hanbali ;
Le Chaykh As-Sayyid ‘Abdou l-Lâh Ibnou Haçan Bâchâ Ibnou Fadl Bâchâ Al-‘Alawi Al-Houçayni Al-Hijâzi ;
Le Chaykh Ahmad Raza (Ridâ) Khân ;
Un groupe d’environ trente savants (Imâms, Mouftis, Orateurs…) du Masjid Al-Harâm (grande mosquée de La Mecque) et de la mosquée du prophète (صلى الله عليه وسلم) à Médine, dans un document à destination de Mouhammad ‘Ali (gouverneur d’Egypte) pour le remercier de leur avoir envoyé une armée musulmane pour combattre les rebelles wahhabites. Dans cette lettre là ces savants définissent les wahhabites comme étant des Khawârij et des mécréants (moulhidîn).
Et bien d’autres…
– Les Khawârij sont une autre branche déviée qui se réclame de l’Islâm. C’est le premier des groupes égarés qui est apparus après le décès du prophète (صلى الله عليه وسلم). Les Wahhabites sont semblables aux Khawârij dans le fait de :
déclarer mécréant la masse des musulmans.
prendre les versets non-explicites selon leur sens apparent.
Combattre les musulmans par les armes.
– Attention : Lors d’une des éditions de cet ouvrage, les wahhabites ont procédé à une falsification malsaine en supprimant le passage dénonçant leur secte. Ainsi ils se sont permis de faire disparaître le passage suivant : « comme nous constatons à présent dans leurs manières d’agir ceux d’un groupe du hijâz qui sont appelés les Wahhabites qui pensent être sur la vérité alors que ceux sont eux les menteurs» . Ceci a eu lieu dans la version prétendument vérifiée par « Mouhammad ‘Abdou s-Salâm Châhîn » pour la maison d’édition Dâr al-Koutoub al-‘Ilmiyyah. Voir ci-dessous :
Voir aussi (toujours prétendument vérifiée par « Mouhammad ‘Abdou s-Salâm Châhîn » pour la maison d’édition Dâr al-Koutoub al-‘Ilmiyyah):
Voir également chez cette autre maison d’édition (Dâr Al-Jîl) où la partie dans laquelle le Chaykh As-Sâwi avait dit : « qui sont appelés les Wahhabites» a été effacée et un espace vide a été laissé à la place :
– Il ne s’agit pas du seul ouvrage que les wahhabites ont falsifié. Et ils ont suivis en cela leurs prédécesseurs corporalistes (moujassimah), qui eux aussi avaient pour habitude de falsifier les ouvrages des savants de l’Islâm, tout comme en témoigne l’Imâm Tâjou d-Dîn As-Soubki (m.771 H.) au sujet des Moujassimah (corporalistes) de son époque. Il a dit à leur sujet : « On constate chez les innovateurs, en particulier chez les Moujassimah (corporalistes), une particularité qu’on ne trouve pas chez les autres : ils ont recours au mensonge afin de rendre victorieuse leur doctrine. Ils utilisent notamment le faux témoignage à l’encontre de ceux qui les contredisent en attaquant leur personne et leurs biens par le mensonge afin de confirmer leur croyance […] certains Moujassimah (corporalistes) de notre époque en sont arrivés au point de falsifier le livre « Charh Sahîh Mouslim » du Chaykh Mouhyi d-Dîn An-Nawawi en effaçant des passages de An-Nawawi concernant ses explications des hadîth au sujet des Attributs [de Allâh]. Comme An-Nawawi est ach’arite, alors ce copiste n’a pas supporté de transcrire fidèlement ce livre de la manière dont il a été composé par son auteur. Ceci fait partie à mon avis des plus grands péchés, car il s’agit d’une falsification de la Charî’ah, et ceci est une porte ouverte vers la falsification en masse des livres qui passeront entre leurs mains ». [Dans son livre Tabaqâtou ch-Châfi’iyyati l-Koubrâ]
– Le Chaykh As-Sâwi Al-Mâliki fait également partie des nombreux savants qui ont dénoncé les égarements d’ Ibn Taymiyah (moujassim) . Ainsi dans ce même ouvrage il dénonce la plus grande référence des wahhabites, en disant : « Les savants ont dit que Ibn Taymiyah est un égaré qui égare » .
– Dans ce même ouvrage le Chaykh As-Sâwi confirme que le fait de croire que Allâh serait dans un endroit est de la mécréance [ Dans sa Hâchiyah sur le tafsîr al-Jalâlayn ].
– Retrouvez sur notre site d’autres mises en gardes des savants de Ahlou s-Sounnah contre la secte wahhabite :
Le Chaykh Mehmed Zâhid Kotku dénonce la mécréance des wahhabites et des autres assimilationnistes
Le Chaykh Soulaymân Ibn ‘Abdi l-Wahhâb dénonce la secte de son frère (les wahhabites)
Les savants de La Mecque et Médine déclarent mécréant les wahhabites [rapporté par Ibn Zayni Dahlân]
Le Moufti de La Mecque, le Chaykh Ibn Zayni Dahlan dénonce Mouhammad Ibn ‘Abdi l-Wahhab
Le Moufti de La Mecque Ibn Houmayd dénonce Mouhammad Ibn ‘Abdi l-Wahhab
Le Chaykh ‘Arabi At-Tabbâni dénonce la croyance d’Ibn Taymiyyah et des wahhabites
L’Imâm Ibnou ‘Âbidîn dénonce la secte wahhabite
– Retrouvez la rubrique sur les groupes égarés : ici .', '3oulama, ahlou s-sounnah, allah, anthropomorphiste'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وقيل هذه الآية نزلت في الخوارج الذين يحرفون تأويل الكتاب والسنة ويستحلون بذلك دماء المسلمين وأموالهم كما هو مشاهد الآن في نظائرهم وهو فرقة بأرض الحجاز يقال لهم الوهابية يحسبون أنهم على شئ إلا أنهم هم الكاذبون استحوذ عليهم الشيطان فأنساهم ذكر الله أولئك حزب الشيطان ألا إن حزب الشيطان هم الخاسرون نسأل الله الكريم أن يقطع دابرهم');

-- source: https://islamsunnite.net/imam-al-jouwayni-confirme-allah-a-pas-oeil/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’a pas d’oeil ni aucun autre organe.', 'Les Chafi''ites', 'قوله تعالى في الإنباء عن سفينة نوح عليه السلام: {تجري بأعيننا} [القمر: 14] ولم يثبت أحد من المنتمين إلى التحقيق أعينا لله تعالى. والمعنى بالأية أنها تجري بأعيننا، وهي منا بالمكان المحوط بالملائكة والحفظ والرعاية، يقال: فلان بمرأى من الملك ومسمع، إذ كان بحيث تحوطه عنايته وتكتنفه رعايته، وقيل المراد بالأعين فى هذه الآية، الأعين التي انفجرت من الأرض، وأضيفت إلى الله تعالى ملكا، وهذا غير بعيد', '« Concernant la parole de Allâh ta’âlâ au sujet l’arche de Noûh (‘alayhi s-Salâm) : {Tajrî bi A’youninâ} [verset 14 de Soûrat Al-Qamar], personne de parmi les savants vérificateurs n’a attribué des yeux à Allâh ta’âlâ. Le sens du verset est que l’arche voguait bi A’youninâ, c’est-à-dire dans un endroit entouré par les anges, préservé, et protégé. […] Il a été dit que le sens de « A’youn » dans ce verset désigne les sources qui ont jaillis de la terre, et elles sont annexées à Allâh pour indiquer la possession, et cela [cette explication] est acceptable.»', '', 'Dans son livre «Al-Irchâd ilâ Qawâti’i l-Adillah» (page 157 de cette édition), Imâm Al-Haramayn Al-Jouwayni a dit :
Informations utiles :
– Imâm Al-Haramayn (des deux Haram) Abou l-Ma’âli ‘Abdou l-Malik Ibnou ‘Abdi l-Lâh Al-Jouwayni, est né en 419 et il est décédé en 478 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 950 ans. C’est un grand savant reconnu par toute la communauté musulmane. Il était surnommé « Imâm al-Haramayn » c’est-à-dire l’Imâm des deux enceintes sacrées de La Mecque et Médine. Il était du madh-hab (Ecole de jurisprudence) de l’Imâm Ach-Châfi’i et il fût l’un des chouyoûkh de l’Imâm Aboû Hâmid Al-Ghazâli (رحمه الله).
Le Chaykh Aboû Is-hâq Ach-Chîrâzi a fait son éloge en lui disant : « Oh toi qui est profitable aux gens d’orient et d’occident, certes les premiers comme les derniers ont profité de ta science ». Il lui a dit également : « Tu es en ce jour, l’Imâm des Imâms » [Dhayl Târîkh Baghdâd]
‘Abdou l-Ghaffâr Al-Fâriçi a dit de lui : « Imâm Al-Haramayn (des deux Haram), la fierté de l’Islâm, l’Imâm de la Oummah dans l’absolue, le docte dans la charî’ah, celui qui a réunis le statut d’Imâm en orient et en occident » [Al-Mountakhab]
Le Hâfidh Ibn Najjâr Al-Baghdâdi a dit à son sujet : « Il est un Faqîh (spécialiste de la jurisprudence) Chafi’ite, il est surnommé Imâm Al-Haramayn […] il est l’Imâm des fouqahâ (spécialistes de la jurisprudence) d’orient et d’occident […] il est parvenu au degré de l’ijtihâd» [Dhayl Târîkh Baghdâd]
‘Abdou l-Lâh Ibn Yoûçouf Al-Jarjâni a dit : « Abou l-Ma’âli Al-Jouwayni est l’Imâm de son temps » [Dhayl Târîkh Baghdâd]
– Ici il aborde le verset {Tajrî bi A’youninâ} et il explique que le terme « A’youn » ne signifie pas que Allâh aurait des yeux, mais que cela signifie que l’Arche de Noûh (‘Alayhi s-Salâm) était sous la préservation de Allâh. Ou encore que le terme « A’youn » dans ce verset peut désigner les sources d’eau qui ont jaillis de la terre.
– De nombreux savants ont tenus des propos similaires :
L’Imâm Soufyân Ibnou ‘Ouyaynah a dit au sujet du verset {Tajrî bi A’youninâ} « C’est-à-dire : par Notre ordre» [Rapporté par At-Tabari et Al-Baghâwi dans leurs Tafsîr]
L’Imâm Az-Zajjâj a dit concernant le verset {wasna’i l-foulka bi a’youninâ} : « La signification de « Bi A’youninâ » est à Notre vue et par Notre préservation à ton égard » [ Dans son tafsîr « Ma’âni Al-Qour-ân» ].
L’Imâm Al-Moutawalli Ach-Châfi’i a dit : « Quant à la parole de Allâh ta’âlâ : {Tajrî bi A’youninâ} [verset 14 de Soûrat Al-Qamar], ce qui en est visé sont les sources qui ont jaillis de la terre, et leur annexion au nom de Allâh est pour indiquer la possession » [ Dans son livre Al-Ghounyah ]
L’Imâm Ibnou ‘Atiyyah a dit : « La parole de Allâh {Tajrî bi A’youninâ} : la majorité (al-joumhoûr) a dit que cela signifie : par Notre préservation » [Dans son Tafsîr] .
L’Imâm Fakhrou d-Dîn Ar-Razi a dit : « La parole de Allâh {Tajrî bi A’youninâ} c’est-à-dire à Notre vue ou par Notre préservation.» [Dans son Tafsîr] .
L’Imâm Al-Qourtoubi a dit : « La parole de Allâh {Tajrî bi A’youninâ} c’est-à-dire à Notre vue. Et il a été dit : par Notre ordre. Et il a été dit : par Notre préservation. Et il a été dit : par Notre révélation. Et il a été dit que ce qui est visé par « A’youn » sont les sources sortant de la terre. Et il a été dit que « A’youn » signifie les saints de parmi les anges qui étaient chargé de préserver l’arche. Et tout ce que Allâh a créé, il est permis de Lui annexer» [Dans son Tafsîr].
L’Imâm Al-Baydâwi a dit : « La parole de Allâh {Tajrî bi A’youninâ} à Notre vue, c’est-à-dire une préservation de parmi Nos préservations» [Dans son Tafsîr].
L’Imâm An-Naçafi a dit : « La parole de Allâh {Tajrî bi A’youninâ} c’est-à-dire à Notre vue ou par Notre préservation.» [Dans son Tafsîr].
L’Imâm Al-Khâzin a dit : « La parole de Allâh {Tajrî bi A’youninâ} c’est-à-dire à Notre vue. Et il a été dit : par Notre préservation. Et il a été dit : par Notre ordre.» [Dans son Tafsîr].
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {تَجْرِي بِأَعْيُنِنَا} (tajrî bi A’youninâ) : c’est-à-dire par Notre préservation et Notre protection » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân].
Ibn Kathîr a donné une explication similaire en disant : « La parole de Allâh {Tajrî bi A’youninâ} c’est-à-dire par Notre ordre, Notre protection et sous Notre préservation.» [Dans son Tafsîr].
Et beaucoup d’autres…
– Ainsi ce verset ne signifie en aucun cas que Allâh aurait des yeux. De plus le terme « A’youn » est le pluriel du terme « ‘ayn ». Et dans la langue Arabe le pluriel s’utilise à partir de trois. Ainsi celui qui se base sur ce verset pour attribuer les yeux à Allâh, il lui aura attribué au minimum trois yeux. Que Allâh nous préserve du chirk !
– L’Imâm At-Tahâwi (رحمه الله) qui fait partie des illustres savants du salaf a dit dans son traité présentant la croyance de l’ensemble des gens de la Sounnah : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres. Les six directions ne Le délimitent pas, contrairement à toutes les créatures » [ Al-‘Aqîdah At-Tahâwiyyah ].
– L’Imâm Abou l-Haçan Al-Ach’ari a dit au sujet de Allâh : « Il a un ‘ayn sans comment (bilâ kayf)». [Dans son livre Al-Ibânah, d’après Ibnou ‘Açâkir dans son livre Tabyînou kadhibi l-Mouftarî]. Le comment (kayf) c’est ce par quoi on décrit les créatures, comme la forme, la taille, le poids, la couleur, le mouvement, l’immobilité etc. Ainsi, en niant le comment (kayf), l’Imâm Abou l-Haçan Al-Ach’ari a nié le fait que le terme ‘ayn au sujet de Allâh vienne dans le sens de la partie corporelle, c’est-à-dire de l’œil.
– L’Imâm Al-Khattâbi a dit : « Il est confirmé l’attribut de la vue et de l’ouïe au sujet de Allâh, mais Il n’est pas attribué de l’oreille et de l’œil car ce sont des organes». [Charh Sounan Abî Dâwoûd]
– L’Imâm Al-Bayhaqi a dit : «Son « ‘ayn » n’est pas un globe oculaire [un oeil]» . [ Dans son livre Al-I’tiqâd ]
– L’Imâm Al-Bayhaqi a dit aussi concernant l’attribut du ‘ayn : «Il s’agit d’un attribut qui n’est pas un globe oculaire [un oeil]» [Al-Asmâ-ou wa s-Sifât]
– L’Imâm An-Naçafi (m.508 h.) a dit : « Allâh voit sans œil » [ Dans son livre Bahrou l-Kalâm ]
– L’Imâm Ahmad Ar-Rifâ’i a dit : «Ne dites pas que le yad et le ‘ayn [au sujet de Allâh] sont des organes » [Dans son livre Al-Bourhânou l-Mou-ayyad]
– L’Imâm Ahmad Ar-Rifâ’i a dit également au sujet de Allâh : « Il voit sans globe oculaire [c’est-à-dire sans œil] ni paupières, Il entend sans tympans ni oreilles » [Ad-Dourratou s-Sâmiyah fî Ma’rifati fadâ-ili souloûki t-Tarîqati r-Rifâ’iyyah]
– L’Imâm Ahmad Ar-Rifâ’i a dit aussi au sujet de Allâh : « Il entend sans oreille, Il voit sans globe oculaire [c’est-à-dire sans œil] et Il parle sans langue. » [Al-Majâlis ar-Rifâ’iyyah]
– L’Imâm Al-Marjâni At-Toûniçi Al-Mâliki (m. 699 H.) a dit au sujet de Allâh: « Il ne voit pas par le biais d’un globe oculaire [œil] ni d’une paupière » . [I’tiqâdou Ahli s-Sounnah wa ‘Oulamâ-i l-Oummah]
– Le Chaykh Abou l-Mountahâ Al-Hanafi a dit : « La vue de Allâh qui est Son attribut qui est éternel, sans organe (lâ bi l-âlah)» [Dans son charh du livre Al-Fiqh Al-Akbar] ;
– Le Moufti de La Mecque, le Chaykh Ahmad Ibn Zaynî Dahlân dit au sujet de Allâh : « Il voit sans globe oculaire [c’est-à-dire sans oeil] ni paupières » [Charh Al-‘Aqîdah al-Moukhtasarah]
– Le Chaykh Mouhammad Ibn ‘Oumar Nawawi Al-Jâwi a dit : « Allâh voit sans œil » [Dans son livre Mirqâh Sou’oûdi t-Tasdîq]
– Le Mouhaddith ‘Abdou l-Bâsit Al-Fâkhoûri a dit : « [L’attribut de Allâh de] la vue : Il s’agit d’un attribut éternel sans début, propre à Son Être ta’âlâ, sans globe oculaire [œil] ni paupières » [Al-Kifâyah li Dhawi l-‘Inâyah]
– Le Chaykh Mouhammad Al-Mourâkouchi Al-Mâliki Al-Mouwaqqit a dit : « Le sens du fait que Allâh soubhânah entend et voit est qu’Il entend tout ce qui est audible que ce soit de faible volume ou fort, et qu’Il voit ce qui est visible que ce soit caché ou apparent, mais sans oreille et sans œil (‘ayn) et sans organe, car les organes font partis des attributs de ce qui entre en existence » [Al-Hablou l-Matîn ‘alâ Nadhmi l-Mourchidi l-Mou’în]
– Retrouvez d’autres paroles de savants sur le thème : Allâh n’est pas un corps et n’a pas d’organes : ici .
– Retrouvez d’autres paroles de savants sur le thème : Attribuer le corps à Allâh est de la mécréance : ici .', '3ayn, a''younina, allah, allah n''a pas d''oeil'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قوله تعالى في الإنباء عن سفينة نوح عليه السلام: {تجري بأعيننا} [القمر: 14] ولم يثبت أحد من المنتمين إلى التحقيق أعينا لله تعالى. والمعنى بالأية أنها تجري بأعيننا، وهي منا بالمكان المحوط بالملائكة والحفظ والرعاية، يقال: فلان بمرأى من الملك ومسمع، إذ كان بحيث تحوطه عنايته وتكتنفه رعايته، وقيل المراد بالأعين فى هذه الآية، الأعين التي انفجرت من الأرض، وأضيفت إلى الله تعالى ملكا، وهذا غير بعيد');

-- source: https://islamsunnite.net/le-chaykh-abdou-l-lah-al-ghoumari-confirme-que-allah-est-sans-endroit-quil-na-pas-de-forme-ni-dimage/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La croyance musulmane.', 'Ghoumari (''Abdou l-Lah)', 'الحمد لله الكبير المتعال، المنعوت بنعوت الجلال، الموصوف بصفات الكمال، تنزه عن الشكل و الصورة و المثال، و تعالى أن يكون في مكان أو يمر عليه زمان', 'La louange est à Allâh Al-Kabîr Al-Mouta’âl, Celui Qui est attribué des attributs éminents, Qui est attribué des attributs de perfection. Celui qui est exempt de la forme, de l’image et du semblable. Celui Qui est exempt d’être dans un endroit et exempt du fait que le temps s’écoule sur Lui', '', 'Dans son livre « Al-Fawâ-id Al-Maqsoûdah », Le Chaykh ‘Abdou l-Lâh Al-Ghoumâri a dit :
Informations utiles :
– Al-‘Allâmah (l’illustre savant), le Mouhaddith (spécialiste de la science du hadîth) du Maghreb, le Chaykh Abou l-Fadl ‘Abdou l-Lâh Ibnou Mouhammad As-Siddîq Al-Ghoumâri Al-Hassani est décédé en 1413 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 30 ans.
– Ici, dans l’introduction de son ouvrage, il confirme la croyance de l’unanimité des musulmans, sur le fait que Allâh existe sans endroit, qu’Il ne dépend pas du temps, qu’Il n’a pas de forme ni d’image ni de semblable.
– L’Imâm Al-Khattâbi a dit : « Ce qui est un devoir pour nous et pour tout musulman, c’est de savoir que notre Seigneur n’est pas un être possédant une image ou une forme, car certes, l’image implique le comment et le comment s’agissant de Allâh et de Ses attributs est exclu » [ Rapporté par Al-Bayhaqi ]
– Le Chaykh, le Faqîh Aboû Chakoûr As-Sâlimi Al-Hanafi (m.~460 H.) a dit au sujet des Mouchabbihah (ceux qui ont pour croyance que Allâh ressemble aux créatures) : « Parmi eux certains disent que « Allâh ta’âlâ a une image mais qu’on ne la connait pas » et cela est de la mécréance » [Dans son livre At-Tamhîd fî Bayâni t-Tawhîd]
– Le Chaykh ‘Abdou l-Lâh Al-Ghoumâri a dit aussi dans un autre de ses ouvrages : « Allâh est de toute éternité et rien d’autre que Lui n’est de toute éternité, il n’est de toute éternité ni temps ni endroit, ni périmètre, ni instant, ni Trône, ni anges, ni astres, ni planètes. Il fait exister le monde sans en avoir besoin et s’Il le voulait Il ne le ferait pas exister. Tout ce monde avec ce qu’il contient de substances (jawhar) et de caractéristiques qui adviennent au corps (‘arad) tout cela est passé du néant à l’existence. Il n’y a pas dans tout cela quoi que ce soit qui soit de toute éternité tout comme l’indique la preuve rationnelle et tout comme le rapportent les preuves textuelles. Toutes les communautés sont d’accord sur ce point, mis à part l’aberration des philosophes qui ont prétendu que ce monde est sans début ; ce sont incontestablement des mécréants » [ Dans son livre Qisasou l-Ambiyâ : Âdam ‘alayhi s-salâm ]', 'ahlou s-sounnah, allah, aqida, book'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'الحمد لله الكبير المتعال، المنعوت بنعوت الجلال، الموصوف بصفات الكمال، تنزه عن الشكل و الصورة و المثال، و تعالى أن يكون في مكان أو يمر عليه زمان');

-- source: https://islamsunnite.net/le-chaykh-ahmadou-bamba-confirme-que-la-parole-de-allah-nest-pas-de-lettre-ni-de-son/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La parole de Allâh n’est pas de lettre ni de son.', 'Unanimité', 'مباينا أيضا لجنس الحرف و الصوت و الفكرة دون خلف', '[Sa parole] n’est pas du genre des lettres, des sons et de ce que l’on pourrait imaginer, et ceci sans divergence', '', 'Dans son livre « Mawâhibou l-Qouddoûs », le Chaykh Ahmadou Bamba a dit au sujet de l’attribut de Allâh de la parole (al-Kalâm) :
Informations utiles :
– Le Chaykh Ahmad Ibn Mouhammad Ibn Habîbou l-Lâh Bamba Al-Baki Al-Mâliki connu sous le nom de Ahmadou Bamba est décédé en 1345 de l’hégire (رحمه الله), c’est-à-dire il y a environ 90 ans. Il fait partie des savants les plus connus d’Afrique de l’ouest.
– Ici, le Chaykh Ahmadou Bamba explique l’attribut de la parole de Allâh (al-kalâm) et il dit que Sa parole n’est pas du genre des lettres ni des sons, et ceci sans divergence. C’est-à-dire que ceci fait l’objet de l’unanimité. En effet, Allâh a pour attribut la parole et Il parle sans langue, ni lèvres, ni voix, ni sons, ni lettres. Sa parole n’est pas une langue arabe, ni aucune autre langue et Sa parole ne ressemble pas à la parole des humains. En effet la parole de Allâh est un attribut de toute éternité alors que les lettres, les sons et les langues sont entrés en existence. Ainsi il ne Lui advient pas de silence ni d’entrecoupement car Sa parole n’est pas constituée de lettres ni de son.
– Allâh ta’âlâ dit : { وَكَلَّمَ اللهُ مُوسَى تَكْلِيمًا } [Soûrat An-Niçâ/ 146] ce qui a pour sens : « Allâh a assurément parlé à Moûçâ » .
– Le mot Qour-ân a deux sens :
1- Le premier sens désigne l’attribut de parole de Allâh qui n’a pas de ressemblance avec la parole des créatures qui n’a pas de début ni de fin, qui est sans organes ni lettres.
2- Le deuxième sens du mot Qour-ân désigne les termes révélés au prophète Mouhammad (صلى الله عليه وسلم) qui sont en langue arabe, ils sont créés par Allâh; ces termes sont une expression de l’attribut de la parole de Allâh, ainsi l’attribut de Parole de Allâh n’est pas une langue arabe ni une autre langue ; dans ce cas nous pouvons dire des termes révélés qui sont en langue arabe que c’est la parole de Allâh dans le sens que c’est une expression de l’attribut de la parole de Allâh qui n’est pas des sons ni une langue arabe ni autre, qui ne ressemble pas à la parole des créatures ; ainsi si nous écrivons Allâh, ce mot là n’est pas Le Créateur Lui même mais c’est une expression qui désigne Le Créateur, de même Qour-ân dans le sens des termes révélés n’est pas l’attribut de parole même de Allâh mais c’est une expression de l’attribut de la parole de Allâh qui n’est pas des sons ni une langue arabe ni autre, qui ne ressemble pas à la parole des créatures, qui n’a pas de début ni de fin.
– Le Hâfidh Ibnou l-Qattân Al-Fâçi Al-Mâliki (m.628 H.) a dit : « Et ils [les gens de la Sounnah, du Salaf et du Khalaf] ont été unanimes sur le fait que la parole de Allâh n’est pas de lettres ni de sons » [Al-Iqnâ’]
– De nombreux savants ont tenus des propos similaires. Parmi eux :
L’Imâm Aboû Hanîfah qui a dit : « Et Il (Allâh) parle, pas comme nous parlons. Nous, nous parlons grâce à des organes et des lettres, alors que Allâh ta’âlâ parle sans organes et sans lettres. Les lettres sont créées alors que la Parole de Allâh ta’âlâ n’est pas créée. » [ Al-Fiqh al-Akbar ]
L’Imâm Jounayd Al-Baghdâdi qui a dit au sujet de Allâh : « Son Être est exempt des limites, Sa parole est exempte des lettres, ainsi il n’y a pas de limite à Son Être, et Sa parole n’est pas de lettres » [Rapporté par Al-Bâqillâni dans son livre Al-Insâf]
L’Imâm At-Tahâwi qui a dit : « Le Qour-ân est la parole de Allâh révélé par Lui, il s’agit d’une parole sans comment (bila kayfiyyah) » [Al-‘Aqîdah At-Tahâwiyyah] En niant le comment (kayfiyyah) l’Imâm At-tahâwi a explicitement nié les lettres, les sons et les voix ;
L’Imâm Abou l-Haçan Al-Ach’ari qui a dit : « Allâh ta’âlâ a fait entendre à Moûçâ Sa parole éternelle qui n’est pas de lettre ni de son » [Rapporté par Ar-Râzi dans son Tafsîr] ;
L’Imâm Aboû Mansoûr Al-Mâtourîdi qui a dit : « Car Sa parole qui Lui est attribué [à Allâh] de toute éternité, n’est pas qualifié de lettre, ni d’alphabet, ni de son, ni d’une chose par laquelle on qualifie la parole de ce qui est créé » [Ta-wîlât Ahlou s-Sounnah] ;
L’Imâm Ibnou Hibbân qui a dit : « Il n’y a pas de comment aux attributs de Allâh jalla wa ‘alâ, et ils ne sont pas comparé aux attributs des créatures. Ainsi Allâh a pour attribut la parole, sans appareils tels que des dents, une luette, une langue, et des lèvres comme c’est le cas des créatures. Notre Seigneur est totalement exempt de telles comparaisons. Et il n’est pas permis de faire une similitude entre Sa parole et notre parole, car la parole des créatures n’a lieu que par le biais d’appareils, alors que Allâh parle comme Il le veut sans appareils. » [ Dans son Sahîh ] ;
L’Imâm Al-Kalâbâdhi Al-Hanafi qui a dit : « Certes la parole de Allâh ta’âlâ n’est pas de lettre ni de son » [At-Ta’arrouf] ;
L’Imâm Al-Bâqillâni qui a dit : « Il est un devoir de savoir que la parole de Allâh ta’âlâ qui est sans début, n’est pas attribuée de lettres, de sons ni d’une chose qui fait partie des attributs de la création » [ Al-Insâf ] ;
L’Imâm Aboû Mansoûr Al-Baghdâdi lorsqu’il a parlé de la secte égaré des mouchabbihah (assimilationnistes), il a dit : « Parmi eux certains ont assimilé la parole de Allâh ‘azza wa jall à la parole de Ses créatures, et ils ont prétendu que la parole de Allâh ta’âlâ serait de sons et de lettres, du genre des sons et des lettres dont sont qualifié les esclaves [de Allâh]» [Al-Farqou bayna l-Firaq] ;
L’Imâm Al-Bayhaqi ;
L’Imâm Al-Isfarâyîni (471 H.) qui a dit : « Certes la parole de Allâh ta’âlâ est sans lettre ni son » [At-Tabsirou fi d-Dîn] ;
L’Imâm Al-Jouwayni (m.478 H.) qui a dit « Certes la parole [de Allâh], selon les gens de la vérité, est propre à Son Être, elle n’est pas de lettre ni de son » [Al-Irchâd] ;
L’Imâm Al-Ghazâli qui a dit : « Allâh soubhânahou wa ta’âlâ a la parole qui est un attribut qui est propre à Son Être, qui n’est ni de son ni de lettre, mais Sa parole ne ressemble pas à la parole d’autre que Lui. » [Ihyâ-ou ‘Ouloûmi d-Dîn] ;
L’Imâm An-Naçafi (m.508 H.) qui a dit au sujet de la parole de Allâh : « Elle est sans lettre ni son » [Bahrou l-Kalâm] ;
L’Imâm Aboû ‘Ali Al-Haçan Ibn ‘Atâ qui a dit : « Allâh (Al-Qadîm) n’a pas de début à Son existence, et il n’y a pas de lettre ni de son qui n’ont pas de début à leurs existences » [Rapporté de lui par l’Imâm Ibn Mou’allim Al-Qourachi dans son livre : Najmou l-Mouhtadî] ;
L’Imâm An-Naçafi (m.537 H.) qui a dit : « Allâh parle d’une parole qui est un attribut à Lui et qui est de toute éternité, qui n’est pas du genre des lettres et des sons […] Allâh ta’âlâ est attribué par cet attribut, la parole, par lequel Il ordonne, interdit, informe et le Qour-ân est la parole de Allâh ta’âlâ, il n’est pas créé » [ Al-‘Aqîdatou n-Naçafiyyah ] ;
L’Imâm Ahmad Ar-Rifâ’i (m.578 H.) a dit au sujet de Allâh : « Il parle, Il ordonne, interdit, promet et menace par une parole qui n’a ni début ni fin et qui est propre à Son Être. Elle n’a pas de ressemblance avec la parole des créatures. Elle n’est pas un son produit par l’écoulement de l’air ou par le choc de corps entre eux, ni des lettres qui sont prononcées en fermant une lèvre ou en bougeant une langue. » [Ad-Dourratou s-Sâmiyah fî Ma’rifati fadâ-ili souloûki t-Tarîqati r-Rifâ’iyyah] ;
L’Imâm Ahmad Ar-Rifâ’i (m.578 H.) a dit : « Nous croyons que Moûçâ a entendu la parole de Allâh sans lettre, ni son. » [Ad-Dourratou s-Sâmiyah fî Ma’rifati fadâ-ili souloûki t-Tarîqati r-Rifâ’iyyah] ;
L’Imâm Ahmad Ar-Rifâ’i a dit aussi au sujet de Allâh : « Il parle sans langue. » [Al-Majâlis ar-Rifâ’iyyah] ;
Le Moufassir Ibn ‘Atiyyah qui a dit : « La parole de Allâh au prophète Moûçâ (‘alayhi s-Salâm), est sans comment (takyîf), ni limite, elle n’implique pas d’entrée en existence, et elle n’est pas de lettre ni de son » [Dans son tafsîr, Soûrat An-Niçâ/164] ;
L’Imâm Aboû Madyan qui a dit : « On n’attribue pas à Allâh les lettres et les sons » [ Dans son traité de croyance ] ;
Le Chaykh Tâjou d-Dîn Mouhammad Ibn Hibati l-Lâh Al-Makki dans son ouvrage en vers «Hadâ-iqou l-Fousoûl wa jawâhirou l-Ousoûl» dans la science du tawhîd qu’il dédia au sultan combattant Salâhou d-Dîn Al-Ayyoûbi. Celui-ci la reçu avec intérêt et alla jusqu’à ordonner de l’enseigner aux enfants dans les écoles, au point que ce traité de croyance est à présent connu sous le nom de «Al-‘Aqîdah As-Salâhiyyah».
Le Chaykh Ismâ’îl Ibn Ibrâhîm Ach-Chaybâni Al-Hanafi qui a dit : « La parole de Allâh n’est pas concernée par les lettres et les sons » [Charh ‘Aqîdah At-Tahâwiyyah] ;
L’Imâm Ibn ‘Abdi s-Salâm qui a dit : « Allâh parle avec une parole sans début qui n’est pas de lettre ni de son » [Raçâ-il fi t-Tawhîd] ;
L’Imâm Al-Qourtoubi qui a dit : « La parole de Allâh n’est pas de lettre ni de son » [Dans son Tafsîr – Soûrat At-Tawbah/6] ;
L’Imâm Al-Qourtoubi a dit également : « Sa parole (du prophète) dans le hadîth [qui a pour sens : ] « Il les appelle au moyen d’un son » cela a été utilisé comme preuve par ceux qui ont dit que Allâh parle au moyen de lettres et de sons, or Allâh est exempt de ce que disent les corporalistes (moujassimoûn) et les négationnistes (jâhidoûn); il faut plutôt attribuer l’appel annexé à Allâh, à certains anges honorées et ce par la volonté de Allâh et par Son ordre. » [At-Tadhkirah] ;
L’Imâm Al-Marjâni At-Toûniçi Al-Mâliki (m. 699 H.) a dit au sujet de Allâh: « Il parle, d’une parole éternelle sans début, qui n’est pas de lettres ni de sons » . [I’tiqâdou Ahli s-Sounnah wa ‘Oulamâ-i l-Oummah] ;
Le Chaykh Charafou d-Dîn Ibn At-Tilimçâni qui a dit : « Les Karrâmiyyah [secte corporaliste] ont prétendu qu’il adviendrait au Créateur (Al-Bâri’) ta’âlâ des paroles composées de lettres et de sons » [Charh Louma’ Al-Adillah] ;
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Nous disons que Le Créateur du monde (jalla jalâlouh) parle d’une parole éternelle sans début, unique, propre à Son Être, qui n’est pas du genre des lettres et des sons » [Al-Qalâ-id fî Charh Al-‘Aqâ-id] ;
Le Chaykh Al-Bâbirti Al-Hanafi (m.786 H.) a dit : « Tout cela vient confirmer la négation de l’entrée en existence de la parole [de Allâh] et du fait qu’elle soit du genre des lettres et des sons et qu’elle ressemblerait à la parole des créatures. Certes, celui qui dit que le Qour-ân (l’attribut de la parole de Allâh) est créé, qu’il est entré en existence et qu’il est du genre des lettres et des sons, alors il aura attribué à Al-Bârî (Allâh) ce qu’on attribue aux humains» [Dans son commentaire de la tahâwiyyah] ;
L’Imâm Ibnou Hajar Al-‘Asqalâni ;
Le Moufassir Ath-Tha’âlibi qui a dit : « Allâh a parlé à Moûçâ, d’une parole sans comment (takyîf), qui n’est pas limité, qui n’est pas de lettre ni de son » [Dans son tafsîr « Al-Jawâhir Al-Hissân» Soûrat An-Niçâ/164] ;
L’Imâm As-Sanoûçi qui a dit : « … et [Allâh a pour attribut] la parole qui n’est pas de lettre ni de son » [ Dans son célèbre traité de croyance ] ;
Dans un autre de ses traités de croyance, l’Imâm As-Sanôuçi confirme ses propos en disant : « Il est obligatoire au sujet de Allâh ta’âlâ […] [l’attribut de] la parole qui n’est pas de lettre ni de son » [Dans son traité de croyance Al-Hafîdah -connu également sous de nom de Soughrâ Soughra l-Soughrâ-]
Le Chaykh Kamâlou d-Dîn connu sous le nom de Ibnou Abî Charîf Al-Maqdissi Ach-Châfi’i ;
Le Chaykh Abou l-Mountahâ Al-Hanafi qui a dit : « Allâh ta’âlâ parle avec Sa parole qui est Son attribut éternel sans début, et la parole de Allâh ta’âlâ ne ressemble pas à la parole des créatures, car les créatures parlent avec des organes et des lettres, alors que Allâh ta’âlâ parle sans organes ni lettres » [Dans son charh du livre Al-Fiqh Al-Akbar] ;
Le Chaykh Moullâ ‘Ali Al-Qâri qui a dit : « Les innovateurs [se réclamant] Hambalites ont dit : la parole de Allâh est de lettres et de sons » et il a dit également : «Les Mâchaykh, que Allâh leur fasse miséricorde, ont mentionné que l’on dit : “Le Qour-ân qui est la parole de Allâh n’est pas créé”, et qu’on ne dit pas :”le Qour-ân n’est pas créé [c’est-à-dire sans préciser que l’on parle de l’attribut de la parole de Allâh]” afin que personne ne comprenne que ce qui est composé de sons et de voix serait sans début, comme l’ont pensé certains ignorants [se réclamant] Hambalites» [Charh Al-Fiqh Al-Akbar] ;
Le Chaykh Mayyârah Al-Mâliki qui a dit : « Ainsi Sa parole n’est pas comme notre parole dans le fait d’être par des lettres et des sons » [Moukhtasar Ad-Dourrou th-Thamîn] ;
Le Chaykh ‘Abdou l-Ghani An-Nâboulouçi qui a dit : « Allâh a [pour attribut] la parole qui n’est pas similaire à ce que nous connaissons, elle est exempte de sons et de lettres » [Mouqtada ch-Chahâdatayn] ;
Le Chaykh Ahmad Ad-Dardîr Al-Mâliki qui a dit : « La parole de Allâh n’est pas de lettres » [Al-Kharîdah al-Bahiyyah] ;
Le Chaykh Khâlid Al-Baghdâdi An-Naqchabandi qui a dit : « L’attribut de la parole est confirmée [pour Allâh], et elle n’est ni de lettre ni de son » [Al-Îmân wa l-Islâm] ;
Le Chaykh Mouhammad Ibn A’mar An-Nâbighah Al-Ghalâwi a dit : « Il est un devoir au sujet de Allâh, une parole unique qui n’est pas de sons ni de lettres » [Al-Moubâchir ‘ala Bni ‘Âchir]
Le Mouhaddith ‘Abdou l-Bâsit Al-Fâkhoûri qui a dit : « [L’attribut de Allâh de] la parole : Il s’agit d’un attribut éternel sans début, propre à Son Être ta’âlâ, qui n’est pas de lettre ni de son » [Al-Kifâyah li Dhawi l-‘Inâyah]
Le Chaykh Ahmadou Bamba [voir ci-dessus];
Le Chaykh Al-Mârighni At-Toûniçi Az-Zaytoûni qui a dit : « La parole [de Allâh] est un attribut éternel, propre à Son Être ta’âlâ, qui n’est pas de lettre ni de son et qui est exempt du fait d’être de faible volume ou de fort volume » [Tâli’ou l-Bouchrâ] ;
Le Chaykh Mahmoûd As-Soubki Al-Azhari qui a dit : « Sa parole ta’âlâ n’est pas de lettre ni de son et elle n’est pas caractérisée du fait d’être de fort ou faible volume » [Ad-Dînou l-Khâlis] ;
Le Chaykh ‘Abdou l-‘Alîm Al-Haddâdi Ach-Châfi’i Al-Azhari qui a dit : « La parole de Allâh est exempte des lettres et des sons » [Al-Khilâsatou s-Sounniyyah fî Charhi l-Matni s-Sanoûçiyyah] ;
Le Chaykh Mouhammad Al-Mourâkouchi Al-Mâliki qui a dit : « Sa parole soubhânah n’est pas de lettre ni de son » [Al-Hablou l-Matîn] ;
Le Chaykh Al-Kawthari qui a dit : « Il n’y a aucun hadîth authentique concernant l’attribution du son à l’égard de Allâh » [Maqâlâtou l-Kawthari] ;
Le Chaykh ‘Abdou l-Lâh Al-Harari qui a dit : « Sa parole n’est pas un son produit par l’écoulement de l’air ou par le choc de corps entre eux, ni des lettres qui sont prononcées en fermant une lèvre ou en bougeant une langue. Nous croyons fermement que Moûçâ a entendu la parole de Allâh exempte de début, sans lettre, ni son » [As-Sirât Al-Moustaqîm] ;
Et beaucoups d’autres…
– Les mouchabbihah (assimilateurs) ont contredit la croyance des musulmans sur ce sujet, en prétendant que la parole de Allâh serait de lettres et de sons. Parmi eux :
Ibn Taymiyah (moujassim) [ voir : ici (arabe) ] ou [ voir : ici (français) ].
Ibn ‘Outhaymîn (wahhabite) qui a dit : « La parole de Allâh est de lettre et de son » [ Dans son livre : Majmoû’ Fatâwâ tome 1 page 212 ].
Et d’autres de parmi les mouchabbihah… que Allâh nous préserve de l’égarement.
– Le Messager de Allâh (صلى الله عليه وسلم) a dit dans un hadîth Sahîh rapporté par Al-Boukhâri et autre :', 'afrique, ahmadou, ahmadou bamba, al-baki'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'مباينا أيضا لجنس الحرف و الصوت و الفكرة دون خلف');

-- source: https://islamsunnite.net/limam-ibn-abdi-s-salam-confirme-que-listiwa-de-allah-nest-pas-un-etablissement/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas établi sur le trône.', 'Ibn ''Abdi s-Salam', 'استوى على العرش المجيد على الوجه الذي قال، وبالمعنى الذي أراده، استواء منزها عن المماسّة والاستقرار والتمكن والحلول والانتقال، فتعالى الله الكبير المتعال عما يقوله أهل الغي والضلال، لا يحمله العرش، بل العرش وحملته محملون بلطف قدرته، مقهورون في قبضته، أحاط بكل شيء علما، وأحصى كل شيء عددا', 'istiwâ ‘ala l-‘arch al-majîd comme Il nous l’a appris, et dans le sens qu’Il a visé d’un istiwâ qui est exempt du contact, de l’établissement, du fait d’être dans un endroit, du déplacement, ainsi Allâh Al-Kabîr Al-Mouta’âl est totalement exempt de ce que disent à Son sujet les gens de l’hérésie et de l’égarement. Et le trône ne Le porte pas mais plutôt c’est le trône et les porteurs du trône qui sont portés par la grâce de Sa toute-puissance et ils sont sous Sa domination, et Allâh englobe toute chose par Sa science et dénombre toute chose parfaitement', '', 'Dans son livre « Tabaqâtou ch-Châfi’iyyati l-Koubrâ », l’Imâm Tâjou d-Dîn As-Soubki rapporte que l’Imâm Ibnou ‘Abdi s-Salâm a dit au sujet de Allâh :
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
– Ici, il explique clairement que l’istiwâ de Allâh n’est pas un établissement, ni un contact, ni le fait d’occuper un endroit, et que le Trône ne Le porte pas. Au contraire le Trône et les porteurs du trône sont porté par Sa toute-puissance.
– L’Imâm Al-Ghazâli a tenu des propos similaire en disant : « Et Allâh est “istawâ ‘ala l-‘Arch” (le Trône), tel qu’Il l’a révélé et avec le sens qu’Il a voulu, d’un “istiwâ” exempt du contact, de l’établissement, du fait d’être dans un endroit, d’être incarné ou d’être en mouvement. Il n’est pas porté par le Trône, au contraire, le Trône est porté grâce à Sa puissance et Sa grâce. » [ Ihyâ-ou ‘Ouloûmi d-Dîn ]
– Cette citation de l’Imâm Ibnou ‘Abdi s-Salâm provient de son propre livre « Moulhatou l-I’tiqâd ».
– Dans un autre de ses ouvrages, l’Imâm Ibnou ‘Abdi s-Salâm a dit : « L’istiwâ de Allâh sur le Trône est un sens figuré (majâz) indiquant Sa domination par la toute-puissance (istîlâ) sur Ses créatures (Moulkouhou) et Sa prédestination» [Al-Ichârah Ila l-Îjâz]
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
– Dans ce même livre, l’Imâm Ibnou ‘Abdi s-Salâm a dit également : « Allâh n’est pas un corps qui aurait une image ni une substance limitée qui aurait une quantité. Il n’a pas de ressemblance avec quoi que ce soit et rien n’a de ressemblance avec Lui. Il n’est pas entouré par les directions. Il n’est pas contenu par les terres et les cieux. Son existence prime sur la création de l’endroit. Il a établi le temps et Il est maintenant tel qu’Il est de tout éternité » . [ Dans son livre Moulhatou l-I’tiqâd ]
– Dans d’autres de ses ouvrages, l’Imâm Ibnou ‘Abdi s-Salâm a confirmé cette croyance. En effet il a expliqué la parole de l’Imâm Aboû Hanifah : « Celui qui dit : Je ne sais pas si Allâh ta’âlâ est au ciel ou sur terre est devenu mécréant» en disant : « Car cette parole donne l’illusion que Allâh (Al-Haqq) aurait un endroit et celui qui se donne l’illusion que Allâh a un endroit est un assimilationniste (mouchabbih)» ainsi dans cette citation il confirme clairement que le fait de croire que Allâh serait dans un endroit est de la mécréance [Dans son livre Hallou r-Roumoûz] .', '3aqidah, 3arch, 3arsh, 3oulama'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'استوى على العرش المجيد على الوجه الذي قال، وبالمعنى الذي أراده، استواء منزها عن المماسّة والاستقرار والتمكن والحلول والانتقال، فتعالى الله الكبير المتعال عما يقوله أهل الغي والضلال، لا يحمله العرش، بل العرش وحملته محملون بلطف قدرته، مقهورون في قبضته، أحاط بكل شيء علما، وأحصى كل شيء عددا');

-- source: https://islamsunnite.net/ala-d-din-boukhari-dit-attribuer-corps-a-allah-est-mecreance-unanimite/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Attribuer le corps ou l’endroit à Allâh est de la mécréance par unanimité.', 'Les Chafi''ites', '« من قال بأن الله جسم فهو كافر إجماعا . ولهذا قال إمام الحرمين في « الإرشاد » : إثبات الجهة لله كفر صراح »', '« Celui qui dit que Allâh est un corps, il est mécréant par unanimité (ijmâ’).', '', 'Dans son livre « Mouljimatou l-Moujassimah » le Chaykh ‘Alâ-ou d-Dîn Al-Boukhâri a dit :
C’est pour cela que Imâm Al-Haramayn (c’est-à-dire l’Imâm Al-Jouwayni) a dit dans son livre Al-Irchâd : Attribuer la direction à Allâh est de la mécréance manifeste »
Informations utiles :
– Le Chaykh, Al-‘Allâmah (l’illustre savant), l’Imâm Mouhammad Ibn Mouhammad ‘Alâ-ou d-Dîn al-Boukhâri al-Hanafi est né en 779 et il est décédé en 841 de l’Hégire à Damas (رحمه الله) c’est-à-dire il y a environ 600 ans. Il y a parmi ses Chouyoûkh le savant At-Taftâzâni, l’auteur du célèbre commentaire de la Naçafiyyah.
L’Imâm Ibnou Hajar Al-‘Asqalâni a fait l’éloge de ‘Alâ-ou d-Dîn Al-Boukhâri en disant de lui : « L’illustre savant (‘Allâmah) de l’époque […] Il est devenu l’Imâm de son temps » . [Inbâ-ou l-Ghoumr]
– Ici, il confirme que le fait de croire que Allâh serait un corps est de la mécréance par unanimité. C’est-à-dire qu’il n’y a pas de divergence sur le fait que la personne qui croit que Allâh est un corps, alors elle est mécréante.
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah]
– Le corps (al-jism) c’est ce qui est composé, ou ce qui a une longueur, une largeur et une profondeur, qu’il soit palpable ou impalpable, comme l’ont mentionné les savants :
L’Imâm Ahmad Ibn Hambal a dit : « Les spécialistes de la langue ont mentionné que le mot « corps » (jism) est attribué pour tout ce qui présente une longueur, une largeur, une épaisseur, une composition et une image, et Allâh ta’âlâ est exempt de tout ceci » [ Rapporté par Abou l-Fadl At-Tamîmi ]
L’Imâm Al-Ghazâli a dit : « Le corps (jism) est ce qui a une longueur, une largeur et une profondeur» [ Iljâmou l-‘awâm ]
Le Loughawi (spécialiste de la langue Arabe) Ar-Râghib Al-Asbahâni (m.502 A.H.) a dit : « Le corps (jism) c’est ce qui a une longueur, une largeur et une profondeur » [Rapporté par Az-Zabîdi dans Tâj al-‘Aroûss]
Le Mouhaddith Mouhammad ‘Abdou r-Ra-oûf Al-Mounâwi (m.1031 A.H.) a dit : « Le corps (jism) est ce qui a une longueur, une largeur et une profondeur » [At-Ta’ârîf]
Le Mouhaddith ‘Abdou l-Lâh Al-Harari a dit : « Le corps (jism) c’est tout ce qui a un volume ou une longueur, une largeur et une profondeur, qu’il soit grand ou petit » [Boughyatou t-Tâlib]
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
Le Chaykh ‘Alâ-ou d-Dîn Al-Boukhâri qui mentionne l’unanimité [Dans son livre Mouljimatou l-Moujassimah]
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
– Puis il mentionne l’Imâm Al-Jouwayni qui a dit que le fait d’attribuer à Allâh la direction est de la mécréance explicite.
– Imâm Al-Haramayn (des deux Haram) Abou l-Ma’âli ‘Abdou l-Malik Ibnou ‘Abdi l-Lâh Al-Jouwayni, est né en 419 et il est décédé en 478 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 950 ans. C’est un grand savant reconnu par toute la communauté musulmane. Il était surnommé « Imâm al-Haramayn » c’est-à-dire l’Imâm des deux enceintes sacrées de La Mecque et Médine. Il était du madh-hab (Ecole de jurisprudence) de l’Imâm Ach-Châfi’i et il fût l’un des chouyoûkh de l’Imâm Aboû Hâmid Al-Ghazâli (رحمه الله).
Le Chaykh Aboû Is-hâq Ach-Chîrâzi a fait son éloge en lui disant : « Oh toi qui est profitable aux gens d’orient et d’occident, certes les premiers comme les derniers ont profité de ta science ». Il lui a dit également : « Tu es en ce jour, l’Imâm des Imâms » [Dhayl Târîkh Baghdâd]
‘Abdou l-Ghaffâr Al-Fâriçi a dit de lui : « Imâm Al-Haramayn (des deux Haram), la fierté de l’Islâm, l’Imâm de la Oummah dans l’absolue, le docte dans la charî’ah, celui qui a réunis le statut d’Imâm en orient et en occident » [Al-Mountakhab]
Le Hâfidh Ibn Najjâr Al-Baghdâdi a dit à son sujet : « Il est un Faqîh (spécialiste de la jurisprudence) Chafi’ite, il est surnommé Imâm Al-Haramayn […] il est l’Imâm des fouqahâ (spécialistes de la jurisprudence) d’orient et d’occident […] il est parvenu au degré de l’ijtihâd» [Dhayl Târîkh Baghdâd]
‘Abdou l-Lâh Ibn Yoûçouf Al-Jarjâni a dit : « Abou l-Ma’âli Al-Jouwayni est l’Imâm de son temps » [Dhayl Târîkh Baghdâd]
– L’Imâm Al-Jouwayni a dit également : « La voie de tous les gens de la vérité sans exception c’est que Allâh soubhânahou wa ta’âlâ est exempt de la localisation et de la spécification par les directions » [Al-Irchâd]
– L’Imâm Al-Jouwayni a dit aussi : « Al-Bâri (Le Créateur : c’est-à-dire Allâh) soubhânahou wa ta’âlâ n’a pas besoin d’autrui, Il est exempt d’avoir besoin d’un endroit où S’incarner, ou d’un endroit qui Le porte ». [ Al-Irchâd ]
– L’Imâm Al-Jouwayni a dit aussi : « Sachez que la voie des gens de la vérité : c’est [de croire] que Allâh (Ar-Rabb) soubhânah est exempt d’occuper un espace, et Il est exempt d’être spécifié par la direction » [ Ach-Châmil fî Ousoûli d-Dîn ]
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
L’Imâm Al-Jouwayni [Rapporté par ‘Alâ-ou d-Dîn Al-Boukhâri]
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
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ Dans son livre Minhou l-Jalîl ]
Le Chaykh Al-Qawouqji [ Dans son livre Al-I’timâd fi l-I’tiqâd ]
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Chaykh Mahmoûd As-Soubki Al-Azhari qui mentionne l’unanimité [ Dans son livre It-hâfou l-Kâ-inât ] et [ Dans son livre It-hâfou l-Kâ-inât (2) ] et [ Dans son livre It-hâfou l-Kâ-inât (3) ] et [ Dans son livre It-hâfou l-Kâ-inât (4) ]
Le Chaykh Mehmed Zâhid Kotku [ Dans son livre Ehl-i Sünnet Akaidi ]
Le Mouhaddith Al-Harari (1439 H.) [Dans son livre As-Sirât Al-Moustaqîm]
Et beaucoup d’autres…
– Le Chaykh ‘Alâ-ou d-Dîn Al-Boukhâri a dit au sujet d’Ibn Taymiyah (moujassim) : « Celui qui nomme Ibn Taymiyah par « Chaykh al-Islâm » alors il devient mécréant ».
Le Hâfidh As-Sakhâwi a mentionné cela lorsqu’il a rédigé sa biographie en disant : « Il (c’est-à-dire le Chaykh ‘Alâ-ou d-Dîn Al-Boukhâri) était interrogé au sujet des opinions qu’Ibn Taymiyah avait été le seul à émettre, et il avait répondu en fonction des erreurs qu’il y trouvait et de ce qui repoussait son cœur ; jusqu’à ce qu’il détermine son jugement à son sujet et déclare ouvertement qu’Ibn Taymiyah est un innovateur, puis qu’il est mécréant. Par la suite il s’est mis à déclarer explicitement dans ses assemblées que quiconque appellerait Ibn Taymiyah par l’appellation « Chaykhou l-Islâm » deviendrait mécréant pour avoir employé ce terme. Et il était connu pour cela.» [Dans son livre Ad-Daw-ou l-Lâmi’ fî A’yâni l-Qarni t-Tâçi’]
Le Chaykh ‘Abdou l-Lâh Al-Ghoumâri Al-Maghribi a détaillé à ce sujet en bas de page de son livre en réplique à Al-Albâni (wahhabite) en disant : « Il a été rapporté de ‘Abdou l-Lâh ‘Alâ-ou d-Dîn al-Boukhâri al-Hanafi que celui qui qualifie Ibn Taymiyah de « chaykhou l-Islâm » alors par ce propos là il devient mécréant. Ce qu’il veut dire, c’est le fait de dire cela tout en ayant connaissance de ses paroles de mécréance et sa croyance d’égaré, et que malgré cela il le qualifie par ce terme ».
Le Chaykh ‘Abdou l-Lâh Al-Harari a dit : « [De parmi ceux qui ont mis en garde contre Ibn Taymiyah : ] Al-‘Allâmah (l’illustre savant) ‘Alâ-ou d-Dîn al-Boukhâri al-Hanafi, qui est décédé en 841 H., il l’a déclaré mécréant et il a déclaré mécréant ceux qui disent de lui « chaykhou l-Islâm », c’est-à-dire celui qui le nomme « chaykhou l-Islâm » tout en connaissant ses propos de mécréance. Le Hâfidh As-Sakhâwi a mentionné cela dans Ad-Daw-ou l-Lâmi’». [Dans son livre Maqâlât As-Sounniyah fî Kachfi Dalâlât Ibni Taymiyah]
Le Chaykh Ahmad Al-Ghoumâri Al-Maghribi a dit : « Ibnou Taymiyah est un ennemi de Allâh et de Son prophète, un criminel, un khabîth, un égaré qui égare […] après cela (c’est-à-dire après avoir eu connaissance de ses égarements), celui qui le surnomme “Chaykh al-Islâm” est un hypocrite (mounâfiq) et un égaré tout comme lui » [Dans son livre Al-Bahrou l-‘Amîq]
– Dans ce même ouvrage, le Chaykh ‘Alâ-ou d-Dîn Al-Boukhâri a dit également, concernant les déviations d’Ibn Taymiyah : « Et Ibn Taymiyah a osé prétendre que l’enfer sera anéanti, il a ainsi rejeté le jugement indiqué dans le Qour-ân pour se baser sur le sens apparent d’une nouvelle transmise par une seule personne, et ceci ne peux provenir que d’un ignorant (jâhil) des fondements du fiqh, turbulent et mécréant (jâhid).» [ Pour en savoir plus, consultez le livre “Al-Bourhân wa l-I’tibâr : ici ]', 'alâ''ou d-dîn al-boukhâri, allah, anthropomorphisme, anthropomorphiste'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« من قال بأن الله جسم فهو كافر إجماعا . ولهذا قال إمام الحرمين في « الإرشاد » : إثبات الجهة لله كفر صراح »');

-- source: https://islamsunnite.net/imam-bayhaqi-eloge-achari-acharite-imam/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm de Ahlou s-Sounnah Abou l-Haçan Al-Ach’ari', 'Thawri', 'الإمام أبو بكر أحمد بن الحسين البيهقي قال : […] إلى أن بلغت النوبة إلى شيخنا أبي الحسن الأشعري رحمه الله فلم يحدث في دين الله حدثا ولم يأت فيه ببدعة بل أخذ أقاويل الصحابة والتابعين ومن بعدهم من الأئمة في أصول الدين فنصرها بزيادة شرح وتبيين وأن ما قالوا في الأصول وجاء به الشرع صحيح في العقول خلاف ما زعم أهل الأهواء من أن بعضه لا يستقيم في الآراء فكان في بيانه تقوية ما لم يدل عليه من أهل السنة والجماعة ونصرة أقاويل من مضى من الأئمة كأبي حنيفة وسفيان الثوري من أهل الكوفة والأوزاعي وغيره من أهل الشام ومالك والشافعي من أهل الحرمين ومن نحا نحوهما من الحجاز وغيرها من سائر البلاد وكأحمد ابن حنبل وغيره من أهل الحديث والليث بن سعد وغيره وأبي عبد الله محمد بن اسمعيل البخاري وأبي الحسن مسلم بن الحجاج النيسابوري إمامي أهل الآثار وحفاظ السنن التي عليها مدار الشرع رضي الله عنهم أجمعين وذلك دأب من تصدى من الأئمة في هذه الأمة وصار رأسا في العلم من أهل السنة في قديم الدهر وحديثه وبذلك وعد سيدنا المصطفى صلى الله عليه و سلم أمته فيما روي عنه أبو هريرة رضي الله عنه إنه قال : {يبعث الله لهذه الأمة على رأس كل مائة سنة من يجدد لها دينها}', '« L’Imâm Aboû Bakr Ahmad Ibnou l-Houçayn Al-Bayhaqi a dit : […] Jusqu’à ce que le tour vienne à notre Chaykh Abou l-Haçan Al-Ach’ari (رحمه الله) Il n’a pas innové dans la religion agréée par Allâh quoi que ce soit. Il n’a pas amené de mauvaises innovations mais a repris les paroles des compagnons, des successeurs (tâbi’în) et ceux qui les ont suivis parmi les Imâm dans les fondements de la religion et les a soutenus en ajoutant plus de commentaires et plus d’explications. Et ce qu’il a dit au sujet des fondements et ce qu’il a amené dans les lois est correct par la raison contrairement à ce qu’ont prétendu les gens qui suivent leurs passions. Ainsi dans ses explications, il y a eu un renfort pour appuyer Ahlou s-Sounnati wa l-Jamâ’ah et un soutien des paroles des Imâm qui l’ont précédé comme Aboû Hanîfah et Soufyân Ath-Thawri parmi les gens de Al-Koûfah, comme Al-Awzâ’i et d’autres parmi les gens de Ach-Châm, comme Mâlik et Ach-Châfi’i, des gens de deux Haram (c’est-à-dire La Mecque et Médine) et de ceux qui leur sont similaire dans le Hijâz et autres qu’eux, et des Imâm des autres contrées, et comme Ahmad Ibnou Hanbal et d’autres parmi les spécialistes du Hadîth et comme Al-Layth Ibn Sa’d et autres que lui et comme ‘Abdou l-Lâh Mouhammad Ibnou Ismâ’îl Al-Boukhâri et Abou l-Haçan Mouslim Ibnou l-Hajjâj An-Nayçaboûri, les deux Imâm spécialistes des Âthâr (Hadîth) et les Houffâdh auteurs des Sounan sur lesquels est basée la Loi agréée par Allâh, que Allâh les agrée tous. Il est devenu une sommité dans la science chez les gens de la Sounnah de son époque. Et c’est ainsi que notre maître (le prophète) al-Moustafâ (صلى الله عليه وسلم) a annoncé à sa communauté, d’après ce que rapporte de lui Aboû Hourayrah (رضي الله عنه) qu’il a dit [ce qui a pour sens : ] » Allâh fera apparaître pour cette communauté, à la tête de chaque cent ans quelqu’un qui lui revivifiera sa religion » ».', '', 'Dans son livre « Tabyînou kadhibi l-Mouftarî » (page 88 de cette édition), le Hâfidh Ibnou ‘Açâkir a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth) Ibnou ‘Açâkir (Abou l-Qâçim ‘Ali Ibnou Haçan Ibnou Hibatou l-Lâh Ad-Dimachqi) est né en 499 et il est décédé en 571 de l’Hégire (رحمه الله) soit il y a plus de 850 ans. C’était un grand savant du hadîth, et il était de l’école de jurisprudence Chafi’ite. Il est notamment connu pour son ouvrage « Târîkhou d-Dimachq ».
L’Imâm An-Nawawi a dit de lui : « Il est le Hâfidh (spécialiste de la science du Hadîth) du Châm, mais il est également le Hâfidh de ce monde » [Boustân Al-‘Ârifîn]
Le Hâfidh As-Souyoûti a dit à son sujet : « Ibnou ‘Açâkir, le grand Imâm, le Hâfidh (spécialiste de la science du hadîth) du Châm, mais il est également le Hâfidh de ce monde, le digne de confiance, celui qui a des arguments confirmés, le digne de confiance dans la religion » . [Tabaqâtou l-Houffâdh]
L’Imâm Tâjou d-Dîn As-Soubki a dit le concernant : « L’Imâm grandiose (jalîl), le Hâfidh (spécialiste de la science du hadîth) de la Oummah […] Il est le Chaykh, l’Imâm qui supporte la Sounnah et qui est à son service […] il est l’Imâm des gens du hadîth de son époque » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Le Hâfidh Ibn Najjâr Al-Baghdâdi a dit à son sujet : « Il est l’Imâm des Mouhaddithîn (spécialistes de la science du hadîth) de son époque» [Dhayl Târîkh Baghdâd]
Al-Yâfi’i a dit de lui : « le Faqîh (spécialiste de la jurisprudence), l’Imâm, le Mouhaddith scrupuleux, le Hâfidh (spécialiste de la science du hadîth) minutieux, celui qui possède une large science, Chaykh al-Islâm, le Mouhaddith du Châm, le défenseur de la Sounnah, celui qui refute les mauvaises innovations, le Hâfidh, l’océan de science […] le digne de confiance dans la religion […] il n’a pas vu pareil à lui dans son époque » [Mir-atou l-Jinân]
Ibnou Kathîr a dit le concernant : « Le grand Hâfidh (spécialiste du hadîth), le digne de confiance dans la religion […] la fierté des Châfi’ite, l’Imâm des gens du hadîth de son temps et le porteur de leur étendard » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit à son sujet : « L’Imâm, l’illustre savant (Al-‘Allâmah), le grand Hâfidh (spécialiste de la science du hadîth), al-moujawwad, le Mouhaddith (transmetteur du hadîth) du Châm» [Siyarou A’lâmi n-Noubalâ]. Il a dit également de lui : « L’Imâm, le grand Hâfidh (spécialiste de la science du hadîth), le Mouhaddith (transmetteur du hadîth) du Châm, la fierté des Imams, le digne de confiance dans la religion […] le nombre de ses enseignants est de mille quatre cents (1400) Chaykh et quatre-vingts (80) femmes» [Tadhkiratou l-Houffâdh]
– Ne pas le confondre avec son neveu, le Chaykh Fakhrou d-Dîn Ibnou ‘Açâkir qui est décédé en 620 de l’Hégire (رحمه الله), l’auteur du célèbre traité de croyance, dont la biographie est disponible : ici .
– Le Hâfidh Ibnou ‘Açâkir a écrit le livre « Tabyîn kadhibi l-mouftarî fîmâ nousiba ila l-Imâm Abi l-Haçan al-Ach’ari ». Le titre de son livre signifie « l’Élucidation du Mensonge du Calomniateur au sujet de ce qui a été attribué à l’Imâm Abou l-Haçan Al-Ach’ari »; il l’a écrit pour défendre l’Imâm Al-Ach’ari des mensonges de ceux qui l’avaient calomnié. Vous pouvez retrouver un extrait de ce livre : ici .
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
– L’Imâm Al-Bayhaqi qui est une montagne de science, fait une grande éloge de l’Imâm Abou l-Haçan Al-Ach’ari. Il confirme que ce grand Imâm n’a rien innové en terme de croyance mais qu’il était sur la voie des compagnons, des successeurs des compagnons et des grands Imâm de la Oummah tels que Aboû Hanîfah, Soufyân Ath-Thawri, Al-Awzâ’i, Mâlik, Ach-Châfi’i, Ahmad Ibnou Hambal, Al-Layth Ibn Sa’d, Al-Boukhâri, Mouslim, les Imâm auteurs des Sounan, c’est-à-dire At-Tirmidhi, Aboû Dâwoûd, Ibnou Mâjah et An-Naçâ-i et autres qu’eux. L’Imâm Al-Bayhaqi considère que l’Imâm Abou l-Haçan Al-Ach’ari fût un renfort pour Ahlou s-Sounnah wa l-Jamâ’ah et qu’il est le moujaddid (savant revivificateur) de son époque.
– Ainsi il ne convient pas de prêter attention aux propos des gens de la déviation, notamment les wahhabites, qui tentent de dénigrer par la calomnie et le mensonge cet éminent savant.
– L’Imâm Abou l-Haçan Al-Ach’ari est un savant du salaf (C’est-à-dire ayant vécu dans les trois premiers siècles de l’Hégire) il est né en 260 (certains ont dit 270) et il est décédé en 324 de l’Hégire (d’autres ont dit 330 ou 333) (رحمه الله). Un très grand nombre de savants ont fait son éloge et le considèrent comme l’un des plus grands défenseurs de la croyance de Ahlou s-sounnah wa-l Jamâ’ah. Beaucoup l’ont considéré comme étant le moujaddid (savant revivificateur) de son siècle. Consultez sa biographie : ici.
L’Imâm Abou l-Haçan As-Soulami a dit à son sujet : « Al-Ach’ari est le savant à la tête du 3ème siècle [de l’Hégire] (c’est-à-dire le moujaddid – savant revivificateur) » [Rapporté par le Hâfidh Ibnou ‘Açâkir dans Tabyîn kadhib al-Mouftari]
Le Chaykh Mouhammad Ibn A’mar An-Nâbighah Al-Ghalâwi a dit de lui : « Al-Ach’ari est l’Imâm de Ahlou s-Sounnah » [Al-Moubâchir ‘ala Bni ‘Âchir]
Le Mouhaddith ‘Abdou l-Bâsit Al-Fâkhoûri a dit : « Nous disons que Ach-Châfi’i, Mâlik, Aboû Hanîfah, Ahmad Ibn Hanbal, Al-Awzâ’i, et le reste des moujtahidîn sont sur la bonne guidée de leur Seigneur, et que Abou l-Haçan Al-Ach’ari est un Imâm de la Sounnah, tout comme Aboû Mansoûr Al-Mâtourîdi » [Al-Kifâyah li Dhawi l-‘Inâyah]
– Ceux qui sont sur la voie de ce grand savant sont surnommé les Ach’arites :
L’Imâm Az-Zabîdi Al-Hanafi a dit : « Quand on dit le terme Ahlou s-Sounnah wa l-Jamâ’ah, ce qui est visé ce sont les Acharites et les Matouridites » [ Dans son livre It-hâfou s-Sâdati l-Mouttaqîn ]
Le Chaykh Ibnou ‘Âbidîn Al-Hanafi a dit : « Les gens de Ahlou s-Sounnah wa l-Jamâ’ah, ce sont les Ach’arites et les Matouridites » [Dans son livre Raddou l-mouhtâr ‘ala d-Dourri l-Moukhtâr]
Le Chaykh Tâjou d-Dîn As-Soubki a dit : « Sache que Abou l-Haçan Al-Ach’ari n’a pas innové une nouvelle voie mais il a raffermi et résumé la voie du Salaf et il a défendu ce sur quoi étaient les compagnons du Messager de Allâh. Donc se réclamer de lui est dû au fait qu’il a délimité la voie du Salaf et qu’il s’y est attaché, qu’il a amené les preuves et arguments sur cette voie. Celui qui le suit en cela dans cette argumentation est appelé Ach’arite » [Tabaqâtou ch-Châfi’iyyah]
L’Imâm, l’illustre savant ‘Ali As-Sa’îdi Al-‘Adawi Al-Mâliki (m.1189 h.) a dit : « Le terme « Ahlou l-Haqq (gens de la vérité) » désigne les gens de Ahlou s-Sounnah : les Ach’arites et les Matouridites ou ce qui est visé par cela sont ceux qui sont sur la voie du Messager de Allâh (صَلَّى اللَّهُ عَلَيْهِ وَآلِهِ وَسَلَّمَ), donc cela englobe également ceux qui étaient avant l’arrivé des deux chaykh, c’est-à-dire Abou l-Hassan Al-Ach’ari et Aboû Mansoûr Al-Mâtourîdi » [Dans sa hâchiyah du livre Kifâyatou t-Tâlibi r-Rabbâni ‘alâ Riçâlati Bni Abî Zayd Al-Qayrawâni]', '3arch, abou hanifah, abu al haçan, ach''ariya'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'الإمام أبو بكر أحمد بن الحسين البيهقي قال : […] إلى أن بلغت النوبة إلى شيخنا أبي الحسن الأشعري رحمه الله فلم يحدث في دين الله حدثا ولم يأت فيه ببدعة بل أخذ أقاويل الصحابة والتابعين ومن بعدهم من الأئمة في أصول الدين فنصرها بزيادة شرح وتبيين وأن ما قالوا في الأصول وجاء به الشرع صحيح في العقول خلاف ما زعم أهل الأهواء من أن بعضه لا يستقيم في الآراء فكان في بيانه تقوية ما لم يدل عليه من أهل السنة والجماعة ونصرة أقاويل من مضى من الأئمة كأبي حنيفة وسفيان الثوري من أهل الكوفة والأوزاعي وغيره من أهل الشام ومالك والشافعي من أهل الحرمين ومن نحا نحوهما من الحجاز وغيرها من سائر البلاد وكأحمد ابن حنبل وغيره من أهل الحديث والليث بن سعد وغيره وأبي عبد الله محمد بن اسمعيل البخاري وأبي الحسن مسلم بن الحجاج النيسابوري إمامي أهل الآثار وحفاظ السنن التي عليها مدار الشرع رضي الله عنهم أجمعين وذلك دأب من تصدى من الأئمة في هذه الأمة وصار رأسا في العلم من أهل السنة في قديم الدهر وحديثه وبذلك وعد سيدنا المصطفى صلى الله عليه و سلم أمته فيما روي عنه أبو هريرة رضي الله عنه إنه قال : {يبعث الله لهذه الأمة على رأس كل مائة سنة من يجدد لها دينها}');

-- source: https://islamsunnite.net/chaykh-mayyarah-maliki-pratique-tawassoul-prophetes-et-vertueux/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le tawassoul par les prophètes et les saints.', 'Mayyarah', 'اللهم إنا نتوسل إليك بجاه أحب الخلق إليك وأعظمهم قدراً عندك سيدنا ونبينا محمد وبجاه جميع الانبياء والرسل وأهل بدر وبجميع الأولياء والصديقين والشهداء والصالحين أن لا تدع لنا ذنباً إلا غفرته ولا هماً إلا فرجته ولا عيباً إلا سترته ولا ديناً إلا أديته ولا عدواً إلا كفيته ولا مريضاً إلا شفيته ولا حاجة لك فيها رضا ولنا فيها صلاح إلا قضينا يا أرحم الراحمين يارب العالمين', 'Ô Allâh nous faisons le tawassoul par le degré (bi jâh) de la plus agréée des créatures, celle qui a, selon Ton jugement, le plus éminent degré, notre maître (sayyidounâ), notre Prophète, mawlânâ Mouhammad (صلى الله عليه وسلم) et par le degré (bi jâh) de tous les prophètes, les messagers, les gens de [la bataille de] Badr, tous les saints (awliyâ), les saints hautement véridiques (siddîqîn), les martyrs et les vertueux, de ne pas laisser un seul péché sans que Tu ne le pardonnes, un tourment sans que Tu nous en dégage, un défaut sans que Tu le caches, une dette sans que Tu nous en acquittes, un ennemi sans que Tu nous préserves de son mal, un malade sans que Tu lui accorde la guérison, ô Toi le plus Miséricordieux des miséricordieux, ô Seigneur des mondes', '', 'Dans son livre « Ad-Dourrou th-Thamîn wa l-Mawridou l-Ma’în » le Chaykh Mayyârah Al-Mâliki a dit :
Informations utiles :
– Le Chaykh Mouhammad Ibnou Ahmad Mayyârah Al-Mâliki Al-Fâçi est né en 999 à Fès (Maroc) et il est décédé en 1072 de l’Hégire (رحمه الله) à Fès également, c’est-à-dire il y a environ 360 ans. Il était de l’école de jurisprudence (madh-hab) malikite. Il était l’élève direct du Chaykh Ibnou ‘Âchir. Consultez sa biographie : ici .
– Son livre « Ad-Dourrou th-Thamîn wa l-Mawridou l-Ma’în » est un commentaire du très célèbre traité « Al-Mourchidou l-Mou’în ‘ala d-Daroûriyyi min ‘Ouloumi d-Dîn » , appelé plus couramment le « Matn de Ibnou ‘Âchir » composé par le Chaykh ‘Abdou l-Wâhid Ibnou ‘Âchir Al-Ansâri Al-Ach’ari Al-Mâliki (990 – 1040 H) (رحمه الله). Consultez sa biographie : ici .
– Ici, le Chaykh Mayyârah Al-Mâliki accomplit le tawassoul par le prophète (صلى الله عليه وسلم), ainsi que les autres prophètes et les vertueux en utilisant l’expression « bi jâh ».
– Ceci est similaire au tawassoul réalisé par le prophète Âdam (عليه السلام) lorsqu’il a dit [ce qui a pour sens : ] « Ô Seigneur, je te demande bi Haqqi Mouhammad de me pardonner.» [Rapporté par As-Soubki]
– Le tawassoul est le fait de demander à Allâh l’obtention d’un profit ou l’empêchement d’une nuisance et ce, par la mention du nom d’un prophète ou d’un saint, par honneur pour celui par lequel le tawassoul est fait. Faire le tawassoul est permis en leur présence et en leur absence tout comme l’indique les preuves selon la Loi de l’Islâm. Le tawassoul ne constitue donc pas une adoration pour autre que Allâh.
– Le prophète (صلى الله عليه وسلم) enseigna lui-même le tawassoul aux compagnons et les compagnons le pratiquaient également après son décès (صلى الله عليه وسلم). [ Rapporté par At-Tabarâni ]
– Il est rapporté par l’Imâm Al-Boukhâri avec sa chaîne de transmission sahîh (authentique) que le Calife ‘Oumar Ibnou l-Khattâb (رضي الله عنه) a réalisé le tawassoul par Al-‘Abbâs (رضي الله عنه), l’oncle paternel du prophète (صلى الله عليه وسلم). [ Sahîh Al-Boukhâri ]
– Ainsi, le tawassoul est une pratique qui est permise selon l’unanimité des musulmans comme le rapporte l’Imâm Taqiyyou d-Dîn As-Soubki [ Dans son livre Chifâ-ou s-Saqâm ]
– L’adoration (al-‘Ibâdah) : c’est l’extrême limite de la crainte et de la soumission, comme l’a mentionné l’Imâm Moujtahid, le Hâfidh (spécialiste du Hadîth), le Loughawi (spécialiste de la langue Arabe) Taqiyyou d-Dîn As-Soubki.
Ainsi le simple fait d’appeler (nidâ) un vivant ou un mort ne constitue pas une adoration d’autre que Allâh, ni le simple fait de glorifier (ta’dhîm) ou de faire al-istighâthah (la recherche du renfort) par autre que Allâh. De même, le simple fait de visiter la tombe d’un saint pour le tabarrouk (la recherche des bénédictions) ne constitue pas une adoration d’autre que Allâh. De même, le simple fait de demander ce qu’il n’est pas habituel de demander aux gens ne constitue pas une adoration d’autre que Allâh. De même, la formule de al-isti’ânah (demande d’aide) à autre que Allâh ta’âlâ ne constitue pas une adoration d’autre que Allâh. Egalement, la simple humilité n’est pas une adoration envers autre que Allâh car sinon, tous ceux qui font preuve d’humilité avec les rois et les nobles seraient devenus mécréants.
C’est-à-dire que tout cela n’est pas du chirk (le fait d’attribuer des associés à Allâh), car la définition de l’adoration (al-‘ibâdah) selon les spécialistes de la langue ne s’applique pas à tout cela. En effet, pour eux, l’adoration (al-‘ibâdah) comme nous venons de le voir est l’obéissance avec la soumission. Voir à ce sujet l’explication de l’Imâm du Salaf, le Loughawi (spécialiste de la langue Arabe) Aboû Is-hâq Ibrâhîm Az-Zajjâj : ici .
– Ici, le Chaykh Mayyârah réalise le tawassoul lorsqu’il commente la parole d’Ibn ‘Âchir qui a lui-même réalisé le tawassoul en disant : «Et je demande par lui (cet ouvrage) le profit en permanence, à notre Seigneur par le degré (bi jâh) du maître (sayyid) des gens [c’est-à-dire le prophète]». [ Al-Mourchidou l-Mou’în ]
– Ainsi, il ne convient pas de prêter attention aux propos virulents des wahhabites qui interdisent cela fermement et qui considèrent même celui qui fait cela mouchrik (associateur), kâfir (mécréant), tout comme Al-Fawzân (wahhabite) l’a dit : « Il n’est pas permis de faire le tawassoul par le degré (bi jâhi) du prophète (صلى الله عليه وسلم), ni par le degré d’autres que lui, car ceci est une innovation (bid’ah), et il n’y a aucune preuve de cette pratique, et ceci est du chirk (association) » [ Dans son livre Fatâwâ Al-‘Aqîdah ]
– Egalement comme l’a fait le Chaykh Mouhammad Mayyârah, il est permis d’appeler le prophète par le terme “maître” (sayyid). Et ceci est conforme à la parole même du prophète qui a dit [ce qui a pour sens : ] « Je suis le maître (sayyid) des fils de Âdam le jour dernier et je ne dis pas cela par prétention » [ Rapporté par At-Tirmidhi ]
– Retrouvez d’autres articles au sujet du tawassoul et du tabarrouk : ici .', 'ad-dourrou th-thamîn wa l-mawridou l-ma''în, ad-dourrou th-thamîn wa l-mawridou l-mou''în, ahlou s-sounnah, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'اللهم إنا نتوسل إليك بجاه أحب الخلق إليك وأعظمهم قدراً عندك سيدنا ونبينا محمد وبجاه جميع الانبياء والرسل وأهل بدر وبجميع الأولياء والصديقين والشهداء والصالحين أن لا تدع لنا ذنباً إلا غفرته ولا هماً إلا فرجته ولا عيباً إلا سترته ولا ديناً إلا أديته ولا عدواً إلا كفيته ولا مريضاً إلا شفيته ولا حاجة لك فيها رضا ولنا فيها صلاح إلا قضينا يا أرحم الراحمين يارب العالمين');

-- source: https://islamsunnite.net/chaykh-ibn-achour-confirme-allah-pas-assis-sur-trone-et-sans-endroit/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas localisé sur le trône.', 'Ibn ''Achour', 'و إضافة عرش إلى اللّه إضافة تشريف مثل إضافة الكعبة إليه في قوله: {وَ طَهِّرْ بَيْتِيَ لِلطّٰائِفِينَ} الآية ، و اللّه منزه عن الجلوس على العرش و عن السكنى في بيت', 'L’annexion du trône à Allâh est une annexion d’honneur, tout comme lorsqu’Il s’attribue la Ka’bah dans sa parole { وَ طَهِّرْ بَيْتِيَ لِلطّٰائِفِين} (wa Tahhir Baytiya li t-Tâ-ifîn…) et Allâh est exempt de la position assise sur le trône, et du fait d’habiter la Ka’bah', '', 'Dans son volumineux tafsîr « At-Tahrîr wa t-Tanwîr » (tome 29 page 128 de cette édition), le Chaykh Ibnou ‘Âchoûr a dit lorsqu’il explique le verset qui contient {وَٱلۡمَلَكُ عَلَىٰٓ أَرۡجَآٮِٕهَا‌ۚ وَيَحۡمِلُ عَرۡشَ رَبِّكَ} (wa l-Malakou ‘alâ Arjâ-ihâ wa yahmilou ‘Archa Rabbik) :
Informations utiles :
– Le Moufassir (l’exégète), le Chaykh Mouhammad At-Tâhir Ibnou ‘Âchoûr At-Toûniçi Al-Mâliki Az-Zaytoûni est né en 1296 à Tunis et il est décédé en 1393 de l’hégire à La Marsa (رحمه الله). Il était le président des Mouftis Malikites en Tunisie, le Chaykh de la mosquée de Az-Zaytoûnah et de ses annexes en Tunisie. Il est l’un des savants Tunisiens les plus connus.
– Son tafsîr « At-Tahrîr wa t-Tanwîr » est en trente tomes.
– Ici, il explique que lorsque le trône est joint au Nom de Allâh comme dans le verset qui comprend les termes « ‘Archa Rabbik » ceci est une annexion pour indiquer l’honneur du trône, tout comme lorsque Allâh s’attribue la Ka’bah. Et ni l’un ni l’autre, que ce soit le trône ou la Ka’bah, ni autre qu’eux ne sont des endroits pour Allâh. La Ka’bah n’est pas un lieu où Allâh serait localisé et le trône n’est pas un endroit où Allâh serait assis ou établi.
– Le Qâdî Ibnou Rouchd Al-Jadd Al-Mâliki a tenu des propos similaires en disant : « Le fait que Allâh ta’âlâ s’attribue le Trône signifie l’attribution d’honneur, tout comme on dit : Baytou l-Lâh (la Maison honorée de Allâh) ou Haramouh (Son enceinte sacrée) sans qu’Il soit installé dedans ou que ce soit un endroit pour son établissement car Allâh n’est pas dans un endroit, Il existe avant de créer les endroits » . [ Rapporté par Ibnou l-Hâjj Al-Mâliki ]
– Dans d’autres passage de son Tafsîr, le Chaykh Ibn ‘Âchour confirme le fait que Allâh existe sans endroit [ At-Tahrîr wa t-Tanwîr ].
– De nombreux savants ont confirmé que le fait de croire que Allâh serait assis sur le trône est une croyance qui constitue de la mécréance. Parmi eux :
L’Imâm Ach-Châfi’i tout comme le rapporte Al-Qourachi qui mentionne d’ailleurs que cela fait l’objet de l’unanimité [ Dans son livre Najmou l-Mouhtadi ] et Ibnou Ar-Rif’ah [ Dans son livre Kifâyatou n-Nabîh ] ;
L’Imâm Al-Bayhaqi [ Dans son livre Chou’abou l-Îmân ] ;
L’Imâm An-Nawawi qui a dit : « Et s’il dit “Allâh s’est levé pour la justice” il est devenu mécréant, ou s’il dit “Allâh s’est assis pour la justice” il est devenu mécréant » [Rawdatou t-Tâlibîn / Kitâb Ar-Riddah] et Ibn Noujaym Al-Hanafi a tenu avec exactitude les mêmes propos dans son livre Al-Bahrou r-Râ-iq », et également Adh-Dhahabi dans “Ith-hâfou l-Akâbir fî tahdhîbi kitâbi l-Kabâ-ir” ;
L’Imâm Al-Kawthari mentionne à deux reprises l’unanimité de la mécréance de celui qui attribue à Allâh la position assise [ Dans son livre Maqâlâtou l-Kawthari ] et [ Dans son livre Maqâlâtou l-Kawthari (2) ] ;
Le Chaykh Mahmoûd As-Soubki Al-Azhari qui rapporte également l’unanimité [ Dans son livre It-hâfou l-Kâ-inât ] ;
Le Mouhaddith Al-Harari mentionne que celui qui interprète l’istiwâ de Allâh dans le sens de la position assise devient mécréant [ Dans son livre As-Sirât Al-Moustaqîm ]
Et beaucoup d’autres …
– Consultez également les articles sur le thème : Allâh n’est pas sur le trône : ici
– Consultez également les articles sur le thème : Attribuer l’endroit ou la direction à Allâh est de la mécréance : ici', 'aamintoum man fi s-samaa, allah, allah est sans endroit / sans direction, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'و إضافة عرش إلى اللّه إضافة تشريف مثل إضافة الكعبة إليه في قوله: {وَ طَهِّرْ بَيْتِيَ لِلطّٰائِفِينَ} الآية ، و اللّه منزه عن الجلوس على العرش و عن السكنى في بيت');

-- source: https://islamsunnite.net/chaykh-abdoullah-al-ghoumari-explique-hadith-wa-koullou-bidah-dalalah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Toutes les innovations ne sont pas de l’égarement.', 'Unanimité', 'إن العلماء متفقون على انقسام البدعة إلى محمودة ومذمومة وأن عمر رضى الله عنه أول من نطق بذلك ومتفقون على أن قول النبي صلى الله عليه وسلم “كل بدعة ضلالة” عام مخصوص', 'Les savants ont été en accord sur la classification des innovations en bonne et mauvaise, et sur le fait que ‘Oumar (رضي الله عنه) est le premier qui a parlé de cela, et ils ont été en accord sur le fait que la parole du prophète ” كل بدعة ضلالة ” (koullou bid’atin dalâlah) est un texte de portée générale mais dont le sens est restreint (‘âm makhsoûs)', '', 'Dans son livre « Itqânou s-San’ah fî Tahqîq ma’na l-Bid’ah », Le Chaykh ‘Abdou l-Lâh Al-Ghoumâri a dit :
Informations utiles :
– Al-‘Allâmah (l’illustre savant), le Mouhaddith (spécialiste de la science du hadîth) du Maghreb, le Chaykh Abou l-Fadl ‘Abdou l-Lâh Ibnou Mouhammad As-Siddîq Al-Ghoumâri Al-Hassani est décédé en 1413 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 30 ans.
– Ici il explique que les savants de l’Islâm sont en accord sur le fait que l’innovation (bid’ah) peut être bonne ou mauvaise et qu’ils sont également en accord sur le fait que le hadîth ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah) est un texte de portée générale, dont le sens est restreint (‘âm makhsoûs). C’est-à-dire que les savants de l’Islâm, qu’ils soient Hanafites, Malikites, Chafi’ites, Hanbalites ou autres, sont en accord que le terme « كل » (koullou) dans ce hadîth ne désigne pas toutes les innovations dans l’absolu, mais qu’il existe des bonnes innovations.
– L’Imâm An-Nawawi (رحمه الله) a dit à ce sujet : « La parole du prophète (صلى الله عليه وسلم) « wa koullou bid’atin dalâlah» est [un texte] de portée générale dont le sens est restreint (‘âm makhsoûs), et ce qui est visé est « la plupart des innovations » (ghâlibou l-bida’). » [ Dans son Charh Sahîh Mouslim ]
– Parmi ce qui indique cela, il y a la parole de ‘Oumar Ibnou l-Khattâb, le compagnon et second Calife (رضي الله عنه) : « ni’matou l-bid’ah » c’est-à-dire “Quelle bonne innovation”. Cette parole de ‘Oumar a été rapportée par l’Imâm Al-Boukhâri [ Dans son Sahîh ] et l’Imâm Mâlik [ Dans Al-Mouwatta ]. Et beaucoup de savants se sont appuyé sur cette parole de ‘Oumar pour confirmer qu’une innovation peut être bonne, parmi eux :
L’Imâm Ach-Châfi’i [ Rapporté par Al-Bayhaqi dans Al-Madkhal ] et [ Rapporté par Aboû Nou’aym ] et [ Rapporté par Al-Bayhaqi dans Manâqibou ch-Châfi’i ] et [ Rapporté aussi par Ibn Taymiyah (moujassim) ]
L’Imâm Al-Bayhaqi [ Dans son livre Al-Madkhal ] et [ Dans son livre Manâqibou ch-Châfi’i ]
L’Imâm Ibn Battâl [ Dans son Charh Sahîh Al-Boukhâri ]
Le Qâdî Aboû Bakr Ibnou l-‘Arabi [ ‘Âridatou l-Ahwadhi ]
L’Imâm An-Nawawi [ Dans son Charh Sahîh Mouslim ]
L’Imâm Ibn Daqîq Al-‘Îd [ Dans son Charh Arba’în An-Nawawiyyah ]
L’Imâm Ibn Hajar Al-Asqalâni [ Dans son Charh Sahîh Al-Boukhâri ]
L’Imâm As-Souyoûti [ Al-Hâwi li l-Fatâwi ]
Le Mouhaddith Al-Harari [ Dans son livre Ar-Rawâ-ihou z-Zakiyyah ]
et autres qu’eux.
– Le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ]
– Ainsi, le hadîth qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah) est un hadîth dont les termes sont générales mais dont le sens est restreint c’est-à-dire que ce ne sont pas toute les innovations -dans l’absolu- qui sont de l’égarement, mais il s’agit des innovations qui contredisent la religion. Ainsi ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm.
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .', 'ahlou s-sounnah, allah, aqida, bid3a'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'إن العلماء متفقون على انقسام البدعة إلى محمودة ومذمومة وأن عمر رضى الله عنه أول من نطق بذلك ومتفقون على أن قول النبي صلى الله عليه وسلم “كل بدعة ضلالة” عام مخصوص');

-- source: https://islamsunnite.net/lmam-moutawalli-explique-hadith-nouzoul-descente/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas concerné par le déplacement.', 'Les Chafi''ites', '« وأما قوله عليه السلام : « ينزل الله في كل ليلة إلى سماء الدنيا » والمراد به انه يبعث ملكا إلى سماء الدنيا حتى ينادي على ما ورد في الخبر ثم أضاف نزول الملك إلى نفسه كما يقال نادى الأمير في البلد إذا أمر بالنداء ويقال قتل الأمير فلانا والقاتل غيره ويضاف إلى الأمير من حيث إنه هو الآمر به»', '« Quant à la parole du prophète (‘alayhi s-salâm) : « ينزل الله في كل ليلة إلى سماء الدنيا » (yanzilou l-Lâhou fî koulli laylah ilâ samâ-i d-Dounyâ) ce qui est visé, c’est que Allâh envoie un ange au ciel du bas-monde pour qu’il appelle ce qui est parvenu dans les textes. Et il a annexé la descente de cet ange à Lui-même de la même façon que l’on dit « l’émir a clamé telle chose dans le pays » lorsqu’il ordonne qu’il soit clamé quelque chose, et tout comme on dit « l’émir a tué untel » alors que c’est quelqu’un d’autres qui a tué, et l’acte est annexé à l’émir du fait qu’il soit celui qui ait ordonné cela »', '', 'Dans son livre « Al-Ghounyah fî Ousoûli d-Dîn » (page 78 de cette édition) l’Imâm Al-Moutawalli a dit :
Informations utiles :
– Al-‘Allâmah (l’illustre savant), l’Imâm, le Ousoûli (spécialiste des fondements), le Faqîh (spécialiste de la jurisprudence) Aboû Sa’îd ‘Abdou r-Rahmân An-Nayçâboûri, connu sous le nom de Al-Moutawalli Ach-Châfi’i est né en 426 à Nayçâboûr et il est décédé en 478 de l’Hégire à Baghdâd (رحمه الله). C’est-à-dire il y a environ 960 ans. Il succéda à l’Imâm Ach-Chîrâzi comme enseignant à la célèbre école An-Nidhâmiyyah de Baghdâd. Il étudia la jurisprudence Chafi’ite auprès du savant, le Qâdî Houçayn Ach-Châfi’i (m.463 A.H) celui dont l’Imâm Ar-Râfi’i (m.623 A.H.) disait : « On le surnommait le savant de la communauté» , et autres que lui. L’Imâm An-Nawawi (m.676 A.H.) le cite souvent comme référence dans ses ouvrages.
Adh-Dhahabi a dit à son sujet : « L’illustre savant (Al-‘Allâmah) le Chaykh des Chafi’ites » [Siyarou A’lâmi n-Noubalâ], et il a également dit de lui : « Il était un Faqîh (spécialiste de la jurisprudence) Chafi’ite, l’un des grands savants, Il était un Faqîh reconnu, et un savant méticuleux » [Târîkhou l-Islâm].
Quant à Ibn Kathîr, il a dit à son sujet : « Il était éloquent, un grand orateur, et maîtrisait de nombreuses sciences » [Al-Bidâyah wa n-Nihâyah], il a dit également : « Il était un Faqîh (spécialiste de la jurisprudence) reconnu, et un savant méticuleux » , il a également fait son éloge en disant : « Il était l’un des ash-hâbou l-woujoûh (une catégorie de savants en dessous du degré du moujtahid, qui est apte à déduire les jugements religieux à partir des textes de l’Imâm fondateur de l’école) dans le madh-hab [Châfi’i] » . [Tabaqâtou ch-Châfi’iyyîn]
As-Safadi a dit de lui : « Il comptait parmi les meilleurs des gens de par le comportement et le caractère, et de parmi les savants les plus modestes et généreux, il était reconnu et méticuleux tout en étant un grand orateur, éloquent, et nombreux devenaient des imams en assistant à ses assemblées de science » . [Al-Wâfî bi l-Wafayât]
Tâjou d-Dîn As-Soubki a dit de lui : « Il est l’un des Imâm aux degrés les plus élevés de parmi nos compagnons » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ].
Et Ibn Khallikân a dit à son sujet : « Il était un Faqîh Chafi’ite originaire de Nayçâboûr, il a rassemblé la science, l’application de la religion, et les bons caractères, il a maîtrisé le Fiqh (la jurisprudence), Al-Ousoûl (les fondements) et al-Khilâf (les divergences religieuses) » [Wafayâtou l-A’yân].
– Ici, l’Imâm Al-Moutawalli explique le hadîth du nouzoûl en disant qu’il s’agit de la descente d’un ange envoyé par Allâh, mais que le terme « nouzoûl » est annexé à Allâh car Il est Celui qui ordonne à cet ange de descendre. Ce n’est donc pas Allâh qui est concerné par la descente.
– Ainsi, lorsque le terme « nouzoûl » est employé au sujet de Allâh, nous ne disons pas que Allâh descend, car comme l’ont dit les savants, Allâh est exempt du déplacement, du mouvement, de la direction et de l’endroit.
– Les savants de l’Islâm, qu’ils soient du Salaf ou du Khalaf, sont unanimes a confirmer l’attribut du nouzoûl au sujet de Allâh, tout en exemptant Allâh du comment (kayf), c’est-à-dire des caractéristiques des corps comme le mouvement, le déplacement et la descente de Son Être. Nous pouvons citer parmi eux :
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
L’Imâm Ahmad Ar-Rifâ’i a dit : « Ne dites pas que le nouzoûl [au sujet de Allâh] est une venue ou un déplacement » [Al-Bourhân al-Mou-ayyad]
Le Chaykh Ibn ‘Aqîl Al-Hambali a dit concernant le hadîth du nouzoûl : « Ce n’est pas par la disparition (d’un endroit à un autre) ou un déplacement, et ce n’est pas comme notre nouzoûl […] devient mécréant celui qui assimile Allâh à ce qu’Il a créé » [Rapporté par Ibn Hamdân Nihâyatou l-Moubtadi-în]
L’Imâm Ibn Al-Jawzi [ Saydou l-Khâtir ] et [ Daf’ou Choubahi t-Tachbîh ]
L’Imâm Al-Qourtoubi : [ Dans son Tafsîr (1) ] et [ Dans son Tafsîr (2) ]
L’Imâm An-Nawawi [ Charh Sahîh Mouslim (1) ] et [ Charh Sahîh Mouslim (2) ]
L’Imâm Al-Baydâwi [ Rapporté par Ibn Hajar ] et [ Rapporté par Az-Zourqâni ]
Le Chaykh Mouhammad At-Tîbi
Le Loughawi Ibn Mandhoûr [ Liçânou l-‘Arab ]
Le Qâdî Ibn Jamâ’ah [ Idâhou d-Dalîl ]
Le Chaykh ‘Abdou l-Lâh Al-Yamani
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit concernant le hadîth du nouzoûl : « La parole du prophète «إن الله ينزل كل ليلة إلى سماء الدنيا » jusqu’à la fin du hadîth, il faut savoir que la descente, la montée, le mouvement et l’immobilité font partie des attributs des corps, et Allâh ta’âlâ est totalement exempt de cela, le sens [de ce hadîth] est la descente de la miséricorde » [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
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
– Certains savants ont mentionné de manière explicite dans leurs ouvrages que le fait d’attribuer à Allâh le mouvement ou le déplacement est de la mécréance. Parmi eux :
L’Imâm Abou l-Haçan Al-Ach’ari [ Rapporté par As-Soubki ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ Charh ‘Aqîdah Mâlik As-Saghîr ]
L’Imâm Taqiyyou d-Dîn Al-Hisni [ Daf’ou choubahi man chabbaha wa tamarrad ]
L’Imâm Al-Kawthari qui mentionne l’unanimité [ Maqâlâtou l-Kawthari (1) ] et [ Maqâlâtou l-Kawthari (2) ]
Ibnou l-Bannâ Al-Hambali qui a dit : « Celui qui prend le nouzoûl dans le sens de quitter un endroit pour en occuper un autre, et du déplacement alors c’est de la mécréance » [Al-Ousoûlou l-Moujarradah].
– Tout comme l’Imâm Al-Moutawalli, de nombreux savants ont fait une interprétation détaillée de ce hadîth en expliquant que c’est l’ordre de Allâh, ou un ange, ou encore Sa miséricorde qui descend, parmi ceux qui ont soutenu cela, il y a :
L’Imâm Mâlik, comme le mentionne An-Nawawi qui présente cette interprétation comme l’une des voies valables chez les gens de la sounnah [ Charh Sahîh Mouslim ], Az-Zourqâni [ Charh du Mouwatta de l’Imâm Mâlik ], Ibn Battâl, Al-Qâdî ‘Iyâd, Al-Qastallâni, Al-Yamani, Moullâ ‘Ali Al-Qâri ainsi que Ibn ‘Abdi l-Barr et autres.
L’Imâm Ibn Foûrak
Le Qâdî Aboû Bakr Ibn ‘Arabi
Le Qâdî ‘Iyâd
L’Imâm Al-Jouwayni
L’Imâm Al-Qourtoubi
Le Loughawi Ibn Mandhoûr [ Liçânou l-‘Arab ]
L’Imâm Jamâlou d-Dîn Al-Qoûnawi [Al-Qalâ-id]
L’Imâm Badrou d-Dîn Al-‘Ayni
L’Imâm As-Souyoûti
L’Imâm Al-Qastallâni
Le Chaykh Ibn Hajar Al-Haytami [ Al-Minhajou l-Qawîm ]
Le Chaykh Mouhammad Al-Khatîb Al-Misri
Le Chaykh Moullâ ‘Ali Al-Qâri
Le Chaykh Mahmoûd As-Soubki [ It-hâfou l-Kâ-inat ]
Le Hâfidh ‘Abdou l-Lâh Al-Ghoumâri
et beaucoup d’autres…
– Ainsi il ne convient pas de prêter attention aux propos des wahhabites qui accusent les gens de la Sounnah qui ont interprété ce hadîth d’être des mou’attil (négateur/athée). Ces mêmes wahhabites qui prétendent qu’il s’agit d’une descente véritable de Allâh tout comme l’a prétendu Ibn Outhaymîn (wahhabite) qui a dit : « Et il s’agit d’une descente véritable qui convient à Allâh. Et les négateurs (ahlou t-Ta’tîl) l’ont interprété par la descente de Son ordre, de Sa miséricorde ou d’un de parmi Ses anges » [ Dans son commentaire du livre Loum’atou l-I’tiqâd ] . Ainsi, il est venu avec une croyance totalement opposée à celle des savants mentionnés ci-dessus.
– Cette croyance que défendent les wahhabites est propre aux mouchabbihah (corporalistes) comme l’a signalé l’Imâm Ibn Hajar, lorsqu’il a dit : “ Les gens ont divergé sur le sens de an-nouzoûl : certains l’ont pris selon son sens apparent et son sens propre (haqîqi), et ce sont les corporalistes (al-Mouchabbihah), et Allâh est exempt de ce qu’ils disent. ” [ Charh Sahîh Al-Boukhâri ], et cette croyance que prône Ibn ‘Outhaymîn est celle que prônait l’ancêtre des moujassimah, Aboû ‘Abdi l-Lâh Ibn Karrâm qui prétendait que ce qu’il adore est concerné par le changement de lieu, le déplacement et la descente [ voir à ce sujet le livre de l’Imâm Ach-Charastâni : ici ].
– Le Chaykh Ibn Hamdân a dit : « Le hadîth du nouzoûl et ce qui est similaire dont la chaîne de transmission est authentique ne doivent pas être pris selon le sens apparent » [Nihâyatou l-Moubtadi-în].
– Retrouvez d’autres paroles de savants concernant le hadîth du nouzoûl : ici .', '3oulama, ahlou s-sounnah, ahlou sounnah, ahlu sunna'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« وأما قوله عليه السلام : « ينزل الله في كل ليلة إلى سماء الدنيا » والمراد به انه يبعث ملكا إلى سماء الدنيا حتى ينادي على ما ورد في الخبر ثم أضاف نزول الملك إلى نفسه كما يقال نادى الأمير في البلد إذا أمر بالنداء ويقال قتل الأمير فلانا والقاتل غيره ويضاف إلى الأمير من حيث إنه هو الآمر به»');

-- source: https://islamsunnite.net/le-qadi-abou-bakr-ibn-al-arabi-dit-que-les-innovations-ne-sont-pas-toutes-mauvaises/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La bonne innovation (bid’ah).', 'Les Malikites', 'وليس المحدث والبدعة مذمومًا للفظ محدث وبدعة ولا لمعناها، فقد قال الله تعالى: {مَا يَأْتِيهِمْ مِنْ ذِكْرٍ مِنْ رَبِّهِمْ مُحْدَثٍ} وقال عمر: نعمت البدعة هذه، وإنما يذم من البدعة ما خالف السنة، ويذم من المحدثات ما دعا إلى ضلالة', '« La nouveauté (mouhdath) et l’innovation (bid’ah) ne sont pas blâmables pour leur appellation de nouveauté et d’innovation, ni pour leur sens, Allâh ta’âlâ dit : { مَا يَأْتِيـهِـم مِن ذِكْرٍ مِن رَبِّـهِـم مُحْـدَث } [qui est un verset dans lequel le terme « mouhdath » est employé au sujet des termes qui sont cités dans le Qour-ân et que l’on récite], et ‘Oumar [Ibnou l-Khattâb] a dit : « Quelle bonne innovation que celle-là (ni’mati l-bid’ah hâdhihi)» mais ce qui est blâmable parmi ce qui relève de l’innovation, c’est ce qui contredit la tradition prophétique (Sounnah), et ce qui est blâmable parmi les nouveautés, c’est ce qui appelle à l’égarement »', '', 'Dans son commentaire du recueil de hadîth de l’Imâm At-Tirmidhi « ‘Âridatou l-Ahwadhi », Al-Qâdî Aboû Bakr Ibnou l-‘Arabi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste du Hadîth), Al-Qâdî (le juge) Aboû Bakr Mouhammad Ibnou ‘AbdilLâh Ibnou l-’Arabi Al-Ichbîli Al-Andalouçi Al-Mâliki est né en 468 à Séville (Espagne) et il décédé en 543 de l’Hégire (رحمه الله) à Fès (Maroc), c’est-à-dire il y a environ 900 ans.
L’Imâm An-Nawawi a dit à son sujet : « L’Imâm, le Hâfidh (spécialiste de la science du hadîth), le Qâdî (juge) » . [Tahdhîbou l-Asmâ wa l-Loughât]
Adh-Dhahabi a dit de lui : « L’Imâm, l’illustre savant (Al-‘Allâmah), le Hâfidh (spécialiste de la science du hadîth), le Qâdî (juge) » . [Siyar A’lâmi n-Noubalâ]
– Ici, il explique que l’innovation qui est blâmable, c’est l’innovation qui contredit la religion, alors que l’innovation qui ne vient pas en contradiction avec la religion, celle-ci n’est pas blâmable. Il précise qu’on ne blâme pas une chose pour la simple raison qu’elle est une innovation. En effet l’innovation peut être bonne.
– Parmi ce qui indique cela, il y a la parole de ‘Oumar Ibnou l-Khattâb, le compagnon et second Calife (رضي الله عنه) : « ni’matou l-bid’ah » c’est-à-dire “Quelle bonne innovation”. Cette parole de ‘Oumar a été rapportée par l’Imâm Al-Boukhâri [ Dans son Sahîh ] et l’Imâm Mâlik [ Dans Al-Mouwatta ]. Et beaucoup de savants se sont appuyé sur cette parole de ‘Oumar pour confirmer qu’une innovation peut être bonne, parmi eux :
L’Imâm Ach-Châfi’i [ Rapporté par Al-Bayhaqi dans Al-Madkhal ] et [ Rapporté par Aboû Nou’aym ] et [ Rapporté par Al-Bayhaqi dans Manâqibou ch-Châfi’i ] et [ Rapporté aussi par Ibn Taymiyah (moujassim) ]
L’Imâm Al-Bayhaqi [ Dans son livre Al-Madkhal ] et [ Dans son livre Manâqibou ch-Châfi’i ]
L’Imâm Ibn Battâl [ Dans son Charh Sahîh Al-Boukhâri ]
Le Qâdî Aboû Bakr Ibnou l-‘Arabi [‘Âridatou l-Ahwadhi]
L’Imâm An-Nawawi [ Dans son Charh Sahîh Mouslim ]
L’Imâm Ibn Daqîq Al-‘Îd [ Dans son Charh Arba’în An-Nawawiyyah ]
L’Imâm Ibn Hajar Al-Asqalâni [ Dans son Charh Sahîh Al-Boukhâri ]
L’Imâm As-Souyoûti [ Al-Hâwi li l-Fatâwi ]
Le Mouhaddith Al-Harari [ Dans son livre Ar-Rawâ-ihou z-Zakiyyah ]
et autres qu’eux.
– Le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ]
– Ainsi, le hadîth qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah) est un hadîth dont les termes sont générales mais dont le sens est restreint c’est-à-dire que ce ne sont pas toute les innovations -dans l’absolu- qui sont de l’égarement, mais il s’agit des innovations qui contredisent la religion. Ainsi ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ].
– Le Chaykh ‘Abdou l-Lâh Al-Ghoumâri a dit : « Les savants ont été en accord sur la classification des innovations en bonne et mauvaise, et sur le fait que ‘Oumar (رضي الله عنه) est le premier qui a parlé de cela, et ils ont été en accord sur le fait que la parole du prophète ” كل بدعة ضلالة ” (koullou bid’atin dalâlah) est un texte de portée générale mais dont le sens est restreint (‘âm makhsoûs)» [ Itqânou s-San’ah ]
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .', 'allah, at-tirmidhi, bid3a, bid3ah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وليس المحدث والبدعة مذمومًا للفظ محدث وبدعة ولا لمعناها، فقد قال الله تعالى: {مَا يَأْتِيهِمْ مِنْ ذِكْرٍ مِنْ رَبِّهِمْ مُحْدَثٍ} وقال عمر: نعمت البدعة هذه، وإنما يذم من البدعة ما خالف السنة، ويذم من المحدثات ما دعا إلى ضلالة');

-- source: https://islamsunnite.net/limam-ibn-daqiq-al-id-innovations-pas-toutes-blamables/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'la bonne bid’ah (innovation).', 'Ibn Daqiq Al-''Id', '« وقوله: « وإياكم ومحدثات الأمور » اعلم أن المحدث على قسمين: محدث ليس له أصل في الشريعة فهذا باطل مذموم. ومحدث بحمل النظير على النظير فهذا ليس بمذموم لأن لفظ « المحدث » ولفظ « البدعة » لا يذمان لمجرد الاسم بل لمعنى المخالفة للسنة والداعي إلى الضلالة ولا يذم ذلك مطلقاً . فقد قال الله تعالى: {مَا يَأْتِيهِمْ مِنْ ذِكْرٍ مِنْ رَبِّهِمْ مُحْدَثٍ} . وقال عمر رضي الله عنه: « نعمت البدعة هذه » يعني التراويح. »', '« Et le prophète a dit : « wa iyyâkoum wa mouhdathât al-oumoûr » Sache que les innovations sont de deux sortes : Il y a l’innovation qui n’a aucune origine dans la religion et cette innovation est fausse et blâmable. Et il y a l’innovation qui est une analogie entre une chose nouvelle et quelque chose qui a une origine dans la religion, et celle-ci n’est pas blâmable.', '', 'Dans son commentaire des quarante hadîth de l’Imâm An-Nawawi, lorsqu’il explique le hadîth qui comporte les termes « وَ إِيَّـاكُـمْ وَ مُحْـدَثَاتِ الأُمُورِ، فَـإِنَّ كُـلَّ بِـدْعَةٍ ضَـلَالَة » [wa iyyâkoum wa mouhdathât al-oumoûr fa inna koulla mouhdathah bid’ah, wa koullou bid’ah dalâlah], l’Imâm Ibn Daqîq Al-‘Îd a dit :
Parce que le terme « bid’ah » et le terme « mouhdath » [qui signifie tout les deux : innovation, nouveauté] ne sont pas blâmé pour leur appellation d’innovation [c’est-à-dire par le simple fait que ce soit une innovation], Mais elles sont blâmable lorsqu’elles ont un sens contradictoire avec la Sounnah [croyance et lois de l’Islâm] et qu’elles appellent à l’égarement. Donc on ne les blâme pas dans l’absolu.
Allâh ta’âlâ dit : { مَا يَأْتِيـهِـم مِن ذِكْرٍ مِن رَبِّـهِـم مُحْـدَث } [qui est un verset dans lequel le terme « mouhdath » est employé au sujet des termes qui sont cités dans le Qour-ân et que l’on récite]
Et ‘Oumar [Ibnou l-Khattâb] a dit : « Quelle bonne innovation que celle-là (ni’mati l-bid’ah hâdhihi)», en parlant des tarâwîh. »
Informations utiles :
– L’Imâm, Chaykhou l-Islâm, le Hafîdh (spécialiste de la science du Hadîth), Al-Faqîh (spécialiste de la jurisprudence) Taqiyyou d-Dîn Abou l-Fath Ibn Daqîq Al-‘îd est né en 625 à Yanbu (près de Médine) et il est décédé en 702 de l’Hégire au Caire (Egypte) (رحمه الله), c’est-à-dire il y a plus de 700 ans. ll était de l’école de jurisprudence Châfi’ite. Il a écrit un commentaire très réputé des quarante Hadîth de l’Imâm An-Nawawi. Certains savants le considèrent comme le moujaddid (celui qui revitalise la science de la religion) du 7ème siècle.
Son Chaykh ‘Izzou d-Dîn Ibn ‘Abdi s-Salâm a dit à son sujet : « Les contrées Égyptiennes sont fiers de deux hommes aux deux extrémités du pays : Ibn Al-Mounayyir à Alexandrie et Ibn Daqîq Al-‘îd à Qus » .
Abou l-Fadâ a dit de lui : « Il est le juge des juges Châfi’ites des contrées Égyptiennes et il était un éminent Imâm » .
Ibn Sayyid an-Nâs a dit à son sujet : « Je n’ai jamais vu de semblable à lui » .
Aboû Hayyân Al-Andalouçi l’a décrit comme : « Le Chaykh, le Faqîh (spécialiste de la jurisprudence), l’Imâm, le Savant sans pareil, pieux, le Moufti, le Hâfidh (spécialiste de la science du hadîth) considéré » .
As-Soubki a dit à son sujet : « Le Chaykh, l’Imâm, Chaykhou l-Islâm, Al-Hâfidh (spécialiste de la science du hadîth), l’ascète, le pieux adorateur, le moujtahid moutlaq, celui qui a maîtrisé de manière complète les sciences Islamiques, et qui a rassemblé entre la science et l’application, et qui a emprunté la voix des maîtres anciens ». Et il a dit aussi : « Nous ne connaissons personne parmi nos maîtres ayant divergé sur le fait qu’Ibn Daqîq Al-‘Îd est le moujaddid du septième siècle, dont il est question dans le hadîth du prophète, et qu’il fut le maître de son temps de par son savoir et sa droiture dans la religion »
As-Souyoûti a dit dans un vers de poésie dans laquelle il énumère les savants moujaddid : « Le septième : le très grand Ibn Daqîq Al-‘îd par accord des savants »
Ibn Battoûtah a dit à son sujet : « Le Qâdî (juge) des Châfi’ites, Taqiyyou d-Dîn Ibn Daqîq Al-‘Îd » [Ar-Rihlah]
Adh-Dhahabi a dit de lui : « Il est le juge des juges des contrées Égyptiennes, leur Chaykh et leur Savant, l’Imâm, l’illustre savant (al-‘Allâmah), le Hâfidh (spécialiste de la science du hadîth), le modèle (qoudwah), le pieux adorateur, le Chaykh de son époque » . Il a dit également : « Le moujaddid du septième siècle est notre maître Abou l-Fath Ibn Daqîq Al-‘îd »
– Ici, lorsqu’il aborde le hadîth comportant les termes « wa koullou bid’ah dalâlah » il explique que l’innovation qui est blâmable, c’est l’innovation qui contredit la religion, alors que l’innovation qui ne vient pas en contradiction avec la religion, celle-ci n’est pas blâmable. Il précise qu’on ne blâme pas une chose pour la simple raison qu’elle est une innovation. En effet l’innovation peut être bonne.
– Parmi ce qui indique cela, il y a la parole de ‘Oumar Ibnou l-Khattâb, le compagnon et second Calife (رضي الله عنه) : « ni’matou l-bid’ah » c’est-à-dire “Quelle bonne innovation”. Cette parole de ‘Oumar a été rapportée par l’Imâm Al-Boukhâri [ Dans son Sahîh ] et l’Imâm Mâlik [ Dans Al-Mouwatta ]. Et beaucoup de savants se sont appuyé sur cette parole de ‘Oumar pour confirmer qu’une innovation peut être bonne, parmi eux :
L’Imâm Ach-Châfi’i [ Rapporté par Al-Bayhaqi dans Al-Madkhal ] et [ Rapporté par Aboû Nou’aym ] et [ Rapporté par Al-Bayhaqi dans Manâqibou ch-Châfi’i ] et [ Rapporté aussi par Ibn Taymiyah (moujassim) ]
L’Imâm Al-Bayhaqi [ Dans son livre Al-Madkhal ] et [ Dans son livre Manâqibou ch-Châfi’i ]
L’Imâm Ibn Battâl [ Dans son Charh Sahîh Al-Boukhâri ]
Le Qâdî Aboû Bakr Ibnou l-‘Arabi [ ‘Âridatou l-Ahwadhi ]
L’Imâm An-Nawawi [ Dans son Charh Sahîh Mouslim ]
L’Imâm Ibn Daqîq Al-‘Îd [Dans son Charh Arba’în An-Nawawiyyah]
L’Imâm Ibn Hajar Al-Asqalâni [ Dans son Charh Sahîh Al-Boukhâri ]
L’Imâm As-Souyoûti [ Al-Hâwi li l-Fatâwi ]
Le Mouhaddith Al-Harari [ Dans son livre Ar-Rawâ-ihou z-Zakiyyah ]
et autres qu’eux.
– Le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ]
– Ainsi, le hadîth qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah) est un hadîth dont les termes sont générales mais dont le sens est restreint c’est-à-dire que ce ne sont pas toute les innovations -dans l’absolu- qui sont de l’égarement, mais il s’agit des innovations qui contredisent la religion. Ainsi ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ].
– Le Chaykh ‘Abdou l-Lâh Al-Ghoumâri a dit : « Les savants ont été en accord sur la classification des innovations en bonne et mauvaise, et sur le fait que ‘Oumar (رضي الله عنه) est le premier qui a parlé de cela, et ils ont été en accord sur le fait que la parole du prophète ” كل بدعة ضلالة ” (koullou bid’atin dalâlah) est un texte de portée générale mais dont le sens est restreint (‘âm makhsoûs)» [ Itqânou s-San’ah ]
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .', 'allah, aqida, bid3a, bid3ah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« وقوله: « وإياكم ومحدثات الأمور » اعلم أن المحدث على قسمين: محدث ليس له أصل في الشريعة فهذا باطل مذموم. ومحدث بحمل النظير على النظير فهذا ليس بمذموم لأن لفظ « المحدث » ولفظ « البدعة » لا يذمان لمجرد الاسم بل لمعنى المخالفة للسنة والداعي إلى الضلالة ولا يذم ذلك مطلقاً . فقد قال الله تعالى: {مَا يَأْتِيهِمْ مِنْ ذِكْرٍ مِنْ رَبِّهِمْ مُحْدَثٍ} . وقال عمر رضي الله عنه: « نعمت البدعة هذه » يعني التراويح. »');

-- source: https://islamsunnite.net/ibn-achir-accomplit-tawassoul-prophete/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Il est permis de faire le tawassoul par le prophète après son décès.', 'Ibn ''Achir', 'فأسأل النفع به على الدوام … من ربِّنا بجاه سيِّدِ الأنام', '«Et je demande par lui (cet ouvrage) le profit en permanence, à notre Seigneur par le degré (bi jâh) du maître (sayyid) des gens [c’est-à-dire le prophète]».', '', 'Le Chaykh Ibnou ‘Âchir, dans son célèbre matn « Al-Mourchidou l-Mou’în ‘ala d-Daroûriyyi min ‘Ouloûmi d-Dîn » (page 59 de cette édition) a dit :
Informations utiles :
– Le Chaykh, le Faqîh (spécialiste de la jurisprudence) Aboû Mouhammad ‘Abdou l-Wâhid Ibnou Ahmad Ibnou ‘Ali Ibnou ‘Âchir Al-Ansari Al-Fâçi, est né en 990 et il est décédé 1040 de l’hégire (رحمه الله) c’est-à-dire il y a environ 400 ans. Il était du madh-hab (Ecole de jurisprudence) de l’Imâm Mâlik. Consultez sa biographie : ici .
– Son matn « Al-Mourchidou l-Mou’în ‘ala d-Daroûriyyi min ‘Ouloûmi d-Dîn » appelé plus couramment le « matn de Ibnou ‘Âchir » est très célèbre dans le monde musulman, et très étudié chez les malikites.
– Ici, le Chaykh Ibn ‘Âchir fait le tawassoul par le prophète (صلى الله عليه وسلم) en utilisant l’expression « bi jâh ».
– Ceci est similaire au tawassoul réalisé par le prophète Âdam (عليه السلام) lorsqu’il a dit [ce qui a pour sens : ] « Ô Seigneur, je te demande bi Haqqi Mouhammad de me pardonner.» [ Rapporté par Al-Hâkim ]
– Le tawassoul est le fait de demander à Allâh l’obtention d’un profit ou l’empêchement d’une nuisance et ce, par la mention du nom d’un prophète ou d’un saint, par honneur pour celui par lequel le tawassoul est fait. Faire le tawassoul est permis en leur présence et en leur absence tout comme l’indique les preuves selon la Loi de l’Islâm. Le tawassoul ne constitue donc pas une adoration pour autre que Allâh.
– Le prophète (صلى الله عليه وسلم) enseigna lui-même le tawassoul aux compagnons et les compagnons le pratiquaient également après son décès (صلى الله عليه وسلم). [ Rapporté par At-Tabarâni ]
– Ainsi, le tawassoul est une pratique qui est permise selon l’unanimité des musulmans comme le rapporte l’Imâm Taqiyyou d-Dîn As-Soubki [ Dans son livre Chifâ-ou s-Saqâm ]
– L’adoration (al-‘Ibâdah) : c’est l’extrême limite de la crainte et de la soumission, comme l’a mentionné l’Imâm Moujtahid, le Hâfidh (spécialiste du Hadîth), le Loughawi (spécialiste de la langue Arabe) Taqiyyou d-Dîn As-Soubki.
Ainsi le simple fait d’appeler (nidâ) un vivant ou un mort ne constitue pas une adoration d’autre que Allâh, ni le simple fait de glorifier (ta’dhîm) ou de faire al-istighâthah (la recherche du renfort) par autre que Allâh. De même, le simple fait de visiter la tombe d’un saint pour le tabarrouk (la recherche des bénédictions) ne constitue pas une adoration d’autre que Allâh. De même, le simple fait de demander ce qu’il n’est pas habituel de demander aux gens ne constitue pas une adoration d’autre que Allâh. De même, la formule de al-isti’ânah (demande d’aide) à autre que Allâh ta’âlâ ne constitue pas une adoration d’autre que Allâh. Egalement, la simple humilité n’est pas une adoration envers autre que Allâh car sinon, tous ceux qui font preuve d’humilité avec les rois et les nobles seraient devenus mécréants.
C’est-à-dire que tout cela n’est pas du chirk (le fait d’attribuer des associés à Allâh), car la définition de l’adoration (al-‘ibâdah) selon les spécialistes de la langue ne s’applique pas à tout cela. En effet, pour eux, l’adoration (al-‘ibâdah) comme nous venons de le voir est l’obéissance avec la soumission. Voir à ce sujet l’explication de l’Imâm du Salaf, le Loughawi (spécialiste de la langue Arabe) Aboû Is-hâq Ibrâhîm Az-Zajjâj : ici .
– De plus, les savants qui ont commenté l’ouvrage d’Ibn ‘Âchir ne l’ont aucunement blâmé pour le fait d’avoir réalisé le tawassoul par le prophète (صلى الله عليه وسلم), au contraire ils ont approuvé cela. Parmi eux :
Son élève, le Chaykh Mouhammad Mayyârah Al-Mâliki a dit : « Puis il a demandé à Allâh le profit permanent et continuel par cet ouvrage (nadhm) en réalisant le tawassoul par son degré (bi jâhi), c’est-à-dire par le degré (bi qadri) du maître de l’humanité (sayyid al-anâm), c’est-à-dire des créatures (صلى الله عليه وسلم) » [Ad-Dourrou th-Thamîn wa l-Mawridou l-Ma’în]
Le Chaykh Mouhammad Ibn A’mar An-Nâbighah Al-Ghalâwi a dit : « Nous demandons par lui, c’est-à-dire par cet ouvrage et son commentaire, le profit en permanence, c’est-à-dire constamment, à notre Seigneur, Allâh et non autre que Lui, par le degré (bi jâh c’est-à-dire bi hourmah), du maître de l’humanité (sayyid al-anâm) et il s’agit de Mouhammad (صلى الله عليه وسلم) » [Al-Moubâchir ‘ala Bni ‘Âchir]
Le Chaykh Mouhammad Al-Mourâkouchi Al-Mâliki Al-Mouwaqqit a dit : « Puis il a demandé à Allâh le profit permanent et continuel par cet ouvrage (nadhm) en réalisant le tawassoul par son degré (bi jâhi), c’est-à-dire par le degré (bi qadri) du maître de l’humanité (sayyid al-anâm), c’est-à-dire des créatures, notre maître (mawlânâ) Mouhammad (صلى الله عليه وسلم)» [Al-Hablou l-Matîn ‘alâ Nadhmi l-Mourchidi l-Mou’în]
– Ainsi, il ne convient pas de prêter attention aux propos virulents des wahhabites qui interdisent cela fermement et qui considèrent même celui qui fait cela mouchrik (associateur), kâfir (mécréant), tout comme Al-Fawzân (wahhabite) l’a dit : « Il n’est pas permis de faire le tawassoul par le degré (bi jâhi) du prophète (صلى الله عليه وسلم), ni par le degré d’autres que lui, car ceci est une innovation (bid’ah), et il n’y a aucune preuve de cette pratique, et ceci est du chirk (association) » [ Dans son livre Fatâwâ Al-‘Aqîdah ]
– Egalement comme l’a fait le Chaykh Ibn ‘Âchir, il est permis d’appeler le prophète par le terme « maître » (sayyid). Et ceci est conforme à la parole même du prophète qui a dit [ce qui a pour sens : ] « Je suis le maître (sayyid) des fils de Âdam le jour dernier et je ne dis pas cela par prétention » [ Rapporté par At-Tirmidhi ]
– Retrouvez d’autres articles au sujet du tawassoul et du tabarrouk : ici .', 'fès, fez, ibn 3achir, ibn 3ashir'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فأسأل النفع به على الدوام … من ربِّنا بجاه سيِّدِ الأنام');

-- source: https://islamsunnite.net/fatwa-de-dar-al-ifta-al-misriyyah-allah-existe-sans-endroit-par-unanimite/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit par unanimité.', 'Al Azhar', '« الســــؤال: أنا طالب بكلية الشريعة وقد تعلمت ودرست في علم العقيدة : أن الله موجود بلا مكان ولا يتحيز في أي جهة ، فأفتوني في ذلك ؛ حيث إن هناك بعض من يتهجم على عقيدة الأزهر .', '', '', 'L’instance religieuse Egyptienne « Dâr al-Iftâ Al-Misriyyah », en date du 6 décembre 2005 et sous le n°4307, a émis la Fatwâ suivante :', '3ala l-3arch istawa, 3arch, ach''ariya, ach''ariyya'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« الســــؤال: أنا طالب بكلية الشريعة وقد تعلمت ودرست في علم العقيدة : أن الله موجود بلا مكان ولا يتحيز في أي جهة ، فأفتوني في ذلك ؛ حيث إن هناك بعض من يتهجم على عقيدة الأزهر .');

-- source: https://islamsunnite.net/fatwa-de-dar-al-ifta-al-misriyyah-allah-existe-sans-endroit-par-unanimite/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit par unanimité.', 'Al Azhar', 'الـجـــواب : من ثوابت العقيدة عند المسلمين أن الله تعالى لا يحويه مكان ولا يحده زمان ؛ لأن المكان والزمان مخلـوقان ، وتعالى الله سبحانه أن يحيط به شيء من خلقه ، بل هو خالق كل شيء ، وهو المحيط بكل شيء ، وهذا الاعتقاد متفق عليه بين المسلمين لا يُنكره منهم مُنكِرٌ ، وقد عبَّر عن ذلك أهل العلم بقولهم : « كان الله ولا مكان ، وهو على ما كان قبل خلق المكان ؛ لم يتغير عما كان » .', '', '', '', '3ala l-3arch istawa, 3arch, ach''ariya, ach''ariyya'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'الـجـــواب : من ثوابت العقيدة عند المسلمين أن الله تعالى لا يحويه مكان ولا يحده زمان ؛ لأن المكان والزمان مخلـوقان ، وتعالى الله سبحانه أن يحيط به شيء من خلقه ، بل هو خالق كل شيء ، وهو المحيط بكل شيء ، وهذا الاعتقاد متفق عليه بين المسلمين لا يُنكره منهم مُنكِرٌ ، وقد عبَّر عن ذلك أهل العلم بقولهم : « كان الله ولا مكان ، وهو على ما كان قبل خلق المكان ؛ لم يتغير عما كان » .');

-- source: https://islamsunnite.net/fatwa-de-dar-al-ifta-al-misriyyah-allah-existe-sans-endroit-par-unanimite/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit par unanimité.', 'Al Azhar', 'ومن عبارات السلف الصالح في ذلك : قول الإمام جعفر الصادق عليه السلام : « مَنْ زعم أن الله في شيء أو من شيء أو على شيء فقد أشرك ؛ إذ لو كان في شيء لكان محصورًا ، ولو كان على شيء لكان محمولا ، ولو كان من شيء لكان مُحْدَثًا » اهـ .', '', '', '', '3ala l-3arch istawa, 3arch, ach''ariya, ach''ariyya'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ومن عبارات السلف الصالح في ذلك : قول الإمام جعفر الصادق عليه السلام : « مَنْ زعم أن الله في شيء أو من شيء أو على شيء فقد أشرك ؛ إذ لو كان في شيء لكان محصورًا ، ولو كان على شيء لكان محمولا ، ولو كان من شيء لكان مُحْدَثًا » اهـ .');

-- source: https://islamsunnite.net/fatwa-de-dar-al-ifta-al-misriyyah-allah-existe-sans-endroit-par-unanimite/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit par unanimité.', 'Al Azhar', 'وقيل ليحيى بن معاذ الرازي : أَخْبِرْنا عن الله عز وجل ، فقال : إله واحد ، فقيل له : كيف هو ؟ قال : ملك قادر ، فقيل له : أين هو ؟ فقال : بالمرصاد ، فقال السائل : لم أسألك عن هذا ؟ فقال : ما كان غير هذا كان صفة المخلوق ، فأما صفته فما أخبرت عنه .', '', '', '', '3ala l-3arch istawa, 3arch, ach''ariya, ach''ariyya'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وقيل ليحيى بن معاذ الرازي : أَخْبِرْنا عن الله عز وجل ، فقال : إله واحد ، فقيل له : كيف هو ؟ قال : ملك قادر ، فقيل له : أين هو ؟ فقال : بالمرصاد ، فقال السائل : لم أسألك عن هذا ؟ فقال : ما كان غير هذا كان صفة المخلوق ، فأما صفته فما أخبرت عنه .');

-- source: https://islamsunnite.net/fatwa-de-dar-al-ifta-al-misriyyah-allah-existe-sans-endroit-par-unanimite/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit par unanimité.', 'Al Azhar', 'وسُئِل ذو النون المصري رضي الله عنه عن قوله تعالى { الرَّحْمَنُ عَلَى العَرْشِ اسْتَوَى } ، فقـال : « أثبت ذاته ونفى مكانه ؛ فهو موجود بذاته والأشياء بحكمته كما شاء » اهـ .', '', '', '', '3ala l-3arch istawa, 3arch, ach''ariya, ach''ariyya'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وسُئِل ذو النون المصري رضي الله عنه عن قوله تعالى { الرَّحْمَنُ عَلَى العَرْشِ اسْتَوَى } ، فقـال : « أثبت ذاته ونفى مكانه ؛ فهو موجود بذاته والأشياء بحكمته كما شاء » اهـ .');

-- source: https://islamsunnite.net/fatwa-de-dar-al-ifta-al-misriyyah-allah-existe-sans-endroit-par-unanimite/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit par unanimité.', 'Al Azhar', 'وأما ما ورد في الكتاب والسنة من النصوص الدالة على علو الله عز وجل على خلقه فالمراد بها علو المكانة والشرف والهيمنة والقهر ؛ لأنه تعالى منـزه عن مشابهة المخلوقين ، وليست صفاته كصفاتهم ، وليس في صفة الخالق سبحانه ما يتعلق بصفة المخلوق من النقص ، بل له جل وعلا من الصفات كمالُها ومن الأسماء حُسْنَاها ، وكل ما خطر ببالك فالله تعالى خلاف ذلك ، والعجز عن درك الإدراكِ إدراكُ ، والبحث في كنه ذات الرب إشراكُ .', '', '', '', '3ala l-3arch istawa, 3arch, ach''ariya, ach''ariyya'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وأما ما ورد في الكتاب والسنة من النصوص الدالة على علو الله عز وجل على خلقه فالمراد بها علو المكانة والشرف والهيمنة والقهر ؛ لأنه تعالى منـزه عن مشابهة المخلوقين ، وليست صفاته كصفاتهم ، وليس في صفة الخالق سبحانه ما يتعلق بصفة المخلوق من النقص ، بل له جل وعلا من الصفات كمالُها ومن الأسماء حُسْنَاها ، وكل ما خطر ببالك فالله تعالى خلاف ذلك ، والعجز عن درك الإدراكِ إدراكُ ، والبحث في كنه ذات الرب إشراكُ .');

-- source: https://islamsunnite.net/fatwa-de-dar-al-ifta-al-misriyyah-allah-existe-sans-endroit-par-unanimite/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit par unanimité.', 'Al Azhar', 'وعقيدة الأزهر الشريف هي العقيدة الأشعرية وهي عقيدة أهل السنة والجماعة ، والسادة الأشاعرة رضي الله تعالى عنهم وأرضاهم هم جمهور العلماء من الأمة ، وهم الذين صَدُّوا الشبهات أمام المَلاَحِدَةِ وغيرهم ، وهم الذين التزموا بكتاب الله وسنة سيدنا رسول الله صلى الله عليه وآله وسلم عبر التاريخ ، ومَنْ كفّرهم أو فسّقهم يُخْشَى عليه في دينه .', '', '', '', '3ala l-3arch istawa, 3arch, ach''ariya, ach''ariyya'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وعقيدة الأزهر الشريف هي العقيدة الأشعرية وهي عقيدة أهل السنة والجماعة ، والسادة الأشاعرة رضي الله تعالى عنهم وأرضاهم هم جمهور العلماء من الأمة ، وهم الذين صَدُّوا الشبهات أمام المَلاَحِدَةِ وغيرهم ، وهم الذين التزموا بكتاب الله وسنة سيدنا رسول الله صلى الله عليه وآله وسلم عبر التاريخ ، ومَنْ كفّرهم أو فسّقهم يُخْشَى عليه في دينه .');

-- source: https://islamsunnite.net/fatwa-de-dar-al-ifta-al-misriyyah-allah-existe-sans-endroit-par-unanimite/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit par unanimité.', 'Al Azhar', 'قال الحافظ ابن عساكر رحمه الله في كتابه « تبيين كذب المفتري فيما نسب إلى الإمام أبي الحسن الأشعري » : « اعلم وفقني الله وإياك لمرضاته ، وجعلنا ممن يتقيه حق تقاته ، أن لحوم العلماء مسمومة ، وعادة الله في هتك أستار منتقصيهم معلومة ، وأن من أطلق عليهم لسانه بالثلب ، ابتلاه الله قبل موته بموت القلب » اهـ .', '', '', '', '3ala l-3arch istawa, 3arch, ach''ariya, ach''ariyya'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال الحافظ ابن عساكر رحمه الله في كتابه « تبيين كذب المفتري فيما نسب إلى الإمام أبي الحسن الأشعري » : « اعلم وفقني الله وإياك لمرضاته ، وجعلنا ممن يتقيه حق تقاته ، أن لحوم العلماء مسمومة ، وعادة الله في هتك أستار منتقصيهم معلومة ، وأن من أطلق عليهم لسانه بالثلب ، ابتلاه الله قبل موته بموت القلب » اهـ .');

-- source: https://islamsunnite.net/fatwa-de-dar-al-ifta-al-misriyyah-allah-existe-sans-endroit-par-unanimite/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit par unanimité.', 'Al Azhar', 'والأزهر الشريف هو منارة العلم والدين عبر التاريخ الإسلامي ، وقد كوَّن هذا الصرحُ الشامخُ أعظم حوزة علمية عرفتها الأمة بعد القرون الأولى المُفَضَّلة ، وحفظ الله تعالى به دينه ضد كل معاند ومشكك ؛ فالخائض في عقيدته على خطر عظيم ، ويُخْشَى أن يكون من الخوارج والمرجفين الذي قال الله تعالى فيهم :', '', '', '', '3ala l-3arch istawa, 3arch, ach''ariya, ach''ariyya'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'والأزهر الشريف هو منارة العلم والدين عبر التاريخ الإسلامي ، وقد كوَّن هذا الصرحُ الشامخُ أعظم حوزة علمية عرفتها الأمة بعد القرون الأولى المُفَضَّلة ، وحفظ الله تعالى به دينه ضد كل معاند ومشكك ؛ فالخائض في عقيدته على خطر عظيم ، ويُخْشَى أن يكون من الخوارج والمرجفين الذي قال الله تعالى فيهم :');

-- source: https://islamsunnite.net/fatwa-de-dar-al-ifta-al-misriyyah-allah-existe-sans-endroit-par-unanimite/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit par unanimité.', 'Al Azhar', 'والله سبحانه وتعالى أعلم »', '« La question :', '', 'Je suis étudiant à la faculté de la Charî’ah (Droit Islamique). J’ai appris et étudié dans la science de la croyance (‘aqîdah) que Allâh existe sans endroit et n’est limité par aucune direction. Merci de m’éclairer à ce sujet, car il y a des gens qui s’en prennent à la croyance d’al-Azhar.
La réponse :
L’un des principes confirmés de la croyance (‘aqîdah) des musulmans est que Allâh n’est pas circonscrit dans un endroit et n’est pas limité dans le temps. En effet, l’endroit et le temps sont deux créatures, et Allâh soubhânah est exempt du fait d’être entouré par l’une de Ses créatures. Il est, au contraire, Le Créateur de toute chose et Il englobe parfaitement toute chose [par Sa science]. Cette croyance fait l’unanimité chez les musulmans, et nul parmi eux ne la rejette.
Les savants exprimèrent cela en disant : « Allâh existe [de toute éternité] alors que n’existait aucun endroit, et Il est maintenant comme Il a toujours été avant la création des endroits, sans le moindre changement. »
Parmi les expressions que nous tenons de nos pieux prédécesseurs (As-Salafou s-Sâlih) figure cette parole de l’Imâm Ja’far as-Sâdiq (‘alayhi s-salâm) : « Celui qui prétend que Allâh est dans quelque chose, ou issu de quelque chose, ou au-dessus de [ou sur] quelque chose a commis du chirk (c’est-à-dire : adorer autre que Allâh), car s’Il était au-dessus de [ou sur] quelque chose Il serait porté, s’Il était dans quelque chose, Il serait limité, s’Il était issu de quelque chose, Il serait entré en existence (c’est-à-dire créé)».
Quelqu’un demanda à Yahyâ ibn Mou’âdh Ar-Râzi : « Parle-nous de Allâh ‘azza wa jall ». Yahyâ ibn Mou’âdh répondit : « Il est un Dieu unique. » On lui demanda : « Comment est-Il ? » Yahyâ répondit : « Un Seigneur tout-puissant ». On lui dit ensuite : « Où est-Il ? » Yahyâ répondit : « Bi l-Mirsâd [cela signifie que Allâh voit et entend toute chose] » La personne qui l’interrogeait objecta : « Ma question ne porte pas sur cela ! ». Alors Yahyâ lui dit : « Ce qui est autre que cela est un attribut de la créature. Quant à Ses attributs, ils sont tels que je viens de te les citer. » »
Et une personne interrogea Dhoun-Noûn al-Misri, au sujet de la parole de Allâh ta’âlâ : « ٱلرَّحۡمَـٰنُ عَلَى ٱلۡعَرۡشِ ٱسۡتَوَىٰ » (Ar-Rahmânou ‘ala l-‘archi stawâ). Il répondit : « Il affirma Son Être et nia toute localisation à son sujet, car Il existe de par Son Être tandis que toute autre chose existe par Sa sagesse, et conformément à Sa volonté. »
Pour ce qui est des textes rapportés du Livre (le Qour-ân) ou de la Sounnah qui indiquent le ‘Oulouww [l’élévation] de Allâh par rapport à Ses créatures, il s’agit de l’élévation du rang (makânah), de l’honneur (charaf), de l’emprise (haymanah), et de la domination (qahr) [et non une élévation physique par l’endroit et la direction]. En effet Allâh ta’âlâ n’a pas la moindre ressemblance avec Ses créatures et Ses attributs ne sont pas du tout semblables aux leurs. Et il n’y a rien dans les attributs du Créateur soubhânah qui aurait une similarité avec les attributs des créatures, ce qui indiquerait une imperfection ; au contraire, Il a les attributs de perfection et à Lui appartiennent les noms sublimes.
Et tout ce qui est susceptible de parvenir à ton esprit, Allâh en est différent. Réaliser son incapacité à parvenir à connaître la réalité de Allâh est en soi une connaissance, et chercher à atteindre la réalité du Seigneur est un acte d’association (chirk).
La croyance d’Al-Azhar Ach-Charîf est conforme à la croyance Ach’arite qui est la croyance de Ahlou s-Sounnah wal-jamâ’ah (les sunnites). Les maîtres Ach’arites (رضي الله تعالى عنهم وأرضاهم) constituent la majorité des savants de la communauté. Ce sont eux qui ont réfuté les fausses allégations des irréligieux et autres qu’eux. Ce sont eux qui se sont attachés au Qour-ân et à la Sounnah de notre maître Mouhammad (صلى الله عليه وآله وسلم) tout au long de l’histoire. Quiconque les rend mécréants ou les accuse d’égarement, sa religion est en péril.
Al-Hâfidh Ibn ‘Açâkir (رحمه الله) dit dans son ouvrage « Tabyîn kadhibi l-mouftarî fîmâ nousiba ila l-Imâm Abi l-Haçan al-Ach’ari » : « Sache, puisse Dieu nous accorder Son agrément et nous accepter parmi ceux qui Le craignent et Le redoutent comme il se doit, que la chair des savants est empoisonnée [Ceci est une allusion au fait que Allâh a comparé le fait de parler en mal de son frère musulman sans droit au fait de manger de sa chair. Donc ceci signifie que celui qui parle en mal des savants sans droit se nuit à lui-même, car c’est comme s’il mangeait de la chair empoisonnée]. Par une loi divine bien connue, ceux qui les dénigrent sont blâmés. Quiconque pratique à leur égard la médisance sera éprouvé par la mort de son cœur avant son décès. »
Al-Azhar ach-Charîf a été un phare du savoir et de la religion à travers l’histoire Islamique. Cet éminent édifice a constitué le plus grand centre scientifique que la communauté a connu, après les premiers siècles honorés. Allâh en a fait une cause pour préserver la religion contre les détracteurs et les incrédules. Celui qui dénigre la croyance d’Al-Azhar s’expose à un grand péril et il est à craindre qu’il soit du nombre des khawârij ou des fauteurs de troubles dont Allâh dit [dans le sens : ] « Certes, si les hypocrites, ceux qui ont la maladie au cœur, et les semeurs de troubles à Médine ne cessent pas, Nous t’inciterons contre eux, et alors, ils n’y resteront que peu de temps en ton voisinage. »
Et Allâh Soubhânahou wa ta’âlâ sait plus que tout autre.»
Informations utiles :
– Dârou l-Iftâ al-Misriyyah est une instance religieuse Égyptienne fondée l’an 1313 H. (1895 c). Elle est étroitement liée à l’Université Islamique Al-Azhar et ses Chouyoûkh.
– Dans cette Fatwâ émise en 2005 il est confirmé l’unanimité des musulmans sur le fait que Allâh existe sans endroit. En effet, tous les musulmans ont pour croyance que Allâh existe sans endroit et sans direction. Cette unanimité a été mentionnée par de nombreux savants tels que :
L’Imâm Aboû Mansoûr Al-Baghdâdi [ Al-Farqou bayna l-Firaq ],
L’Imâm Al-Jouwayni [ Al-Irchâd ],
L’Imâm Ar-Râzi [ Dans son tafsîr ],
Le Chaykh Salîm Al-Bichri Al-Azhari [ Rapporté par le Chaykh Al-’Azzâmi ],
Le Chaykh Al-Qoudâ’i Al-’Azzâmi [ Fourqânou l-Qour-ân ],
Le Chaykh Mouhammad Al-‘Arabi At-Tabbâni [ Barâ-atou l-Ach’ariyyîn ],
Le Chaykh Mahmoûd As-Soubki [ It-hâfou l-Kâ-inat (1) ] et [ It-hâfou l-Kâ-inat (2) ],
Le Chaykh Ach-Chanqîti [ Al-Âyatou-l Mouhkamât ],
L’ancien Moufti d’Egypte, le Chaykh Mouhammad Bakhît Al-Moutî’i Al-Hanafi qui a dit : « L’ensemble de la communauté Islamique est sur la croyance que Allâh est exempt de l’incarnation dans les endroits, et qu’Il est exempt de la direction, c’est-à-dire d’être au-dessus de quelque chose, ou en dessous, ou à droite, ou à gauche, ou derrière ou devant. Et on ne dit pas que Allâh serait en contact par Son Être avec quelque chose, ou qu’Il serait séparé de quelque chose, ainsi on ne dit pas que Allâh serait séparé du monde, ou en contact avec lui » [Rapporté par le Chaykh Mahmoûd As-Soubki Al-Azhari dans son livre It-hâfou l-Kâ-inât]
Le Mouhaddith Al-Harari,
Et beaucoup d’autres [ voir : ici ]
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah]
– Il est mentionné au sein de cette Fatwâ la célèbre parole de l’Imâm Ja’far as-Sâdiq qui a dit que Allâh n’est ni dans quelque chose, ni issu de quelque chose, ni au-dessus de quelque chose, et que la croyance en l’une de ces choses là est du chirk (qui est une forme de mécréance). De nos jours, certains égarés ont pour croyance que Allâh serait dans le ciel, ou bien qu’Il est au-dessus du Trône. A’oûdhoubi l-Lâh. Que Allâh nous accorde une bonne compréhension de la science du Tawhîd et qu’Il nous préserve du chirk.
– Cette parole de l’Imâm Ja’far As-Sâdiq a été rapportée par de nombreux savants, parmi eux :
L’Imâm Al-Baqillâni [ Al-Insâf ]
L’Imâm Al-Qouchayri [ Ar-Riçâlatou l-Qouchayriyyah ]
Le Chaykh Ahmad Zarroûq Al-Fâçi [Dans son Charh ‘Aqîdati l-Imâm Al-Ghazâli]
L’Imâm As-Samarqandi en des termes proches [ Charh Al-Fiqh Al-Akbar ]
Et autres… Comme dans le livre « ‘Aqîdah al-Mouslimîn » qui est un livre approuvé par la section des fondements de la religion (Ousoûl ad-Dîn) de l’Université Al-Azhar [ ‘Aqîdatou l-Mouslimîn ]
– L’Imâm Ja’far As-Sâdiq: Il est Aboû ‘Abdi l-Lâh, Ja’far fils de Mouhammad Al-Bâqir, fils de Zaynou l-‘Âbidin ‘Ali fils de Al-Houçayn, le fils de l’Imâm ‘Ali Ibnou Abî Tâlib et Fâtimah (رضي الله عنهم), la fille du prophète (صلى الله عليه وسلم). Il est également descendant du Calife Aboû Bakr As-Siddîq (رضي الله عنه) de par son ascendance maternelle. Il est parmi les grands Imam du Salaf. Il est né en 83 à Médine et est décédé en 148 de l’Hégire à Médine également, et fût enterré dans le cimetière d’Al-Baqî’. Il faisait partie des maîtres des gens de la famille du Prophète (صلى الله عليه وسلم) dans la jurisprudence, dans la science et par le mérite.
– Il est cité dans cette Fatwâ la parole du Chaykh Yahyâ ibn Mou’âdh Ar-Râzi, lorsque quelqu’un lui demanda « où est Allâh ? », il lui a fait comprendre qu’on ne pose pas cette question au sujet du Créateur (c’est-à-dire au sujet de Allâh) mais que cette question se pose uniquement au sujet des créatures. Cette citation a été rapportée de lui par l’Imâm Al-Qouchayri [ Ar-Riçâlatou l-Qouchayriyyah ] et par l’Imâm Ibnou ‘Abdi s-Salâm.
– Les savants de l’Islâm ont dit qu’il est interdit de dire « où ? » au sujet de Allâh, car Il est Le Créateur de l’endroit. Retrouvez d’autres articles à ce sujet : ici .
– L’Imâm Al-Bayhaqi a rapporté que le compagnon Ibn ‘Abbâs (رضي الله عنه) a interprété la parole de Allâh “إن ربك لبالمرصاد” (Inna Rabbaka labi l-mirsâd) par le fait que Allâh entend et voit.
– Le Chaykh Aboû Zakariyyâ Yahyâ ibn Mou’âdh ibn Ja’far Ar-Râzi est un savant du salaf, il est décédé en 258 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 1175 ans.
– Il est également mentionné dans cette Fatwâ la parole de Dhou n-Noûn Al-Misri qui a été interrogé au sujet du verset « ٱلرَّحۡمَـٰنُ عَلَى ٱلۡعَرۡشِ ٱسۡتَوَىٰ » (Ar-Rahmânou ‘ala l-‘archi stawâ) et il n’a pas répondu que ce verset signifierait que Allâh est assis, ou établit, ou installé, ou au dessus du trône comme le prétendent à tord les assimilationnistes (mouchabbihah). Au contraire il a répondu que Allâh a confirmé Son Être et a nié toute localisation à Son sujet. Voila comment nos pieux prédécesseurs (Salaf as-Sâlih) ont compris ce verset.
– Cette citation de l’Imâm Dhou n-Noûn Al-Misri a été rapportée par l’Imâm Al-Qouchayri [ Ar-Riçâlatou l-Qouchayriyyah ], et par l’Imâm Ibnou ‘Abdi s-Salâm dans son livre Hallou r-Roumoûz.
– D’autres citations de savants au sujet du verset : « ٱلرَّحۡمَـٰنُ عَلَى ٱلۡعَرۡشِ ٱسۡتَوَىٰ » (Ar-Rahmânou ‘ala l-‘archi stawâ) et des versets similaires sont disponible [ Retrouvez : ici ].
– L’Imâm Dhoun-Noûn Abou l-Fayd Thawbân Ibnou Ibrâhîm al-Misri est grand savant du salaf, il est décédé en 245 de l’Hégire au Caire (رحمه الله) c’est-à-dire il y a environ 1190 ans. Il fût l’un des élèves de l’Imâm Mâlik (رحمه الله), et il est connu pour sa sagesse, son éloquence et son ascétisme.
– Egalement il est dit dans cette Fatwâ que ce qui est parvenu dans les textes du Qour-ân et du Hadîth concernant le ‘Oulouww (l’élévation) de Allâh, le sens en est l’élévation par le mérite ou la domination, et il ne s’agit pas d’une élévation spatiale (par l’endroit et la direction). De nombreux savants ont mentionné cela dans leurs ouvrages. Parmi eux :
L’Imâm Az-Zajjâj [ Tafsîrou l-Asmâ-i l-Housnâ (1) ] et [ Tafsîrou l-Asmâ-i l-Housnâ (2) ]
L’Imâm Fakhrou d-Dîn Ar-Râzi [ Dans son tafsîr ]
L’Imâm Al-Qourtoubi [ Dans son tafsîr ] et [ Al-Asnâ ]
L’Imâm Ath-Tha’âlibi [ Dans son tafsîr (1) ] et [ Dans son tafsîr (2) ]
L’Imâm Ibn Hajar Al-‘Asqalâni [ Fat-hou l-Bârî ]
Le Chaykh Moullâ ‘Ali Al-Qâri [ Charh Al-Fiqh Al-Akbar ]
Le Chaykh Ad-Dajwi [ Maqâlât wa Fatâwâ (1) ] et [ Maqâlât wa Fatâwâ (2) ]
Et autres qu’eux.
– Egalement il est mentionné une belle parole de tawhîd : « Et tout ce qui est susceptible de parvenir à ton esprit, Allâh en est différent» qui a été dites en des termes proches par l’Imâm Ahmad Ibn Hambal, l’Imâm Dhou n-Noûn Al-Misri et l’Imâm Ach-Châfi’i.
– Puis il est cité la parole : « Réaliser son incapacité à parvenir à connaître la réalité de Allâh est en soi une connaissance, et chercher à atteindre la réalité du Seigneur est un acte d’association (chirk)» qui a été dites en des termes proches par le Calife bien guidé Aboû Bakr As-Siddîq (رضي الله عنه) [ Rapporté par Az-Zarkachi ].
– Ensuite il est mentionné que la croyance des Ach’arites est la croyance des gens de Ahlou s-Sounnah wa l-Jamâ’ah (les sunnites). Et que les Ach’arites constituent la majorité de la communauté musulmane et ceux sont eux qui se sont attaché au Qour-ân et à la Sounnah et qui ont défendu et préservé la religion de l’Islâm par la volonté de Allâh.
L’Imâm Az-Zabîdi Al-Hanafi a dit : « Quand on parle de Ahlou s-Sounnah wa l-Jamâ’ah, on vise les Ach’arites et les Matouridites » [Dans son livre It-hâfou s-Sâdati l-Mouttaqîn]
Le Chaykh Ibnou ‘Âbidîn Al-Hanafi a dit : « Les gens de Ahlou s-Sounnah wa l-Jamâ’ah, ce sont les Ach’arites et les Matouridites » [Dans son livre Raddou l-mouhtâr ‘ala d-Dourri l-Moukhtâr]
Le Chaykh Tâjou d-Dîn As-Soubki a dit : « Sache que Abou l-Haçan Al-Ach’ari n’a pas innové une nouvelle voie mais il a raffermi et résumé la voie du Salaf et il a défendu ce sur quoi étaient les compagnons du Messager de Allâh. Donc se réclamer de lui est dû au fait qu’il a délimité la voie du Salaf et qu’il s’y est attaché, qu’il a amené les preuves et arguments sur cette voie. Celui qui le suit en cela dans cette argumentation est appelé Ach’arite » [Tabaqâtou ch-Châfi’iyyah]
L’Imâm Al-Bayhaqi a dit : « Jusqu’à ce que le tour vienne à notre Chaykh Abou l-Haçan Al-Ach’ari, que Allâh lui fasse miséricorde. Il n’a pas innové dans la religion agréée par Allâh quoi que se soit. Il n’a pas amené de mauvaises innovations mais a repris les paroles des compagnons, des successeurs et ceux qui les ont suivis parmi les Imams dans les fondements de la religion et les a approuvées en ajoutant plus de commentaires, plus d’explications. Et ce qu’il a dit au sujet des fondements et ce qu’il a amené dans les lois est correct par la raison contrairement à ce qu’ont prétendu les gens qui suivent leurs passions. Ainsi dans ses explications, il y a eu un renfort pour appuyer Ahlou s-Sounnati wa l-Jamâ’ah de la part des Imâms comme Aboû Hanîfah, comme Soufyân Ath-Thawri parmi les gens de Al-Koûfah, comme Al-Awzâ’i et d’autres parmi les gens de Ach-Châm, comme Mâlik, comme Ach-Châfi’i, des gens de deux Haram c’est-à-dire La Mecque et Médine, Ahmad Ibnou Hanbal et d’autres parmi les spécialistes du Hadîth comme Al-Boukhâri et Mouslim, les Imâms des spécialistes du Hadîth et les Hâfidh des Sounan sur lesquels est basée la Loi agréée par Allâh, que Allâh les agrée tous ». [ Tabyîn kadhabi l-mouftarî ]
L’Imâm, l’illustre savant ‘Ali As-Sa’îdi Al-‘Adawi Al-Mâliki (m.1189 h.) a dit : « Le terme « Ahlou l-Haqq (gens de la vérité) » désigne les gens de Ahlou s-Sounnah : les Ach’arites et les Matouridites ou ce qui est visé par cela sont ceux qui sont sur la voie du Messager de Allâh (صَلَّى اللَّهُ عَلَيْهِ وَآلِهِ وَسَلَّمَ), donc cela englobe également ceux qui étaient avant l’arrivé des deux chaykh, c’est-à-dire Abou l-Hassan Al-Ach’ari et Aboû Mansoûr Al-Mâtourîdi » [Dans sa hâchiyah du livre Kifâyatou t-Tâlibi r-Rabbâni ‘alâ Riçâlati Bni Abî Zayd Al-Qayrawâni]
– L’Imâm Abou l-Haçan Al-Ach’ari est un savant du salaf (C’est à dire ayant vécu dans les trois premiers siècles de l’hégire) il est né en 260 (certains ont dit 270) et il est décédé en 324 de l’Hégire (d’autres ont dit 330 ou 333) (رحمه الله). Un très grand nombre de savants ont fait son éloge et le considèrent comme l’un des plus grands défenseurs de la croyance de Ahlou s-sounnah wa-l Jamâ’ah. Consultez sa biographie : ici.
L’Imâm Abou l-Haçan As-Soulami a dit à son sujet : « Al-Ach’ari est le savant à la tête du 3ème siècle [de l’Hégire] (c’est-à-dire le moujaddid – savant revivificateur) » [Rapporté par le Hâfidh Ibnou ‘Açâkir dans Tabyîn kadhib al-Mouftari]
Le Chaykh Mouhammad Ibn A’mar An-Nâbighah Al-Ghalâwi a dit de lui : « Al-Ach’ari est l’Imâm de Ahlou s-Sounnah » [Al-Moubâchir ‘ala Bni ‘Âchir]
Le Mouhaddith ‘Abdou l-Bâsit Al-Fâkhoûri a dit : « Nous disons que Ach-Châfi’i, Mâlik, Aboû Hanîfah, Ahmad Ibn Hanbal, Al-Awzâ’i, et le reste des moujtahidîn sont sur la bonne guidée de leur Seigneur, et que Abou l-Haçan Al-Ach’ari est un Imâm de la Sounnah, tout comme Aboû Mansoûr Al-Mâtourîdi » [Al-Kifâyah li Dhawi l-‘Inâyah]
– Le Hâfidh Ibnou ‘Açâkir a écrit le livre « Tabyîn kadhibi l-mouftarî fîmâ nousiba ila l-Imâm Abi l-Haçan al-Ach’ari ». Le titre de son livre signifie « l’Élucidation du Mensonge du Calomniateur au sujet de ce qui a été attribué à l’Imâm Abou l-Haçan Al-Ach’ari »; il l’a écrit pour défendre l’Imâm Al-Ach’ari des mensonges de ceux qui l’avaient calomnié. Vous pouvez retrouver un extrait de ce livre : ici .
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth) Ibnou ‘Açâkir (Abou l-Qâçim ‘Ali Ibnou Haçan Ibnou Hibatou l-Lâh Ad-Dimachqi) est né en 499 et il est décédé en 571 de l’Hégire (رحمه الله) soit il y a plus de 850 ans. C’était un grand savant du hadîth, et il était de l’école de jurisprudence Chafi’ite. Il est notamment connu pour son ouvrage “Târîkhou d-Dimachq”.
L’Imâm An-Nawawi a dit de lui : « Il est le Hâfidh (spécialiste de la science du Hadîth) du Châm, mais il est également le Hâfidh de ce monde » [Boustân Al-‘Ârifîn]
Le Hâfidh As-Souyoûti a dit à son sujet : « Ibnou ‘Açâkir, le grand Imâm, le Hâfidh (spécialiste de la science du hadîth) du Châm, mais il est également le Hâfidh de ce monde, le digne de confiance, celui qui a des arguments confirmés, le digne de confiance dans la religion » . [Tabaqâtou l-Houffâdh]
L’Imâm Tâjou d-Dîn As-Soubki a dit le concernant : « L’Imâm grandiose (jalîl), le Hâfidh (spécialiste de la science du hadîth) de la Oummah […] Il est le Chaykh, l’Imâm qui supporte la Sounnah et qui est à son service […] il est l’Imâm des gens du hadîth de son époque » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Le Hâfidh Ibn Najjâr Al-Baghdâdi a dit à son sujet : « Il est l’Imâm des Mouhaddithîn (spécialistes de la science du hadîth) de son époque» [Dhayl Târîkh Baghdâd]
Al-Yâfi’i a dit de lui : « le Faqîh (spécialiste de la jurisprudence), l’Imâm, le Mouhaddith scrupuleux, le Hâfidh (spécialiste de la science du hadîth) minutieux, celui qui possède une large science, Chaykh al-Islâm, le Mouhaddith du Châm, le défenseur de la Sounnah, celui qui refute les mauvaises innovations, le Hâfidh, l’océan de science […] le digne de confiance dans la religion […] il n’a pas vu pareil à lui dans son époque » [Mir-atou l-Jinân]
Ibnou Kathîr a dit le concernant : « Le grand Hâfidh (spécialiste du hadîth), le digne de confiance dans la religion […] la fierté des Châfi’ite, l’Imâm des gens du hadîth de son temps et le porteur de leur étendard » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit à son sujet : « L’Imâm, l’illustre savant (Al-‘Allâmah), le grand Hâfidh (spécialiste de la science du hadîth), al-moujawwad, le Mouhaddith (transmetteur du hadîth) du Châm» [Siyarou A’lâmi n-Noubalâ]. Il a dit également de lui : « L’Imâm, le grand Hâfidh (spécialiste de la science du hadîth), le Mouhaddith (transmetteur du hadîth) du Châm, la fierté des Imams, le digne de confiance dans la religion […] le nombre de ses enseignants est de mille quatre cents (1400) Chaykh et quatre-vingts (80) femmes» [Tadhkiratou l-Houffâdh]', '3ala l-3arch istawa, 3arch, ach''ariya, ach''ariyya'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'والله سبحانه وتعالى أعلم »');

-- source: https://islamsunnite.net/dar-al-fatwa-australia-innovation-deux-sortes-ahl-sounnah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les bonnes et mauvaises innovations.', 'Les Chafi''ites', '« س: كثـر الكلام عن البدعة فمن الناس من يقسمها إلى قسمين، ومن الناس من لا يفرق فيجعل كل محدَث بعد الرسول مهما كان من البدع الضلالة، نرجو توضيح الأمر على حقيقته عند أهل السنة مع ذكر الأدلة الشرعية عند المذاهب الأربعة، مع بيان معنى البدعة لغة واصطلاحا ؟', '', '', 'L’instance religieuse « Dâr Al-Fatwâ – Grand Conseil Islamique d’Australie -» a émise une longue Fatwâ concernant le jugement des innovations, dont voici un extrait :', 'aqida, australia, australie, bid3a'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« س: كثـر الكلام عن البدعة فمن الناس من يقسمها إلى قسمين، ومن الناس من لا يفرق فيجعل كل محدَث بعد الرسول مهما كان من البدع الضلالة، نرجو توضيح الأمر على حقيقته عند أهل السنة مع ذكر الأدلة الشرعية عند المذاهب الأربعة، مع بيان معنى البدعة لغة واصطلاحا ؟');

-- source: https://islamsunnite.net/dar-al-fatwa-australia-innovation-deux-sortes-ahl-sounnah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les bonnes et mauvaises innovations.', 'Les Chafi''ites', 'الجواب: نرفق لكم هذا البحث جوابا على سؤالكم :', '', '', '[…]', 'aqida, australia, australie, bid3a'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'الجواب: نرفق لكم هذا البحث جوابا على سؤالكم :');

-- source: https://islamsunnite.net/dar-al-fatwa-australia-innovation-deux-sortes-ahl-sounnah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les bonnes et mauvaises innovations.', 'Les Chafi''ites', 'بيان أن البدعة بدعتان عند أهل السنة والجماعة وحديث: وكل بدعة ضلالة، عام مخصوص', '', '', '[…]', 'aqida, australia, australie, bid3a'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'بيان أن البدعة بدعتان عند أهل السنة والجماعة وحديث: وكل بدعة ضلالة، عام مخصوص');

-- source: https://islamsunnite.net/dar-al-fatwa-australia-innovation-deux-sortes-ahl-sounnah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les bonnes et mauvaises innovations.', 'Les Chafi''ites', 'فالبدعة تنقسم إلى قسمين: بدعة ضلالة: وهي المحدثة المخالفة للقرءان والسنة. وبدعة هدى: وهي المحدثة الموافقة للكتاب والسنة.', '', '', '[…]', 'aqida, australia, australie, bid3a'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فالبدعة تنقسم إلى قسمين: بدعة ضلالة: وهي المحدثة المخالفة للقرءان والسنة. وبدعة هدى: وهي المحدثة الموافقة للكتاب والسنة.');

-- source: https://islamsunnite.net/dar-al-fatwa-australia-innovation-deux-sortes-ahl-sounnah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les bonnes et mauvaises innovations.', 'Les Chafi''ites', 'فإن قيل: أليس قال رسول الله صلى الله عليه وسلم فيما رواه أبو داود عن العرباض بن سارية: « وإياكم ومحدثات الأمور فإن كل محدثة بدعة وكل بدعة ضلالة ». فالجواب: أن هذا الحديث لفظه عام ومعناه مخصوص بدليل الأحاديث السابق ذكرها فيقال: إن مراد النبي صلى الله عليه وسلم ما أحدث على خلاف الكتاب أو السنة أو الإجماع أو الأثر.', '', '', '', 'aqida, australia, australie, bid3a'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فإن قيل: أليس قال رسول الله صلى الله عليه وسلم فيما رواه أبو داود عن العرباض بن سارية: « وإياكم ومحدثات الأمور فإن كل محدثة بدعة وكل بدعة ضلالة ». فالجواب: أن هذا الحديث لفظه عام ومعناه مخصوص بدليل الأحاديث السابق ذكرها فيقال: إن مراد النبي صلى الله عليه وسلم ما أحدث على خلاف الكتاب أو السنة أو الإجماع أو الأثر.');

-- source: https://islamsunnite.net/dar-al-fatwa-australia-innovation-deux-sortes-ahl-sounnah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les bonnes et mauvaises innovations.', 'Les Chafi''ites', 'هذا وأما من حيث التفصيل فالبدعة منقسمة إلى الأحكام الخمسة وهي الواجب والمندوب والمباح والمكروه والحرام كما نص علماء المذاهب الأربعة.»', '« Question :', '', 'Les paroles se sont multipliées au sujet de l’innovation (bid’ah), ainsi il y a des gens qui la classent en deux catégories, et il y a des gens qui ne font aucune distinction et qui considèrent que toute nouveauté qui est apparue après le Messager peut importe soit-elle, serait une innovation d’égarement (bid’ah ad-dalâlah). Nous souhaiterons un éclaircissement de ce sujet selon la voie de Ahlou s-Sounnah wa l-Jamâ’ah, avec la mention des preuves religieuses selon les quatres écoles et également la définition du terme « bid’ah » (innovation) dans la langue et dans l’usage religieux.
Réponse :
Nous mettons à votre disposition cette recherche en guise de réponse à votre question :
[…]
Exposé concernant le fait que les innovations sont de deux catégories selon les gens de Ahlou s-Sounnah wa l-Jamâ’ah et que le hadîth « wa koullou bid’ah dalâlah » est [un texte] général mais [dont le sens est] restreint.
[…]
Ainsi l’innovation se divise en deux catégories :
L’innovation d’égarement (bid’ah ad-dalâlah) : il s’agit de la nouveauté qui contredit le Qour-ân et la Sounnah.
Et l’innovation de bonne guidée (bid’ah al-houdâ) : il s’agit de la nouveauté qui est en conformité avec le Livre (le Qour-ân) et la Sounnah.
[…]
Et si quelqu’un dit : Le Messager de Allâh (صلى الله عليه وسلم) n’a-t-il pas dit d’après ce qu’a rapporté Aboû Dâwoûd d’après Al-‘Irbâd Ibn Sâriyah « wa iyyâkoum wa mouhdathât al-oumoûr fa inna koulla mouhdathah bid’ah wa koullou bid’ah dalâlah» ?
La réponse : Les termes de ce hadîth sont générales (‘âmm) mais son sens est restreint (makhsoûs) pour preuve, les hadîth précédemment cités (dans la fatwâ). Ainsi nous disons : ce que le prophète (صلى الله عليه وسلم) a visé ce sont les nouveautés qui contredisent le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et al-athar (textes des compagnons).
Et de manière détaillée, l’innovation se classe dans les cinq catégories de la Loi, c’est-à-dire ce qui est : obligatoire, recommandé, permis, déconseillé, et interdit ; tout comme l’ont mentionné les savants des quatre écoles.
[puis il y est mentionné des citations de savants des quatre écoles] »
Informations utiles :
– Dâr Al-Fatwâ (al-Majliss al-Islâmî Al-A’lâ) est une une instance religieuse Australienne fondée en 2004. Elle est présidée par le Moufti d’Australie, le Chaykh, le Docteur Salîm ‘Alwân Al-Houçayni (حفظه الله), et est reconnue par bon nombre d’institutions Islamiques comme l’Université Al-Azhar d’Egypte, Majlis Al-‘Oulamâ (assemblée des savants) de Jakarta en Indonésie, l’Université « Islâm » de Malaisie…
– Dans cette Fatwâ il est expliqué que l’innovation peut être bonne ou mauvaise; ou encore que l’on peux la classifier en cinq sortes : obligatoire, recommandée, interdite, déconseillée, et permise.
– Le Messager de Allâh (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ]
– Egalement au sein de cette Fatwâ (voir la Fatwâ complète) il est mentionné la célèbre parole de ‘Oumar Ibnou-l Khattâb, le compagnon et second Calife (رضي الله عنه) : « ni’ma l-bid’ah » c’est-à-dire “Quelle bonne innovation”. Cette parole de ‘Oumar a été rapporté par l’Imâm Al-Boukhâri [ Dans son Sahîh ] et l’Imâm Mâlik [ Dans Al-Mouwatta ]. Et beaucoup de savants se sont appuyé sur cette parole de ‘Oumar pour confirmer qu’une innovation peut être bonne, parmi eux :
L’Imâm Ach-Châfi’i [ Rapporté par Al-Bayhaqi dans Al-Madkhal ] et [ Rapporté par Aboû Nou’aym ] et [ Rapporté par Al-Bayhaqi dans Manâqibou ch-Châfi’i ] et [ Rapporté aussi par Ibn Taymiyah (moujassim) ]
L’Imâm Al-Bayhaqi [ Dans son livre Al-Madkhal ] et [ Dans son livre Manâqibou ch-Châfi’i ]
L’Imâm Ibn Battâl [ Dans son Charh Sahîh Al-Boukhâri ]
Le Qâdî Aboû Bakr Ibnou l-‘Arabi [ ‘Âridatou l-Ahwadhi ]
L’Imâm An-Nawawi [ Dans son Charh Sahîh Mouslim ]
L’Imâm Ibn Daqîq Al-‘Îd [ Dans son Charh Arba’în An-Nawawiyyah ]
L’Imâm Ibn Hajar Al-Asqalâni [ Dans son Charh Sahîh Al-Boukhâri ]
L’Imâm As-Souyoûti [ Al-Hâwi li l-Fatâwi ]
Le Mouhaddith Al-Harari [ Dans son livre Ar-Rawâ-ihou z-Zakiyyah ]
et autres qu’eux.
– Quant au hadîth rapporté qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), il est expliqué que les termes du hadîth sont générales mais le sens est restreint c’est-à-dire que ce ne sont pas toute les innovations -dans l’absolu- qui sont de l’égarement, mais il s’agit des innovations qui contredisent la religion. Ainsi ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ].
– Le Chaykh ‘Abdou l-Lâh Al-Ghoumâri Al-Mâliki a dit : « Les savants ont été en accord sur la classification des innovations en bonne et mauvaise, et sur le fait que ‘Oumar (رضي الله عنه) est le premier qui a parlé de cela, et ils ont été en accord sur le fait que la parole du prophète ” كل بدعة ضلالة ” (koullou bid’atin dalâlah) est un texte de portée générale mais dont le sens est restreint (‘âm makhsoûs)» [ Itqânou s-San’ah ]
– Vous pouvez retrouver l’intégralité de la Fatwâ sur le site de Dar Al-Fatwâ sous le titre : « البدعة بدعتان عند أهل السنة » (les innovations sont de deux sortes selon Ahlou s-Sounnah) : ici
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .', 'aqida, australia, australie, bid3a'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'هذا وأما من حيث التفصيل فالبدعة منقسمة إلى الأحكام الخمسة وهي الواجب والمندوب والمباح والمكروه والحرام كما نص علماء المذاهب الأربعة.»');

-- source: https://islamsunnite.net/imam-bayhaqi-imam-awzai-malik-ath-thawri-layth-ibn-sad-bila-kayfiyyah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La croyance des Salafs au sujet des textes équivoques.', 'Thawri', 'سُئِلَ الأَوْزَاعِيُّ , وَمَالِكٌ ، وَسُفْيَانُ الثَّوْرِيُّ ، والليث بن سعد عَنْ هَذِهِ الأَحَادِيثِ فَقَالُوا : أَمِرُّوهَا كَمَا جَاءَتْ بِلا كَيْفِيَّةٍ.', '[Les imâms] Al-Awzâ’i, Mâlik, Soufyân Ath-Thawri et Al-Layth Ibn Sa’d ont été questionné au sujet de ces hadîth (les hadîth moutachâbih – équivoques -), alors ils ont dit : Citez les comme ils sont parvenus, sans attribuer de comment (bilâ kayfiyyah)', '', 'Dans son livre « Al-I’tiqâd » (page 56 de cette édition), après avoir confirmé le fait que l’istiwâ de Allâh n’est pas un établissement et que Allâh existe sans endroit [ voir : ici ] et après avoir parlé de certains attributs de Allâh (tels que « yad », « wajh », « ‘ayn », nouzoûl) [ voir : ici ] l’Imam Al-Bayhaqi a dit :
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
– Ici, l’Imâm Al-Bayhaqi mentionne la voie empruntée par quatre illustres Imâms (Al-Awzâ’i, Mâlik, Soufyân Ath-Thawri et Al-Layth Ibn Sa’d) concernant les textes équivoques (moutachâbihah). La voie de ces quatres Imâm etait de prendre le terme tout comme il est parvenu (comme wajh, yad, ‘ayn…) en niant la kayfiyyah (le comment) à son sujet. L’Imâm Al-Bayhaqi rapporte également cela dans son livre al-Asmâ-ou wa s-Sifât.
– Ibnou Kathîr a mentionné semblable. En effet, il a dit : « Nous citons ici la voie du Salaf vertueux de Mâlik, de Al-Awzâ’i, de Ath-Thawri, de Layth Ibnou Sa’d, de Ach-Châfi’i, de Ahmad ibnou Hanbal, de Is-hâq ibnou Rahawayh et d’autres qu’eux parmi les imams musulmans du passé et contemporains et plus récents, à savoir de lire ces versets (c’est-à-dire les versets moutachâbihah) comme ils sont parvenues. Sans attribuer le comment (min ghayri takyîf), ni d’assimilation, ni annulation de ces versets. Et le sens apparent qui vient à l’esprit des assimilateurs est nié au sujet de Allâh ta’âlâ. Car Allâh n’a pas de ressemblance avec quoi que ce soit de Ses créatures. Rien n’est tel que Lui et Il est Celui qui entend et qui voit.» [ Dans son tafsîr ]
– Et l’Imâm Ibn Hajar Al-‘Asqalâni a également rapporté pareil à cela, en disant : « Certains sont passés sur ces textes comme ils ont été révélés, en y croyant dans leur globalité et en exemptant Allâh du comment (kayfiyyah) et de toute assimilation (tachbîh), et ceux-là sont la majorité des savants du Salaf. Cela a été rapporté par Al-Bayhaqi ainsi que d’autres, [comme étant la voie] des quatre Imâm (C’est-à-dire : l’Imâm Aboû Hanîfah, l’Imâm Mâlik, l’Imâm Ach-Châfi’i, et l’Imâm Ahmad Ibn Hanbal), des deux Soufyân (C’est-à-dire : Soufyân Ath-Thawri et Soufyân Ibn ‘Ouyaynah), des deux Hammâd (C’est-à-dire : Hammâd Ibn Zayd et Hammâd Ibn Salamah), de Al-Awzâ’i, de Al-Layth, et autres qu’eux.» [ Fat-hou l-Bâri ]
– De même, l’Imâm, le Moufassir Al-Baghawi a dit : « Il est rapporté de Soufyân Ath-Thawri, de Al-Awzâ’i, de Al-Layth Ibn Sa’d, de Soufyân Ibn ‘Ouyaynah, de ‘Abdou l-Lâh Ibn Moubârak et d’autres qu’eux de parmi les savants de la Sounnah, qu’ils ont dit au sujet de ces versets qui sont parvenus concernant les attributs équivoques (moutachâbihah) : Citez les comme ils sont parvenus, sans attribuer de comment (bilâ kayf) » [Dans son Tafsîr]
– L’Imâm, le Moufassir Abou Hayyân Al-Andalouçi a dit : « Quant à l’Istiwâ de Allâh ta’âlâ sur le trône, un groupe [d’égarés] l’a compris selon son sens apparent qui est celui de l’établissement par Son être, et Allâh est totalement exempt de ce que disent les injustes et mécréants. Et la majorité des gens du Salaf : les deux Soufyân (c’est-à-dire : Soufyân Ath-Thawri et Soufyân Ibn ‘Ouyaynah), Mâlik, Al-Awzâ’i, Al-Layth [Ibn Sa’d], Ibnou l-Moubârak et d’autres qu’eux croyaient aux hadîth qui concernent les attributs [et qui sont équivoques] selon le sens voulu par Allâh [sans comment], sans donner un sens précis. Et un autre groupe [de savants] a donné de nombreuses interprétations.» [Dans son Tafsîr An-Nahrou l-Mâdd]
– Le comment (al-kayf / al-kayfiyyah) c’est ce par quoi on décrit les créatures, c’est-à-dire les dimensions, le début, la fin, la couleur, l’endroit, la direction, la forme, le poids, la position assise, l’établissement, la proximité, la distance, le mouvement, le déplacement, le changement et tout ce qui fait partie des attributs des créatures. Allâh n’est pas concerné par cela.
Le Loughawi (spécialiste de la langue Arabe) Ar-Râghib Al-Asbahâni (m.502 A.H.) a dit : « “Kayfa” est un terme par lequel on demande à connaitre ce qu’il convient de dire [au sujet de quelqu’un], c’est-à-dire en terme de comparaison ou autre, tel que le blanc et le noir, la personne saine et le malade, et c’est pour cela qu’il n’est pas valable de dire au sujet de Allâh ‘azza wa jall “kayfa” (comment) » [Al-Moufradât fî Gharîbi l-Qour-ân]
Le Loughawi (spécialiste de la langue Arabe) Ar-Râghib Al-Asbahâni (m.502 A.H.) a dit également : « La forme (ach-chakl), l’aspect (al-hay-ah), l’image (as-soûrah), la similitude (an-nidd) concernent le genre et la comparaison et sont compris dans la kayfiyyah (le comment, la description physique) » [Rapporté par Al-Mounâwi dans son livre : At-Tawqîf ‘alâ Mouhimmâti t-Ta’ârîf]
Le Loughawi (spécialiste de la langue Arabe) Ar-Râghib Al-Asbahâni (m.502 A.H.) a dit également : « La comparaison est dans la kayfiyyah » [Rapporté par Al-‘Askari dans son ouvrage : Al-Fouroûq Al-Loughawiyyah]
Le Loughawi (spécialiste de la langue arabe) Ibn Mandhoûr (m.711 A.H.) a dit : « al-hay-ah et al-hî-ah (l’aspect, l’apparence) est l’état d’une chose, c’est sa kayfiyyah (comment, description physique) » [Liçân al-‘Arab]
Le Loughawi (spécialiste de la langue Arabe) Al-Fayroûzâbâdi (m.817 A.H.) a dit : « Les adeptes du Tawhîd (l’unicité divine) ont dit que Allâh ta’âlâ est sans kammiyyah (quantité, volume) et sans kayfiyyah (comment, description physique) » [Al-Qâmoûs Al-Mouhît]
Le Mouhaddith (transmetteur du hadîth) Mouhammad ‘Abdou r-Ra-oûf Al-Mounâwi (m.1031 A.H.) a dit : « “Kayfa” est un mot dont la portée est une interrogation sur les états de façon générale, sur ce que l’on perçoit par nos sens » [At-Tawqîf ‘alâ Mouhimmâti t-Ta’ârîf]
– Remarque importante : il y a une grande différence entre :
La parole des gens de la Sounnah qui disent que Allâh est sans comment (bilâ kayf), c’est-à-dire qu’Il n’est pas concerné par le comment, la description physique, comme cela a clairement été déclaré par les grands Imâm de la Oummah ;
et la parole des mouchabbihah (assimilateurs) qui se sont illusionné et qui ont pris pour croyance que Allâh aurait un comment mais que ce comment serait d’après eux ignoré, et qui disent : on ne sait pas comment. Ainsi, Ibn ‘Outhaymîn le wahhabite a contredit ouvertement les gens de la Sounnah en disant : « Nous ne nions pas à leurs sujets [les textes moutachâbihah] la kayfiyyah (comment, description physique) au contraire nous croyons qu’ils ont une kayfiyyah, mais nous n’avons pas connaissance de cette kayfiyyah » [Dans son livre intitulé « Charh al-‘Aqîdah Al-Wâsitiyyah »].
– L’Imâm Al-Bayhaqi a bien résumé tout cela en disant au sujet de Allâh ta’âlâ : « Il est Celui Qui n’est pas soumis aux illusions de la kayfiyyah (comment, description physique) » [Dans son livre : Al-I’tiqâd]
– L’Imâm du salaf, le Moujtahid, Aboû ‘Amr ‘Abdou r-Rahmân Ibnou ‘Amr Al-Awzâ’i est né en 88 et il est décédé en 158 de l’Hégire (رحمه الله), c’est-à-dire il y a environ 1275 ans. Il était l’un des plus grands savants du salaf. Il compte parmi les grands savants de la communauté qui ont fondé une école de jurisprudence (madh-hab) tout comme l’Imâm Mâlik, l’Imâm Aboû Hanîfah, l’Imâm Soufyân Ath-Thawri, l’Imâm Ach-Châfi’i ou encore l’Imâm Ahmad Ibn Hanbal, mais son école (madh-hab) n’a pas subsisté. Elle fût suivie durant deux siècles, notamment en Andalousie.
– L’Imâm, le spécialiste de la science du Hadîth, le Moujtahid (jurisconsulte), Mâlik Ibnou Anas est l’un des plus grands savants de notre communauté, il est une référence incontournable pour tous musulman. C’est un Salaf (C’est-à-dire qu’il a vécu dans les trois premiers siècles de l’Hégire), il est né en 93 et il est décédé en 179 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1260 ans. Il est l’Imâm de l’école (madh-hab) Malikite. L’Imâm Ach-Châfi’i disait de lui « Lorsque les savants sont cités, Mâlik est comme une étoile » . Consultez sa biographie : ici .
– Cette position est connue de la part de l’Imâm Mâlik qui a clairement nier le comment (al-kayf) au sujet de Allâh par sa célèbre parole : « Le comment [au sujet de Allâh] est inconcevable (al-kayf ghayrou Ma’qoûl)» et selon une autre version proche de celle-ci : « Dire “comment” est exclu à Son sujet (wa kayfa ‘anhou marfoû’) » . Vous pouvez retrouver la citation intégrale de l’Imâm Mâlik :
Selon la version rapportée par Al-Bayhaqi : ici
Selon la version rapportée par Al-Qayrawâni : ici
Selon la version rapportée par Al-Qourtoubi : ici
– De même l’Imâm Mâlik considérait le verset de l’istiwâ de parmi les moutachâbihât (textes équivoques). En effet, l’Imâm Aboû Mansoûr Al-Baghdâdi a dit : « Certains d’entre eux [c’est-à-dire les savants] ont dit que le verset de l’istiwâ est moutachâbih (équivoque), et ceci est l’avis de Mâlik Ibn Anas, des Fouqahâ de Médine et de Al-Asma’i » [Dans son livre Ousoûlou d-Dîn].
– L’Imâm, Chaykhou l-Islâm, le Moujtahid (jurisconsulte), Al-Hâfidh (spécialiste de la science du hadîth) Soufyân Ibn Sa’îd Ibn Masroûq Ath-Thawri, est né en 97 à Koûfa (Irak), et il est décédé en 161 de l’Hégire à Bassora (Irak) (رحمه الله), c’est-à-dire il y a plus de 1200 ans. Il est de la génération des pieux prédecesseurs (as-Salafou s-Sâlih), et il fait parti des rares savants du hadîth qui ont été surnommé “Amîrou l-Mou-minîn fi l-Hadîth” (Prince des croyants dans la science du hadîth). Il compte parmi les grands savants de la communauté qui ont fondé une école de jurisprudence (madh-hab) tout comme l’Imâm Mâlik, l’Imâm Al-Awzâ’i, l’Imâm Aboû Hanîfah, l’Imâm Al-Layth Ibn Sa’d, l’Imâm Ach-Châfi’i ou encore l’Imâm Ahmad Ibn Hanbal, mais son école (madh-hab) n’a pas subsisté. On compte parmi ses nombreux Chaykh, l’Imâm Ja’far As-Sâdiq et de parmi les gens qui ont reçu de sa science, des grands Imâm tels que Aboû Hanîfah, Al-Awzâ’i, ‘Abdou l-Lâh Ibn Moubârak, Foudayl Ibn ‘Iyâd … Nombreux sont les savants de la communauté qui ont fait ses éloges.
– L’Illustre savant du salaf, le Moujtahid (jurisconsulte), Al-Hâfidh (spécialiste de la science du hadîth) l’Imâm َAl-Layth Ibn Sa’d Ibn ‘Abdi r-Rahmân Ibn ‘Aqabah Al-Fahmi est né en 94 et il est décédé en 175 de l’Hégire au Caire (Egypte) (رحمه الله), c’est-à-dire il y a plus de 1200 ans. Il est de la génération des pieux prédecesseurs (as-Salafou s-Sâlih). Il compte parmi les grands savants de la communauté qui ont fondé une école de jurisprudence (madh-hab) tout comme l’Imâm Mâlik, l’Imâm Al-Awzâ’i, l’Imâm Aboû Hanîfah, l’Imâm Soufyân Ath-Thawri, l’Imâm Ach-Châfi’i ou encore l’Imâm Ahmad Ibn Hanbal, mais son école (madh-hab) n’a pas subsisté.
– Ainsi , tout comme le rapporte l’Imâm Al-Bayhaqi et autres que lui, ce qui était le plus répandu chez les gens du Salaf concernant les textes équivoques, était de laisser le terme tel qu’il est mentionné en niant tout ce qui est de l’ordre de la kayfiyyah (comment, description physique). Mais il faut savoir que les gens du Salaf ont également eu recours à l’interprétation (ta-wîl) comme c’est le cas de :
L’Imâm Ibn ‘Abbâs concernant le Sâq [ Rapporté par At-Tabari ] et [ Rapporté par Al-Bayhaqi ]
L’Imâm Soufyân Ath-Thawri concernant le wajh [ Rapporté par As-Souyoûti ] et [ Rapporté par Al-‘Ayni ]
L’Imâm Mâlik concernant le Nouzoûl de Allâh [ Rapporté par An-Nawawi ] et [ Rapporté par Az-Zourqâni ]
L’Imâm Al-Boukhâri concernant le Wajh [ Dans son Sahîh ]
L’Imâm Al-Awzâ’i concernant le Nouzoûl de Allâh [ Rapporté par An-Nawawi ]
L’Imâm Ahmad concernant “wa jâ’a rabbouka” [ Rapporté par Al-Bayhaqi et authentifié par Ibn Kathîr ] et [ Rapporté par As-Sa’di ] et [ Rapporté par Al-Hisni ]
L’Imâm At-Tabarâni concernant l’Istiwâ [ Dans son tafsîr ]
Et autres qu’eux… De nombreux articles sont disponible sur le site.', 'al i3tiqad wal hidayah, al kayf ghayrou ma3qoul, al kayfou ghayrou ma3qoul, al-awzai'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'سُئِلَ الأَوْزَاعِيُّ , وَمَالِكٌ ، وَسُفْيَانُ الثَّوْرِيُّ ، والليث بن سعد عَنْ هَذِهِ الأَحَادِيثِ فَقَالُوا : أَمِرُّوهَا كَمَا جَاءَتْ بِلا كَيْفِيَّةٍ.');

-- source: https://islamsunnite.net/ibn-rouchd-al-jadd-interprete-istiwa-de-allah-domination-puissance-istawla/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’explication de l’Istiwâ de Allâh sur le trône.', 'Ibn Rouchd Al-Jadd', 'والاستواء في قوله تعالى : { ثُمَّ اسْتَوَى عَلَى الْعَرْشِ} معناه استولى ، قاله الواحدي وقيل معناه القهر والغلبة. تقول العرب: استوى زيد على أرض كذا أي ملكهم وقهرهم، قال الشاعر: قد استوى بشر على العراق … من غير سيف ودم مهراق ولما أن كان العرش أعظم المخلوقات المهولة اكتفى بذكره عما دونه، إذ أن ما دونه تبع له', '« Et l’istiwâ qui est cité dans Sa parole ta’âlâ {ثُمَّ اسْتَوَى عَلَى الْعَرْشِ} [thoumma stawâ ‘ala l-‘Arch] , son sens est « istawlâ » (la domination par la toute puissance), ceci a été dit par Al-Wâhidi et il a été dit que cela signifie « al-qahr » et « al-ghalabah » (la domination par la toute puissance).', '', 'Dans son livre «Al-Madkhal» (Tome 2 page 148 de cette édition) le Chaykh Ibnou l-Hâjj Al-Mâliki rapporte que le Qâdî Ibnou Rouchd Al-Jadd a dit :
Les arabes disent : Zayd « istawâ » telle contrée, c’est-à-dire qu’il exerce son pouvoir et qu’il les domine. Le poète a dit : Bichr a dominé (istawâ) l’Irak assurément … sans tirer d’épée et sans faire couler de sang.
Etant donné que le trône est la plus grande des créatures [de par la taille] il est suffisant de le citer pour englober ce qui est plus petit que lui, car ce qui est plus petit sera tel que lui [dans le fait d’être dominé] »
Informations utiles :
– Le Qâdî (juge), le Faqîh (spécialiste de la jurisprudence), le Chaykh Abou l-Walîd Mouhammad Ibnou Ahmad, Qâdi l-Jamâ’ah à Qourtoubah –Cordoue– connu sous le nom de Ibnou Rouchd Al-Jadd (le grand-père), est né en 450 et il est décédé en 520 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 910 ans. Il était un grand savant dans le Madh-hab (Ecole de jurisprudence) Malikite et il fut notamment l’un des Chaykh du Qâdî ‘Iyâd.
Le Qâdî ‘Iyâd a dit à son sujet : « Il était à la tête des savants (fouqahâ) de son époque dans la région d’Andalousie et du Maghreb » [Al-Ghouniyah fî Chouyoûkhi l-Qâdî ‘Iyâd].
– Il ne faut pas le confondre avec son petit fils Ibnou Rouchd (connu sous le nom de Averroès) le philosophe qui est mort en 595 de l’Hégire.
– Ici, le Chaykh Ibn Rouchd mentionne trois expressions (istawlâ, qahara et ghalaba) comme interprétation du terme « istawâ » qui ont toutes le sens de la domination par la toute puissance lorsqu’elles sont attribuée à Allâh.
– Concernant Allâh, la signification de “istawlâ” n’est pas :
de vaincre après avoir combattu, ce qui impliquerait un changement, et le changement est impossible au sujet de Allâh ‘azza wa jall.
ni de dominer physiquement par l’élévation de la position, ce qui impliquerait un endroit et une direction, ce qui est également impossible au sujet de Allâh ta’âlâ.
– Le Chaykh Ibn Rouchd a dit également que l’istiwâ de Allâh n’est pas un établissement [ Rapporté par Ibnou l-Hajj ], qu’on ne dit pas « où » au sujet de Allâh [ Rapporté par Ibnou l-Hajj ] et que Allâh n’est pas un corps et qu’Il existe sans endroit [ Dans son livre Al-Mouqaddimât al-Moumahhadât ].
– Le Moufassir (Exégète) Abou l-Haçan ‘Ali Ibn Ahmad Al-Wâhidi An-Nayçâboûri est décédé en 468 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 1000 ans.
– Il fait parti des savants spécialistes du tafsîr (exégèse du Qour-ân) qui ont interprété le terme « istawâ » au sujet de Allâh par « istawlâ » (dominer par la toute-puissance).
– Le Chaykh Aboû ‘Abdil-Lâh Mouhammad Ibnou Mouhammad Al-‘Abdari plus connu sous le nom de Ibnou l-Hâjj Al-Maghribi Al-Mâliki est né à Fès et il est décédé en 737 de l’Hégire au Caire (رحمه الله) c’est-à-dire il y a environ 700 ans.
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
– De nombreux savants ont proposé l’interprétation (ta-wîl) du terme “istawâ” par la domination par la toute-puissance. Parmi eux :
Le Loughawi ‘Abdou l-Lâh Ibnou Yahyâ Ibnou l-Moubârak
L’Imâm Az-Zajjâj [ Dans son livre Ma’âni Al-Qour-ân ] et [ Rapporté par An-Naçafi ]
L’Imâm Aboû Mansoûr Al-Mâtourîdi
L’Imâm At-Tabarâni [ Dans son Tafsîr ]
L’Imâm Aboû Bakr Ahmad Ar-Râzi Al-Jassâs Al-Hanafi
L’Imâm Abou l-Layth As-Samarqandi
L’Imâm Ibnou Foûrak [ Dans son livre Mouchkilou l-Hadîth ]
L’Imâm Aboû Mansoûr Mouhammad Ibnou l-Haçan Ibnou Abî Ayyoûb Al-Ayyoûbi An-Nayçâboûri
L’Imâm ‘Abdou l-Lâh Al-Jouwayni [père de l’Imâm Al-Haramayn]
Le Moufassir Abou l-Haçan ‘Ali Ibn Mouhammad Al-Mâwardi
Le Moufassir Al-Wâhidi [Rapporté par Ibn Rouch Al-Jadd]
L’Imâm Abou Is-hâq Ach-Chîrâzi
Le Moufassir Ad-Damghâni Al-Hanafi
L’Imâm Al-Moutawalli [ Dans son livre Al-Ghounyah ]
L’Imâm Al-Haramayn Al-Jouwayni [ Dans son livre Louma’ al-Adillah ]
Le Loughawi Ar-Râghib Al-Asbahâni
L’Imâm Al-Ghazâli
L’Imâm An-Naçafi (508 H.)
L’Imâm Abou n-Nasr Al-Qouchayri
Le Qâdî Ibnou Rouchd Al-Jadd [ Rapporté par Ibnou l-Hâjj Al-Mâliki ]
Al-Allâmah Al-Lâmichi Al-Hanafi
Le Moufassir Ibnou ‘Atiyyah Al-Andalouçi
L’Imâm Fakhrou d-Dîn Ar-Râzi
Le Chaykh Ismâ’îl Ibnou Ibrâhîm Ach-Chaybâni Al-Hanafi
Le Chaykh Sayfou d-Dîn Al-Âmidi
Le Chaykh Ibnou l-Hâjib Al-Mâliki
L’Imâm Al-‘Îzz Ibnou ‘Abdi s-Salâm
L’Imâm Al-Qourtoubi
Le Chaykh Chihâbou d-Dîn Al-Qarâfi
Le Moufassir An-Naçafi [ Dans son Tafsîr ]
Le Moufassir Al-Baydâwi
Le Qâdî Badrou d-Dîn Ibnou l-Jamâ’ah
Le Qâdî ‘Abdou r-Rahmân Al-Îji
L’Imâm Taqiyyou d-Dîn As-Soubki
Le Chaykh Al-Yâfi’i
Le Qâdî Ibnou s-Sirâj Al-Hanafi
Le Qâdî Tâjou d-Dîn As-Soubki
Le Chaykh ‘Izzou d-Dîn Ibn Jamâ’ah [ Dans son livre Darajou l-Ma’âlî ]
Le Loughawi Fayroûzâbâdi [ Dans son livre Basâ-irou dhawi t-Tamyîz ]
L’Imâm As-Souyoûti
L’Imâm Al-Qastallâni
Chaykh Al-Islâm Zakariyyâ Al-Ansâri [ Dans son livre Ihkâmou d-Dalâlah ]
Le Chaykh Moullâ ‘Ali Al-Qâri
Le Moufassir Ismâ’îl Haqqi Al-Hanafi
Le Hâfidh Mourtadâ Az-Zabîdi
Le Chaykh Mahmoûd As-Soubki Al-Azhari [ Dans son livre It-hâfou l-Kâ-inat ]
Le Chaykh Az-Zourqâni Al-Mâliki
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Hâfidh ‘Abdou l-Lâh Al-Harari [ Dans son livre As-Sirâtou l-Moustaqîm ]
et de nombreux autres savants.
– Retrouvez d’autres paroles de savants concernant l’istiwâ de Allâh : ici .', '3aqidah, 3arch, 3arsh, 3oulama'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'والاستواء في قوله تعالى : { ثُمَّ اسْتَوَى عَلَى الْعَرْشِ} معناه استولى ، قاله الواحدي وقيل معناه القهر والغلبة. تقول العرب: استوى زيد على أرض كذا أي ملكهم وقهرهم، قال الشاعر: قد استوى بشر على العراق … من غير سيف ودم مهراق ولما أن كان العرش أعظم المخلوقات المهولة اكتفى بذكره عما دونه، إذ أن ما دونه تبع له');

-- source: https://islamsunnite.net/limam-ibn-hibban-pratiquait-le-tawassoul-a-la-tombe-des-vertueux/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La pratique du tawassoul par les savants du Salaf.', 'Les Chafi''ites', 'قد زرته مرارا كثيرة وما حلت بي شدة في وقت مقامى بطوس فزرت قبر على بن موسى الرضا صلوات الله على جده وعليه ودعوت الله إزالتها عنى إلا أستجيب لي وزالت عنى تلك الشدة وهذا شيء جربته مرارا فوجدته كذلك', 'Je l’ai visité à maintes reprises, et je n’ai pas été épargné par les difficultés lors de mon séjour à Tus, alors j’ai rendu visite à la tombe de ‘Ali Ibnou Moûçâ Ar-Ridâ et j’y ai invoqué Allâh ; et Allâh m’a exaucé et résolu mon problème. J’ai fait cela à plusieurs reprises (l’invocation auprès de sa tombe) et à chaque fois ce fût le cas (l’exaucement des invocations par Allâh).', '', 'Dans son livre « Ath-Thiqât » (tome 8, page 457 de cette édition) lorsqu’il cite la biographie de ‘Ali Ar-Ridâ, le Hâfidh Ibnou Hibbân a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth) Aboû Hâtim Mouhammad Ibnou Hibbân Ibnou Ahmad At-Tamîmi Al-Bousti, est un savant du Salaf, il est né en 270 et il est décédé en 354 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 1080 ans. Il est un grand spécialiste de la science du Hadîth. Il est l’auteur du « Sahîh » réputé sous le nom de « Sahîh Ibn Hibbân ». Il était du madh-hab (Ecole de jurisprudence) de l’Imâm Ach-Châfi’i.
Al-Hâkim a dit à son sujet : « Ibn Hibbân était de ceux qui avaient le plus de science dans le Fiqh (jurisprudence), en langue arabe, en hadîth, en exhortation et parmi les plus intelligents des hommes. » [Siyar A’lâmi n-Noubalâ]
Adh-Dhahabi a dit de lui : « L’Imâm, le Hâfidh (spécialiste de la science du hadîth), le Chaykh du Khouraçân […] l’auteur d’ouvrages réputés » [Siyar A’lâmi n-Noubalâ]
Aboû Sa’d Al-Idrîssi a dit : « Il était parmi les Fouqahâ (spécialistes de la jurisprudence) de la religion, les Houffâdh des récits (spécialistes de la science du hadîth) un savant dans la médecine, en astronomie et d’autres sortes de science » [Siyar A’lâmi n-Noubalâ]
Al-Khatîb Al-Baghdâdi a dit le concernant : « Ibn Hibbân est digne de confiance (thiqah), noble et doté d’une bonne compréhension » [Siyar A’lâmi n-Noubalâ]
– Ici, ce grand savant du Salaf, dit s’être rendu à plusieurs reprises à la tombe de ‘Ali Ibnou Moûçâ Ar-Ridâ et y avoir invoqué Allâh afin d’être soulager d’une difficulté. Et il précise qu’après cela, à chaque fois ses problèmes étaient résolus.
– ‘Ali Ibnou Moûçâ Ar-Ridâ est un savant vertueux, descendant du prophète (صلى الله عليه وسلم), il est né en 148 et il est décédé en 203 de l’Hégire (رضي الله عنه). Il est le fils de Moûçâ al-Kâdhim, qui est le fils de Ja’far As-Sâdiq (رضي الله عنهما).
– Le tawassoul est le fait de demander à Allâh l’obtention d’un profit ou l’empêchement d’une nuisance et ce, par la mention du nom d’un prophète ou d’un saint, par honneur pour celui par lequel le tawassoul est fait. Faire le tawassoul est permis en leur présence et en leur absence tout comme l’indique les preuves selon la Loi de l’Islâm. Le tawassoul ne constitue donc pas une adoration pour autre que Allâh.
– Cette citation nous indique que le fait de se rendre à la tombe du prophète ou d’un vertueux pour y effectuer le tawassoul, cela était un acte pratiqué par les gens de science, depuis l’époque du salaf. Tout comme en témoigne également l’acte :
Du compagnon Bilâl Ibnou l-Hârith Al-Mouzâni (رضي الله عنه) [ Rapporté par Al-Hisni ] et [ Rapporté par Al-Bayhaqi et authentifié par Ibn Kathîr ] et [ Rapporté par Adh-Dhahabi ] et [ confirmé par la Faculté d’Ousoûl Ad-Dîn d’Al-Azhar ]
De l’Imâm Mâlik Ibn Anas (رحمه الله) [ Rapporté par Al-Qâdî ‘Iyâd ]
De l’Imâm Ach-Châfi’i (رحمه الله) [ Rapporté par Al-Khatîb Al-Baghdâdi ]
– L’adoration (al-‘Ibâdah) : c’est l’extrême limite de la crainte et de la soumission, comme l’a mentionné l’Imâm Moujtahid, le Hâfidh (spécialiste du Hadîth), le Loughawi (spécialiste de la langue Arabe) Taqiyyou d-Dîn As-Soubki. Ainsi le simple fait d’appeler (nidâ) un vivant ou un mort ne constitue pas une adoration d’autre que Allâh, ni le simple fait de glorifier (ta’dhîm) ou de faire al-istighâthah (la recherche du renfort) par autre que Allâh. De même, le simple fait de visiter la tombe d’un saint pour le tabarrouk (la recherche des bénédictions) ne constitue pas une adoration d’autre que Allâh. De même, le simple fait de demander ce qu’il n’est pas habituel de demander aux gens ne constitue pas une adoration d’autre que Allâh. De même, la formule de al-isti’ânah (demande d’aide) à autre que Allâh ta’âlâ ne constitue pas une adoration d’autre que Allâh. Egalement, la simple humilité n’est pas une adoration envers autre que Allâh car sinon, tous ceux qui font preuve d’humilité avec les rois et les nobles seraient devenus mécréants. C’est-à-dire que tout cela n’est pas du chirk (le fait d’attribuer des associés à Allâh), car la définition de l’adoration (al-‘ibâdah) selon les spécialistes de la langue ne s’applique pas à tout cela. En effet, pour eux, l’adoration (al-‘ibâdah) comme nous venons de le voir est l’obéissance avec la soumission. Voir à ce sujet l’explication de l’Imâm du Salaf, le Loughawi (spécialiste de la langue Arabe) Aboû Is-hâq Ibrâhîm Az-Zajjâj : ici .
– Le Messager de Allâh (صلى الله عليه وسلم) enseigna lui-même le tawassoul aux compagnons et les compagnons l’ont également pratiqué après son décès (صلى الله عليه وسلم). [ Rapporté par At-Tabarâni ]
– Ainsi, le tawassoul est une pratique qui est permise selon l’unanimité des musulmans comme le rapporte l’Imâm Taqiyyou d-Dîn As-Soubki [ Dans son livre Chifâ-ou s-Saqâm ]
– Ainsi, ceux qui déclarent mécréant la personne du simple fait qu’elle a eu pour destination la tombe du Messager (صلى الله عليه وسلم) ou d’un saint, pour le tabarrouk (la recherche des bénédictions), ceux-là ont ignoré la signification de l’adoration (‘ibâdah). Ils ont contredit la croyance qu’ont les musulmans. Les musulmans, qu’ils fassent partie du Salaf ou du Khalaf, ont depuis toujours visité la tombe du Prophète (صلى الله عليه وسلم). Le sens de la visite n’est pas que le Messager (صلى الله عليه وسلم) leur créerait la bénédiction ! Mais le sens en est qu’ils espèrent que Allâh leur crée la bénédiction (barakah) grâce à leur visite de sa tombe. Et il en est de même pour la visite de la tombe d’un vertueux.
– Le Hâfidh ‘Abdou l-Lâh Al-Ghoumari met en garde contre ceux qui interdisent le tawassoul [ Dans son livre Ar-Raddou l-Mouhkamou l-Matîn ]
– Retrouvez d’autres articles au sujet du tawassoul et du tabarrouk : ici .', 'ahlou s-sounnah, ahlou sounnah, ahlu sunna, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قد زرته مرارا كثيرة وما حلت بي شدة في وقت مقامى بطوس فزرت قبر على بن موسى الرضا صلوات الله على جده وعليه ودعوت الله إزالتها عنى إلا أستجيب لي وزالت عنى تلك الشدة وهذا شيء جربته مرارا فوجدته كذلك');

-- source: https://islamsunnite.net/imam-an-nacafi-dit-c-est-mecreance-d-appeler-allah-corps-ou-cause-ou-raison-ou-substance/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Il n’est pas permis d’inventer des noms pour Allâh.', 'Naçafi (m.710H)', 'ومن الإلحاد تسمية الله بالجوهر والجسم والعقل والعلة', '« C’est de l’athéisme que d’appeler Allâh « jism » (corps) ou « jawhar » (substance) ou « ‘aql » (raison ou cerveau) ou « ‘illah » (cause ou agent causal) »', '', 'Dans son célèbre tafsîr (exégèse du Qour-ân), lors de l’explication du verset «ولله الأسماء الحسنى فادعوه بها » qui a pour sens : « Allâh a les noms parfaits, invoquez Le par ces noms » [Soûrat Al-A’râf/180], l’Imâm An-Naçafi a dit :
Informations utiles :
– L’Imâm, le Moufassir (exégète) ‘Abdou l-Lâh Ibnou Ahmad An-Naçafi, est décédé en 710 de l’Hégire, certains ayant dit en 701 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 730 ans. Il était du madh-hab (école de jurisprudence) de l’Imâm Aboû Hanîfah. Son exégèse du Qour-ân (tafsîr) est une référence en la matière.
– Ne pas le confondre avec l’ Imâm An-Naçafi (décédé en 508 H.) ou avec l’ Imâm An-Naçafi (décédé en 537 H.) (رحمها الله).
– Ici l’Imâm An-Naçafi dit qu’il n’est pas permis d’appeler Allâh par les termes « corps » (jism), substance (jawhar), raison (‘aql) et cause (‘illâh), et que ceci est de l’athéisme, c’est-à-dire de la mécréance. D’autres savants ont mentionné cela dans leurs ouvrages :
L’Imâm Rouknou l-Islâm ‘Ali As-Soughdi a dit dans son livre « An-Noutafou l-Fatâwâ » : « Celui qui appel Allâh « ‘illah » (agent causal) ou sabab (cause) a commis de la mécréance »
L’Imâm Abdou l-Ghani An-Nâboulouçi a dit dans son livre « Al-Fathou r-Rabbâni wa l-Faydou r-Rahmâni» : « Est liée à la mécréance des chrétiens également, la mécréance des philosophes grecs qui croient que Allâh ta’âlâ est la cause des causes (‘illah al-‘ilâl), ils Lui attribuent de faire exister toutes les choses par la causalité –du fait même de Son existence, sans que ce soit par Sa volonté. Ce sont des assimilationnistes (mouchabbihah) qui nient les attributs de Dieu (mou’attilah). Ils ont pour croyance que ce monde n’a pas de début de par la matière originelle (al-hayyoûlâ) et le schème (as-soûrah) selon leur odieuse terminologie ».
– Les savants de l’Islâm disent que les noms de Allâh sont établis par la Loi (tawqîfi). Ainsi il n’est pas permis de nommer Allâh par un nom qui n’est ni dans le Qour-ân, ni dans le hadîth, ni accepté par l’unanimité des savants musulmans (al-Ijmâ’).
L’Imâm Abou l-Haçân Al-Ach’ari a dit : « Il n’est pas permis de donner à Allâh un nom en-dehors de ce qui est parvenu dans le Livre (le Qour-ân), la Sounnah authentique et l’Unanimité (al-‘ijmâ’). » Et il a dit : « Nous n’appelons pas Allâh « Moustatî'' » même si cela a le sens de Al-Qadîr (Celui Qui a la toute-puissance) car le nom « Moustatî'' » n’est pas parvenu dans la Loi. Il n’est pas permis non plus de l’appeler « Faqîh » ou « Fâhim » parce que ces noms ne sont pas parvenus dans la Loi même s’ils ont le sens de Al-‘Âlim (Celui Qui sait tout) » . [Rapporté par l’Imâm Ibn Foûrak dans son livre Moujarrad Maqalât Al-Ach’ari]
L’Imâm Abou l-Mou’în An-Naçafi (508 H.) a dit dans son livre « Tabsiratou l-Adil-lah »: « Nous nous limitons au sujet des noms de Allâh à ce qui a été fixé dans la Loi. Ne vois-tu pas que nous n’appelons pas Allâh « sahîh » (sain) même si les maladies et les calamités sont impossibles à Son sujet ?! On ne L’appelle pas non plus « Tabîb » (médecin) même s’Il sait les affections et les maladies ainsi que leurs remèdes. On ne L’appelle pas non plus « Faqîh » (jurisconsulte) même s’Il sait les jugements et leurs significations » .
Le Hâfidh As-Saghâni (650 H.) a dit : « Les noms de Allâh ta’âlâ sont « tawqîfiyyah », ainsi il n’est permis de Le nommer que par ce qui est parvenu dans le Qour-ân et la Sounnah [et l’unanimité], ainsi nous disons « yâ Karîm » mais nous ne disons pas « yâ sakhiyy », et nous disons « yâ Qadîm » mais nous ne disons pas « yâ ‘atîq », et nous disons « yâ ‘Âlim » mais nous ne disons pas « yâ ‘âqil », comprend cela pour être bien guidé » . [Dans son livre Al-Mawdoû’ât]
Le Chaykh Ahmad Zarroûq (899 H.) a dit : « On ne dit pas au sujet de Allâh « ‘ârif » du fait que cela ne soit pas parvenu dans les textes de la loi, car ce qui est correct c’est la voie du Chaykh Al-Ach’ari que les noms [de Allâh] sont tawqîfiyyah, on ne les confirme que par le Livre [c’est-à-dire le Qour-ân], ou la Sounnah ou l’unanimité (ijmâ’) » [Dans son commentaire de la Riçâlah] .
L’Imâm Ibnou Balbân Al-Hambali (1083 H.) a dit dans son livre « Moukhtasar Al-Ifâdât » : « Les noms et les attributs de Allâh sont tawqîfiyyah, il n’est permis d’appeler Allâh ou de Lui attribuer que ce qui est parvenu dans le Livre (le Qour-ân) et la Sounnah, ou par Unanimité (ijmâ’) des Imâm de la communauté » .
Le Chaykh Ahmad Ridâ Khân (1340 H.) a dit : « Ahlou s-Sounnah wa l-Jamâ’ah ont été unanimes que tout nom dont la mention n’est pas parvenue dans les textes de la Loi Islamique et qui comporte un manque de considération à l’égard de Allâh, alors le Lui attribuer est de la mécréance» [Dans son livre Al-‘Aqîdah fi l-Islâm] .
– Il est ainsi déplorable de trouver dans certains ouvrages de personnes considérées à tord comme des gens de science, des passages dans lesquels ces auteurs se permettent d’appeler Allâh par des termes irrespectueux et non conforme à la Loi tels que :
‘illah (cause ou agent causal)
sabab (cause)
Roûh (esprit ou âme)
Manba’ (source)
Masdar (source)
Asl (origine)
Wâçitah (intermédiaire)
Qouwwah (force)
‘Aql (raison ou cerveau)
Ah !
et autres expressions indignes d’être attribuées à Allâh…
– L’Imâm At-Tahâwi dans son traité de croyance qu’il a présenté en disant « Ceci est la mention de la présentation de la croyance de Ahlou s-Sounnah wa l-Jamâ’ah » , il a dit : « Celui qui attribue à Allâh l’une des significations propres aux humains est devenu mécréant. » [ Al-‘Aqîdah At-Tahâwiyyah ]
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
L’Imâm An-Naçafi (710 H.) [Dans son tafsîr]
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
Al-Oustâdh Mouhammad At-Tâwîl Al-Mâliki Al-Maghribi (Enseignant à l’Université Al-Qarawiyyîn) (1436 H.) qui mentionne l’unanimité [Dans son livre Al-Loubâb fî Charhi Touhfati t-Toullâb]
Et beaucoup d’autres…', '''illah, al-boti, al-bouti, al-buti'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ومن الإلحاد تسمية الله بالجوهر والجسم والعقل والعلة');

-- source: https://islamsunnite.net/limam-ibn-hajar-rapporte-lunanimite-sur-le-fait-que-yad-au-sujet-de-allah-ne-signifie-pas-main/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’a pas de main.', 'Unanimité', 'ووقــع ذكر اليد في القرآن والحديث مضافًا إلى الله تعالى، واتفق أهل السنة والجماعة على أنه ليس المراد باليد الجارحة التي هي من صفات المحدثات', '« Il est mentionné dans le Qour-ân et dans le hadîth l’annexion de « al-yad » à Allâh ta’âlâ, et Ahlou s-Sounnah wa l-Jamâ’ah ont été unanimes qu’il n’est pas visé [au sujet de Allâh] par « al-yad » l’organe (c’est-à-dire la main), qui fait partie des choses qui sont concernées par l’entrée en existence »', '', 'Dans son livre « Hadyou s-Sârî Mouqaddimah Fath al-Bârî » (page 208 de cette édition), l’Imâm Ibnou Hajar Al-‘Asqalâni a dit :
Informations utiles
– Chaykhou l-Islâm, Amîr al-Mouminîn fi l-hadîth (le Prince des croyants dans la science du hadîth) Chihâb ad-Dîn Abou l-Fadl Ahmad Ibnou ‘Ali Ibnou Hajar Al-‘Asqalâni est né en 773 et il est décédé en 852 de l’hégire (رحمه الله) c’est-à-dire il y a plus de 590 ans. C’est un très grand spécialiste de la science du hadîth qui a écrit de nombreux ouvrages. Il est du madh-hab (Ecole de jurisprudence) de l’Imam Ach-Châfi’i. Son livre « Fath Al-Bârî » est incontournable, c’est le plus célèbre commentaire du Sahîh Al-Boukhâri. Consultez sa biographie : ici .
L’Imâm As-Souyoûti a dit de lui : « Chaykhou l-Islâm, l’Imâm des houffâdh (spécialistes de la science du hadîth) de son temps, le Hâfidh (spécialiste du hadîth) des contrées Egyptienne mais il est aussi le Hâfidh de tout le bas-monde, le juge des juges » [Tabaqât Al-Houffâdh].
Le Hâfidh Ibn Nasrou d-Dîn Ad-Dimachqi Ach-Châfi’i a dit à son sujet : « Notre Maître (mawlanâ wa sayyidounâ), Chaykhou l-Islâm, le grand Hâfidh (spécialiste de la science du hadîth), celui qui supporte la sounnah, l’Imâm des Imams, le juge des juges de la oummah » [Al-Jawâhir].
– Ici l’Imâm Ibn Hajar rapporte l’unanimité des gens de la Sounnah que lorsque le terme « yad » est attribué à Allâh il ne vient pas dans le sens de l’organe. Ainsi il n’est pas valable d’attribuer à Allâh la main et ceci sans divergence.
– En effet, Allâh dit : {لَيْسَ كَمِثْلِهِ شَيْءٌ} [Ce qui a pour sens] : « Rien n’est tel que Lui – d’aucune façon que ce soit -». Les savants spécialistes de tafsîr du Qour-ân ont confirmé que ce verset en lui-même est une preuve pour exempter Allâh du corps. Parmi eux : l’Imâm Ar-Râzi [ Dans son Tafsîr ], l’Imâm As-Souyoûti [ Dans son livre Al-Iklîl ] et autres.
– Et le prophète (صلى الله عليه وسلم) a dit dans un hadîth sahîh rapporté par Al-Boukhâri et autre : « كَـــــانَ اللهُ وَلَــــمْ يَــــكُــــنْ شَــىءٌ غَــيْـــرُهُ » [ce qui a pour sens ] : «Allâh existe de toute éternité et rien d’autre que Lui n’est de toute éternité ». Ce hadîth nous indique qu’hormis Allâh et Ses Attributs, rien n’existe de toute éternité, ni terre, ni ciel, ni mer, ni endroit, ni corps, ni membre, ni organe, ni aucune autre créature quelle qu’elle soit. Après cela comment attribuer à Allâh des choses entrées en existence ?!
– A ce sujet, l’Imâm du Salaf, Aboû Ja’far At-Tahâwi, dans son traité de croyance qu’il a présenté en disant « Ceci est la mention de la présentation de la croyance de Ahlou s-Sounnah wa l-Jamâ’ah », il a dit : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres». [ Al-‘Aqîdah At-Tahâwiyyah ]
– L’Imâm Aboû Hanîfah a dit : « {yadou l-Lâhi fawqa aydîhim} et Son yad n’est pas comme le yad des créatures, ce n’est pas une partie corporelle (c’est-à-dire une main), et Il est Le Créateur des mains » [Dans son livre Al-Fiqhou l-Absat]
– L’Imâm Al-Bayhaqi a dit dans son livre Al-I’tiqâd : «Son « yad » n’est pas un organe (c’est-à-dire une main)». [ Al-I’tiqâd ]
– L’Imâm Al-Halîmi a dit lors de son explication du nom de Allâh « Al-Mouta’âlî » : « Cela signifie qu’Il est exempt du fait que Lui soit possible ce qui est possible aux choses qui entrent en existence : le mariage, l’enfantement, les organes et les membres […] » [ Rapporté par Al-Bayhaqi ]
– L’Imâm Ahmad Ar-Rifâ’i a dit : «Ne dites pas que le yad et le ‘ayn [au sujet de Allâh] sont des organes » [Dans son livre Al-Bourhânou l-Mou-ayyad].
– L’Imâm An-Naçafi (m.508 h.) a dit : « Il est permis de dire que Allâh ta’âlâ a un yad en Arabe, mais ce n’est pas permis en Persan. Et al-yad est l’un de Ses attributs éternels, sans comment (bila kayf) et sans similarité (wa lâ tachbîh) […] Il en est de même pour al-yad qui compte de parmi Ses attributs éternels sans comment, ni similarité, et qui n’est pas un membre. Ainsi, nous confirmons al-yad, et son sens est tel que Allâh ta’âlâ veut » [ Dans son livre Bahrou l-Kalâm ]
– L’Imâm Al-Qourtoubi a dit : « Le terme – yad – dans la langue Arabe peut venir dans le sens de la partie corporelle (c’est-à-dire de la main) comme dans la parole de Allâh ta’âlâ {wa khoudh bi yadika dightha} et ceci est impossible au sujet de Allâh ta’âlâ » [ Dans son tafsîr ]
– L’Imâm Al-Marjâni At-Toûniçi Al-Mâliki (m. 699 H.) a dit : « [La parole de Allâh : ] { يد الله فوق أيديهم } (Yadou l-Lâh fawqa aydîhim) : il ne s’agit pas ici d’un « yad » dans le sens d’une partie corporelle (c’est-à-dire une main), mais il s’agit d’un « yad » dans le sens de la puissance, car Al-Bâri (c’est-à-dire Allâh) est exempt d’une telle chose (c’est-à-dire d’avoir une main) » . [Rapporté par Ibnou l-Mou’allim Al-Qourachi dans son livre Najmou l-Mouhtadi]
– L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {بَلۡ يَدَاهُ مَبۡسُوطَتَانِ} (Bal yadâhou Mabsoûtatân) : ce qui en est voulu n’est pas le sens réelle de l’organe qui est composée, car Allâh ta’âlâ est exempt de la composition, mais il s’agit d’un des attributs de Son Être, comme l’ouïe et la vue, Allâh جل ذكره dit : {لِمَا خَلَقْتُ بِيَدَيَّ} (limâ khalaqtou biyaday), et le prophète a dit « كِلْتَا يَدَيْهِ يَمِينٌ » (kiltâ yadayhi yamîn ) et Allâh est plus savant concernant Ses attributs, ainsi les esclaves se doivent d’y croire, de les accepter et de les lires tels qu’ils sont parvenu, sans comment (bila kayf) » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
– L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {قَالَ يَاإِبْلِيسُ مَا مَنَعَكَ أَنْ تَسْجُدَ لِمَا خَلَقْتُ بِيَدَيَّ} (qâla yâ Iblîssou mâ mana’aka an tasjouda limâ khalaqtou biyadayy) : c’est-à-dire [ce que j’ai créé] moi-même sans intermédiaire comme un père ou une mère ; et « al-yadân » est un attribut de parmi les attributs de Allâh ‘azza wa jall, nous y croyons tel que cela est parvenu , et nous remettons la connaissance du sens à Allâh » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
– Le Chaykh Ibnou ‘Aqîl Al-Hambali a dit : « Allâh n’est pas de ceux qui ont des parties ou des organes» . [ Rapporté par Ibnou l-Jawzi ]
– L’Imâm Fakhrou d-Dîn Ar-Râzi lors de son explication de la parole de Allâh { ليس كمثله شيء } (layça kamithlihi chay) qui signifie « Rien n’est tel que Lui », il a dit : « Les savants du Tawhîd par le passé et par le présent ont retenu cette âyah comme argument pour nier le fait que Allâh ta’âlâ soit un corps composé d’organes et de parties étant dans un endroit et une direction ». [ Dans son tafsîr ]
– L’Imâm ‘Abdou l-Ghani An-Nâboulouçi a dit dans son livre : « Quant à l’assimilation (tachbîh) c’est de croire que Allâh ta’âlâ ressemble à l’une de Ses créatures, comme ceux qui croient que Allâh est un corps au-dessus du Trône ou qui croient qu’Il a des mains […] et tout ceci est de la mécréance claire » [ Al-Fathou r-Rabbâni ]. Ainsi le fait de croire que Allâh aurait des mains ou n’importe quelle autre partie corporelle, ceci constitue de la mécréance.
– L’Imâm At-Tahâwi a d’ailleurs dit : « Celui qui attribue à Allâh l’une des significations propres aux humains est devenu mécréant. Celui qui aura bien compris cela en aura tiré des leçons et se sera écarté des propos semblables à ceux des mécréants, il aura su que Allâh avec Ses attributs n’est pas semblable aux humains » [ Al-‘Aqîdah At-Tahâwiyyah ]
– Ainsi pour résumer nous disons que le terme « yad » dans la langue arabe a de très nombreux sens autre que le mot « main ». Lorsqu’il est employé au sujet de Allâh il n’est pas à prendre dans le sens de l’organe et de la partie corporelle. Les savants ont donné la règle suivante : La similarité dans les termes n’implique pas la similarité dans la signification. Cela signifie que lorsqu’un même terme est employé au sujet de Allâh et au sujet d’une créature alors la signification sera différente.
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah]
– Retrouvez d’autres citations concernant le terme “yad” : ici .
– Retrouvez d’autres citations sur le thème Allah n’est pas un corps / n’a pas d’organes : ici
– Retrouvez d’autres citations sur le thème Attribuer le corps à Allah est de la mécréance : ici', 'accord, allah, aqida, ayd'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ووقــع ذكر اليد في القرآن والحديث مضافًا إلى الله تعالى، واتفق أهل السنة والجماعة على أنه ليس المراد باليد الجارحة التي هي من صفات المحدثات');

-- source: https://islamsunnite.net/imam-badrou-d-din-al-ayni-distingue-bonne-et-mauvaise-innovation/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La bonne innovation.', '''Ayni', 'والبدعة في الأصل إحداث أمر لم يكن في زمن رسول الله صلى الله عليه وسلم، ثم البدعة على نوعين، إن كانت مما تندرج تحت مستحسن في الشرع فهي بدعة حسنة وإن كانت مما يندرج تحت مستقبح في الشرع فهي بدعة مستقبحة', 'L’innovation, à l’origine, c’est le fait d’innover une chose qui n’avait pas lieu à l’époque du Messsager de Allâh (صلى الله عليه وسلم), et l’innovation est de deux sortes : si elle rentre dans la catégorie des choses approuvées dans la Loi de l’Islâm, alors c’est une bonne innovation (bid’ah haçanah), et si elle rentre dans la catégorie des choses désapprouvée dans la Loi, alors c’est une mauvaise innovation (moustaqbahah)', '', 'Dans son commentaire du Sahîh de l’Imâm Al-Boukhâri intitulé « ‘Oumdatou l-Qâri », après avoir mentionné la parole de ‘Oumar Ibnou Khattâb : « {نعم البدعة} ce qui signifie : {Quelle bonne innovation ! } lorsqu’il a rassemblé les gens derrière un seul imâm pour accomplir les prières de tarâwîh [ rapporté par Al-Boukhâri ], l’Imâm Badrou d-Dîn Al-‘Ayni commente en disant :
Informations utiles :
– Al-‘Allâmah (l’illustre savant), le Qâdî (le juge), le Hâfidh (spécialiste de la science du Hadîth), l’Imâm Badrou d-Dîn Abî Mouhammad Mahmoûd Ibnou Ahmad Al-‘Ayni Al-Hanafi est originaire d’Alep (Syrie), il est né en 762 à ‘Aytab (Gaziantep) dans l’actuelle Turquie et il est décédé en 855 de l’Hégire au Caire (Egypte) (رحمه الله), c’est-à-dire il y a plus de 580 ans. Son livre ‘Oumdah al-Qâri fait partie des plus célèbres commentaires du sahîh de l’Imâm Al-Boukhâri.
– Ici il explique que l’innovation peut être bonne ou mauvaise.
– Parmi ce qui indique cela, il y a la parole du Calife ‘Oumar Ibnou l-Khattâb, le compagnon et second Calife (رضي الله عنه) : « ni’matou l-bid’ah » c’est-à-dire “Quelle bonne innovation”. Cette parole de ‘Oumar a été rapportée par l’Imâm Al-Boukhâri [ Dans son Sahîh ] et l’Imâm Mâlik [ Dans Al-Mouwatta ]. Et beaucoup de savants se sont appuyé sur cette parole de ‘Oumar pour confirmer qu’une innovation peut être bonne, parmi eux :
L’Imâm Ach-Châfi’i [ Rapporté par Al-Bayhaqi dans Al-Madkhal ] et [ Rapporté par Aboû Nou’aym ] et [ Rapporté par Al-Bayhaqi dans Manâqibou ch-Châfi’i ] et [ Rapporté aussi par Ibn Taymiyah (moujassim) ]
L’Imâm Al-Bayhaqi [ Dans son livre Al-Madkhal ] et [ Dans son livre Manâqibou ch-Châfi’i ]
L’Imâm Ibn Battâl [ Dans son Charh Sahîh Al-Boukhâri ]
Le Qâdî Aboû Bakr Ibnou l-‘Arabi [ ‘Âridatou l-Ahwadhi ]
L’Imâm An-Nawawi [ Dans son Charh Sahîh Mouslim ]
L’Imâm Ibn Daqîq Al-‘Îd [Dans son Charh Arba’în An-Nawawiyyah]
L’Imâm Ibn Hajar Al-Asqalâni [ Dans son Charh Sahîh Al-Boukhâri ]
L’Imâm As-Souyoûti [ Al-Hâwi li l-Fatâwi ]
Le Mouhaddith Al-Harari [ Dans son livre Ar-Rawâ-ihou z-Zakiyyah ]
et autres qu’eux.
– Le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ]
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ].
– Le Chaykh ‘Abdou l-Lâh Al-Ghoumâri a dit : « Les savants ont été en accord sur la classification des innovations en bonne et mauvaise, et sur le fait que ‘Oumar (رضي الله عنه) est le premier qui a parlé de cela, et ils ont été en accord sur le fait que la parole du prophète ” كل بدعة ضلالة ” (koullou bid’atin dalâlah) est un texte de portée générale mais dont le sens est restreint (‘âm makhsoûs)» [ Itqânou s-San’ah ]
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .', '''oumdah al qari, ''oumdatou l-qari, ''umdah al-qari, ''umdatu l-qari'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'والبدعة في الأصل إحداث أمر لم يكن في زمن رسول الله صلى الله عليه وسلم، ثم البدعة على نوعين، إن كانت مما تندرج تحت مستحسن في الشرع فهي بدعة حسنة وإن كانت مما يندرج تحت مستقبح في الشرع فهي بدعة مستقبحة');

-- source: https://islamsunnite.net/imam-abou-madyan-croyance-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La croyance du Chaykh Aboû Madyan', 'Abou Madyan', '« الحمد لله الذي تنـزه عن الحد والأين والكيف والزمان والمكان .المتكلم بكلام قديم أزلي صفة من صفاته قائم بذاته لا منفصل عنه ولا عائد إليه ولا يحُل في المحدثات ولا يجانس المخلوقات ولا يوصف بالحروف والأصوات تنـزَّهت صفات ربنا عن الأرض والسماوات. اللهم إنّا نُوَحِّدُك ولا نَحُدُّك ونؤمن بك ولا نكَيِّفُك ونعبدك ولا نُشَبِّهُك ونعتقد أن من شبهك بخلقك لم يعرف الخالق من المخلوق» و قال أيضا : « القُدُّوس على العرش استوى من غير تمكن ولا جلوس » فقال : « العرش بنفسه هو المكان وله جوانب وأركان وكان الله ولا مكان وهو الآن على ما عليه كان ليس له تحتٌ فيُقِلَّه ولا فوقٌ فيُظِلَّه ولا جوانب فتعدله ولا خلْف فيسنده ولا أمام فيحده. جل عن التجريد والتقرير والتكيف والتصوير والتشبيه والنظير.﴿لَيْسَ كَمِثْلِهِ شَيْءٌ وَهُوَ السَّمِيعُ البَصيرُ﴾ »', '« La louange est à Allâh Qui est exempt de la limite et du « où » (c’est-à-dire de la localisation) ainsi que du comment, du temps et de l’endroit. Il a pour attribut une Parole exempte de début et c’est l’un de Ses Attributs qui est propre à Lui-même, ni séparé de Lui, ni en contact avec Lui. Il ne s’incarne pas dans ce qui entre en existence et Il ne ressemble pas aux créatures, on ne Lui attribue pas les lettres et les sons, les Attributs de notre Seigneur sont exempts de ce qu’il y a dans la terre et les cieux. Ô Allâh nous déclarons que Tu es Unique et que Tu n’es pas limité. Nous croyons en Toi et nous ne T’attribuons pas le comment. Nous T’adorons et ne T’attribuons pas de semblable. Et nous témoignons que celui qui Te donne un semblable ne connais pas la différence entre Le Créateur et la créature.»', '', 'Dans son traité de croyance, l’Imâm Aboû Madyan a dit :
Il a dit aussi : « Al-Qouddoûs (c’est-à-dire Allâh) ‘ala l-‘archi stawâ, sans endroit, ni position assise. »
Et il a dit : « Le trône lui-même est un endroit et il a des flancs et des cotés. Et Allâh existe de toute éternité sans endroit et Il est maintenant tel qu’Il est de toute éternité. Il n’y a rien en-dessous de Lui qui Le porterait et rien au-dessus de Lui qui L’ombragerait, ni de cotés qui le redresserait et rien non plus derrière Lui qui Lui ferait appuie, ni devant Lui qui Le limiterait. Allâh est exempt du comment, de l’image, du ressemblant et du pareil, Rien n’est tel que Lui et Il est Celui Qui entend et Qui voit »
Informations utiles :
– Le Chaykh des Machâykh, le Waliyy (saint), l’Imâm, Al-Qoutb Chou’ayb Aboû Madyan Al-Andalouçi (m.594 A.H.) [connu en Afrique du nord par Sayyidi Boumediene] est né dans la région de Séville (Espagne) et il est décédé et enterré à Tlemcen (Algérie). Il est un grand savant reconnu dans le monde entier.
Le Chaykh Aboû ‘Abdi l-Lâh At-Tilimçâni a dit de lui : « Le Chaykh, sayyidî Aboû Madyan était [à son époque] sans pareil de parmi les meilleurs des hommes, et il était l’élite de parmi l’élite des awliyâ (saints), des abdâl ; Allâh a réunis pour lui la science de la loi (charî’ah) et de la haqîqah» [An-Najmou th-Thâqib]
– Le manuscrit de son traité de croyance se trouve à la bibliothèque national de paris sous la référence 5485.
– Ici, le Chaykh Aboû Madyan confirme plusieurs points qui font l’objet de l’unanimité. Comme le fait que :
Allâh existe sans endroit ;
Il est exempt des six directions (le haut, le bas, la droite, la gauche, le devant et le derrière) ;
Il existe sans comment ;
Il n’est pas concerné par la limite ;
Il ne dépend pas du temps ;
Il n’a aucune ressemblance avec Ses créatures ;
Sa parole n’est ni de lettre ni de son ; [ Retrouvez d’autres citations à ce sujet : ici ]
Son istiwâ sur le trône n’est pas une position assise ni le fait d’occuper un endroit. [ Voir d’autres citations à ce sujet : ici ]
– Le comment (al-kayf) : c’est ce par quoi on décrit les créatures, c’est-à-dire les dimensions, le début, la fin, la couleur, l’endroit, la direction, la forme, la position assise, la proximité, le mouvement, le déplacement, le changement et tout ce qui fait partie des attributs des créatures. Allâh est exempt de tout cela.
– Selon les savants, al-mahdoûd (ce qui est limité), c’est ce qui occupe un espace, qu’il soit grand ou petit, qu’il soit palpable comme l’homme ou l’arbre, ou impalpable comme la lumière ou l’obscurité. Et les savants ont dit que ce qui est limité a besoin de qui l’a limité par cette limite-là. Or il n’est pas possible que ce qui est limité se soit limité lui-même selon la limite qu’il aurait, car cela signifierait qu’il se serait créé et cela est impossible, car ce qui existe ne se crée pas lui-même. l’Imâm ‘Ali Ibn Abî Tâlib qui a dit : « Celui qui prétend que notre Seigneur est limité, alors certes il n’a pas connu Le Créateur, Celui Qui mérite d’être adoré » [Rapporté par Aboû Nou’aym]
– Le Hâfidh Ibnou l-Qattân Al-Fâçi Al-Mâliki (m.628 H.) a dit : « Et ils [les gens de la Sounnah, du Salaf et du Khalaf] ont été unanimes sur le fait que la parole de Allâh n’est pas de lettres ni de sons » [Al-Iqnâ’]', 'aboû madian, abou madyan, abu madyan, al-ghawth'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« الحمد لله الذي تنـزه عن الحد والأين والكيف والزمان والمكان .المتكلم بكلام قديم أزلي صفة من صفاته قائم بذاته لا منفصل عنه ولا عائد إليه ولا يحُل في المحدثات ولا يجانس المخلوقات ولا يوصف بالحروف والأصوات تنـزَّهت صفات ربنا عن الأرض والسماوات. اللهم إنّا نُوَحِّدُك ولا نَحُدُّك ونؤمن بك ولا نكَيِّفُك ونعبدك ولا نُشَبِّهُك ونعتقد أن من شبهك بخلقك لم يعرف الخالق من المخلوق» و قال أيضا : « القُدُّوس على العرش استوى من غير تمكن ولا جلوس » فقال : « العرش بنفسه هو المكان وله جوانب وأركان وكان الله ولا مكان وهو الآن على ما عليه كان ليس له تحتٌ فيُقِلَّه ولا فوقٌ فيُظِلَّه ولا جوانب فتعدله ولا خلْف فيسنده ولا أمام فيحده. جل عن التجريد والتقرير والتكيف والتصوير والتشبيه والنظير.﴿لَيْسَ كَمِثْلِهِ شَيْءٌ وَهُوَ السَّمِيعُ البَصيرُ﴾ »');

-- source: https://islamsunnite.net/imam-moutawalli-explique-verset-yakhafouna-rabbahoum-min-fawqihim-sourat-an-nahl-50/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Tafsîr du verset yakhâfoûna Rabbahoum min fawqihim.', 'Les Chafi''ites', 'وقوله {يخافون ربهم من فوقهم} معناه يخافون ربهم أن ينزل عليهم عذابا من فوقهم', 'Quant à la parole de Allâh ta’âlâ : { يخافون ربهم من فوقهم } (yakhâfoûna Rabbahoum min fawqihim) elle signifie : Ils craignent que leur Seigneur fasse descendre sur eux un châtiment provenant d’au-dessus d’eux', '', 'Dans son livre « Al-Ghounyah fî Ousoûli d-Dîn » (page 78 de cette édition) l’Imâm Al-Moutawalli a dit :
Informations utiles :
– Al-‘Allâmah (l’illustre savant), l’Imâm, le Ousoûli (spécialiste des fondements), le Faqîh (spécialiste de la jurisprudence) Aboû Sa’îd ‘Abdou r-Rahmân An-Nayçâboûri, connu sous le nom de Al-Moutawalli Ach-Châfi’i est né en 426 à Nayçâboûr et il est décédé en 478 de l’Hégire à Baghdâd (رحمه الله). C’est-à-dire il y a environ 960 ans. Il succéda à l’Imâm Ach-Chîrâzi comme enseignant à la célèbre école An-Nidhâmiyyah de Baghdâd. Il étudia la jurisprudence Chafi’ite auprès du savant, le Qâdî Houçayn Ach-Châfi’i (m.463 A.H) celui dont l’Imâm Ar-Râfi’i (m.623 A.H.) disait : « On le surnommait le savant de la communauté» , et autres que lui. L’Imâm An-Nawawi (m.676 A.H.) le cite souvent comme référence dans ses ouvrages.
Adh-Dhahabi a dit à son sujet : « L’illustre savant (Al-‘Allâmah) le Chaykh des Chafi’ites » [Siyarou A’lâmi n-Noubalâ], et il a également dit de lui : « Il était un Faqîh (spécialiste de la jurisprudence) Chafi’ite, l’un des grands savants, Il était un Faqîh reconnu, et un savant méticuleux » [Târîkhou l-Islâm].
Quant à Ibn Kathîr, il a dit à son sujet : « Il était éloquent, un grand orateur, et maîtrisait de nombreuses sciences » [Al-Bidâyah wa n-Nihâyah], il a dit également : « Il était un Faqîh (spécialiste de la jurisprudence) reconnu, et un savant méticuleux » , il a également fait son éloge en disant : « Il était l’un des ash-hâbou l-woujoûh (une catégorie de savants en dessous du degré du moujtahid, qui est apte à déduire les jugements religieux à partir des textes de l’Imâm fondateur de l’école) dans le madh-hab [Châfi’i] » . [Tabaqâtou ch-Châfi’iyyîn]
As-Safadi a dit de lui : « Il comptait parmi les meilleurs des gens de par le comportement et le caractère, et de parmi les savants les plus modestes et généreux, il était reconnu et méticuleux tout en étant un grand orateur, éloquent, et nombreux devenaient des imams en assistant à ses assemblées de science » . [Al-Wâfî bi l-Wafayât]
Tâjou d-Dîn As-Soubki a dit de lui : « Il est l’un des Imâm aux degrés les plus élevés de parmi nos compagnons » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ].
Et Ibn Khallikân a dit à son sujet : « Il était un Faqîh Chafi’ite originaire de Nayçâboûr, il a rassemblé la science, l’application de la religion, et les bons caractères, il a maîtrisé le Fiqh (la jurisprudence), Al-Ousoûl (les fondements) et al-Khilâf (les divergences religieuses) » [Wafayâtou l-A’yân].
– Ici, lors de son explication du verset 50 de Soûrat An-Nahl {يخافون ربهم من فوقهم} (yakhâfoûna Rabbahoum min fawqihim) il explique que le sens est qu’Ils craignent de la part de leur Seigneur (Allâh), un châtiment provenant d’au-dessus d’eux. Ainsi ce verset ne signifie en aucun cas que Allâh serait de par Son Être dans la direction du dessus comme se le sont illusionné les mouchabbihah (anthropomorphistes), qui de nos jours s’auto-proclament salafistes (les wahhabites).
En effet l’Imâm Fakhrou d-Dîn Ar-Râzi a dit : « Les mouchabbihah (corporalistes) ont dit : la parole de Allâh {yakhâfoûna Rabbahoum min fawqihim} indique que Allâh est au-dessus d’eux de par Son Être» . [Dans son tafsîr]
Egalement l’Imâm Ach-Chahrastâni a dit : « En ce qui concerne les expressions révélées (c’est-à-dire présentes dans le Qour-ân ou la Sounnah) telles que « al-istiwâ », « al-wajh », « al-yadayn », « al-janb », « al-majî », « al-ityân », « al-fawqiyyah » et d’autres que celles-ci, les corporalistes les prennent selon leur sens apparent, je veux dire telles qu’elles sont comprises lorsqu’elles sont employées au sujet des corps » . [ Al-Milal wa n-Nihal ]
– Pourtant le Messager de Allâh (صلى الله عليه وسلم) a catégoriquement nié la notion de direction au sujet de Allâh dans un hadîth sahîh. Il a dit (صلى الله عليه وسلم) [ce qui a pour sens : ] «Ô Allâh Tu es Adh-Dhâhir, rien n’est au-dessus de Toi et Tu es Al-Bâtin, rien n’est en-dessous de Toi » [ Rapporté par Mouslim et autres ]
– Certains savants ont expliqué ce verset en disant que la fawqiyyah (supériorité) de Allâh mentionnée dans ce verset ou encore dans le verset {wa houwa l-Qâhirou fawqa ‘ibâdih} est une fawqiyyah (supériorité) de domination, de toute puissance et de mérite, et non une fawqiyyah par l’endroit et la direction.
L’Imâm Ibnou Foûrak a dit à ce sujet : « Sache que, lorsque nous disons que Allâh ‘azza wa jall est “fawqa mâ khalaqa” (supérieur à ce qu’Il a créé), cela ne veut pas dire que c’est une fawqiyyah (supériorité) spatiale ni une élévation sur les endroits par la distance ni leur supervision par le contact avec quoi que ce soit de ces endroits » [ Mouchkilou l-Hadîth ] .
– De nombreux savants ont donné une explication similaire à celle de l’Imâm Al-Moutawalli, tels que :
L’Imâm At-Tabarâni ;
L’Imâm Ibnou ‘Atiyyah ;
L’Imâm Ar-Râzi ;
L’Imâm Ibnou ‘Abdi s-Salâm
L’Imâm Al-Qourtoubi ;
L’Imâm Al-Baydâwi ;
L’Imâm An-Naçafi (710 H.) ;
L’Imâm Aboû Hayyân Al-Andaloûçi ;
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali a dit, lors de l’explication du verset 50 de Soûrat An-Nahl : « {يَخَافُونَ رَبَّهُمْ مِنْ فَوْقِهِمْ} (yakhâfoûna Rabbahoum min fawqihim) : c’est-à-dire que Allâh les domine et qu’Il est tout-puissant sur eux, comme dans Sa parole {يَدُ اللَّهِ فَوْقَ أَيْدِيهِمْ} (yadou l-Lâhi fawqa aydîhim), ainsi rien ne le rend incapable et personne ne Le domine ; ou le sens est : ils craignent un châtiment provenant d’au-dessus d’eux, s’ils Lui désobéissent » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
le Moufassir Ismâ’îl Haqqi ;
Et beaucoup d’autres …', 'allah, aqida, croyance, dieu'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وقوله {يخافون ربهم من فوقهم} معناه يخافون ربهم أن ينزل عليهم عذابا من فوقهم');

-- source: https://islamsunnite.net/imam-ibn-fourak-explique-istiwa-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le sens de l’istiwâ de Allâh sur le trône.', 'Les Chafi''ites', 'لأن استواءه على العرش سبحانه ليس على معنى التمكن والاستقرار، بل هو على معنى العلو بالقهر والتدبير وارتفاع الدرجة بالصفة، على الوجه الذي يقتضي مباينة الخلق', 'Certes l’istiwâ de Allâh sur le trône ne signifie pas le fait d’être dans un endroit ou d’être établi, mais il vient plutôt dans le sens de la supériorité par la domination , de la prédestination, de l’élévation du degré, dans un sens qui implique qu’Il n’est pas comparable aux créatures', '', 'Dans son livre « Mouchkilou l-Hadîth » (page 229 de cette édition), l’Imâm Ibnou Foûrak a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du hadîth), le moutakallim (spécialiste de la croyance), le Ousoûli (spécialiste des fondements), le Faqîh (spécialiste de la jurisprudence) Aboû Bakr Mouhammad Ibnou l-Haçan Ibnou Foûrak (certains le nomment « Ibnou Fawrak ») al-Asbahâni ach-Châfi’i est décédé en 406 de l’Hégire (رحمه الله), c’est-à-dire il y a environ 1030 ans. Il était un grand défenseur de la croyance de Ahlou s-Sounnah wa-l jamâ’ah. On compte parmi ses illustres élèves : l’Imâm Al-Bayhaqi et l’Imâm Abou l-Qâçim Al-Qouchayri.
L’Imâm An-Nawawi faisait son éloge en disant : « Al-Oustâdh [Al-Isfarâyîni] est l’une des trois personnes qui vécurent à la même époque et qui se levèrent afin de défendre l’école du Hadîth et de la Sounnah dans les questions de croyance, il s’agit ainsi de ceux qui ont défendu l’école du Chaykh Abou l-Haçan Al-Ach’ari. Ce sont Al-Oustâdh Aboû Is-hâq Al-Isfarâyîni, Al-Qâdî Aboû Bakr Al-Bâqillâni et l’Imâm Aboû Bakr Ibnou Foûrak. » [Tahdhîbou l-Asmâ-i wa l-Loughât]
Adh-Dhahabi a dit de lui : « L’Imâm, l’Illustre savant (Al-‘Allâmah), le vertueux (As-Sâlih) le Chaykh des théologiens (moutakallimîn)» [Siyar A’lâmi n-Noubalâ]
– Ici, l’Imâm Ibn Foûrak explique que l’istiwâ de Allâh sur le trône n’est pas un établissement ni le fait d’occuper un endroit, mais que cela signifie plutôt que Allâh domine le trône par Sa toute-puissance, ou encore que le trône est sous la prédestination de Allâh.
– Les savants de l’Islâm ont été unanimes sur le fait que l’istiwâ de Allâh n’est pas une position assise (jouloûss) ni un établissement (istiqrâr). Parmi eux :
L’Imâm Aboû Hanîfah [ Dans son livre Al-Wasiyyah ]
L’Imâm Al-Bâqillâni [ Dans son livre Al-Insâf ]
L’Imâm Ibnou Foûrak [Dans son livre Mouchkilou l-Hadîth]
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
– De nombreux savants ont proposé l’interprétation (ta-wîl) du terme “istawâ” par la domination par la toute-puissance. Parmi eux :
Le Loughawi ‘Abdou l-Lâh Ibnou Yahyâ Ibnou l-Moubârak
L’Imâm Az-Zajjâj [ Dans son livre Ma’âni Al-Qour-ân ] et [ Rapporté par An-Naçafi ]
L’Imâm Aboû Mansoûr Al-Mâtourîdi
L’Imâm At-Tabarâni [ Dans son Tafsîr ]
L’Imâm Aboû Bakr Ahmad Ar-Râzi Al-Jassâs Al-Hanafi
L’Imâm Abou l-Layth As-Samarqandi
L’Imâm Ibnou Foûrak [ Dans son livre Mouchkilou l-Hadîth ]
L’Imâm Aboû Mansoûr Mouhammad Ibnou l-Haçan Ibnou Abî Ayyoûb Al-Ayyoûbi An-Nayçâboûri
L’Imâm ‘Abdou l-Lâh Al-Jouwayni [père de l’Imâm Al-Haramayn]
Le Moufassir Abou l-Haçan ‘Ali Ibn Mouhammad Al-Mâwardi
Le Moufassir Al-Wâhidi [ Rapporté par Ibn Rouch Al-Jadd ]
L’Imâm Abou Is-hâq Ach-Chîrâzi
Le Moufassir Ad-Damghâni Al-Hanafi
L’Imâm Al-Moutawalli [ Dans son livre Al-Ghounyah ]
L’Imâm Al-Haramayn Al-Jouwayni [Dans son livre Louma’ al-Adillah]
Le Loughawi Ar-Râghib Al-Asbahâni
L’Imâm Al-Ghazâli
L’Imâm An-Naçafi (508 H.)
L’Imâm Abou n-Nasr Al-Qouchayri
Le Qâdî Ibnou Rouchd Al-Jadd [ Rapporté par Ibnou l-Hâjj Al-Mâliki ]
Al-Allâmah Al-Lâmichi Al-Hanafi
Le Moufassir Ibnou ‘Atiyyah Al-Andalouçi
L’Imâm Fakhrou d-Dîn Ar-Râzi
Le Chaykh Ismâ’îl Ibnou Ibrâhîm Ach-Chaybâni Al-Hanafi
Le Chaykh Sayfou d-Dîn Al-Âmidi
Le Chaykh Ibnou l-Hâjib Al-Mâliki
L’Imâm Al-‘Îzz Ibnou ‘Abdi s-Salâm
L’Imâm Al-Qourtoubi
Le Chaykh Chihâbou d-Dîn Al-Qarâfi
Le Moufassir An-Naçafi [ Dans son Tafsîr ]
Le Moufassir Al-Baydâwi
Le Qâdî Badrou d-Dîn Ibnou l-Jamâ’ah
Le Qâdî ‘Abdou r-Rahmân Al-Îji
L’Imâm Taqiyyou d-Dîn As-Soubki
Le Chaykh Al-Yâfi’i
Le Qâdî Ibnou s-Sirâj Al-Hanafi
Le Qâdî Tâjou d-Dîn As-Soubki
Le Chaykh ‘Izzou d-Dîn Ibn Jamâ’ah [ Dans son livre Darajou l-Ma’âlî ]
Le Loughawi Fayroûzâbâdi [ Dans son livre Basâ-irou dhawi t-Tamyîz ]
L’Imâm As-Souyoûti
L’Imâm Al-Qastallâni
Chaykh Al-Islâm Zakariyyâ Al-Ansâri [ Dans son livre Ihkâmou d-Dalâlah ]
Le Chaykh Moullâ ‘Ali Al-Qâri
Le Moufassir Ismâ’îl Haqqi Al-Hanafi
Le Hâfidh Mourtadâ Az-Zabîdi
Le Chaykh Mahmoûd As-Soubki Al-Azhari [ Dans son livre It-hâfou l-Kâ-inat ]
Le Chaykh Az-Zourqâni Al-Mâliki
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Hâfidh ‘Abdou l-Lâh Al-Harari [ Dans son livre As-Sirâtou l-Moustaqîm ]
et de nombreux autres savants.
– Retrouvez d’autres paroles de savants concernant l’istiwâ de Allâh : ici .', '3aqidah, 3oulama, ach3ari, ach3arite'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'لأن استواءه على العرش سبحانه ليس على معنى التمكن والاستقرار، بل هو على معنى العلو بالقهر والتدبير وارتفاع الدرجة بالصفة، على الوجه الذي يقتضي مباينة الخلق');

-- source: https://islamsunnite.net/imam-sanouci-confirme-allah-pas-un-corps-et-sans-endroit-ni-direction/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La croyance musulmane.', 'Les Malikites', '[ومما يستحيل في حق الله : ] المماثلة للحوادث بأن يكون جِرما أي تأخذ ذاته العليّة قدرا من الفراغ أو يكون عَرَضا يقوم بالجرم أو يكون في جهة للجرم أو له هو جهة أو يتقيد بمكان أو زمان أو تتصف ذاته العليّة بالحوادث أو يتصف بالصغر أو الكبر', '[Il est impossible au sujet de Allâh : ] la similarité avec ce qui entre en existence comme le fait qu’Il soit un corps, c’est-à-dire que Son Être occupe une portion d’espace, ou qu’Il soit une caractéristique qui advient à un corps (‘arad), ou qu’Il soit dans la direction d’un corps, ou qu’Il ait Lui-même une quelconque direction, ou qu’Il soit dans un endroit ou qu’Il soit sujet au temps, ou qu’on attribue à Son Être des choses entrées en existence, ou qu’Il soit attribué de la petitesse ou de la grandeur [physique]', '', 'Dans son célèbre traité de croyance « Oummou l-Barâhîn » également connu sous le nom de « Al-‘Aqîdatou s-Soughrâ » ou encore « As-Sanoûçiyyah », lorsqu’il mentionne ce qu’il est impossible au sujet de Allâh, l’Imâm As-Sanoûçi a dit :
Informations utiles :
– L’Imâm, le Faqîh (spécialiste de la jurisprudence), le Chaykh Aboû ‘Abdillâh Mouhammad Ibn Yoûçouf As-Sanoûçi Al-Haçani Al-Mâliki est né en 832 à Tlemcen en Algérie et il est décédé en 895 de l’hégire (رحمه الله) à Tlemcen également, c’est-à-dire il y a environ 540 ans. Son traité de croyance est l’un des plus connus et enseignés dans le monde musulman.
– Ici, l’Imâm As-Sanoûçi évoque plusieurs points fondamentaux du tawhîd :
Allâh n’est pas un corps,
Il n’est pas dans une direction ni dans un endroit,
et Il n’est pas concerné par le fait d’avoir une taille, grande ou petite.
– Ainsi lorsque nous disons « Allâhou Akbar » cela ne signifie pas que Allâh serait un Être de grande taille, mais cette expression signifie que Allâh est plus puissant que tout autre et qu’Il a plus de science que tout autre.
– Dans ce même ouvrage, l’Imâm As-Sanoûçi confirme que la parole de Allâh n’est pas de lettre ni de son [ Oummou l-Barâhîn ].', 'al-djaza''ir, al-sanoussi, al-‘aqida as-soughra, al-‘aqida s-soghra'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '[ومما يستحيل في حق الله : ] المماثلة للحوادث بأن يكون جِرما أي تأخذ ذاته العليّة قدرا من الفراغ أو يكون عَرَضا يقوم بالجرم أو يكون في جهة للجرم أو له هو جهة أو يتقيد بمكان أو زمان أو تتصف ذاته العليّة بالحوادث أو يتصف بالصغر أو الكبر');

-- source: https://islamsunnite.net/limam-badrou-d-din-al-ayni-explique-le-terme-wajh-dans-le-verset-88-de-sourat-al-qasas/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’a pas de visage.', 'Thawri', '« وفسر الوجه بالملك. وكذا نقل الطبري عن بعض أهل العربية. وكذا ذكره الفراء وعن أبي عبيد إلا وجهه : إلا جلاله. قوله « ويقال » إلى آخره ، قال سفيان : معناه إلا ما أريد به رضاء الله والتقرب لا الرياء ووجه الناس »', '« Il (c’est-à-dire l’Imâm Al-Boukhâri) a interprété « al-wajh » par « al-moulk » (la souveraineté), et également l’Imâm At-Tabari a rapporté cela de certains spécialistes de la langue Arabe, et c’est également ce qu’a mentionné Al-Farrâ. Et selon Aboû ‘Oubayd « illâ wajhah » signifie « illâ jalâlah » (sauf Sa Majesté). Et concernant sa parole (c’est-à-dire la parole de Al-Boukhâri) : « il est dit aussi… » jusqu’à la fin (c’est-à-dire sa parole : « il est dit aussi : sauf ce par quoi l’on recherche l’agrément de Allâh »), Soufyân [Ath-Thawri] a dit [que « illâ wajhah »] signifie : sauf ce par quoi on recherche l’agrément de Allâh et non les actes accomplis avec insincérité et par recherche des éloges des gens »', '', 'Dans son commentaire du Sahîh de l’Imâm Al-Boukhâri intitulé « ‘Oumdatou l-Qâri », après avoir mentionné la parole de l’Imâm Al-Boukhâri : « {koullou chay-in hâlikoun illâ wajhah} ce qui signifie : {Tout sera détruit sauf Son wajh} [c’est-à-dire] : Sauf Sa souveraineté (illâ moulkah) ; et il est dit aussi : sauf ce par quoi l’on recherche l’agrément de Allâh » [ Retrouvez l’article à ce sujet : ici ] l’Imâm Badrou d-Dîn Al-‘Ayni commente en disant :
Informations utiles :
– Al-‘Allâmah (l’illustre savant), le Qâdî (le juge), le Hâfidh (spécialiste de la science du Hadîth), l’Imâm Badrou d-Dîn Abî Mouhammad Mahmoûd Ibnou Ahmad Al-‘Ayni Al-Hanafi est originaire d’Alep (Syrie), il est né en 762 à ‘Aytab (Gaziantep) dans l’actuelle Turquie et il est décédé en 855 de l’Hégire au Caire (Egypte) (رحمه الله), c’est-à-dire il y a plus de 580 ans. Son livre ‘Oumdah al-Qâri fait partie des plus célèbres commentaires du sahîh de l’Imâm Al-Boukhâri.
– Ici il commente en confirmant l’interprétation réalisée par l’Imâm Al-Boukhâri concernant le terme « wajh » dans le verset {كُلُّ شَىءٍ هَالِكٌ إِلَّا وَجهَهُ} qui signifie : {Tout sera détruit sauf Son wajh} par al-moulk (la souveraineté). Puis il dit que cette interprétation a également été soutenue par d’autres savants tel que le rapporte l’Imâm At-Tabari d’après plusieurs spécialistes de la langue Arabe du Salaf. Il mentionne également l’avis de l’Imâm Al-Farrâ à ce sujet.
– L’Imâm, le Chaykh des Mouhaddith Aboû ‘Abdi l-Lâh Mouhammad Ibnou Ismâ’îl Al-Boukhâri, l’auteur du célèbre « Sahîh » connu comme étant le livre le plus authentique après le Qour-ân, est né en 194 et il est décédé en 256 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1175 ans. Il est une référence incontournable dans la science du hadîth. Consultez sa biographie : ici .
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Moujtahid Aboû Ja’far Mouhammad Ibnou Jarîr At-Tabari est un célèbre savant du Salaf, il est né en 224 et il est décédé en 310 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1120 ans. Son tafsîr connu sous le nom de « Jamî’ou l-bayân fî ta-wîl al-Qour-ân» est très réputé.
– L’Imâm, le Nahwi (spécialiste de la grammaire), le Loughawi (spécialiste de la langue Arabe), le Moufassir (exégète), Aboû Zakariyyâ Yahyâ Ibnou Ziyâd Al-Farrâ est né en 144 à Al-Koûfah (Irak) et il est décédé en 207 de l’Hégire (رحمه الله). Il fait ainsi partie de la période du Salaf et il est l’une des plus grandes références dans la langue et la grammaire Arabe.
Az-Zirikli a dit : « On disait de lui : Al-Farrâ Amîr al-Mouminîn fi n-nahoû (le Prince des croyants dans la science de la grammaire)» [Al-A’lâm].
– Puis l’Imâm Badrou d-Dîn Al-‘Ayni mentionne l’interpretation de Aboû ‘Oubayd du terme « wajh » par « al-jalâl » (la majesté).
– L’Imâm, le Hâfidh (spécialiste du Hadîth), le Faqîh (spécialiste de la jurisprudence) Aboû ‘Oubayd Al-Qâçim Ibnou Salâm est né en 157 à Harât (Afghanistan) et il est décédé en 224 de l’Hégire (رحمه الله) à La Mecque.
Ahmad Ibn Hambal a dit à propos de lui : « Aboû ‘Oubayd fait parti de ceux qui augmentent chaque jour en bien » [Tahdhîbou l-Asmâ wa l-Loughât].
Is-hâq Ibn râhawayh a dit de lui : « Aboû ‘Oubayd était celui d’entre nous qui avait la science la plus vaste, celui qui avait le meilleur comportement et celui qui avait rassemblé le plus de connaissance, nous avions besoin de lui mais lui n’avait pas besoin de nous » [Tahdhîbou l-Asmâ wa l-Loughât].
Al-Bayhaqi a dit à son sujet : « Il est l’un des Imâms de parmi les gens de science » [Al-Asmâ-ou wa s-Sifât].
An-Nawawi a dit de lui : « Il était un Imâm profondément connaisseurs dans de nombreuses sciences, parmi elles le tafsîr, les différentes récitations, le hadîth, le fiqh, la langue arabe, la grammaire et l’histoire » [Tahdhîbou l-Asmâ wa l-Loughât].
– Ensuite l’Imâm Badrou d-Dîn Al-‘Ayni continu en commentant le seconde interprétation mentionnée par l’Imâm Al-Boukhâri : « et il est dit aussi : sauf ce par quoi l’on recherche l’agrément de Allâh » en disant que ceci est notamment l’avis de l’Imâm Souyân Ath-Thawri. Et cette interprétation a également été rapportée de lui par d’autres savants tels que l’Imâm Al-Bayhaqi et l’Imâm As-Souyoûti [ Dans son livre Ad-Dourrou l-Manthoûr ].
– Cette seconde interprétation mentionnée par l’Imâm Al-Boukhâri a également été donnée par l’Imâm Ibnou l-‘Abbâs, par Moujâhid, par l’Imâm Abou l-‘Âliyah [ Rapporté par Al-Baghawi ], le Moufassir Al-Khâzin [ dans son tafsîr ] et autres qu’eux.
– Ainsi toute ces citations nous démontrent que les savants du Salaf avaient quelquefois recourt à l’interprétation détaillée. Et qu’aucun d’entre eux n’a dit que « wajh » dans ce verset signifierait le visage ou la face, contrairement à ce que les moujassimah (corporalistes) ont pris comme croyance innovée.
– L’Imâm, Chaykhou l-Islâm, le Moujtahid (jurisconsulte), Al-Hâfidh (spécialiste de la science du hadîth) Soufyân Ibn Sa’îd Ibn Masroûq Ath-Thawri, est né en 97 à Koûfa (Irak), et il est décédé en 161 de l’Hégire à Bassora (Irak) (رحمه الله), c’est à dire il y a plus de 1200 ans. Il est de la génération des pieux prédecesseurs (as-Salafou s-Sâlih), et il fait parti des rares savants du hadîth qui ont été surnommé “Amîrou l-Mou-minîn fi l-Hadîth” (Prince des croyants dans la science du hadîth). Il compte parmi les grands savants de la communauté qui ont fondé une école de jurisprudence (madh-hab) tout comme l’Imâm Mâlik, l’Imâm Al-Awzâ’i, l’Imâm Aboû Hanîfah, l’Imâm Al-Layth Ibn Sa’d, l’Imâm Ach-Châfi’i ou encore l’Imâm Ahmad Ibn Hanbal, mais son école (madh-hab) n’a pas subsisté.On compte parmi ses nombreux Chaykh, l’Imâm Ja’far As-Sâdiq et de parmi les gens qui ont reçu de sa science, des grands Imâm tels que Aboû Hanîfah, Al-Awzâ’i, ‘Abdou l-Lâh Ibn Moubârak, Foudayl Ibn ‘Iyâd … Nombreux sont les savants de la communauté qui ont fait ses éloges.
– Le mot « wajh » dans la langue arabe a plusieurs sens, et son sens premier est « visage » ou « face ». Mais ce n’est pas ce sens qui est retenu lorsqu’il est attribué à Allâh. Car Allâh n’est pas composé de partie, Il n’est pas un corps et Il n’a ni membre, ni organe.
L’Imâm Al-Bayhaqi a dit : « Son « wajh » n’est pas une image [un visage] » [ Al-Asmâ-ou wa s-Sifât ].
Chaykh Al-Islâm Zakariyyâ Al-Ansâri a dit : « Allâh ta’âlâ dit : {Koullou chay-in hâlikoun illâ Wajhah} [ce qui signifie : « Tout disparaîtra sauf Son Wajh »], cela n’est pas dans le sens de l’organe (du visage) » [ Dans son charh de « Ar-Riçâlatou l-Qouchayriyyah » ] .
L’Imâm Ach-Chahrastâni a dit que le fait de prendre le terme wajh, dans ce type de verset, selon le sens apparent, c’est-à-dire selon le sens du corps est la voie des moujassimah (corporalistes) [ Dans son livre « Al-Milal wa n-Nihal » ]. Et il dit également que certains savants ne traduisaient pas ce terme dans les autres langues pour éviter des mauvaises compréhensions, alors ils se contentaient de le citer en arabe [ Dans son livre « Al-Milal wa n-Nihal » ].
Le Chaykh Ibn Hajar Al-Haytami a dit au sujet des versets équivoques (moutachâbihah) comme le verset {وَيَبْقَى وَجْهُ رَبِّكَ} « wa yabqâ wajhou rabbik » : « Le sens voulu n’est pas le sens apparent, du fait de l’impossibilité de l’attribuer à Allâh, Qui est totalement exempt de ce que disent les injustes et les mécréants » puis il explique les deux voies valables concernant ce type de verset. [ Al-Minhajou l-Qawîm ].
– Le grand savant du Salaf, l’Imâm At-Tahâwi (رحمه الله) a dit : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres. Les six directions ne Le délimitent pas, contrairement à toutes les créatures » [‘Aqîdah At-Tahâwiyyah] .
– De nombreux autres savants ont interprété le mot « wajh » en fonction du contexte du verset. [ Consultez des paroles de savants : ici ].
– Retrouvez aussi l’article : “Al-Albâni (wahhabite) déclare indirectement mécréant l’Imâm Al-Boukhâri pour son interprétation du terme wajh par moulk” : ici .', '''oumdah al qari, ''oumdatou l-qari, ''umdah al-qari, ''umdatu l-qari'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« وفسر الوجه بالملك. وكذا نقل الطبري عن بعض أهل العربية. وكذا ذكره الفراء وعن أبي عبيد إلا وجهه : إلا جلاله. قوله « ويقال » إلى آخره ، قال سفيان : معناه إلا ما أريد به رضاء الله والتقرب لا الرياء ووجه الناس »');

-- source: https://islamsunnite.net/ibn-hibban-confirme-parole-de-allah-sans-organe-sans-comment/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La parole de Allâh n’est pas par le biais d’organe.', 'Les Chafi''ites', 'صِفَاتُ اللَّهِ جَلَّ وَعَلا لا تُكَيَّفُ ، وَلا تُقَاسُ إِلَى صِفَاتِ الْمَخْلُوقِينَ ، فَكَمَا أَنَّ اللَّهَ جَلَّ وَعَلا مُتَكَلِّمٌ مِنْ غَيْرِ آلَةٍ بَأَسْنَانٍ وَلَهَوَاتٍ وَلِسَانٍ وَشَفَةٍ كَالْمَخْلُوقِينَ ، جَلَّ رَبُّنَا وَتَعَالَى عَنْ مِثْلِ هَذَا وَأَشْبَاهِهِ ، وَلَمْ يَجُزْ أَنْ يُقَاسَ كَلامُهُ إِلَى كَلامِنَا ، لأَنَّ كَلامَ الْمَخْلُوقِينَ لا يُوجَدُ إِلا بِآلاتٍ ، وَاللَّهُ جَلَّ وَعَلا يَتَكَلَّمُ كَمَا شَاءَ بِلا آلَةٍ', 'Il n’y a pas de comment aux attributs de Allâh jalla wa ‘alâ, et ils ne sont pas comparé aux attributs des créatures. Ainsi Allâh a pour attribut la parole, sans appareils tels que des dents, une luette, une langue, et des lèvres comme c’est le cas des créatures. Notre Seigneur est totalement exempt de telles comparaisons. Et il n’est pas permis de faire une similitude entre Sa parole et notre parole, car la parole des créatures n’a lieu que par le biais d’appareils, alors que Allâh parle comme Il le veut sans appareils.', '', 'Dans son recueil de hadîth connu sous le nom de « Sahîh Ibnou Hibbân » (tome 3 pages 200 et 201 de cette édition), le Hâfidh Ibnou Hibbân a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth) Aboû Hâtim Mouhammad Ibnou Hibbân Ibnou Ahmad At-Tamîmi Al-Bousti, est un savant du Salaf, il est né en 270 et il est décédé en 354 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 1080 ans. Il est un grand spécialiste de la science du Hadîth. Il est l’auteur du « Sahîh » réputé sous le nom de « Sahîh Ibn Hibbân ». Il était du madh-hab (Ecole de jurisprudence) de l’Imâm Ach-Châfi’i.
– Ici, ce grand savant du salaf parle au sujet de l’attribut de la parole de Allâh en précisant que les attributs de Allâh n’ont pas de comment (kayf), que Sa parole n’est pas comparable à la notre, que Allâh parle sans langue ni lèvres ni aucun autre appareils.
– L’Imâm Al-Marjâni At-Toûniçi Al-Mâliki (m. 699 H.) a dit au sujet de Allâh: « Il ne parle pas par le biais d’une langue » . [I’tiqâdou Ahli s-Sounnah wa ‘Oulamâ-i l-Oummah]
– Le comment (al-kayf) : c’est ce par quoi on décrit les créatures, c’est-à-dire les dimensions, le début, la fin, la couleur, l’endroit, la direction, la forme, la position assise, la proximité, le mouvement, le déplacement, le changement et tout ce qui fait partie des attributs des créatures. Allâh est exempt de tout cela.
– Allâh Ta’âlâ dit : { وَكَلَّمَ اللهُ مُوسَى تَكْلِيمًا } [Soûrat An-Niça/ 146] ce qui a pour sens : « Allâh a assurément parlé à Moûçâ » .
– Ainsi, Allâh a pour attribut la parole et Il parle sans langue, ni lèvres, ni voix, ni sons, ni lettres. Sa parole n’est pas une langue arabe, ni aucune autre langue et Sa parole ne ressemble pas à la parole des humains. En effet la parole de Allâh est un attribut de toute éternité alors que les lettres, les sons et les langues sont entrés en existence. Ainsi il ne Lui advient pas de silence ni d’entrecoupement car Sa parole n’est pas constituée de lettres ni de son.
– Le Hâfidh Ibnou l-Qattân Al-Fâçi Al-Mâliki (m.628 H.) a dit : « Et ils [les gens de la Sounnah, du Salaf et du Khalaf] ont été unanimes sur le fait que la parole de Allâh n’est pas de lettres ni de sons » [Al-Iqnâ’]
– De nombreux savants ont tenus des propos similaires. Parmi eux :
L’Imâm Aboû Hanîfah qui a dit : « Et Il (Allâh) parle, pas comme nous parlons. Nous, nous parlons grâce à des organes et des lettres, alors que Allâh ta’âlâ parle sans organes et sans lettres. Les lettres sont créées alors que la Parole de Allâh ta’âlâ n’est pas créée. » [ Al-Fiqh al-Akbar ]
L’Imâm Jounayd Al-Baghdâdi qui a dit au sujet de Allâh : « Son Être est exempt des limites, Sa parole est exempte des lettres, ainsi il n’y a pas de limite à Son Être, et Sa parole n’est pas de lettres » [Rapporté par Al-Bâqillâni dans son livre Al-Insâf]
L’Imâm At-Tahâwi qui a dit : « Le Qour-ân est la parole de Allâh révélé par Lui, il s’agit d’une parole sans comment (bila kayfiyyah) » [Al-‘Aqîdah At-Tahâwiyyah] En niant le comment (kayfiyyah) l’Imâm At-tahâwi a explicitement nié les lettres, les sons et les voix ;
L’Imâm Abou l-Haçan Al-Ach’ari qui a dit : « Allâh ta’âlâ a fait entendre à Moûçâ Sa parole éternelle qui n’est pas de lettre ni de son » [Rapporté par Ar-Râzi dans son Tafsîr] ;
L’Imâm Aboû Mansoûr Al-Mâtourîdi qui a dit : « Car Sa parole qui Lui est attribué [à Allâh] de toute éternité, n’est pas qualifié de lettre, ni d’alphabet, ni de son, ni d’une chose par laquelle on qualifie la parole de ce qui est créé » [Ta-wîlât Ahlou s-Sounnah] ;
L’Imâm Ibnou Hibbân [voir ci-dessus];
L’Imâm Al-Kalâbâdhi Al-Hanafi qui a dit : « Certes la parole de Allâh ta’âlâ n’est pas de lettre ni de son » [At-Ta’arrouf] ;
L’Imâm Al-Bâqillâni qui a dit : « Il est un devoir de savoir que la parole de Allâh ta’âlâ qui est sans début, n’est pas attribuée de lettres, de sons ni d’une chose qui fait partie des attributs de la création » [ Al-Insâf ] ;
L’Imâm Aboû Mansoûr Al-Baghdâdi lorsqu’il a parlé de la secte égaré des mouchabbihah (assimilationnistes), il a dit : « Parmi eux certains ont assimilé la parole de Allâh ‘azza wa jall à la parole de Ses créatures, et ils ont prétendu que la parole de Allâh ta’âlâ serait de sons et de lettres, du genre des sons et des lettres dont sont qualifié les esclaves [de Allâh]» [Al-Farqou bayna l-Firaq] ;
L’Imâm Al-Bayhaqi ;
L’Imâm Al-Isfarâyîni (471 H.) qui a dit : « Certes la parole de Allâh ta’âlâ est sans lettre ni son » [At-Tabsirou fi d-Dîn] ;
L’Imâm Al-Jouwayni (m.478 H.) qui a dit « Certes la parole [de Allâh], selon les gens de la vérité, est propre à Son Être, elle n’est pas de lettre ni de son » [Al-Irchâd] ;
L’Imâm Al-Ghazâli qui a dit : « Allâh soubhânahou wa ta’âlâ a la parole qui est un attribut qui est propre à Son Être, qui n’est ni de son ni de lettre, mais Sa parole ne ressemble pas à la parole d’autre que Lui. » [Ihyâ-ou ‘Ouloûmi d-Dîn] ;
L’Imâm An-Naçafi (m.508 H.) qui a dit au sujet de la parole de Allâh : « Elle est sans lettre ni son » [Bahrou l-Kalâm] ;
L’Imâm Aboû ‘Ali Al-Haçan Ibn ‘Atâ qui a dit : « Allâh (Al-Qadîm) n’a pas de début à Son existence, et il n’y a pas de lettre ni de son qui n’ont pas de début à leurs existences » [Rapporté de lui par l’Imâm Ibn Mou’allim Al-Qourachi dans son livre : Najmou l-Mouhtadî] ;
L’Imâm An-Naçafi (m.537 H.) qui a dit : « Allâh parle d’une parole qui est un attribut à Lui et qui est de toute éternité, qui n’est pas du genre des lettres et des sons […] Allâh ta’âlâ est attribué par cet attribut, la parole, par lequel Il ordonne, interdit, informe et le Qour-ân est la parole de Allâh ta’âlâ, il n’est pas créé » [ Al-‘Aqîdatou n-Naçafiyyah ] ;
L’Imâm Ahmad Ar-Rifâ’i (m.578 H.) a dit au sujet de Allâh : « Il parle, Il ordonne, interdit, promet et menace par une parole qui n’a ni début ni fin et qui est propre à Son Être. Elle n’a pas de ressemblance avec la parole des créatures. Elle n’est pas un son produit par l’écoulement de l’air ou par le choc de corps entre eux, ni des lettres qui sont prononcées en fermant une lèvre ou en bougeant une langue. » [Ad-Dourratou s-Sâmiyah fî Ma’rifati fadâ-ili souloûki t-Tarîqati r-Rifâ’iyyah] ;
L’Imâm Ahmad Ar-Rifâ’i (m.578 H.) a dit : « Nous croyons que Moûçâ a entendu la parole de Allâh sans lettre, ni son. » [Ad-Dourratou s-Sâmiyah fî Ma’rifati fadâ-ili souloûki t-Tarîqati r-Rifâ’iyyah] ;
L’Imâm Ahmad Ar-Rifâ’i a dit aussi au sujet de Allâh : « Il parle sans langue. » [Al-Majâlis ar-Rifâ’iyyah] ;
Le Moufassir Ibn ‘Atiyyah qui a dit : « La parole de Allâh au prophète Moûçâ (‘alayhi s-Salâm), est sans comment (takyîf), ni limite, elle n’implique pas d’entrée en existence, et elle n’est pas de lettre ni de son » [Dans son tafsîr, Soûrat An-Niçâ/164] ;
L’Imâm Aboû Madyan qui a dit : « On n’attribue pas à Allâh les lettres et les sons » [ Dans son traité de croyance ] ;
Le Chaykh Tâjou d-Dîn Mouhammad Ibn Hibati l-Lâh Al-Makki dans son ouvrage en vers «Hadâ-iqou l-Fousoûl wa jawâhirou l-Ousoûl» dans la science du tawhîd qu’il dédia au sultan combattant Salâhou d-Dîn Al-Ayyoûbi. Celui-ci la reçu avec intérêt et alla jusqu’à ordonner de l’enseigner aux enfants dans les écoles, au point que ce traité de croyance est à présent connu sous le nom de «Al-‘Aqîdah As-Salâhiyyah».
Le Chaykh Ismâ’îl Ibn Ibrâhîm Ach-Chaybâni Al-Hanafi qui a dit : « La parole de Allâh n’est pas concernée par les lettres et les sons » [Charh ‘Aqîdah At-Tahâwiyyah] ;
L’Imâm Ibn ‘Abdi s-Salâm qui a dit : « Allâh parle avec une parole sans début qui n’est pas de lettre ni de son » [Raçâ-il fi t-Tawhîd] ;
L’Imâm Al-Qourtoubi qui a dit : « La parole de Allâh n’est pas de lettre ni de son » [Dans son Tafsîr – Soûrat At-Tawbah/6] ;
L’Imâm Al-Qourtoubi a dit également : « Sa parole (du prophète) dans le hadîth [qui a pour sens : ] « Il les appelle au moyen d’un son » cela a été utilisé comme preuve par ceux qui ont dit que Allâh parle au moyen de lettres et de sons, or Allâh est exempt de ce que disent les corporalistes (moujassimoûn) et les négationnistes (jâhidoûn); il faut plutôt attribuer l’appel annexé à Allâh, à certains anges honorées et ce par la volonté de Allâh et par Son ordre. » [At-Tadhkirah] ;
L’Imâm Al-Marjâni At-Toûniçi Al-Mâliki (m. 699 H.) a dit au sujet de Allâh: « Il parle, d’une parole éternelle sans début, qui n’est pas de lettres ni de sons » . [I’tiqâdou Ahli s-Sounnah wa ‘Oulamâ-i l-Oummah] ;
Le Chaykh Charafou d-Dîn Ibn At-Tilimçâni qui a dit : « Les Karrâmiyyah [secte corporaliste] ont prétendu qu’il adviendrait au Créateur (Al-Bâri’) ta’âlâ des paroles composées de lettres et de sons » [Charh Louma’ Al-Adillah] ;
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Nous disons que Le Créateur du monde (jalla jalâlouh) parle d’une parole éternelle sans début, unique, propre à Son Être, qui n’est pas du genre des lettres et des sons » [Al-Qalâ-id fî Charh Al-‘Aqâ-id] ;
Le Chaykh Al-Bâbirti Al-Hanafi (m.786 H.) a dit : « Tout cela vient confirmer la négation de l’entrée en existence de la parole [de Allâh] et du fait qu’elle soit du genre des lettres et des sons et qu’elle ressemblerait à la parole des créatures. Certes, celui qui dit que le Qour-ân (l’attribut de la parole de Allâh) est créé, qu’il est entré en existence et qu’il est du genre des lettres et des sons, alors il aura attribué à Al-Bârî (Allâh) ce qu’on attribue aux humains» [Dans son commentaire de la tahâwiyyah] ;
L’Imâm Ibnou Hajar Al-‘Asqalâni ;
Le Moufassir Ath-Tha’âlibi qui a dit : « Allâh a parlé à Moûçâ, d’une parole sans comment (takyîf), qui n’est pas limité, qui n’est pas de lettre ni de son » [Dans son tafsîr « Al-Jawâhir Al-Hissân» Soûrat An-Niçâ/164] ;
L’Imâm As-Sanoûçi qui a dit : « … et [Allâh a pour attribut] la parole qui n’est pas de lettre ni de son » [ Dans son célèbre traité de croyance ] ;
Dans un autre de ses traités de croyance, l’Imâm As-Sanôuçi confirme ses propos en disant : « Il est obligatoire au sujet de Allâh ta’âlâ […] [l’attribut de] la parole qui n’est pas de lettre ni de son » [Dans son traité de croyance Al-Hafîdah -connu également sous de nom de Soughrâ Soughra l-Soughrâ-]
Le Chaykh Kamâlou d-Dîn connu sous le nom de Ibnou Abî Charîf Al-Maqdissi Ach-Châfi’i ;
Le Chaykh Abou l-Mountahâ Al-Hanafi qui a dit : « Allâh ta’âlâ parle avec Sa parole qui est Son attribut éternel sans début, et la parole de Allâh ta’âlâ ne ressemble pas à la parole des créatures, car les créatures parlent avec des organes et des lettres, alors que Allâh ta’âlâ parle sans organes ni lettres » [Dans son charh du livre Al-Fiqh Al-Akbar] ;
Le Chaykh Moullâ ‘Ali Al-Qâri qui a dit : « Les innovateurs [se réclamant] Hambalites ont dit : la parole de Allâh est de lettres et de sons » et il a dit également : «Les Mâchaykh, que Allâh leur fasse miséricorde, ont mentionné que l’on dit : “Le Qour-ân qui est la parole de Allâh n’est pas créé”, et qu’on ne dit pas :”le Qour-ân n’est pas créé [c’est-à-dire sans préciser que l’on parle de l’attribut de la parole de Allâh]” afin que personne ne comprenne que ce qui est composé de sons et de voix serait sans début, comme l’ont pensé certains ignorants [se réclamant] Hambalites» [Charh Al-Fiqh Al-Akbar] ;
Le Chaykh Mayyârah Al-Mâliki qui a dit : « Ainsi Sa parole n’est pas comme notre parole dans le fait d’être par des lettres et des sons » [Moukhtasar Ad-Dourrou th-Thamîn] ;
Le Chaykh ‘Abdou l-Ghani An-Nâboulouçi qui a dit : « Allâh a [pour attribut] la parole qui n’est pas similaire à ce que nous connaissons, elle est exempte de sons et de lettres » [Mouqtada ch-Chahâdatayn] ;
Le Chaykh Ahmad Ad-Dardîr Al-Mâliki qui a dit : « La parole de Allâh n’est pas de lettres » [Al-Kharîdah al-Bahiyyah]
Le Chaykh Khâlid Al-Baghdâdi An-Naqchabandi qui a dit : « L’attribut de la parole est confirmée [pour Allâh], et elle n’est ni de lettre ni de son » [Al-Îmân wa l-Islâm] ;
Le Chaykh Mouhammad Ibn A’mar An-Nâbighah Al-Ghalâwi a dit : « Il est un devoir au sujet de Allâh, une parole unique qui n’est pas de sons ni de lettres » [Al-Moubâchir ‘ala Bni ‘Âchir]
Le Mouhaddith ‘Abdou l-Bâsit Al-Fâkhoûri qui a dit : « [L’attribut de Allâh de] la parole : Il s’agit d’un attribut éternel sans début, propre à Son Être ta’âlâ, qui n’est pas de lettre ni de son » [Al-Kifâyah li Dhawi l-‘Inâyah]
Le Chaykh Ahmadou Bamba qui a dit : « [Sa parole] n’est pas du genre des lettres, des sons et de ce que l’on pourrait imaginer, et ceci sans divergence » [ Mawâhibou l-Qouddoûs ] ;
Le Chaykh Al-Mârighni At-Toûniçi Az-Zaytoûni qui a dit : « La parole [de Allâh] est un attribut éternel, propre à Son Être ta’âlâ, qui n’est pas de lettre ni de son et qui est exempt du fait d’être de faible volume ou de fort volume » [Tâli’ou l-Bouchrâ] ;
Le Chaykh Mahmoûd As-Soubki Al-Azhari qui a dit : « Sa parole ta’âlâ n’est pas de lettre ni de son et elle n’est pas caractérisée du fait d’être de fort ou faible volume » [Ad-Dînou l-Khâlis] ;
Le Chaykh ‘Abdou l-‘Alîm Al-Haddâdi Ach-Châfi’i Al-Azhari qui a dit : « La parole de Allâh est exempte des lettres et des sons » [Al-Khilâsatou s-Sounniyyah fî Charhi l-Matni s-Sanoûçiyyah] ;
Le Chaykh Mouhammad Al-Mourâkouchi Al-Mâliki qui a dit : « Sa parole soubhânah n’est pas de lettre ni de son » [Al-Hablou l-Matîn] ;
Le Chaykh Al-Kawthari qui a dit : « Il n’y a aucun hadîth authentique concernant l’attribution du son à l’égard de Allâh » [Maqâlâtou l-Kawthari] ;
Le Chaykh ‘Abdou l-Lâh Al-Harari qui a dit : « Sa parole n’est pas un son produit par l’écoulement de l’air ou par le choc de corps entre eux, ni des lettres qui sont prononcées en fermant une lèvre ou en bougeant une langue. Nous croyons fermement que Moûçâ a entendu la parole de Allâh exempte de début, sans lettre, ni son » [As-Sirât Al-Moustaqîm] ;
Et beaucoups d’autres…
– Les mouchabbihah (assimilateurs) ont contredit la croyance des musulmans sur ce sujet, en prétendant que la parole de Allâh serait de lettres et de sons. Parmi eux :
Ibn Taymiyah (moujassim) [ voir : ici (arabe) ] ou [ voir : ici (français) ].
Ibn ‘Outhaymîn (wahhabite) qui a dit : « La parole de Allâh est de lettre et de son » [Dans son livre : Majmoû’ Fatâwâ tome 1 page 212].
Et d’autres de parmi les mouchabbihah… que Allâh nous préserve de l’égarement.
– Le Messager de Allâh (صلى الله عليه وسلم) a dit dans un hadîth Sahîh rapporté par Al-Boukhâri et autre :', '3oulama, ahlou s-sounnah, ahlou sounnah, ahlu sunna'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'صِفَاتُ اللَّهِ جَلَّ وَعَلا لا تُكَيَّفُ ، وَلا تُقَاسُ إِلَى صِفَاتِ الْمَخْلُوقِينَ ، فَكَمَا أَنَّ اللَّهَ جَلَّ وَعَلا مُتَكَلِّمٌ مِنْ غَيْرِ آلَةٍ بَأَسْنَانٍ وَلَهَوَاتٍ وَلِسَانٍ وَشَفَةٍ كَالْمَخْلُوقِينَ ، جَلَّ رَبُّنَا وَتَعَالَى عَنْ مِثْلِ هَذَا وَأَشْبَاهِهِ ، وَلَمْ يَجُزْ أَنْ يُقَاسَ كَلامُهُ إِلَى كَلامِنَا ، لأَنَّ كَلامَ الْمَخْلُوقِينَ لا يُوجَدُ إِلا بِآلاتٍ ، وَاللَّهُ جَلَّ وَعَلا يَتَكَلَّمُ كَمَا شَاءَ بِلا آلَةٍ');

-- source: https://islamsunnite.net/le-chaykh-abdoullah-al-harari-explique-le-jugement-des-innovations/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La différence entre les sortent d’innovations.', 'Harari', '« فصل في تحقيق معنى البدعة وحكمها :', '', '', 'Dans son livre « Ar-Rawâ-ihou z-Zakiyyah fî Mawlidi khayri l-Bariyyah » (les senteurs pures dans la commémoration de la naissance de la meilleur des créatures), le Chaykh ‘Abdoul-Lâh Al-Harari a dit :', 'abache, abaches, abachi, abachites'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« فصل في تحقيق معنى البدعة وحكمها :');

-- source: https://islamsunnite.net/le-chaykh-abdoullah-al-harari-explique-le-jugement-des-innovations/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La différence entre les sortent d’innovations.', 'Harari', 'اعلم أن البدعة لغة ما أحدث على غير مثال سابق يقال: جئت بأمر بديع أي محدث عجيب لم يعرف قبل ذلك. وفي الشرع المحدَثُ الذي لم ينص عليه القرءان ولا جاء في السنة، قال ابن العربي: « ليست البدعة والمحدَث مذمومين للفظ بدعة ومحدث ولا معنييهما، وإنما يذم من البدعة ما يخالف السنة، ويذم من المحدثات ما دعا إلى الضلالة » ا.هـ.', '', '', '', 'abache, abaches, abachi, abachites'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'اعلم أن البدعة لغة ما أحدث على غير مثال سابق يقال: جئت بأمر بديع أي محدث عجيب لم يعرف قبل ذلك. وفي الشرع المحدَثُ الذي لم ينص عليه القرءان ولا جاء في السنة، قال ابن العربي: « ليست البدعة والمحدَث مذمومين للفظ بدعة ومحدث ولا معنييهما، وإنما يذم من البدعة ما يخالف السنة، ويذم من المحدثات ما دعا إلى الضلالة » ا.هـ.');

-- source: https://islamsunnite.net/le-chaykh-abdoullah-al-harari-explique-le-jugement-des-innovations/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La différence entre les sortent d’innovations.', 'Harari', 'أقسام البدعة: والبدعة تنقسم إلى قسمين: بدعة ضلالة: وهي المحدَثة المخالفة للقرءان والسنة. وبدعة هدى: وهي المحدَثة الموافقة للقرءان والسنة.', '', '', '', 'abache, abaches, abachi, abachites'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'أقسام البدعة: والبدعة تنقسم إلى قسمين: بدعة ضلالة: وهي المحدَثة المخالفة للقرءان والسنة. وبدعة هدى: وهي المحدَثة الموافقة للقرءان والسنة.');

-- source: https://islamsunnite.net/le-chaykh-abdoullah-al-harari-explique-le-jugement-des-innovations/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La différence entre les sortent d’innovations.', 'Harari', 'وهذا التقسيم مفهوم من حديث البخاري ومسلم عن عائشة رضي الله عنها قالت: قال رسول الله صلى الله عليه وسلم: « مَن أحدث في أمرنا هذا ما ليس منه فهو رد ». ورواه مسلم بلفظ ءاخر وهو: « من عمل عملا ليس عليه أمرنا فهو رد ». فأفهم رسول الله صلى الله عليه وسلم بقوله: »ما ليس منه » أن المحدَث إنما يكون ردًّا أي مردوداً إذا كان على خلاف الشريعة، وأن المحدَث الموافق للشريعة ليس مردودًا.', '', '', '', 'abache, abaches, abachi, abachites'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وهذا التقسيم مفهوم من حديث البخاري ومسلم عن عائشة رضي الله عنها قالت: قال رسول الله صلى الله عليه وسلم: « مَن أحدث في أمرنا هذا ما ليس منه فهو رد ». ورواه مسلم بلفظ ءاخر وهو: « من عمل عملا ليس عليه أمرنا فهو رد ». فأفهم رسول الله صلى الله عليه وسلم بقوله: »ما ليس منه » أن المحدَث إنما يكون ردًّا أي مردوداً إذا كان على خلاف الشريعة، وأن المحدَث الموافق للشريعة ليس مردودًا.');

-- source: https://islamsunnite.net/le-chaykh-abdoullah-al-harari-explique-le-jugement-des-innovations/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La différence entre les sortent d’innovations.', 'Harari', 'وهو مفهوم أيضًا مما رواه مسلم في صحيحه من حديث جرير بن عبد الله البجلي رضي الله عنه أنه قال: قال رسول الله صلى الله عليه وسلم : « من سن في الإسلام سنة حسنة فله أجرها وأجر من عمل بها بعده من غير أن ينقص من أجورهم شىء، ومن سن في الإسلام سنة سيئة كان عليه وزرها ووزر من عمل بها من بعده من غير أن ينقص من أوزارهم شىء ».', '', '', '', 'abache, abaches, abachi, abachites'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وهو مفهوم أيضًا مما رواه مسلم في صحيحه من حديث جرير بن عبد الله البجلي رضي الله عنه أنه قال: قال رسول الله صلى الله عليه وسلم : « من سن في الإسلام سنة حسنة فله أجرها وأجر من عمل بها بعده من غير أن ينقص من أجورهم شىء، ومن سن في الإسلام سنة سيئة كان عليه وزرها ووزر من عمل بها من بعده من غير أن ينقص من أوزارهم شىء ».');

-- source: https://islamsunnite.net/le-chaykh-abdoullah-al-harari-explique-le-jugement-des-innovations/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La différence entre les sortent d’innovations.', 'Harari', 'وفي صحيح البخاري في كتاب صلاة التراويح ما نصه: « قال ابن شهاب: فتوفي رسول الله صلى الله عليه وسلم والناس على ذلك »، قال الحافظ ابن حجر: « أي على ترك الجماعة في التراويح ». ثم قال ابن شهاب في تتمة كلامه: « ثم كان الأمر على ذلك في خلافة أبي بكر وصدرًا من خلافة عمر رضي الله عنه ». وفيه أيض تتميمًا لهذه الحادثة عن عبد الرحمن بن عبد القاريّ أنه قال:خرجت مع عمر بن الخطاب رضي الله عنه ليلة في رمضان إلى المسجد، فإذا الناس أوزاع متفرقون يصلي الرجل لنفسه ويصلي الرجل فيصلي بصلاته الرهط، فقال عمر: إني أرى لو جمعت هؤلاء على قارىء واحد لكان أمثل، ثم عزم فجمعهم على أُبيّ بن كعب، ثم خرجت معه ليلة أخرى والناس يصلون بصلاة قارئهم قال عمر: « نعم البدعة هذه ».ا.هـ. وفي الموطأ بلفظ: « نِعمت البدعة هذه ». »', '« Chapitre de la précision du sens de l’Innovation et de son jugement : Sache que l’innovation (al-bid’ah) dans la langue est ce qui a été innové sans équivalent antérieur ; on dit par exemple : tu as fait une chose badî’, c’est-à-dire une chose nouvelle, étonnante qu’on ne connaissait pas avant cela. Selon la Loi de l’Islâm, c’est ce qui a été innové sans que cela soit cité ni dans le Qour-ân ni dans la Sounnah.', '', 'Ibnou l-‘Arabi a dit : « L’innovation (bid’ah) et la nouveauté (mouhdath) ne sont pas blâmables pour leur appellation d’innovation et de nouveauté, ni pour leur sens, mais ce qui est blâmable parmi ce qui relève de l’innovation, c’est ce qui contredit la tradition prophétique, et ce qui est blâmable parmi les nouveautés, c’est ce qui appelle à l’égarement ». Fin de citation.
Les différentes sortes d’innovations : l ’innovation se divise en deux sortes :
L’innovation d’égarement : c’est la nouveauté qui contredit le Qour-ân et la Sounnah ; et l ’innovation de bonne guidée : c’est la nouveauté qui est en accord avec le Qour-ân et la Sounnah.
Cette classification, on la comprend du hadîth de Al-Boukhâri et Mouslim d’après ‘Â-ichah (رضي الله عنها) qui a dit : « Le Messager de Allâh (صلى الله عليه وسلم) a dit : « man ahdatha fî amrinâ hâdhâ mâ layça minhou fahouwa radd » [ ce qui a pour sens : « Celui qui innove dans notre religion une chose qui n’y est pas conforme, elle est rejetée ») . Ce hadith a été rapporté par Mouslim en d’autres termes à savoir : « man ‘amila ‘amalan layça ‘alayhi amrinâ fahouwa radd » [ce qui a pour sens : « Celui qui fait une œuvre qui n’est pas en accord avec notre religion, elle est rejetée»] . Par sa parole : « mâ layça minhou » [qui a pour sens : « qui n’y est pas conforme»] , le Messager de Allâh (صلى الله عليه وسلم) a expliqué que la nouveauté est rejetée si elle va à l’encontre de la Loi de l’Islâm et que la nouveauté qui est en accord avec la Loi de l’Islâm n’est pas rejetée.
Cette classification est déduite également de ce qu’a rapporté Mouslim dans son Sahîh, du hadith de Jarîr Ibnou Abdi l-Lâh Al-Bajli (رضي الله عنه) qui a dit : « Le Messager de Allah (صلى الله عليه وسلم) a dit :
« man sanna fi l-Islâmi sounnatan haçanah, falahou ajrouhâ wa ajrou ma ‘amila biha ba’dahou min ghayri an yanqousa min oujourihim chay ; wa man sanna fi l-Islâmi sounnatan sayyi-ah kâna ‘alayhi wizrouhâ wa wijrou ma ‘amila bihâ min ba’dihi min ghayri an yanqousa min awrâzihim chay » [ ce qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah), il en aura la récompense et il aura une récompense chaque fois que quelqu’un la refait après lui sans que rien ne soit diminué de leurs récompenses. Celui qui instaure dans l’Islâm une mauvaise tradition (sounnah), il se chargera de son péché et il sera chargé d’un péché chaque fois que quelqu’un la refait après lui sans que rien ne soit diminué de leurs péchés» .]
Aussi, dans le recueil de Al-Boukhâri dans le livre la prière surérogatoire des nuits de Ramadan (at-tarâwîh), il est cité ce qui suit : Ibnou Chihâb a dit : « Le Messager de Allâh (صلى الله عليه وسلم) est mort et les gens se conduisaient ainsi ». Le Hâfidh Ibnou Hajar a dit : « C’est-à-dire qu’ils ne faisaient pas la prière surérogatoire des nuits de Ramadan en assemblée ». Puis Ibnou Chihâb dans la suite de sa citation a dit : « Et il en était ainsi à l’époque du califat de Aboû Bakr et pendant la première partie du califat de ‘Oumar (رضي الله عنه) ».
Il y est cité aussi, suite à cet événement que ‘Abdou r-Rahmân Ibnou ‘Abdi l-Qâri a dit ce qui signifie : « Je suis sorti avec ‘Oumar Ibnou l-Khattâb (رضي الله عنه) en une nuit de Ramadan, à la mosquée, alors que les gens étaient en groupes isolés et séparés ; certains faisaient la prière individuellement, d’autres se rassemblaient en petits groupes et faisaient la prière en assemblée, alors ‘Oumar a dit : Je vois que si je rassemble ces gens pour qu’ils soient dirigés par un seul homme récitant le Qour-ân, ce serait mieux. Puis il s’est décidé et les a rassemblés derrière Oubayy Ibnou Ka’b. Une autre nuit, je suis sorti avec lui alors que les gens faisaient la prière derrière celui qui récitait le Qour-ân, ‘Oumar a dit : quelle bonne innovation que voici (ni’ma l-bid’ah hâdhih) ». Fin de citation. Dans Al-Mouwattâ [de l’Imâm Mâlik] figure le terme : « Quelle bonne innovation que celle-ci (ni’mati l-bid’ah hâdhih) ». »
Informations utiles :
– Al-‘Allâmah (l’illustre savant), l’Imâm, le Mouhaddith (transmetteur du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chaykh ‘Abdoul-Lâh Al-Harari Ach-Châfi’i Ach-Chaybi Al-‘Abdari connu sous le nom de Al-Habachi est décédé en 1429 de l’Hégire (رحمه الله). Il était un grand défenseur de la croyance de Ahlou s-Sounnah. De nombreux savants et responsables d’institutions islamiques ont fait son éloge. Parmi eux :
Le Chaykh Mouhammad Dhafar (Dâr al-‘ouloûm Amjadiyyah de Karachi au Pakistan) a dit : « L’illustre savant érudit (Al-‘Allâmah al-Kabîr) Al-Hâfidh Al-Mouhaddith (spécialiste de la science du hadîth) l’éducateur et l’honorable Chaykh Abdoullâh Al-Harari connu par Al-Habachi suit le Madh-hab Al-Haqq (l’école de droiture) et marche sur la voie droite, celle des Sahâbah du Messager de Allâh (صلى الله عليه وسلم) , des prédécesseurs vertueux ainsi que leurs successeurs. Puisse Allâh leur accorder à tous encore davantage d’agrément et d’approbation. Et il est un Imâm (guide et référence) très grand, et il est une référence en la religion (houjjatou fi d-Dîn). Il est pieux et vertueux, véridique et sincère. » .
Le Mouhaddith des contrées marocaines, le Chaykh ‘Abdou l-‘Azîz Al-Ghoumâri a dit à son sujet : « Le Chaykh ‘Abdou l-Lâh est juste (‘adl)… Il a des ouvrages dignes de considération et des livres utiles dans l’explication des Lois de Allâh pour les musulmans, qui montrent bien qu’il fait partie des religieux qui ont une grandeur d’âme et qui œuvrent pour la religion de Allâh. Il n’est donc pas permis, après tout cela, qu’on le calomnie dans sa religion, qu’on le discrédite dans sa croyance ou qu’on récuse sa justesse » .
Le Chaykh Mouhammad Noûrou d-Dîn Al-Banjari Al-Makki (l’un des Chouyoukh d’Indonésie) a dit de lui : « Concernant la science il est difficile de trouver quelqu’un de semblable au Chaykh ‘Abdou l-Lâh Al-Harari ou quelqu’un qui se rapproche de son niveau » .
Le Chaykh Mouhammad Châh Al-Hâmidi Al-Houçayni a dit : « Certe, le Chaykh ‘Abdou l-Lâh est un Imâm dans la ‘Aqîdah (croyance), le Fiqh ( jurisprudence), la langue arabe, le Hadîth, et il est rare de trouver semblable à lui dans cette époque. Et ceci n’est pas uniquement mon propre témoignage mais aussi le témoignage de mon père Al-‘Allâmah (l’illustre savant) le Chaykh Qoutbou d-Dîn Al-Hâmidi Al-Houçayni (rahimahou l-Lâh) le Moufti de Deir ez-Zor, et c’est également le témoignage de beaucoup des plus grands de parmi les gens de science de la région du Châm et d’ailleurs ».
Le Chaykh des spécialistes de la lecture du Qour-ân à Houms, ‘Abdou l-‘Azîz ‘Ouyoûnou s-Soûd Al-Himsi, a dit : « Le Chaykh ‘AbdoulLâh Al-Harari est digne de confiance en ce qu’il transmet, honnête dans ce qu’il retient par cœur et expert dans l’école de jurisprudence Chafi’ite, que Allâh fasse que nous puissions tirer profit de ses sciences » .
Le Chaykh Indonésien, Hajj Mouhammad Châfi’iyy Hadhâmiyy, le président de l’assemblée des savants de Jakarta (capitale Indonésienne) a dit : « Il est le Chaykh, Al-‘Allâmah (l’illustre savant) ‘Abdou l-Lâh Ibnou Mouhammad Ach-Chaybiyy Al-‘Abdariyy Al-Harariyy connu sous le nom de Al-Habachiyy, qui est un vérificateur scrupuleux, minutieux, et qui compose avec un style synthétique. Que Allâh augmente le nombre de gens semblable à lui. Que Allâh le récompense en bien pour nous et pour les musulmans, pour ses œuvres dans sa réprimande des bid’ah [mauvaises innovations] et l’élévation de la sounnah prophétique »
– Ici, après avoir donné la définition de l’innovation dans la langue et selon la Loi de l’Islâm, le Chaykh Al-Harari confirme qu’elle est de deux sortes :
La bonne innovation : qui est en accord avec le Qour-ân et la Sounnah.
La mauvaise innovation : qui contredit le Qour-ân et la sounnah.
– Ici, le Chaykh Al-Harari (رحمه الله) est sur la voie et l’explication donnée par le grand savant du Salaf, l’Imâm Ach-Châfi’i (رحمه الله) [ Rapporté par Al-Bayhaqi ] et [ Rapporté par Aboû Nou’aym ] et [ Rapporté par Al-Bayhaqi (2) ] et [ Rapporté par An-Nawawi ] et [ Mentionné par Ibn Taymiyah (moujassim) ].
– Puis il argumente en mentionnant des hadîth et la célèbre parole de ‘Oumar Ibnou l-Khattâb rapporté par l’Imâm Al-Boukhâri [ Dans son Sahîh ] et l’Imâm Mâlik [ Dans Al-Mouwatta ].
– Et comme l’a mentionné le Chaykh, le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ]
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ]
– Le Chaykh ‘Abdou l-Lâh Al-Ghoumâri a dit : « Les savants ont été en accord sur la classification des innovations en bonne et mauvaise, et sur le fait que ‘Oumar (رضي الله عنه) est le premier qui a parlé de cela, et ils ont été en accord sur le fait que la parole du prophète ” كل بدعة ضلالة ” (koullou bid’atin dalâlah) est un texte de portée générale mais dont le sens est restreint (‘âm makhsoûs)» [ Itqânou s-San’ah ]
– Dans la suite de son ouvrage le Chaykh Al-Harari (رحمه الله) fait l’éloge de la célébration du Mawlid [ Ar-Rawâ-ihou z-Zakiyyah ].
– Retrouvez d’autres paroles de savants concernant les bonnes innovations : ici .', 'abache, abaches, abachi, abachites'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وفي صحيح البخاري في كتاب صلاة التراويح ما نصه: « قال ابن شهاب: فتوفي رسول الله صلى الله عليه وسلم والناس على ذلك »، قال الحافظ ابن حجر: « أي على ترك الجماعة في التراويح ». ثم قال ابن شهاب في تتمة كلامه: « ثم كان الأمر على ذلك في خلافة أبي بكر وصدرًا من خلافة عمر رضي الله عنه ». وفيه أيض تتميمًا لهذه الحادثة عن عبد الرحمن بن عبد القاريّ أنه قال:خرجت مع عمر بن الخطاب رضي الله عنه ليلة في رمضان إلى المسجد، فإذا الناس أوزاع متفرقون يصلي الرجل لنفسه ويصلي الرجل فيصلي بصلاته الرهط، فقال عمر: إني أرى لو جمعت هؤلاء على قارىء واحد لكان أمثل، ثم عزم فجمعهم على أُبيّ بن كعب، ثم خرجت معه ليلة أخرى والناس يصلون بصلاة قارئهم قال عمر: « نعم البدعة هذه ».ا.هـ. وفي الموطأ بلفظ: « نِعمت البدعة هذه ». »');

COMMIT;
