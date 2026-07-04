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
-- PARTIE 4/9 (script découpé pour la limite de taille de l'éditeur).
-- Toutes les parties sont idempotentes et exécutables dans n'importe quel ordre.

-- Colonnes si absentes :
ALTER TABLE parole ADD COLUMN IF NOT EXISTS savant VARCHAR(255) DEFAULT '';
ALTER TABLE parole ADD COLUMN IF NOT EXISTS tag VARCHAR(255) DEFAULT '';

BEGIN;

-- source: https://islamsunnite.net/imam-souyouti-confirme-bonne-innovation-bida/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'la bonne bid’ah.', 'Les Chafi''ites', 'إن البدعة لم تنحصر في الحرام والمكروه، بل قد تكون أيضا: مباحة ومندوبة وواجبة', 'L’innovation (al-bid’ah) ne se limite pas en interdiction et déconseillé, mais elle peut être aussi : permise, recommandée et obligatoire', '', 'Le Hâfidh As-Souyoûti dans son recueil de Fatwâ : « Al-Hâwi li l-Fatâwi », dans le chapitre : « Housnou l-Maqsid fî ‘Amali l-Mawlid » (Le bon objectif dans l’accomplissement du Mawlid), a dit :
[Puis il poursuit en citant la parole de l’Imâm An-Nawawi tirée de son livre « Tahdhîbou l-‘Asmâ-i wa l-Loughât » qui comprend également la parole de l’Imâm Ibn ‘Abdi s-salâm ( à retrouver : ici ) puis il mentionne la parole de l’Imâm Ach-Châfi’i rapportée par l’Imâm Al-Bayhaqi dans son livre « Manâqibou ch-Châfi’i » ( à consulter : ici )]
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Moufassir (spécialiste de l’exégèse), le Faqîh (spécialiste de la jurisprudence), Abou l-Fadl ‘Abdou r-Rahmân ibnou Abî Bakr Jalâlou d-Dîn as-Souyoûti est un grand savant Chafi’ite reconnu par toute la communauté musulmane. Il est né en 849 au Caire et il est décédé en 911 de l’hégire au Caire (رحمه الله) c’est-à-dire il y a environ 520 ans. Certains l’ont désigné comme le moujaddid du 10ème siècle de l’hégire (c’est-à-dire celui qui revitalise la science de la religion).
‘Abdou l-Qâdir Ibn Mouhammad Ach-Châdhili (l’un de ses élèves) a dit à son sujet : « Notre maître (sayyidounâ wa mawlânâ), l’illustre et grand enseignant […] Chaykhou l-Islâm, l’héritier des sciences des prophètes (‘alayhimou s-salâm), celui qui était sans égal à son époque, unique en son temps, celui qui anéantit l’innovation blâmable et qui revivifie la sounnah […] l’Illustre savant, l’océan de science, le très intelligent […] le savant de la religion sans équivalent, l’Imâm de ceux qui appellent à la guidée, celui qui réprime les moubtadi’ah (innovateurs dans la croyance) et les athées, le Sultan des savants, le porte parole des défenseurs de la croyance (moutakallimîn), Le chaykh de l’Islâm et des musulmans, celui qui appelle à la voie agréée par Allâh, l’Imâm des mouhaddithîn (spécialiste du Hadîth) de son époque et de son temps » [Jalâlou d-Dîn As-Souyoûti : Ma’lamatou ‘ouloûmi l-Islâmiyyah]
Chamsou d-Dîn Ad-Dâwoûdi (l’un de ses élèves) a dit de lui : « Il était le plus savant des gens de son époque dans la science du Hadîth et ses ramifications » [Chadharâtou dh-Dhahab].
Ibnou ‘Imâd Al-Hanbali a dit à son sujet : « Le Hâfidh (spécialiste de la science du hadîth) […] le Chafi’ite, le mousnid, l’examinateur scrupuleux, l’auteur d’ouvrages excellents et bénéfiques » [Chadharâtou dh-Dhahab].
– Ici, l’Imâm As-Souyoûti confirme qu’une innovation n’est pas dans tout les cas interdite, mais qu’elle se classe en cinq sortes : permise, recommandée, obligatoire, déconseillée et interdite.
– Le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ].
– À la suite de ses propos, l’Imâm As-Souyoûti (رحمه الله) mentionne des paroles de savants de référence qui ont également expliqué que l’innovation est de différentes sortes, parmi eux il cite :
L’Imâm Ach-Châfi’i [ Rapporté par Al-Bayhaqi ] et [ Rapporté par Aboû Nou’aym ] et [ Rapporté par Al-Bayhaqi (2) ] et [ Rapporté par An-Nawawi ] et [ Mentionné par Ibn Taymiyah (moujassim) ]
L’Imâm An-Nawawi [ Charh Sahîh Mouslim ] [ Tahdhîbou l-‘Asmâ-i wa l-Loughât ] et [ Charh Sahîh Mouslim (2) ]
L’Imâm Ibnou ‘Abdi s-Salâm [ Rapporté par An-Nawawi ]
– Quant au hadîth qui comprend les termes « كل بدعة ضلالة » [koullou bid’atin dalâlah], les savants de l’Islâm ont dit que « كل » [koullou] signifie ici « la plupart », c’est-à-dire que la plupart des innovations mènent à l’égarement. [ Voir la parole de l’Imâm An-Nawawi : ici ]
– Le Chaykh ‘Abdou l-Lâh Al-Ghoumâri a dit : « Les savants ont été en accord sur la classification des innovations en bonne et mauvaise, et sur le fait que ‘Oumar (رضي الله عنه) est le premier qui a parlé de cela, et ils ont été en accord sur le fait que la parole du prophète ” كل بدعة ضلالة ” (koullou bid’atin dalâlah) est un texte de portée générale mais dont le sens est restreint (‘âm makhsoûs)» [ Itqânou s-San’ah ]
– C’est dans ce même ouvrage que l’Imâm As-Souyoûti (رحمه الله) a délivré sa célèbre Fatwâ sur le caractère permis de célébrer le Mawlid qu’il qualifie de « bonne innovation » [ Housnou l-Maqsid fî ‘Amali l-Mawlid ]
– Retrouvez d’autres paroles de savants concernant les bonnes innovations : ici .', 'ahlou s-sounnah, al-hawi li l-fatawa, allah, anniversaire'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'إن البدعة لم تنحصر في الحرام والمكروه، بل قد تكون أيضا: مباحة ومندوبة وواجبة');

-- source: https://islamsunnite.net/imam-nawawi-explique-hadith-man-sanna-fil-islam-sounnatan-hacanah-bonnes-innovations/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les bonnes innovations.', 'Les Chafi''ites', 'قوله صلى الله عليه وسلم : (من سن في الإسلام سنة حسنة فله أجرها) إلى آخره ، فيه : الحث على الابتداء بالخيرات وسن السنن الحسنات ، والتحذير من اختراع الأباطيل والمستقبحات.', '', '', 'Dans son charh (commentaire) du Sahîh Mouslim (tome 7 pages 103-104-105 de cette édition) l’Imâm An-Nawawi a dit :', 'ahlou s-sounnah, allah, aqida, athar'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قوله صلى الله عليه وسلم : (من سن في الإسلام سنة حسنة فله أجرها) إلى آخره ، فيه : الحث على الابتداء بالخيرات وسن السنن الحسنات ، والتحذير من اختراع الأباطيل والمستقبحات.');

-- source: https://islamsunnite.net/imam-nawawi-explique-hadith-man-sanna-fil-islam-sounnatan-hacanah-bonnes-innovations/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les bonnes innovations.', 'Les Chafi''ites', 'فقال الإمام النووي : « وفي هذا الحديث تخصيص قوله صلى الله عليه وسلم : كل محدثة بدعة وكل بدعة ضلالة ، وأن المراد به المحدثات الباطلة والبدع المذمومة ، وقد سبق بيان هذا في كتاب صلاة الجمعة ، وذكرنا هناك أن البدع خمسة أقسام : واجبة ومندوبة ومحرمة ومكروهة ومباحة. »', '« La parole du prophète (صلى الله عليه وسلم) « man sanna fi l-Islâmi sounnatan haçanah, falahou ajrouhâ» [ce qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense » ] jusqu’à la fin du hadîth : il comporte l’incitation à commencer l’accomplissement d’actes de bien et d’instaurer des bonnes traditions, et la mise en garde contre le fait d’instaurer ce qui est incorrecte et détestable »', '', 'Puis l’Imâm An-Nawawi a dit : « Et il y a dans ce hadîth une restriction de la parole du prophète (صلى الله عليه وسلم) : « koullou mouhdathatin bid’ah wa koullou bid’atin dalâlah», et certes ce qui en est visé, ce sont les nouveautés incorrectes et les mauvaises innovations. Nous avons déjà expliqué cela dans le livre de la prière du vendredi [ voir : ici ], et nous avons mentionné que les innovations sont de cinq sortes : obligatoires, recommandées, interdites, déconseillées, ou permises »
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence) Aboû Zakariyyâ Mouhyi d-Dîn Yahyâ Ibnou Charaf An-Nawawi est un savant de référence. Il est né en 631 et il est décédé en 676 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 750 ans. C’est un savant dans l’école de jurisprudence Chafi’ite. Son commentaire du sahîh de l’Imâm Mouslim est très célèbre. Il a écrit d’autres livres tels que « Riyâd as-Sâlihîn » (le jardin des vertueux), et le recueil de 40 hadîth si connus.
Tâjou d-Dîn As-Soubki le surnommait « Chaykhou l-Islâm » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « Le Moufti de la Oummah, Chaykhou l-Islâm […] le Hâfidh (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chafi’ite, l’ascète, l’un des étendards (de la religion) » [Târîkhou l-Islâm]. Il a dit également : « Le Chaykh, le modèle (qoudwah) […] le Hâfidh (spécialiste de la science du hadîth), l’ascète, le pieux adorateur, le Faqîh (spécialiste de la jurisprudence), le moujtahid versé dans l’adoration de Son Seigneur, Chaykhou l-Islâm » [Siyar A’lâmi n-Noubalâ]
Ibn Kathîr a dit à son sujet : « Le Chaykh, l’Imâm, l’illustre savant (al-‘Allâmah), le Hâfidh (spécialiste de la science du hadîth) l’honorable Faqîh (spécialiste de la jurisprudence) […] l’un des pieux adorateurs et ascètes» [Tabaqâtou ch-Châfi’iyyah]
– Ici l’Imâm An-Nawawi explique le hadîth du prophète (صلى الله عليه وسلم) qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ]
– Dans son explication il mentionne les points suivants :
Ce hadîth incite à accomplir des bonnes innovations et à s’écarter des innovations blâmable ;
Ce hadîth restreint le hadîth ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), c’est-à-dire que par ce hadîth on comprend que ‘koull » ne signifie pas « tout » dans l’absolue ;
Le hadîth ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah) désigne les mauvaises innovations et non toutes les innovations ;
Il renvoie vers un autre chapitre de son ouvrage [kitâbou Salât al-Joumou’ah – Chapitre de la prière du vendredi-] dans lequel il explique de manière détaillée le hadîth ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah) [ Charh Sahîh Mouslim ] ;
Il conclut en disant que l’innovation se classe en cinq catégories : obligatoire, recommandée, interdite, déconseillée ou permise.
– Dans un autre de ses ouvrages, l’Imâm An-Nawawi a tenu des propos similaires en disant : « L’innovation (al-bid’ah) dans la Loi de l’Islam, c’est innover ce qui n’existait pas à l’époque du Messager, elle se divise en bonne et en mauvaise innovation. L’Imâm, le Chaykh, à propos duquel il y a unanimité sur le fait qu’il est un guide, sur sa grandeur, sur sa maîtrise de nombreuses sortes de sciences et sur le fait qu’il y excellait, Abou Mouhammad ‘Abdou l-‘Azîz Ibnou ‘Abdi s-Salâm, que Allâh lui fasse miséricorde et que Allâh l’agrée, a dit à la fin de son livre Al-Qawâ’id : L’innovation est divisée en : obligatoire, illicite, recommandée, déconseillée, et permise. Il a dit : le moyen pour cela est de soumettre l’innovation aux règles de la Loi de l’Islam, si elle entre dans le cadre du devoir, elle est alors un devoir, ou dans le cadre de l’interdiction, elle est alors illicite, ou dans le cadre de la recommandation, elle est alors recommandée, ou dans le cadre du déconseillé, elle est alors déconseillée, ou dans le cadre de la permission, elle est alors dans ce cas permise » . Fin de citation de An-Nawawi. [ Tahdhîb al-Asmâ-i wa l-Loughât ]
– Retrouvez d’autres citations de savants concernant les innovations : ici .', 'ahlou s-sounnah, allah, aqida, athar'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فقال الإمام النووي : « وفي هذا الحديث تخصيص قوله صلى الله عليه وسلم : كل محدثة بدعة وكل بدعة ضلالة ، وأن المراد به المحدثات الباطلة والبدع المذمومة ، وقد سبق بيان هذا في كتاب صلاة الجمعة ، وذكرنا هناك أن البدع خمسة أقسام : واجبة ومندوبة ومحرمة ومكروهة ومباحة. »');

-- source: https://islamsunnite.net/qadi-ibn-rouchd-jadd-confirme-allah-est-pas-un-corps-et-il-est-sans-endroit/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Unicité de Allâh.', 'Ibn Rouchd Al-Jadd', 'ولا يجوز عليه تعالى ما يجوز على الجواهر والأجسام من الحركة والسكون والزوال والانتقال والتغير والمنافع والمضار، ولا تحويه الأمكنة ولا تحيط به الأزمنة', 'Il n’est pas possible au sujet de Allâh ce qui est possible concernant les substances et les corps, comme le mouvement, l’immobilité, la disparition (d’un endroit à un autre), le déplacement, le changement, ce qui peux Lui apporter un profit et ce qui peux Lui apporter une nuisance, Il n’est pas contenu par les endroits et Il ne dépend pas du temps.', '', 'Dans son livre «Al-Mouqaddimât al-Moumahhadât» (Tome 1 page 23 de cette édition) le Qâdî Ibnou Rouchd Al-Jadd a dit :
Informations utiles :
– Le Qâdî (juge), le Faqîh (spécialiste de la jurisprudence), le Chaykh Abou l-Walîd Mouhammad Ibnou Ahmad, Qâdi l-Jamâ’ah à Qourtoubah –Cordoue– connu sous le nom de Ibnou Rouchd Al-Jadd (le grand-père), est né en 450 et il est décédé en 520 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 910 ans. Il était un grand savant dans le Madh-hab (Ecole de jurisprudence) Malikite et il fut notamment l’un des Chaykh du Qâdî ‘Iyâd.
Le Qâdî ‘Iyâd a dit à son sujet : « Il était à la tête des savants (fouqahâ) de son époque dans la région d’Andalousie et du Maghreb » [Al-Ghouniyah fî Chouyoûkhi l-Qâdî ‘Iyâd].
– Il ne faut pas le confondre avec son petit fils Ibnou Rouchd (connu sous le nom de Averroès) le philosophe qui est mort en 595 de l’Hégire.
– Ici, il confirme que Allâh n’est pas un corps ni une substance, de ce fait Allâh n’est pas concerné par les caractéristiques des corps et des substances comme : le mouvement, l’immobilité, le changement, le déplacement, l’occupation d’un endroit et la dépendance au temps.
– Le Qâdî Ibnou Rouchd enseignait également que l’istiwâ de Allâh sur Son trône n’est pas un établissement (istiqrâr) [ Rapporté par Ibnou l-Hâjj ], et qu’il n’est pas permis de dire au sujet de Allâh : « Où ? » en s’illusionnant qu’Il serait dans un endroit, ni « Comment ? » en s’illusionnant que Allâh serait caractérisé par des caractéristiques des corps, ni « Quand ? » en s’illusionnant que Allâh serait entré en existence à un moment donné [ Rapporté par Ibnou l-Hâjj Al-Mâliki ].', 'al-moqaddimât al-momahhaddât, al-mouqaddimât al-moumahhaddât, al-muqaddimât al-mumahhadāt, al-muqaddimât al-mumahhaddât'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ولا يجوز عليه تعالى ما يجوز على الجواهر والأجسام من الحركة والسكون والزوال والانتقال والتغير والمنافع والمضار، ولا تحويه الأمكنة ولا تحيط به الأزمنة');

-- source: https://islamsunnite.net/compagnon-abdoullah-ibn-amr-hirz-tirmidhi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Il est permis de porter un hirz.', '', '« حدثنا علي بن حجر حدثنا إسمعيل بن عياش عن محمد بن إسحق عن عمرو ابن شعيب عن أبيه عن جده أن رسول الله صلى الله عليه وسلم قال :', '', '', 'Dans ses Sounan, l’Imâm At-Tirmidhi rapporte le hadîth suivant :', 'allah, aqida, croyance, extrait'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« حدثنا علي بن حجر حدثنا إسمعيل بن عياش عن محمد بن إسحق عن عمرو ابن شعيب عن أبيه عن جده أن رسول الله صلى الله عليه وسلم قال :');

-- source: https://islamsunnite.net/compagnon-abdoullah-ibn-amr-hirz-tirmidhi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Il est permis de porter un hirz.', '', 'إذا فزع أحدكم في النوم فليقل «أعوذ بكلمات الله التامات من غضبه وعقابه وشر عباده ومن همزات الشياطين وأن يحضرون» فإنها لن تضره.', '', '', '', 'allah, aqida, croyance, extrait'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'إذا فزع أحدكم في النوم فليقل «أعوذ بكلمات الله التامات من غضبه وعقابه وشر عباده ومن همزات الشياطين وأن يحضرون» فإنها لن تضره.');

-- source: https://islamsunnite.net/compagnon-abdoullah-ibn-amr-hirz-tirmidhi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Il est permis de porter un hirz.', '', 'وكان عبد الله بن عمرو يلقنها من بلغ من ولده ومن لم يبلغ منهم كتبها في صك ثم علقها في عنقه.', '', '', '', 'allah, aqida, croyance, extrait'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وكان عبد الله بن عمرو يلقنها من بلغ من ولده ومن لم يبلغ منهم كتبها في صك ثم علقها في عنقه.');

-- source: https://islamsunnite.net/compagnon-abdoullah-ibn-amr-hirz-tirmidhi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Il est permis de porter un hirz.', '', 'قال أبو عيسى هذا حديث حسن غريب.»', '« وَنُنَزِّلُ مِنَ الْقُرْآنِ مَا هُوَ شِفَاء وَرَحْمَةٌ لِّلْمُؤْمِنِينَ وَلاَ يَزِيدُ الظَّالِمِينَ إَلاَّ خَسَاراً » [soûrat Al-Isrâ / 82] ce qui a pour sens : « Nous révélons du Qour-ân ce qui comporte une guérison et une miséricorde pour les croyants(…).» .', '', 'Ce qui a pour sens : « ‘Amr Ibnou Chou’ayb rapporte de son père qui rapporte que son grand-père a dit : le Messager de Allâh (صلى الله عليه وسلم) a dit : lorsque l’un d’entre vous fait un cauchemar, qu’il dise : « A’oûdhou bi Kalimati l-Lâhi t-Tâmmâti min ghadabihi wa ‘iqâbihi wa charri ‘ibâdihi wa min hamazâti ch-chayâtîni wa ay-yahdouroûn » [invocation qui signifie : « Je recherche la préservation par la parole de Allâh parfaite contre Sa volonté de châtier, contre Son châtiment, contre le mal de Ses esclaves et contre les accès du chaytân et contre le fait qu’ils viennent à moi »] ainsi il sera pas atteint de nuisance.
Et ‘Abdou l-Lâh Ibn ‘Amr enseignait cette parole à ses enfants qui avaient atteint l’âge de la puberté ; quant à celui qui n’était pas encore pubère, il l’écrivait sur une feuille puis il lui accrochait autour du cou ». Aboû ‘Îçâ [At-Tirmidhi] a dit : ce Hadîth est Haçan (fiable) gharîb.»
Informations utiles :
– L’Imâm, le Hâfidh Aboû ‘Îçâ Mouhammad Ibnou ‘Îçâ At-Tirmidhi, l’auteur du célèbre recueil de Hadîth connu sous le nom de « Sounan At-Tirmidhi » est né en 209 et il est décédé en 279 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 1160 ans. Son recueil de Hadîth compte parmi les six plus importants, il est donc une référence incontournable.
– L’illustre compagnon Aboû Mouhammad ‘Abdou l-Lâh Ibnou ‘Amr (رضي الله عنه) est le fils du compagnon ‘Amr Ibnou l-‘Âs celui qui conquit l’Egypte sous le Califat de ‘Oumar Ibnou l-Khattâb (رضي الله عنه). ‘Abdou l-Lâh Ibnou ‘Amr (رضي الله عنه) est né à La Mecque, et il entré en Islâm avant son père.
– Après avoir cité ce Hadîth, l’Imâm At-Tirmidhi déclare qu’il est : Hassan (fiable).
– Ce hadîth a également été rapporté par de nombreux Houffâdh (spécialistes de la science du hadîth) avec des versions proches, tels que :
Le Hâfidh Al-Hâkim qui a dit : sa chaîne de transmission est sahîh (authentique) ;
Le Hâfidh Aboû Dâwoûd ;
Le Hâfidh An-Naçâ-i;
L’Imâm Ahmad Ibn Hanbal ;
Le Hâfidh Ibnou Abî Dounyâ ;
Le Hâfidh Ibnou Sounni ;
Et le Hâfidh Ibnou Hajar Al-’Asqalâni l’a jugé Hassan (fiable) dans ses Amâlî. Même Ibnou Taymiyyah al-moujassim a mentionné ce hadîth dans son livre « Al-Kalimou t-Tayyib ».
– Nous voyons par l’acte de ce compagnon éminent, le caractère licite de porter sur soi des écrits comportant du Qour-ân, ou du dhikr (évocation) de Allâh.
– Parmi les autres preuves du caractère licite de cela, il y a la parole de Allâh ta’âlâ :
– Tous les croyants savent pertinemment que la création n’appartient qu’à Allâh, et aucun d’entre eux n’a pour croyance que le hirz créerait la protection. Ces groupes qui prétendent que le port du hirz serait du chirk se déclarent-ils associateurs lorsqu’ils prennent des médicaments pour guérir de leur maladie ? Pourtant n’est-ce pas Allâh qui crée la guérison?
– Par conséquent, tout comme il est licite de prendre des médicaments pour espérer la guérison, il est également permis de rechercher les causes de protection par le port de hirz. Et aucun savant musulman digne de ce nom, que ce soit parmi les salaf ou les khalaf n’a jamais blâmé ou interdit cela.
– On ne prend donc pas en considération les prétentions de certains groupes déviés selon lesquels le port du hirz serait du chirk (association à Allâh). En effet certaines personnes, principalement des membres de la mouvance sectaire wahhabite, à l’image de Al-Albâni ont essayé de discréditer ce hadîth pour rejeter le caractère permis du port du hirz. Or, la parole de Al-Albâni n’est pas prise en considération car Al-Albâni n’était ni un hâfidh, ni un mouhaddith, il n’avait pas de chaykh dans la science du hadîth et ses livres sont remplis d’erreurs et contradictions concernant les degrés des hadîth [ voir l’article à ce sujet : ici ].
– Ce qui a été blâmé par le prophète (صلى الله عليه وسلم) c’est ce que portait les gens durant la jâhiliyyah, mais il n’est pas du tout question des hirz contenant du Qour-ân ou du Dhikr.
– Ainsi pour résumer l’Imâm Al-Bayhaqi (رحمه الله) a dit : « Si la personne porte des écrits dont on ignore la signification ou qui provient des gens de la jâhiliyyah [période avant la venue du Prophète Mouhammad (صلى الله عليه وسلم) ] qui attribuaient aux rouqâ le pouvoir de les garder en bonne santé par elles-mêmes sans la Volonté de Allâh, cela est interdit. Mais si la personne porte les rouqâ, qui comportent des versets du Qour-ân ou ce qui est connu comme étant du dhikr de Allâh, dans le but de profiter de leur barakah, tout en sachant que la guérison ne provient que de Allâh, alors il n’y a pas de mal en cela. » [ As-Sounan Al-Koubrâ ]
– Retrouvez d’autres paroles de savants concernant le port du hirz : ici .', 'allah, aqida, croyance, extrait'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال أبو عيسى هذا حديث حسن غريب.»');

-- source: https://islamsunnite.net/qadi-iyad-les-moujassimah-adorent-pas-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Dénonciation des moujassimah.', 'Les Malikites', 'ما عرف الله تعالى من شبهه وجسمه من اليهود ، أو أجاز عليه البدا ، أو أضاف إليه الولد منهم ، أو أضاف إليه الصاحبة والولد ، وأجاز الحلول عليه ، والانتقال والامتزاج من النصارى ، أو وصفه بما لا يليق به ، أو أضاف إليه الشريك والمعاند في خلقه و ملكه من المجوس والثنوية فمعبودهم الذي عبدوه ليس بالله وإن سموه به إذ ليس موصوفا بصفات الإله الواجبة له . فإذن ما عرفوا الله و لا عبدوه', 'N’aura pas connu Allâh ta’âlâ celui qui L’assimile à Ses Créatures ou qui Lui attribue le corps, comme les Yahoûd ; ou Lui attribue le fait de savoir des choses alors qu’Il ne le savait pas auparavant ou ceux d’entre eux qui Lui attribuent le fait d’avoir un fils, ou encore une compagne et un enfant, ou qui Lui attribue le fait d’être incarné ou le déplacement, ou le fait d’être mélangé, comme le prétendent les Nasârâ ; ou qui Lui attribue ce qui n’est pas digne de Lui, ou qui Lui attribue le fait d’avoir un associé ou un opposé dans Sa création et Sa souveraineté, comme le prétendent les Mazdéens et les Dualistes, ainsi ce qu’ils adorent n’est pas Allâh, même s’ils l’appellent ainsi, car ils ne Lui attribuent pas les attributs de la divinité qui Lui sont obligatoires, ainsi ils n’ont pas connue Allâh et ils ne L’adorent pas', '', 'Dans son commentaire du Sahîh Mouslim « Ikmâlou l-mou’lim bi fawâ-id Mouslim » (Tome 1 page 239 de cette édition) Al-Qâdî ‘Iyâd a dit :
Informations utiles :
– Le Qâdî (juge) Abou l-Fadl ‘Iyâd Ibnou Moûçâ Ibnou ‘Iyâd al-Yahsoubi connu sous le nom de Qâdî ‘Iyâd, est un grand savant Malikite. Il est né en 476 à Ceuta et il est décédé en 544 de l’Hégire à Marrakech (Maroc) (رحمه الله) c’est-à-dire il y a plus de 950 ans.
Adh-Dhahabi a dit de lui : « L’Imâm, Al-‘Allâmah (l’illustre savant), le Hâfidh (le spécialiste de la science du hadîth), celui qui n’a pas de pareil, Chaykhou l-Islâm, le Qâdî (Juge) » et il a dit également : « Ses ouvrages sont précieux » [Siyar A’lâmi n-Noubalâ]
Ibn Bachkwâl a dit à son sujet : « Il était parmi les gens de science qui sont intelligents et qui ont une bonne compréhension » [Siyar A’lâmi n-Noubalâ]
Ibn Khallikân a dit de lui : « Il est l’Imâm du hadîth de son temps, et le plus connaisseur des gens de ses sciences, de la grammaire, la langue, la parole des arabes, leurs histoires, et les généalogies.» [Wafayâtou l-A’yân]
– Ici il dit que ceux qui attribuent à Allâh ce qui n’est pas digne de Lui comme le corps, le fait d’avoir un semblable, ou un fils, ou une compagne, ou l’incarnation, ou le déplacement, ou un associé, ou toute autre chose qui n’est pas digne de Lui, alors ils ne connaissent pas Allâh et ce qu’ils adorent n’est pas Allâh, même si eux même appellent « Allâh » ce qu’ils adorent. Et évidemment celui qui n’adore pas Allâh ou qui adore autre que Allâh n’est pas musulman mais mécréant.
– Cette citation du Qâdî ‘Iyâd a également été rapporté par l’Imâm An-Nawawi dans son commentaire du Sahîh de l’Imâm Mouslim ainsi que l’Imâm As-Souyoûti partiellement dans son ouvrage « Al-Hâwi li l-Fatâwi », tout deux sont en accord avec lui.
– Ainsi ces trois savants confirment que le moujassim (le corporaliste) c’est-à-dire celui qui a pour croyance que Allâh serait un corps ou qu’Il serait attribué des caractéristiques des corps comme l’incarnation ou le déplacement […], alors il adore autre que Allâh, et adorer autre que Allâh est de la mécréance claire. Et le fait qu’il nomme « Allâh » la chose qu’il adore ne fait pas de lui un musulman, un croyant.
– L’Imâm Al-Ghazâli a dit à ce sujet : « لا تصح العبادة إلا بعد معرفة المعبود » c’est-à-dire « L’adoration n’est valable qu’après avoir connu Celui Qui mérite d’être adoré» . Ainsi celui qui ne connait pas Allâh et qui adore un corps en pensant que ce corps serait Allâh, celui-ci son adoration n’est pas valable et il n’est pas sur l’Islâm. L’Imâm Al-Ghazâli a dit également : « من عبد جسمًا فهو كافر بإجماع الأمة السلف منهم والخلف » c’est-à-dire « Quiconque adore un corps est un mécréant par unanimité des Salafs (prédécesseurs) et des Khalafs (successeurs). » [ Iljâmou l-‘awâm ]
– Consultez d’autres articles sur le thème : Attribuer le corps à Allah est de la mécréance : ici .', 'adoration, al-qadi ''iyad, allah, anthropomorphiste'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ما عرف الله تعالى من شبهه وجسمه من اليهود ، أو أجاز عليه البدا ، أو أضاف إليه الولد منهم ، أو أضاف إليه الصاحبة والولد ، وأجاز الحلول عليه ، والانتقال والامتزاج من النصارى ، أو وصفه بما لا يليق به ، أو أضاف إليه الشريك والمعاند في خلقه و ملكه من المجوس والثنوية فمعبودهم الذي عبدوه ليس بالله وإن سموه به إذ ليس موصوفا بصفات الإله الواجبة له . فإذن ما عرفوا الله و لا عبدوه');

-- source: https://islamsunnite.net/imam-nawawi-recommande-tabarrouk-traces-vetements-vertueux/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La recommandation du tabarrouk.', 'Nawawi', 'وفي هذا الحديث دليل على استحباب التبرك بآثار الصالحين وثيابهم', 'Il y a dans ce hadîth une preuve sur la recommandation de pratiquer le tabarrouk (la recherche de bénédiction) par les traces (âthâr) des vertueux et par leurs vêtements', '', 'Dans son commentaire du Sahîh Mouslim, lors de l’explication du hadîth dans lequel Asmâ (رضي الله عنها) (la fille de Aboû Bakr) dit qu’elle trempait la joubbah du prophète (صلى الله عليه وسلم) dans l’eau et recherchait la guérison par elle [ Retrouvez le hadîth : ici ], l’Imâm An-Nawawi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence), Aboû Zakariyyâ Mouhyi d-Dîn Yahyâ Ibnou Charaf An-Nawawi est un savant de référence. Il est né en 631 et il est décédé en 676 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 750 ans. Il est du madh-hab (Ecole de jurisprudence) de l’Imâm Ach-Châfi’i. Il est l’auteur de nombreux ouvrages tels que Riyâd As-Sâlihîn. Son charh (commentaire) du Sahîh Mouslim est incontournable.
Tâjou d-Dîn As-Soubki le surnommait « Chaykhou l-Islâm » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « Le Moufti de la Oummah, Chaykhou l-Islâm […] le Hâfidh (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chafi’ite, l’ascète, l’un des étendards (de la religion) » [Târîkhou l-Islâm]. Il a dit également : « Le Chaykh, le modèle (qoudwah) […] le Hâfidh (spécialiste de la science du hadîth), l’ascète, le pieux adorateur, le Faqîh (spécialiste de la jurisprudence), le moujtahid versé dans l’adoration de Son Seigneur, Chaykhou l-Islâm » [Siyar A’lâmi n-Noubalâ]
Ibn Kathîr a dit à son sujet : « Le Chaykh, l’Imâm, l’illustre savant (al-‘Allâmah), le Hâfidh (spécialiste de la science du hadîth) l’honorable Faqîh (spécialiste de la jurisprudence) […] l’un des pieux adorateurs et ascètes» [Tabaqâtou ch-Châfi’iyyah]
– Ici, lorsqu’il explique le hadîth dans lequel Asmâ (رضي الله عنها) (la fille de Aboû Bakr et la sœur de ‘Â-ichah) raconte comment elle réalisait le tabarrouk (recherche de bénédiction) par la joubbah du prophète (صلى الله عليه وسلم), l’Imâm An-Nawawi confirme qu’il est recommandé de pratiquer le tabarrouk par les traces et vêtements des gens de vertus.
– De plus, ce hadîth nous montre que les compagnons, et les proches de la famille du prophète (صلى الله عليه وسلم) autorisaient et pratiquaient le tabarrouk par les traces du prophète (صلى الله عليه وسلم).
– Le tabarrouk c’est la recherche de bénédiction par les traces physiques d’un Prophète ou d’un être de vertu, tout en sachant, bien évidemment, que c’est Allâh ta’âlâ qui est Le Créateur de la guérison, du profit, de la barakah etc. Ainsi, le tabarrouk n’est pas une adoration d’autre que Allâh comme le considèrent à tord certains ignorants.
– Voici d’autres citations précieuses concernant la pratique du tabarrouk par les pieux prédécesseurs (as-salaf as-Sâlih) :
‘Abdou l-Lâh ibnou Ahmad (le fils de l’Imâm Ahmad ibnou Hanbal) a dit : « J’ai vu mon père (l’Imâm Ahmad ibnou Hanbal) prendre un cheveu de ceux du Prophète (صلى الله عليه وسلم), il l’a mis dans sa bouche puis l’a embrassé. Et je suis sur de l’avoir vu le mettre sur ses deux yeux, et l’avoir mélangé avec de l’eau, d’avoir bu cette eau en recherchant la guérison par cela. Et je l’ai vu prendre le bol du Prophète, le laver dans un puits, puis boire dedans. Je l’ai vu boire de l’eau de Zamzam en recherchant la guérison et s’essuyer les mains et le visage avec elle. » [ Rapporté par Adh-Dhahabi ]
‘Abdou l-Lâh Ibn Ahmad Ibn Hambal a dit également : « Je l’ai interrogé (c’est-à-dire son père, l’Imâm Ahmad Ibnou Hanbal) à propos de quelqu’un qui touche le minbar du Prophète (صلى الله عليه وسلم) en faisant le tabarrouk (la recherche de bénédiction), en le touchant et en l’embrassant, et qui fait la même chose auprès de la tombe ou ce qui est du même ordre en visant par là le rapprochement de l’agrément de Allâh ‘azza wa jall. Il m’a répondu : il n’y a pas de mal en cela (lâ ba-sa bidhâlik)» [ Dans le livre Al-‘Ilal wa Ma’rifatou r-Rijâl ]
Adh-Dhahabi a confirme cela en disant : « Il fut rapporté que ‘Abdou l-Lâh demanda à son père au sujet de quelqu’un qui touche le pommeau du minbar du Prophète (صلى الله عليه وسلم) et touche le mur de la chambre Honorée du Prophète (صلى الله عليه وسلم) et Ahmad Ibnou Hanbal répondit : « Je ne vois aucun mal dans cela ».» [ Dans son livre Siyarou A’lâmi n-Noubalâ ]
L’Imâm An-Nawawi a dit : « Le Calife ‘Oumar Ibn ‘Abdi l-‘Azîz a demandé à ce que soit enterré avec lui l’un des cheveux du prophète (salla l-Lâhou ‘alayhi wa sallam) qu’il avait avec lui, et également l’un de ses ongles. Il disait : “si je meurt alors mettez-les dans mon linceul”, et c’est ainsi qu’ils ont fait » [Dans son livre Tahdhîbou l-Asmâ wa l-Loughât]
Le Mouhaddith Al-Harari a dit : « Sachez que les compagnons, que Allâh les agrée, recherchaient les bénédictions par les traces physiques du Prophète (صلى الله عليه وسلم) au cours de sa vie et après sa mort. Les musulmans n’ont cessé de suivre cette voie jusqu’à nos jours. » [ Dans son livre As-Sirât Al-Moustaqîm ]
– Retrouvez d’autres articles au sujet du tabarrouk : ici .', '3a''icha, aicha, aichah, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وفي هذا الحديث دليل على استحباب التبرك بآثار الصالحين وثيابهم');

-- source: https://islamsunnite.net/imam-souyouti-declare-mecreant-moujassimah-anthropomorphistes/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Les moujassimah ne sont pas musulmans.', 'Les Chafi''ites', 'وقال بعضهم : المبتدعة أقسام : الأول : ما نكفره قطعا ، كقاذف عائشة رضي الله عنها ومنكر علم الجزئيات ، وحشر الأجساد ، والمجسمة ، والقائل بقدم العالم .', '« Certains savants ont dit : les moubtadi’ah (innovateurs dans la croyance) sont de différentes sortes :', '', 'Dans son recueil de Fiqh Chafi’ite « Al-Achbâh wa n-Nadhâ-ir » après avoir mentionné la déclaration de mécréance de l’Imâm Ach-Châfi’i à l’égard des moujassimah (anthropomorphistes) [ voir l’article : ici ], l’Imâm As-Souyoûti a dit :
La première : ceux que nous déclarons mécréant de façon catégorique, comme celui qui attribue la fornication à ‘Â-ichah (رضي الله عنها) et celui qui nie que Allâh connait le détail des choses et la résurrection des corps, ainsi que les moujassimah (anthropomorphistes) et celui qui prétend que le monde serait sans début.
[Ensuite il mentionne une catégorie de moubtadi’ah qui n’est pas déclarée mécréante et ce, de façon catégorique ;
Puis il mentionne une catégorie de moubtadi’ah sur laquelle il y a divergence sur la déclaration de mécréance] »
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Moufassir (spécialiste de l’exégèse), le Faqîh (spécialiste de la jurisprudence), Abou l-Fadl ‘Abdou r-Rahmân ibnou Abî Bakr Jalâlou d-Dîn as-Souyoûti est un grand savant Chafi’ite reconnu par toute la communauté musulmane. Il est né en 849 au Caire et il est décédé en 911 de l’hégire au Caire (رحمه الله) c’est-à-dire il y a environ 520 ans. Certains l’ont désigné comme le moujaddid du 10ème siècle de l’hégire (c’est-à-dire celui qui revitalise la science de la religion).
‘Abdou l-Qâdir Ibn Mouhammad Ach-Châdhili (l’un de ses élèves) a dit à son sujet : « Notre maître (sayyidounâ wa mawlânâ), l’illustre et grand enseignant […] Chaykhou l-Islâm, l’héritier des sciences des prophètes (‘alayhimou s-salâm), celui qui était sans égal à son époque, unique en son temps, celui qui anéantit l’innovation blâmable et qui revivifie la sounnah […] l’Illustre savant, l’océan de science, le très intelligent […] le savant de la religion sans équivalent, l’Imâm de ceux qui appellent à la guidée, celui qui réprime les moubtadi’ah (innovateurs dans la croyance) et les athées, le Sultan des savants, le porte parole des défenseurs de la croyance (moutakallimîn), Le chaykh de l’Islâm et des musulmans, celui qui appelle à la voie agréée par Allâh, l’Imâm des mouhaddithîn (spécialiste du Hadîth) de son époque et de son temps » [Jalâlou d-Dîn As-Souyoûti : Ma’lamatou ‘ouloûmi l-Islâmiyyah]
Chamsou d-Dîn Ad-Dâwoûdi (l’un de ses élèves) a dit de lui : « Il était le plus savant des gens de son époque dans la science du Hadîth et ses ramifications » [Chadharâtou dh-Dhahab].
Ibnou ‘Imâd Al-Hanbali a dit à son sujet : « Le Hâfidh (spécialiste de la science du hadîth) […] le Chafi’ite, le mousnid, l’examinateur scrupuleux, l’auteur d’ouvrages excellents et bénéfiques » [Chadharâtou dh-Dhahab].
– Ici, l’Imâm As-Souyoûti indique que les moubtadi’ah (ceux qui ont innové dans la croyance) sont répartis en différents groupes :
Un groupe qui est déclaré mécréant de manière catégorique (c’est-à-dire sans divergence) et il a mentionné parmi eux les moujassimah (anthropomorphistes), c’est-à-dire ceux qui attribuent à Allâh le corps et les caractéristiques des corps (telles que les organes, les membres, la couleur, l’endroit, la direction, la composition etc).
Un groupe qui n’est pas déclaré mécréant.
Et un groupe sur lequel il y a divergence sur leur mécréance.
– Cette parole de l’Imâm As-Souyoûti est confirmé de lui dans un autre de ses ouvrages dans lequel il a dit : « Celui qui est devenu mécréant par son innovation, et cela comme le dit l’auteur (An-Nawawi) du commentaire de Al-Mouhadh-dhab : le moujassim (anthropomorphiste) et celui qui nie que Allâh connait le détail des choses .. . » [Tadrîbou r-Râwî].
– En effet l’Imâm An-Nawawi mentionne dans son livre « Al-Majmoû’ Charhou l-Mouhadh-dhab » : « Et nous avons certes mentionné que celui qui est devenu mécréant par son innovation, la prière n’est pas valable derrière lui […] et parmi ceux qui sont devenu mécréant il y a celui qui attribue clairement le corps [à Allâh] ».
– Le Chaykh Al-Mounâwi a tenu des propos semblable en disant : « Quant à celui qui devient mécréant par son innovation, c’est comme celui qui renie la connaissance de Allâh en prétendant qu’il ne connait pas le détail, ou qui prétend que Allâh serait un corps, ou qu’Il serait dans une direction. De même celui qui dit que Allâh est en contact avec le monde ou détaché de lui » . [ Faydou l-Qadîr ]
– Retrouvez d’autres paroles de savants confirmant le fait qu’ attribuer le corps à Allâh est de la mécréance : ici .
– Retrouvez d’autres paroles de savants confirmant le fait qu’ attribuer l’endroit ou la direction à Allâh est de la mécréance : ici .', 'ahlou s-sounnah, al achbâh wa an-nadhâ''ir, al-achbah wa n-nadha’ir, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وقال بعضهم : المبتدعة أقسام : الأول : ما نكفره قطعا ، كقاذف عائشة رضي الله عنها ومنكر علم الجزئيات ، وحشر الأجساد ، والمجسمة ، والقائل بقدم العالم .');

-- source: https://islamsunnite.net/imam-qourtoubi-explique-verset-wa-houwa-maakoum-et-interpretation/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Explication du verset {wa houwa ma’akoum}', 'Qourtoubi', '{ وَهُوَ مَعَكُمْ } يعني بقدرته وسلطانه وعلمه { أَيْنَ مَا كُنتُمْ وَٱللَّهُ بِمَا تَعْمَلُونَ بَصِيرٌ } يبصر أعمالكم ويراها ولا يخفى عليه شيء منها. وقد جمع في هذه الآية بين { ٱسْتَوَىٰ عَلَى ٱلْعَرْشِ } وبين { وَهُوَ مَعَكُمْ } والأخذ بالظاهرين تناقض فدل على أنه لا بدّ من التأويل، والإعراضُ عن التأويل ٱعتراف بالتناقض.', '« Allâh ta’âlâ dit : {wa houwa ma’akoum} [traduction mot à mot : et Il est avec vous] c’est-à-dire par Sa puissance, Sa souveraineté, et Sa science {ayna mâ kountoum wa l-Lâhou bimâ ta’maloûna basîr} [traduction mot à mot : où que vous soyez, et Allâh voit ce que vous faites] Il voit vos actes, et aucun d’eux ne Lui échappe. Et certes Allâh a réunis dans ce verset [Sa parole] {Istawâ ‘ala l-‘Arch} [qui signifierait selon le sens apparent – qui n’est pas correct – que Allâh serait assis ou établi sur le trône] et [Sa parole] {wa houwa ma’akoum} [qui signifierait selon le sens apparent – qui n’est pas correct – que Allâh serait situé dans l’endroit dans lequel nous sommes] et le fait de les prendre (ces deux parties du verset) selon leur sens apparents amène à une contradiction, et cela est une preuve qu’il est nécessaire d’avoir recours à l’interprétation (ta-wîl), et l’opposition à l’interprétation (ta-wîl) amène à la contradiction.', '', 'Dans son célèbre tafsîr, lors de l’explication du verset 4 de Soûrat Al-Hadîd, l’Imâm Al-Qourtoubi a dit :
[puis il cite une parole de l’Imâm Al-Jouwayni [ à retrouver : ici ]»
Informations utiles :
– Le Moufassir (exégète) Mouhammad Ibnou Ahmad Al-Ansâri Al-Qourtoubi est décédé en 671 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 760 ans. Il est du madh-hab (Ecole de jurisprudence) de l’Imâm Mâlik. Son tafsîr « Al-Jâmi’ou li Ahkâmi l-Qour-ân » est une référence incontournable.
Adh-Dhahabi a dit à son sujet : « L’illustre savant (Al-‘Allâmah) […] un Imâm très intelligent, un érudit dans la science, il est l’auteur de nombreux ouvrages qui sont très utiles et qui indiquent sa grande connaissance, et l’abondance de sa vertu » [Târîkhou l-Islâm]
Ibnou Farhoûn al-Mâliki a dit de lui : « Le Chaykh, l’Imâm […] le moufassir (exégète), Il était parmi les esclaves vertueux de Allâh, de parmi les savants , les connaisseurs, les pieux, les détachés du bas-monde, ceux qui sont occupé par les affaires qui concernent l’au-delà. » Et il a dit au sujet de son Tafsîr (exégèse du Qour-ân) : « Il compte parmi les tafsîr les plus importants et les plus éminents en terme de mérite » [Ad-Dîbâj]
Ibnou ‘Imâd al-Hambali a dit : « Il était un Imâm, un savant, de parmi ceux qui ont une grande connaissance du hadîth, auteur de bons ouvrages » [Chadharâtou dh-Dhahab]
Mouhammad Makhloûf a dit à son sujet : « Le savant, l’Imâm, le glorieux (al-jalîl), le vertueux (al-fâdil), le spécialiste de la jurisprudence (faqîh), le spécialiste de l’explication du Qour-ân (moufassir), le pieux, celui qui est scrupuleux, celui qui est complet, il était parmi les esclaves vertueux de Allâh et de parmi les savants qui ont le plus de science » [Chajaratou n-Noûr]
Az-Zirikli a dit de lui : « Il est de parmi les plus grands des moufassiroûn (exégètes du Qour-ân), il était vertueux, et pieux» [Al-A’lâm]
– Ici, l’Imâm Al-Qourtoubi explique le verset : { وَهُوَ مَعَكُمْ أَيْنَ مَا كُنتُمْ} (wa houwa ma’akoum ayna mâ kountoum) [soûrat Al-Hadîd / 4] en expliquant que ce qui est visé ici c’est que Allâh est avec nous par Sa puissance, Sa souveraineté et Sa science, c’est-à-dire que ce verset ne signifie pas que Allâh serait avec nous par Son Etre, c’est-à-dire par Lui-même. Ainsi il n’est pas valable de croire que Allâh serait « partout » ou « dans tout les endroits », et cette croyance est rejetée à l’unanimité.
– Ensuite l’Imâm Al-Qourtoubi explique que dans ce même verset Allâh ta’âlâ dit à Son sujet : {Istawâ ‘ala l-‘Arch} et aussi {wa houwa ma’akoum}, et le fait de prendre ces deux parties du verset selon son sens apparent amène à une contradiction, et il n’y a pas de contradiction dans le Qour-ân, ainsi il est nécessaire d’avoir recours à l’interprétation. En effet le fait de prendre le sens apparent de la parole de Allâh : {Istawâ ‘ala l-‘Arch} amène à la croyance des moujassimah (corporalistes) qui considèrent que Allâh serait assis ou établi sur le trône, et le fait de prendre le sens apparent de la parole de Allâh : {wa houwa ma’akoum ayna mâ kountoum} amène à la croyance des jahmiyyah qui eux considèrent que Allâh serait partout, ou dans tout les endroits.
– Les savants de l’Islâm ont dénoncé ces deux croyances et les ont considérés comme étant de la mécréance. En effet :
Le Chaykh Ibn Hamdân Al-Hanbali a dit : « Et celui qui dit que Allâh est par Son Être dans tous les endroits, ou dans un endroit, c’est un mécréant, car cela impliquerait l’éternité de l’endroit et l’incarnation dans les endroits répugnants et autres, et Allâh est totalement exempt de cela » [ Dans son livre Nihâyatou l-Moubtadi-în ].
Le Chaykh Ibn Balbân Al-Hanbali a dit : «Celui qui croit que Allâh est par Lui-même dans tous les endroits ou dans un endroit est mécréant.» [Moukhtasarou l-Ifâdât] et cela a également été confirmé de lui par le Chaykh Al-Qaddoûmi Al-Hanbali [ Dans son livre Al-Manhajou l-Ahmad ].
Quant au Chaykh ‘Abdou l-Ghani Al-Nâboulouçi Al-Hanafi, il a dit : « Quant à l’assimilation (tachbîh) c’est de croire que Allâh ta’âlâ ressemble à l’une de Ses créatures, comme ceux qui croient que Allâh est un corps au-dessus du Trône […] ou qu’Il est au ciel (fi s-samâ), ou qu’Il est dans une des six directions, ou qu’Il est dans un des endroits ou dans tous les endroits , ou qu’Il a rempli les cieux et la terre ou qu’Il s’est incarné dans quelque chose ou dans toute les choses, ou celui qui croit que les créatures seraient une partie de Lui, et tout ceci est de la mécréance claire » [ Al-Fathou r-Rabbâni ].
– Le Chaykh Ibn Hamdân a dit : « Ahmad [Ibn Hambal] reniait ceux qui disent que Allâh est dans tous les endroits » [Nihâyatou l-Moubtadi-în].
– L’Imâm Al-Bayhaqi a dit : « Et ce que nous avons mentionné de parmi les versets est une preuve de l’infondé de la parole de ceux qui prétendent, de parmi les jahmiyyah, que Allâh ta’âlâ serait par Son Être dans tous les endroits. Et Sa parole ‘Azza wa Jall : { وَهُوَ مَعَكُمْ أَيْنَ مَا كُنتُمْ} (wa houwa ma’akoum ayna mâ kountoum) [soûrat Al-Hadîd / 4] ce qu’Il en a voulu est : par Sa science et non par Son Être» [Al-I’tiqâd]
– L’Imâm Al-Ghazâli a dit : « S’est trompé celui qui a dit que Allâh est dans tous les endroits ; et tout ceux qui lui ont attribué l’endroit et la direction se sont humilié et se sont égaré » [Al-Arba’în fî Ousoûli d-Dîn]
– L’Imâm Ibn Hajar Al-‘Asqalâni a dit : « Et ont contredit cela certains mou’tazilah qui ont dit que Allâh est dans tous les endroits, et cela est une ignorance claire » [Fat-hou l-Bârî]
– Le Chaykh ‘Abdou l-Wahhâb Ach-Cha’râni rapporte de ‘Ali Al-Khawwâs qu’il a dit : « Il n’est pas permis de dire que Allâh ta’âlâ est dans tous les endroits comme l’ont dit les Mou’tazilah et les Qadariyyah » [Al-Yawâqît wa l-Jawâhir]
– Le Chaykh Ismâ’îl Haqqi Al-Hanafi a dit : « Celui qui attribue à Allâh ta’âlâ un endroit alors il fait partie des moujassimah (ceux qui attribuent le corps à Allâh), et parmi eux il y a les ignorants qui se revendiquent [mensongèrement] du Soufisme et qui disent que Allâh est dans tous les endroits » [Rapporté par le Chaykh Mahmoûd As-Soubki Al-Azhari dans son livre Ad-Dîn Al-Khâlis]
– Quant à celui qui dirait “Allâh est partout” ou “dans tout les endroits” en comprenant de ces expressions que Allâh sait toute chose, qu’Il voit tout et qu’Il entend tout, tout en ayant pour croyance que Allâh n’est pas concerné par les endroits, alors il n’est pas déclaré mécréant, bien que les termes qu’il ait utilisé soient blâmable. L’Imâm Ibnou Foûrak a dit à ce sujet : «Le sens est correct mais l’expression utilisée est interdite (mamnoû’)» [Mouchkilou l-Hadîth].
– Le Chaykh Khalîl Daryân Al-Azhari a dit : « Sache qu’il n’est pas permis de dire que Allâh est dans tous les endroits, même si celui qui dit cela comprend de cette expression corrompue (fâçidah) que Allâh sait toute chose » [Ghâyatou l-Bayân fî Tanzîhi l-Lâhi ‘ani l-Jihati wa l-Makân]
– L’interprétation est de deux sortes :
La première : croire en ce qui est révélé dans les Textes sans rentrer dans les détails du sens, tout en exemptant Allâh de toutes ressemblances et caractéristiques des créatures (c’est ce qu’on appelle l’interprétation globale -ta-wîl ijmâliyy- ou encore tafwîd). Voici quelques exemples :
L’Imâm Aboû Hanîfah concernant l’Istiwâ [ Al-Wasiyyah ]
L’Imâm Aboû Hanîfah concernant le Yad [ Al-Fiqh al-Akbar ]
L’Imâm Mâlik concernant l’Istiwâ [ rapporté par Al-Qayrawâni ] et [ rapporté par Al-Bayhaqi ] et [ rapporté par Al-‘Azzâmi ] et [ rapporté par Al-Qourtoubi ] et [ rapporté par Ibn Kathîr ]
L’Imâm Ibn Hibbân concernant le hadîth du Nouzoûl [ Dans son Sahîh ]
La seconde : Interpréter selon un sens digne d’être attribué à Allâh et valable dans la langue (c’est ce qu’on appelle l’interprétation détaillée – ta-wîl tafsîliyy -). Voici quelques exemples :
L’Imâm Ibn ‘Abbâs concernant le Sâq [ Rapporté par At-Tabari ] et [ Rapporté par Al-Bayhaqi ]
L’Imâm Al-Boukhâri concernant le Wajh [ Dans son Sahîh ]
L’Imâm Ahmad concernant « wa jâ-a rabbouka » [ Rapporté par Al-Bayhaqi ] et [ Rapporté par As-Sa’di ] et [ Rapporté par Al-Hisni ]
L’Imâm At-Tabarâni concernant l’Istiwâ [ Dans son tafsîr ]
Ces deux voies qui sont toutes les deux correctes ont en commun de ne pas prendre le sens apparent. Remarquons que les savants du Salaf, bien qu’ils utilisaient majoritairement l’interprétation globale, ils avaient quelque fois recours à l’interprétation détaillée également, comme cela apparaît dans les exemples ci-dessus.
– L’Imâm Ibnou l-Jawzi, dans son livre Al-Majâlis, réplique à ceux qui prétendent que les savants du Salaf n’ont pas réalisé d’interprétations [ Al-Majâlis ].
– Consultez également l’explication de l’Imâm Ar-Râzi concernant le verset 4 de Soûrat Al-Hadîd [ Dans son tafsîr ]
– Retrouvez d’autres articles concernant le fait qu’ il n’est pas permis de croire que Allâh serait partout ou dans tout les endroits : ici .', 'ahlou s-sounnah, allah, aqida, arabe'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '{ وَهُوَ مَعَكُمْ } يعني بقدرته وسلطانه وعلمه { أَيْنَ مَا كُنتُمْ وَٱللَّهُ بِمَا تَعْمَلُونَ بَصِيرٌ } يبصر أعمالكم ويراها ولا يخفى عليه شيء منها. وقد جمع في هذه الآية بين { ٱسْتَوَىٰ عَلَى ٱلْعَرْشِ } وبين { وَهُوَ مَعَكُمْ } والأخذ بالظاهرين تناقض فدل على أنه لا بدّ من التأويل، والإعراضُ عن التأويل ٱعتراف بالتناقض.');

-- source: https://islamsunnite.net/limam-al-baqillani-confirme-que-allah-nest-pas-dans-une-direction/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas dans une direction', 'Baqillani', 'الله تعالى لا يوصف بالجهات ، و لا أنه في جهة', 'Allâh ta’âlâ n’est pas attribué par les directions, et certes Il n’est pas dans une direction', '', 'Dans son livre « Al-Insâf » (page 177 de cette édition) l’Imâm Al-Bâqillâni a dit :
Informations utiles :
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
– Ici, l’Imâm Al-Bâqillâni confirme le fait que Allâh ta’âlâ n’est pas dans une direction.
– Dans d’autres passages de son livre l’Imâm Al-Bâqillâni confirme le fait que Allâh n’est pas dans une direction [ Al-Insâf ] et que le trône n’est pas un endroit pour Allâh, ni un lieu d’établissement pour Lui [ Al-Insâf ]. Par ailleurs, Il a été rapporté de l’Imâm Al-Bâqillâni qu’il déclare mécréant ceux qui ont pour croyance que Allâh serait dans une direction [ rapporté par Moullâ ‘Ali Al-Qârî ] et [ rapporté par Mahmoûd As-Soubki ]. De plus l’Imâm Al-Bâqillâni rapporte dans son ouvrage la célèbre citation de l’Imâm Ja’far As-Sâdiq dans laquelle il est dit que le fait de prétendre que Allâh serait « dans » ou « au-dessus » de quelque chose est de la mécréance [ Al-Insâf ].', 'al-baqillani, allah, aqida, baghdad'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'الله تعالى لا يوصف بالجهات ، و لا أنه في جهة');

-- source: https://islamsunnite.net/limam-al-moutawalli-explique-le-verset-wa-rafiouka-ilayya-sourat-ali-imran-55/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Sens du verset {wa râfi’ouka ilayya}', 'Les Chafi''ites', 'وأما قوله تعالى {ورافعك إلي} معناه إلى كرامتي ورحمتي', 'Quant à la parole de Allâh ta’âlâ : {ورافعك إلي} (wa râfi’ouka ilayya) elle signifie : vers ce qui est honoré par Moi et vers Ma miséricorde', '', 'Dans son livre « Al-Ghounyah fî Ousoûli d-Dîn » (page 78 de cette édition) l’Imâm Al-Moutawalli a dit :
Informations utiles :
– Al-‘Allâmah (l’illustre savant), l’Imâm, le Ousoûli (spécialiste des fondements), le Faqîh (spécialiste de la jurisprudence) Aboû Sa’îd ‘Abdou r-Rahmân An-Nayçâboûri, connu sous le nom de Al-Moutawalli Ach-Châfi’i est né en 426 à Nayçâboûr et il est décédé en 478 de l’Hégire à Baghdâd (رحمه الله). C’est-à-dire il y a environ 960 ans. Il succéda à l’Imâm Ach-Chîrâzi comme enseignant à la célèbre école An-Nidhâmiyyah de Baghdâd. Il étudia la jurisprudence Chafi’ite auprès du savant, le Qâdî Houçayn Ach-Châfi’i (m.463 A.H) celui dont l’Imâm Ar-Râfi’i (m.623 A.H.) disait : « On le surnommait le savant de la communauté» , et autres que lui. L’Imâm An-Nawawi (m.676 A.H.) le cite souvent comme référence dans ses ouvrages.
Adh-Dhahabi a dit à son sujet : « L’illustre savant (Al-‘Allâmah) le Chaykh des Chafi’ites » [Siyarou A’lâmi n-Noubalâ], et il a également dit de lui : « Il était un Faqîh (spécialiste de la jurisprudence) Chafi’ite, l’un des grands savants, Il était un Faqîh reconnu, et un savant méticuleux » [Târîkhou l-Islâm].
Quant à Ibn Kathîr, il a dit à son sujet : « Il était éloquent, un grand orateur, et maîtrisait de nombreuses sciences » [Al-Bidâyah wa n-Nihâyah], il a dit également : « Il était un Faqîh (spécialiste de la jurisprudence) reconnu, et un savant méticuleux » , il a également fait son éloge en disant : « Il était l’un des ash-hâbou l-woujoûh (une catégorie de savants en dessous du degré du moujtahid, qui est apte à déduire les jugements religieux à partir des textes de l’Imâm fondateur de l’école) dans le madh-hab [Châfi’i] » . [Tabaqâtou ch-Châfi’iyyîn]
As-Safadi a dit de lui : « Il comptait parmi les meilleurs des gens de par le comportement et le caractère, et de parmi les savants les plus modestes et généreux, il était reconnu et méticuleux tout en étant un grand orateur, éloquent, et nombreux devenaient des imams en assistant à ses assemblées de science » . [Al-Wâfî bi l-Wafayât]
Tâjou d-Dîn As-Soubki a dit de lui : « Il est l’un des Imâm aux degrés les plus élevés de parmi nos compagnons » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ].
Et Ibn Khallikân a dit à son sujet : « Il était un Faqîh Chafi’ite originaire de Nayçâboûr, il a rassemblé la science, l’application de la religion, et les bons caractères, il a maîtrisé le Fiqh (la jurisprudence), Al-Ousoûl (les fondements) et al-Khilâf (les divergences religieuses) » [Wafayâtou l-A’yân].
– Ici, l’Imâm Al-Moutawalli explique le verset 55 de Soûrat Âli ‘Imrân lorsque Allâh ta’âlâ dit concernant ‘Îçâ (‘alayhi s-salâm) {ورافعك إلي} (wa râfi’ouka ilayya), et il dit qu’ici le sens de « ilayya » (qui signifierait selon le sens apparent : vers moi) est : ma miséricorde et ce que J’honore. C’est-à-dire que ce verset ne signifie pas que ‘Îça (عليه السلام) serait élevé dans un endroit où se situerait Allâh comme le prétendent les moujassimah (corporalistes).
– D’autres savants ont donné des explications similaires, comme :
L’Imâm At-Tabarâni (m.360 A.H.) qui a dit dans son tafsîr que le sens est : « Vers le ciel et il a été dit : vers ce que J’honore » ;
L’Imâm As-Samarqandi (m.375 A.H.) a dit dans son tafsîr : « Je vais t’élever de ce bas-monde jusqu’au ciel » ;
L’Imâm Ar-Râzi (m.606 A.H.) a dit dans son tafsîr : «Vers l’endroit que J’honore»
L’Imâm Ibnou ‘Abdi s-Salâm (m.660 .H.) dans son tafsîr a dit : «Vers le ciel, ou ce que J’honore» ;
L’Imâm Al-Baydâwi (m.685 A.H.) dans son tafsîr a dit : « Vers l’endroit que J’honore, et la demeure de Mes anges (c’est-à-dire le ciel) » ;
L’Imâm An-Naçafi (m.710 A.H.) a dit dans son tafsîr : «Vers le ciel et la demeure de Mes anges» ;
L’Imâm Aboû Hayyân (m.754 A.H.) a dit dans son tafsîr : «Vers le ciel et la demeure de Mes anges. Sache que Al-Bârî (Allâh) ta’âla n’est pas localisé dans une direction.» ;
L’Imâm Ath-Tha’âlibi (m. 875 A.H.) dans son tafsîr a dit : «Ceci est une expression pour designer son déplacement (à ‘Îcâ) du bas vers le haut, et l’annexion à Allâh est une annexion d’honneur, et ce qui est su c’est que Allâh n’est pas localisé dans une direction»
Et beaucoup d’autres…
– De plus il est connu que le prophète ‘Îçâ (عليه السلام) est actuellement vivant dans le second ciel, et Allâh n’est pas incarné dans le second ciel ni dans aucun autre endroit, car Il est Le créateur des endroits dans leur totalité. La croyance des gens de la Sounnah est que Allâh existe sans endroit ni direction.', 'allah, aqida, book, croyance'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وأما قوله تعالى {ورافعك إلي} معناه إلى كرامتي ورحمتي');

-- source: https://islamsunnite.net/limam-ibn-fourak-rejette-la-croyance-selon-laquelle-allah-serait-dans-un-endroit-ou-partout/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas dans tous les endroits.', 'Les Chafi''ites', 'وَكَانَ يذهب -أي الثلجي – مَذْهَب النجار فِي القَوْل بِأَن الله فِي كل مَكَان وَهُوَ مَذْهَب الْمُعْتَزلَة وَهَذَا التَّأْوِيل عندنَا مُنكر من أجل أَنه لَا يجوز أَن يُقَال إِن الله تَعَالَى فِي مَكَان أَو فِي كل مَكَان', 'Ath-Thalaji prenait pour voie celle de [Al-Houçayn Ibn Mouhammad] An-Najjâr concernant le fait de dire que Allâh est dans tout les endroits, et cela est la voie des mou’tazilah, et cette interprétation est rejetée chez nous (les gens de la sounnah) du fait qu’il n’est pas permis de dire que Allâh ta’âlâ serait dans un endroit, ou qu’Il serait dans tout les endroits', '', 'Dans son livre « Mouchkilou l-Hadîth » (page 80 de cette édition), l’Imâm Ibnou Foûrak a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du hadîth), le moutakallim (spécialiste de la croyance), le Ousoûli (spécialiste des fondements), le Faqîh (spécialiste de la jurisprudence) Aboû Bakr Mouhammad Ibnou l-Haçan Ibnou Foûrak (certains le nomment « Ibnou Fawrak ») al-Asbahâni ach-Châfi’i est décédé en 406 de l’Hégire (رحمه الله), c’est-à-dire il y a environ 1030 ans. Il était un grand défenseur de la croyance de Ahlou s-Sounnah wa-l jamâ’ah. On compte parmi ses illustres élèves : l’Imâm Al-Bayhaqi et l’Imâm Abou l-Qâçim Al-Qouchayri.
L’Imâm An-Nawawi faisait son éloge en disant : « Al-Oustâdh [Al-Isfarâyîni] est l’une des trois personnes qui vécurent à la même époque et qui se levèrent afin de défendre l’école du Hadîth et de la Sounnah dans les questions de croyance, il s’agit ainsi de ceux qui ont défendu l’école du Chaykh Abou l-Haçan Al-Ach’ari. Ce sont Al-Oustâdh Aboû Is-hâq Al-Isfarâyîni, Al-Qâdî Aboû Bakr Al-Bâqillâni et l’Imâm Aboû Bakr Ibnou Foûrak. » [Tahdhîbou l-Asmâ-i wa l-Loughât]
Adh-Dhahabi a dit de lui : « L’Imâm, l’Illustre savant (Al-‘Allâmah), le vertueux (As-Sâlih) le Chaykh des théologiens (moutakallimîn)» [Siyar A’lâmi n-Noubalâ]
– Ici l’Imâm Ibnou Foûrak s’oppose à deux mauvaises croyances : la croyance selon laquelle Allâh serait dans un endroit, et cela est la croyance des moujassimah (corporalistes), mouchabbihah (assimilateurs) que l’on retrouve principalement à notre époque dans la mouvance sectaire wahhabite (ceux qui se nomment mensongèrement Salafi) ; et il s’oppose à la croyance selon laquelle Allâh serait dans tous les endroits, et cela est la croyance des mou’tazilah, des jahmiyyah et également celle de Sayyid Qoutb [ voir son livre « Fî Dhilâli l-Qour-ân » ].
– Les savants de l’Islâm ont dénoncé ces deux croyances et les ont considérés comme étant de la mécréance.
– Bien plus, les savants ont considéré cette croyance comme étant de la mécréance claire et explicite. En effet :
Le Chaykh Ibn Hamdân Al-Hanbali a dit : « Et celui qui dit que Allâh est par Son Être dans tous les endroits, ou dans un endroit, c’est un mécréant, car cela impliquerait l’éternité de l’endroit et l’incarnation dans les endroits répugnants et autres, et Allâh est totalement exempt de cela » [ Dans son livre Nihâyatou l-Moubtadi-în ].
Le Chaykh Ibn Balbân Al-Hanbali a dit : «Celui qui croit que Allâh est par Lui-même dans tous les endroits ou dans un endroit est mécréant.» [Moukhtasarou l-Ifâdât] et cela a également été confirmé de lui par le Chaykh Al-Qaddoûmi Al-Hanbali [ Dans son livre Al-Manhajou l-Ahmad ].
Quant au Chaykh ‘Abdou l-Ghani Al-Nâboulouçi Al-Hanafi, il a dit : « Quant à l’assimilation (tachbîh) c’est de croire que Allâh ta’âlâ ressemble à l’une de Ses créatures, comme ceux qui croient que Allâh est un corps au-dessus du Trône […] ou qu’Il est au ciel (fi s-samâ), ou qu’Il est dans une des six directions, ou qu’Il est dans un des endroits ou dans tous les endroits , ou qu’Il a rempli les cieux et la terre ou qu’Il s’est incarné dans quelque chose ou dans toute les choses, ou celui qui croit que les créatures seraient une partie de Lui, et tout ceci est de la mécréance claire » [ Al-Fathou r-Rabbâni ].
– Le Chaykh Ibn Hamdân a dit : « Ahmad reniait ceux qui disent que Allâh est dans tous les endroits » [Nihâyatou l-Moubtadi-în].
– L’Imâm Al-Bayhaqi a dit : « Et ce que nous avons mentionné de parmi les versets est une preuve de l’infondé de la parole de ceux qui prétendent, de parmi les jahmiyyah, que Allâh ta’âlâ serait par Son Être dans tous les endroits. Et Sa parole ‘Azza wa Jall : { وَهُوَ مَعَكُمْ أَيْنَ مَا كُنتُمْ} (wa houwa ma’akoum ayna mâ kountoum) [soûrat Al-Hadîd / 4] ce qu’Il en a voulu est : par Sa science et non par Son Être» [Al-I’tiqâd].
– L’Imâm Al-Ghazâli a dit : « S’est trompé celui qui a dit que Allâh est dans tous les endroits ; et tout ceux qui lui ont attribué l’endroit et la direction se sont humilié et se sont égaré » [Al-Arba’în fî Ousoûli d-Dîn].
– L’Imâm Ibn Hajar Al-‘Asqalâni a dit : « Et ont contredit cela certains mou’tazilah qui ont dit que Allâh est dans tous les endroits, et cela est une ignorance claire » [Fat-hou l-Bârî]
– Le Chaykh ‘Abdou l-Wahhâb Ach-Cha’râni rapporte de ‘Ali Al-Khawwâs qu’il a dit : « Il n’est pas permis de dire que Allâh ta’âlâ est dans tous les endroits comme l’ont dit les Mou’tazilah et les Qadariyyah » [Al-Yawâqît wa l-Jawâhir]
– Le Chaykh Ismâ’îl Haqqi Al-Hanafi a dit : « Celui qui attribue à Allâh ta’âlâ un endroit alors il fait partie des moujassimah (ceux qui attribuent le corps à Allâh), et parmi eux il y a les ignorants qui se revendiquent [mensongèrement] du Soufisme et qui disent que Allâh est dans tous les endroits » [Rapporté par le Chaykh Mahmoûd As-Soubki Al-Azhari dans son livre Ad-Dîn Al-Khâlis]
– Quant à celui qui dirait “Allâh est partout” ou “dans tous les endroits” en comprenant de ces expressions que Allâh sait toute chose, qu’Il voit tout et qu’Il entend tout, tout en ayant pour croyance que Allâh n’est pas concerné par les endroits, alors il n’est pas déclaré mécréant, bien que les termes qu’il ait utilisé soient blâmable. L’Imâm Ibnou Foûrak a dit à ce sujet : «Le sens est correct mais l’expression utilisée est interdite (mamnoû’)» [Mouchkilou l-Hadîth].
– Le Chaykh Khalîl Daryân Al-Azhari a dit : « Sache qu’il n’est pas permis de dire que Allâh est dans tous les endroits, même si celui qui dit cela comprend de cette expression corrompue (fâçidah) que Allâh sait toute chose » [Ghâyatou l-Bayân fî Tanzîhi l-Lâhi ‘ani l-Jihati wa l-Makân]
– Retrouvez d’autres paroles de savants qui ont confirmé que le fait qu’ attribuer l’endroit ou la direction à Allâh est une croyance qui fait sortir de l’Islam : ici .
– Cette citation de l’Imâm Ibnou Foûrak est également très importante pour repousser certaines calomnies et mensonges à l’égard des Ach’arites. En effet, certaines personnes prétendent mensongèrement que les Ach’arites ont pour croyance que Allâh serait dans tous les endroits, c’est-à-dire qu’Il serait partout. Or, l’Imâm Ibnou Foûrak qui a clairement rejeté cette mauvaise croyance, fait partie des références dans le madh-hab de l’Imâm Al-Ach’ari ; il a pris la science de l’Imâm Abou l-Haçan Al-Bâhili qui était le compagnon de l’Imâm Abou l-Haçan Al-Ach’ari. Ainsi il etait l’élève direct d’un des élèves de l’Imâm Al-Ach’ari.
– La croyance des musulmans, celle des gens de la vérité, est que Allâh n’est pas concerné par Ses créatures, c’est-à-dire qu’Il n’en dépend pas. Ainsi Il n’est pas dans un endroit, ni dans tous les endroits, mais Il existe sans endroit. En effet Allâh existe de toute éternité alors que les endroits n’existaient pas, et après avoir créé les endroits, Allâh existe toujours sans endroit. Et ceci est conforme au hadîth Sahîh du Messager de Allâh (صلى الله عليه وسلم), rapporté par Al-Boukhâri et autre :', 'ach3ari, ach3arite, acha''irah, achari'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وَكَانَ يذهب -أي الثلجي – مَذْهَب النجار فِي القَوْل بِأَن الله فِي كل مَكَان وَهُوَ مَذْهَب الْمُعْتَزلَة وَهَذَا التَّأْوِيل عندنَا مُنكر من أجل أَنه لَا يجوز أَن يُقَال إِن الله تَعَالَى فِي مَكَان أَو فِي كل مَكَان');

-- source: https://islamsunnite.net/limam-ar-razi-explique-la-parole-hadha-rabbi-du-prophete-ibrahim-lors-de-sa-vision-de-lastre-de-la-lune-et-du-soleil/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les prophètes sont préservé de la mécréance', 'Unanimité', 'أن القول بربوبية النجم كفر بالإجماع والكفر غير جائز بالإجماع على الأنبياء', '« Le fait de prétendre la divinité pour un astre est de la mécréance par unanimité, et la mécréance est impossible par unanimité concernant les prophètes ».', '', 'Dans son célèbre Tafsîr (exégèse) connu sous le nom de « At-Tafsîrou l-Kabîr » (tome 13 page 50 à 52 de cette édition) lors d’une longue explication des versets contenants les passages { فَلَمَّا جَنَّ عَلَيۡهِ ٱلَّيۡلُ رَءَا كَوۡكَبً۬ا‌ۖ قَالَ هَـٰذَا رَبِّى‌ۖ} (Falammâ janna ‘alayhi l-laylou ra-â kawkaban qâla hâdhâ rabbî) et : { بَازِغًۭا قَالَ هَٰذَا رَبِّى فَلَمَّا رَءَا ٱلْقَمَرَ } (Falammâ ra-a l-qamara bâzighan qâla hâdhâ rabbî) et : {فَلَمَّا رَءَا ٱلشَّمۡسَ بَازِغَةً۬ قَالَ هَـٰذَا رَبِّى} (Falammâ ra-a ch-chamssa bâzighatan qâla hâdhâ rabbî) [Soûrat Al-An’âm/76-77-78] , l’Imâm Fakhrou d-Dîn Ar-Râzi a dit :
Puis il dit dans le même tome en page 52 :', 'abdallah penot, abraham, accord, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'أن القول بربوبية النجم كفر بالإجماع والكفر غير جائز بالإجماع على الأنبياء');

-- source: https://islamsunnite.net/limam-ar-razi-explique-la-parole-hadha-rabbi-du-prophete-ibrahim-lors-de-sa-vision-de-lastre-de-la-lune-et-du-soleil/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les prophètes sont préservé de la mécréance', 'Unanimité', 'لا يجوز أن يقال : إن إبراهيم – عليه السلام – قال على سبيل الجزم : هذا ربي', 'Il n’est pas permis de dire qu’Ibrâhîm (عليه السلام) aurait dit à titre d’affirmation [concernant l’astre, la lune et le soleil] : ceci est mon seigneur.', '', 'Puis il dit :', 'abdallah penot, abraham, accord, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'لا يجوز أن يقال : إن إبراهيم – عليه السلام – قال على سبيل الجزم : هذا ربي');

-- source: https://islamsunnite.net/limam-ar-razi-explique-la-parole-hadha-rabbi-du-prophete-ibrahim-lors-de-sa-vision-de-lastre-de-la-lune-et-du-soleil/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les prophètes sont préservé de la mécréance', 'Unanimité', 'نقول قوله : ( هذا ربي ) معناه هذا ربي في زعمكم واعتقادكم', '« Nous disons que sa parole « hâdhâ rabbî » a pour sens : est-ce là mon seigneur selon votre prétention et votre croyance !? »', '', 'Puis il dit également :', 'abdallah penot, abraham, accord, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'نقول قوله : ( هذا ربي ) معناه هذا ربي في زعمكم واعتقادكم');

-- source: https://islamsunnite.net/limam-ar-razi-explique-la-parole-hadha-rabbi-du-prophete-ibrahim-lors-de-sa-vision-de-lastre-de-la-lune-et-du-soleil/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les prophètes sont préservé de la mécréance', 'Unanimité', 'أن المراد منه الاستفهام على سبيل الإنكار إلا أنه أسقط حرف الاستفهام', 'Ce qui en est visé est l’interrogation dans le sens de la négation (une phrase interro-négative), mais la particule d’interrogation n’est pas mentionnée', '', 'Informations utiles :
– Chaykh al-Islâm, l’Imâm, le Moufassir –exégète– Aboû ‘Abdoul-Lâh Mouhammad ‘Oumar Al-Houçayn Fakhrou d-Dîn Ar-Râzi est né en 543 et il est décédé en 606 de l’hégire (rahimahou l-Lâh) c’est-à-dire il y a plus de 830 ans. Il était du madh-hab (école de jurisprudence) de l’Imam Ach-Châfi’i. C’est un savant de référence et son oeuvre « At-Tafsîrou l-Kabîr » est l’un des tafsîr les plus célèbres et les plus répandus. Certains savants, comme l’Imâm As-Souyoûti, l’ont désigné comme le moujaddid du 6ème siècle de l’hégire (c’est-à-dire celui qui revitalise la science de la religion).
Ibnou l-Athîr a dit de lui : « Il était le savant de ce bas-monde à son époque » [Al-Kâmil]
Le Chaykh Tâjou d-Dîn As-Soubki a dit : « Il était surnommé Chaykhou l-Islâm » [Tabaqâtou ch-Châfi’iyyah]
– Ici, il mentionne une règle qui est que les Prophètes sont préservé de la mécréance et ceci dans l’absolue, c’est-à-dire avant de recevoir la Prophétie tout comme après avoir reçu la Prophétie. Et ce jugement fait l’objet de l’unanimité.
L’Imâm Al-Baydâwi a dit : « Il n’est pas possible pour les prophètes la mécréance dans l’absolu » [Dans son tafsîr] ;
L’Imâm An-Naçafi a dit : « La mécréance est impossible pour les prophètes » [Dans son tafsîr].
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah]
– Ensuite il explique la parole du prophète Ibrâhîm (‘alayhi s-salâm) : { هَـٰذَا رَبِّى} à trois reprises, en expliquant qu’il est impossible que le prophète Ibrâhîm ait considéré l’astre, la lune et le soleil comme seigneur, mais que sa parole signifie plutôt : « Est-ce là mon seigneur comme vous le prétendez ?! » C’est-à-dire qu’il s’agit là d’une phrase interro-négative.
– Le prophète Ibrâhîm (عليه السلام) n’a jamais eu pour croyance que cet astre, la lune ou le soleil est son Dieu et qu’il mériterait l’adoration.
– Ainsi nous disons que la parole du prophète Ibrâhîm au sujet de l’astre lorsqu’il l’a vu : { هَـٰذَا رَبِّى} (hâdhâ Rabbî) c’est-à-dire : « Est-ce lui mon Seigneur ?! » a été dite à titre d’interrogation pour nier. C’est comme s’il avait dit : Est-ce lui mon Seigneur comme vous le prétendez ?!! Par ailleurs, lorsque cet astre s’est couché, il a dit : {لا أُحِبّ الآفِلين} (lâ ouhibbou l-âfilîn) c’est-à-dire qu’il n’est pas valable que cet astre ait la divinité, comment avez-vous donc cette croyance ?! Comme ils n’ont pas compris ce qu’il visait mais qu’ils ont persisté sur ce quoi ils étaient, il a dit la même chose quand il a vu la lune. N’ayant pas obtenu ce qu’il souhaitait, il leur manifesta son innocence de leur adoration et qu’il n’est pas valable d’attribuer la divinité à la lune. Comme il n’a pas obtenu ce qu’il attendait d’eux, il a dit lorsque le soleil est apparu {هذا ربي هذا اكبر } ce qui a pour sens : » Est-ce celui là le plus grand qui est mon Seigneur ?! » c’est-à-dire selon votre prétention. Mais il n’a pas vu d’eux ce qu’il recherchait. Il a alors perdu espoir qu’ils comprennent ce qu’il voulait qu’ils comprennent, c’est-à-dire que ces trois astres ne méritent pas d’être adorés et il s’est innocenté de leur adoration d’autre que Allâh. Ensuite, il n’est pas resté avec eux mais il est parti en Palestine où il résida et y décéda.
– Concernant Ibrâhîm lui-même, il savait bien avant cela que la divinité n’est attribuable qu’à Allâh, preuve en est Sa parole ta’âlâ : {ولقد آتينا إبراهيم رشده من قبل} (wa laqad âtaynâ Ibrâhîma rouchdahou min qabl) qui signifie : « Nous avions accordé la bonne guidée à Ibrâhîm auparavant » [Soûrat Al-Anbiyâ /51].
– Il est ainsi désolant de trouver dans des ouvrages présentés comme étant des traductions du Qour-ân, des formulations qui viennent contredire l’unanimité des musulmans, et l’explication des spécialistes de l’exégèse du Qour-ân. Le prophète Ibrâhîm n’a jamais dit en voyant l’astre, la lune et le soleil : « Voici mon seigneur ! ». Croire en cela est un égarement manifeste. Et c’est cet égarement que l’on retrouve dans le livre de Sayyid Qoutb intitulé « At-Taswîrou l-fanni fi l-Qour-ân », en effet il a prétendu qu’Ibrâhîm aurait pensé que l’astre, la lune et le soleil étaient son seigneur.', 'abdallah penot, abraham, accord, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'أن المراد منه الاستفهام على سبيل الإنكار إلا أنه أسقط حرف الاستفهام');

-- source: https://islamsunnite.net/limam-al-jouwayni-le-prophete-ne-sest-pas-rapproche-physiquement-de-allah-lors-de-lascension/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas concerné par la proximité physique.', 'Qourtoubi', 'وقد قال الإمام أبو المعالي (الجويني) : إن محمداً صلى الله عليه وسلم ليلة الإسراء لم يكن بأقرب إلى الله عز وجل من يونس بن متى حين كان في بطن الحوت', 'L’Imâm Aboû Ma’âli (Al-Jouwayni) a dit : Certes [le prophète] Mouhammad (صلى الله عليه وسلم), lors de la nuit de al-Isrâ (c’est-à-dire lors du voyage nocturne et de l’ascension), n’a pas été plus proche [physiquement] de Allâh ‘azza wa jall que [le prophète] Yoûnous Ibnou Matâ lorsqu’il était dans le ventre de la baleine', '', 'Dans son célèbre tafsîr, lors de l’explication du verset 4 de Soûrat Al-Hadîd, l’Imâm Al-Qourtoubi a dit :
Informations utiles :
– Le Moufassir (exégète) Mouhammad Ibnou Ahmad Al-Ansâri Al-Qourtoubi est décédé en 671 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 760 ans. Il est du madh-hab (Ecole de jurisprudence) de l’Imâm Mâlik. Son tafsîr « Al-Jâmi’ou li Ahkâmi l-Qour-ân » est une référence incontournable.
–Imâm Al-Haramayn (des deux Haram) Abou l-Ma’âli ‘Abdou l-Malik Ibnou ‘Abdi l-Lâh Al-Jouwayni, est né en 419 et il est décédé en 478 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 950 ans. C’est un grand savant reconnu par toute la communauté musulmane. Il était surnommé « Imâm al-Haramayn » c’est-à-dire l’Imâm des deux enceintes sacrées de La Mecque et Médine. Il était du madh-hab (Ecole de jurisprudence) de l’Imâm Ach-Châfi’i et il fût l’un des chouyoûkh de l’Imâm Aboû Hâmid Al-Ghazâli (رحمه الله).
Le Chaykh Aboû Is-hâq Ach-Chîrâzi a fait son éloge en lui disant : « Oh toi qui est profitable aux gens d’orient et d’occident, certes les premiers comme les derniers ont profité de ta science ». Il lui a dit également : « Tu es en ce jour, l’Imâm des Imâms » [Dhayl Târîkh Baghdâd]
‘Abdou l-Ghaffâr Al-Fâriçi a dit de lui : « Imâm Al-Haramayn (des deux Haram), la fierté de l’Islâm, l’Imâm de la Oummah dans l’absolue, le docte dans la charî’ah, celui qui a réunis le statut d’Imâm en orient et en occident » [Al-Mountakhab]
Le Hâfidh Ibn Najjâr Al-Baghdâdi a dit à son sujet : « Il est un Faqîh (spécialiste de la jurisprudence) Chafi’ite, il est surnommé Imâm Al-Haramayn […] il est l’Imâm des fouqahâ (spécialistes de la jurisprudence) d’orient et d’occident […] il est parvenu au degré de l’ijtihâd» [Dhayl Târîkh Baghdâd]
‘Abdou l-Lâh Ibn Yoûçouf Al-Jarjâni a dit : « Abou l-Ma’âli Al-Jouwayni est l’Imâm de son temps » [Dhayl Târîkh Baghdâd]
– Ici, il dit que lors du voyage nocturne et de l’ascension, le prophète Mouhammad (صلى الله عليه وسلم) ne s’est pas rapproché physiquement de Allâh. Ainsi le prophète Mouhammad (صلى الله عليه وسلم) n’était pas plus proche de Allâh lors de son ascension, que le prophète Younoûs (عليه السلام) lorsqu’il était dans le ventre de la baleine dans les profondeurs de la mer. En effet, Allâh n’est pas concerné par l’endroit, la direction et la notion de distance.
– Cette parole de l’Imâm Al-Jouwayni a également été rapportée par d’autres savants, tel que l’Imâm Al-Kawthari.
– L’Imâm Ibnou Abî Jamrah (m.699 H.) a tenu des propos similaires, en disant : « Ainsi, [le prophète] Mouhammad (‘alayhi s-Salâm) lorsqu’il était au-dessus des sept cieux [lors de l’ascension] et [le prophète] Yoûnous Ibnou Matâ lorsqu’il était dans les profondeurs de la mer [lorsqu’il a été avalé par la baleine], l’un n’était pas plus proche physiquement de Allâh que l’autre [car Allâh n’est pas concerné par la proximité physique]. Et si Allâh ‘azza wa jall serait concerné par l’endroit et le temps alors le prophète [Mouhammad] (salla l-Lâhou ‘alayhi wa sallam) aurait été plus proche de Lui, il est ainsi confirmé par cela la négation de l’établissement, et de la direction au sujet de Allâh Jalla Jalâlouh » [Dans son livre Bahjatou n-Noufoûs]
– L’Imâm Al-Jouwayni a dit : « La voie de tous les gens de la vérité sans exception c’est que Allâh soubhânahou wa ta’âlâ est exempt de la localisation et de la spécification par les directions ». [ Dans son livre Al-Irchâd ]
– Et il a dit également : « Al-Bâri (Le Créateur : c’est-à-dire Allâh) soubhânahou wa ta’âlâ n’a pas besoin d’autrui, Il est exempt d’avoir besoin d’un endroit où S’incarner, ou d’un endroit qui Le porte ». [ Dans son livre Al-Irchâd ]
– L’Imâm Al-Jouwayni a dit aussi : « Sachez que la voie des gens de la vérité : c’est [de croire] que Allâh (Ar-Rabb) soubhânah est exempt d’occuper un espace, et Il est exempt d’être spécifié par la direction » [ Dans son livre Ach-Châmil fî Ousoûli d-Dîn ]
– La proximité et l’éloignement par la distance est impossible au sujet de Allâh. Celui qui est au sommet de la montagne ou même les anges qui portent le Trône, et celui qui est tout en bas de la vallée sont équivalents par rapport à Allâh. Car Allâh ta’âlâ est sans endroit, Il exempt de la proximité et de l’éloignement physique, c’est-à-dire la proximité et l’éloignement par la distance.
– Nombreux sont les savants qui ont confirmé cela, parmi eux :
L’Imâm Aboû Hanîfah [ Dans son livre Al-Fiqhou l-Akbar ]
L’Imâm Al-Qourtoubi lorsqu’il a expliqué le hadîth « أقرب ما يكون العبد من ربِّه وهو ساجد» [ Rapporté par As-Souyoûti dans son commentaire des Sounan de An-Naçâ-i ]
Le Loughawi Ibn Mandhoûr [ Dans son célèbre dictionnaire Liçânou l-‘Arab ]
Le Chaykh Al-Kawthari qui a dit : « Al-qourb (le rapprochement) envers Allâh n’est pas en terme de distance, et al-bou’d (l’éloignement) envers Lui n’est pas en terme de distance» [Maqalâtou l-Kawthari] .
Le Chaykh Ibrâhîm Al-Mârighni Az-Zaytoûni Al-Mâliki [ Dans son livre Ach-Chadharâtou dh-Dhahabiyyah ]
Le Chaykh Al-‘Azzâmi Al-Mâliki qui mentionne l’unanimité [ Dans son livre Fourqânou l-Qour-ân ]
Et beaucoup d’autres.
– Les savants ont dit également que le fait de croire que le prophète (صلى الله عليه وسلم), lors de son ascension aux cieux, se serait rendu dans un endroit dans lequel il y aurait Allâh, cela est de la mécréance. [ Voir à ce sujet la parole du Chaykh As-Sâwi : ici ].
– L’Imâm Al-Jouwayni a lui-même dit : « Attribuer la direction à Allâh est de la mécréance manifeste » [ Dans son livre Al-Irchâd ]
– Retrouvez d’autres paroles de savants concernant le fait qu’ attribuer l’endroit ou la direction à Allâh est de la mécréance : ici .
– Quant aux versets { ثُمَّ دَنَا فَتَدَلَّىٰ فَكَانَ قَابَ قَوۡسَيۡنِ أَوۡ أَدۡنَىٰ} [Soûrat An-Najm / 8-9] ce qui a pour sens : « Ensuite il s’est rapproché et il fut à deux coudées ou moins » les gens de science ont dit qu’il s’agit là de Jibril (عليه السلام). [ Retrouvez ici la parole de ‘Â-ichah (رضي الله عنها) ]', 'agrément, ahlou s-sounnah, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وقد قال الإمام أبو المعالي (الجويني) : إن محمداً صلى الله عليه وسلم ليلة الإسراء لم يكن بأقرب إلى الله عز وجل من يونس بن متى حين كان في بطن الحوت');

-- source: https://islamsunnite.net/ibn-hibban-explique-hadith-nouzoul-descente-salaf/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Explication du hadîth du nouzoûl', 'Les Chafi''ites', 'يَنْزِلُ – يعني الله – بِلا آلَةٍ ، وَلا تَحَرُّكٍ ، وَلا انْتِقَالٍ مِنْ مَكَانٍ إِلَى مَكَانٍ […] وَكَذَلِكَ يَنْزِلُ كَيْفَ يَشَاءُ بِلا آلَةٍ مِنْ غَيْرِ أَنْ يُقَاسَ نُزُولُهُ إِلَى نُزُولِ الْمَخْلُوقِينَ ، كَمَا يُكَيَّفُ نُزُولُهُمْ ، جَلَّ رَبُّنَا وَتَقَدَّسَ مِنْ أَنْ تُشَبَّهَ صِفَاتُهُ بِشَيْءٍ مِنْ صِفَاتِ الْمَخْلُوقِينَ', 'Yanzilou (c’est-à-dire Allâh) sans appareil, sans mouvement, ni déplacement d’un endroit à un autre.', '', 'Dans son recueil de hadîth connu sous le nom de « Sahîh Ibnou Hibbân » (tome 3 page 201 de cette édition), le Hâfidh Ibnou Hibbân a dit :
Puis plus loin il dit également : « Ainsi [Allâh] « yanzilou » comme Il le veut sans appareil et sans similitude entre Son nouzoûl et la descente des créatures, en effet leur descente est concernée par le comment, et notre Seigneur est totalement exempt du fait que Ses attributs ressemblent aux attributs des créatures. »
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth) Aboû Hâtim Mouhammad Ibnou Hibbân Ibnou Ahmad At-Tamîmi Al-Bousti, est un savant du Salaf, il est né en 270 et il est décédé en 354 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 1080 ans. Il est un grand spécialiste de la science du Hadîth. Il est l’auteur du « Sahîh » réputé sous le nom de « Sahîh Ibn Hibbân ». Il était du madh-hab (Ecole de jurisprudence) de l’Imâm Ach-Châfi’i.
– Ici, ce grand savant du Salaf explique le Hadîth connu sous le nom de “Hadîth du nouzoûl”. Bien qu’il ne donne pas d’interprétation précise, Il dit clairement que le nouzoûl de Allâh n’est pas une descente, qu’il n’est pas un mouvement, ni un déplacement et que Allâh est exempt du comment (kayf). Ainsi nous croyons que Allâh a pour attribut le nouzoûl sans faire de similitude avec les attributs des créatures et sans en comprendre que Allâh serait concerné par la descente.
– Le comment (al-kayf) : c’est ce par quoi on décrit les créatures, c’est-à-dire les dimensions, le début, la fin, la couleur, l’endroit, la direction, la forme, la position assise, la proximité, le mouvement, le déplacement, le changement et tout ce qui fait partie des attributs des créatures. Allâh est exempt de tout cela.
– Et cette position de l’Imâm Ibn Hibbân fait l’objet de l’unanimité dans la communauté musulmane. Certains grands savants ayant même donné une interprétation détaillée. Mais une fois de plus les corporalistes wahhabites (pseudo-salafi) se sont singularisé et se sont opposé aux gens de la Sounnah, en prétendant que le nouzoûl de Allâh serait une descente véritable [ voir le livre d’Ibn ‘Outhaymîn le wahhabite : ici ]
– Retrouvez d’autres paroles de savants au sujet le Hadîth An-Nouzoûl : ici .
– Retrouvez d’autres paroles de savants concernant le fait que Allâh n’est pas concerné par le déplacement et le mouvement : ici .', '3oulama, ahlou s-sounnah, ahlou sounnah, ahlu sunna'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'يَنْزِلُ – يعني الله – بِلا آلَةٍ ، وَلا تَحَرُّكٍ ، وَلا انْتِقَالٍ مِنْ مَكَانٍ إِلَى مَكَانٍ […] وَكَذَلِكَ يَنْزِلُ كَيْفَ يَشَاءُ بِلا آلَةٍ مِنْ غَيْرِ أَنْ يُقَاسَ نُزُولُهُ إِلَى نُزُولِ الْمَخْلُوقِينَ ، كَمَا يُكَيَّفُ نُزُولُهُمْ ، جَلَّ رَبُّنَا وَتَقَدَّسَ مِنْ أَنْ تُشَبَّهَ صِفَاتُهُ بِشَيْءٍ مِنْ صِفَاتِ الْمَخْلُوقِينَ');

-- source: https://islamsunnite.net/qadi-iyad-rapporte-unanimite-chatiment-mecreant-non-allege-au-dela/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le châtiment du mécréant n’est pas allégé dans l’au-delà.', 'Unanimité', 'الإجماع على أن الكفار لا تنفعهم أعمالهم , ولا يثابون عليها بنعيم ولا بتخفيف عذاب', 'Il y a unanimité sur le fait que les mécréants ne tireront pas profit de leurs [bonnes] œuvres [dans l’au-delà], ils n’en obtiendrons aucune félicité, et aucune diminution du châtiment', '', 'Dans son commentaire du Sahîh Mouslim « Ikmâlou l-mou’lim bi fawâ-id Mouslim » (Tome 1 page 597 de cette édition) Al-Qâdî ‘Iyâd a dit :
Informations utiles :
– Le Qâdî (juge) Abou l-Fadl ‘Iyâd Ibnou Moûçâ Ibnou ‘Iyâd al-Yahsoubi connu sous le nom de Qâdî ‘Iyâd, est un grand savant Malikite. Il est né en 476 à Ceuta et il est décédé en 544 de l’Hégire à Marrakech (Maroc) (رحمه الله) c’est-à-dire il y a plus de 950 ans.
Adh-Dhahabi a dit de lui : « L’Imâm, Al-‘Allâmah (l’illustre savant), le Hâfidh (le spécialiste de la science du hadîth), celui qui n’a pas de pareil, Chaykhou l-Islâm, le Qâdî (Juge) » et il a dit également : « Ses ouvrages sont précieux » [Siyar A’lâmi n-Noubalâ]
Ibn Bachkwâl a dit à son sujet : « Il était parmi les gens de science qui sont intelligents et qui ont une bonne compréhension » [Siyar A’lâmi n-Noubalâ]
Ibn Khallikân a dit de lui : « Il est l’Imâm du hadîth de son temps, et le plus connaisseur des gens de ses sciences, de la grammaire, la langue, la parole des arabes, leurs histoires, et les généalogies.» [Wafayâtou l-A’yân]
– Ici, il mentionne l’unanimité des musulmans sur le fait que le mécréant qui meurt sur cet état, alors les bonnes oeuvres qu’il a fait dans ce bas-monde ne lui seront d’aucune utilité. Il n’en tirera aucune félicité, et elle ne seront pas non plus une cause pour que son châtiment soit diminué. Il précise à la suite de cette citation qu’en fonction de leurs actes, certains mécréants auront un châtiment plus intense que d’autres.
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah]
– Cette unanimité est basée sur de nombreux versets du Qour-ân honoré, telle que la parole de Allâh ta’âlâ :', 'abo lahab, abou labab, abu lahab, akhira'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'الإجماع على أن الكفار لا تنفعهم أعمالهم , ولا يثابون عليها بنعيم ولا بتخفيف عذاب');

-- source: https://islamsunnite.net/prophete-enseigna-tawassoul-compagnons-hadith-rapporte-at-tabarani/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le prophète a enseigné le tawassoul', 'Tabarani', '« أن رجلاً كان يختلف إلى عثمان بن عفان في حاجة له فكان عثمان لا يلتفت إليه ولا ينظر في حاجته (أي لنسيانه لها كما يأتي) فلقى عثمان بن حنيف فشكا ذلك إليه فقال له عثمان بن حنيف:', '', '', 'Dans son recueil de Hadîth « Mou’jam As-Saghîr » (pages 183 et 184 de cette édition) l’Imâm At-Tabarâni rapporte le hadîth suivant d’après le compagnon ‘Outhmân Ibn Hounayf :', '''outhmân ibnou ''affân, al mou''jam as saghir, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« أن رجلاً كان يختلف إلى عثمان بن عفان في حاجة له فكان عثمان لا يلتفت إليه ولا ينظر في حاجته (أي لنسيانه لها كما يأتي) فلقى عثمان بن حنيف فشكا ذلك إليه فقال له عثمان بن حنيف:');

-- source: https://islamsunnite.net/prophete-enseigna-tawassoul-compagnons-hadith-rapporte-at-tabarani/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le prophète a enseigné le tawassoul', 'Tabarani', 'ائت الميضأة فتوضأ ثم ائت المسجد فصل فيه ركعتين، ثم قل: اللهم إني أسألك وأتوجه إليك بنبينا محمد صلى الله عليه وسلم نبي الرحمة يا محمد إني أتوجه بك إلى ربي فيقضي لي حاجتي، وتذكر حاجتك، ورح إلي حين أروح معك.', '', '', '', '''outhmân ibnou ''affân, al mou''jam as saghir, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ائت الميضأة فتوضأ ثم ائت المسجد فصل فيه ركعتين، ثم قل: اللهم إني أسألك وأتوجه إليك بنبينا محمد صلى الله عليه وسلم نبي الرحمة يا محمد إني أتوجه بك إلى ربي فيقضي لي حاجتي، وتذكر حاجتك، ورح إلي حين أروح معك.');

-- source: https://islamsunnite.net/prophete-enseigna-tawassoul-compagnons-hadith-rapporte-at-tabarani/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le prophète a enseigné le tawassoul', 'Tabarani', 'فانطلق الرجل فصنع ما قال له ثم أتى باب عثمان فجاء البواب حتى أخذ بيده فأدخله على عثمان بن عفان فأجلسه معه على الطنفسة وقال: حاجتك؟ فذكر حاجته فقضاها له ثم قال له: ما ذكرت حاجتك حتى كانت هذه الساعة، وقال: ما كانت لك من حاجة فائتنا،', '', '', '', '''outhmân ibnou ''affân, al mou''jam as saghir, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فانطلق الرجل فصنع ما قال له ثم أتى باب عثمان فجاء البواب حتى أخذ بيده فأدخله على عثمان بن عفان فأجلسه معه على الطنفسة وقال: حاجتك؟ فذكر حاجته فقضاها له ثم قال له: ما ذكرت حاجتك حتى كانت هذه الساعة، وقال: ما كانت لك من حاجة فائتنا،');

-- source: https://islamsunnite.net/prophete-enseigna-tawassoul-compagnons-hadith-rapporte-at-tabarani/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le prophète a enseigné le tawassoul', 'Tabarani', 'ثم إن الرجل خرج من عنده فلقي عثمان بن حنيف فقال له: جزاك الله خيرًا ما كان ينظر في حاجتي ولا يلتفت إلي حتى كلمته فيّ،', '', '', '', '''outhmân ibnou ''affân, al mou''jam as saghir, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ثم إن الرجل خرج من عنده فلقي عثمان بن حنيف فقال له: جزاك الله خيرًا ما كان ينظر في حاجتي ولا يلتفت إلي حتى كلمته فيّ،');

-- source: https://islamsunnite.net/prophete-enseigna-tawassoul-compagnons-hadith-rapporte-at-tabarani/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le prophète a enseigné le tawassoul', 'Tabarani', 'فقال عثمان بن حنيف: والله ما كلمته ولكن شهدت رسول الله صلى الله عليه وسلم وأتاه رجل ضرير فشكا إليه ذهاب بصره ،', '', '', '', '''outhmân ibnou ''affân, al mou''jam as saghir, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فقال عثمان بن حنيف: والله ما كلمته ولكن شهدت رسول الله صلى الله عليه وسلم وأتاه رجل ضرير فشكا إليه ذهاب بصره ،');

-- source: https://islamsunnite.net/prophete-enseigna-tawassoul-compagnons-hadith-rapporte-at-tabarani/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le prophète a enseigné le tawassoul', 'Tabarani', 'فقال له النبي صلى الله عليه وسلم: « أو تصبر؟ » فقال: يا رسول الله إنه ليس لي قائد وقد شق علي، فقال له النبي صلى الله عليه وسلم: « ائت الميضأة فتوضأ ثم صل ركعتين ثم ادع بهذه الدعوات » ،', '', '', '', '''outhmân ibnou ''affân, al mou''jam as saghir, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فقال له النبي صلى الله عليه وسلم: « أو تصبر؟ » فقال: يا رسول الله إنه ليس لي قائد وقد شق علي، فقال له النبي صلى الله عليه وسلم: « ائت الميضأة فتوضأ ثم صل ركعتين ثم ادع بهذه الدعوات » ،');

-- source: https://islamsunnite.net/prophete-enseigna-tawassoul-compagnons-hadith-rapporte-at-tabarani/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le prophète a enseigné le tawassoul', 'Tabarani', 'فقال عثمان بن حنيف: فوالله ما تفرقنا وطال بنا الحديث حتى دخل علينا الرجل كأنه لم يكن به ضرر قط.', '', '', '', '''outhmân ibnou ''affân, al mou''jam as saghir, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فقال عثمان بن حنيف: فوالله ما تفرقنا وطال بنا الحديث حتى دخل علينا الرجل كأنه لم يكن به ضرر قط.');

-- source: https://islamsunnite.net/prophete-enseigna-tawassoul-compagnons-hadith-rapporte-at-tabarani/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le prophète a enseigné le tawassoul', 'Tabarani', '[وقد قال الطبر اني : ] والحديث صحيح »', '« Un homme avait l’habitude d’aller voir ‘Outhmân Ibnou ‘Affân (رضي الله عنه) pour une requête, mais ‘Outhmân ne lui prêtait pas attention et n’étudiait pas son affaire (par oublie comme nous allons le voir). Il a alors rencontré ‘Outhmân Ibnou Hounayf et s’est plaint à lui à ce sujet. Ce dernier lui dit alors :', '', '» Va à l’endroit où l’on fait les ablutions, fais tes ablutions puis accomplis deux rak’ah à la mosquée, ensuite, dis : « Allâhoumma innî as-alouka wa atawajjahou ilayka bi-nabiyyinâ Mouhammad (صلى الله عليه وسلم) nabiyyi r-Rahmah. Ya Mouhammad innî atawajjahou bika ilâ rabbî fa-yaqdî lî hâjatî » [ce qui a pour sens : « Ô Allâh, je Te demande et je T’adresse mon invocation par le degré de notre prophète Mouhammad, le prophète de la miséricorde. Ô Mouhammad , j’adresse mon invocation par ton degré à mon Seigneur concernant mon affaire pour qu’elle me soit réglée »]. Puis mentionne ta demande, va ensuite chez lui, j’irai avec toi (parler à ‘Outhmân Ibnou ‘Affân) »
Cet homme fit alors ce qu’il lui avait dit, puis se présenta à la porte de ‘Outhmân. C’est alors que le portier vint le prendre par la main, et le fit entrer auprès de ‘Outhmân Ibnou ‘Affân qui le fit asseoir avec lui sur le tapis et lui dit alors : De quoi as-tu besoin ? Il lui a cité son affaire, ‘Outhmân la lui régla et lui dit : « Je ne me suis rappelé de ton affaire que maintenant ». Et il ajouta : « Reviens me voir si tu as d’autres soucis. »
Puis l’homme sortit de chez lui, il alors rencontra ‘Outhmân Ibnou Hounayf et lui dit : Que Allâh te rétribue en bien, il (‘Outhmân Ibnou ‘Affân) n’a considéré mon affaire et ne s’est occupé de moi qu’après que tu lui as parlé de moi.
Alors, ‘Outhmân Ibnou Hounayf lui dit : Par Allâh, je ne lui ai pas parlé de toi. Mais voici ce dont j’ai été témoin lorsqu’un aveugle est venu au Messager de Allâh (صلى الله عليه وسلم) se plaindre à lui de la perte de sa vue.
Le Prophète (صلى الله عليه وسلم) lui a dit [ce qui a pour sens : ] « ne souhaites-tu pas plutôt patienter ? ». L’homme lui dit alors : Ô Messager de Allâh, je n’ai personne pour me guider et cela est très difficile pour moi. Il lui dit alors [ce qui a pour sens : ] Va à l’endroit où l’on fait les ablutions, fais tes ablutions puis accomplis deux rak’ah, puis dis ces paroles (c’est-à-dire l’invocation mentionnée précédemment …). L’homme aveugle fît ainsi.
‘Outhmân Ibnou Hounayf a dit : Par Allâh, nous ne nous étions pas séparés et l’assemblée n’avait pas duré longtemps que l’homme est revenu et avait recouvré la vue, comme s’il n’avait jamais eu de handicap.
[Puis At-Tabarâni ajoute :] le hadîth est sahîh.»
Informations utiles :
– L’Imâm du salaf, le Hâfidh (spécialiste de la science du hadîth), le Moufassir (spécialiste de l’exégèse du Qour-ân) Abou l-Qâçim Soulaymân Ibnou Ahmad Ibnou Ayyoûb At-Tabarâni est né en 260 et il est décédé en 360 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 1000 ans. L’Imâm At-Tabarâni était le plus réputé des gens de son époque dans la science du hadîth et dans sa maîtrise. Il connaissait le tafsîr (Exégèse) et il était spécialiste de jurisprudence. Il est l’auteur du grand recueil de hadîth « mou’jam al-Kabîr » et de nombreux autres ouvrages de références. Retrouvez sa biographie : ici .
– Ce Hadîth a été rapporté par l’Imâm At-Tabarâni dans son Mou’jam As-Saghîr et aussi dans son Mou’jam Al-Kabîr. Et il le déclara sahîh (authentique) dans les deux ouvrages. Il a également été jugé sahîh (authentique) par de nombreux autres savants du hadîth tels que :
le Hâfidh At-Tirmidhi,
le Hâfidh An-Naçâ-i,
le Hâfidh Ibnou Hibbân,
le Hâfidh Al-Bayhaqi,
le Hâfidh Al-Hâkim,
le Hâfidh Aboû Nou’aym,
le Hâfidh Ibnou Khouzaymah,
le Hâfidh Al-Moundhiri,
le Hâfidh Al-Haythami,
le Hâfidh An-Nawawi,
le Hâfidh Ibnou Hajar Al-‘Asqalâni,
le Hâfidh As-Souyoûti
Le Hâfidh Al-Maqdisi
et d’autres…
Ibn Taymiyah et Adh-Dhahabi ont également confirmé son caractère sahîh (authentique).
– L’Imâm Al-Kawthari a dit à ce sujet : « Quant aux preuves [concernant le tawassoul] dans la Sounnah, il y a le hadîth de ‘Outhmân Ibnou Hounayf (رضي الله عنه) et il y a dedans la parole : « Ô Mouhammad, j’adresse mon invocation par ton degré à mon Seigneur ». C’est ainsi que le Messager (صلى الله عليه وسلم) a enseigné à l’homme aveugle de faire l’invocation. Et il y a dedans le tawassoul par le biais d’une personne. […] Un groupe de Houffâdh (plu. Hâfidh) ont jugé authentique (sahîh) ce hadîth » . [Dans son livre Mahqou t-Taqawwoul fî Mas-alati t-Tawassoul]
– Ce hadîth nous enseigne que le prophète (صلى الله عليه وسلم) a lui-même enseigné le tawassoul à sa communauté. C’est le prophète (صلى الله عليه وسلم) qui a enseigné à ce compagnon de dire en son absence [ce qui a pour sens ] : « Ô Allâh, je Te demande et je T’adresse mon invocation par le degré de notre prophète Mouhammad » et c’est également le prophète (صلى الله عليه وسلم) qui lui a enseigné de dire en son absence [ce qui a pour sens ] : « Ô Mouhammad, j’adresse mon invocation par ton degré à mon Seigneur » .
– De plus ce hadîth nous démontre que les compagnons œuvraient conformément à cet enseignement, car le compagnon aveugle a pratiqué le tawassoul comme le prophète (صلى الله عليه وسلم) le lui a enseigné et le compagnon ‘Outhmân Ibn Hounayf a enseigné cela à cet homme qui avait besoin de régler son affaire, après la mort du prophète (صلى الله عليه وسلم).
– Le tawassoul est le fait de demander à Allâh l’obtention d’un profit ou l’empêchement d’une nuisance et ce, par la mention du nom d’un prophète ou d’un saint, par honneur pour celui par lequel le tawassoul est fait. Faire le tawassoul est permis en leur présence et en leur absence tout comme l’indique les preuves selon la Loi de l’Islâm. Le tawassoul ne constitue donc pas une adoration pour autre que Allâh.
– Ce hadîth est une réplique aux égarés qui prétendent que tous ceux qui disent : «Ya Mouhammad » après la mort du Messager (صلى الله عليه وسلم) ou bien en son absence, sont des mécréants associateurs. Par leur parole infondée ces gens là ont déclaré mécréant le prophète, plusieurs compagnons, des grands savants de la communauté et un grand nombre de musulmans.
– Retrouvez d’autres citations au sujet du tawassoul et du tabarrouk : ici .', '''outhmân ibnou ''affân, al mou''jam as saghir, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '[وقد قال الطبر اني : ] والحديث صحيح »');

-- source: https://islamsunnite.net/ibn-mandhour-explique-nom-allah-an-nour/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas une lumière', 'Abou Mansour Al-Azhari', 'نور: في أَسماء الله تعالى: النُّورُ؛ قال ابن الأَثير: هو الذي يُبْصِرُ بنوره ذو العَمَاية ويَرْشُدُ بهداه ذو الغَوايَةِ، وقيل: هو الظاهر الذي به كل ظهور، والظاهر في نفسه المُظْهِر لغيره يسمى نوراً. قال أَبومنصور: والنُّور من صفات الله عز وجل، قال الله عز وجل: الله نُورُ السموات والأَرض؛ قيل في تفسيره: هادي أَهل السموات والأَرض، وقيل: مَثل نوره كمشكاة فيها مصباح؛ أَي مثل نور هداه في قلب المؤمن كمشكاة فيها مصباح.', '« Noûr : Parmi les Noms de Allâh ta’âlâ : An-Noûr ; Ibnou l-Athîr a dit [que la signification est] : Il est Celui par lequel voit par Sa lumière celui qui est dans l’aveuglement et qui est guidé par Sa guidée celui qui est dans l’égarement. […]', '', 'Dans son célèbre dictionnaire « Liçânou l-‘Arab» , le Loughawi Ibn Mandhoûr a dit :
Aboû Mansoûr [Al-Azhari] a dit : Et «An-Noûr» compte parmi les attributs de Allâh ‘azza wa jall. Allâh ta’âlâ dit : {Allâhou Noûrou s-Samâwâti wa-l Ard} Il a été dit concernant son tafsîr : Celui Qui guide les gens des cieux et de la terre. Et il a été dit [concernant la parole de Allâh] : {Mathalou Noûrihi ka-Michkâtin fîhâ misbâh} c’est-à-dire que l’exemple de la lumière de Sa guidée dans le cœur du croyant est telle une niche contenant une lampe»
Informations utiles :
– Le Chaykh, le Loughawi (spécialiste de la langue arabe) Mouhammad Ibn Moukarram Al-Ifrîqi Al-Misri connu sous le nom de Ibn Mandhoûr est né en 630 et il est décédé en 711 de l’Hégire (رحمه الله), c’est-à-dire il y a environ 730 ans. Son dictionnaire « liçânou l-‘arab » est un ouvrage de référence dans langue Arabe.
– Al-‘Allâmah (l’illustre savant), le Qâdî (Juge) Majdou d-Dîn Abou s-Sa’âdât Al-Moubârak Ibn Mouhammad Ibn ‘Abdi l-karîm Ibn ‘Abdi l-Wâhid, Ibnou l-Athîr Ach-Chaybâni Al-Jazari, est né en 544 et il est décédé en 606 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 800 ans. [Ne pas le confondre avec son frère, le célèbre Historien ‘Ali ‘Izzou d-Dîn Ibnou l-Athîr qui est décédé en 630 de l’Hégire (رحمه الله)]
– La citation que rapporte de lui Ibnou Mandhoûr provient de son ouvrage « An-Nihâyatou fî Gharîbi l-Hadîthi wa l-Athar ».
– L’Imâm, le Loughawi (spécialiste de la langue arabe) Aboû Mansoûr Mouhammad Ibn Ahmad Al-Azhari est né en 282 et il est décédé en 370 de l’Hégire c’est à dire il y a plus de 1000 ans. Il fait parti des plus grands spécialistes de la langue Arabe et il a vécu à l’époque du Salaf.
– La citation que rapporte de lui Ibnou Mandhoûr provient de son ouvrage « Tahdhîbou l-Loughah ».
– Ici, Ibn Mandhoûr explique que le Nom de Allâh « An-Noûr » signifie » Al-Hâdî » c’est-à-dire Celui Qui guide. Mais il n’est pas permis de croire que Allâh serait une lumière, qui est le contraire de l’obscurité car Il est Celui Qui crée la lumière.
– De nombreux savants ont tenu des propos similaires. Parmi eux le compagnon Ibnou l-‘Abbâs [ Rapporté par Al-Bayhaqi ], l’Imâm Al-Khattâbi [ Rapporté par Al-Bayhaqi ], l’Imâm Al-Halîmi [ Rapporté par Al-Bayhaqi ] l’Imâm Al-Bayhaqi, l’Imâm Al-Jouwayni [ Dans son livre Al-Irchâd ] et beaucoup d’autres.
– Allâh ta’âlâ dit dans Soûrat Al-An’âm : { وَجَعَلَ الظُّلُمَاتِ وَالنُّورَ } [ce qui a pour sens] : « Et Il (Allâh) créa les obscurités et la lumière » , Dès lors, comment serait-il possible qu’Il soit une lumière comme Ses créatures ?!
– Le fait de croire que Allâh serait une lumière (contraire de l’obscurité) est une croyance contraire à l’Islâm, et cette croyance fait sortir de l’islâm. [ voir à ce sujet la citation de l’Imâm An-Nâboulouçi : ici ].
– Le Chaykh, le Faqîh Aboû Chakoûr As-Sâlimi Al-Hanafi (m.~460 H.) a dit au sujet des Mouchabbihah (ceux qui ont pour croyance que Allâh ressemble aux créatures) : « Parmi eux certains disent que « Allâh ta’âlâ est une lumière qui scintille » et cela est de la mécréance car il y a le reniement d’un texte et il s’agit de la parole de Allâh ta’âlâ [qui a pour sens : ] {Rien n’est tel que Lui} » [Dans son livre At-Tamhîd fî Bayâni t-Tawhîd]
– Les savants ont dit que les corps sont de deux sortes : les corps palpables (que l’on peux toucher) et les corps impalpables (que l’on ne peux pas toucher). La lumière est un corps impalpable et Allâh n’est ni un corps palpable ni un corps impalpable. Les savants ont été unanimes sur le fait qu’attribuer le corps à Allâh est de la mécréance. [ Retrouvez des citations à ce sujet : ici ]
– Retrouvez d’autres paroles de savants ayant mentionné que Allâh n’est pas une lumière : ici .', 'abi mansour mohamed ibn ahmed el- azhari, abī mansūr muḥammad ibn aḥmad al-azharī, aboû mansoûr al-azhari, aboû mansoûr mouhammad ibn ahmad al-azhari'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'نور: في أَسماء الله تعالى: النُّورُ؛ قال ابن الأَثير: هو الذي يُبْصِرُ بنوره ذو العَمَاية ويَرْشُدُ بهداه ذو الغَوايَةِ، وقيل: هو الظاهر الذي به كل ظهور، والظاهر في نفسه المُظْهِر لغيره يسمى نوراً. قال أَبومنصور: والنُّور من صفات الله عز وجل، قال الله عز وجل: الله نُورُ السموات والأَرض؛ قيل في تفسيره: هادي أَهل السموات والأَرض، وقيل: مَثل نوره كمشكاة فيها مصباح؛ أَي مثل نور هداه في قلب المؤمن كمشكاة فيها مصباح.');

-- source: https://islamsunnite.net/imam-ahmad-ibn-hanbal-a-jamais-attribue-direction-a-allah-rapporte-par-ibn-jamaah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas dans une direction', 'Ahmad Ibn Hanbal', 'إنّه – يعني الإمام أحمد بن حنبل – كان لا يقول بالجهة للباري تعالى', 'Certes l’Imâm Ahmad Ibnou Hanbal n’a jamais attribué de direction à Al-Bârî (Le Créateur : c’est-à-dire Allâh)', '', 'Dans son livre « Idâhou d-Dalîl fî Qat’i Houjaji ahli t-ta’tîl » (pages 108 de cette édition) le Qâdî Badrou d-Dîn Ibnou Jamâ’ah a dit :
Informations utiles :
– L’Illustre savant du salaf, le Moujtahid (jurisconsulte), l’Imâm Aboû ‘Abdi l-Lâh Ahmad Ibnou Mouhammad Ibnou Hanbal Ach-Chaybâni est né en 164 à Baghdâd et il est décédé en 241 de l’Hégire à Baghdâd (رحمه الله) c’est-à-dire il y a plus de 1190 ans. Il est l’Imâm de l’école Hanbalite, l’un des quatre Imams.
– Le Qâdî (juge), le Faqih (spécialiste de la jurisprudence), le Mouhaddith (spécialiste de la science du Hadîth), le Chaykh Badrou d-Dîn Mouhammad Ibnou Ibrâhîm connu sous le nom de Ibnou Jamâ’ah est né en 639 à Hamah (Syrie) et il est décédé en 733 de l’Hégire au Caire (رحمه الله) c’est-à-dire il y a environ 700 ans. Il était le président des juges Châfi’i en Égypte à son époque.
Ibn Battoûtah a dit à son sujet : « Qâdi l-Qoudâh (le juge des juges) des Châfi’ites, celui qui a le degré le plus élevé parmi eux et le plus grand statut […] le Qâdî, l’Imâm, le savant Badrou d-Dîn Ibnou Jamâ’ah » [Dans son livre Ar-Rihlah]
– Ici il confirme que contrairement aux mensonges proférés par les corporalistes (moujassimah), l’Imâm Ahmad Ibnou Hanbal n’a jamais attribué de direction à Allâh ta’âlâ.
– Nombreux sont les savants qui ont innocenté l’Imâm Ahmad de cette croyance laide. En plus du Qâdî Badrou d-Dîn Ibnou Jamâ’ah, nous pouvons citer le grand savant Hanbalite, l’Imâm Ibnou l-Jawzi (رحمه الله) qui est un pilier dans l’école de l’Imâm Ahmad [ Daf’ou Choubahi t-Tachbîh ], l’Imâm Ibnou Hajar Al-Haytami (رحمه الله) et d’autres.
– Le Hâfidh Taqiyyou d-Dîn Ibnou Salâh (m.643 H.) a dit : « Allâh a éprouvé deux imams à travers leurs compagnons, alors qu’ils sont innocents [de leurs égarements] : Ahmad Ibnou Hambal a été éprouvé par les moujassimah (corporalistes) et Ja’far As-Sâdiq a été éprouvé par les râfidah (groupe chiite) » [rapporté par Tâjou d-Dîn As-Soubki dans Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
– L’Imâm Ibnou Châhîn (m. 385 H.) a dit : « Deux hommes vertueux ont été éprouvé par leurs compagnons pervers : Ja’far Ibnou Mouhammad (As-Sâdiq) et Ahmad Ibnou Hambal » [rapporté par Ibnou ‘Açâkir dans Tabyînou kadhibi l-Mouftarî]
– En revanche il a été rapporté de la part de l’Imâm Ahmad qu’il niait le corps au sujet Allâh [ Rapporté par l’Imâm Abou l-Fadl At-Tamîmi ], et qu’il considérait mécréant ceux qui ont pris pour croyance que Allâh serait un corps ou qu’Il serait dans une direction [ Rapporté par Al-Qarâfi et Ibn Hajar Al-Haytami ] et [ Rapporté par Ahmad Aboû Mouhammad Al-Baghdâdi et Az-Zarkachi ].
– L’Imâm Ahmad Ibn Hambal a dit : « Devient mécréant celui qui fait ressembler Allâh à Sa créature » [ Rapporté par Ibn Hamdân Al-Hambali dans Nihâyatou l-Moubtadi-în ]', 'ahmad, ahmad ibn hambal, ahmad ibn hanbal, ahmed'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'إنّه – يعني الإمام أحمد بن حنبل – كان لا يقول بالجهة للباري تعالى');

-- source: https://islamsunnite.net/imam-ibn-hajar-asqalani-explique-hadith-nouzoul/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’explication du hadîth du Nouzoûl', 'Soufyan Ibn ''Ouyaynah', '« قوله : « ينزل ربنا إلى السماء الدنيا» استدل به من أثبت الجهة ، وقال : هي جهة العلو؛ وأنكر ذلك الجمهور لأن القول بذلك يفضى إلى التحيز تعالى الله عن ذلك .وقد اختلف في معنى النزول على أقوال:', '', '', 'Dans son commentaire du Sahîh de Al-Boukhâri «Fath Al-Bârî » (tome 3 page 30 de cette édition), l’Imâm Ibnou Hajar Al-‘Asqalâni a dit :', 'ahmad ibn hanbal, bayhaqi, charh sahih al-boukhari, fath al bari'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« قوله : « ينزل ربنا إلى السماء الدنيا» استدل به من أثبت الجهة ، وقال : هي جهة العلو؛ وأنكر ذلك الجمهور لأن القول بذلك يفضى إلى التحيز تعالى الله عن ذلك .وقد اختلف في معنى النزول على أقوال:');

-- source: https://islamsunnite.net/imam-ibn-hajar-asqalani-explique-hadith-nouzoul/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’explication du hadîth du Nouzoûl', 'Soufyan Ibn ''Ouyaynah', 'فمنهم من حمله على ظاهره وحقيقته وهم المشبهة تعالى الله عن قولهم،', '', '', '', 'ahmad ibn hanbal, bayhaqi, charh sahih al-boukhari, fath al bari'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فمنهم من حمله على ظاهره وحقيقته وهم المشبهة تعالى الله عن قولهم،');

-- source: https://islamsunnite.net/imam-ibn-hajar-asqalani-explique-hadith-nouzoul/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’explication du hadîth du Nouzoûl', 'Soufyan Ibn ''Ouyaynah', 'ومنهم من أنكر صحة الأحاديث الواردة في ذلك جملة وهم الخوارج والمعتزله وهو مكابرة والعجب إنهم أولوا ما في القرءان من نحو ذلك وانكروا ما في الحديث إما جهلا وإما عنادا،', '', '', '', 'ahmad ibn hanbal, bayhaqi, charh sahih al-boukhari, fath al bari'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ومنهم من أنكر صحة الأحاديث الواردة في ذلك جملة وهم الخوارج والمعتزله وهو مكابرة والعجب إنهم أولوا ما في القرءان من نحو ذلك وانكروا ما في الحديث إما جهلا وإما عنادا،');

-- source: https://islamsunnite.net/imam-ibn-hajar-asqalani-explique-hadith-nouzoul/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’explication du hadîth du Nouzoûl', 'Soufyan Ibn ''Ouyaynah', 'ومنهم من اجراه على ما ورد مؤمنا به على طريق الإجمال منزها الله تعالى عن الكيفيه والتشبيه وهم جمهور السلف ونقله البيهقي وغيره عن الأئمة الأربعة والسفيانين والحمادين والأوزاعي والليث وغيرهم،', '', '', '', 'ahmad ibn hanbal, bayhaqi, charh sahih al-boukhari, fath al bari'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ومنهم من اجراه على ما ورد مؤمنا به على طريق الإجمال منزها الله تعالى عن الكيفيه والتشبيه وهم جمهور السلف ونقله البيهقي وغيره عن الأئمة الأربعة والسفيانين والحمادين والأوزاعي والليث وغيرهم،');

-- source: https://islamsunnite.net/imam-ibn-hajar-asqalani-explique-hadith-nouzoul/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’explication du hadîth du Nouzoûl', 'Soufyan Ibn ''Ouyaynah', 'ومنهم من أوله على وجه يليق مستعمل في كلام العرب ومنهم من أفرط في التأويل حتى كاد أن يخرج إلى نوع من التحريف،', '', '', '', 'ahmad ibn hanbal, bayhaqi, charh sahih al-boukhari, fath al bari'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ومنهم من أوله على وجه يليق مستعمل في كلام العرب ومنهم من أفرط في التأويل حتى كاد أن يخرج إلى نوع من التحريف،');

-- source: https://islamsunnite.net/imam-ibn-hajar-asqalani-explique-hadith-nouzoul/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’explication du hadîth du Nouzoûl', 'Soufyan Ibn ''Ouyaynah', 'ومنهم من فصل بين مايكون تأويله قريبا مستعملا في كلام العرب وبين ما يكون بعيدا مهجورا فأول في بعض وفوض في بعض وهو منقول عن مالك وجزم به من المتأخرين بن دقيق العيد،', '', '', '', 'ahmad ibn hanbal, bayhaqi, charh sahih al-boukhari, fath al bari'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ومنهم من فصل بين مايكون تأويله قريبا مستعملا في كلام العرب وبين ما يكون بعيدا مهجورا فأول في بعض وفوض في بعض وهو منقول عن مالك وجزم به من المتأخرين بن دقيق العيد،');

-- source: https://islamsunnite.net/imam-ibn-hajar-asqalani-explique-hadith-nouzoul/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’explication du hadîth du Nouzoûl', 'Soufyan Ibn ''Ouyaynah', 'قال البيهقي : واسلمها الإيمان بلا كيف والسكوت عن المراد »', '« Quant à sa parole «Yanzilou Rabbounâ ila s-Samâ’i d-Dounyâ », certains (les mouchabbihah) se sont basés dessus pour confirmer une direction à Allâh, et disent qu’il s’agit de la direction du dessus (al-‘oulouww) et cela a été renié par les savants (al-joumhoûr), parce que parler ainsi revient à limiter Allâh, Qui est exempt de cela. Ainsi les gens ont divergé sur le sens de an-nouzoûl : certains l’ont pris selon son sens apparent et son sens propre, et ce sont les anthropomorphistes (al-Mouchabbihah), et Allâh est exempt de ce qu’ils disent. Certains ont nié l’authenticité des hadîth parvenus à ce sujet dans leur globalité, ceux-là sont les Khawârij et les Mou’tazilah et ceux-là sont vraiment étonnants, parce que d’un côté ils interprètent ce qui est parvenu dans le Qour-ân qui est du même ordre, et de l’autre ils renient ce qui est parvenu du hadîth soit par ignorance, soit par entêtement. Certains sont passés sur ces textes comme ils ont été révélés, en y croyant dans leur globalité et en exemptant Allâh du comment (kayfiyyah) et de toute assimilation (tachbîh), et ceux-là sont la majorité des savants du Salaf. Cela a été rapporté par Al-Bayhaqi ainsi que d’autres, [comme étant la voie] des quatre Imâm (C’est-à-dire : l’Imâm Aboû Hanîfah, l’Imâm Mâlik, l’Imâm Ach-Châfi’i, et l’Imâm Ahmad Ibn Hanbal), des deux Soufyân (C’est-à-dire : Soufyân Ath-Thawri et Soufyân Ibn ‘Ouyaynah), des deux Hammâd (C’est-à-dire : Hammâd Ibn Zayd et Hammâd Ibn Salamah), de Al-Awzâ’i, de Al-Layth, et autres qu’eux. Certains ont interprété ce texte selon ce qui est digne de Allâh et qui est utilisé dans la langue des Arabes. Certains autres sont allés tellement loin dans l’interprétation que cela revenait à une sorte de distorsion. Certains autres ont fait la différence entre ce qui est une interprétation « proche » c’est-à-dire utilisée dans la langue des Arabes, et ce qui serait éloigné, et par conséquent, ils ont interprété dans certains cas et ils ont fait le tafwîd [laisser le sens à Allâh] dans certains cas. Cela a été rapporté de l’Imâm Mâlik et confirmé de parmi les savants de la nouvelle génération (contexte : 7ème siècle de l’Hégire) par Ibn Daqîq Al-Îd. Al-Bayhaqi a dit que la plus saine [de toutes ces voies] est d’y croire sans comment (bilâ kayf) et de passer sous silence ce qui est visé. »', '', 'Informations utiles :
– Chaykhou l-Islâm, Amîr al-Mouminîn fi l-hadîth (le Prince des croyants dans la science du hadîth) Chihâb ad-Dîn Abou l-Fadl Ahmad Ibnou ‘Ali Ibnou Hajar Al-‘Asqalâni est né en 773 et il est décédé en 852 de l’hégire (رحمه الله) c’est-à-dire il y a plus de 590 ans. C’est un très grand spécialiste de la science du hadîth qui a écrit de nombreux ouvrages. Il est du madh-hab (Ecole de jurisprudence) de l’Imam Ach-Châfi’i. Son livre « Fath Al-Bârî » est incontournable, c’est le plus célèbre commentaire du Sahîh Al-Boukhâri. Consultez sa biographie : ici .
– Ici il explique le Hadîth connu sous le nom de « Hadîth du nouzoûl ». Il commence en disant qu’il y a un groupe de personnes qui l’ont pris selon le sens apparent, c’est-à-dire qu’ils ont compris de ce verset que Allâh descendrait par Lui même du haut vers le bas, et il dit que ces gens là sont les mouchabbihah (anthropomorphistes) et que les savants de l’Islâm leur ont répliqué. Lui-même dit que Allâh est exempt de ceux qu’ils ont pris comme croyance. Malheureusement de nos jours, le groupuscule qui se fait appeler à tord « salafi » (les wahhabites) essaie de propager parmi les musulmans cette croyance que les savants de l’Islâm ont toujours rejeté.
– Ensuite il mentionne une autre catégorie de personnes égarés à savoir les Khawârij et les Mou’tazilah qui ont rejeté l’authenticité de ces Hadîth par ignorance et entêtement.
– Puis Il mentionne l’avis de la majorité des Imâm du Salaf qui était d’accepter le hadîth avec ses termes en exemptant Allâh du comment (kayfiyyah) et de toute assimilation (tachbîh). Il rapporte la parole de l’Imâm Al-Bayhaqi qui a dit que cette voie-là était la plus saine.
– Egalement il rapporte l’avis des savants qui ont donné une interprétation de ce hadîth en conformité avec la langue Arabe. Et Il explique également que certains d’entre eux, à l’image de l’Imâm Mâlik, avaient quelque fois recours à l’interprétation et quelque fois au tafwîd (qui est le fait de ne pas rentrer dans l’explication du terme tout en exemptant Allâh du comment -kayf-). [ Voir l’interprétation de l’Imâm Mâlik : ici ]
– Le comment (al-kayf) : c’est ce par quoi on décrit les créatures, c’est-à-dire les dimensions, le début, la fin, la couleur, l’endroit, la direction, la forme, la position assise, la proximité, le mouvement, le déplacement, le changement et tout ce qui fait partie des attributs des créatures. Allâh est exempt de tout cela.
– L’explication donnée par l’Imâm Ibn Hajar est similaire à celle donnée par l’Imâm An-Nawawi qui a également détaillé sur l’explication de ce hadîth. [ Charh Sahîh Mouslim ]
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
– Bien plus, certains savants ont mentionné de manière explicite dans leurs ouvrages que le fait d’attribuer à Allâh le mouvement ou le déplacement est de la mécréance. Parmi eux :
L’Imâm Abou l-Haçan Al-Ach’ari [ Rapporté par As-Soubki ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ Charh ‘Aqîdah Mâlik As-Saghîr ]
L’Imâm Taqiyyou d-Dîn Al-Hisni [ Daf’ou choubahi man chabbaha wa tamarrad ]
L’Imâm Al-Kawthari qui mentionne l’unanimité [ Maqâlâtou l-Kawthari (1) ] et [ Maqâlâtou l-Kawthari (2) ]
Ibnou l-Bannâ Al-Hambali qui a dit : « Celui qui prend le nouzoûl dans le sens de quitter un endroit pour en occuper un autre, et du déplacement alors c’est de la mécréance » [Al-Ousoûlou l-Moujarradah].
– L’Imâm, le Moujtahid (jurisconsulte) Aboû Hanîfah An-Nou’mân Ibnou Thâbit, est l’un des savants du Salaf les plus réputés. Il est né en 80 et il est décédé en 150 de l’Hégire (رحمه الله). C’est-à-dire il y a plus de 1280 ans. Il est l’Imâm de l’école (madh-hab) Hanafite et il a eu l’honneur de rencontrer des compagnons du Messager de Allâh (صلى الله عليه وسلم). Retrouvez sa biographie : ici .
– L’Imâm, le spécialiste de la science du Hadîth, le Moujtahid (jurisconsulte), Mâlik Ibnou Anas est l’un des plus grands savants de notre communauté, il est une référence incontournable pour tous musulman. C’est un Salaf (C’est-à-dire qu’il a vécu dans les trois premiers siècles de l’Hégire), il est né en 93 et il est décédé en 179 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1260 ans. Il est l’Imâm de l’école (madh-hab) Malikite. L’Imâm Ach-Châfi’i disait de lui « Lorsque les savants sont cités, Mâlik est comme une étoile » . Consultez sa biographie : ici .
– L’Imâm, le Moujtahid (jurisconsulte) Mouhammad Ibnou Idrîs Ach-Châfi’i est l’un des plus grands savants de notre communauté, c’est une référence incontournable pour tout musulman. C’est un salaf (C’est à dire qu’il a vécu dans les trois premiers siècles de l’hégire), il est né en 150 et il est décédé en 204 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 1230 ans. Il est l’Imâm de l’école (madh-hab) Chafi’ite.
L’Imâm Abou l-Haçan As-Soulami a dit à son sujet : « Mouhammad Ibn Idrîs Ach-Châfi’i est le savant à la tête du second siècle [de l’Hégire] (c’est-à-dire le moujaddid – savant revivificateur) » [Rapporté par le Hâfidh Ibnou ‘Açâkir dans Tabyînou kadhibi l-Mouftari]
– L’Illustre savant du salaf, le Moujtahid (jurisconsulte), l’Imâm Aboû ‘Abdi l-Lâh Ahmad Ibnou Mouhammad Ibnou Hanbal Ach-Chaybâni est né en 164 à Baghdâd et il est décédé en 241 de l’Hégire à Baghdâd (رحمه الله) c’est-à-dire il y a plus de 1190 ans. Il est l’Imâm de l’école Hanbalite, l’un des quatre Imams.
– L’Imâm, Chaykhou l-Islâm, le Moujtahid (jurisconsulte), Al-Hâfidh (spécialiste de la science du hadîth) Soufyân Ibn Sa’îd Ibn Masroûq Ath-Thawri, est né en 97 à Koûfa (Irak), et il est décédé en 161 de l’Hégire à Bassora (Irak) (رحمه الله), c’est-à-dire il y a plus de 1200 ans. Il est de la génération des pieux prédecesseurs (as-Salafou s-Sâlih), et il fait parti des rares savants du hadîth qui ont été surnommé “Amîrou l-Mou-minîn fi l-Hadîth” (Prince des croyants dans la science du hadîth). Il compte parmi les grands savants de la communauté qui ont fondé une école de jurisprudence (madh-hab) tout comme l’Imâm Mâlik, l’Imâm Al-Awzâ’i, l’Imâm Aboû Hanîfah, l’Imâm Al-Layth Ibn Sa’d, l’Imâm Ach-Châfi’i ou encore l’Imâm Ahmad Ibn Hanbal, mais son école (madh-hab) n’a pas subsisté. On compte parmi ses nombreux Chaykh, l’Imâm Ja’far As-Sâdiq et de parmi les gens qui ont reçu de sa science, des grands Imâm tels que Aboû Hanîfah, Al-Awzâ’i, ‘Abdou l-Lâh Ibn Moubârak, Foudayl Ibn ‘Iyâd … Nombreux sont les savants de la communauté qui ont fait ses éloges.
– L’Illustre savant du salaf, le Moujtahid (jurisconsulte), Al-Hâfidh (spécialiste de la science du hadîth) l’Imâm Aboû Mouhammad Soufyân Ibn ‘Ouyaynah Ibn Maymoûn Al-Hilâli al-Koûfi est né en 107 à Koûfa (Irak) et il est décédé en 198 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1200 ans. Il est de la génération des pieux prédecesseurs (as-Salafou s-Sâlih).
– L’Illustre savant du salaf, Al-Hâfidh (spécialiste de la science du hadîth) Hammâd Ibn Zayd est né en 98 et il est décédé en 179 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1200 ans. Il est de la génération des pieux prédecesseurs (as-Salafou s-Sâlih). On compte parmi ses plus illustres élèves : Soufyân Ath-Thawri, Soufyân Ibn ‘Ouyaynah, ‘Abdou l-Lah Ibn Moubârak et beaucoup d’autres. Nombreux sont les grands savants qui ont fait son éloge.
– L’Illustre savant du salaf, Chaykhou l-Islâm, Hammâd Ibn Salamah Ibn Dînâr Al-Basri est né en 91 il est décédé en 167 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1200 ans. Il est de la génération des pieux prédecesseurs (as-Salafou s-Sâlih).
– L’Imâm du salaf, le Moujtahid, Aboû ‘Amr ‘Abdou r-Rahmân Ibnou ‘Amr Al-Awzâ’i est né en 88 et il est décédé en 158 de l’Hégire (رحمه الله), c’est-à-dire il y a environ 1275 ans. Il était l’un des plus grands savants du salaf. Il compte parmi les grands savants de la communauté qui ont fondé une école de jurisprudence (madh-hab) tout comme l’Imâm Mâlik, l’Imâm Aboû Hanîfah, l’Imâm Soufyân Ath-Thawri, l’Imâm Ach-Châfi’i ou encore l’Imâm Ahmad Ibn Hanbal, mais son école (madh-hab) n’a pas subsisté. Elle fût suivie durant deux siècles, notamment en Andalousie.
– L’Illustre savant du salaf, le Moujtahid (jurisconsulte), Al-Hâfidh (spécialiste de la science du hadîth) l’Imâm َAl-Layth Ibn Sa’d Ibn ‘Abdi r-Rahmân Ibn ‘Aqabah Al-Fahmi est né en 94 et il est décédé en 175 de l’Hégire au Caire (Egypte) (رحمه الله), c’est-à-dire il y a plus de 1200 ans. Il est de la génération des pieux prédecesseurs (as-Salafou s-Sâlih). Il compte parmi les grands savants de la communauté qui ont fondé une école de jurisprudence (madh-hab) tout comme l’Imâm Mâlik, l’Imâm Al-Awzâ’i, l’Imâm Aboû Hanîfah, l’Imâm Soufyân Ath-Thawri, l’Imâm Ach-Châfi’i ou encore l’Imâm Ahmad Ibn Hanbal, mais son école (madh-hab) n’a pas subsisté.
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth) Aboû Bakr Ahmad Ibnou l-Houçayn Al-Bayhaqi, est né en 384 et il est décédé en 458 de l’Hégire (رحمه الله), c’est-à-dire il y a presque 1000 ans. Il fait partie des plus grands savants du hadîth, et il est de l’école de jurisprudence Châfi’ite. Voir la biographie de l’Imâm Al-Bayhaqi : ici .
– L’Imâm, Chaykhou l-Islâm, le Hafîdh (spécialiste de la science du Hadîth), Al-Faqîh (spécialiste de la jurisprudence) Taqiyyou d-Dîn Abou l-Fath Ibn Daqîq Al-‘îd est né en 625 et il est décédé en 702 de l’Hégire au Caire (Egypte) (رحمه الله), c’est-à-dire il y a plus de 700 ans. ll était de l’école de jurisprudence Châfi’ite. Il a écrit un commentaire très réputé des quarante Hadîth de l’Imâm An-Nawawi. Certains savants le considèrent comme le moujaddid (celui qui revitalise la science de la religion) du 7ème siècle.
– Retrouvez d’autres paroles de savants sur le Hadîth An-Nouzoûl : ici .', 'ahmad ibn hanbal, bayhaqi, charh sahih al-boukhari, fath al bari'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال البيهقي : واسلمها الإيمان بلا كيف والسكوت عن المراد »');

-- source: https://islamsunnite.net/limam-ath-thaalibi-explique-les-noms-de-allah-al-aliyy-et-al-adhim/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit et n’est pas un corps.', 'Tha''alibi', 'و{العليّ} يُراد به علو القدر والـمنـزلة لا علو الـمكان ، لأنَّ الله سبحانه منـزه عن التحيز؛ و كذا {العظيم} هي صفة بمعنى عظم القدر والخطر، لا على معنى عظم الأجرام', '« « Al-‘Aliyy » : Il est voulu par cela l’élévation (‘oulouww) par le mérite et l’éminence, et non d’une élévation spatiale [par l’endroit], car Allâh soubhânahou wa ta’âlâ est exempt de la localisation, il en est de même pour « Al-‘Adhîm » : c’est un attribut dans le sens de l’éminence du mérite et du degré, et non dans le sens de la grandeur corporelle ».', '', 'Dans son tafsîr du Qour-ân « Al-Jawâhir Al-Hissân», lors de l’explication de Âyatou l-Koursiyy, l’Imâm Ath-Tha’âlibi a dit :
Informations utiles : – L’Imâm, le Mouhaddîth (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Moufassir (exégète), le Loughawi (spécialiste de la langue Arabe) ‘Abdou-r-Rahmân ibnou Mouhammad ibnou Makhloûf Abî Zayd Ath-Tha’âlibi Al-Mâliki est né en 786 dans la région de Ouled Isser et il est décédé en 875 de l’Hégire à Alger (رحمه الله), c’est-à-dire il y a environ 560 ans. Il est un savant dans le madh-hab (école de jurisprudence) de l’Imam Mâlik. On peut citer parmi ses nombreux Chouyoûkh, le Hâfidh Waliyou d-Dîn Al-’Irâqi. De parmi ceux qui ont reçu de sa science : L’Imâm As-Sanoûçi (l’auteur du traité de croyance). Et de parmi les savants reconnus qui ont fait son éloge, le Hâfidh As-Sakhâwi. Il est enterré à Alger dans un Mausolée connu par le nom ” Sayyidi ‘Abdou r-Rahmân ”.
– Ici, il explique deux Noms de Allâh. Il dit que Son Nom « Al-‘Aliyy » n’est pas une élévation par l’endroit car Allâh est sans endroit et sans direction, mais que le sens voulu est l’élévation par le mérite et l’éminence. Cette explication a également été donnée mot pour mot par d’autres moufassiroûn (exégètes) comme Ibnou ‘Atiyyah (m.541 H), et Al-Qourtoubi (m.671 H) [ Dans son Tafsîr ]. Puis il explique le Nom de Allâh « Al-‘Adhîm » en disant que cela ne signifie pas que Allâh serait un corps de grand volume, mais que le sens est l’éminence du mérite et du degré. Cette explication a également été donnée par Ibnou ‘Atiyyah dans son Tafsîr.
– Les musulmans sont unanimes sur le fait que Allâh existe sans endroit, sans direction et qu’Il n’est pas un corps.
– D’autres savants ont donné des explications du Nom de Allâh « Al-‘Aliyy » proches de celle-ci. [ Voir l’explication de l’Imâm Az-Zajjâj : ici ] ; [ Voir l’explication de l’Imâm Ar-Râzi : ici ].
– Retrouvez d’autres paroles de savants au sujet du ‘oulouww (élévation) de Allâh : ici .', '''uluw, adhim, al-adhim, al-akhdariyah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'و{العليّ} يُراد به علو القدر والـمنـزلة لا علو الـمكان ، لأنَّ الله سبحانه منـزه عن التحيز؛ و كذا {العظيم} هي صفة بمعنى عظم القدر والخطر، لا على معنى عظم الأجرام');

-- source: https://islamsunnite.net/imam-abou-hanifa-declare-mecreant-ceux-qui-croient-allah-au-ciel/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm Aboû Hanîfah s’oppose à la croyance des mouchabbihah.', 'Samarqandi', 'قال أبو حنيفة : من قال لا أعرف الله أفي السماء أم في الأرض فقد كفر، لأنه بهذا القول يوهم أن يكون له مكان فكان مشركاً', '« L’Imâm Aboû Hanîfah a dit: « Celui qui dit : Je ne sais pas si Allâh est au ciel ou sur terre est devenu mécréant » car par cette parole il se sera illusionné que Allâh serait dans un endroit, et il est ainsi un associateur (mouchrik). »', '', 'Dans son commentaire du livre « Al-Fiqh Al-Akbar » de l’Imâm Aboû Hanîfah (page 25 de cette édition), l’Imâm Abou l-Layth As-Samarqandi a dit :
Informations utiles :
– L’Imâm, le Faqîh (spécialiste de la jurisprudence), le Mouhaddith (spécialiste de la science du Hadîth), le Moufassir (spécialiste de l’exégèse) Abou l-Layth Nasr Ibnou Mouhammad Ibnou Ahmad Ibnou As-Samarqandi Al-Hanafi est décédé en 373 de l’hégire – selon un avis – (رحمه الله) c’est-à-dire il y a environ 1060 ans. Son commentaire du livre « Al-Fiqh Al-Akbar » est très connu. Il contient également des commentaires de d’autres ouvrages de l’Imâm Aboû Hanîfah comme celui du livre « Al-Wasiyyah ». Il arrive que ce commentaire de « Al-Fiqh Al-Akbar » soit attribué par erreur à l’Imâm Al-Mâtourîdi As-Samarqandi (m.333 A.H.).
– L’Imâm, le Moujtahid Aboû Hanîfah An-Nou’mân Ibnou Thâbit, est l’un des savants du Salaf les plus réputés. Il est né en 80 et il est décédé en 150 de l’Hégire (رحمه الله). C’est-à-dire il y a plus de 1280 ans. Il est l’Imâm de l’école (madh-hab) Hanafite et il a eu l’honneur de rencontrer des compagnons du Messager de Allâh (صلى الله عليه وسلم). Retrouvez sa biographie : ici .
– Ici, l’Imâm Aboû Hanîfah considère qu’attribuer un endroit à Allâh est de la mécréance.
– Cette explication de l’Imâm Abou l-Layth As-Samarqandi est également confirmée par :
Le Chaykh Ahmad Ar-Rifâ’i [Al-Bourhânou l-Mou-ayyad]
Chaykhou l-Islâm Ibnou ‘Abdi s-Salâm [ Rapporté par Moullâ ‘Ali Al-Qârî ],
Le Chaykh Taqiyyou d-Dîn Al-Hisni [Daf’ou choubahi man chabbaha wa tamarrad],
Le Chaykh Moullâ ‘Ali Al-Qârî Al-Hanafi [ Charh Al-Fiqh Al-Akbar ],
L’Imâm Al-Bayâdi Al-Hanafi,
Et autres qu’eux.
– Cette déclaration de mécréance de l’Imâm Aboû Hanîfah à l’égard de ceux qui ont pour croyance que Allâh serait dans un endroit ou une direction est également confirmée de lui par de nombreux savants tels que :
Le Chaykh Ibn Hajar Al-Haytami [ Al-Minhajou l-Qawîm ],
Le Chaykh Al-Qarâfi [ Rapporté par Al-Haytami ],
Le Chaykh Moullâ ‘Ali Al-Qâri dans un autre de ses ouvrages [ Mirqât al-Mafâtîh ],
Le Chaykh Mahmoûd As-Soubki [ It-hâfou l-Kâ-inât ],
Et autres qu’eux.
Et l’Imâm At-Tahâwi dans son célèbre traité de croyance qu’il a présenté comme étant conforme à la voie de l’Imâm Aboû Hanîfah et de ses deux illustres élèves a dit : « Celui qui attribue à Allâh l’une des significations propres aux humains est devenu mécréant.» [ Al-‘Aqîdah At-Tahâwiyyah ] .
– Quant au hadîth de la femme esclave (jâriyah) selon la version qui comprend les termes « fi s-samâ », les savants ont dit que l’on ne peux pas se baser dessus dans la croyance car il s’agit d’un hadîth moudtarib (perturbé). [ Voir une série d’article à ce sujet ]', 'abo hanîfah, abou al-layth as samarqandî, abou hanifa, abou hanifah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال أبو حنيفة : من قال لا أعرف الله أفي السماء أم في الأرض فقد كفر، لأنه بهذا القول يوهم أن يكون له مكان فكان مشركاً');

-- source: https://islamsunnite.net/nouaym-ibn-hammad-dit-celui-qui-assimile-allah-a-une-creature-devient-mecreant/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Celui qui assimile Allâh à Ses créatures commet de la mécréance.', 'Qari', 'قال نعيم بن حماد : من شبه الله بشىء من خلقه فقد كفر ومن أنكر ما وصف الله به نفسه فقد كفر', 'Nou’aym Ibnou Hammâd a dit : Celui qui assimile Allâh à l’une de Ses créatures est mécréant, et celui qui renie ce que Allâh s’est attribué pour Lui-même est mécréant', '', 'Dans son Charh (commentaire) du livre « Al-Fiqh Al-Akbar » de l’Imâm Aboû Hanîfah, (page 64 de cette édition), le Chaykh Moullâ ʹAli Al-Qâri a dit :
Informations utiles
– L’Imâm, l’Illustre savant, le Mouhaddith (transmetteur du Hadîth), le Faqîh (spécialiste de la jurisprudence), le Chaykh Moullâ ‘Ali Al-Qârî est un grand savant du madh-hab (école de jurisprudence) Hanafite, il est né en Afghanistan et il est décédé à La Mecque en 1014 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 430 ans. Il a écrit un commentaire du livre « Al-Fiqh Al-Akbar » de l’Imâm Aboû Hanîfah qui est très connu.
Ibn ‘Âbidîn Al-Hanafi a dit à son sujet : « Al-‘Allâmah (l’illustre savant) ‘Ali Al-Qârî, le dernier de ceux qui sont enraciné [dans la science] » [Raddou l-Mouhtâr]
Ibn ‘Âbidîn Al-Hanafi a dit également à son sujet : « Le dernier des spécialistes de la récitation, des spécialistes du fiqh, des spécialistes de la science du hadîth, l’élite des authentificateurs et vérificateurs » [Majmou’atou Raçâ-il Ibn ‘Âbidîn]
Al-Mouhibbi a dit le concernant : « L’une des références de science, il était sans pareil à son époque » [Khoulâsatou l-Athar]
Az-Zirikli a dit de lui : « Il est un faqîh (spécialiste de la jurisprudence) Hanafite, de parmi les références de science de son époque […] il a écrit de nombreux ouvrages » [Al-A’lâm]
– Le Chaykh, le Mouhaddith (transmetteur du Hadîth) Nou’aym Ibnou Hammâd Ibnou Mou’âwiyah Ibnou l-Harîth Al-Khouzâ’i Al-Maroûzi est décédé en 228 de l’hégire (رحمه الله) c’est-à-dire il y a plus de 1200 ans. Il était le Chaykh de l’Imâm Al-Boukhâri (رحمه الله).
– Ici il dit que celui qui assimile Allâh à l’une de Ses créatures a commis de la mécréance, comme cela est le cas de ceux qui ont pour croyance que Allâh est un corps, ou qu’Il aurait des parties corporelles, ou qu’Il serait dans un endroit ou une direction, ou qu’Il serait une lumière (dans le sens de contraire de l’obscurité), ou qu’Il aurait une image, ou qu’Il aurait une forme, ou qu’Il aurait des dimensions, ou qu’Il aurait une couleur, ou autres de parmi les caractéristiques des créatures.
– Puis il dit que celui qui renie ce que Allâh s’est attribué pour Lui-même a également commis de la mécréance, comme celui qui renierait l’un des attributs de Allâh qui sont obligatoirement siens et que l’on peux déduire par la raison comme l’existence, l’unicité, le non-début, la non-fin, le non-besoin, la science, la toute-puissance, la volonté, la vie, l’ouïe, la vue, la parole, et la non-ressemblance absolue avec Ses créatures.
– Concernant les autres attributs non déductible par la raison tels de al-yad, al-wajh, al-‘ayn, al-istiwâ et ce qui est du même ordre, la personne n’aura commis de la mécréance que dans le cas où il lui est parvenue d’une manière confirmée que ces attributs sont bien des attributs de Allâh puis qu’elle s’est mise à les renier.
– Quant à celui qui aurait pour croyance que le Yad de Allâh serait une main, ou que Son Wajh serait un visage, que Son ‘ayn serait un œil, que Son Istiwâ serait un établissement de Son Être, et ce qui est de cet ordre, cela est du tachbîh (assimilation) et constitue de la mécréance. Voir à ce sujet :
Attribuer l’endroit ou la direction à Allah est de la mécréance
Attribuer le corps à Allah est de la mécréance
– La voie des gens de la vérité est de confirmer ce que Allâh s’est attribué pour lui-même, sans assimilation, sans comment.
– Cette citation de Nou’aym Ibnou Hammâd est également mentionné par Ibnou Kathîr lorsqu’il explique l’un des versets de l’istiwâ [ Dans son tafsîr ].
– L’Imâm At-Tahâwi qui fait également partie du Salaf à tenu des propos similaires, il a dit : «Celui qui attribue à Allâh l’une des significations propres aux humains est devenu mécréant» [ Al-‘Aqîdah At-Tahâwiyyah ].', 'afghan, afghanistan, al-qari, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال نعيم بن حماد : من شبه الله بشىء من خلقه فقد كفر ومن أنكر ما وصف الله به نفسه فقد كفر');

-- source: https://islamsunnite.net/imam-tabari-interpretation-qatadah-saq-sourat-al-qalam-42/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’a pas de pied ni de tibia.', 'Tabari', 'حدثنا ابن عبد الأعلى، قال: ثنا ابن ثور، عن معمر، عن قتادة، في قوله { يَوْمَ يُكْشَفُ عَنْ ساقٍ } قال: يوم يكشف عن شدة الأمر', '« Qatâdah a dit au sujet de la parole de Allâh : {يَوْمَ يُكْشَفُ عَنْ ساقٍ } (yawma youkchafou ‘an sâq) [-soûrat Al-Qalam / 42-, qui signifie : « Le jour où sera découvert un sâq »] : le jour où sera dévoilée une intense difficulté. »', '', 'Dans son célèbre tafsîr, l’Imâm At-Tabari a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Moujtahid Aboû Ja’far Mouhammad Ibnou Jarîr At-Tabari est un célèbre savant du Salaf, il est né en 224 et il est décédé en 310 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1120 ans. Son tafsîr connu sous le nom de « Jâmi’ou l-bayân fî ta-wîl al-Qour-ân» est très réputé.
Le Chaykh ‘Abdou l-Lâh Al-Harari a dit de lui : « At-Tabari est un Imâm moujtahid. Il a mémorisé plus de cent milles Hadîth. Il était similaire à l’Imâm Ach-Châfi’i et à l’Imâm Mâlik (que Allâh les agréé) »
– L’illustre successeur des compagnons (Tâbi’i), le Hâfidh (spécialiste de la science du hadîth), le Moufassir (exégète), Qatâdah Ibnou Di’âmah As-Sadoûçi Al-Basri est né en 61 et il est décédé en 118 (ou 117 selon un avis) de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1300 ans. Il est une référence dans la science du Tafsîr, et les moufassiroûn (exégète) le mentionnent régulièrement dans leurs ouvrages. De nombreux savants ont fait son éloge tels que l’Imâm Ibnou Sirîn, l’Imâm Ahmad Ibn Hanbal, l’Imâm An-Nawawi et autres.
– Ne pas le confondre avec Qatâdah Ibnou Nou’mân le compagnon qui fût blessé gravement à l’œil lors de la bataille de Ouhoud et qui a été guéri par miracle du prophète (صلى الله عليه وسلم).
– Ici, il dit que ce qui est visé par « sâq » dans ce verset, c’est l’intensité et la difficulté au Jour du Jugement.
– Cette interprétation de Qatâdah a également été donnée en des termes proches par :
Le compagnon Ibnou l-‘Abbâs [ Rapporté par At-Tabari ] et [ Rapporté par Al-Bayhaqi ],
L’Illustre successeur des compagnons (tâbi’i) Moujâhid [voir scan ci-dessus],
L’Imâm Al-Khattâbi [ Rapporté par Al-Bayhaqi ]
L’Imâm Zaynou d-Dîn Ibnou l-Mounayyir (m.695 h.) qui a dit : « Le Sâq est expliqué par une difficulté, et le fait qu’il soit dévoilé signifie l’intensité de la difficulté » [Dans son livre Tafsîr Mouchkilât Ahâdith youchkilou dhâhirouhâ]
Un ensemble de compagnons et de successeurs des compagnons [ Rapporté par At-Tabari ]
– Ceci nous démontre que les savants du Salaf, qu’ils soient compagnons, successeurs des compagnons ou autres, avaient quelquefois recourt à l’interprétation détaillée.
– Ce verset ne veut absolument pas dire que Allâh aurait une jambe ou un tibia, comme l’ont prétendu certains assimilateurs. Dans la langue arabe, le mot « sâq » a différents sens. Lorsqu’il est employé au sujet de Allâh, il n’est pas à prendre selon le sens apparent, car le sens apparent de « sâq » est jambe ou tibia. Attribuer un membre ou un organe à Allâh est de l’anthropomorphisme et donc de la mécréance.
– L’Imâm At-Tahâwi (رحمه الله) qui fait partie des illustres savants du salaf a dit dans son traité présentant la croyance de l’ensemble des gens de la Sounnah : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres. Les six directions ne Le délimitent pas, contrairement à toutes les créatures » [ Al-‘Aqîdah At-Tahâwiyyah ].
– Comme à leur habitude les wahhabites ont contredit les gens de la Sounnah sur ce sujet en prétendant que Allâh aurait deux pieds sur le koursiyy tout comme l’a dit Ibn ‘Outhaymîn (wahhabite) [ Dans plusieurs de ses ouvrages ].
– Retrouvez d’autres citations de savants concernant le terme “sâq” : ici .', 'allah, aqida, bassora, book'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'حدثنا ابن عبد الأعلى، قال: ثنا ابن ثور، عن معمر، عن قتادة، في قوله { يَوْمَ يُكْشَفُ عَنْ ساقٍ } قال: يوم يكشف عن شدة الأمر');

-- source: https://islamsunnite.net/imam-soufyan-ath-thawri-interprete-wajh-sourat-al-qasas-88/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le terme « wajh » au sujet de Allâh ne signifie pas le visage.', 'Thawri', 'وأخرج البيهقي في شعب الإِيمان عن سفيان [الثوري] في قوله : {كل شيء هالك إلا وجهه} قال: إلا ما أريد به وجهه من الأعمال الصالحة', '« Al-Bayhaqi a rapporté dans son livre « Chou’abou l-Îmân » concernant la parole de Allâh : {koullou chay-in hâlikoun illâ Wajhah} [ce qui signifie : « Tout disparaîtra sauf Son wajh »] que Soufyân [Ath-Thawri] a dit : c’est-à-dire sauf ce par quoi l’on recherche l’agrément de Allâh dans les actes de bien. »', '', 'Dans son tafsîr « Ad-Dourrou l-Manthoûr fi t-Tafsîri bi l-Ma-thoûr », lorsqu’il évoque le verset 88 de soûrat Al-Qasas, l’Imâm As-Souyoûti a dit :
Informations utiles :
– L’Imâm, Chaykhou l-Islâm, le Moujtahid (jurisconsulte), Al-Hâfidh (spécialiste de la science du hadîth) Soufyân Ibn Sa’îd Ibn Masroûq Ath-Thawri, est né en 97 à Koûfa (Irak), et il est décédé en 161 de l’Hégire à Bassora (Irak) (رحمه الله), c’est à dire il y a plus de 1200 ans. Il est de la génération des pieux prédecesseurs (as-Salafou s-Sâlih), et il fait parti des rares savants du hadîth qui ont été surnommé « Amîrou l-Mou-minîn fi l-Hadîth » (Prince des croyants dans la science du hadîth). Il compte parmi les grands savants de la communauté qui ont fondé une école de jurisprudence (madh-hab) tout comme l’Imâm Mâlik, l’Imâm Al-Awzâ’i, l’Imâm Aboû Hanîfah, l’Imâm Al-Layth Ibn Sa’d, l’Imâm Ach-Châfi’i ou encore l’Imâm Ahmad Ibn Hanbal, mais son école (madh-hab) n’a pas subsisté. On compte parmi ses nombreux Chaykh, l’Imâm Ja’far As-Sâdiq et de parmi les gens qui ont reçu de sa science, des grands Imâm tels que Aboû Hanîfah, Al-Awzâ’i, ‘Abdou l-Lâh Ibn Moubârak, Foudayl Ibn ‘Iyâd … Nombreux sont les savants de la communauté qui ont fait ses éloges.
– Ici lors de l’explication du verset {كل شيء هالك إلا وجهه} {koullou chay-in hâlikoun illâ Wajhah} [ce qui signifie : « Tout disparaîtra sauf Son wajh »], il dit que cela signifie tout ce par quoi l’on recherche l’agrément de Allâh comme bonnes actions. En aucun cas il ne dit que « wajh » dans ce verset signifierait le visage ou la face, contrairement à ce que les moujassimah (corporalistes) ont pris comme croyance innovée.
– Cette parole de l’Imâm Soufyân Ath-Thawri est également confirmée de lui par :
Ibnou Abî Hâtim [dans son tafsîr]
L’Imâm Ibn ‘Atiyyah [dans son tafsîr]
L’Imâm Ibnou l-Jawzi [dans son tafsîr]
L’Imâm Al-Qourtoubi [dans son tafsîr]
L’Imâm Aboû Hayyân Al-Andalouçi [dans son tafsîr]
Ibnou Kathîr [dans son tafsîr]
L’Imâm Ibnou Hajar Al-‘Asqalâni [dans son commentaire du sahîh Al-Boukhâri]
L’Imâm Badrou d-Dîn Al-‘Ayni [ dans son commentaire du sahîh Al-Boukhâri ].
Et bien d’autres…
– D’autres savants ont également mentionné cette interprétation, parmi eux :
L’Imâm Ibnou l-‘Abbâs [voir le scan],
Moujâhid [voir le scan],
L’Imâm Al-Boukhâri [ dans son Sahîh ],
L’Imâm Abou l-‘Âliyah [ rapporté par Al-Baghawi dans son tafsîr ].
Le Moufassir Al-Khâzin [ dans son tafsîr ]
Et bien d’autres. Ceci nous démontre que les savants du Salaf avaient quelquefois recourt à l’interprétation détaillée.
– Le mot « wajh » dans la langue arabe a plusieurs sens, et son sens premier est « visage » ou « face ». Mais ce n’est pas ce sens qui est retenu lorsqu’il est attribué à Allâh. Car Allâh n’est pas composé de partie, Il n’est pas un corps et Il n’a ni membre, ni organe.
– Le grand savant du Salaf, l’Imâm At-Tahâwi (رحمه الله) a dit : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres. Les six directions ne Le délimitent pas, contrairement à toutes les créatures » [‘Aqîdah At-Tahâwiyyah] .
– De nombreux autres savants ont interprété le mot « wajh » en fonction du contexte du verset. [ Consultez des paroles de savants : ici ].
– Retrouvez aussi l’article : “Al-Albâni (wahhabite) déclare indirectement mécréant l’Imâm Al-Boukhâri pour son interprétation du terme wajh par moulk” : ici .
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth) Aboû Bakr Ahmad Ibnou l-Houçayn Al-Bayhaqi, est né en 384 et il est décédé en 458 de l’hégire (رحمه الله), c’est-à-dire il y a presque 1000 ans. Il fait partie des plus grands savants du hadîth, et il est de l’école de jurisprudence Châfi’ite. Voir la biographie de l’Imâm Al-Bayhaqi : ici .
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Moufassir (spécialiste de l’exégèse), le Faqîh (spécialiste de la jurisprudence), Abou l-Fadl ‘Abdou r-Rahmân ibnou Abi Bakr Jalâlou d-Dîn as-Souyoûti est un grand savant Chafi’ite reconnu par toute la communauté musulmane. Il est né en 849 au Caire et il est décédé en 911 de l’hégire au Caire (رحمه الله) c’est-à-dire il y a environ 520 ans. Certains l’ont désigné comme le moujaddid du 10ème siècle de l’hégire (c’est-à-dire celui qui revitalise la science de la religion).', 'ad-dourrou al-manthour fî at-tafsîr bil ma''thour, ad-dourrou l-manthoûr, ad-dourrou l-manthoûr fi t-tafsîri bi l-ma-thoûr, agrément'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وأخرج البيهقي في شعب الإِيمان عن سفيان [الثوري] في قوله : {كل شيء هالك إلا وجهه} قال: إلا ما أريد به وجهه من الأعمال الصالحة');

-- source: https://islamsunnite.net/imam-taqiyyou-d-din-al-housni-parle-hadith-nouzoul/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Imâm Al-Hisni explique le hadîth du Nouzoûl.', 'Les Chafi''ites', 'ومنها حديث النزول وهو في الصحيحين من حديث أبي هريرة رضي الله عنه أنه قال ينزل ربنا كل ليلة إلى السماء الدنيا حين يبقى ثلث الليل الآخر يقول من يدعوني فأستجيب له إلى آخره .وهذا الحديث رواه عشرون نفسا من الصحابة رضي الله عنهم .وقد تقدم أنه تستحيل على الله عزوجل الحركة والتنقل والتغير لأن ذلك من صفات الحدث فمن قال ذلك في حقه تعالى فقد ألحقه بالمخلوق وذلك كفر صريح لمخالفة القرآن في تنزيهه لنفسه سبحانه وتعالى', '« Et parmi eux (c’est-à-dire les hadîth à ne pas prendre selon le sens apparent), il y a le Hadîth du nouzoûl. Il est dans les deux sahîh (Al-Boukhâri et Mouslim), d’après Aboû Hourayrah (رضي الله عنه), le prophète (صلى الله عليه وسلم) a dit : « Yanzilou rabbounâ koullou laylatin ila s-samâ-i d-Dounyâ hîna yabqâ thouloutha l-layli l-Âkhiri yaqoûlou man yad’oûnî fa-asstajîbou lahou … » jusqu’à sa fin. Et ce hadîth a été rapporté par vingt compagnons (رضي الله عنهم). Comme dit précédemment, il est impossible au sujet de Allâh ‘azza wa jall le mouvement, le déplacement et le changement, car cela est de parmi les attributs des créatures ; et celui qui attribue cela au sujet de Allâh ta’âlâ, lui aura attribué d’être une créature et cela est de la mécréance explicite de par la contradiction que cela comporte du Qour-ân, en ce qui concerne l’exemption de Allâh [de tout ce qui est indigne de lui être attribué] pour Lui-même soubhânahou wa ta’âlâ »', '', 'Dans son livre « Daf’ou choubahi man chabbaha wa tamarrad » (page 125 de cette édition), l’Imâm Taqiyyou d-Dîn Al-Hisni a dit :
Informations utiles :
– L’Imâm, le Faqîh (spécialiste de la jurisprudence) Aboû Bakr Taqiyyou d-Dîn Al-Hisni Al-Houçayni Ach-Châfi’i Ad-Dimachqi est né en 752 et il est décédé en 829 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 600 ans.
– Ici, il évoque le hadîth connu sous le nom de hadîth du nouzoûl et il dit qu’il ne faut pas comprendre de ce hadîth que Allâh serait concerné par le mouvement, le déplacement et le changement, car ce sont là trois attributs de parmi ceux des créatures. Et il dit que celui qui attribue l’un de ces trois attributs à Allâh, a commis de la mécréance, car cela comporte une contradiction du Qour-ân.
– Il y a en effet certaines personnes ignorantes de la science du tawhîd, qui s’illusionnent suite à la lecture de ce hadîth que Allâh serait dans la direction du haut et qu’Il descendrait dans le ciel. Cette mauvaise compréhension les a mené à la mécréance.
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
L’Imâm Al-Jouwayni [Al-Irchâd]
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
L’Imâm Taqiyyou d-Dîn Al-Hisni [Daf’ou choubahi man chabbaha wa tamarrad]
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
L’Imâm Taqiyyou d-Dîn Al-Hisni [Daf’ou choubahi man chabbaha wa tamarrad]
L’Imâm Al-Kawthari qui mentionne l’unanimité [ Maqâlâtou l-Kawthari (1) ] et [ Maqâlâtou l-Kawthari (2) ]
Ibnou l-Bannâ Al-Hambali qui a dit : « Celui qui prend le nouzoûl dans le sens de quitter un endroit pour en occuper un autre, et du déplacement alors c’est de la mécréance » [Al-Ousoûlou l-Moujarradah].
– Sachez également que de nombreux savants ont fait une interprétation détaillée de ce hadîth en expliquant que c’est l’ordre de Allâh, ou un ange, ou encore Sa miséricorde qui descend, parmi ceux qui ont soutenu cela, il y a :
L’Imâm Mâlik, comme le mentionne An-Nawawi qui présente cette interprétation comme l’une des voies valables chez les gens de la sounnah [ Charh Sahîh Mouslim ], Az-Zourqâni [ Charh du Mouwatta de l’Imâm Mâlik ], Ibn Battâl, Al-Qâdî ‘Iyâd, Al-Qastallâni, Al-Yamani, Moullâ ‘Ali Al-Qâri ainsi que Ibn ‘Abdi l-Barr et autres.
L’Imâm Ibn Foûrak
L’Imâm Al-Moutawalli [ Al-Ghounyah ]
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
– Ainsi il ne convient pas de prêter attention aux propos des wahhabites qui accusent les gens de la Sounnah qui ont interprété ce hadîth d’être des mou’attil (négateur/athée). Ces mêmes wahhabites qui prétendent qu’il s’agit d’une descente véritable de Allâh tout comme l’a prétendu Ibn Outhaymîn (wahhabite) qui a dit : « Et il s’agit d’une descente véritable qui convient à Allâh. Et les négateurs (ahlou t-Ta’tîl) l’ont interprété par la descente de Son ordre, de Sa miséricorde ou d’un de parmi Ses anges » [ Dans son commentaire du livre Loum’atou l-I’tiqâd ] . Ainsi, il est venu avec une croyance totalement opposée aux savants mentionnés ci-dessus.
– Cette croyance que défendent les wahhabites est propre aux mouchabbihah (corporalistes) comme l’a signalé l’Imâm Ibn Hajar, lorsqu’il a dit : “ Les gens ont divergé sur le sens de an-nouzoûl : certains l’ont pris selon son sens apparent et son sens propre (haqîqi), et ce sont les corporalistes (al-Mouchabbihah), et Allâh est exempt de ce qu’ils disent. ” [ Charh Sahîh Al-Boukhâri ], et cette croyance que prône Ibn ‘Outhaymîn est celle que prônait l’ancêtre des moujassimah, Aboû ‘Abdi l-Lâh Ibn Karrâm qui prétendait que ce qu’il adore est concerné par le changement de lieu, le déplacement et la descente [ voir à ce sujet le livre de l’Imâm Ach-Charastâni : ici ].
– Retrouvez d’autres paroles de savants concernant le hadîth du nouzoûl : ici .', 'allah, ange, aqida, arabe'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ومنها حديث النزول وهو في الصحيحين من حديث أبي هريرة رضي الله عنه أنه قال ينزل ربنا كل ليلة إلى السماء الدنيا حين يبقى ثلث الليل الآخر يقول من يدعوني فأستجيب له إلى آخره .وهذا الحديث رواه عشرون نفسا من الصحابة رضي الله عنهم .وقد تقدم أنه تستحيل على الله عزوجل الحركة والتنقل والتغير لأن ذلك من صفات الحدث فمن قال ذلك في حقه تعالى فقد ألحقه بالمخلوق وذلك كفر صريح لمخالفة القرآن في تنزيهه لنفسه سبحانه وتعالى');

-- source: https://islamsunnite.net/imam-chafii-parle-istiwa-allah-rapporte-par-imam-rifai/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La position de l’Imâm Ach-Châfi’i sur l’istiwâ de Allâh.', 'Rifa''i', 'وقال إمامنا الشافعي رضي الله عنه لما سئل عن ذلك (أي آية الإستواء) : آمنت بلا تشبيه وصدقت بلا تمثيل واتهمت نفسي في الإدراك وأمسكت عن الخوض فيه كل الإمساك', '« Notre Imâm Ach-Châfi’i (رضي الله عنه) lorsqu’il a été interrogé à ce sujet [c’est- à-dire concernant l’istiwâ de Allâh ; comme le verset : « Ar-Rahmânou ‘ala l-archi stawâ »] a dit : « J’ai cru fermement en cela sans assimilation, j’en ai reconnu la véracité sans attribuer d’image, je me suis fait à l’idée que j’étais incapable d’en atteindre la réalité et je me suis abstenu d’engager une discussion à ce sujet d’une totale abstention.»', '', 'Dans son livre Al-Bourhânou l-Mou-ayyad (page 18 de cette édition), l’Imâm Ahmad Ar-Rifâ’i a dit :
Informations utiles :
– L’Imâm, le Moujtahid –jurisconsulte– Mouhammad Ibnou Idrîs Ach-Châfi’i est l’un des plus grands savants de notre communauté, c’est une référence incontournable pour tout musulman. C’est un salaf (C’est à dire qu’il a vécu dans les trois premiers siècles de l’hégire), il est né en 150 et il est décédé en 204 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 1230 ans. Il est l’Imâm de l’école (madh-hab) chafi’ite.
L’Imâm Abou l-Haçan As-Soulami a dit à son sujet : « Mouhammad Ibn Idrîs Ach-Châfi’i est le savant à la tête du second siècle [de l’Hégire] (c’est-à-dire le moujaddid – savant revivificateur) » [Rapporté par le Hâfidh Ibnou ‘Açâkir dans Tabyînou kadhibi l-Mouftari]
– Ici l’Imâm Ach-Châfi’i parle de l’istiwâ de Allâh et il confirme qu’il y a cru fermement sans assimilation et sans attribuer d’image. C’est-à-dire qu’il a accepté les termes mentionnés dans le Qour-ân sans en comprendre un sens qui implique l’assimilation (tachbîh) comme la position assise, l’installation, ou l’établissement sur le trône.
– Ibnou Kathîr mentionne également la position de l’Imâm Ach-Châfi’i concernant l’un des versets au sujet de l’istiwâ, qui est d’y croire sans assimilation, sans comment et sans prendre le sens apparent (comme la position assise ou l’établissement). [ Dans son tafsîr ]
– De même, l’Imâm Ibn Hajar Al-‘Asqalâni rapporte la croyance de l’Imâm Ach-Châfi’i concernant les textes équivoques (moutachâbih) qui est d’y croire dans leur globalité, en exemptant Allâh du comment (kayfiyyah) et de toute assimilation (tachbîh), et sans prendre ces textes selon leurs sens apparents. [ Dans son livre Fat-hou l-Bârî ]
– L’Imâm Ach-Châfi’i a dit : « Allâh ta’âlâ existe de toute éternité alors qu’aucun endroit n’est de toute éternité. Il a créé l’endroit en ayant l’attribut de l’exemption de début, tout comme avant la création des endroits, le changement n’est pas possible selon la raison à Son sujet, ni pour Son Être ni pour Ses attributs » [ Rapporté par Az-Zabîdi dans son livre It-hâfou s-Sâdati l-Mouttaqîn ]
– Al-Imâm Al-Kabîr (le Grand Imâm), le Chaykh, le Mouhaddith (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence), le Moufassir (spécialiste de l’explication du Qour’ân), Al-‘Ârifou bi l-Lâh, As-Sayyid (descendant du prophète) Ahmad ibn ‘Ali ibn Yahyâ Ar-Rifa’i Al-Houçayni Ach-Châfi’i est né en 516 et il est décédé en 578 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 900 ans. Il est le fondateur de la Tarîqah Rifâ’iyyah. Il était un maître connaisseur, un ascète, un saint véridique qui a suivi la droiture dans l’obéissance à Allâh, un savant éminent, un des océans de la science, l’un de ceux qui œuvrent conformément à leur science.
– Cette citation de l’Imâm Ach-Châfi’i, en plus de l’Imâm Ahmad Ar-Rifâ’i, est mentionnée par :
L’Imâm Al-‘Izz Ibn ‘Abdi s-Salâm dans son livre « Hallou r-Roumoûz » ;
Le Chaykh Taqiyyou d-Dîn Al-Hisni dans son livre « Daf’ou choubahi man chabaha wa tamarrad »,
Le Chaykh Ahmad Zarroûq Al-Fâçi dans son Charh ‘Aqîdati l-Imâm Al-Ghazâli ;
Et beaucoup d’autres savants.
– Sachez également que l’Imâm Ach-Châfi’i considérait mécréants ceux qui ont pour croyance que Allâh est assis sur le trône [Voir à ce sujet : le livre du Qâdî Houçayn , le livre de l’Imâm Al-Qourachi : ici et le livre du Chaykh Ibnou Ar-Rif’ah : ici ] et il considérait également mécréants ceux qui attribuent le corps ou la direction à Allâh [Voir à ce sujet : le livre du Chaykh Moulla ‘Ali Al-Qâri : ici ; le livre du Chaykh Al-Haytami : ici ; le livre de l’Imâm As-Souyoûti : ici ; et le livre du Chaykh Mahmoûd As-Soubki : ici ].
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
Il n’est donc pas permis de traduire le verset {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} (Ar-Rahmânou ‘ala l-’archi stawâ) et ceux qui sont similaires par le fait que Allâh serait établi sur le trône car cette explication est contraire au tawhîd (l’unicité de Allâh). Consultez d’autres paroles de savants au sujet du terme « istawâ » : ici .', 'ahlou s-sounnah, ahmad al-rifa''i, ahmad ar-rifâ`î, ahmed al-rifa''i'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وقال إمامنا الشافعي رضي الله عنه لما سئل عن ذلك (أي آية الإستواء) : آمنت بلا تشبيه وصدقت بلا تمثيل واتهمت نفسي في الإدراك وأمسكت عن الخوض فيه كل الإمساك');

-- source: https://islamsunnite.net/imam-achari-declare-mecreants-ceux-qui-attribuent-corps-a-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Attribuer le corps à Allâh est de la mécréance.', 'Ach''ari', 'قال [يعني الإمام الأشعري] في النوادر: من اعتقد أن الله جسم فهو غير عارف بربه وإنه كافر به، كما في شرح الإرشاد لأبي القاسم الأنصاري', '« L’Imâm Al-Ach’ari a dit dans [son livre] An-Nawâdir : « Celui qui a cru que Allâh est un corps, il ne connait pas son Seigneur, et certes il est mécréant en Lui », comme cela est indiqué dans [le livre] Charhou l-Irchâd de Abou l-Qâçim Al-Ansâri »', '', 'Dans son livre « Ichârâtou l-Marâm min ‘Ibârati l-Imâm » (page 200 de cette édition), le Chaykh Al-Bayâdi a dit :
Informations utiles :
– L’Imâm Abou l-Haçan Al-Ach’ari est un savant du salaf (C’est à dire ayant vécu dans les trois premiers siècles de l’hégire) il est né en 260 (certains ont dit 270) et il est décédé en 324 de l’Hégire (d’autres ont dit 330 ou 333) (رحمه الله). Un très grand nombre de savants ont fait son éloge et le considèrent comme l’un des plus grands défenseurs de la croyance de Ahlou s-sounnah wa-l Jamâ’ah. Consultez sa biographie : ici.
L’Imâm Abou l-Haçan As-Soulami a dit à son sujet : « Al-Ach’ari est le savant à la tête du 3ème siècle [de l’Hégire] (c’est-à-dire le moujaddid – savant revivificateur) » [Rapporté par le Hâfidh Ibnou ‘Açâkir dans Tabyîn kadhib al-Mouftari]
Le Chaykh Mouhammad Ibn A’mar An-Nâbighah Al-Ghalâwi a dit de lui : « Al-Ach’ari est l’Imâm de Ahlou s-Sounnah » [Al-Moubâchir ‘ala Bni ‘Âchir]
Le Mouhaddith ‘Abdou l-Bâsit Al-Fâkhoûri a dit : « Nous disons que Ach-Châfi’i, Mâlik, Aboû Hanîfah, Ahmad Ibn Hanbal, Al-Awzâ’i, et le reste des moujtahidîn sont sur la bonne guidée de leur Seigneur, et que Abou l-Haçan Al-Ach’ari est un Imâm de la Sounnah, tout comme Aboû Mansoûr Al-Mâtourîdi » [Al-Kifâyah li Dhawi l-‘Inâyah]
– Al-‘Allâmah (l’illustre savant), Al-Qâdî (le juge), le Chaykh Kamalou d-Dîn Ahmad Al-Bayâdi Al-Hanafi est décédé en 1098 de l’Hégire (رحمه الله). Son livre « Ichâratou l-Marâm min ‘Ibârati l-Imâm » est une explication des ouvrages de l’Imâm Aboû Hanîfah.
– Ici, il rapporte une citation de l’Imâm Al-Ach’ari (رحمه الله) tirée de son livre « An-Nawâdir » dans laquelle il considère mécréant ceux qui attribuent le corps à Allâh.
– Il a également été rapporté de la part de l’Imâm Al-Ach’ari (رحمه الله) qu’il considère mécréants ceux qui attribuent l’endroit ou la direction à Allâh, comme cela a été mentionné par l’Imâm Aboû Mansoûr Al-Baghdâdi, l’Imâm Al-‘Irâqi, le Chaykh Moullâ ‘Ali Al-Qâri, le Chaykh Mahmoûd As-Soubki et autres. [A voir : Citation de Moullâ ‘Ali Al-Qari : ici ; Citation de Mahmoûd As-Soubki : ici et Citation d’Aboû Mansoûr Al-Baghdâdi : ici ]
– Malheureusement, il y a de nos jours des gens qui sont sur la croyance du tajsîm (le fait de croire que Allâh serait un corps) tout en pensant être sur l’Islâm. Et d’autres qui se revendiquent mensongèrement de l’Imâm Al-Ach’ari (رحمه الله) et qui en plus de le contredire, considèrent ses positions comme de l’extrémisme, et du takfîr abusif, tout en considérant le tajsîm comme une croyance valable en Islâm.
– De nombreux savants ont confirmé que le fait d’attribuer le corps à Allâh constitue de la mécréance. Parmi eux :
L’Imâm ‘Ali Ibnou Abî Tâlib [ Rapporté par Ibnou Mou’allim al-Qourachi ]
L’Imâm Aboû Hanîfah [ Rapporté par Al-Qarâfi ]
L’Imâm Mâlik [ Rapporté par Al-Qarâfi ]
L’Imâm Ach-Châfi’i [ Rapporté par As-Souyoûti ] et [ Rapporté par Al-Qarâfi ]
L’Imâm Ahmad Ibnou Hanbal [ Rapporté par Az-Zarkachi ] et [ Rapporté par Al-Qarâfi ]
L’Imâm Al-Ach’ari [Dans son livre An-Nawâdir] et [Rapporté par Al-Bayâdi] et [ Rapporté par Aboû Mansoûr Al-Baghdâdi ]
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
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ Dans son livre Minhou l-Jalîl ]
Le Chaykh Salîm Al-Bichri Al-Azhari (1335 H.) [Rapporté par Al-‘Azzâmi]
Le Chaykh Al-Marighni Az-Zaytoûni qui mentionne l’unanimité [ Dans son livre Tâli’ou l-Bouchrâ ]
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Chaykh Mehmed Zâhid Kotku [ Dans son livre Ehl-i Sünnet Akaidi ]
Le Mouhaddith Mouhammad Yâçîn Al-Fâdâni (1410 H.) qui mentionne l’unanimité [Dans son livre Boughyah Al-Mouchtâq]
Le Mouhaddith Al-Harari (1429 H.) [Dans son livre Boughyah At-Tâlib]
Al-Oustâdh Mouhammad At-Tâwîl Al-Mâliki Al-Maghribi (Enseignant à l’Université Al-Qarawiyyîn) (1436 H.) qui mentionne l’unanimité [ Dans son livre Al-Loubâb fî Charhi Touhfati t-Toullâb ]
Et beaucoup d’autres…', 'ach''ariya, ach3ari, achari, acharia'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال [يعني الإمام الأشعري] في النوادر: من اعتقد أن الله جسم فهو غير عارف بربه وإنه كافر به، كما في شرح الإرشاد لأبي القاسم الأنصاري');

-- source: https://islamsunnite.net/le-moufassir-ismail-haqqi-declare-mecreant-ceux-qui-attribuent-endroit-a-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Attribuer l’endroit à Allâh est de la mécréance.', 'Soubki Al-Azhari', 'قال العلامة إسماعيل حقي في تفسيره روح البيان : من قال إن الله في السماء إن أراد به المكان كفر وإن أراد به الحكاية عما جاء في ظاهر الأخبار لا يكفر', '« L’Illustre savant Ismâ’îl Haqqî a dit dans son tafsîr « Roûhou l-Bayân » : Celui qui dit que Allâh est « fi s-samâ », s’il vise par cela l’endroit alors il devient mécréant, mais s’il visait le simple fait de répéter ce qui est parvenu de manière apparente dans les textes, il ne commet pas de mécréance »', '', 'Dans son livre « Ad-Dînou l-Khâlis » Le Chaykh Mahmoûd As-Soubki a dit :
Informations utiles :
– Le Moufassir (l’éxégète), le Chaykh Ismâ’îl Haqqî Ibn Moustafâ Al-Istânboûli At-Tourki Al-Hanafi Al-Khalwati Al-Bouroûçawi est né en 1063 et il est décédé en 1127 de l’Hégire (رحمه الله), c’est à dire il y a plus de 300 ans.
– Ici, il dit clairement qu’attribuer à Allâh un endroit est de la mécréance, en précisant que celui qui dit « Allâh fi s-samâ» et qui vise par cette parole que Allâh est dans un endroit, alors il a commis de la mécréance, mais s’il a dit cette expression simplement pour répéter ce qui est parvenu de manière apparente dans les textes, sans attribuer l’endroit à Allâh, alors il ne commet pas de mécréance. En effet, la croyance des musulmans est de croire que Allâh existe sans endroit ni direction.
– Ce jugement a également été mentionné par d’autres savants tels que :
l’Imâm Ibn Noujaym Al-Hanafi [ Al-Bahrou r-Râ-iq ],
Dans le recueil de Fatwâ composé par un grand groupe de savants de la région de l’Inde [ Al-Fatâwâ Al-Hindiyyah ].
Le Chaykh Ahmad Ridâ Khân a dit : « Dans [le livre] Al-Bahrou r-Râ-iq [de l’Imâm Ibn Noujaym Al-Hanafi] et dans [Al-Fatâwâ] Al-Hindiyyah, il est stipulé : Devient mécréant celui qui attribue l’endroit à Allâh ta’âlâ. Et dans les Fatâwâ de l’Imâm Qâdî Khân : un homme qui dit : « Allâh est dans le ciel, Il sait que je ne possède rien » il commet de la mécréance car Allâh ta’âlâ est exempt de l’endroit. Et dans Fatâwa l-Khoulâsah : si quelqu’un dit : « prend l’arc et monte dans le ciel pour combattre Allâh » il commet de la mécréance car il aura attribué l’endroit à Allâh ta’âlâ ». [Dans son livre « Qawâri’ou l-Qahhâr fi r-Raddi ‘ala l-Moujassimah al-foujjâr »]
– Le Chaykh Ismâ’îl Haqqî qui est un savant Hanafite, mentionne ici ce qui est conforme à la position même de l’Imâm Aboû Hanîfah. Cela ayant été confirmé de lui par de nombreux savants tels que :
L’Imâm As-Samarqandi [ Charh Al-Fiqh Al-Akbar ],
Le Chaykh Ibn Hajar Al-Haytami [ Al-Minhajou l-Qawîm ],
Le Chaykh Al-Qarâfi [ Rapporté par Al-Haytami ],
Le Chaykh Moullâ ‘Ali Al-Qâri [ Mirqât al-Mafâtîh ] et [ Charh Al-Fiqh Al-Akbar ],
Le Chaykh Mahmoûd As-Soubki [ It-hâfou l-Kâ-inât ],
Et autres. D’ailleurs, l’Imâm At-Tahâwi dans son célèbre traité de croyance qu’il a présenté comme étant conforme à la voie de l’Imâm Aboû Hanîfah et de ses deux illustres élèves a dit : « Celui qui attribue à Allâh l’une des significations propres aux humains est devenu mécréant.» [ Al-‘Aqîdah At-Tahâwiyyah ] .
– De plus, les savants ont dit que la personne qui dirait pour entrer en Islâm “Il n’y a pas d’autre dieu à part Allâh, qui est localisé aux cieux” cela n’est pas valable de sa part et il ne devient pas musulman car le fait de croire que Allâh est dans un endroit ou une direction est une croyance qui est contraire à l’Islâm, contraire au tawhîd. Cela a été mentionné entre autre par :
L’Imâm An-Nawawi qui a dit : « Si quelqu’un dit “Il n’y a pas d’autre dieu à part celui qui est dans les cieux”, il ne devient pas croyant (musulman), et il en est de même s’il dit “Il n’y a pas d’autre dieu à part Allâh, qui est localisé aux cieux”, parce que le fait d’être localisé est impossible au sujet de Allâh ta’âlâ. » [ Dans son livre Rawdat At-Tâlibîn ]
L’Imâm Badrou r-Rachîd Al-Hanafi qui a confirmé ses propos [ Dans son ouvrage Riçâlatoun fî Alfâdhi l-Koufr ].
– Ainsi prenez garde aux propos des wahhabites qui prétendent que le hadîth de la femme esclave serait une preuve pour attribuer l’endroit à Allâh, tout comme l’a prétendu Ibn ‘Outhaymîne (wahhabite) qui a dit : « Dans le hadîth de la femme esclave il y a au sujet des attributs de Allâh : La confirmation d’un endroit à Allâh et qu’Il est dans le ciel » [Dans son livre Majmoû’ Al-Fatâwâ]. C’est exactement cette croyance corrompue que le Chaykh Ismâ’îl Haqqî et les autres savants, considèrent comme de la mécréance.
– Concernant la version du hadîth de la femme esclave où le prophète aurait demandé “ayna l-Lâh” et que la femme esclave aurait répondu “fi s-Samâ” les savants ont expliqué qu’il ne s’agit pas ici d’un questionnement au sujet de l’endroit. Consultez l’ explication de l’Imâm An-Nawawi : ici .
– De plus il y a unanimité chez les savants que tout les textes qui laisseraient croire selon leurs sens apparents que Allâh serait dans les cieux, doivent être interprété selon un sens digne d’être attribué à Allâh. A ce sujet :
Al-Qâdî ‘Iyâd a dit : « Il n’y a pas de divergence entre les musulmans dans leur totalité, qu’il s’agisse des savants du fiqh, du hadîth (mouhaddith), de la croyance (moutakallim), et de ceux qui les suivent, que les textes apparents [du Qour-ân et du hadîth] dans lesquelles il est cité “Allâh fi s-samâ ” comme Sa parole ta’âlâ {ءَأَمِنتُم مَّن فِى ٱلسَّمَآءِ أَن يَخۡسِفَ بِكُمُ ٱلۡأَرۡضَ } (a-amintoum man fi s-samâ an yakhsifa bikoumou l-ard ) ne sont pas pris dans le sens apparent (dhâhir), mais ils sont interprétés [par ce qui est digne de Allâh] chez la totalité d’entre eux (les savants). » [ Rapporté par An-Nawawi dans son Charh Sahîh Mouslim ]
Le Mouhaddith, le Faqîh Ahmad Ibn ‘Oumar Al-Qourtoubi (m.656 H.) a dit : « Avertissement : Sache qu’il n’y a pas de divergence chez les musulmans dans leur totalité, que ce soit chez leurs spécialistes du hadîth, leur Faqîh (spécialistes de la jurisprudence), leurs spécialistes de la croyance, et chez ceux qui les suivent, que les textes apparents [du Qour-ân et du hadîth] dans lesquelles il est cité “Allâh fi s-samâ ” comme Sa parole ta’âlâ {ءَأَمِنتُم مَّن فِى ٱلسَّمَآءِ أَن يَخۡسِفَ بِكُمُ ٱلۡأَرۡضَ } (a-amintoum man fi s-samâ an yakhsifa bikoumou l-ard ) ne sont pas pris dans le sens apparent (dhâhir), mais ils sont interprétés [par ce qui est digne de Allâh] chez la totalité d’entre eux (les savants) […] la parole de la femme esclave “fi s-samâ” n’est pas à prendre au sens apparent selon l’unanimité des musulmans […] et celui qui la prendrait selon son sens apparent un est égaré de parmi les égarés » [Al-Moufhim limâ Achkala min Talkhîssi Kitâbi Mouslim]
L’Imâm Al-Kawthari qui a dit : «La communauté a été unanime, que ce soit les sunnites ou les innovateurs, que Allâh n’est pas dans le ciel ; bien plus, tout ce qui est rapporté et qui laisserait penser cela doit être interprété par accord des savants, tout comme l’a mentionné Al-Qâdî ‘Iyâd dans Ikmâlou l-Mou’lim, et An-Nawawi a rapporté sa citation dans son commentaire du Sahîh de Mouslim » [Dans ses annotations du livre Al-Asmâ-ou wa s-Sifât de l’Imâm Al-Bayhaqi]
Le Moufassir Al-Qourtoubi (m.676 H.) a dit : « Tout ce qui est dans [ou au-dessus] les cieux (fi s-samâ) et sur terre et ce qui est entre eux est une création de Allâh ta’âlâ et Lui appartient, et s’il en est ainsi, il est donc impossible que Allâh soit dans [ou au-dessus] les cieux (fi s-samâ) ou sur terre, car s’Il était dans quelque chose Il serait circonscrit ou limité, et s’Il était ainsi, Il aurait été créé. Ceci est la voie des gens de la vérité. Et [on suit] la même règle pour Sa parole « A-amintoum man fi s-samâ » et sa parole [c’est-à-dire la parole du Prophète (صلى الله عليه وسلم)] à la femme esclave : «Ayna l-Lâh ?» et elle a répondu « fi s-samâ » et il ne l’a pas contredit, et ce qui est de cet ordre, ce n’est pas selon le sens apparent mais c’est interprété avec des interprétations correctes, qui sont très nombreuses dans les livres des gens de science » [ Dans son livre At-Tidhkâr fî Afdali l-Adhkâr ]
– Retrouvez d’autres articles concernant le hadîth de la femme esclave (Jâriyah) : ici
– Le Chaykh Aboû Mouhammad Mahmoûd ibnou Mouhammad ibnou Ahmad Khattâb As-Soubki Al-Azhari Al-Mâliki est décédé en 1352 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 80 ans. Il était l’un des Chaykh de l’Université Islamique Al-Azhar.
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
Le Moufassir Ismâ’îl Haqqi [Dans son Tafsîr]
L’Imâm Abdou l-Ghani An-Nâboulouçi [ Dans son livre Al-Fathou r-Rabbâni ]
Le Chaykh Ibn Balbân [Dans son livre Moukhtasar Al-Ifâdât] et [ Rapporté par Al-Qaddoûmi ]
Le Chaykh As-Sâwi Al-Mâliki [ Dans sa Hâchiyah du Tafsîr al-Jalâlayn ]
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ Dans son livre Minhou l-Jalîl ]
Le Chaykh Al-Qawouqji [ Dans son livre Al-I’timâd fi l-I’tiqâd ]
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Chaykh Mahmoûd As-Soubki Al-Azhari qui mentionne l’unanimité [ Dans son livre It-hâfou l-Kâ-inât ] et [ Dans son livre It-hâfou l-Kâ-inât (2) ] et [ Dans son livre It-hâfou l-Kâ-inât (3) ] et [ Dans son livre It-hâfou l-Kâ-inât (4) ]
Le Chaykh Mehmed Zâhid Kotku [ Dans son livre Ehl-i Sünnet Akaidi ]
Le Mouhaddith Al-Harari (1439 H.) [Dans son livre As-Sirât Al-Moustaqîm]
Et beaucoup d’autres…', 'ad din al khalis, ad-deen-ul-khalis, ad-dînou l-khâlis, al azhar'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال العلامة إسماعيل حقي في تفسيره روح البيان : من قال إن الله في السماء إن أراد به المكان كفر وإن أراد به الحكاية عما جاء في ظاهر الأخبار لا يكفر');

-- source: https://islamsunnite.net/limam-abou-mansour-al-baghdadi-explique-la-difference-entre-un-prophete-et-un-messager/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La différence entre le prophète et le messager.', 'Unanimité', 'الفرق بين الرسول والنبى : ان كل من نزل عليه الوحى من الله تعالى على لسان ملك من الملائكة وكان مؤيدا بنوع من الكرامات الناقضة للعادات فهو نبى ومن حصلت له هذه الصفة وخص ايضا بشرع جديد او بفسخ بعض احكام شريعة كانت قبله فهو رسول', 'La différence entre le messager et le prophète : Celui qui a reçu la révélation de la part de Allâh ta’âlâ par le biais d’un ange, et à qui advient des miracles est un prophète (nabiyy) ; et celui à qui advient les attributs précédemment cités et à qui est accordé une Loi nouvelle ou l’abrogation de certains jugements de la Loi [du prophète] qui l’a précédée, celui-ci est un messager (raçoûl).', '', 'Dans son livre « Al-Farqou bayna l-Firaq » (page 278 de cette édition), l’Imâm Aboû Mansoûr Al-Baghdâdi a dit :
Informations utiles :
– Le Chaykh, le Mouhaddith (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence), al-Ousoûli (spécialiste des fondements), le Loughawi (spécialiste de la langue Arabe), l’Imâm Aboû Mansoûr ‘Abdou l-Qâhir Ibnou Tâhir At-Tamîmi Al-Baghdâdi Al-Isfarâyîni est décédé en 429 de l’hégire (رحمه الله) c’est-à-dire il y a plus de 1000 ans. C’est un savant dans l’école de jurisprudence Chafi’ite. Nous pouvons mentionner de parmi ses Chouyoukh l’Imâm Aboû Is-hâq Al-Isfarâyîni [m.418 H.]. Et on compte de parmi ceux qui ont rapporté de lui : l’Imâm Al-Bayhaqi [m. 458 H.] et l’Imâm Al-Qouchayri [m. 465 H.].
Tâjou d-Dîn As-Soubki a dit de lui : « Le grand Imâm, l’enseignant (Oustâdh) […] l’Imâm au degré très élevé, au statut honoré, qui a beaucoup de science, » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit à son sujet : « L’illustre savant (Al-‘Allâmah), celui qui excelle (Al-Bâri’), celui qui maîtrise de nombreuse sciences (al-Mouttafannin), l’enseignant (al-Oustâdh) […] l’auteur d’ouvrages originales, l’un des plus savants de parmi les Châfi’ites» [Siyarou A’lâmi n-Noubalâ]
Aboû ‘Outhmân As-Sâboûni a dit de lui : « Al-Oustâdh Aboû Mansoûr [al-Baghdâdi] faisait partie des imams des fondements et il était une grande personnalité de l’Islâm par unanimité des gens qui ont un mérite, il excellait dans l’agencement [de ses ouvrages], il était l’auteur d’ouvrage extraordinaire, et était un Imâm très honorable » [Tabyîn kadhib al-Mouftari]
‘Abdou l-Ghaffâr Al-Fârissi a dit le concernant : « Il est l’enseignant (al-Oustadh), l’Imâm complet [de par sa science], celui qui maitrise de nombreuse science, le spécialiste de la jurisprudence (al-Faqîh), le spécialiste des fondements de la religion (al-ousoûli), le spécialiste de la poésie, le spécialiste de la grammaire […] » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
– Le prophète et le messager ont en commun la révélation. Allâh leur révèle donc à tous deux une Loi de l’Islâm, conformément à laquelle ils agissent, pour la transmettre aux gens. Toutefois, le messager vient avec l’abrogation de certaines lois antérieures à son envoi ou avec une nouvelle Loi. Le prophète qui n’est pas messager, il lui est révélé de suivre la Loi de l’Islâm d’un messager précédent pour la transmettre. Pour cela, les savants ont dit : « Tout messager est aussi prophète alors que tout prophète n’est pas forcément messager » [voir à ce sujet la parole du Qâdi ‘Iyâd : ici] . De plus, ils se différencient par le fait que le statut de messager peut être attribué aux anges et aux êtres humains, alors que la simple prophétie, ne peut l’être que pour les humains.
– Les prophètes tout comme les messagers ont pour mission de transmettre la Loi de l’Islâm. Ainsi, l’avis disant que la différence entre le prophète et le messager serait qu’il est un devoir pour le messager de transmettre la révélation mais que cela ne serait pas un devoir pour le prophète, cela (cet avis) n’est pas à prendre en considération. Le Hâfidh Ahmad Al-Ghoumâri a blâmé strictement cet avis en disant : « Ceci est la parole de quelqu’un qui est ignorant de la Sounnah et des Akhbâr, et même de ce qui est explicite du Qour-ân » [Jou-natou l-‘Attâr p.40]
– Al-‘Allâmah Al-Bayâdi Al-Hanafi a dit : « Le prophète (nabiyy) est un homme que Allâh a envoyé pour transmettre ce qui lui a été révélé et il en est de même pour le messager (raçoûl) » [Ichârâtou l-Marâm]
– Le Moufassir Nâsirou d-Dîn Al-Baydâwi a dit : « Le messager (raçoûl) est celui que Allâh a envoyé avec une Loi nouvelle et qui appelle les gens à la suivre ; et le prophète (nabiyy) englobe cela et aussi celui que Allâh a envoyé pour confirmer la Loi précédente, comme les prophètes de Banoû Isrâ-îl qui ont vécu entre Mouçâ et ‘Îçâ (عليم السلام) » [Dans son tafsîr t.4/57]
– Chaykh Nabîl Ach-Charîf Al-Houçayni Al-Azhari a dit : « Le Prophète non-messager est un homme qui reçoit la révélation sans loi nouvelle, mais il lui est révélé de suivre la loi du messager qui est venu avant lui. Et le Prophète-messager est celui auquel il a été révélé une nouvelle loi et tous deux ont pour ordre de transmettre la révélation. » [Bahjatou n-Nadhar]
– Allâh ta’âlâ dit : {كَانَ النَّاسُ أمَّةً وَاحِدَةً فَبَعَثَ اللّهُ النَّبِيِّينَ مُبَشِّرِينَ وَمُنْذِرِينَ} [ce qui a pour sens : ] « Les gens constituaient une seule communauté et Allâh a envoyé les Prophètes comme annonciateurs de bonne nouvelle et avertisseurs » . [Soûrat Al-Baqarah / 213]
– Après avoir expliquer la différence entre le prophète et le messager, l’Imâm Al-Baghdâdi explique que Âdam est le premier prophète-messager [ Al-Farqou bayna l-Firaq ].', 'abo mansor al baghdadi, abu mansur al baghdadi, al-baghdadi, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'الفرق بين الرسول والنبى : ان كل من نزل عليه الوحى من الله تعالى على لسان ملك من الملائكة وكان مؤيدا بنوع من الكرامات الناقضة للعادات فهو نبى ومن حصلت له هذه الصفة وخص ايضا بشرع جديد او بفسخ بعض احكام شريعة كانت قبله فهو رسول');

-- source: https://islamsunnite.net/imam-ibnou-l-jawzi-interprete-verset-lima-khalaqtou-biyadayy/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'le terme yad au sujet de Allâh ne désigne pas une partie corporelle', 'Ibn Al-Jawzi', 'و قوله {لِمَا خَلَقْتُ بِيَدَيَّ} أي بقدرتي و نعمتي', '« La parole de Allâh « limâ khalaqtou biyaday » [qui a pour sens : ] {pour ce que J’ai créé biyadayy} c’est-à-dire par Ma puissance et Ma grâce »', '', 'Dans son livre « Al-Bâzou l-Ach-hab » (page 44 de cette édition) le Hâfidh Ibnou l-Jawzi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste des chaînes de transmission du hadîth), le Moufassir (exégète) ‘Abdou r-Rahmân Ibnou ‘Ali connu sous le nom de Ibnou l-Jawzi le Hanbalite, est né en 508 à Baghdâd et il est décédé en 597 de l’Hégire à Baghdâd (رحمه الله) c’est-à-dire il y a plus de 845 ans.
– Ibnou l-Jawzi fait partie des piliers des hanbalites. Il a écrit un livre appelé « Daf’ou Choubahi t-Tachbîh » pour répliquer à ceux qui ont attribué le corps à Allâh tout en se réclamant de l’école de l’Imâm Ahmad alors que l’Imâm Ahmad est innocent de ce qu’ils ont pris pour croyance. L’Imâm Ibnou l-Jawzi est à lui seul une armée contre les moujassimah qui se réclament hanbalites.
– Ici il explique une partie du verset 75 de Soûrat Sad, dans lequel apparaît le terme « biyadayy » et il explique que cela signifie la puissance et la grâce de Allâh.
– Cette citation de l’Imâm Ibnou l-Jawzi nous montre que certains savants Hambalites ont quelques fois eu recourt à l’interprétation détaillée.
– Remarquez que, contrairement aux anthropomorphistes (moujassimah), à aucun moment l’Imâm Ibnou l-Jawzi ne dit que cela désignerait des mains. En effet Allâh n’a pas de membres ni de parties corporelles car Il n’est pas un corps. Le terme « yad » lorsqu’il est attribué à Allâh ne vient jamais dans le sens du membre.
– Concernant ce verset, l’Imâm Al-Qourtoubi a dit : « Allâh ta’âlâ dit : {قَالَ يٰإِبْلِيسُ مَا مَنَعَكَ أَن تَسْجُدَ لِمَا خَلَقْتُ بِيَدَيَّ}, il n’est pas permis de le prendre dans le sens de la partie corporelle (c’est-à-dire la main), car Al-Bâri (c’est-à-dire Allâh) Jalla wa ta’âlâ est unique, il n’est pas possible à Son sujet la partition » [Dans son tafsîr lors du verset 64 de Soûrat Al-Mâ-idah]
– A ce sujet, l’Imâm du Salaf, Aboû Ja’far At-Tahâwi, dans son traité de croyance qu’il a présenté en disant « Ceci est la mention de la présentation de la croyance de Ahlou s-Sounnah wa l-Jamâ’ah », il a dit : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres». [Al-‘Aqîdah At-Tahâwiyyah]
– En effet, Allâh ta’âlâ dit : {لَيْسَ كَمِثْلِهِ شَيْءٌ} [Ce qui a pour sens] : « Absolument rien n’est tel que Lui ». Les savants spécialistes de tafsîr du Qour-ân ont confirmé que ce verset en lui-même est une preuve pour exempter Allâh du corps. Parmi eux : l’Imâm Ar-Râzi [ Dans son Tafsîr ], l’Imâm As-Souyoûti [ Dans son livre Al-Iklîl ] et autres.
– Et le Messager de Allâh (صلى الله عليه وسلم) a dit dans un hadîth sahîh (authentique) rapporté par Al-Boukhâri et autre : « كَـــــانَ اللهُ وَلَــــمْ يَــــكُــــنْ شَــىءٌ غَــيْـــرُهُ » [ce qui a pour sens ] : «Allâh existe de toute éternité et rien d’autre que Lui n’est de toute éternité ». Ce hadîth nous indique qu’hormis Allâh et Ses Attributs, rien n’existe de toute éternité, ni terre, ni ciel, ni mer, ni endroit, ni corps, ni membre, ni organe, ni aucune autre créature quelle qu’elle soit. Après cela comment attribuer à Allâh des choses entrées en existence ?!
– L’Imâm Ibnou Hajar Al-‘Asqalâni a mentionné l’unanimité sur le fait que le terme “yad” au sujet de Allâh ne vient pas dans le sens de la main. Il a dit : « Il est mentionné dans le Qour-ân et dans le hadîth l’annexion de « al-yad » à Allâh ta’âlâ, et Ahlou s-Sounnah wa l-Jamâ’ah ont été unanimes qu’il n’est pas visé [au sujet de Allâh] par « al-yad » l’organe (c’est-à-dire la main), qui fait partie des choses qui sont concernées par l’entrée en existence » [ Dans son livre « Hadyou s-Sârî Mouqaddimah Fath al-Bârî » ]
– L’Imâm Aboû Hanîfah a dit : « {yadou l-Lâhi fawqa aydîhim} et Son yad n’est pas comme le yad des créatures, ce n’est pas une partie corporelle (c’est-à-dire une main), et Il est Le Créateur des mains » [Dans son livre Al-Fiqhou l-Absat]
– L’Imâm Al-Bayhaqi a dit dans son livre Al-I’tiqâd : «Son « yad » n’est pas un organe (c’est-à-dire une main)». [ Al-I’tiqâd ]
– L’Imâm Al-Halîmi a dit lors de son explication du nom de Allâh « Al-Mouta’âlî » : « Cela signifie qu’Il est exempt du fait que Lui soit possible ce qui est possible aux choses qui entrent en existence : le mariage, l’enfantement, les organes et les membres […] » [Rapporté par Al-Bayhaqi]
– L’Imâm An-Naçafi (m.508 h.) a dit : « Il est permis de dire que Allâh ta’âlâ a un yad en Arabe, mais ce n’est pas permis en Persan. Et al-yad est l’un de Ses attributs éternels, sans comment (bila kayf) et sans similarité (wa lâ tachbîh) […] Il en est de même pour al-yad qui compte de parmi Ses attributs éternels sans comment, ni similarité, et qui n’est pas un membre. Ainsi, nous confirmons al-yad, et son sens est tel que Allâh ta’âlâ veut » [ Dans son livre Bahrou l-Kalâm ]
– L’Imâm Ahmad Ar-Rifâ’i a dit : «Ne dites pas que le yad et le ‘ayn [au sujet de Allâh] sont des organes » [Dans son livre Al-Bourhânou l-Mou-ayyad].
– L’Imâm Al-Qourtoubi a dit : « Le terme – yad – dans la langue Arabe peut venir dans le sens de la partie corporelle (c’est-à-dire de la main) comme dans la parole de Allâh ta’âlâ {wa khoudh bi yadika dightha} et ceci est impossible au sujet de Allâh ta’âlâ » [ Dans son tafsîr ]
– L’Imâm Al-Marjâni At-Toûniçi Al-Mâliki (m. 699 H.) a dit : « [La parole de Allâh : ] { يد الله فوق أيديهم } (Yadou l-Lâh fawqa aydîhim) : il ne s’agit pas ici d’un « yad » dans le sens d’une partie corporelle (c’est-à-dire une main), mais il s’agit d’un « yad » dans le sens de la puissance, car Al-Bâri (c’est-à-dire Allâh) est exempt d’une telle chose (c’est-à-dire d’avoir une main) » . [Rapporté par Ibnou l-Mou’allim Al-Qourachi dans son livre Najmou l-Mouhtadi]
– L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {بَلۡ يَدَاهُ مَبۡسُوطَتَانِ} (Bal yadâhou Mabsoûtatân) : ce qui en est voulu n’est pas le sens réelle de l’organe qui est composée, car Allâh ta’âlâ est exempt de la composition, mais il s’agit d’un des attributs de Son Être, comme l’ouïe et la vue, Allâh جل ذكره dit : {لِمَا خَلَقْتُ بِيَدَيَّ} (limâ khalaqtou biyaday), et le prophète a dit « كِلْتَا يَدَيْهِ يَمِينٌ » (kiltâ yadayhi yamîn ) et Allâh est plus savant concernant Ses attributs, ainsi les esclaves se doivent d’y croire, de les accepter et de les lires tels qu’ils sont parvenu, sans comment (bila kayf) » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
– L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {قَالَ يَاإِبْلِيسُ مَا مَنَعَكَ أَنْ تَسْجُدَ لِمَا خَلَقْتُ بِيَدَيَّ} (qâla yâ Iblîssou mâ mana’aka an tasjouda limâ khalaqtou biyadayy) : c’est-à-dire [ce que j’ai créé] moi-même sans intermédiaire comme un père ou une mère ; et « al-yadân » est un attribut de parmi les attributs de Allâh ‘azza wa jall, nous y croyons tel que cela est parvenu , et nous remettons la connaissance du sens à Allâh » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
– Le Chaykh Ibnou ‘Aqîl Al-Hambali a dit : « Allâh n’est pas de ceux qui ont des parties ou des organes» . [ Rapporté par Ibnou l-Jawzi ]
– L’Imâm Fakhrou d-Dîn Ar-Râzi lors de son explication de la parole de Allâh { ليس كمثله شيء } (layça kamithlihi chay) qui signifie « Rien n’est tel que Lui », il a dit : « Les savants du Tawhîd par le passé et par le présent ont retenu cette âyah comme argument pour nier le fait que Allâh ta’âlâ soit un corps composé d’organes et de parties étant dans un endroit et une direction ». [ Dans son tafsîr ]
– L’Imâm ‘Abdou l-Ghani An-Nâboulouçi a dit : « Quant à l’assimilation (tachbîh) c’est de croire que Allâh ta’âlâ ressemble à l’une de Ses créatures, comme ceux qui croient que Allâh est un corps au-dessus du Trône ou qui croient qu’Il a des mains […] et tout ceci est de la mécréance claire » [ Al-Fathou r-Rabbâni ]. Ainsi le fait de croire que Allâh aurait des mains ou n’importe quelle autre partie corporelle, ceci constitue de la mécréance. Quant à celui qui utilise le terme « main » sans en comprendre le sens de la partie corporelle, ce n’est pas de la mécréance, mais il n’est pas précautionneux d’utiliser ce terme au sujet de Allâh, en raison du risque que cela comporte, comme nous l’avons vu précédemment.
– L’Imâm At-Tahâwi a d’ailleurs dit : « Celui qui attribue à Allâh l’une des significations propres aux humains est devenu mécréant. Celui qui aura bien compris cela en aura tiré des leçons et se sera écarté des propos semblables à ceux des mécréants, il aura su que Allâh avec Ses attributs n’est pas semblable aux humains » [ Al-‘Aqîdah At-Tahâwiyyah ]
– Ainsi pour résumer nous disons que le terme « yad » dans la langue arabe a de très nombreux sens autre que le mot « main ». Lorsqu’il est employé au sujet de Allâh il n’est pas à prendre dans le sens de l’organe et de la partie corporelle. Les savants ont donné la règle suivante : La similarité dans les termes n’implique pas la similarité dans la signification . Cela signifie que lorsqu’un même terme est employé au sujet de Allâh et au sujet d’une créature alors la signification sera différente.
– Retrouvez d’autres citations concernant le terme « yad » : ici .
– Retrouvez d’autres citations sur le thème Allah n’est pas un corps / n’a pas d’organes : ici
– Retrouvez d’autres citations sur le thème Attribuer le corps à Allah est de la mécréance : ici', 'al-bazou l-‘ach-hab, allah, aqida, ayd'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'و قوله {لِمَا خَلَقْتُ بِيَدَيَّ} أي بقدرتي و نعمتي');

-- source: https://islamsunnite.net/imam-chafii-parle-des-bonnes-innovations-bayhaqi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La bonne innovation (bid’ah) par les savants du Salaf.', 'Les Chafi''ites', 'قَالَ الشَّافِعِي رضِيَ اللَّهُ عَنْهُ: الْمُحْدَثَاتُ مِنَ الْأُمُورِ ضِرْبَانِ: أَحَدُهُمَا: مَا أُحْدِثَ يُخَالِفُ كِتَابًا أَوْ سَنَةً أَوْ أَثَرًا أَوْ إِجْمَاعًا , فَهَذِهِ لَبِدْعَةُ الضَّلَالَةِ. وَالثَّانِيةُ: مَا أُحْدِثَ مِنَ الْخَيْرِ لَا خِلَافَ فِيهِ لِوَاحِدٍ مِنْ هَذَا , فَهَذِهِ مُحْدَثَةٌ غَيْرُ مَذْمُومَةٍ وَقَدْ قَالَ عُمَرُ رَضِيَ اللَّهُ عَنْهُ فِي قِيَامِ شَهْرِ رَمَضَانَ: «نِعْمَتِ الْبِدْعَةُ هَذِهِ» يَعْنِي أَنَّهَا مُحْدَثَةٌ لَمْ تَكُنْ', '« [L’Imâm] Ach-Châfi’i (رضي الله عنه) a dit : Les nouveautés parmi les choses sont de deux sortes :', '', 'Dans son livre « Al-Madkhal » (tome 1, pages 226 et 227 de cette édition), le Hâfidh Al-Bayhaqi a dit :
– l’une, c’est ce qui est innové et qui contredit le Livre (le Qour-ân), la Sounnah, les textes des prédécesseurs parmi les compagnons (Athar) ou l’Unanimité (Ijmâ’). Celle-là est l’innovation d’égarement.
– La deuxième, c’est ce qui est innové et qui fait parti des bonnes choses, qui ne comporte pas de contradiction avec aucun de ceux-là et cette nouveauté-ci n’est pas blâmable.
Et ‘Oumar [Ibnou l-Khattâb] (رضي الله عنه) a dit au sujet des veillées [en prière] durant le mois de Ramadân [derrière un seul imâm] « Quelle bonne innovation que cela », il veut dire qu’il s’agit d’une chose nouvelle qui n’avait pas lieu auparavant ».
Informations utiles :
– L’Imâm, le Moujtahid –jurisconsulte– Mouhammad Ibnou Idrîs Ach-Châfi’i est l’un des plus grands savants de notre communauté, c’est une référence incontournable pour tout musulman. C’est un salaf (C’est à dire qu’il a vécu dans les trois premiers siècles de l’hégire), il est né en 150 et il est décédé en 204 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 1230 ans. Il est l’Imâm de l’école (madh-hab) chafi’ite.
L’Imâm Abou l-Haçan As-Soulami a dit à son sujet : « Mouhammad Ibn Idrîs Ach-Châfi’i est le savant à la tête du second siècle [de l’Hégire] (c’est-à-dire le moujaddid – savant revivificateur) » [Rapporté par le Hâfidh Ibnou ‘Açâkir dans Tabyînou kadhibi l-Mouftari]
– Ici, l’Imâm Ach-Châfi’i fait la distinction entre les bonnes et les mauvaises innovations. Il précise que l’innovation qui ne comporte pas de contradiction avec Livre (le Qour-ân), la Sounnah, les textes des prédécesseurs parmi les compagnons (Athar) ou l’Unanimité (Ijmâ’) n’est pas une innovation blâmable.
– Cette parole est rapportée de lui par l’Imâm, le Hâfidh Aboû Bakr Ahmad Ibnou l-Houçayn Al-Bayhaqi, qui est né en 384 et qui est décédé en 458 de l’hégire (رحمه الله) c’est-à-dire il y a presque 1000 ans. Il fait partie des plus grands savants du Hadîth, et il est de l’école de jurisprudence de l’Imâm Ach-Châfi’i.
– La chaîne de transmission de cette citation est authentique (sahîh), et beaucoup de savants l’ont rapporté en des termes proches, tels que :
Le Hâfidh Al-Bayhaqi (dans un autre de ses ouvrages) [ Manâqibou ch-Châfi’i ] ;
Le Hâfidh Aboû Nou’aym [ Hilyatou l-Awliyâ ] ;
Le Hâfidh Ibnou ‘Açâkir [Tabyînou kadhibi l-mouftarî];
Le Hâfidh An-Nawawi [ Tahdhîbou l-‘Asmâ-i wa l-Loughât ] ;
Le Hâfidh As-Souyoûti ;
Et autres qu’eux… Même Ibn Taymiyah al-moujassim la rapporte et confirme que sa chaîne de transmission est authentique [ Dar-ou Ta’âroudi l-‘Aqli wa n-Naql ].
– Parmi ses arguments, il y a la parole de ‘Oumar Ibnou-l Khattâb, le compagnon et second Calife (رضي الله عنه) : « ni’matou l-bid’ah » c’est-à-dire “Quelle bonne innovation”. Cette parole de ‘Oumar a été rapporté par l’Imâm Al-Boukhâri [ Dans son Sahîh ] et l’Imâm Mâlik [ Dans son livre Al-Mouwatta ]. Et beaucoup de savants se sont appuyé sur cette parole de ‘Oumar pour confirmer qu’une innovation peut être bonne, parmi eux :
L’Imâm Al-Bayhaqi [ Manâqibou ch-Châfi’i ] ;
L’Imâm Ibn Battâl [ Charh Sahîh Al-Boukhâri ] ;
L’Imâm An-Nawawi [ Tahdhîbou l-‘Asmâ-i wa l-Loughât ] ;
L’Imâm Ibn Daqîq Al-‘Îd [ Charh des 40 hadîth de l’Imâm An-Nawawi ] ;
L’Imâm Ibn Hajar Al-‘Asqalâni [ Charh Sahîh Al-Boukhâri ] ;
Le Mouhaddith Al-Harari [ Ar-Rawâ-ihou z-Zakiyyah ] ;
et autres qu’eux.
– Le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ] .
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ]
– Retrouvez d’autres paroles de savants concernant l’innovation (bid’ah) :ici .', 'al-qawa3id, allah, aqida, athar'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قَالَ الشَّافِعِي رضِيَ اللَّهُ عَنْهُ: الْمُحْدَثَاتُ مِنَ الْأُمُورِ ضِرْبَانِ: أَحَدُهُمَا: مَا أُحْدِثَ يُخَالِفُ كِتَابًا أَوْ سَنَةً أَوْ أَثَرًا أَوْ إِجْمَاعًا , فَهَذِهِ لَبِدْعَةُ الضَّلَالَةِ. وَالثَّانِيةُ: مَا أُحْدِثَ مِنَ الْخَيْرِ لَا خِلَافَ فِيهِ لِوَاحِدٍ مِنْ هَذَا , فَهَذِهِ مُحْدَثَةٌ غَيْرُ مَذْمُومَةٍ وَقَدْ قَالَ عُمَرُ رَضِيَ اللَّهُ عَنْهُ فِي قِيَامِ شَهْرِ رَمَضَانَ: «نِعْمَتِ الْبِدْعَةُ هَذِهِ» يَعْنِي أَنَّهَا مُحْدَثَةٌ لَمْ تَكُنْ');

-- source: https://islamsunnite.net/oumar-ibnou-l-khattab-parle-de-bonne-innovation-rapporte-malik/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Calife ‘Oumar parle de bonne innovation (bid’ah).', '''Oumar Ibn Al-khattab', 'خَرَجْتُ مَعَ عُمَرَ بْنِ الْخَطَّابِ فِي رَمَضَانَ إِلَى الْمَسْجِدِ فَإِذَا النَّاسُ أَوْزَاعٌ مُتَفَرِّقُونَ يُصَلِّي الرَّجُلُ لِنَفْسِهِ وَيُصَلِّي الرَّجُلُ فَيُصَلِّي بِصَلَاتِهِ الرَّهْطُ ، فَقَالَ عُمَرُ : » وَاللَّهِ إِنِّي لَأَرَانِي لَوْ جَمَعْتُ هَؤُلَاءِ عَلَى قَارِئٍ وَاحِدٍ ، لَكَانَ أَمْثَلَ » فَجَمَعَهُمْ عَلَى أُبَيِّ بْنِ كَعْبٍ ، قَالَ : ثُمَّ خَرَجْتُ مَعَهُ لَيْلَةً أُخْرَى وَالنَّاسُ يُصَلُّونَ بِصَلَاةِ قَارِئِهِمْ ، فَقَالَ عُمَرُ : » نِعْمَتِ الْبِدْعَةُ هَذِهِ', '« Je suis sorti avec ‘Oumar Ibnou l-Khattâb (رضي الله عنه) en une nuit de Ramadân, à la mosquée, alors que les gens étaient en groupes isolés et séparés ; certains faisaient la prière individuellement, d’autres se rassemblaient en petit groupe et faisaient la prière en assemblée, alors ‘Oumar a dit : Wallâh, je vois que si je rassemble ces gens pour qu’ils soient dirigés par un seul homme récitant le Qour-ân, ce serait mieux. Puis il les a rassemblés derrière Oubayy Ibnou Ka’b. Une autre nuit, je suis sorti avec lui alors que les gens faisaient la prière derrière celui qui récitait le Qour-ân, ‘Oumar a dit : quelle bonne innovation que voici (ni’mati l-bid’ah hâdhih) ».', '', 'Dans son célèbre recueil de hadîth « Al-Mouwatta » l’Imâm Mâlik rapporte que ‘Abdou r-Rahmân Ibnou ‘Abdin Al-Qâri a dit :
Informations utiles :
– L’Illustre Compagnon, Amîr al-Mou-minîn, Aboû Hafs, ‘Oumar Ibnou l-Khattâb est décédé en 23 de l’hégire (رضي الله عنه) c’est-à-dire il y a environ 1410 ans. Le prophète (صلى الله عليه وسلم) a fait son éloge en de nombreuses occasions. Il l’a surnommé Al-Fâroûk (c’est-à-dire celui qui discerne le vrai du faux). Il a dit a son sujet (ce qui a pour sens) : « Allâh a fait que la vérité sorte de la bouche de ‘Oumar et qu’elle soit dans son cœur » ; il a dit également (ce qui a pour sens) : « Si il y avait un prophète après moi, ce serait ‘Oumar » ; il a également fait son éloge en disant (ce qui a pour sens) : « Un des plus fermes de ma communauté s’agissant de la loi de Allâh c’est ‘Oumar ». ‘Oumar fait également parti des compagnons à qui le Prophète (صلى الله عليه وسلم) a annoncé qu’ils auraient le Paradis.
– L’Imâm, le spécialiste de la science du Hadîth, le Moujtahid (jurisconsulte), Mâlik Ibnou Anas est l’un des plus grands savants de notre communauté, il est une référence incontournable pour tous musulman. C’est un Salaf (C’est-à-dire qu’il a vécu dans les trois premiers siècles de l’Hégire), il est né en 93 et il est décédé en 179 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1260 ans. Il est l’Imâm de l’école (madh-hab) Malikite. L’Imâm Ach-Châfi’i disait de lui « Lorsque les savants sont cités, Mâlik est comme une étoile » . Consultez sa biographie : ici .
– Ici, le glorieux Calife ‘Oumar Ibnou l-Khattâb dit clairement « quelle bonne innovation que voici » . Ceci est une preuve irréfutable qu’une innovation peut être bonne. Voici la compréhension de nos pieux prédécesseurs parmi les compagnons et les savants du Salaf et du Khalaf. Voir d’autres extraits de livres de savants sur l’innovation : ici .
– Ce hadîth se trouve dans « Al-Mouwatta » de l’Imâm Mâlik dans le livre des prières de Ramadân : chapitre de ce qui est parvenu concernant les veillés de Ramadân. Il a également été rapporté par l’Imâm Al-Boukhâri dans le livre de la prière surérogatoire des nuits de Ramadân : chapitre le mérite de celui qui accomplit des actes d’adoration de nuit, durant Ramadân [ Consulter le livre de Al-Boukhâri : ici ].
– De nombreux savants se sont appuyé sur cette parole du Calife ‘Oumar (رضي الله عنه) pour confirmer que l’innovation peut être bonne, parmi eux :
L’Imâm Ach-Châfi’i [ Rapporté par Al-Bayhaqi ] et [ Rapporté par Aboû Nou’aym ] et [ Rapporté par Al-Bayhaqi ] et [ Rapporté également par Ibn Taymiyah (moujassim) ]
L’Imâm Al-Bayhaqi [ Manâqibou ch-Châfi’i ] et [ Al-Madkhal ]
L’Imâm Ibn Battâl [ Charh Sahîh Al-Boukhâri ]
L’Imâm An-Nawawi [ Charh Sahîh Mouslim ]
L’Imâm Ibn Daqîq Al-‘Îd [ Charh des 40 hadîth de l’Imâm An-Nawawi ]
L’Imâm Ibn Hajar Al-Asqalâni [ Charh Sahîh Al-Boukhâri ]
L’Imâm As-Souyoûti [ Al-Hâwi li l-Fatâwi ]
Le Mouhaddith Al-Harari [ Ar-Rawâ-ihou z-Zakiyyah ]
et autres qu’eux.
– Le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ] .
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ].
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .', 'allah, aqida, bid3ah, bidah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'خَرَجْتُ مَعَ عُمَرَ بْنِ الْخَطَّابِ فِي رَمَضَانَ إِلَى الْمَسْجِدِ فَإِذَا النَّاسُ أَوْزَاعٌ مُتَفَرِّقُونَ يُصَلِّي الرَّجُلُ لِنَفْسِهِ وَيُصَلِّي الرَّجُلُ فَيُصَلِّي بِصَلَاتِهِ الرَّهْطُ ، فَقَالَ عُمَرُ : » وَاللَّهِ إِنِّي لَأَرَانِي لَوْ جَمَعْتُ هَؤُلَاءِ عَلَى قَارِئٍ وَاحِدٍ ، لَكَانَ أَمْثَلَ » فَجَمَعَهُمْ عَلَى أُبَيِّ بْنِ كَعْبٍ ، قَالَ : ثُمَّ خَرَجْتُ مَعَهُ لَيْلَةً أُخْرَى وَالنَّاسُ يُصَلُّونَ بِصَلَاةِ قَارِئِهِمْ ، فَقَالَ عُمَرُ : » نِعْمَتِ الْبِدْعَةُ هَذِهِ');

-- source: https://islamsunnite.net/chaykh-ibnou-battal-parle-bonnes-et-mauvaises-innovations/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les bonnes bid’ah', 'Ibn Battal', '« قول عمر: « نعم البدعة » فالبدعة اختراع ما لم يكن قبل، فما خالف السنة فهو بدعة ضلالة، وما وافقها فهو بدعة هُدى »', '« ‘Oumar [Ibnou l-Khattâb] a dit « Quelle bonne innovation » et l’innovation c’est ce qui a été inventé sans précédent. Celle qui contredit la Sounnah est l’innovation d’égarement (bid’atou dalâlah) , quant à celle qui est en accord avec la Sounnah c’est l’innovation de bonne guidée (bid’atou houdâ) .»', '', 'Dans son charh (commentaire) du Sahîh Al-Boukhâri, Le Chaykh Ibnou Battâl a dit :
Informations utiles :
– Le Chaykh ‘Ali Ibnou Khalaf Al-Mâliki connu sous le surnom de Ibnou Battâl Al-Qourtoubi puis Al-Balançi, est décédé en 449 de l’Hégire (رحمه الله) c’est-à-dire il y a presque 1000 ans. Il est l’un des premiers commentateurs du « Sahîh » de l’Imâm Al-Boukhâri. L’Imâm Ibnou Hajar le cite beaucoup dans son commentaire du Sahîh Al-Boukhâri «Fat-hou l-Bârî».
Adh-Dhahabi a dit de lui : « Il fait partie des plus grands savants Malikites. Le Qâdî ‘Iyâd a mentionné cela » [Siyar A’lâmi n-Noubalâ]
Ibn Bachkwâl a dit à son sujet : « Il était parmi les gens de science et de la connaissance (ma’rifah). Il a travaillé dans la science du hadith avec une attention particulière. Il a expliqué le Sahîh durant ses nombreux voyages. Et les gens l’ont rapporté de lui » [Siyar A’lâmi n-Noubalâ]
– Ici après avoir mentionné la parole du Calife ‘Oumar Ibnou l-Khattâb (رضي الله عنه) , il fait la distinction entre les bonnes et les mauvaises innovations. Il précise que l’innovation qui ne comporte pas de contradiction avec la Sounnah n’est pas une innovation blâmable, mais que si elle est en accord avec alors elle est une innovation de bonne guidée. Alors que celle qui comporte une contradiction avec la Sounnah, c’est celle-ci qui est blâmable.
– Cette parole de ‘Oumar a été rapporté par l’Imâm Al-Boukhâri [ Dans son Sahîh ] et l’Imâm Mâlik [ Dans Al-Mouwatta ]. Et beaucoup de savants se sont appuyé sur cette parole de ‘Oumar pour confirmer qu’une innovation peut être bonne, parmi eux :
L’Imâm Ach-Châfi’i [ Rapporté par Al-Bayhaqi ] et [ Rapporté par Aboû Nou’aym ] et [ Rapporté par Al-Bayhaqi ] et [ Rapporté également par Ibn Taymiyah (moujassim) ]
L’Imâm Al-Bayhaqi [ Manâqibou ch-Châfi’i ] et [ Al-Madkhal ]
L’Imâm Ibn Battâl [voir ci-dessus]
L’Imâm An-Nawawi [ Charh Sahîh Mouslim ]
L’Imâm Ibn Daqîq Al-‘Îd [ Charh des 40 hadîth de l’Imâm An-Nawawi ]
L’Imâm Ibn Hajar Al-Asqalâni [ Charh Sahîh Al-Boukhâri ]
L’Imâm As-Souyoûti [ Al-Hâwi li l-Fatâwi ]
Le Mouhaddith Al-Harari [ Ar-Rawâ-ihou z-Zakiyyah ]
et autres qu’eux.
– Le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ] .
– Ainsi, le hadîth qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah) est un hadîth dont les termes sont générales mais dont le sens est restreint c’est-à-dire que ce ne sont pas toute les innovations -dans l’absolu- qui sont de l’égarement, mais il s’agit des innovations qui contredisent la religion. Ainsi ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ].
– Consultez d’autres articles concernant les bonnes innovations : ici .', 'al boukhari, allah, aqida, bida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« قول عمر: « نعم البدعة » فالبدعة اختراع ما لم يكن قبل، فما خالف السنة فهو بدعة ضلالة، وما وافقها فهو بدعة هُدى »');

-- source: https://islamsunnite.net/imam-jouwayni-explique-nom-allah-nour/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas une luminosité.', 'Les Chafi''ites', 'النور ، معناه الهادى', 'An-Noûr : sa signification est Celui Qui guide (Al-Hâdî).', '', 'Dans son livre «Al-Irchâd ilâ Qawâti’i l-Adillah» (page 155 de cette édition), lors de l’explication des Noms de Allâh, Imâm Al-Haramayn Al-Jouwayni a dit :
Informations utiles :
– Imâm Al-Haramayn (des deux Haram) Abou l-Ma’âli ‘Abdou l-Malik Ibnou ‘Abdi l-Lâh Al-Jouwayni, est né en 419 et il est décédé en 478 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 950 ans. C’est un grand savant reconnu par toute la communauté musulmane. Il était surnommé « Imâm al-Haramayn » c’est-à-dire l’Imâm des deux enceintes sacrées de La Mecque et Médine. Il était du madh-hab (Ecole de jurisprudence) de l’Imâm Ach-Châfi’i et il fût l’un des chouyoûkh de l’Imâm Aboû Hâmid Al-Ghazâli (رحمه الله).
Le Chaykh Aboû Is-hâq Ach-Chîrâzi a fait son éloge en lui disant : « Oh toi qui est profitable aux gens d’orient et d’occident, certes les premiers comme les derniers ont profité de ta science ». Il lui a dit également : « Tu es en ce jour, l’Imâm des Imâms » [Dhayl Târîkh Baghdâd]
‘Abdou l-Ghaffâr Al-Fâriçi a dit de lui : « Imâm Al-Haramayn (des deux Haram), la fierté de l’Islâm, l’Imâm de la Oummah dans l’absolue, le docte dans la charî’ah, celui qui a réunis le statut d’Imâm en orient et en occident » [Al-Mountakhab]
Le Hâfidh Ibn Najjâr Al-Baghdâdi a dit à son sujet : « Il est un Faqîh (spécialiste de la jurisprudence) Chafi’ite, il est surnommé Imâm Al-Haramayn […] il est l’Imâm des fouqahâ (spécialistes de la jurisprudence) d’orient et d’occident […] il est parvenu au degré de l’ijtihâd» [Dhayl Târîkh Baghdâd]
‘Abdou l-Lâh Ibn Yoûçouf Al-Jarjâni a dit : « Abou l-Ma’âli Al-Jouwayni est l’Imâm de son temps » [Dhayl Târîkh Baghdâd]
– Ici, l’Imâm Al-Jouwayni explique que le Nom de Allâh « An-Noûr » signifie que Allâh est « Al-Hâdî » c’est-à-dire Celui Qui guide. Il ne faut pas comprendre de ce Nom, que Allâh serait une lumière qui est le contraire de l’obscurité car Il est Celui Qui crée la lumière.
– Allâh ta’âlâ dit dans Soûrat Al-An’âm : { وَجَعَلَ الظُّلُمَاتِ وَالنُّورَ } [ce qui a pour sens] : « Et Il (Allâh) créa les obscurités et la lumière » , Dès lors, comment serait-il possible qu’Il soit une lumière comme Ses créatures ?!
– De nombreux savants ont tenu des propos similaires. Parmi eux :
Le compagnon Ibnou l-‘Abbâs [ Rapporté par Al-Bayhaqi ],
Le Loughâwi Aboû Mansoûr Al-Azhari [ Rapporté par Ibn Mandhoûr ]
L’Imâm Al-Khattâbi [ Rapporté par Al-Bayhaqi ]
L’Imâm Al-Halîmi [ Rapporté par Al-Bayhaqi ]
L’Imâm Al-Bayhaqi qui a dit : « An-Noûr : Il est Celui Qui guide (Al-Hâdi), et il a été dit : Celui Qui crée la lumière (Al-Mounawwir)» [Al-I’tiqâd]
L’Imâm Ibnou l-Athîr [ Rapporté par Ibn Mandhoûr ]
Le Loughâwi Ibnou Mandhoûr [ Dans son ouvrage Liçânou l-‘Arab ]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Les mouchabbihah (assimilationnistes) ont dit : « Il est permis de dire que Allâh ta’âlâ est une lumière qui scintille » et Ahlou s-Sounnah wa l-Jamâ’ah ont dit : ceci n’est pas permis ! Car Allâh est Le Créateur de la lumière, et Il est Celui qui fait briller la lumière, et la lumière a une couleur, et si on dit qu’Il aurait une couleur cela impliquerait le tachbîh (la ressemblance avec les créatures) et Allâh ta’âlâ est exempt de la ressemblance avec les créatures. Et Ils (les mouchabbihah) ont argumenté avec la parole de Allâh ta’âlâ {الله نور السماوات والأرض} [qui a pour sens : ] « Allâh est noûr des cieux et de la terre » [et ils disent : ] Il s’est nommé lui-même « Noûr ». Alors nous leur disons : Ibn ‘Abbâs (رضي الله عنهما) a dit : cela signifie Celui Qui illumine les cieux et la terre. Et d’autres ont dit : cela signifie Celui Qui guide les gens des cieux et de la terre. » [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {اللَّهُ نُورُ السَّمَاوَاتِ وَالْأَرْضِ} (Allâhou Noûrou s-samâwâti wa l-ard) : c’est-à-dire qu’Il est Celui qui a la lumière des cieux et de la terre, et ces deux lumières sont le soleil et la lune, le sens est : Il est Celui qui guide ceux qui y sont (c’est-à-dire dans les cieux et sur terre) par sa lumière » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
Le Mouhaddith Al-Harari qui a dit : « Sa parole ta’âlâ : [اللهُ نُورُ السَّمَوَاتِ وَالأَرْض] (Allâhou noûrou s-samâwâti wa l-ard) signifie que Allâh ta’âlâ est Celui Qui guide les gens des cieux et de la terre vers la lumière de la foi, rapporté par Al-Bayhaqi de ‘Abdou l-Lâh Ibnou l-‘Abbâs, que Allâh les agrée tous deux. Allâh ta’âlâ n’est pas “noûr” dans le sens de « lumière » » [As-Sirâtou l-Moustaqîm]
Et beaucoup d’autres.
– Le fait de croire que Allâh serait une lumière (contraire de l’obscurité) est une croyance contraire à l’Islâm, et cette croyance fait sortir de l’islâm. [ voir à ce sujet la citation de l’Imâm An-Nâboulouçi : ici ].
– Le Chaykh, le Faqîh Aboû Chakoûr As-Sâlimi Al-Hanafi (m.~460 H.) a dit au sujet des Mouchabbihah (ceux qui ont pour croyance que Allâh ressemble aux créatures) : « Parmi eux certains disent que « Allâh ta’âlâ est une lumière qui scintille » et cela est de la mécréance car il y a le reniement d’un texte et il s’agit de la parole de Allâh ta’âlâ [qui a pour sens : ] {Rien n’est tel que Lui} » [Dans son livre At-Tamhîd fî Bayâni t-Tawhîd]
– Les savants ont dit que les corps sont de deux sortes : les corps palpables (que l’on peux toucher) et les corps impalpables (que l’on ne peux pas toucher). La lumière est un corps impalpable et Allâh n’est ni un corps palpable ni un corps impalpable. Les savants ont été unanimes sur le fait qu’attribuer le corps à Allâh est de la mécréance. [ Retrouvez des citations à ce sujet : ici ]
– Retrouvez d’autres paroles de savants ayant mentionné que Allâh n’est pas une lumière : ici .', 'ahlou s-sounnah, al-hadi, allah, an-noor'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'النور ، معناه الهادى');

-- source: https://islamsunnite.net/imam-thaalibi-explique-verset-wa-houwa-l-qahirou-fawqa-ibadih/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas dans une direction.', 'Tha''alibi', 'ف(فوق) : لا يجوز أن تكون للجهة، وإنما هى لعلو القدر والشأن، على حد ما تقول الياقوت فوق الحديد', '« Il n’est pas possible que le terme « fawqa » [dans ce verset] vienne dans le sens de la direction, mais il s’agit d’une élévation (‘oulouww) par la puissance et le mérite. Tout comme on dit [dans la langue arabe] le rubis est fawqa (c’est-à-dire supérieur en terme de valeur) au fer».', '', 'Dans son tafsîr du Qour-ân « Al-Jawâhir Al-Hissân», lors de l’explication de Soûrat Al-An’âm verset 61 qui comprend la partie { وَهُوَ ٱلۡقَاهِرُ فَوۡقَ عِبَادِهِ } (wa houwa l-Qâhirou fawqa ‘ibâdihi), l’Imâm Ath-Tha’âlibi a dit :
Informations utiles :
– L’Imâm, le Mouhaddîth (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Moufassir (exégète), le Loughawi (spécialiste de la langue Arabe) ‘Abdou-r-Rahmân ibnou Mouhammad ibnou Makhloûf Abî Zayd Ath-Tha’âlibi Al-Mâliki est né en 786 dans la région de Ouled Isser et il est décédé en 875 de l’Hégire à Alger (رحمه الله), c’est-à-dire il y a environ 560 ans. Il est un savant dans le madh-hab (école de jurisprudence) de l’Imam Mâlik. On peut citer parmi ses nombreux Chouyoûkh, le Hâfidh Waliyou d-Dîn Al-’Irâqi. De parmi ceux qui ont reçu de sa science : L’Imâm As-Sanoûçi (l’auteur du traité de croyance). Et de parmi les savants reconnus qui ont fait son éloge, le Hâfidh As-Sakhâwi. Il est enterré à Alger dans un Mausolée connu par le nom ” Sayyidi ‘Abdou r-Rahmân ”.
– Ici, il explique que le terme « fawqa » qui est attribué à Allâh dans ce verset désigne une supériorité par la puissance et le mérite et non une supériorité par l’endroit ou la direction. Et il explique que dans la langue Arabe le terme « fawqa » ne désigne pas forcement la supériorité spatiale. En effet lorsqu’on dit « al-yâqoût fawqa l-hadîd », ici il est très bien compris que le rubis est supérieur au fer en terme de valeur. Le sens ici n’est pas que le rubis est physiquement au-dessus du fer.
– Le Moufassir Ibn ‘Atiyyah Al-Andalouçi (m.541 h.) a tenu avec exactitude les mêmes propos que le Chaykh Ath-Tha’âlibi, dans son tafsîr. Le Chaykh Aboû Hayyân Al-Andalouçi (m.745 h.) mentionne également ces propos dans son tafsîr d’après Ibn ‘Atiyyah.
– Dans un autre passage de son livre l’Imâm Ath-Tha’âlibi tiens des propos proche de ceux-ci, en disant : « Al-‘Aliyy : Il est voulu par cela l’élévation (‘oulouww) par le mérite et l’éminence, et non d’une élévation spatiale [par l’endroit], car Allâh soubhânahou wa ta’âlâ est exempt de la localisation » [ Al-Jawâhir Al-Hissân ] .
– D’autres savants ont expliqué ce verset de manière similaire :
L’Imâm Al-Qourtoubi a dit : « La signification de : {فَوقَ عِبَادِه} (fawqa ‘ibâdih) c’est une fawqiyyah (supériorité) d’isti’lâ (de domination) par la manifestation de Sa toute puissance et la réalisation inéluctable de Sa volonté sur eux, c’est-à-dire que Ses esclaves sont assujettis à Sa volonté, et il ne s’agit pas d’une supériorité spatiale » [ Dans son tafsîr ] .
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « La parole de Allâh : { وَهُوَ ٱلۡقَاهِرُ فَوۡقَ عِبَادِهِ } (wa houwa l-Qâhirou fawqa ‘ibâdihi) c’est-à-dire la fawqiyyah (supériorité) du point de vue de la domination » [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
Le Chaykh Al-Bâbirti Al-Hanafi (m.786 H.) a dit : « La parole de Allâh : { وَهُوَ ٱلۡقَاهِرُ فَوۡقَ عِبَادِهِ } (wa houwa l-Qâhirou fawqa ‘ibâdihi) est une fawqiyyah (supériorité) du point de vue de la domination et du mérite et non pas du point de vue de l’élévation spatiale et de l’endroit» [Dans son commentaire de la tahâwiyyah]
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « Le verset { وَهُوَ ٱلۡقَاهِرُ فَوۡقَ عِبَادِهِ } (wa houwa l-Qâhirou fawqa ‘ibâdihi) c’est-à-dire que Allâh est Al-Qâdir (Celui qui est tout-puissant sur toutes choses) et Al-Ghâlib (Celui qui domine toutes choses). Et ce qui est voulu par « fawqa » est la supériorité (‘oulouww) en termes de puissance et de mérite, comme dans Sa parole { وَإِنَّا فَوْقَهُمْ قَاهِرُونَ} » [ Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân ]
Le Chaykh Moullâ ʹAli Al-Qârî a dit : « Quant à Son ‘oulouww, ta’âlâ, par rapport à Ses créatures qui est tiré de ce qui est de l’ordre de la parole de Allâh ta’âlâ : {وَ هُوَ القَاهِرُ فَوْقَ عِبَادِهِ} (wa houwa l-Qâhirou fawqa ‘ibâdih) [soûrat Al-An’âm / 61], il s’agit d’un ‘oulouww (élévation) par le mérite et l’éminence et non pas d’une élévation par l’endroit, conformément à ce qui est décrété chez les gens de Ahlou s-Sounnah wa l-Jamâ’ah » [ Dans son commentaire du livre Al-Fiqh al-Akbar ] .
– L’Imâm Ibnou Foûrak a dit à ce sujet : « Sache que, lorsque nous disons que Allâh ‘azza wa jall est “fawqa mâ khalaqa” (supérieur à ce qu’Il a créé), cela ne veut pas dire que c’est une fawqiyyah (supériorité) spatiale ni une élévation sur les endroits par la distance ni leur supervision par le contact avec quoi que ce soit de ces endroits » [Dans son livre Mouchkilou l-Hadîth] .
– Le Chaykh Abou n-Nasr Al-Qouchayri a dit : « Ainsi Ar-Rabb [c’est-à-dire Allâh] est attribué du ‘Oulouww (élévation) et de la Fawqiyyah (supériorité) par le mérite et l’éminence et Il est exempt d’être dans un endroit et d’être en face d’un corps» [Dans son livre At-Tadhkirah Ach-Charqiyyah]
– Egalement l’Imâm Ach-Chahrastâni a dit : « En ce qui concerne les expressions révélées (c’est-à-dire présentes dans le Qour-ân ou la Sounnah) telles que « al-istiwâ », « al-wajh », « al-yadayn », « al-janb », « al-majî », « al-ityân », « al-fawqiyyah » et d’autres que celles-ci, les corporalistes les prennent selon leur sens apparent, je veux dire telles qu’elles sont comprises lorsqu’elles sont employées au sujet des corps » [Dans son livre Al-Milal wa n-Nihal] .
– Pourtant le Messager de Allâh (صلى الله عليه وسلم) a catégoriquement nié la notion de direction au sujet de Allâh dans un hadîth sahîh. Il a dit (صلى الله عليه وسلم) [ce qui a pour sens : ] «Ô Allâh Tu es Adh-Dhâhir, rien n’est au-dessus de Toi et Tu es Al-Bâtin, rien n’est en-dessous de Toi » [ Rapporté par Mouslim , par Al-Bayhaqi et d’autres].
– Ainsi, les savants ont expliqué que la fawqiyyah (supériorité) de Allâh mentionnée dans ce verset ou encore dans le verset {yakhâfoûna Rabbahoum min fawqihim} n’est pas une fawqiyyah par l’endroit et la direction, mais il s’agit plutôt d’une fawqiyyah (supériorité) de domination, de toute puissance et de mérite.', 'al-akhdariyah, al-djaza''ir, al-jazā''ir, algérie'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ف(فوق) : لا يجوز أن تكون للجهة، وإنما هى لعلو القدر والشأن، على حد ما تقول الياقوت فوق الحديد');

-- source: https://islamsunnite.net/chaykh-azzami-unanimite-allah-sans-endroit-sans-direction/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La croyance en Allâh.', 'Al Azhar', 'فيكون ما أجمع عليه أهل الحق من علماء السلف والخلف من تنـزه الحق عن الجهة وتقدسه عن المكان وتعاليه عن التجزؤ والتبعيض والصعود والنـزول والقرب والبعد والذهاب والمجيء والحركة والسكون وما أشبه ذلك', 'Les gens de la vérité parmi les savants du salaf et du khalaf sont unanimes sur le fait que Allâh est exempt de la direction et de l’endroit, et sur Son exemption de la partition, de la division, de la montée, de la descente, de la proximité, de l’éloignement, du déplacement, du mouvement, de l’immobilité et de tout ce qui est semblable à cela', '', 'Dans son livre «Fourqânou l-Qour-ân», le Chaykh Al-Qoudâ’i Al-’Azzâmi a dit :
Informations utiles :
– Le Mouhaddith, le Faqîh (spécialiste de la jurisprudence), le Chaykh Salâmah Al-Qoudâ’i Al-’Azzâmi Ach-Châfi’i est né en 1298 et il est décédé en 1376 de l’Hégire (رحمه الله). Il faisait parti des savants de l’Université Islamique Al-Azhar d’Egypte.
– Ici, le Chaykh Al-‘Azzâmi rapporte l’unanimité des savants de l’Islam, qu’il soit du Salaf (les trois premiers siècles de l’Hégire) ou du Khalaf (ceux qui ont vécu après les trois premiers siècles) sur le fait que Allâh n’est pas dans un endroit, ni dans une direction, qu’Il n’est pas concerné par la partition, ni par la division, ni par la montée, ni par la descente, ni par la proximité, ni par l’éloignement, ni par le déplacement, ni par le mouvement, ni par l’immobilité, ou tout autres choses de semblable.
– En effet toutes ces caractéristiques sont des caractéristiques des corps, et Allâh n’est pas un corps, il n’est donc par permis de lui attribuer des caractéristiques propres aux créatures, comme ce qui a été mentionné ici.
– Allâh ta’âlâ dit dans Son livre honoré {لَيْسَ كَمِثْلِهِ شَيْءٌ} [Ce qui a pour sens] : « Rien n’est tel que Lui – d’aucune façon que ce soit -» . Les savants spécialistes de tafsîr du Qour-ân ont confirmé que ce verset en lui-même est une preuve pour exempter Allâh du corps. Parmi eux : l’Imâm Ar-Râzi [ Dans son Tafsîr ], l’Imâm As-Souyoûti [ Dans son livre Al-Iklîl ] et autres.
– Et le prophète (صلى الله عليه وسلم) a dit dans un hadîth sahîh (authentique) rapporté par Al-Boukhâri et autre : « كَـــانَ اللهُ وَلَــمْ يَـــكُـــنْ شَـىءٌ غَــيْـــرُهُ » [ce qui a pour sens ] : «Allâh existe de toute éternité et rien d’autre que Lui n’est de toute éternité ». Ce hadîth nous indique qu’hormis Allâh et Ses Attributs, rien n’existe de toute éternité, ni terre, ni ciel, ni mer, ni endroit, ni corps, ni membre, ni organe, ni aucune autre créature quelle qu’elle soit. Ce hadîth est donc une preuve que Allâh existe de toute éternité sans endroit ni direction.
– L’Imâm At-Tahâwi (رحمه الله) qui fait partie des illustres savants du salaf a dit dans son traité présentant la croyance de l’ensemble des gens de la Sounnah : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres. Les six directions ne Le délimitent pas, contrairement à toutes les créatures » [ Al-‘Aqîdah At-Tahâwiyyah ].
– Tout les musulmans ont pour croyance que Allâh existe sans endroit et sans direction. Cette unanimité a été mentionnée par de nombreux savants tels que :
L’Imâm Aboû Mansoûr Al-Baghdâdi [ Al-Farqou bayna l-Firaq ],
L’Imâm Al-Jouwayni [ Al-Irchâd ],
L’Imâm Ar-Râzi [ voir : ici ],
Le Chaykh Salîm Al-Bichri Al-Azhari [ Rapporté par le Chaykh Al-’Azzâmi ],
Le Chaykh Al-Qoudâ’i Al-’Azzâmi [voir ci-dessus],
Le Chaykh Mouhammad Al-‘Arabi At-Tabbâni [ Barâ-atou l-Ach’ariyyîn ],
Le Chaykh Mahmoûd As-Soubki [ It-hâfou l-Kâ-inat (1) ] et [ It-hâfou l-Kâ-inat (2) ],
Le Chaykh Ach-Chanqîti [ Al-Âyatou-l Mouhkamât ],
L’ancien Moufti d’Egypte, le Chaykh Mouhammad Bakhît Al-Moutî’i Al-Hanafi qui a dit : « L’ensemble de la communauté Islamique est sur la croyance que Allâh est exempt de l’incarnation dans les endroits, et qu’Il est exempt de la direction, c’est-à-dire d’être au-dessus de quelque chose, ou en dessous, ou à droite, ou à gauche, ou derrière ou devant. Et on ne dit pas que Allâh serait en contact par Son Être avec quelque chose, ou qu’Il serait séparé de quelque chose, ainsi on ne dit pas que Allâh serait séparé du monde, ou en contact avec lui » [Rapporté par le Chaykh Mahmoûd As-Soubki Al-Azhari dans son livre It-hâfou l-Kâ-inât],
Le Mouhaddith Al-Harari,
Dans une fatwâ de Dârou l-Iftâ Al-Misriyyah émise en 2005 [ voir : ici ]
Et beaucoup d’autres [ voir : ici ]
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah]', '''azzami, al-''azzami, al-azhar, al-qouda''i'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فيكون ما أجمع عليه أهل الحق من علماء السلف والخلف من تنـزه الحق عن الجهة وتقدسه عن المكان وتعاليه عن التجزؤ والتبعيض والصعود والنـزول والقرب والبعد والذهاب والمجيء والحركة والسكون وما أشبه ذلك');

-- source: https://islamsunnite.net/imam-al-baghawi-interprete-wajh-tafsir-sourat-al-qasas-88/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’a pas de visage ni aucune autre partie corporelle.', 'Baghawi', '{كل شيء هالك إلا وجهه } أي : إلا هو ، وقيل : إلا ملكه ، قال أبو العالية : إلا ما أريد به وجهه', '« {koullou chay-in hâlikoun illâ Wajhah} [ce qui signifie : « Tout disparaîtra sauf Son wajh »] c’est-à-dire sauf Lui (Allâh) ; et il a été dit : sauf Sa souveraineté (moulk). Abou l-‘Âliyah a dit : sauf ce par quoi on recherche Son agrément ».', '', 'Dans son Tafsîr « Ma’âlim At-Tanzîl », lors de l’explication du verset 88 de Soûrat Al-Qasas, l’Imâm Al-Baghawi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Moufassir (exégète) Aboû Mouhammad Al-Houçayn Ibnou Mas’oûd Al-Baghawi est né 433 et il est décédé en 516 de l’Hégire, (رحمه الله) c’est-à-dire il y a plus de 900 ans. Il est du Madh-hab (école de jurisprudence) de l’Imâm Ach-Châfi’i.
– Ici, il mentionne plusieurs interprétations du mot « wajh » dans le verset 88 de Soûrat Al-Qasas.
– La première interprétation qu’il mentionne est que « wajh » signifie ici Allâh lui-même. Cette interprétation a également été donnée par :
Le Moufassir Ad-Dahhâk [ rapporté par Ibnou l-Jawzi ]
Le Moufassir Aboû ‘Oubaydah [ rapporté par Ibnou l-Jawzi ]
L’Imâm At-Tabari [ rapporté par Ath-Tha’âlibi ]
L’Imâm Az-Zajjâj [ Ma’âni Al-Qour-ân ]
L’Imâm Al-Jouwayni [ rapporté par Ath-Tha’âlibi ]
L’Imâm Ibnou l-Jawzi [ Daf’ou Choubahi t-Tachbîh ]
Le Moufassir Al-Khâzin [ Dans son Tafsîr ]
Le Moufassir Ath-Tha’âlibi [ dans son Tafsîr ]
Chaykh Al-Islâm Zakariyyâ Al-Ansâri [ Dans son charh de « Ar-Riçâlatou l-Qouchayriyyah » ]
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {كل شيء هالك إلا وجهه} (koullou chay-in hâlikoum illâ Wajhah) : c’est-à-dire sauf Lui (Allâh) » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {وَيَبْقَى وَجْهُ رَبِّكَ} (wa yabqâ Wajhou rabbik) : c’est-à-dire Son Être » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
– La seconde interprétation qu’il cite est que « wajh » a ici le sens de la souveraineté (al-moulk). Cette interprétation a également été donnée par :
L’Imâm Al-Boukhâri [ Dans son Sahîh ]
L’Imâm Aboû Hayyân Al-Andalouçi [Dans son Tafsîr]
L’Imâm Ibn Hajar Al-‘Asqalâni [Charh Sahîh Al-Boukhâri]
L’Imâm Badrou d-Dîn Al-‘Ayni [ ‘Oumdatou l-Qâri ]
L’Imâm Al-Qastallâni [Irchâdou s-Sârî Charh Sahîh Al-Boukhâri]
– Et la troisième interprétation qu’il mentionne d’après Aboû l-‘Âliyah est que ce qui est visé par « wajh » ici, est ce par quoi l’on recherche l’agrément de Allâh. Cette interprétation a également été donnée par :
Le compagnon Ibnou l-‘Abbâs [rapporté par As-Souyoûti],
Le Tâbi’i Moujâhid [rapporté par As-Souyoûti],
L’Imâm Soufyân Ath-Thawri [ rapporté par Al-Bayhaqi ],
L’Imâm Al-Boukhâri [ dans son Sahîh ],
Le Moufassir Al-Khâzin [ dans son Tafsîr ]
Et bien d’autres.
– L’Imâm, le Hâfidh (spécialiste de la science du hadîth), le Moufassir (exégète), le Tâbi’i (successeur des compagnons) Rafî’ Abou l-‘Âliyah Ar-Riyâhi Al-Basri est décédé en 90 ou 93 de l’Hégire (ou après selon différents avis) (رحمه الله) c’est-à-dire il y a plus de 1300 ans. Il rencontra un grand nombre de compagnons tel que ‘Oumar, ‘Ali, Aboû Dharr, Ibnou Mas’oûd, Ibnou l-‘Abbâs, Aboû Moûçâ, Aboû Ayyoûb, ‘Â-ichah et beaucoup d’autres (رضي الله عنهم). Il fait parti de ceux qui ont pris le Hadîth de Aboû Hourayrah. Et parmi ceux qui le rapportent de lui on compte Al-Boukhâri, Mouslim, Aboû Dâwoûd, At-Tirmidhi, An-Naçâ-i, et Ibnou Mâjah.
Aboû Bakr Ibn Abî Dâwoûd a dit de lui : « Il n’y a personne après les compagnons qui soit aussi savant dans la science du Qour-ân que Abou l-‘Âliyah » [Tahdhîbou l-Asmâ wa l-Loughât]
An-Nawawi a dit à son sujet : « Il compte de parmi les plus grands des successeurs des compagnons » [Tahdhîbou l-Asmâ wa l-Loughât]
– Cette interprétation de Abou l-‘Âliyah a également été rapportée par Ath-Tha’alibi dans son tafsîr.
– Le mot « wajh » dans la langue arabe a plusieurs sens, et son sens premier est « visage » ou « face ». Mais ce n’est pas ce sens qui est retenu lorsqu’il est attribué à Allâh. En effet Allâh n’est pas composé de partie, Il n’est pas un corps, Il n’a ni membre, ni organe.
L’Imâm Al-Bayhaqi a dit : « Son « wajh » n’est pas une image [un visage] » [ Al-Asmâ-ou wa s-Sifât ].
Chaykh Al-Islâm Zakariyyâ Al-Ansâri a dit : « Allâh ta’âlâ dit : {Koullou chay-in hâlikoun illâ Wajhah} [ce qui signifie : « Tout disparaîtra sauf Son Wajh »], cela n’est pas dans le sens de l’organe (du visage) » [ Dans son charh de « Ar-Riçâlatou l-Qouchayriyyah » ] .
L’Imâm Ach-Chahrastâni a dit que le fait de prendre le terme wajh, dans ce type de verset, selon le sens apparent, c’est-à-dire selon le sens du corps est la voie des moujassimah (corporalistes) [ Dans son livre « Al-Milal wa n-Nihal » ]. Et il dit également que certains savants ne traduisaient pas ce terme dans les autres langues pour éviter des mauvaises compréhensions, alors ils se contentaient de le citer en arabe [ Al-Milal wa n-Nihal ].
Le Chaykh Ibn Hajar Al-Haytami a dit au sujet des versets équivoques (moutachâbihah) comme le verset {وَيَبْقَى وَجْهُ رَبِّكَ} « wa yabqâ wajhou rabbik » : « Le sens voulu n’est pas le sens apparent, du fait de l’impossibilité de l’attribuer à Allâh, Qui est totalement exempt de ce que disent les injustes et les mécréants » puis il explique les deux voies valables concernant ce type de verset. [ Al-Minhajou l-Qawîm ].
– De nombreux autres savants ont interprété le mot « wajh » en fonction du contexte du verset. [ Consultez des paroles de savants : ici ].
– Le grand savant du Salaf, l’Imâm At-Tahâwi (رحمه الله) a dit : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres. Les six directions ne Le délimitent pas, contrairement à toutes les créatures » [ Al’Aqîdah At-Tahâwiyyah ] .
– Retrouvez aussi l’article : “Al-Albâni (wahhabite) déclare indirectement mécréant l’Imâm Al-Boukhâri pour son interprétation du terme wajh par moulk” : ici .', 'abou al-''aliya, abou el ''aliya, abou l-''âliyah, abu al-''aliya'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '{كل شيء هالك إلا وجهه } أي : إلا هو ، وقيل : إلا ملكه ، قال أبو العالية : إلا ما أريد به وجهه');

-- source: https://islamsunnite.net/imam-chafii-distingue-bonnes-et-mauvaises-innovations-bida-rapporte-nawawi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Salaf et les bonnes innovations.', 'Les Chafi''ites', 'وروى البيهقي بإسناده في مناقب الشافعي عن الشافعي رضي الله عنه قال : المحدثات من الأمور ضربان، أحدهما ما أُحدث مما يخالف كتابا أو سنة أو أثرا أو اجماعا فهذه البدعة الضلالة، والثانية ما أحدث من الخير لا خلاف فيه لواحد من العلماء وهذه محدثة غير مذمومة، وقد قال عمر رضي الله عنه في قيام شهر رمضان: نعمتُ البدعة هذه، يعني أنها محدثة لم تكن', '« L’Imâm Al-Bayhaqi a rapporté avec sa chaîne de transmission dans [son livre] « Manâqibou ch-Châfi’i » d’après [l’Imâm] Ach-Châfi’i (رضي الله عنه), qu’il a dit : « Les nouveautés parmi les choses sont de deux sortes :', '', 'Dans son livre « Tahdhîbou l-Asmâ-i wa l-Loughât » (tome 3 page 23 de cette édition), après avoir confirmé qu’il existe des bonnes innovations [ voir l’article à ce sujet : ici ], l’Imâm An-Nawawi a dit :
– l’une, c’est ce qui est innové et qui contredit le Livre (le Qour-ân), la Sounnah, les textes des prédécesseurs parmi les compagnons (Athar) ou l’Unanimité (Ijmâ’). Celle-là est l’innovation d’égarement.
– La deuxième, c’est ce qui est innové et qui fait parti des bonnes choses, qui ne comporte pas de contradiction avec aucun de ceux-là et cette nouveauté-ci n’est pas blâmable ».
Et ‘Oumar [Ibnou l-Khattâb] (رضي الله عنه) a dit au sujet des veillées [en prière] durant le mois de Ramadân [derrière un seul imâm] « Quelle bonne innovation que cela », il veut dire qu’il s’agit d’une chose nouvelle qui n’avait pas lieu auparavant. »
Informations utiles :
– L’Imâm, le Moujtahid –jurisconsulte– Mouhammad Ibnou Idrîs Ach-Châfi’i est l’un des plus grands savants de notre communauté, c’est une référence incontournable pour tout musulman. C’est un salaf (C’est à dire qu’il a vécu dans les trois premiers siècles de l’hégire), il est né en 150 et il est décédé en 204 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 1230 ans. Il est l’Imâm de l’école (madh-hab) chafi’ite. Il suffit comme éloge à son sujet que les savants du hadîth ont été en accord pour dire que l’Imâm Ach-Châfi’i est celui qui est visé par la parole du Prophète (صلى الله عليه وسلم) :', 'ahlou s-sounnah, al-qawa3id, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وروى البيهقي بإسناده في مناقب الشافعي عن الشافعي رضي الله عنه قال : المحدثات من الأمور ضربان، أحدهما ما أُحدث مما يخالف كتابا أو سنة أو أثرا أو اجماعا فهذه البدعة الضلالة، والثانية ما أحدث من الخير لا خلاف فيه لواحد من العلماء وهذه محدثة غير مذمومة، وقد قال عمر رضي الله عنه في قيام شهر رمضان: نعمتُ البدعة هذه، يعني أنها محدثة لم تكن');

-- source: https://islamsunnite.net/imam-chafii-distingue-bonnes-et-mauvaises-innovations-bida-rapporte-nawawi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Salaf et les bonnes innovations.', 'Les Chafi''ites', '“عَالِمُ قُرَيْشٍ يَمْلأُ طِبَاقَ الأَرْضِ عِلْمًا”', '', '', '[qui a pour sens : ] «Le savant de Qouraych emplira la terre de Science» . [rapporté par l’Imâm Al-Bayhaqi]
L’Imâm Abou l-Haçan As-Soulami a dit à son sujet : « Mouhammad Ibn Idrîs Ach-Châfi’i est le savant à la tête du second siècle [de l’Hégire] (c’est-à-dire le moujaddid – savant revivificateur) » [Rapporté par le Hâfidh Ibnou ‘Açâkir dans Tabyînou kadhibi l-Mouftari]
– Ici, l’Imâm Ach-Châfi’i fait la distinction entre les bonnes et les mauvaises innovations. Il précise que l’innovation qui ne comporte pas de contradiction avec Livre (le Qour-ân), la Sounnah, les textes des prédécesseurs parmi les compagnons (Athar) ou l’Unanimité (Ijmâ’) n’est pas une innovation blâmable.
– La chaîne de transmission de cette citation est authentique (sahîh), et beaucoup de savants l’ont rapporté en des termes proches, tels que :
Le Hâfidh Al-Bayhaqi [ Al-Madkhal ] et [ Manâqibou ch-Châfi’i ]
Le Hâfidh Aboû Nou’aym [ Hilyatou l-Awliyâ ]
Le Hâfidh Ibnou ‘Açâkir
Le Hâfidh As-Souyoûti
Et autres qu’eux… Même Ibn Taymiyah al-moujassim la rapporte et confirme que sa chaîne de transmission est authentique [ Dans son livre Dar-ou Ta’âroudi l-‘Aqli wa n-Naql ].
– Parmi ses arguments, il y a la parole de ‘Oumar Ibnou-l Khattâb, le compagnon et second Calife (رضي الله عنه) : « ni’matou l-bid’ah » c’est-à-dire “Quelle bonne innovation”. Cette parole de ‘Oumar a été rapporté par l’Imâm Al-Boukhâri [ Dans son Sahîh ] et l’Imâm Mâlik [ Al-Mouwatta ]. Et beaucoup de savants se sont appuyé sur cette parole de ‘Oumar pour confirmer qu’une innovation peut être bonne, parmi eux :
L’Imâm Al-Bayhaqi [ Manâqibou ch-Châfi’i ] et [ Al-Madkhal ]
L’Imâm Ibn Battâl [ Charh Sahîh Al-Boukhâri ]
L’Imâm An-Nawawi [ Charh Sahîh Mouslim ]
L’Imâm Ibn Daqîq Al-‘Îd [ Charh des 40 hadîth de l’Imâm An-Nawawi ]
L’Imâm Ibn Hajar Al-‘Asqalâni [ Charh Sahîh Al-Boukhâri ]
Le Mouhaddith Al-Harari [ Ar-Rawâ-ihou z-Zakiyyah ]
et autres qu’eux.
– Le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ] .
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ]
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence) Aboû Zakariyyâ Mouhyi d-Dîn Yahyâ Ibnou Charaf An-Nawawi est un savant de référence. Il est né en 631 et il est décédé en 676 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 750 ans. C’est un savant dans l’école de jurisprudence Chafi’ite. Son commentaire du sahîh de l’Imâm Mouslim est très célèbre. Il a écrit d’autres livres tels que « Riyâd as-Sâlihîn » (le jardin des vertueux), et le recueil de 40 hadîth si connus.
Tâjou d-Dîn As-Soubki le surnommait « Chaykhou l-Islâm » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « Le Moufti de la Oummah, Chaykhou l-Islâm […] le Hâfidh (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chafi’ite, l’ascète, l’un des étendards (de la religion) » [Târîkhou l-Islâm]. Il a dit également : « Le Chaykh, le modèle (qoudwah) […] le Hâfidh (spécialiste de la science du hadîth), l’ascète, le pieux adorateur, le Faqîh (spécialiste de la jurisprudence), le moujtahid versé dans l’adoration de Son Seigneur, Chaykhou l-Islâm » [Siyar A’lâmi n-Noubalâ]
Ibn Kathîr a dit à son sujet : « Le Chaykh, l’Imâm, l’illustre savant (al-‘Allâmah), le Hâfidh (spécialiste de la science du hadîth) l’honorable Faqîh (spécialiste de la jurisprudence) […] l’un des pieux adorateurs et ascètes» [Tabaqâtou ch-Châfi’iyyah]
– Retrouvez d’autres paroles de savants concernant les bonnes innovations : ici .', 'ahlou s-sounnah, al-qawa3id, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '“عَالِمُ قُرَيْشٍ يَمْلأُ طِبَاقَ الأَرْضِ عِلْمًا”');

-- source: https://islamsunnite.net/imam-az-zajjaj-interprete-wajh-tafsir/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’a pas de visage ni aucune autre partie corporelle.', 'Zajjaj', 'قال الله عز وجل : {كل شيء هالك إلا وجهه} ؛ وقال : {ويبقى وجه ربك} ؛ المعنى: ويبقى ربك؛ والمعنى: كل شيء هالك إلا الله عز وجل.', '« Allâh ‘Azza wa Jall dit : {koullou chay-in hâlikoun illâ Wajhah} [ce qui signifie : « Tout disparaîtra sauf Son wajh »] et il dit : {wa yabqâ wajhou Rabbik} [ce qui signifie : « Et seul subsistera le wajh de ton Seigneur»] cela signifie : « seul subsistera ton Seigneur » ; et cela signifie «Tout disparaîtra sauf Allâh ‘azza wa jall » »', '', 'Dans son tafsîr « Ma’âni Al-Qour-ân» (Tome 1 pages 388 et 389 de cette édition), l’Imâm Az-Zajjâj a dit :
Informations utiles :
– L’Imâm, l’exégète (Moufassir), le Spécialiste de la langue Arabe (Loughawi), le Grammairien (Nahwi) Aboû Is-hâq Ibrâhîm Ibnou Mouhammad Ibnou s-Sourri Az-Zajjâj Al-Baghdâdi, est l’un des linguistes les plus connus. Il faisait partie des gens du Salaf, il est né en 241 et il est décédé en 311 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1120 ans. Il est souvent cité comme référence par les exégètes (moufassiroûn).
Al-Khatîb Al-Baghdâdi a dit de lui : « Il était parmi les gens honorables et versés dans la religion, il avait une bonne croyance et un bon madh-hab». [Târîkh Baghdâd]
Ibn Khallikân a dit le concernant : « Il était parmi les gens de science, de bonne manière et versé dans la religion». [Wafayâtou l-A’yân]
An-Nawawi a dit à son sujet : « L’Imâm dans la langue Arabe ». [Tahdhîbou l-Asmâ wa l-Loughât]
Ibn Kathîr a dit de lui : « Il était vertueux et versé dans la religion, il avait une bonne croyance et il était auteur de bons ouvrages, et parmi eux “Ma’âni Al-Qour-ân” et d’autres ouvrages bénéfiques.». [Al-Bidâyah wa n-Nihâyah]
Adh-Dhahabi a dit à son sujet : « L’Imâm, le grammairien (Nahwi) de son époque». [Siyarou A’lâmi n-Noubalâ]
– Ce grand savant du Salaf explique que dans les versets {wa yabqâ wajhou Rabbik} et {koullou chay-in hâlikoun illâ Wajhah} le terme “wajh” fait référence à Allâh lui-même. En effet dans la langue arabe le terme “wajh” peut être utilisé pour désigner l’être.
– Cette citation nous démontre que les savants du Salaf avaient quelquefois recourt à l’interprétation détaillée.
– Cette interprétation de l’Imâm Az-Zajjâj a également été rapportée de lui par l’Imâm Ath-Tha’âlibi qui a dit : « Un groupe (de savants) a dit : Le sens est : « tout sera anéanti sauf Lui soubhânah (c’est-à-dire sauf Allâh) ». At-Tabari la mentionné, ainsi qu’un groupe (de savants) et parmi eux il y a Abou l-Ma’âli (l’Imâm Al-Jouwayni) que Allâh lui fasse Miséricorde. Et Az-Zajjâj a dit : « sauf Lui (c’est-à-dire sauf Allâh). » [ Dans son tafsîr ]
– Cette interprétation a également été donnée par :
Le Moufassir Ad-Dahhâk [ rapporté par Ibnou l-Jawzi ]
Le Moufassir Aboû ‘Oubaydah [ rapporté par Ibnou l-Jawzi ]
L’Imâm At-Tabari [ rapporté par Ath-Tha’âlibi ]
L’Imâm Al-Jouwayni [ rapporté par Ath-Tha’âlibi ]
L’Imâm Al-Baghawi [ dans son tafsîr ]
L’Imâm Ibnou l-Jawzi [ Daf’ou Choubahi t-Tachbîh ]
Le Moufassir Al-Khâzin [ dans son tafsîr ]
Le Moufassir Ath-Tha’âlibi [ dans son tafsîr ]
Chaykh Al-Islâm Zakariyyâ Al-Ansâri [ Dans son charh de « Ar-Riçâlatou l-Qouchayriyyah » ]
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {كل شيء هالك إلا وجهه} (koullou chay-in hâlikoum illâ Wajhah) : c’est-à-dire sauf Lui (Allâh) » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {وَيَبْقَى وَجْهُ رَبِّكَ} (wa yabqâ Wajhou rabbik) : c’est-à-dire Son Être » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
– Le mot « wajh » dans la langue arabe a plusieurs sens, et son sens premier est « visage » ou « face ». Mais ce n’est pas ce sens qui est retenu lorsqu’il est attribué à Allâh. En effet Allâh n’est pas composé de parties, Il n’est pas un corps et Il n’a ni membre, ni organe.
L’Imâm Al-Bayhaqi a dit : « Son « wajh » n’est pas une image [un visage] » [ Al-Asmâ-ou wa s-Sifât ].
Chaykh Al-Islâm Zakariyyâ Al-Ansâri a dit : « Allâh ta’âlâ dit : {Koullou chay-in hâlikoun illâ Wajhah} [ce qui signifie : « Tout disparaîtra sauf Son Wajh »], cela n’est pas dans le sens de l’organe (du visage) » [ Dans son charh de « Ar-Riçâlatou l-Qouchayriyyah » ] .
L’Imâm Ach-Chahrastâni a dit que le fait de prendre le terme wajh, dans ce type de verset, selon le sens apparent, c’est-à-dire selon le sens du corps est la voie des moujassimah (corporalistes) [ Dans son livre « Al-Milal wa n-Nihal » ]. Et il dit également que certains savants ne traduisaient pas ce terme dans les autres langues pour éviter des mauvaises compréhensions, alors ils se contentaient de le citer en arabe [ Dans son livre « Al-Milal wa n-Nihal » ].
Le Chaykh Ibn Hajar Al-Haytami a dit au sujet des versets équivoques (moutachâbihah) comme le verset {وَيَبْقَى وَجْهُ رَبِّكَ} « wa yabqâ wajhou rabbik » : « Le sens voulu n’est pas le sens apparent, du fait de l’impossibilité de l’attribuer à Allâh, Qui est totalement exempt de ce que disent les injustes et les mécréants » puis il explique les deux voies valables concernant ce type de verset. [ Al-Minhajou l-Qawîm ].
– De nombreux autres savants ont interprété le mot « wajh » en fonction du contexte du verset. [ Consultez des paroles de savants : ici ].
– Le grand savant du Salaf, l’Imâm At-Tahâwi (رحمه الله) a dit : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres. Les six directions ne Le délimitent pas, contrairement à toutes les créatures » [ Al-‘Aqîdah At-Tahâwiyyah ] .
– Retrouvez aussi l’article : « Al-Albâni (wahhabite) déclare indirectement mécréant l’Imâm Al-Boukhâri pour son interprétation du terme wajh par moulk » : ici .', 'al-zajjaj, allah, aqida, arabe'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال الله عز وجل : {كل شيء هالك إلا وجهه} ؛ وقال : {ويبقى وجه ربك} ؛ المعنى: ويبقى ربك؛ والمعنى: كل شيء هالك إلا الله عز وجل.');

-- source: https://islamsunnite.net/chaykh-moulla-ali-qari-dit-allah-est-sans-endroit/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit', 'Qari', 'إنه سبحانه ليس في مكان من الأمكنة ولا في زمان من الأزمنة، لأن المكان والزمان من جملة المخلوقات وهو سبحانه كان موجودا في الأزل ولم يكن معه شىء من الموجودات', 'Allâh Soubhânah n’est pas dans un des endroits et Il ne dépend pas du temps, car l’endroit et le temps font partis de l’ensemble des créatures. Et Allâh Soubhânah existe de toute éternité alors que rien d’autre que Lui de parmi les choses existantes n’existe de toute éternité', '', 'Dans son Charh (commentaire) du livre « Al-Fiqh Al-Akbar » de l’Imâm Aboû Hanîfah, (page 117 de cette édition), le Chaykh Moullâ ʹAli Al-Qâri a dit :
Informations utiles
– L’Imâm, l’Illustre savant, le Mouhaddith (transmetteur du Hadîth), le Faqîh (spécialiste de la jurisprudence), le Chaykh Moullâ ‘Ali Al-Qârî est un grand savant du madh-hab (école de jurisprudence) Hanafite, il est né en Afghanistan et il est décédé à La Mecque en 1014 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 430 ans. Il a écrit un commentaire du livre « Al-Fiqh Al-Akbar » de l’Imâm Aboû Hanîfah qui est très connu.
Ibn ‘Âbidîn Al-Hanafi a dit à son sujet : « Al-‘Allâmah (l’illustre savant) ‘Ali Al-Qârî, le dernier de ceux qui sont enraciné [dans la science] » [Raddou l-Mouhtâr]
Ibn ‘Âbidîn Al-Hanafi a dit également à son sujet : « Le dernier des spécialistes de la récitation, des spécialistes du fiqh, des spécialistes de la science du hadîth, l’élite des authentificateurs et vérificateurs » [Majmou’atou Raçâ-il Ibn ‘Âbidîn]
Al-Mouhibbi a dit le concernant : « L’une des références de science, il était sans pareil à son époque » [Khoulâsatou l-Athar]
Az-Zirikli a dit de lui : « Il est un faqîh (spécialiste de la jurisprudence) Hanafite, de parmi les références de science de son époque […] il a écrit de nombreux ouvrages » [Al-A’lâm]
– Ici, il confirme la croyance des gens de Ahlou s-Sounnah wa l-Jamâ’ah sur le fait que Allâh existe sans endroit et qu’Il ne dépend pas du temps. D’ailleurs dans ce même livre il dit que le fait de croire que Allâh serait dans un endroit ou une direction, cela est de la mécréance. Voir l’article à ce sujet : ici .
– Dans de nombreux passages de ses ouvrages le Chaykh Moullâ ‘Ali Al-Qâri a exposé la croyance des gens de la sounnah sur le fait que Allâh n’a aucune similitude avec Ses créatures :
Le Chaykh Moullâ ‘Ali Al-Qâri a dit : « Quant à Son ‘oulouww, ta’âlâ, par rapport à Ses créatures qui est tiré de ce qui est de l’ordre de la parole de Allâh ta’âlâ : {وَ هُوَ القَاهِرُ فَوْقَ عِبَادِهِ} (wa houwa l-Qâhirou fawqa ‘ibâdih) [soûrat Al-An’âm / 61], il s’agit d’un ‘oulouww (élévation) par le mérite et l’éminence et non pas d’une élévation par l’endroit, conformément à ce qui est décrété chez les gens de Ahlou s-Sounnah wa l-Jamâ’ah » [ Dans son Charh d’Al-Fiqh Al-Akbar ]
Le Chaykh Moullâ ‘Ali Al-Qâri a dit aussi : « Ceux qui ont été injuste, qui sont parmi ceux qui ont menti au sujet de Allâh, ou qui ont prétendu des choses qui comprenaient la confirmation d’un endroit à Allâh, d’une forme, d’une direction en face [de Lui] et une confirmation d’une distance [entre Lui et Ses créatures] et de toute chose semblable à cela devient mécréant (kâfir) immédiatement. » [ Dans son commentaire du livre Al-Fiqh Al-Akbar ]
Le Chaykh Moullâ ‘Ali Al-Qâri a dit également : « Tout un groupe d’entre eux [c’est-à-dire les Pieux Prédécesseurs -Salaf Salîh -] ainsi que du Khalaf [c’est-à-dire de l’époque qui a suivi] a dit: “Celui qui croit que Allâh est dans une direction est un mécréant (kâfir), comme cela a été clairement rapporté par Al-‘Irâqi quand il a dit: “Ceci est l’avis de Aboû Hanîfah, Mâlik, Ach-Châfi’i, Al-Ach’ari et Al-Baqillâni”» . [ Dans son livre Mirqât al-Mafâtî ]
Le Chaykh Moullâ ‘Ali Al-Qâri a dit aussi : « Les innovateurs [se réclamant] Hambalites ont dit : la parole de Allâh est de lettres et de sons » et il a dit également : «Les Mâchaykh, que Allâh leur fasse miséricorde, ont mentionné que l’on dit : “Le Qour-ân qui est la parole de Allâh n’est pas créé”, et qu’on ne dit pas :”le Qour-ân n’est pas créé [c’est-à-dire sans préciser que l’on parle de l’attribut de la parole de Allâh]” afin que personne ne comprenne que ce qui est composé de sons et de voix serait sans début, comme l’ont pensé certains ignorants [se réclamant] Hambalites» [Charh Al-Fiqh Al-Akbar]
– Retrouvez d’autres paroles de savants sur le thème Allah est sans endroit / sans direction : ici.', 'afghan, afghanistan, al-qari, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'إنه سبحانه ليس في مكان من الأمكنة ولا في زمان من الأزمنة، لأن المكان والزمان من جملة المخلوقات وهو سبحانه كان موجودا في الأزل ولم يكن معه شىء من الموجودات');

-- source: https://islamsunnite.net/imam-al-moutawalli-explique-istiwa-allah-puissance/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’Istiwâ de Allâh sur le trône', 'Les Chafi''ites', 'وقلنا المراد بقوله الرحمن على العرش استوى بالقدرة فإن قيل إذا حملتم على القدرة لم يكن لتخصيص العرش فائدة قلنا فائدته أن العرش أعظم المخلوقات فإذا قدر عليه علم من طريق التنبيه أنه قادر على ما هو دونه', '« Nous disons que ce qui est visé par la parole de Allâh « ٱلرَّحۡمَـٰنُ عَلَى ٱلۡعَرۡشِ ٱسۡتَوَىٰ » (Ar-Rahmân ‘ala l-‘archi stawâ) c’est la domination par la puissance. Et si quelqu’un dit : « si vous l’expliquez par la puissance alors il n’y pas d’utilité à mentionner le trône de manière spécifique». Nous disons : l’utilité est qu’étant donné que le trône est la plus grande des créatures, s’Il le domine par Sa puissance alors nous savons qu’Il domine également toutes autres choses en dehors de lui. »', '', 'Dans son livre « Al-Ghounyah fî Ousoûli d-Dîn » (page 77 de cette édition) l’Imâm Al-Moutawalli a dit :
Informations utiles :
– Al-‘Allâmah (l’illustre savant), l’Imâm, le Ousoûli (spécialiste des fondements), le Faqîh (spécialiste de la jurisprudence) Aboû Sa’îd ‘Abdou r-Rahmân An-Nayçâboûri, connu sous le nom de Al-Moutawalli Ach-Châfi’i est né en 426 à Nayçâboûr et il est décédé en 478 de l’Hégire à Baghdâd (رحمه الله). C’est-à-dire il y a environ 960 ans. Il succéda à l’Imâm Ach-Chîrâzi comme enseignant à la célèbre école An-Nidhâmiyyah de Baghdâd. Il étudia la jurisprudence Chafi’ite auprès du savant, le Qâdî Houçayn Ach-Châfi’i (m.463 A.H) celui dont l’Imâm Ar-Râfi’i (m.623 A.H.) disait : « On le surnommait le savant de la communauté», et autres que lui . L’Imâm An-Nawawi (m.676 A.H.) le cite souvent comme référence dans ses ouvrages.
Adh-Dhahabi a dit à son sujet : « L’illustre savant (Al-‘Allâmah) le Chaykh des Chafi’ites » [Siyarou A’lâmi n-Noubalâ] , et il a également dit de lui : « Il était un Faqîh (spécialiste de la jurisprudence) Chafi’ite, l’un des grands savants, Il était un Faqîh reconnu, et un savant méticuleux » [Târîkhou l-Islâm] .
Quant à Ibn Kathîr, il a dit à son sujet : « Il était éloquent, un grand orateur, et maîtrisait de nombreuses sciences » [Al-Bidâyah wa n-Nihâyah] , il a dit également : « Il était un Faqîh (spécialiste de la jurisprudence) reconnu, et un savant méticuleux », il a également fait son éloge en disant : « Il était l’un des ash-hâbou l-woujoûh (une catégorie de savants en dessous du degré du moujtahid, qui est apte à déduire les jugements religieux à partir des textes de l’Imâm fondateur de l’école) dans le madh-hab [Châfi’i] ». [Tabaqâtou ch-Châfi’iyyîn]
As-Safadi a dit de lui : « Il comptait parmi les meilleurs des gens de par le comportement et le caractère, et de parmi les savants les plus modestes et généreux, il était reconnu et méticuleux tout en étant un grand orateur, éloquent, et nombreux devenaient des imams en assistant à ses assemblées de science » . [Al-Wâfî bi l-Wafayât]
Tâjou d-Dîn As-Soubki a dit de lui : « Il est l’un des Imâm aux degrés les plus élevés de parmi nos compagnons » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ].
Et Ibn Khallikân a dit à son sujet : « Il était un Faqîh Chafi’ite originaire de Nayçâboûr, il a rassemblé la science, l’application de la religion, et les bons caractères, il a maîtrisé le Fiqh (la jurisprudence), Al-Ousoûl (les fondements) et al-Khilâf (les divergences religieuses) » [Wafayâtou l-A’yân].
– Ici il explique que l’istiwâ de Allâh dans le verset « ٱلرَّحۡمَـٰنُ عَلَى ٱلۡعَرۡشِ ٱسۡتَوَىٰ » (Ar-Rahmân ‘ala l-‘archi stawâ) signifie que Allâh domine le trône par Sa toute puissance. Et que cela nous informe qu’étant donné que Allâh domine le trône qui est la plus grande des créatures, alors Il domine toutes autres choses moindre que le trône.
– Il ne dit pas que l’istiwâ de Allâh aurait pour sens la position assise, l’établissement ou l’élévation spatiale comme le prétendent à tord les moujassimah (corporalistes).
– D’ailleurs, dans un autre passage de son livre, l’Imâm Al-Moutawalli a dit : « L’objectif de ce chapitre est de nier [pour Allâh] le besoin d’un endroit et d’une direction, contrairement aux Karrâmiyyah, aux Hachawiyyah, et aux Mouchabbihah (assimilationnistes) qui ont dit que Allâh est dans la direction du haut (fawq). Et certains d’entre eux ont même dit qu’Il est assis sur le trône, établi dessus, et Allâh est exempt de leurs paroles » [ Al-Ghounyah ]
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
L’Imâm Al-Moutawalli [Dans son livre Al-Ghounyah]
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
– Retrouvez d’autres paroles de savants concernant l’istiwâ de Allâh : ici .
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
Il n’est donc pas permis de traduire le verset {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} (Ar-Rahmânou ‘ala l-’archi stawâ) et ceux qui sont similaires par le fait que Allâh serait établi sur le trône car cette explication est contraire au tawhîd (l’unicité de Allâh).', 'allah, aqida, book, croyance'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وقلنا المراد بقوله الرحمن على العرش استوى بالقدرة فإن قيل إذا حملتم على القدرة لم يكن لتخصيص العرش فائدة قلنا فائدته أن العرش أعظم المخلوقات فإذا قدر عليه علم من طريق التنبيه أنه قادر على ما هو دونه');

-- source: https://islamsunnite.net/chaykh-ibn-hajar-al-haytami-explique-hadith-nouzoul/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'le hadîth du nouzoûl', 'Ibn Hajar Al-Haytami', '« ومعنى «ينزل ربّنا» أي : ينزل أمره أو ملائكته أو رحمته »', '« La signification de « Yanzilou Rabbounâ » c’est-à-dire que descend Son ordre, ou Ses anges, ou Sa miséricorde »', '', 'Dans son livre « al-Minhajou l-Qawîm » (page 253 de cette édition) le Chaykh Ibnou Hajar Al-Haytami a dit :
Informations utiles :
– Le Chaykh Chihâbou d-Dîn Ahmad Ibnou Mouhammad Ibnou Hajar Al-Haytami Al-Makki est né en 907 en Egypte et il est décédé en 974 de l’Hégire à La Mecque (رحمه الله) c’est-à-dire il y a environ 460 ans. Il était un savant dans l’école de jurisprudence (madh-hab) Chafi’ite. On peut citer de parmi ses chouyoûkh : Chaykh Al-Islâm Zakariyyâ Al-Ansâri, le Chaykh Chihâbou d-Dîn Ar-Ramli et bien d’autres…
– Ici il explique le Hadîth du Nouzoûl, et en donne quelques interprétations. Il dit que cela peut désigner :
la descente de l’ordre de Allâh,
ou bien la descente de Ses anges,
ou encore la descente de Sa miséricorde.
– Lorsque le terme « nouzoûl » est employé au sujet de Allâh, nous ne disons pas que Allâh descend, car comme l’ont dit les savants, Allâh est exempt du déplacement, du mouvement, de la direction et de l’endroit.
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
– Tout comme le Chaykh Ibn Hajar Al-Haytami, de nombreux savants ont fait une interprétation détaillée de ce hadîth en expliquant que c’est l’ordre de Allâh, ou un ange, ou encore Sa miséricorde qui descend, parmi ceux qui ont soutenu cela, il y a :
L’Imâm Mâlik, comme le mentionne An-Nawawi qui présente cette interprétation comme l’une des voies valables chez les gens de la sounnah [ Charh Sahîh Mouslim ], Az-Zourqâni [ Charh du Mouwatta de l’Imâm Mâlik ], Ibn Battâl, Al-Qâdî ‘Iyâd, Al-Qastallâni, Al-Yamani, Moullâ ‘Ali Al-Qâri ainsi que Ibn ‘Abdi l-Barr et autres.
L’Imâm Ibn Foûrak
Le Qâdî Aboû Bakr Ibn ‘Arabi
Le Qâdî ‘Iyâd
L’Imâm Al-Jouwayni
L’Imâm Al-Moutawalli [ Al-Ghounyah ]
L’Imâm Al-Qourtoubi
Le Loughawi Ibn Mandhoûr [ Liçânou l-‘Arab ]
L’Imâm Jamâlou d-Dîn Al-Qoûnawi [Al-Qalâ-id]
L’Imâm Badrou d-Dîn Al-‘Ayni
L’Imâm As-Souyoûti
L’Imâm Al-Qastallâni
Le Chaykh Ibn Hajar Al-Haytami [Al-Minhajou l-Qawîm]
Le Chaykh Mouhammad Al-Khatîb Al-Misri
Le Chaykh Moullâ ‘Ali Al-Qâri
Le Chaykh Mahmoûd As-Soubki [ It-hâfou l-Kâ-inat ]
Le Hâfidh ‘Abdou l-Lâh Al-Ghoumâri
et beaucoup d’autres…
– Ainsi il ne convient pas de prêter attention aux propos des wahhabites qui accusent les gens de la Sounnah qui ont interprété ce hadîth d’être des mou’attil (négateur/athée). Ces mêmes wahhabites qui prétendent qu’il s’agit d’une descente véritable de Allâh tout comme l’a prétendu Ibn Outhaymîn (wahhabite) qui a dit : « Et il s’agit d’une descente véritable qui convient à Allâh. Et les négateurs (ahlou t-Ta’tîl) l’ont interprété par la descente de Son ordre, de Sa miséricorde ou d’un de parmi Ses anges » [ Dans son commentaire du livre Loum’atou l-I’tiqâd ] . Ainsi, il est venu avec une croyance totalement opposée à celle des savants mentionnés ci-dessus.
– Cette croyance que défendent les wahhabites est propre aux mouchabbihah (corporalistes) comme l’a signalé l’Imâm Ibn Hajar, lorsqu’il a dit : “ Les gens ont divergé sur le sens de an-nouzoûl : certains l’ont pris selon son sens apparent et son sens propre (haqîqi), et ce sont les corporalistes (al-Mouchabbihah), et Allâh est exempt de ce qu’ils disent. ” [ Charh Sahîh Al-Boukhâri ], et cette croyance que prône Ibn ‘Outhaymîn est celle que prônait l’ancêtre des moujassimah, Aboû ‘Abdi l-Lâh Ibn Karrâm qui prétendait que ce qu’il adore est concerné par le changement de lieu, le déplacement et la descente [ voir à ce sujet le livre de l’Imâm Ach-Charastâni : ici ]..
– Retrouvez d’autres paroles de savants concernant le hadîth du nouzoûl : ici .', '4 écoles, al azhar, al haytami, al-azhar'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« ومعنى «ينزل ربّنا» أي : ينزل أمره أو ملائكته أو رحمته »');

-- source: https://islamsunnite.net/imam-chirazi-dit-que-allah-est-pas-concerne-par-deplacement-mouvement-changement/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh ne change pas.', 'Chirazi', 'لا يجوز عليه التغيير ولا التبديل ولا الانتقال ولا التحريك', '« Il n’est pas possible au sujet de Allâh le changement, le déplacement et le mouvement ».', '', 'Dans son livre « Al-Ichârah ilâ madh-hab ahli l-Haqq », après avoir confirmé que Allâh n’est pas établi sur le trône [ voir l’article à ce sujet : ici ] l’Imâm Ach-Chîrâzi a dit :
Informations utiles :
– L’Imâm, le Faqîh (spécialiste de la jurisprudence), le Chaykh Ibrâhîm Ibnou ‘Ali Aboû Is-hâq Ach-Chîrâzi est né en 393 à Fayrouzâbâd (en Perse) et il est décédé en 476 de l’Hégire à Baghdâd (رحمه الله), c’est-à-dire il y a plus environ 960 ans. Il est de l’école de jurisprudence (madh-hab) de l’Imâm Ach-Châfi’i. Il est l’auteur d’ouvrages de référence dans le madh-hab Chafi’ite comme « At-Tanbîh », « Al-Mahdhab » et « Al-Louma'' ».
An-Nawawi a dit de lui : « Il est l’Imâm, le vérificateur scrupuleux, celui qui maîtrise de nombreuses sciences, l’auteur de nombreux ouvrages profitables, l’ascète, l’adorateur, le pieux, détaché de la vie du bas-monde, celui qui s’est sacrifié pour faire vaincre la religion agréée par Allâh, l’un des savants vertueux et l’un des adorateurs de Allâh, l’un des connaisseurs de Allâh (‘ârifîn), qui ont rassemblé entre la science, l’adoration, la dévotion et l’ascétisme ». [Al-Majmoû’]
As-Sam’âni a dit à son sujet : « Il est l’Imâm des Chafi’ites, l’enseignant de An-Nidhâmiyyah (célèbre école à Baghdâd), le Chaykh de l’époque. Les gens voyageaient jusqu’à lui depuis leur pays désirant le rencontrer. Il s’est singularisé par l’étendu de sa science, et ses bons caractères. » [Siyar A’lâmi n-Noubalâ]
Al-Mouwaffaq Al-Hanafi a dit de lui : « Aboû Is-hâq l’Emir des croyants (Amîr al-Mou-minîn) de parmi les Fouqahâ (pl. Faqîh)». [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « Le Chaykh, l’Imâm, le modèle (al-Qoudwah), le moujtahid (jurisconsulte), Chaykhou l-Islâm ». [Siyar A’lâmi n-Noubalâ]
– Ici il mentionne des points importants concernant le tawhîd (la science de l’unicité), à savoir que Allâh n’est concerné ni par le changement, ni le déplacement, ni le mouvement. En effet ces caractéristiques font parties des attributs des corps, et Allâh n’est pas un corps.
– Les savants de l’Islâm, qu’ils soient du Salaf ou du Khalaf, sont unanimes a nier les caractéristiques des corps comme le mouvement, le déplacement ou la descente au sujet de Allâh. Nous pouvons citer parmi eux :
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
L’Imâm Ach-Chirâzi [Al-Ichârah]
L’Imâm Al-Jouwayni [Al-Irchâd]
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
L’Imâm Tâjou d-Dîn As-Soubki
L’Imâm Taqiyyou d-Dîn Al-Hisni [Daf’ou choubahi man chabbaha wa tamarrad]
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
L’Imâm Taqiyyou d-Dîn Al-Hisni [Daf’ou choubahi man chabbaha wa tamarrad]
L’Imâm Al-Kawthari qui mentionne l’unanimité [ Maqâlâtou l-Kawthari (1) ] et [ Maqâlâtou l-Kawthari (2) ]
Ibnou l-Bannâ Al-Hambali qui a dit : « Celui qui prend le nouzoûl dans le sens de quitter un endroit pour en occuper un autre, et du déplacement alors c’est de la mécréance » [Al-Ousoûlou l-Moujarradah].
– Retrouvez d’autres paroles de savants concernant le fait que Allâh n’est pas concerné par le changement : ici .', 'al-icharah, al-icharah ila madh-hab ahlil-haqq, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'لا يجوز عليه التغيير ولا التبديل ولا الانتقال ولا التحريك');

-- source: https://islamsunnite.net/chaykh-soubki-azhari-dit-nouzoul-de-allah-est-pas-descente-unanimite/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le sens du hadîth du nouzoûl.', 'Soubki Al-Azhari', 'النزول بمعنى الحركة والانتقال من علو الى سفل من صفات الحوادث فهو مستحيل في حق الله تعالى و ما ورد مما ظاهره نسبة النزول الى الله تعالى فهو مصروف عن ظاهره بإجماع السلف والخلف', 'Le nouzoûl dans le sens du mouvement et du déplacement du haut vers le bas fait partie des attributs des créatures, et cela est impossible concernant Allâh ta’âlâ. Ainsi, ce qui viendrait dans le sens apparent concernant le nouzoûl de Allâh ta’âlâ, ce sens apparent est rejeté par unanimité des salafs (prédécesseurs) et des khalaf (successeurs)', '', 'Dans son ouvrage « It-hâfou l-Kâ-inat bi-bayâni madh-habi s-salaf wa l-khalaf fi l-moutachâbihât » le Chaykh As-Soubki Al-Azhari a composé un long chapitre au sujet du hadîth an-Nouzoûl dans lequel il a dit :
Informations utiles :
– Le Chaykh, le Faqîh (spécialiste de la jurisprudence), le Mouhaddith (spécialiste de la science du Hadîth) Aboû Mouhammad Mahmoûd ibnou Mouhammad ibnou Ahmad Khattâb As-Soubki Al-Azhari Al-Mâliki est né en 1274 à Soubk al-Ahad (Egypte) et il est décédé en 1352 de l’Hégire au Caire (رحمه الله) c’est-à-dire il y a plus de 80 ans. Il était l’un des Chaykh de l’Université Islamique Al-Azhar et y enseigna durant 37 ans.
– Ici, il dit que le mouvement et le déplacement sont des attributs des créatures, et que ces caractéristiques sont impossible au sujet de Allâh, puis il dit que ces sens sont rejetés par unanimité des savants du salaf et du khalaf.
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
L’Imâm Al-Moutawalli [ Al-Ghounyah ]
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
Le Chaykh Mahmoud As-Soubki, qui mentionne l’unanimité des savants du Salaf et du Khalaf [It-hâfou l-Kâ-inat (1)] et [ It-hâfou l-Kâ-inat (2) ]
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
– De nombreux savants ont fait une interprétation détaillée de ce hadîth en expliquant que c’est l’ordre de Allâh, ou un ange, ou encore Sa miséricorde qui descend, parmi ceux qui ont soutenu cela, il y a :
L’Imâm Mâlik, comme le mentionne An-Nawawi qui présente cette interprétation comme l’une des voies valables chez les gens de la sounnah [ Charh Sahîh Mouslim ], Az-Zourqâni [ Charh du Mouwatta de l’Imâm Mâlik ], Ibn Battâl, Al-Qâdî ‘Iyâd, Al-Qastallâni, Al-Yamani, Moullâ ‘Ali Al-Qâri ainsi que Ibn ‘Abdi l-Barr et autres.
L’Imâm Ibn Foûrak
Le Qâdî Aboû Bakr Ibn ‘Arabi
Le Qâdî ‘Iyâd
L’Imâm Al-Jouwayni
L’Imâm Al-Moutawalli [ Al-Ghounyah ]
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
– Ainsi il ne convient pas de prêter attention aux propos des wahhabites qui accusent les gens de la Sounnah qui ont interprété ce hadîth d’être des mou’attil (négateur/athée). Ces mêmes wahhabites qui prétendent qu’il s’agit d’une descente véritable de Allâh tout comme l’a prétendu Ibn Outhaymîn (wahhabite) qui a dit : « Et il s’agit d’une descente véritable qui convient à Allâh. Et les négateurs (ahlou t-Ta’tîl) l’ont interprété par la descente de Son ordre, de Sa miséricorde ou d’un de parmi Ses anges » [ Dans son commentaire du livre Loum’atou l-I’tiqâd ] . Ainsi, il est venu avec une croyance totalement opposée aux savants mentionnés ci-dessus.
– Cette croyance que défendent les wahhabites est propre aux mouchabbihah (corporalistes) comme l’a signalé l’Imâm Ibn Hajar dans son commentaire du Sahîh de l’Imâm Al-Boukhâri, lorsqu’il a dit : “ Les gens ont divergé sur le sens de an-nouzoûl : certains l’ont pris selon son sens apparent et son sens propre (haqîqi), et ce sont les corporalistes (al-Mouchabbihah), et Allâh est exempt de ce qu’ils disent. ” [ Charh Sahîh Al-Boukhâri ], et cette croyance que prône Ibn ‘Outhaymîn est celle que prônait l’ancêtre des moujassimah, Aboû ‘Abdi l-Lâh Ibn Karrâm qui prétendait que ce qu’il adore est concerné par le changement de lieu, le déplacement et la descente [ voir à ce sujet le livre de l’Imâm Ach-Charastâni : ici ].
– Retrouvez d’autres paroles de savants concernant le hadîth du Nouzoûl : ici .', 'al azhar, al-azhar, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'النزول بمعنى الحركة والانتقال من علو الى سفل من صفات الحوادث فهو مستحيل في حق الله تعالى و ما ورد مما ظاهره نسبة النزول الى الله تعالى فهو مصروف عن ظاهره بإجماع السلف والخلف');

-- source: https://islamsunnite.net/le-compagnon-khoubayb-secria-ya-mouhammad-en-son-absence-ibnou-l-jawzi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le tawassoul effectué par les compagnons.', 'Ibn Al-Jawzi', '« قَالَ سَعِيدُ بْنُ عَامِرِ بْنِ جُذَيْمٍ : « شَهِدْتُ مَصْرَعَ خُبَيْبٍ، وَقَدْ بَضَعَتْ قُرَيْشٌ لَحْمَهُ ، ثُمَّ حَمَلُوهُ عَلَى جَذْعَةٍ ، فَقَالُوا : أَتُحِبُّ أَنَّ مُحَمَّدًا مَكَانَكَ ؟ فَقَالَ : وَاللَّهِ مَا أُحِبُّ أَنِّي فِي أَهْلِي ، وَوَلَدِي ، وَأَنَّ مُحَمَّدًا شِيكَ بِشَوْكَةٍ ، ثُمَّ نَادَى يَا مُحَمَّدُ »', '« J’ai assisté à l’exécution de Khoubayb (le sahâbi). Certains associateurs de Qouraych lui arrachaient des morceaux de son corps. Puis ils lui ont dit : « Est-ce que tu aimerais que Mouhammad soit à ta place ? », il leur répondit : « Par Allâh, je n’aimerais pas qu’il soit atteint ne serait-ce que par la piqûre d’une épine, alors que moi je suis avec ma famille et mon fils », puis il s’écria « Yâ Mouhammad ».', '', 'Dans son livre « Ath-Thabâtou ‘inda l-Mamât », l’Imâm Ibnou l-Jawzi a rapporté d’après le compagnon Sa’îd Ibn ‘Âmir Al-Jadhîm (ou Al-Joudhaym) qui a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste des chaînes de transmission du hadîth), le Moufassir (exégète) ‘Abdou r-Rahmân Ibnou ‘Ali connu sous le nom de Ibnou l-Jawzi le Hanbalite, est né en 508 à Baghdâd et il est décédé en 597 de l’Hégire à Baghdâd (رحمه الله) c’est-à-dire il y a plus de 845 ans.
– Ibnou l-Jawzi fait partie des piliers des hanbalites. Il a écrit un livre appelé « Daf’ou Choubahi t-Tachbîh » pour répliquer à ceux qui ont attribué le corps à Allâh tout en se réclamant de l’école de l’Imâm Ahmad alors que l’Imâm Ahmad est innocent de ce qu’ils ont pris pour croyance. L’Imâm Ibnou l-Jawzi est à lui seul une armée contre les moujassimah qui se réclament hanbalites.
– Ici, il rapporte que le compagnon Khoubayb (رضي الله عنه) à été pris par les associateurs de Qouraych pour être tué. Il a témoigné de son amour envers le prophète Mouhammad (صلى الله عليه وسلم), et a fait le tawassoul par lui en s’écriant « Yâ Mouhammad ».
– Cette histoire est également rapportée par le Hâfidh Aboû Nou’aym dans son ouvrage « Hilyatou l-Awliyâ», cela fera l’objet d’un article (إن شاء الله).
– Cette citation est une réplique aux égarés qui prétendent que tous ceux qui disent : «Yâ Mouhammad » après la mort du Messager (صلى الله عليه وسلم) ou bien en son absence, sont des mécréants associateurs. Par leur parole infondée ces gens là ont déclaré mécréant de grands compagnons, des grands savants de la communauté et un grand nombre de musulmans.
– Il a été rapporté du compagnon ‘Abdou l-Lâh Ibnou ‘Oumar (رضي الله عنهما) qu’il a dit « Yâ Mouhammad » en l’absence du prophète lorsque sa jambe était paralysée. Cela est confirmé dans le manuscrit du livre « Al-Adabou l-Moufrad » de l’Imâm Al-Boukhari, et sa chaîne de transmission est authentique. Voir l’article concernant Al-Boukhâri : ici . Voir également le livre de l’Imâm An-Nawawi : ici .
– Même Ibn Taymiyah (moujassim) a mentionné ce hadîth dans son livre intitulé « Al-Kalimou t-Tayyib » (les bonnes paroles) afin d’inciter les gens à dire “Yâ Mouhammad” lorsque la jambe se paralyse.
– De plus il a été confirmé que le fait de dire “yâ foulân” au sujet d’un mort ou d’une personne absente est quelque chose que le prophète (صلى الله عليه وسلم) a lui-même pratiqué et incité à faire. En effet il a été rapporté que lorsque le prophète (صلى الله عليه وسلم) visitait les tombes, il disait “As-Salâmou ‘alaykoum yâ Ahla l-qouboûr” (As-Salâmou ‘alaykoum Ô habitants des tombes) [ Rapporté par An-Nawawi dans Riyâdou s-Sâlihîn ], et le prophète (صلى الله عليه وسلم) a enseigné à un homme aveugle de réciter en son absence une invocation qui contient les termes “yâ Mouhammad” et les compagnons le pratiquaient également après son décès (صلى الله عليه وسلم) [ Rapporté par At-Tabarâni ].
– Le tawassoul est le fait de demander à Allâh l’obtention d’un profit ou l’empêchement d’une nuisance et ce, par la mention du nom d’un prophète ou d’un saint, par honneur pour celui par lequel le tawassoul est fait. Faire le tawassoul est permis en leur présence et en leur absence tout comme l’indique les preuves selon la Loi de l’Islâm. Le tawassoul ne constitue donc pas une adoration pour autre que Allâh.
– Ainsi, le tawassoul est une pratique qui est permise selon l’unanimité des musulmans comme le rapporte l’Imâm Taqiyyou d-Dîn As-Soubki [ Dans Chifâ-ou s-Saqâm ]
– L’adoration (al-‘Ibâdah) : c’est l’extrême limite de la crainte et de la soumission, comme l’a mentionné l’Imâm Moujtahid, le Hâfidh (spécialiste du Hadîth), le Loughawi (spécialiste de la langue Arabe) Taqiyyou d-Dîn As-Soubki.
Ainsi le simple fait d’appeler (nidâ) un vivant ou un mort ne constitue pas une adoration d’autre que Allâh, ni le simple fait de glorifier (ta’dhîm) ou de faire al-istighâthah (la recherche du renfort) par autre que Allâh. De même, le simple fait de visiter la tombe d’un saint pour le tabarrouk (la recherche des bénédictions) ne constitue pas une adoration d’autre que Allâh. De même, le simple fait de demander ce qu’il n’est pas habituel de demander aux gens ne constitue pas une adoration d’autre que Allâh. De même, la formule de al-isti’ânah (demande d’aide) à autre que Allâh ta’âlâ ne constitue pas une adoration d’autre que Allâh. Egalement, la simple humilité n’est pas une adoration envers autre que Allâh car sinon, tous ceux qui font preuve d’humilité avec les rois et les nobles seraient devenus mécréants.
C’est-à-dire que tout cela n’est pas du chirk (le fait d’attribuer des associés à Allâh), car la définition de l’adoration (al-‘ibâdah) selon les spécialistes de la langue ne s’applique pas à tout cela. En effet, pour eux, l’adoration (al-‘ibâdah) comme nous venons de le voir est l’obéissance avec la soumission. Voir à ce sujet l’explication de l’Imâm du Salaf, le Loughawi (spécialiste de la langue Arabe) Aboû Is-hâq Ibrâhîm Az-Zajjâj : ici .
– Retrouvez d’autres articles au sujet du tawassoul et du tabarrouk : ici .
– C’est également ce compagnon « Khoubayb » qui a innové le fait d’accomplir deux rak’ah (cycles de prière) avant d’être exécuté par les associateurs de Qouraych, comme cela a été mentionné dans le sahîh de l’Imâm Al-Boukhari. cela fera l’objet d’un article (إن شاء الله).', 'allah, aqida, compagnon, croyance'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« قَالَ سَعِيدُ بْنُ عَامِرِ بْنِ جُذَيْمٍ : « شَهِدْتُ مَصْرَعَ خُبَيْبٍ، وَقَدْ بَضَعَتْ قُرَيْشٌ لَحْمَهُ ، ثُمَّ حَمَلُوهُ عَلَى جَذْعَةٍ ، فَقَالُوا : أَتُحِبُّ أَنَّ مُحَمَّدًا مَكَانَكَ ؟ فَقَالَ : وَاللَّهِ مَا أُحِبُّ أَنِّي فِي أَهْلِي ، وَوَلَدِي ، وَأَنَّ مُحَمَّدًا شِيكَ بِشَوْكَةٍ ، ثُمَّ نَادَى يَا مُحَمَّدُ »');

-- source: https://islamsunnite.net/prophete-interdit-imaginer-allah-rapporte-baghawi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Il n’est pas permis d’imaginer Allâh.', 'Baghawi', 'أخبرنا أبو سعيد الشريحي ، أخبرنا أبو إسحاق الثعلبي ، أخبرني الحسن بن محمد الشيباني أخبرنا محمد بن سليمان بن الفتح الحنبلي ، حدثنا علي بن محمد المصري ، أخبرنا أبو إسحاق بن منصور الصعدي ، أخبرنا العباس بن زفر ، عن أبي جعفر الرازي ، عن أبيه عن الربيع بن أنس ، عن أبي العالية ، عن أبي بن كعب عن النبي – صلى الله عليه وسلم – في قوله : » وأن إلى ربك المنتهى » ، قال : » لا فكرة في الرب » ، وهذا مثل ما روي عن أبي هريرة مرفوعا : » تفكروا في الخلق ولا تتفكروا في الخالق » فإنه لا تحيط به الفكرة .', '« D’après Aboû Ibnou Ka’b, concernant la parole de Allâh {وأن إلى ربك المنتهى} [wa anna ilâ Rabbika l-Mountahâ], le prophète (salla l-Lâhou ‘alayhi wa sallam) a dit [ce qui a pour sens : ] « On n’imagine pas Allâh (Ar-Rabb) ». Et ceci est semblable à ce qui est rapporté d’après Abou Hourayrah, que le prophète a dit [ce qui a pour sens : ] « Méditez sur la création [de Allâh] et non sur Le Créateur », en effet on ne peut pas Le cerner par l’imagination. »', '', 'Dans son Tafsîr « Ma’âlim At-Tanzîl », L’Imâm Al-Baghawi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Moufassir (exégète) Aboû Mouhammad Al-Houçayn Ibnou Mas’oûd Al-Baghawi est né 433 et il est décédé en 516 de l’Hégire, (رحمه الله) c’est-à-dire il y a plus de 900 ans. Il est du Madh-hab (école de jurisprudence) de l’Imâm Ach-Châfi’i.
– Il rapporte du prophète (صلى الله عليه وسلم) une règle en or dans le tawhîd : « On n’imagine pas Allâh » . Certains savants ont d’ailleurs dit : « Quoi que tu imagines en ton esprit Allâh n’est pas ainsi » . Egalement ‘Abdou l-Lâh Ibnou ‘Abbas a dit : «تفكّروا في خلق الله ولا تفكّروا في ذات الله » ce qui a pour sens : « Méditez sur la création de Allâh mais ne méditez pas sur Allâh Lui-même » [rapporté par Al-Bayhaqi].
– Ce hadîth nous enseigne qu’il est impossible d’imaginer Allâh et qu’il est interdit d’essayer de L’imaginer. En effet Allâh ne peut-être imaginé car Il n’est pas un corps ayant une image, une forme, ou un comment (kayf), de plus Allâh n’est pas localisé dans un endroit ou une direction.
– Le Hadîth du prophète « لا فكرة في الرب » qui a pour sens : « On n’imagine pas Allâh (Ar-Rabb) » a également été rapporté par As-Souyoûti, Ad-Dâraqoutni et d’autres. Cela fera l’objet d’articles (إن شاء الله).', 'al-baghawi, al-baghawiyy, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'أخبرنا أبو سعيد الشريحي ، أخبرنا أبو إسحاق الثعلبي ، أخبرني الحسن بن محمد الشيباني أخبرنا محمد بن سليمان بن الفتح الحنبلي ، حدثنا علي بن محمد المصري ، أخبرنا أبو إسحاق بن منصور الصعدي ، أخبرنا العباس بن زفر ، عن أبي جعفر الرازي ، عن أبيه عن الربيع بن أنس ، عن أبي العالية ، عن أبي بن كعب عن النبي – صلى الله عليه وسلم – في قوله : » وأن إلى ربك المنتهى » ، قال : » لا فكرة في الرب » ، وهذا مثل ما روي عن أبي هريرة مرفوعا : » تفكروا في الخلق ولا تتفكروا في الخالق » فإنه لا تحيط به الفكرة .');

-- source: https://islamsunnite.net/le-loughawi-ibn-mandhour-explique-le-hadith-an-nouzoul-et-nie-la-descente-au-sujet-de-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Explication du hadîth du nouzoûl', 'Ibn Mandhour', 'في الحديث: إِن الله تعالى وتقدّس يَنزِل كل ليلة إِلى سماء الدنيا؛ النُّزول والصُّعود والحركة والسكونُ من صفات الأَجسام، والله عز وجل يتعالى عن ذلك ويتقدّس، والمراد به نُزول الرحمةِ', '« Concernant le hadith « إِن الله تعالى وتقدّس يَنزِل كل ليلة إِلى سماء الدنيا» (Inna l-Lâha ta’âlâ wa taqaddasa yanzilou koullou laylatin ilâ samâ-i d-dounyâ), sache que la descente, la montée, le mouvement et l’immobilité font partie des attributs des corps, et Allâh ‘azza wa jall est exempt de ces choses là et n’en est point concerné. Ce qui est visé [dans ce hadîth] c’est la descente de la miséricorde (ar-Rahmah) »', '', 'Dans son célèbre dictionnaire « Liçânou l-‘Arab» , le Loughawi Ibn Mandhoûr a dit :
Informations utiles :
– Le Chaykh, le Loughawi (spécialiste de la langue arabe) Mouhammad Ibn Moukarram Al-Ifrîqi Al-Misri connu sous le nom de Ibn Mandhoûr est né en 630 à Gafsah (Tunisie) et il est décédé en 711 de l’hégire au Caire (Egypte) (رحمه الله), c’est-à-dire il y a environ 730 ans. Son dictionnaire « Liçânou l-‘arab » est un ouvrage de référence dans la langue Arabe.
– Ici, ce grand spécialiste de la langue arabe évoque le hadîth an-nouzoûl et dit clairement que ce hadîth n’a pas pour sens que Allâh descend vers le ciel de ce bas-monde car Allâh n’est concerné ni par la descente, ni par la montée, ni par le mouvement, ni par l’immobilité qui sont des attributs des corps.
– Remarquez que les savants, qu’ils soient spécialisés dans la croyance, ou bien dans les fondements de la religion (Ousoûlou d-Dîn), ou bien dans la science du hadîth, ou dans le tafsîr (exégèse du Qour-ân), ou bien ici dans la langue Arabe (etc…), aucun d’entre eux n’a conclu à partir de ce hadîth que Allâh descendrait par lui même.
– Donc lorsque le terme «nouzoûl» est employé au sujet de Allâh, nous ne disons pas que Allâh descend, car comme l’ont dit les savants, Allâh est exempt du déplacement, du mouvement, de la direction et de l’endroit.
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
Le Loughawi Ibn Mandhoûr [Liçânou l-‘Arab]
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
– Tout comme Ibnou Mandhoûr, de nombreux savants ont fait une interprétation détaillée de ce hadîth en expliquant que c’est l’ordre de Allâh, ou un ange, ou encore Sa miséricorde qui descend, parmi ceux qui ont soutenu cela, il y a :
L’Imâm Mâlik, comme le mentionne An-Nawawi qui présente cette interprétation comme l’une des voies valables chez les gens de la sounnah [ Charh Sahîh Mouslim ], Az-Zourqâni [ Charh du Mouwatta de l’Imâm Mâlik ], Ibn Battâl, Al-Qâdî ‘Iyâd, Al-Qastallâni, Al-Yamani, Moullâ ‘Ali Al-Qâri ainsi que Ibn ‘Abdi l-Barr et autres.
L’Imâm Ibn Foûrak
Le Qâdî Aboû Bakr Ibn ‘Arabi
Le Qâdî ‘Iyâd
L’Imâm Al-Jouwayni
L’Imâm Al-Moutawalli [ Al-Ghounyâ ]
L’Imâm Al-Qourtoubi
Le Loughawi Ibn Mandhoûr [Liçânou l-‘Arab]
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
– Ainsi il ne convient pas de prêter attention aux propos des wahhabites qui accusent les gens de la Sounnah qui ont interprété ce hadîth d’être des mou’attil (négateur/athée). Ces mêmes wahhabites qui prétendent qu’il s’agit d’une descente véritable de Allâh tout comme l’a prétendu Ibn Outhaymîn (wahhabite) qui a dit : « Et il s’agit d’une descente véritable qui convient à Allâh. Et les négateurs (ahlou t-Ta’tîl) l’ont interprété par la descente de Son ordre, de Sa miséricorde ou d’un de parmi Ses anges » [ Dans son commentaire du livre Loum’atou l-I’tiqâd ] . Ainsi, il est venu avec une croyance totalement opposée aux savants mentionnés ci-dessus.
– Cette croyance que défendent les wahhabites est propre aux mouchabbihah (corporalistes) comme l’a signalé l’Imâm Ibn Hajar dans son commentaire du Sahîh de l’Imâm Al-Boukhâri, lorsqu’il a dit : “ Les gens ont divergé sur le sens de an-nouzoûl : certains l’ont pris selon son sens apparent et son sens propre (haqîqi), et ce sont les corporalistes (al-Mouchabbihah), et Allâh est exempt de ce qu’ils disent. ” [ Charh Sahîh Al-Boukhâri ], et cette croyance que prône Ibn ‘Outhaymîn est celle que prônait l’ancêtre des moujassimah, Aboû ‘Abdi l-Lâh Ibn Karrâm qui prétendait que ce qu’il adore est concerné par le changement de lieu, le déplacement et la descente [ voir à ce sujet le livre de l’Imâm Ach-Charastâni : ici ].
– Retrouvez d’autres paroles de savants concernant le hadîth du nouzoûl : ici .', 'allah, aqida, arabe, arabic'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'في الحديث: إِن الله تعالى وتقدّس يَنزِل كل ليلة إِلى سماء الدنيا؛ النُّزول والصُّعود والحركة والسكونُ من صفات الأَجسام، والله عز وجل يتعالى عن ذلك ويتقدّس، والمراد به نُزول الرحمةِ');

-- source: https://islamsunnite.net/qadi-iyad-confirme-allah-sans-endroit-pas-un-corps/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'la croyance Islamique.', 'Les Malikites', 'وأنه لا يحويه مكان في سماواته ولا أرضه، بل هو كما كان قبل خلق المكان، وأنه ليس بجوهر ولا جسم، ولا على صورة ولا شكل، ولا له شبيه ولا مثل، بل هو الأحد الصمد الذي لم يلد ولم يولد، ولم يكن له كفؤا أحد', 'Allâh n’est pas contenu dans un endroit dans [ou au-dessus] (fî) les cieux ni sur terre, mais Il est tel qu’Il était avant la création de l’endroit (c’est-à-dire qu’Il est sans endroit), Il n’est ni une substance ni un corps, et Il n’a pas d’image ni de forme, rien ne Lui ressemble et Il n’a pas de semblable, mais Il est Al-Ahad (Celui Qui n’a pas d’associé dans la divinité et Qui n’admet pas la partition), As-Samad (Celui Qui n’a besoin de rien, mais dont toutes les créatures ont besoin), Il n’engendre pas, Il n’est pas engendré, et Il n’a aucun équivalent.', '', 'Dans son livre « Al-I’lâm bi Houdoûdi wa Qawâ’idi l-Islâm » (page 36 de cette édition) Al-Qâdî ‘Iyâd a dit :
Informations utiles :
– Le Qâdî (juge) Abou l-Fadl ‘Iyâd Ibnou Moûçâ Ibnou ‘Iyâd al-Yahsoubi connu sous le nom de Qâdî ‘Iyâd, est un grand savant Malikite. Il est né en 476 à Ceuta et il est décédé en 544 de l’Hégire à Marrakech (Maroc) (رحمه الله) c’est-à-dire il y a plus de 950 ans.
Adh-Dhahabi a dit de lui : « L’Imâm, Al-‘Allâmah (l’illustre savant), le Hâfidh (le spécialiste de la science du hadîth), celui qui n’a pas de pareil, Chaykhou l-Islâm, le Qâdî (Juge) » et il a dit également : « Ses ouvrages sont précieux » [Siyar A’lâmi n-Noubalâ]
Ibn Bachkwâl a dit à son sujet : « Il était parmi les gens de science qui sont intelligents et qui ont une bonne compréhension » [Siyar A’lâmi n-Noubalâ]
Ibn Khallikân a dit de lui : « Il est l’Imâm du hadîth de son temps, et le plus connaisseur des gens de ses sciences, de la grammaire, la langue, la parole des arabes, leurs histoires, et les généalogies.» [Wafayâtou l-A’yân]
– Ici, il confirme la croyance de Ahlou s-Sounnah wa-l jamâ’ah sur le fait que Allâh n’est pas dans un endroit, ni dans le ciel, ni au dessus des cieux, ni sur terre, que Allâh n’est pas un corps, qu’Il n’a pas d’image ni de forme et que rien ne Lui est semblable.
– Dans un autre de ses ouvrages l’Imâm Al-Qâdî ‘Iyâd confirme cette croyance en disant : « N’aura pas connu Allâh ta’âlâ celui qui L’assimile à Ses Créatures ou qui Lui attribue le corps, comme les Yahoûd ; ou Lui attribue le fait d’avoir un semblable ou qui Lui attribue le fait d’avoir un fils, ou encore une compagne et un enfant, ou qui Lui attribue le fait d’être incarné ou le déplacement, ou le fait d’être mélangé, comme le prétendent les Nasârâ ; ou qui Lui attribue ce qui n’est pas digne de Lui, ou qui Lui attribue le fait d’avoir un associé ou un opposé dans Sa création et Sa souveraineté, comme le prétendent les Mazdéens et les Dualistes, ainsi tout ce qu’ils adorent n’est pas Allâh, même s’ils le nomment ainsi, car ils ne Lui attribuent pas les attributs de la divinité qui Lui sont obligatoires, ainsi ils n’ont pas connue Allâh et ils ne L’adorent pas » [ Ikmâlou l-mou’lim bi fawâ-id Mouslim ].
– Egalement le Qâdî ‘Iyâd a dit : « Il n’y a pas de divergence entre les musulmans dans leur totalité, qu’il s’agisse des savants du fiqh, du hadîth (mouhaddith), de la croyance (moutakallim), et de ceux qui les suivent, que les textes apparents [du Qour-ân et du hadîth] dans lesquelles il est cité “Allâh fi s-samâ ” comme Sa parole ta’âlâ {ءَأَمِنتُم مَّن فِى ٱلسَّمَآءِ أَن يَخۡسِفَ بِكُمُ ٱلۡأَرۡضَ } (a-amintoum man fi s-samâ an yakhsifa bikoumou l-ard ) ne sont pas pris dans le sens apparent (dhâhir), mais ils sont interprétés [par ce qui est digne de Allâh] chez la totalité d’entre eux (les savants). » [ Rapporté par l’Imâm An-Nawawi dans son Charh Sahîh Mouslim ].', 'al-i`lam bi hudud qawa''id al-islam, al-i‘lâm bi ḥudûd qawâ‘id al-islâm, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وأنه لا يحويه مكان في سماواته ولا أرضه، بل هو كما كان قبل خلق المكان، وأنه ليس بجوهر ولا جسم، ولا على صورة ولا شكل، ولا له شبيه ولا مثل، بل هو الأحد الصمد الذي لم يلد ولم يولد، ولم يكن له كفؤا أحد');

-- source: https://islamsunnite.net/imam-al-khattabi-istiwa-allah-sans-direction-al-bayhaqi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'l’istiwâ de Allâh', 'Les Chafi''ites', 'وليس معنى قول المسلمين: إن الله استوى على العرش هو أنه مماس له أو متمكن فيه أو متحيز في جهة من جهاته لكنه بائن من جميع خلقه، وإنما خبر جاء به التوقيف. فقلنا به، ونفينا عنه التكييف، إذ ليس كمثله شيء وهو السميع البصير', '« Lorsque les musulmans disent « Allâh istawâ sur le Trône (‘arch) » le sens n’est pas que Allâh serait en contact avec lui, ni qu’Il l’aurait pris comme endroit, ni que Allâh serait localisé dans une des directions, en effet Allâh est différent de la totalité de Ses créatures et cela (l’istiwâ) est cité dans les Textes. Nous le mentionnons à ce titre tout en niant le comment (al-kayf) à Son sujet car rien n’est tel que Allâh et Il est Celui Qui entend et Qui voit »', '', 'Dans son livre « Al-Asmâ-ou wa s-Sifât » (tome 2 page 139 de cette édition), l’Imâm Al-Bayhaqi rapporte que l’Imâm Al-Khattâbi a dit :
Informations utiles :
– L’Imâm, l’illustre savant, le Faqîh (le spécialiste de la jurisprudence), le Hâfidh (spécialiste de la science du hadîth), le Loughawi (spécialiste de la langue Arabe) Abou Soulaymân Al-Khattâbi est né en 319 à Boust (dans l’actuel Afghanistan) et il est décédé en 388 de l’hégire (رحمه الله) à Boust également, c’est-à-dire il y a plus de 1040 ans. Il fait parti des savants qui avaient le plus de science dans les sujets du hadîth. Il est de l’école de jurisprudence Chafi’ite. Parmi les savants qui ont rapporté le hadîth de lui : le Hâfidh Al-Hâkim, l’Imâm Aboû Hâmid Al-Isfarâyîni et autres qu’eux. L’Imâm al-Bayhaqi le cite énormément dans son livre « Al-Asmâ-ou wa s-Sifât ».
As-Souyoûti a dit à son sujet : « L’Imâm, l’illustre savant (al-‘Allâmah) bénéfique, le Mouhaddith (spécialiste de la science du hadîth) voyageur […] il était digne de confiance, et confirmé dans la connaissance de la science » [Tabaqâtou l-Houffâdh]
Tâjou d-Dîn As-Soubki a dit de lui : « Il etait un Imâm dans le Fiqh (jurisprudence), dans le hadîth, et dans la langue Arabe » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « L’illustre savant (al-‘Allâmah) le Hâfidh (spécialiste de la science du hadîth), le Loughawi (spécialiste de la langue Arabe) » [Siyar A’lâmi n-Noubalâ], Il a dit également : « Il était un illustre savant (‘Allâmah) reconnu » [Al-‘Ibr]
Ibn Khallikân a dit à son sujet : « Il était un Faqîh (spécialiste de la jurisprudence), lettré (adîb), Mouhaddith (spécialiste de la science du hadîth), auteur d’ouvrages sans précédents» [Wafayâtou l-A’yân]
Fayroûz Âbâdi a dit de lui : « Le Mouhaddith (spécialiste de la science du hadith), le Loughawi (spécialiste de la langue Arabe), le vérificateur scrupuleux, de parmi l’élite des Imâm » [Al-Boulaghatou fî Tarâjimi A-immah an-Nahwi wa l-Loughah]
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
– Ici l’Imâm Al-Khattâbi aborde le sujet de l’istiwâ sur le trône, et il confirme que ces versets ne signifient en aucun cas que Allâh serait assis, ou établi ou élevé spatialement au-dessus du Trône, ni que Allâh serait dans un endroit ou une direction. Il dit que nous confirmons l’istiwâ de Allâh tel qu’il est parvenu dans le Qour-ân tout en reniant le comment (kayf) à son sujet. Et l’Imâm Al-Bayhaqi est en accord ses propos.
– Le comment (al-kayf) : c’est ce par quoi on décrit les créatures, c’est-à-dire les dimensions, le début, la fin, la couleur, l’endroit, la direction, la forme, la position assise, la proximité, le mouvement, le déplacement, le changement et tout ce qui fait partie des attributs des créatures. Allâh est exempt de tout cela.
– Cette citation de l’Imâm Al-Khattâbi provient de son commentaire du sahîh Al-Boukhâri intitulé « A’lâmou l-Hadîth fî Charhi Sahîh Al-Boukhâri».
– L’Imâm Al-Bayhaqi avait d’ailleurs dit :', '3aqidah, 3oulama, ahlou s-sounnah, al-asma’ou wa s-sifat'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وليس معنى قول المسلمين: إن الله استوى على العرش هو أنه مماس له أو متمكن فيه أو متحيز في جهة من جهاته لكنه بائن من جميع خلقه، وإنما خبر جاء به التوقيف. فقلنا به، ونفينا عنه التكييف، إذ ليس كمثله شيء وهو السميع البصير');

-- source: https://islamsunnite.net/imam-al-khattabi-istiwa-allah-sans-direction-al-bayhaqi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'l’istiwâ de Allâh', 'Les Chafi''ites', 'وفي الجملة يجب أن يُعلم أن استواء الله سبحانه وتعالى، ليس باستواء اعتدال عن اعوجاج، ولا استقرار في مكان، ولا مماسة لشيء من خلقه، لكنه مستو على عرشه كما أخبر بلا كيف بلا أين', '« Il faut savoir que l’istiwâ de Allâh soubhânahou wa ta’âlâ n’est pas interprété par le fait de se redresser après avoir été courbé, ni par le fait de s’établir dans un endroit, ni de toucher quelque chose de Sa création. On dit au contraire que Allâh istawa ‘ala l-‘arch comme cela est rapporté, sans comment et sans « où » [c’est-à-dire sans endroit]. » [ Dans son livre Al-I’tiqâd ]', '', '– Et dans un autre de ses ouvrages l’Imâm Al-Bayhaqi confirme que le fait de croire que Allâh serait assis sur le Trône, ou qu’Il serait un corps ou une substance, cela est du tachbîh (assimilation) et de la mécréance. [ Dans son livre Chou’abou l-Îmân ]
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
Il n’est donc pas permis de traduire le verset {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} (Ar-Rahmânou ‘ala l-’archi stawâ) et ceux qui sont similaires par le fait que Allâh serait établi sur le trône car cette explication est contraire au tawhîd (l’unicité de Allâh). Consultez d’autres ouvrages de savants concernant l’ istiwâ de Allâh sur le Trône : ici .', '3aqidah, 3oulama, ahlou s-sounnah, al-asma’ou wa s-sifat'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وفي الجملة يجب أن يُعلم أن استواء الله سبحانه وتعالى، ليس باستواء اعتدال عن اعوجاج، ولا استقرار في مكان، ولا مماسة لشيء من خلقه، لكنه مستو على عرشه كما أخبر بلا كيف بلا أين');

-- source: https://islamsunnite.net/imam-ahmad-ibn-hanbal-interpretation-verset-wa-ja-a-rabbouka-al-housni/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’interprétation chez les Salafs', 'Les Hanbalites', '[عن] قوله تعالى وجاء ربك قال الإمام أحمد معناه جاء أمر ربك', '« Concernant la parole de Allâh ta’âla {وجاء ربك} « wa jâ-a Rabbouka » l’Imâm Ahmad [Ibn Hanbal] a dit : le sens est que viendra l’ordre de ton Seigneur »', '', 'Dans son livre « Daf’ou choubahi man chabbaha wa tamarrad » (page 62 de cette édition), l’Imâm Taqiyyou d-Dîn Al-Hisni a dit :
Informations utiles :
– L’Imâm, le Faqîh (spécialiste de la jurisprudence) Aboû Bakr Taqiyyou d-Dîn Al-Hisni Al-Houçayni Ach-Châfi’i Ad-Dimachqi est né en 752 et il est décédé en 829 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 600 ans.
– Ici, il mentionne la célèbre interprétation (ta-wîl) de l’Imâm Ahmad Ibn Hanbal au sujet du verset {وجاء ربك} « wa jâ-a Rabbouka » dans laquelle il a dit que c’est l’ordre de Allâh qui viendra et non Allâh lui-même.
– L’Illustre savant du salaf, le Moujtahid (jurisconsulte), l’Imâm Aboû ‘Abdi l-Lâh Ahmad Ibnou Mouhammad Ibnou Hanbal Ach-Chaybâni est né en 164 à Baghdâd et il est décédé en 241 de l’Hégire à Baghdâd (رحمه الله) c’est-à-dire il y a plus de 1190 ans. Il est l’Imâm de l’école Hanbalite, l’un des quatre Imams.
– Cette interprétation de l’Imâm Ahmad Ibn Hanbal a été mentionnée dans de nombreux ouvrages de savants. Parmi eux :
Le Hâfidh Al-Bayhaqi, avec une chaîne de transmission authentique comme le mentionne Ibnou Kathîr [ Al-Bidâyah wa n-Nihâyah ]
L’Imâm Ibnou l-Jawzi Al-Hanbali [dans son livre Daf’ou Choubahi t-Tachbîh]
Le Chaykh Ahmad Ibn Hamdân Al-Hanbali [dans son livre Nihâyatou l-Moubtadi-în]
Le Chaykh Taqiyyou d-Dîn Al-Hisni [Daf’ou choubahi man chabbaha wa tamarrad]
Le Chaykh As-Sa’idi Al-Hanbali [ Al-Jawhar Al-Mouhsal ]
Le Chaykh Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali [dans son tafsîr]
Le Chaykh Al-Kawthari [dans son introduction du livre Al-Asmâ-ou wa s-Sifât]
– Quant aux moujassimah (ceux qui attribuent à Allâh les caractéristiques des créatures) ils comprennent de ce verset que Allâh lui-même viendra, c’est-à-dire qu’ils attribuent à Allâh le mouvement et le déplacement, et cela est un égarement clair.
– Cette citation est une preuve supplémentaire confirmant le fait que les musulmans du Salaf avaient quelquefois recours à l’interprétation détaillé (ta-wîl).
– Le Chaykh Ibn Hamdân Al-Hanbali a dit : « Et [l’Imâm] Ahmad a certes interprété certains versets et certains hadîths comme le verset de an-najwâ, ainsi que Sa parole { أَن يَأْتِيَهُمُ اللّهُ } [an ya-tiyahoumou l-Lâh] et il a dit qu’il s’agit de Sa puissance (c’est-à-dire les manifestations de Sa toute puissance) et Son ordre. Et Sa parole { وَجَاء رَبُّكَ } [wa jâ-a rabbouk] et il a dit qu’il s’agit de Sa puissance. Et Ibnou l-Jawzi [Al-Hambali] a mentionné ces deux interprétations [de l’Imâm Ahmad] dans « Al-Minhâj » et il a, quant à lui, penché vers le fait de prendre les versets tels qu’ils sont parvenus sans en donner d’explications, et Ibn ‘Aqîl [Al-Hambali] a interprété de nombreux versets et khabar. Et [l’Imâm] Ahmad a interprété la parole du prophète (صلى الله عليه وسلم) : « الحجر الأسود يمين الله في الارض » [al-hajarou l-aswad yamînou l-Lâhi fi l-ard] et ce qui est similaire » [Nihâyatou l-Moubtadi-în]. Cela nous indique que bien que la voie majoritaire des savants du Salaf était de ne pas procéder à l’interprétation, il est toutefois arrivé que certains d’entre eux, à l’image de l’Imâm Ahmad Ibn Hambal, la pratique dans certains cas. Et il en est de même concernant les savants du madh-hab Hambalite.
– De nombreux savants ont donné des explications similaires, parmi eux :
L’Imâm Al-Bayhaqi qui dit que le Majî de Allâh n’est pas un mouvement ou un déplacement [ Dans son livre Al-I’tiqâd ] et il explique qu’il est valable de se contenter d’accepter le majî sans comment (bilâ kayf) [ Dans son ouvrage Al-I’tiqâd ] en niant par cette expression le déplacement ou le mouvement à l’égard de Allâh.
L’Imâm Al-Jouwayni (m.478 H.) qui a dit : « Le sens du majî n’est pas le déplacement et la disparition [d’un endroit à autre], Allâh est exempt de cela, mais le sens de Sa parole { وجاء ربك } « wa jâ-a Rabbouk » c’est-à-dire l’ordre de ton Seigneur viendra, ainsi que Son jugement » [Dans son livre Al-Irchâd]
L’Imâm Al-Baghawi [ Dans son Tafsîr ]
L’Imâm Ibnou l-Jawzi [ Dans son livre Daf’ou Choubahi t-Tachbîh ]
L’Imâm Al-Qourtoubi [ Dans son tafsîr ]
L’Imâm Ibnou Abî Jamrah (m.699 H.) qui a dit : « L a parole de Allâh ta’âlâ { وجاء ربك والملك } « wa jâ-a Rabbouka wa l-malak » c’est-à-dire : l’ordre de ton Seigneur viendra ; et ceci [ce genre de formulation] est très utilisé dans la langue arabe » [Dans son livre Bahjatou n-Noufoûs]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Il n’est pas permis d’attribuer à Allâh la venue (majî) et l’aller (dhahâb) [c’est-à-dire le mouvement et le déplacement] car cela fait partie des attributs des créatures et des caractéristiques des choses entrées en existence, ce sont donc deux attributs qui sont rejetés concernant Allâh ta’âlâ. Ne vois-tu pas comment [le prophète] Ibrahîm -عليه السلام- a argumenté sur le fait que ce qui se déplace d’un endroit à un autre endroit n’est pas Dieu, lorsqu’il a dit : {فَلَمَّا أَفَلَ قَالَ لَا أُحِبُّ الْآفِلِينَ} [ce qui signifie] «Je n’adore pas les choses qui disparaissent».» [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Le sens de la parole de Allâh ta’âla {وجاء ربك} « wa jâ-a Rabbouka » est : viendra l’ordre de ton Seigneur» [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
L’Imâm Ath-Tha’âlibi [ Dans son tafsîr ]
Et autres qu’eux.
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
Ibnou l-Bannâ Al-Hambali qui a dit : « Celui qui prend le nouzoûl dans le sens de quitter un endroit pour en occuper un autre, et du déplacement alors c’est de la mécréance » [Al-Ousoûlou l-Moujarradah].', 'ahmad, ahmad ibn hambal, ahmad ibn hanbal, al-housni'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '[عن] قوله تعالى وجاء ربك قال الإمام أحمد معناه جاء أمر ربك');

-- source: https://islamsunnite.net/prophete-parle-a-des-morts-dans-leurs-tombes-an-nawawi-riyad-as-salihin/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'S’adresser à des morts n’est pas du chirk.', 'Les Chafi''ites', '« وعن ابن عَبَّاسٍ ، رَضَيَ اللَّه عنهما ، قال : مَرَّ رسُولُ اللَّهِ صَلّى اللهُ عَلَيْهِ وسَلَّم بِقُبورٍ بالمَدِينَةِ فَأَقْبَلَ عَلَيْهِمْ بوَجْهِهِ فقالَ : « السَّلامُ عَلَيْكُمْ يا أَهْلَ القُبُورِ ، يَغْفِرُ اللَّهُ لَنا وَلَكُمْ ، أَنْتُم سَلَفُنا ونحْنُ بالأَثَرِ » رواهُ الترمذي وقال : حديث حسن»', '', '', 'Dans son célèbre recueil de hadîth «Riyâdou s-Sâlihîn », l’Imâm An-Nawawi mentionne le hadîth suivant :
[Ce qui a pour sens : ] « D’après Ibnou ‘Abbâs (que Allâh les agrée), il a dit : Le Messager de Allâh (salla l-Lâhou ‘alayhi wa sallam) passa auprès de tombes à Médine, il se tourna vers elles et dit « As-Salâmou ‘alaykoum Ô habitants des tombes, que Allâh nous accorde Sa miséricorde ainsi qu’à vous, vous êtes nos prédécesseurs et nous sommes sur vos traces ». [hadîth] rapporté par At-Tirmidhi qui a dit : Hadîth Hassan (bon). »
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence) Aboû Zakariyyâ Mouhyi d-Dîn Yahyâ Ibnou Charaf An-Nawawi est un savant de référence. Il est né en 631 et il est décédé en 676 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 750 ans. C’est un savant dans l’école de jurisprudence Chafi’ite. Son commentaire du sahîh de l’Imâm Mouslim est très célèbre. Il a écrit d’autres livres tels que « Riyâd as-Sâlihîn » (le jardin des vertueux), et le recueil de 40 hadîth si connus.
Tâjou d-Dîn As-Soubki le surnommait « Chaykhou l-Islâm » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « Le Moufti de la Oummah, Chaykhou l-Islâm […] le Hâfidh (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chafi’ite, l’ascète, l’un des étendards (de la religion) » [Târîkhou l-Islâm]. Il a dit également : « Le Chaykh, le modèle (qoudwah) […] le Hâfidh (spécialiste de la science du hadîth), l’ascète, le pieux adorateur, le Faqîh (spécialiste de la jurisprudence), le moujtahid versé dans l’adoration de Son Seigneur, Chaykhou l-Islâm » [Siyar A’lâmi n-Noubalâ]
Ibn Kathîr a dit à son sujet : « Le Chaykh, l’Imâm, l’illustre savant (al-‘Allâmah), le Hâfidh (spécialiste de la science du hadîth) l’honorable Faqîh (spécialiste de la jurisprudence) […] l’un des pieux adorateurs et ascètes» [Tabaqâtou ch-Châfi’iyyah]
– Après avoir cité ce Hadîth, l’Imam At-Tirmidhi déclare qu’il est : hassan (bon).
– Le hadîth qui est hassan (bon) fait partie, avec le hadîth sahîh (authentique), des hadîth qui sont dit fort (qawiyy).
– L’Imâm, le Hâfidh Aboû ‘Îçâ Mouhammad Ibnou ‘Îçâ At-Tirmidhi, l’auteur du célèbre recueil de Hadîth connu sous le nom de « Sounan At-Tirmidhi » est né en 209 et il est décédé en 279 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 1160 ans. Son recueil de Hadîth compte parmi les six plus importants, il est donc une référence incontournable.
– En plus du fait que l’Imâm At-Tirmidhi a déclaré ce hadîth comme étant hassan (bon), il faut savoir que l’Imâm An-Nawawi, qui fait partie des grands savants du hadîth qui sont aptes à juger leurs chaines de transmissions, a dit dans l’introduction de son ouvrage « Riyâd as-Sâlihîn » qu’il s’était astreint à ne mentionner dans ce livre que des hadîth avec une forte chaîne de transmission. Ce hadîth là est donc également considéré par l’Imâm An-Nawawi comme ayant une forte chaîne de transmission.
– Ce hadîth nous montre clairement que le fait de saluer ou de s’adresser à des personnes décédées, bien qu’ils soient dans une tombe ne constitue pas du chirk (l’association à Allâh) comme le prétendent certains ignorants de la base de la religion. Comment une personne peut-elle prétendre une chose pareil alors que le Prophète (صلى الله عليه وسلم) a lui même pratiqué cela ?!
– Dans le même chapitre l’Imâm An-Nawawi mentionne deux autres hadîth dans lequel le prophète s’adresse à des morts dans la tombe ou enseigne de le faire. Ceci fera l’objet d’articles (إن شاء الله).', 'allah, an-nawawi, an-nawawiyy, annawawi'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« وعن ابن عَبَّاسٍ ، رَضَيَ اللَّه عنهما ، قال : مَرَّ رسُولُ اللَّهِ صَلّى اللهُ عَلَيْهِ وسَلَّم بِقُبورٍ بالمَدِينَةِ فَأَقْبَلَ عَلَيْهِمْ بوَجْهِهِ فقالَ : « السَّلامُ عَلَيْكُمْ يا أَهْلَ القُبُورِ ، يَغْفِرُ اللَّهُ لَنا وَلَكُمْ ، أَنْتُم سَلَفُنا ونحْنُ بالأَثَرِ » رواهُ الترمذي وقال : حديث حسن»');

-- source: https://islamsunnite.net/imam-ar-razi-rapporte-unanimite-allah-existe-sans-endroit/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh est sans endroit, par unanimité.', 'Unanimité', 'قال المتكلمون هذه المعية إما بالعلم وإما بالحفظ والحراسة وعلى التقديرين فقد انعقد الإجماع على أنه سبحانه ليس معنا بالمكان والجهة والحيز فإذا قوله (وهو معكم) لا بد فيه من التأويل وإذا جوزنا التأويل في موضع وجب تجويزه في سائر المواضع', '« Les spécialistes de la science de la croyance (al-moutakallimoûn) ont dit que cette « ma’iyyah » est soit par la science, soit par la préservation et la protection ou bien les deux. Il est confirmé l’unanimité sur le fait que Allâh soubhânah n’est pas avec nous dans un endroit, ni une direction, ni dans un espace. Donc concernant Sa parole « wa houwa ma’akoum » il est indispensable d’en faire le ta-wîl (interprétation), et si le ta-wîl (interprétation) nous est permis ici, alors il est indispensable qu’il soit permis dans d’autres endroits [c’est-à-dire d’autres versets]».', '', 'Dans son célèbre Tafsîr (exégèse) connu sous le nom de « At-Tafsîrou l-Kabîr » (tome 29 page 216 de cette édition) lors de l’explication du verset { وَهُوَ مَعَكُمْ أَيْنَمَا كُنْتُم} (wa houwa ma’akoum aynamâ kountoum) [Soûrat Al-Hadîd/4] , l’Imam Fakhrou d-Dîn Ar-Râzi a dit :
Informations utiles :
– Chaykh al-Islâm, l’Imâm, le Moufassir –exégète– Aboû ‘Abdoul-Lâh Mouhammad ‘Oumar Al-Houçayn Fakhrou d-Dîn Ar-Râzi est né en 543 et il est décédé en 606 de l’hégire (rahimahou l-Lâh) c’est-à-dire il y a plus de 830 ans. Il était du madh-hab (école de jurisprudence) de l’Imam Ach-Châfi’i. C’est un savant de référence et son oeuvre « At-Tafsîrou l-Kabîr » est l’un des tafsîr les plus célèbres et les plus répandus. Certains savants, comme l’Imâm As-Souyoûti, l’ont désigné comme le moujaddid du 6ème siècle de l’hégire (c’est-à-dire celui qui revitalise la science de la religion).
Ibnou l-Athîr a dit de lui : « Il était le savant de ce bas-monde à son époque » [Al-Kâmil]
Le Chaykh Tâjou d-Dîn As-Soubki a dit : « Il était surnommé Chaykhou l-Islâm » [Tabaqâtou ch-Châfi’iyyah]
– Ici, il rapporte l’unanimité sur le fait que Allâh n’est pas dans un endroit, ni une direction ni dans un quelconque espace.
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah]
– Il explique que le verset { وَهُوَ مَعَكُمْ أَيْنَمَا كُنْتُم } (wa houwa ma’akoum aynamâ kountoum) ne signifie pas que Allâh serait avec nous par Son être où que nous soyons. En effet Allâh n’est pas concerné par l’endroit et la direction. Ce verset signifie plutôt que Allâh sait toute chose peu importe l’endroit où nous sommes, et Qu’Il a la capacité de nous préserver et nous protéger où que nous soyons.
– Ainsi l’Imâm Ar-Râzi s’oppose à deux mauvaises croyances : la croyance selon laquelle Allâh serait dans un endroit, et cela est la croyance des moujassimah (corporalistes), mouchabbihah (assimilateurs) que l’on retrouve principalement à notre époque dans la mouvance sectaire wahhabite (ceux qui se nomment mensongèrement Salafi) ; et il s’oppose à la croyance selon laquelle Allâh serait dans tous les endroits, et cela est la croyance des mou’tazilah, des jahmiyyah et également celle de Sayyid Qoutb.
– Les savants de l’Islâm ont dénoncé ces deux croyances et les ont considérés comme étant de la mécréance. En effet :
Le Chaykh Ibn Hamdân Al-Hanbali a dit : « Et celui qui dit que Allâh est par Son Être dans tous les endroits, ou dans un endroit, c’est un mécréant, car cela impliquerait l’éternité de l’endroit et l’incarnation dans les endroits répugnants et autres, et Allâh est totalement exempt de cela » [ Dans son livre Nihâyatou l-Moubtadi-în ].
Le Chaykh Ibn Balbân Al-Hanbali a dit : «Celui qui croit que Allâh est par Lui-même dans tous les endroits ou dans un endroit est mécréant.» [Moukhtasarou l-Ifâdât] et cela a également été confirmé de lui par le Chaykh Al-Qaddoûmi Al-Hanbali [ Dans son livre Al-Manhajou l-Ahmad ].
Quant au Chaykh ‘Abdou l-Ghani Al-Nâboulouçi Al-Hanafi, il a dit : « Quant à l’assimilation (tachbîh) c’est de croire que Allâh ta’âlâ ressemble à l’une de Ses créatures, comme ceux qui croient que Allâh est un corps au-dessus du Trône […] ou qu’Il est au ciel (fi s-samâ), ou qu’Il est dans une des six directions, ou qu’Il est dans un des endroits ou dans tous les endroits , ou qu’Il a rempli les cieux et la terre ou qu’Il s’est incarné dans quelque chose ou dans toute les choses, ou celui qui croit que les créatures seraient une partie de Lui, et tout ceci est de la mécréance claire » [ Al-Fathou r-Rabbâni ].
– Quant à celui qui dirait “Allâh est partout” ou “dans tous les endroits” en comprenant de ces expressions que Allâh sait toute chose, qu’Il voit tout et qu’Il entend tout, tout en ayant pour croyance que Allâh n’est pas concerné par les endroits, alors il n’est pas déclaré mécréant, bien que les termes qu’il ait utilisé soient blâmable. L’Imâm Ibnou Foûrak a dit à ce sujet : «Le sens est correct mais l’expression utilisée est interdite (mamnoû’)» [Mouchkilou l-Hadîth].
– L’Imâm Ibnou Foûrak a dit également : « Ath-Thalaji prenait pour voie celle de [Al-Houçayn Ibn Mouhammad] An-Najjâr concernant le fait de dire que Allâh est dans tous les endroits, et cela est la voie des mou’tazilah, et cette interprétation est rejetée chez nous (les gens de la sounnah) du fait qu’il n’est pas permis de dire que Allâh ta’âlâ serait dans un endroit, ou qu’Il serait dans tous les endroits » [ Mouchkilou l-Hadîth ].
– Le Chaykh Ibn Hamdân a dit : « Ahmad reniait ceux qui disent que Allâh est dans tous les endroits » [Nihâyatou l-Moubtadi-în].
– L’Imâm Al-Bayhaqi a dit : « Et ce que nous avons mentionné de parmi les versets est une preuve de l’infondé de la parole de ceux qui prétendent, de parmi les jahmiyyah, que Allâh ta’âlâ serait par Son Être dans tous les endroits. Et Sa parole ‘Azza wa Jall : { وَهُوَ مَعَكُمْ أَيْنَ مَا كُنتُمْ} (wa houwa ma’akoum ayna mâ kountoum) [soûrat Al-Hadîd / 4] ce qu’Il en a voulu est : par Sa science et non par Son Être» [Al-I’tiqâd].
– L’Imâm Al-Ghazâli a dit : « S’est trompé celui qui a dit que Allâh est dans tous les endroits ; et tout ceux qui lui ont attribué l’endroit et la direction se sont humilié et se sont égaré » [Al-Arba’în fî Ousoûli d-Dîn]
– L’Imâm Ibn Hajar Al-‘Asqalâni a dit : « Et ont contredit cela certains mou’tazilah qui ont dit que Allâh est dans tous les endroits, et cela est une ignorance claire » [Fat-hou l-Bârî]
– Le Chaykh ‘Abdou l-Wahhâb Ach-Cha’râni rapporte de ‘Ali Al-Khawwâs qu’il a dit : « Il n’est pas permis de dire que Allâh ta’âlâ est dans tous les endroits comme l’ont dit les Mou’tazilah et les Qadariyyah » [Al-Yawâqît wa l-Jawâhir]
– Le Chaykh Ismâ’îl Haqqi Al-Hanafi a dit : « Celui qui attribue à Allâh ta’âlâ un endroit alors il fait partie des moujassimah (ceux qui attribuent le corps à Allâh), et parmi eux il y a les ignorants qui se revendiquent [mensongèrement] du Soufisme et qui disent que Allâh est dans tous les endroits » [Rapporté par le Chaykh Mahmoûd As-Soubki Al-Azhari dans son livre Ad-Dîn Al-Khâlis]
– Le Chaykh Khalîl Daryân Al-Azhari a dit : « Sache qu’il n’est pas permis de dire que Allâh est dans tous les endroits, même si celui qui dit cela comprend de cette expression corrompue (fâçidah) que Allâh sait toute chose » [Ghâyatou l-Bayân fî Tanzîhi l-Lâhi ‘ani l-Jihati wa l-Makân]
– Retrouvez d’autres paroles de savants qui ont confirmé que le fait qu’attribuer l’endroit ou la direction à Allâh est une croyance qui fait sortir de l’Islam : ici .
– Egalement il explique qu’il est indispensable de faire le ta-wîl (interprétation) de ce verset, c’est-à-dire de le prendre dans un autre sens que son sens apparent. Et il conclu en disant que si le ta-wîl (interprétation) nous est permis dans ce verset alors il peut être permis dans d’autres versets également. Et ceci est une réplique aux moujassimah qui prétendent qu’il n’est pas permis d’interpréter le Qour-ân. Il prétendent par exemple qu’il n’est pas permis d’interpreter le verset {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} « Ar-Rahmânou ‘ala l-archi stawâ », alors que eux même interprètent le verset { وَهُوَ مَعَكُمْ أَيْنَمَا كُنْتُم } « wa houwa ma’akoum aynamâ kountoum », donc eux même se rendent permis l’interprétation sans s’en rendre compte. Cela nous démontre la faiblesse de leurs arguments.
– L’Imâm Al-Qourtoubi a dit à ce sujet : « Allâh ta’âlâ dit : {wa houwa ma’akoum} [traduction mot à mot : et Il est avec vous] c’est-à-dire par Sa puissance, Sa souveraineté, et Sa science {ayna mâ kountoum wa l-Lâhou bimâ ta’maloûna basîr} [traduction mot à mot : où que vous soyez, et Allâh voit ce que vous faites] Il voit vos actes, et aucun d’eux ne Lui échappe. Et certes Allâh a réunis dans ce verset [Sa parole] {Istawâ ‘ala l-‘Arch} [qui signifierait selon le sens apparent – qui n’est pas correct – que Allâh serait assis ou établi sur le trône] et [Sa parole] {wa houwa ma’akoum} [qui signifierait selon le sens apparent – qui n’est pas correct – que Allâh serait situé dans l’endroit dans lequel nous sommes] et le fait de les prendre (ces deux parties du verset) selon leur sens apparents amène à une contradiction, et cela est une preuve qu’il est nécessaire d’avoir recours à l’interprétation (ta-wîl), et l’opposition à l’interprétation (ta-wîl) amène à la contradiction. » [ Dans son tafsîr ].', 'accord, allah, aqida, avec'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال المتكلمون هذه المعية إما بالعلم وإما بالحفظ والحراسة وعلى التقديرين فقد انعقد الإجماع على أنه سبحانه ليس معنا بالمكان والجهة والحيز فإذا قوله (وهو معكم) لا بد فيه من التأويل وإذا جوزنا التأويل في موضع وجب تجويزه في سائر المواضع');

-- source: https://islamsunnite.net/chaykh-qawouqji-confirme-allah-n-a-pas-doreille/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh entend sans oreille.', 'Qawouqji', 'ويجبُ له تعالى: السمعُ: المقدَّسُ عن الأُذُنِ والصِماخ.', '« Il est un devoir à Son sujet [de connaitre de parmi Ses attributs] ta’âlâ : l’ouïe : et Il est exempt de l’oreille et du tympan ».', '', 'Dans son livre « Al-I’timâdou fi l-I’tiqâd », le Chaykh Al-Qâwouqji a dit au sujet de Allâh :
Informations utiles :
– Le Chaykh, Al-‘Allâmah (l’illustre savant), le Mouhaddith (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence) Abou l-Mahâcin Chamsou d-Dîn Mouhammad Ibn Khalîl Ibn Ibrâhîm Al-Qâwouqji At-Tarâboulouçi Al-Loubnâni Al-Hanafi est né en 1224 et il est décédé en 1305 de l’Hégire (رحمه الله).
– Il a dit dans l’introduction de son ouvrage : « Voici un traité de croyance concernant le tawhîd pur de tout verbiage et de toute complication dont a besoin tout mourid, que Allâh en fasse profiter tous les esclaves, âmîn ».
– Ici il confirme la croyance des gens de Ahlou s-Sounnah sur le fait que Allâh a pour attribut l’ouïe, et que Allâh entend toute choses sans oreilles et sans tympan. En effet Allâh n’a pas de membres ni d’organes, Il n’est ni composant, ni composé de parties.
– Ceci est confirmé dans de nombreux ouvrages de savants. Parmi eux :
L’Imâm, l’illustre savant, le Faqîh (le spécialiste de la jurisprudence), le Hâfidh (spécialiste de la science du hadîth), le Loughawi (spécialiste de la langue Arabe) Aboû Soulaymân Al-Khattâbi (319 – 388 A.H.) a dit : « Il n’y a pas d’attribution de l’oreille (al-oudhoun) et de l’oeil [à Allâh] car ce sont des organes (jârihatân) » [Charh Sounan Abî Dâwoûd]
L’Imâm, l’illustre savant, le Faqîh (spécialiste de la jurisprudence), le Qâdî (juge) Al-Halîmi Ach-Châfi’i (338 – 403 A.H) dit lorsqu’il a abordé l’attribut de l’ouïe de Allâh : « Sans qu’Il (Allâh) n’ait d’oreille » [Al-Minhâjou fî Chou’abi l-Îmân]
L’Imâm, le Hâfidh (spécialiste de la science du hadîth) Aboû Bakr Al-Bayhaqi (384 – 458 A.H.) a également rapporté les propos de Al-Halimi : « Sans qu’Il (Allâh) n’ait d’oreille » dans son livre Al-Asmâ-ou wa s-Sifât.
L’Imâm An-Naçafi (m.508 A.H.) qui a dit : « Ainsi, Allâh ta’âlâ entend sans organe » [ Bahrou l-Kalâm ]
L’Imâm Ahmad Ar-Rifâ’i a dit au sujet de Allâh : « Il entend sans tympans ni oreilles » [Ad-Dourratou s-Sâmiyah fî Ma’rifati fadâ-ili souloûki t-Tarîqati r-Rifâ’iyyah]
L’Imâm Ahmad Ar-Rifâ’i a dit également au sujet de Allâh : « Il entend sans oreille, Il voit sans globe oculaire [c’est-à-dire sans œil] et Il parle sans langue. » [Al-Majâlis ar-Rifâ’iyyah]
L’Imâm Al-Marjâni At-Toûniçi Al-Mâliki (m. 699 H.) a dit au sujet de Allâh: « Il n’a pas de parties corporelles ; Il n’entend pas par le biais d’une oreille » . [I’tiqâdou Ahli s-Sounnah wa ‘Oulamâ-i l-Oummah]
Le Chaykh Abou l-Mountahâ Al-Hanafi a dit : « Allâh entend mais pas comme nous entendons, car nous, nous entendons par le biais d’organes, mais Allâh ta’âlâ entend tout les sons et les paroles par Son ouïe éternelle sans organes tels que l’oreille et le tympan, et sans notion d’endroit, de direction, de proximité ou d’éloignement» [Dans son charh du livre Al-Fiqh Al-Akbar]
Le Moufti de La Mecque, le Chaykh Ahmad Ibn Zaynî Dahlân dit au sujet de Allâh : « Il entend sans tympans ni oreilles » [Charh Al-‘Aqîdah al-Moukhtasarah]
Le Chaykh Mouhammad Ibn ‘Oumar Nawawi Al-Jâwi a dit : « Allâh entend sans oreille » [Dans son livre Mirqâh Sou’oûdi t-Tasdîq]
Le Chaykh Mahmoûd As-Soubki Al-Azhari a dit : « Allâh entend les pas d’une fourmi noire sur un rocher, dans les ténèbres de la nuit, sans Qu’Il ait d’oreille ni de tympan » [Ad-Dînou l-Khâlis]
Le Chaykh Mouhammad Al-Mourâkouchi Al-Mâliki Al-Mouwaqqit a dit : « Le sens du fait que Allâh soubhânah entend et voit est qu’Il entend tout ce qui est audible que ce soit de faible volume ou fort, et qu’Il voit ce qui est visible que ce soit caché ou apparent, mais sans oreille (oudhoun) et sans oeil et sans organe, car les organes font partis des attributs de ce qui entre en existence » [Al-Hablou l-Matîn ‘alâ Nadhmi l-Mourchidi l-Mou’în]
Le Mouhaddith Al-Harari a dit : « L’ouïe (as-sam’) : C’est un attribut qui n’a pas de début, immuablement propre à Allâh. Il entend les sons par une ouïe qui n’a pas de début et qui n’a pas de fin, qui n’est pas telle que notre ouïe, qui n’est pas par le biais d’une oreille (oudhoun) ni d’un tympan.» [As-Sirât Al-Moustaqim]
– Avertissement : les wahhabites se sont opposé à la croyance des musulmans et ont rejeté le tawhîd de Allâh sur cette question. En effet Ibnou ‘Outhaymîn (wahhabite) a innové dans la croyance en prétendant que Allâh aurait peut-être des oreilles [ Retrouvez l’article et la réfutation de cette croyance : ici ], de même Ibn Bâz (wahhabite) a prétendu que le fait de nier l’oreille ou le canal auditif (simâkh) au sujet de Allâh est contraire à la voie des gens de la Sounnah [ Retrouvez l’article et la réplique à cette croyance : ici ].
– L’Imâm At-Tahâwi (رحمه الله) qui fait partie des illustres savants du salaf a dit dans son traité présentant la croyance de l’ensemble des gens de la Sounnah : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres. Les six directions ne Le délimitent pas, contrairement à toutes les créatures » [ Al-‘Aqîdah At-Tahâwiyyah ].', 'al-i’timad fi l-i’tiqad, al-qawoqji, al-qawouqji, al-qawouqjiyy'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ويجبُ له تعالى: السمعُ: المقدَّسُ عن الأُذُنِ والصِماخ.');

-- source: https://islamsunnite.net/chaykh-al-qaddoumi-hanbali-confirme-attribuer-endroit-a-allah-est-de-la-mecreance/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'attribuer l’endroit à Allâh est de la mécréance', 'Ibn Balban', 'ويجب الجزم بأنّه تعالى ليس بجسم ولا جوهر ولا عرض ،لا تحلّ به الحوادث ولا يحلّ في حادث ولا ينحصر فيه، فمن اعتقد أنّ الله بذاته في كلّ مكان أو في مكان فهو كافر. بل يجب الجزم بأنّه تعالى بائن من خلقه (أي لا يشبههم)، فالله تعالى كان ولا مكان ثم خلق المكان وهو الآن كما كان قبل خلق المكان', 'Il est un devoir d’affirmer que Allâh ta’âlâ n’est pas un corps, ni une substance, ni une caractéristique des substances, ce qui entre en existence (al-hawâdith) ne s’incarnent pas en Lui, et Il ne s’incarne pas en eux. Aucune des choses qui entrent en existence ne Le contienne. Celui qui croit que Allâh est par Lui-même dans tous les endroits ou dans un endroit est mécréant. Il est un devoir de croire que Allâh est différent de Ses créatures, ainsi Allâh existe de toute éternité et il n’y a pas d’endroit de toute éternité. Il a créé l’endroit et Il est tel qu’Il est avant la création de l’endroit', '', 'Dans son livre « Al-Manhajou l-Ahmad », Le Chaykh Al-Qaddoûmi Al-Hanbali a dit :
Informations utiles :
– Le Moufti, Al-’Allâmah (l’illustre savant), le Chaykh ‘Abdoul-Lâh Al-Qaddoûmi An-Nâboulouçi Al-Madani Al-Hanbali est né en 1247 et il est décédé en 1331 de l’Hégire (رحمه الله). Il était le savant des Hanbalites dans le Hijâz et au Châm. Ce livre là (Al-Manhajou l-Ahmad) est justement un livre dans lequel il présente la croyance de l’Imâm Ahmad Ibn Hanbal.
– Ici, il mentionne et confirme la citation de Chaykh Badrou d-Dîn Ibnou Balbân Al-Hanbali qui dit clairement que celui qui croit que Allâh est dans un endroit alors il est mécréant, et il en est de même pour celui qui croit que Allâh est dans tout les endroits, c’est-à-dire partout de par Son Être.
– En effet la croyance correcte est de croire fermement que Allâh existe sans endroit car Il en est Le Créateur.
– Le Chaykh Mouhammad Ibnou Badri d-Dîn Ibnou Balbân Ad-Dimachqi Al-Hanbali, est né en 1006 et il est décédé en 1083 de l’Hégire (رحمه الله), c’est à dire il y a plus de 350 ans. L’ouvrage dont est tiré cette citation est intitulé “Moukhtasar Al-Ifâdât”.
– La voie de l’Imâm Ahmad [ainsi que de l’Imam Mâlik, de l’Imam Aboû Hanîfah, et de l’Imam Ach-Châfi’i] est de déclarer mécréant ceux qui prétendent que Allâh serait dans un endroit ou une direction. [ Rapporté par Al-Haytami dans son livre Al-Minhajou l-Qawîm ].
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
Le Chaykh Ibn Balbân [Dans son livre Moukhtasar Al-Ifâdât]
Le Chaykh As-Sâwi Al-Mâliki [ Dans sa Hâchiyah du Tafsîr al-Jalâlayn ]
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ Dans son livre Minhou l-Jalîl ]
Le Chaykh Al-Qawouqji [ Dans son livre Al-I’timâd fi l-I’tiqâd ]
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Chaykh Mahmoûd As-Soubki Al-Azhari qui mentionne l’unanimité [ Dans son livre It-hâfou l-Kâ-inât ] et [ Dans son livre It-hâfou l-Kâ-inât (2) ] et [ Dans son livre It-hâfou l-Kâ-inât (3) ] et [ Dans son livre It-hâfou l-Kâ-inât (4) ]
Le Chaykh Mehmed Zâhid Kotku [ Dans son livre Ehl-i Sünnet Akaidi ]
Le Mouhaddith Al-Harari (1439 H.) [Dans son livre As-Sirât Al-Moustaqîm]
Et beaucoup d’autres…
– Dans ce même ouvrage le Chaykh Al-Qaddoûmi mentionne également le fait que celui qui a pour croyance que Allâh est un corps, il n’est pas musulman. [ Voir l’article à ce sujet : ici ].', 'ahmad ibn hambal, ahmad ibn hanbal, ahmed ibn hambal, ahmed ibn hanbal'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ويجب الجزم بأنّه تعالى ليس بجسم ولا جوهر ولا عرض ،لا تحلّ به الحوادث ولا يحلّ في حادث ولا ينحصر فيه، فمن اعتقد أنّ الله بذاته في كلّ مكان أو في مكان فهو كافر. بل يجب الجزم بأنّه تعالى بائن من خلقه (أي لا يشبههم)، فالله تعالى كان ولا مكان ثم خلق المكان وهو الآن كما كان قبل خلق المكان');

COMMIT;
