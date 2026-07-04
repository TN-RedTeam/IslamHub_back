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
-- PARTIE 5/9 (script découpé pour la limite de taille de l'éditeur).
-- Toutes les parties sont idempotentes et exécutables dans n'importe quel ordre.

-- Colonnes si absentes :
ALTER TABLE parole ADD COLUMN IF NOT EXISTS savant VARCHAR(255) DEFAULT '';
ALTER TABLE parole ADD COLUMN IF NOT EXISTS tag VARCHAR(255) DEFAULT '';

BEGIN;

-- source: https://islamsunnite.net/limam-al-bayhaqi-parle-du-yad-du-wajh-du-ayn-du-nouzoul-de-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Explication des attributs de Allâh.', 'Les Chafi''ites', 'بائن من جميع خلقه، وأن إتيانه ليس بإتيان من مكان إلى مكان وأن مجيئه ليس بحركة وأن نزوله ليس بنقلة وأن نفسه ليس بجسم وأن وجهه ليس بصورة أن يده ليست بجارحة وأن عينه ليست بحدقة، وإنما هذه أوصاف جاء بها التوقيف فقلنا بها ونفينا عنها التكييف. فقد قال الله تعالى : (لَيْسَ كَمِثْلِهِ شَيْء). وقال : (وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَد). وقال : (هَلْ تَعْلَمُ لَهُ سَمِيَّا).', '« Allâh est différent de la totalité des créatures. Ainsi Son « ityân » n’est pas par le déplacement d’un endroit à un autre. Son « majî » n’est pas un mouvement et Son « nouzoûl » n’est pas un déplacement. Son « nafs » n’est pas un corps [une âme] et Son « wajh » n’est pas une image [un visage], Son « yad » n’est pas un organe [une main] et Son « ‘ayn » n’est pas un globe oculaire [un œil] mais ce sont-là des attributs qui sont cités dans les Textes. Nous les mentionnons à ce titre tout en en niant le comment (at-takyîf).', '', 'Dans son livre « Al-I’tiqâd » (page 56 de cette édition), après avoir confirmé le fait que l’istiwâ de Allâh n’est pas un établissement et que Allâh existe sans endroit [voir l’article à ce sujet : ici] l’Imâm Al-Bayhaqi a dit :
Allâh ta’âlâ dit : { لَيْسَ كَمِثْلِهِ شَىْء} [soûrat Ach-Choûrâ / 11] ce qui signifie : « Rien n’est tel que Lui »,
Et Il dit : {وَلَمْ يَكُنْ لَهُ كُفُواً أَحَد} [soûrat Al-Ikhlâs / 4] ce qui signifie : « Et Il n’a aucun équivalent »
Et Il dit : { هَلْ تَعْلَمُ لَهُ سَمِيّا } [soûrat Maryam / 65] ce qui signifie : « Lui connais-tu un seul semblable ?! », (c’est-à-dire : Il n’a assurément aucun semblable) »
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
– Ici, il aborde un sujet très important concernant le tawhîd. Il confirme que Allâh n’est pas concerné par les organes tels que la main, le visage, les yeux. Il confirme également que Allâh n’est pas concerné par le mouvement ou le déplacement, que Allâh n’est pas un corps et qu’Il n’a aucune ressemblance avec Ses créatures. Et il appuie cela en citant des versets du Qour-ân qui confirme la non-ressemblance de Allâh avec Ses créatures.
– L’Imâm Al-Bayhaqi commence par parler du « ityân » et du « majî » et il dit que lorsque cela est attribué à Allâh alors il ne s’agit pas d’un déplacement d’un endroit à un autre, il ne s’agit pas d’un mouvement. Pour autre que Allâh, les sens premiers de l’ityân et du majî, c’est le fait de venir via un déplacement, mais pour Allâh ce sens est rejeté par unanimité.
– En effet, les savants de l’Islâm, qu’ils soient du Salaf ou du Khalaf, sont unanimes à exempter Allâh des caractéristiques des corps comme le mouvement et le déplacement. Nous pouvons citer parmi eux :
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
– Le Hâfidh Ibnou l-Qattân Al-Fâçi Al-Mâliki (m.628 H.) a dit : « Et ils [les gens de la Sounnah, du Salaf et du Khalaf] ont été unanimes que Allâh yajî au jour du jugement […] et Son majî n’est pas un mouvement ni un déplacement » [Al-Iqnâ’]
– Certains savants ont mentionné de manière explicite dans leurs ouvrages que le fait d’attribuer à Allâh le mouvement ou le déplacement est de la mécréance. Parmi eux :
L’Imâm Abou l-Haçan Al-Ach’ari [ Rapporté par As-Soubki ]
Le Qâdî ‘Abdou l-Wahhâb Al-Mâliki qui mentionne l’unanimité [ Charh ‘Aqîdah Mâlik As-Saghîr ]
L’Imâm Taqiyyou d-Dîn Al-Hisni [Daf’ou choubahi man chabbaha wa tamarrad]
L’Imâm Al-Kawthari qui mentionne l’unanimité [ Maqâlâtou l-Kawthari (1) ] et [ Maqâlâtou l-Kawthari (2) ]
Ibnou l-Bannâ Al-Hambali qui a dit : « Celui qui prend le nouzoûl dans le sens de quitter un endroit pour en occuper un autre, et du déplacement alors c’est de la mécréance » [Al-Ousoûlou l-Moujarradah].
– De nombreux savants ont donné une explication détaillée du verset {وجاءَ ربُّكَ} « wa jâ-a Rabbouka » [Soûrat Al-Fajr/22] et ont dit que cela signifie que c’est l’ordre de Allâh qui viendra. Parmi eux :
L’Imâm du Salaf, Ahmad Ibn Hambal comme le rapporte de lui Ibnou Kathîr d’après Al-Bayhaqi avec une chaîne de transmission confirmée [ Al-Bidâyah wa n-Nihâyah ], et l’Imâm as-Sa’idi Al-Hambali [ Al-Jawhar Al-Mouhsal ], et l’Imâm Taqiyyou d-Dîn Al-Hisni [ Daf’ou choubahi man chabbaha wa tamarrad ], et beaucoup d’autres.
L’Imâm Al-Jouwayni (m.478 H.) qui a dit : « Le sens du majî n’est pas le déplacement et la disparition [d’un endroit à autre], Allâh est exempt de cela, mais le sens de Sa parole { وجاء ربك } « wa jâ-a Rabbouk » c’est-à-dire l’ordre de ton Seigneur viendra, ainsi que Son jugement » [Dans son livre Al-Irchâd]
L’Imâm Ibnou l-Jawzi [ Dans son livre Daf’ou Choubahi t-Tachbîh ]
L’Imâm Al-Qourtoubi [ Dans son tafsîr ]
L’Imâm Ibnou Abî Jamrah (m.699 H.) qui a dit : « L a parole de Allâh ta’âlâ { وجاء ربك والملك } « wa jâ-a Rabbouka wa l-malak » c’est-à-dire : l’ordre de ton Seigneur viendra ; et ceci [ce genre de formulation] est très utilisé dans la langue arabe » [Dans son livre Bahjatou n-Noufoûs]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Il n’est pas permis d’attribuer à Allâh la venue (majî) et l’aller (dhahâb) [c’est-à-dire le mouvement et le déplacement] car cela fait partie des attributs des créatures et des caractéristiques des choses entrées en existence, ce sont donc deux attributs qui sont rejetés concernant Allâh ta’âlâ. Ne vois-tu pas comment [le prophète] Ibrahîm -عليه السلام- a argumenté sur le fait que ce qui se déplace d’un endroit à un autre endroit n’est pas Dieu, lorsqu’il a dit : {فَلَمَّا أَفَلَ قَالَ لَا أُحِبُّ الْآفِلِينَ} [ce qui signifie] «Je n’adore pas les choses qui disparaissent».» [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Le sens de la parole de Allâh ta’âla {وجاء ربك} « wa jâ-a Rabbouka » est : viendra l’ordre de ton Seigneur» [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
L’Imâm Ath-Tha’âlibi [ Dans son tafsîr ]
Et autres qu’eux.
– Ensuite l’Imâm Al-Bayhaqi parle du nouzôul de Allâh dont il est question dans le hadîth qui comprend les termes « yanzilou Rabbounâ » et il précise qu’il ne s’agit pas d’un déplacement, c’est-à-dire que le nouzoûl de Allâh ne désigne pas une descente de l’être de Allâh, et ceci par unanimité comme nous l’avons indiqué précédemment.
– Certains savants ont fait une interprétation détaillée du hadîth du nouzoûl en expliquant que c’est l’ordre de Allâh, ou un ange, ou encore Sa miséricorde qui descend. Parmi ceux qui ont soutenu cela, il y a :
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
– Cette croyance que défendent les wahhabites est propre aux mouchabbihah (corporalistes) comme l’a signalé l’Imâm Ibn Hajar dans son commentaire du Sahîh de l’Imâm Al-Boukhâri, lorsqu’il a dit : “ Les gens ont divergé sur le sens de an-nouzoûl : certains l’ont pris selon son sens apparent et son sens propre (haqîqi), et ce sont les corporalistes (al-Mouchabbihah), et Allâh est exempt de ce qu’ils disent. ” [ Charh Sahîh Al-Boukhâri ], et cette croyance que prône Ibn ‘Outhaymîn est celle que prônait l’ancêtre des moujassimah, Aboû ‘Abdi l-Lâh Ibn Karrâm qui prétendait que ce qu’il adore est concerné par le changement de lieu, le déplacement et la descente [ voir à ce sujet le livre de l’Imâm Ach-Charastâni : ici ].
– Retrouvez d’autres paroles de savants concernant le hadîth du nouzoûl : ici .
– Ensuite l’Imâm Al-Bayhaqi explique que lorsque le terme « nafs » est attribué à Allâh, cela ne désigne pas un corps. Ainsi, le terme « nafs » au sujet de Allâh ne désigne donc pas une âme, car l’âme est un corps.
– Puis l’Imâm Al-Bayhaqi parle de l’attribut du wajh de Allâh et dit que cela n’est pas une image. Le mot « wajh » dans la langue arabe a plusieurs sens, et son sens premier est « visage » ou « face ». Mais ce n’est pas ce sens qui est retenu lorsqu’il est attribué à Allâh. En effet Allâh n’est pas composé de partie, Il n’est pas un corps, Il n’a ni membre, ni organe. Le mot wajh peut désigner un être, ou encore avoir le sens de al-Moulk (la souveraineté) comme l’a dit l’Imâm Al-Boukhâri [ Dans son Sahîh ].
– De nombreux autres savants ont interprété le mot « wajh » en fonction du contexte du verset. [ Consultez des paroles de savants : ici ].
– Ensuite l’Imâm Al-Bayhaqi parle de l’attribut du yad de Allâh et dit que cela ne désigne pas une partie corporelle. Il n’est donc pas valable d’attribuer à Allâh la main et ceci sans divergence.
– L’Imâm Ibnou Hajar Al-‘Asqalâni a mentionné l’unanimité sur le fait que le terme “yad” au sujet de Allâh ne vient pas dans le sens de la main. Il a dit : « Il est mentionné dans le Qour-ân et dans le hadîth l’annexion de « al-yad » à Allâh ta’âlâ, et Ahlou s-Sounnah wa l-Jamâ’ah ont été unanimes qu’il n’est pas visé [au sujet de Allâh] par « al-yad » l’organe (c’est-à-dire la main), qui fait partie des choses qui sont concernées par l’entrée en existence » [ Dans son livre « Hadyou s-Sârî Mouqaddimah Fath al-Bârî » ].
– L’Imâm Aboû Hanîfah a dit : « {yadou l-Lâhi fawqa aydîhim} et Son yad n’est pas comme le yad des créatures, ce n’est pas une partie corporelle (c’est-à-dire une main), et Il est Le Créateur des mains » [Dans son livre Al-Fiqhou l-Absat]
– L’Imâm Ahmad Ar-Rifâ’i a dit : «Ne dites pas que le yad et le ‘ayn [au sujet de Allâh] sont des organes » [Dans son livre Al-Bourhânou l-Mou-ayyad].
– L’Imâm Al-Qourtoubi a dit : « Le terme – yad – dans la langue Arabe peut venir dans le sens de la partie corporelle (c’est-à-dire de la main) comme dans la parole de Allâh ta’âlâ {wa khoudh bi yadika dightha} et ceci est impossible au sujet de Allâh ta’âlâ » [ Dans son tafsîr ]
– L’Imâm Al-Marjâni At-Toûniçi Al-Mâliki (m. 699 H.) a dit : « [La parole de Allâh : ] { يد الله فوق أيديهم } (Yadou l-Lâh fawqa aydîhim) : il ne s’agit pas ici d’un « yad » dans le sens d’une partie corporelle (c’est-à-dire une main), mais il s’agit d’un « yad » dans le sens de la puissance, car Al-Bâri (c’est-à-dire Allâh) est exempt d’une telle chose (c’est-à-dire d’avoir une main) » . [Rapporté par Ibnou l-Mou’allim Al-Qourachi dans son livre Najmou l-Mouhtadi]
– L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {بَلۡ يَدَاهُ مَبۡسُوطَتَانِ} (Bal yadâhou Mabsoûtatân) : ce qui en est voulu n’est pas le sens réelle de l’organe qui est composée, car Allâh ta’âlâ est exempt de la composition, mais il s’agit d’un des attributs de Son Être, comme l’ouïe et la vue, Allâh جل ذكره dit : {لِمَا خَلَقْتُ بِيَدَيَّ} (limâ khalaqtou biyaday), et le prophète a dit « كِلْتَا يَدَيْهِ يَمِينٌ » (kiltâ yadayhi yamîn ) et Allâh est plus savant concernant Ses attributs, ainsi les esclaves se doivent d’y croire, de les accepter et de les lires tels qu’ils sont parvenu, sans comment (bila kayf) » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
– L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {قَالَ يَاإِبْلِيسُ مَا مَنَعَكَ أَنْ تَسْجُدَ لِمَا خَلَقْتُ بِيَدَيَّ} (qâla yâ Iblîssou mâ mana’aka an tasjouda limâ khalaqtou biyadayy) : c’est-à-dire [ce que j’ai créé] moi-même sans intermédiaire comme un père ou une mère ; et « al-yadân » est un attribut de parmi les attributs de Allâh ‘azza wa jall, nous y croyons tel que cela est parvenu , et nous remettons la connaissance du sens à Allâh » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
– L’Imâm ‘Abdou l-Ghani An-Nâboulouçi a dit dans son livre : « Quant à l’assimilation (tachbîh) c’est de croire que Allâh ta’âlâ ressemble à l’une de Ses créatures, comme ceux qui croient que Allâh est un corps au-dessus du Trône ou qui croient qu’Il a des mains […] et tout ceci est de la mécréance claire » [ Al-Fathou r-Rabbâni ]. Ainsi le fait de croire que Allâh aurait des mains ou n’importe quelle autre partie corporelle, ceci constitue de la mécréance. Quant à celui qui utilise le terme “main” sans en comprendre le sens de la partie corporelle, ce n’est pas de la mécréance, mais il n’est pas précautionneux d’utiliser ce terme au sujet de Allâh, en raison du risque que cela comporte, comme nous l’avons vu précédemment.
– L’Imâm At-Tahâwi a d’ailleurs dit : « Celui qui attribue à Allâh l’une des significations propres aux humains est devenu mécréant. Celui qui aura bien compris cela en aura tiré des leçons et se sera écarté des propos semblables à ceux des mécréants, il aura su que Allâh avec Ses attributs n’est pas semblable aux humains » [ Al-‘Aqîdah At-Tahâwiyyah ]
– Ainsi pour résumer nous disons que le terme « yad » dans la langue arabe a de très nombreux sens autre que le mot « main ». Lorsqu’il est employé au sujet de Allâh il n’est pas à prendre dans le sens du membre et de la partie corporelle. Les savants ont donné la règle suivante : La similarité dans les termes n’implique pas la similarité dans la signification. Cela signifie que lorsqu’un même terme est employé au sujet de Allâh et au sujet d’une créature alors la signification sera différente.
– Retrouvez d’autres citations concernant le terme “yad” : ici .
– Puis l’Imâm Al-Bayhaqi parle de l’attribut du ‘ayn et il dit qu’au sujet de Allâh cela ne désigne pas un œil. Et cela est confirmé par de nombreux autres grands savants. Parmi eux :
L’Imâm Abou l-Haçan Al-Ach’ari a dit au sujet de Allâh : « Il a un ‘ayn sans comment (bilâ kayf)». [Dans son livre Al-Ibânah, d’après Ibnou ‘Açâkir dans son livre Tabyînou kadhibi l-Mouftarî]. Le comment (kayf) c’est ce par quoi on décrit les créatures, comme la forme, la taille, le poids, la couleur, le mouvement, l’immobilité etc. Ainsi, en niant le comment (kayf), l’Imâm Abou l-Haçan Al-Ach’ari a nié le fait que le terme ‘ayn au sujet de Allâh vienne dans le sens de la partie corporelle, c’est-à-dire de l’œil.
L’Imâm Al-Khattâbi a dit : « Il est confirmé l’attribut de la vue et de l’ouïe au sujet de Allâh, mais Il n’est pas attribué de l’oreille et de l’œil car ce sont des organes». [Charh Sounan Abî Dâwoûd]
L’Imâm Al-Bayhaqi a dit aussi concernant l’attribut du ‘ayn : «Il s’agit d’un attribut qui n’est pas un globe oculaire [un oeil]» [Al-Asmâ-ou wa s-Sifât]
L’Imâm Al-Jouwayni a dit : « Personne de parmi les savants vérificateurs n’a attribué des yeux à Allâh ta’âlâ » [ Al-Irchâd ]
L’Imâm Ahmad Ar-Rifâ’i a dit : «Ne dites pas que le yad et le ‘ayn [au sujet de Allâh] sont des organes » [Dans son livre Al-Bourhânou l-Mou-ayyad]
L’Imâm Ahmad Ar-Rifâ’i a dit également au sujet de Allâh : « Il voit sans globe oculaire [c’est-à-dire sans œil] ni paupières, Il entend sans tympans ni oreilles » [Ad-Dourratou s-Sâmiyah fî Ma’rifati fadâ-ili souloûki t-Tarîqati r-Rifâ’iyyah]
L’Imâm Ahmad Ar-Rifâ’i a dit aussi au sujet de Allâh : « Il entend sans oreille, Il voit sans globe oculaire [c’est-à-dire sans œil] et Il parle sans langue. » [Al-Majâlis ar-Rifâ’iyyah]
L’Imâm Al-Marjâni At-Toûniçi Al-Mâliki (m. 699 H.) a dit au sujet de Allâh: « Il ne voit pas par le biais d’un globe oculaire ni d’une paupière » . [I’tiqâdou Ahli s-Sounnah wa ‘Oulamâ-i l-Oummah]
Le Chaykh Abou l-Mountahâ Al-Hanafi a dit : « La vue de Allâh qui est Son attribut qui est éternel, sans organe (lâ bi l-âlah)» [Dans son charh du livre Al-Fiqh Al-Akbar] ;
Le Moufti de La Mecque, le Chaykh Ahmad Ibn Zaynî Dahlân dit au sujet de Allâh : « Il voit sans globe oculaire [c’est-à-dire sans oeil] ni paupières » [Charh Al-‘Aqîdah al-Moukhtasarah]
Le Chaykh Mouhammad Ibn ‘Oumar Nawawi Al-Jâwi a dit : « Allâh voit sans œil » [Dans son livre Mirqâh Sou’oûdi t-Tasdîq]
Le Mouhaddith ‘Abdou l-Bâsit Al-Fâkhoûri a dit : « [L’attribut de Allâh de] la vue : Il s’agit d’un attribut éternel sans début, propre à Son Être ta’âlâ, sans globe oculaire [œil] ni paupières » [Al-Kifâyah li Dhawi l-‘Inâyah]
Le Chaykh Mouhammad Al-Mourâkouchi Al-Mâliki Al-Mouwaqqit a dit : « Le sens du fait que Allâh soubhânah entend et voit est qu’Il entend tout ce qui est audible que ce soit de faible volume ou fort, et qu’Il voit ce qui est visible que ce soit caché ou apparent, mais sans oreille et sans œil et sans organe, car les organes font partis des attributs de ce qui entre en existence » [Al-Hablou l-Matîn ‘alâ Nadhmi l-Mourchidi l-Mou’în]
– Retrouvez d’autres citations concernant le terme “’ayn” : ici .
– Ainsi, le fait de comprendre ces attributs selon leurs sens apparents, c’est-à-dire les sens qui sont propres aux créatures, cela est la voie des corporalistes (mouchabbihah), tout comme l’a indiqué l’Imâm Ach-Chahrastâni qui a dit : « En ce qui concerne les expressions révélées (c’est-à-dire présentes dans le Qour-ân ou la Sounnah) telles que « al-istiwâ », « al-wajh », « al-yadayn », « al-janb », « al-majî », « al-ityân », « al-fawqiyyah » et d’autres que celles-ci, les corporalistes les prennent selon leur sens apparent, je veux dire telles qu’elles sont comprises lorsqu’elles sont employées au sujet des corps ». [ Al-Milal wa n-Nihal ]
– Celui qui veut garder sa croyance sauve de toute assimilation, qu’il garde bien en tête la parole de l’Imâm At-Tahâwi dans son traité de croyance qu’il a présenté en disant « Ceci est la mention de la présentation de la croyance de Ahlou s-Sounnah wa l-Jamâ’ah », il a dit : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres». [ Al-‘Aqîdah At-Tahâwiyyah ]', 'al-bayhaqi, al-bayhaqiyy, al-i’tiqad, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'بائن من جميع خلقه، وأن إتيانه ليس بإتيان من مكان إلى مكان وأن مجيئه ليس بحركة وأن نزوله ليس بنقلة وأن نفسه ليس بجسم وأن وجهه ليس بصورة أن يده ليست بجارحة وأن عينه ليست بحدقة، وإنما هذه أوصاف جاء بها التوقيف فقلنا بها ونفينا عنها التكييف. فقد قال الله تعالى : (لَيْسَ كَمِثْلِهِ شَيْء). وقال : (وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَد). وقال : (هَلْ تَعْلَمُ لَهُ سَمِيَّا).');

-- source: https://islamsunnite.net/ibn-abbas-explique-le-terme-salat-lorsquil-est-attribue-a-allah-al-qadi-iyad/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'le sens du verbe « sallâ » au sujet de Allâh', 'Les Malikites', 'قال الله تعالى :{إِنَّ الله وَمَلَائِكَتَهُ يُصَلُّونَ عَلَى النَّبِيِّ} قال ابن عباس : معناه : إن الله و ملائكته يباركون على النبي .وقيل : إن الله يترحم على النبي ، وملائكته يدعون له .', '« Allâh ta’âlâ dit : « Inna l-Lâha wa malâ-ikatahou you s alloûna ‘ala n-Nabiyy »', '', 'Dans son livre Ach-Chifa (page 302 de cette édition) Al-Qâdî ‘Iyâd a dit :
Ibnou ‘Abbâs a dit : cela signifie que Allâh accordent des bénédictions et les anges demandent davantage de bénédictions pour le prophète. Et il a été dit que cela signifie que Allâh fait miséricorde au prophète et que les anges font des invocations en Sa faveur. »
Informations utiles :
– Le Qâdî (juge) Abou l-Fadl ‘Iyâd Ibnou Moûçâ Ibnou ‘Iyâd al-Yahsoubi connu sous le nom de Qâdî ‘Iyâd, est un grand savant Malikite. Il est né en 476 à Ceuta et il est décédé en 544 de l’Hégire à Marrakech (Maroc) (رحمه الله) c’est-à-dire il y a plus de 950 ans. Son ouvrage « Ach-Chifâ » est très connu, le titre complet du livre est « Ach-Chifâ bi ta’rîf houqoûq al-Moustafâ ».
Adh-Dhahabi a dit de lui : « L’Imâm, Al-‘Allâmah (l’illustre savant), le Hâfidh (le spécialiste de la science du hadîth), celui qui n’a pas de pareil, Chaykhou l-Islâm, le Qâdî (Juge) » et il a dit également : « Ses ouvrages sont précieux » [Siyar A’lâmi n-Noubalâ]
Ibn Bachkwâl a dit à son sujet : « Il était parmi les gens de science qui sont intelligents et qui ont une bonne compréhension » [Siyar A’lâmi n-Noubalâ]
Ibn Khallikân a dit de lui : « Il est l’Imâm du hadîth de son temps, et le plus connaisseur des gens de ses sciences, de la grammaire, la langue, la parole des arabes, leurs histoires, et les généalogies.» [Wafayâtou l-A’yân]
– L’éminent savant du Salaf, l’Imam des Moufassir, ‘Abdou l-Lâh Ibnou ‘Abbâs est un compagnon et il est le cousin du Prophète (salla l-Lâhou ‘alayhi wa sallam). Il est décédé en 68 de l’Hégire (Radiya l-Lâhou ‘anhou) c’est-à-dire il y a environ 1365 ans. Il est très connu pour sa science de l’interprétation (ta-wil) du Qour-ân. Le Messager de Allâh (salla l-Lâhou ‘alayhi wa sallam) a fait une invocation en sa faveur, par sa parole : « Allâhoumma ‘allimhou l-hikmata wa ta-wila l-kitâb » . Cela signifie : « Ô Allâh, apprends-lui la sagesse et l’interprétation du Livre » . Cette parole est rapportée par Al-Boukhâri, Ibnou Mâjah et d’autres encore en des termes différents. Le Hâfidh Ibnou l-Jawzi dans son livre Al-Majalis a dit : “Et il n’y a pas de doute que Allâh a exaucé cette invocation du Messager”. Retrouvez sa biographie : ici .
– Ici il explique que le terme « salât » lorsqu’il est attribué au sujet de Allâh, ne signifie pas que Allâh fait la prière. Mais plutôt que Allâh fait miséricorde au prophète ou qu’Il lui accorde des bénédictions ou qu’Il l’honore, l’élève en degré, le glorifie etc… Donc l’invocation « salla l-Lâhou ‘alayhi wa sallam » signifie que Allâh l’honore et l’élève davantage en degré et qu’Il préserve sa communauté de ce qu’Il craint pour elle.
– D’autres savants ont tenu des propos similaires :
Aboû Bakr Al-Qouchayri a dit : «La salât de Allâh pour autre que le prophète est une miséricorde, et pour le prophète (salla l-Lâhou ‘alayhi wa sallam) c’est le fait de l’honorer et de l’augmenter en glorification» [Rapporté par Al-Qâdî ‘Iyâd dans Ach-Chifâ]
Al-Moubarrid a dit : «L’origine du terme salât est le fait d’avoir de la miséricorde, la salât de la part de Allâh est une miséricorde, et la salât de la part des anges une invocation afin que Allâh accorde la miséricorde» [Rapporté par Al-Qâdî ‘Iyâd dans Ach-Chifâ]
Abou l-‘Âliyah a dit : « La salât de Allâh sur le prophète est une éloge chez les anges, et la salât des anges est une invocation» [Rapporté par Al-Qâdî ‘Iyâd dans Ach-Chifâ]
– Malheureusement dans de nombreux livres, les traducteurs ne traduisent pas selon l’explication donnée par les savants de l’Islam, mais traduisent mot à mot et induisent les gens en erreur. Comment quelqu’un peut-il prétendre que Allâh prie !? Il est donc faux et grave de traduire « Allâhoumma salli ‘alâ Mouhammad » par « Ô Allâh prie sur Mouhammad », car Allâh n’est pas concerné par le fait de faire la prière.', 'allah, aqida, as-salat, bénédiction'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال الله تعالى :{إِنَّ الله وَمَلَائِكَتَهُ يُصَلُّونَ عَلَى النَّبِيِّ} قال ابن عباس : معناه : إن الله و ملائكته يباركون على النبي .وقيل : إن الله يترحم على النبي ، وملائكته يدعون له .');

-- source: https://islamsunnite.net/chaykh-yahya-al-qourtoubi-confirme-que-allah-nest-pas-etabli-dans-un-endroit/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit.', 'Qourtoubi (yahya)', 'جل عن التمثيل والتشبيه وعن مكان يستقر فيه لأنه كان ولا مكان في أزل لم يحوه الزمان', 'Allâh est exempt de la similarité, de la ressemblance et d’être établi dans un endroit. Il existe de toute éternité et il n’y pas d’endroit de toute éternité ; Il ne dépend pas du temps', '', 'Dans son livre « Mandhoûmat Al-Qourtoubi », dans le chapitre du tawhîd (la croyance en l’unicité de Allâh), le Chaykh Yahyâ Al-Qourtoubi a dit au sujet de Allâh :
Informations utiles :
– Al-‘Allâmah (l’illustre savant), le Faqîh (le spécialiste de le jurisprudence), le Chaykh Aboû Bakr Yahyâ Al-Qourtoubi Al-Mâliki est décédé en 567 de l’hégire (رحمه الله), c’est-à-dire il y a environ 870 ans. Son ouvrage est un résumé en versification concernant le Madh-hab Malikite.
– Ne pas le confondre avec Mouhammad Ibnou Ahmad Al-Ansâri Al-Qourtoubi, le célèbre Moufassir (exégète) qui est décédé en 671 de l’Hégire (رحمه الله). [ Retrouvez des citations de ce savant : ici ]
– Il confirme que Allâh n’a pas de similarité ni de ressemblance avec Ses créatures et que Allâh n’est pas établi dans un endroit.
– Le Chaykh Ahmad Zarroûq Al-Fâçi a commenté les propos du Chaykh Yahyâ Al-Qourtoubi en disant : « Quant au fait de nier l’endroit au sujet de Allâh, la preuve de cela est ce qu’a cité l’auteur [le chaykh Yahyâ Al-Qourtoubi], à savoir que Allâh est Le Créateur de l’endroit, et cela prouve que Allâh existe avant la création de l’endroit, ainsi il n’est pas valable à son sujet d’être dans un endroit » [ Dans son commentaire de la Qourtoubiyyah ]', 'allah, aqida, cordoba, cordoue'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'جل عن التمثيل والتشبيه وعن مكان يستقر فيه لأنه كان ولا مكان في أزل لم يحوه الزمان');

-- source: https://islamsunnite.net/limam-an-nawawi-considere-mecreant-ceux-qui-croient-que-allah-est-dans-les-cieux/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’habite pas le ciel', 'Les Chafi''ites', 'ولو قال : لا إله إلا ساكن السماء ، لم يكن مؤمنا ، وكذا لو قال : لا إله إلا الله ساكن السماء ; لأن السكون محال على الله تعالى', 'Si quelqu’un dit “Il n’y a pas d’autre dieu à part celui qui est localisé aux cieux”, il ne devient pas croyant (musulman), et il en est de même s’il dit “Il n’y a pas d’autre dieu à part Allâh, qui est localisé aux cieux”, parce que le fait d’être localisé est impossible au sujet de Allâh ta’âlâ.', '', 'Dans son livre « Rawdat At-Tâlibîn » [tome 10 pages 85 de cette édition] dans le chapitre de l’apostasie, l’Imâm An-Nawawi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence) Aboû Zakariyyâ Mouhyi d-Dîn Yahyâ Ibnou Charaf An-Nawawi est un savant de référence. Il est né en 631 et il est décédé en 676 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 750 ans. C’est un savant dans l’école de jurisprudence Chafi’ite. Son commentaire du sahîh de l’Imâm Mouslim est très célèbre. Il a écrit d’autres livres tels que « Riyâd as-Sâlihîn » (le jardin des vertueux), et le recueil de 40 hadîth si connus.
Tâjou d-Dîn As-Soubki le surnommait « Chaykhou l-Islâm » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « Le Moufti de la Oummah, Chaykhou l-Islâm […] le Hâfidh (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chafi’ite, l’ascète, l’un des étendards (de la religion) » [Târîkhou l-Islâm]. Il a dit également : « Le Chaykh, le modèle (qoudwah) […] le Hâfidh (spécialiste de la science du hadîth), l’ascète, le pieux adorateur, le Faqîh (spécialiste de la jurisprudence), le moujtahid versé dans l’adoration de Son Seigneur, Chaykhou l-Islâm » [Siyar A’lâmi n-Noubalâ]
Ibn Kathîr a dit à son sujet : « Le Chaykh, l’Imâm, l’illustre savant (al-‘Allâmah), le Hâfidh (spécialiste de la science du hadîth) l’honorable Faqîh (spécialiste de la jurisprudence) […] l’un des pieux adorateurs et ascètes» [Tabaqâtou ch-Châfi’iyyah]
– Ici, il dit clairement que le fait de croire que Allâh est dans le ciel n’est pas une croyance valable en Islâm. Au contraire cela est de la mécréance. Par conséquent celui qui dit “Il n’y a pas d’autre dieu à part celui qui est localisé aux cieux” ou qui dit “Il n’y a pas d’autre dieu à part Allâh, qui est localisé au cieux”, il ne devient pas musulman car le fait de croire que Allâh est dans un endroit ou une direction est une croyance qui est contraire à l’Islâm, contraire au tawhîd.
– L’Imâm An-Nawawi a également confirmé cette croyance en disant : « Certes Allâh ta’âlâ, rien n’est tel que Lui, Il est exempt du corps, du déplacement, de la localisation dans une direction et de toutes les autres caractéristiques des créatures ». [ Charh Sahîh Mouslim ]
– Les savants de l’Islâm ont dit que celui qui dit : “Allâh fi s-Samâ” alors il y a deux cas : 1- S’il dit cela en visant l’endroit, alors il a commis de la mécréance. 2- Mais s’il visait le simple fait de répéter ce qui est parvenu de manière apparente dans les textes, sans viser l’endroit, alors il ne commet pas de mécréance. Voir à ce sujet :
l’extrait du livre Al-Fatâwâ Al-Hindiyyah : ici ;
la citation du Chaykh Ibn Noujaym : ici ;
et la citation du Chaykh Ismâ’îl Haqqi : ici .
– Ce passage que mentionne l’Imâm An-Nawawi a été également été confirmé et cité par le Chaykh Badrou r-Rachîd Al-Hanafi dans son ouvrage qu’il a intitulé « Riçâlatoun fî Alfâdhi l-Koufr » [ Épitre concernant les termes de mécréance ].
– Al-‘Allâmah (l’illustre savant), le Chaykh, Le Faqîh (spécialiste de la jurisprudence), Mouhammad Ibnou Ismâ’îl Ibnou Mahmoûd Ibnou Mouhammad connu sous le nom de Badrou r-Rachîd est décédé en 768 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 660 ans. Il était un spécialiste du Fiqh Hanafite. L’ouvrage dont est tirée cette citation est une épître consacrée à l’exposé des paroles qui rendent mécréant.
– Les savants de l’Islâm ont été en accord pour déclarer mécréant celui qui a pour croyance que Allâh serait dans un endroit ou une direction, voir plusieurs citations à ce sujet : ici .
– Retrouvez des paroles de savants au sujet du hadîth de la femme esclave : ici .
– L’Imâm An-Nawawi a également dénoncé la croyance des moujassimah (corporalistes). Il a dit à ce sujet dans son livre « Al-Majmoû’ Charhou l-Mouhadh-dhab » : « Et nous avons certes mentionné que celui qui est devenu mécréant par son innovation, la prière n’est pas valable derrière lui […] et parmi ceux qui sont devenu mécréant il y a celui qui attribue clairement le corps [à Allâh] ». Ainsi selon l’Imâm An-Nawawi, les moujassimah (corporalistes) ont une croyance innovée qui est de la mécréance et à laquelle il est un devoir de répliquer. Les moujassimah sont ceux qui attribuent à Allâh le corps (le corps : c’est ce qui a une longueur, une largeur et une profondeur) et les caractéristiques des corps comme : l’endroit, la limite, la direction, la couleur, le mouvement, l’immobilité, la position (assise, debout, allongée…), la forme, l’image et ce qui est du même ordre.
Le Chaykh Taqiyyou d-Dîn Al-Hisni a confirmé cela de l’Imâm An-Nawawi en disant : « L’Imâm An-Nawawi, dans le chapitre de la description de la prière de son commentaire de Al-Mouhadh-dhab, a confirmé la déclaration de mécréance (takfîr) à l’égard des moujassimah (anthropomorphistes), et je dis [Al-Hisni] que c’est cela qui est correct » [Kifâyatou l-Akhyâr].
L’Imâm As-Souyoûti a également confirmé cela de l’Imâm An-Nawawi en disant : « Celui qui est devenu mécréant par son innovation, et cela comme le dit l’auteur (An-Nawawi) du commentaire de Al-Mouhadh-dhab : le moujassim (l’anthropomorphiste) et celui qui nie que Allâh connait le détail des choses .. .» [Tadrîbou r-Râwî]. [ Retrouvez plus d’explications : ici ]', 'allah, an-nawawi, apostasie, apostat'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ولو قال : لا إله إلا ساكن السماء ، لم يكن مؤمنا ، وكذا لو قال : لا إله إلا الله ساكن السماء ; لأن السكون محال على الله تعالى');

-- source: https://islamsunnite.net/chaykh-al-qawouqji-parle-du-tawhid-unicite-de-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'la croyance en l’unicité de Allâh', 'Qawouqji', 'فإذا قال لك: أين الله؟ فقل: مع كل أحد بعلمه لا بذاته ، وفوق كل أحد بقدرته، وظاهر بكل شىء باثار صفاته، وباطن بحقيقة ذاته أي لا يمكن تصويره في النفس، منزه عن الجهة والجسمية. فلا يقال: له يمين ولا شمال ولا خلف ولا أمام، ولا فوق العرش ولا تحته، ولا عن يمينه ولا عن شماله، ولا داخل في العالم ولا خارج عنه، ولا يقال: لا يعلم مكانه إلا هو. ومن قال: لا أعرف الله في السماء هو أم في الأرض كفر لأنه جعل أحدهما له مكانا. فإذا قال لك: ما دليلك على ذلك؟ فقل: لأنه لو كان له جهة أو هو في جهة لكان متحيزا، وكل متحيز حادث، والحدوث عليه محال', '« Si quelqu’un te dit « ayna l-Lâh ? » dis : « ma’a (avec) tout un chacun par Sa science et non pas par Lui-même ; fawq (supérieur) à tout un chacun par Sa toute puissance ; Dhâhir (Dont l’existence est évidente) par les manifestations de Ses attributs ; Bâtin (inimaginable) de par la réalité de Son Être, c’est-à-dire qu’il n’est pas possible de se L’imaginer ; Il est exempt de la direction et du physique [du corps]. On ne dit pas qu’Il a une droite, ni une gauche, ni un devant, ni un arrière, ni qu’Il est au-dessus du Trône ni en dessous, ni à sa droite, ni à sa gauche, ni à l’intérieur du monde, ni à l’extérieur. On ne dit pas que personne ne sait Son endroit sinon Lui et celui qui dit : « je ne sais pas si Allâh est dans le ciel ou sur la terre » est mécréant car il aura considéré qu’Il occuperait l’un de ces deux endroits.', '', 'Dans son livre « Al-I’timâdou fi l-I’tiqâd », le Chaykh Al-Qâwouqji a dit :
Si maintenant on te demande : « Quelle est ta preuve en cela ? Réponds : « Parce que s’Il avait une direction ou s’Il était dans une direction, Il serait localisé et tout ce qui est localisé est entré en existence alors que l’entrée en existence est impossible à Son sujet »
Informations utiles :
– Le Chaykh, Al-‘Allâmah (l’illustre savant), le Mouhaddith (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence) Abou l-Mahâcin Chamsou d-Dîn Mouhammad Ibn Khalîl Ibn Ibrâhîm Al-Qâwouqji At-Tarâboulouçi Al-Loubnâni Al-Hanafi est né en 1224 et il est décédé en 1305 de l’Hégire (رحمه الله).
– Il a dit dans l’introduction de son ouvrage : « Voici un traité de croyance concernant le tawhîd pur de tout verbiage et de toute complication dont a besoin tout mourîd, que Allâh en fasse profiter tous les esclaves, âmîn »
– Ici il confirme plusieurs points important de la science du tawhîd : Allâh n’est pas dans un endroit, ni une direction, Il n’est ni en haut, ni en bas, ni à droite, ni à gauche, ni devant, ni derrière, Il n’est pas au dessus du Trône, Il n’est ni à l’intérieur du monde, ni à l’extérieur, Il n’est pas un corps, et on ne peut pas l’Imaginer.
– Il précise que celui qui a pour croyance que Allâh est dans un endroit, alors il est mécréant. En effet il a dit : « Celui qui dit : « je ne sais pas si Allâh est dans le ciel ou sur la terre » est mécréant car il aura considéré qu’Il occuperait l’un de ces deux endroits» . Cela est similaire à ce qui est rapporté de l’Imâm Aboû Hanîfah et d’autres. En effet :
L’Imâm Abou l-Layth As-Samarqandi a dit : « L’Imâm Aboû Hanîfah a dit: « Celui qui dit : Je ne sais pas si Allâh est au ciel ou sur terre est devenu mécréant » car par cette parole il se sera illusionné que Allâh serait dans un endroit, et il est ainsi un associateur (mouchrik). » [ Dans son commentaire du livre « Al-Fiqh Al-Akbar » de l’Imâm Aboû Hanîfah ]
Le Chaykh Moullâ ‘Ali Al-Qâri a dit : « Le Chaykh, l’Imâm Ibnou ‘Abdi s-Salâm, dans son livre Hallou r-Roumoûz, rapporte que l’Imâm Aboû Hanîfah (رحمه الله) a dit: « Celui qui dit : Je ne sais pas si Allâh ta’âlâ est au ciel ou sur terre est devenu mécréant ; Car cette parole donne l’illusion que Allâh (Al-Haqq) aurait un endroit et celui qui se donne l’illusion que Allâh a un endroit est un assimilationniste (mouchabbih)» Il n’y a pas de doute que Ibnou ‘Abdi s-Salâm fait partie des plus illustres des savants et ceux qui sont les plus fiables. Il est donc un devoir de se baser sur ce qu’il a rapporté » [ Dans son commentaire du livre « Al-Fiqh Al-Akbar » de l’Imâm Aboû Hanîfah ]
– Retrouvez d’autres paroles de savants sur le fait qu’ Attribuer l’endroit ou la direction à Allah est de la mécréance : ici.
– Dans ce même ouvrage, le Chaykh Al-Qâwouqji a dit : « Si quelqu’un te demande « qui adores-tu ? » réponds-lui : j’adore Allâh, il n’est de dieu que Lui, Il est Celui qui n’est ni localisé sur terre ni dans [ou au dessus] les cieux (fi s-samâ), Il existe de toute éternité avant la création de l’endroit et du temps, et Il est maintenant tel qu’Il est de toute éternité [c’est-à-dire qu’Il est sans endroit et qu’Il ne dépend pas du temps], on ne peut pas l’imaginer, rien de ce qui existe n’a de ressemblance avec Lui ». [ Dans son livre Al-I’timâd fi l-I’tiqâd ].
– Le Chaykh Al-Qawouqji a dit également : « Il est un devoir à Son sujet [de connaitre de parmi Ses attributs] ta’âlâ : l’ouïe : et Il est exempt de l’oreille et du tympan ». [ Dans son ouvrage Al-I’timâd fi l-I’tiqâd ].', 'al-i’timad fi l-i’tiqad, al-qawoqji, al-qawouqji, al-qawouqjiyy'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فإذا قال لك: أين الله؟ فقل: مع كل أحد بعلمه لا بذاته ، وفوق كل أحد بقدرته، وظاهر بكل شىء باثار صفاته، وباطن بحقيقة ذاته أي لا يمكن تصويره في النفس، منزه عن الجهة والجسمية. فلا يقال: له يمين ولا شمال ولا خلف ولا أمام، ولا فوق العرش ولا تحته، ولا عن يمينه ولا عن شماله، ولا داخل في العالم ولا خارج عنه، ولا يقال: لا يعلم مكانه إلا هو. ومن قال: لا أعرف الله في السماء هو أم في الأرض كفر لأنه جعل أحدهما له مكانا. فإذا قال لك: ما دليلك على ذلك؟ فقل: لأنه لو كان له جهة أو هو في جهة لكان متحيزا، وكل متحيز حادث، والحدوث عليه محال');

-- source: https://islamsunnite.net/le-chaykh-ad-dajwi-interprete-verset-yadou-l-lah-fawqa-aydihim-par-puissance-al-qoudrah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’a pas de mains.', 'Al Azhar', 'في قوله تعالى : {يد الله فوق أيديهم} : المراد باليد القدرة', 'Dans Sa parole ta’âlâ : { يد الله فوق أيديهم } (Yadou l-Lâh fawqa aydîhim), le sens de al-Yad est la Puissance (al-Qoudrah).', '', 'Dans son ouvrage « Maqâlât wa Fatâwâ » (tome 1 page 184 de cette édition) le Chaykh Yoûçouf Ad-Dajwi a dit :
Informations utiles :
– Le Chaykh Yoûçouf Ad-Dajwi Al-Misri Al-Mâliki Al-Azhari est né en 1287 et il est décédé en 1365 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 80 ans. Il était l’un des plus grands savants de l’Université Islamique Al-Azhar en Egypte.
– Ici lors de sa réfutation aux corporalistes, il explique le verset « يد الله فوق أيديهم » (Yadou l-Lâh fawqa aydîhim) en disant que le sens de al-Yad est la puissance (al-Qoudrah). De plus il confirme que cela est l’interprétation d’un grand groupe de savants. Donc le yad de Allâh ne vient pas le sens du membre ou de l’organe, et ceci sans divergence.
– A ce sujet, l’Imâm du Salaf, Aboû Ja’far At-Tahâwi, dans son traité de croyance qu’il a présenté en disant « Ceci est la mention de la présentation de la croyance de Ahlou s-Sounnah wa l-Jamâ’ah », il a dit : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres». [ Al-‘Aqîdah At-Tahâwiyyah ]
– L’Imâm Aboû Hanîfah a dit : « {yadou l-Lâhi fawqa aydîhim} et Son yad n’est pas comme le yad des créatures, ce n’est pas une partie corporelle (c’est-à-dire une main), et Il est Le Créateur des mains » [Dans son livre Al-Fiqhou l-Absat]
– L’Imâm Ibnou Hajar Al-‘Asqalâni a mentionné l’unanimité sur le fait que le terme “yad” au sujet de Allâh ne vient pas dans le sens de la main. Il a dit : « Il est mentionné dans le Qour-ân et dans le hadîth l’annexion de « al-yad » à Allâh ta’âlâ, et Ahlou s-Sounnah wa l-Jamâ’ah ont été unanimes qu’il n’est pas visé [au sujet de Allâh] par « al-yad » l’organe (c’est-à-dire la main), qui fait partie des choses qui sont concernées par l’entrée en existence » [ Dans son livre « Hadyou s-Sârî Mouqaddimah Fath al-Bârî » ]
– L’Imâm Al-Bayhaqi a dit : «Son « yad » n’est pas un organe (c’est-à-dire une main)». [ Al-I’tiqâd ]
– L’Imâm Al-Halîmi a dit lors de son explication du nom de Allâh « Al-Mouta’âlî » : « Cela signifie qu’Il est exempt du fait que Lui soit possible ce qui est possible aux choses qui entrent en existence : le mariage, l’enfantement, les organes et les membres […] » [ Rapporté par Al-Bayhaqi ]
– L’Imâm Ahmad Ar-Rifâ’i a dit : «Ne dites pas que le yad et le ‘ayn [au sujet de Allâh] sont des organes » [Dans son livre Al-Bourhânou l-Mou-ayyad].
– L’Imâm An-Naçafi (m.508 h.) a dit : « Il est permis de dire que Allâh ta’âlâ a un yad en Arabe, mais ce n’est pas permis en Persan. Et al-yad est l’un de Ses attributs éternels, sans comment (bila kayf) et sans similarité (wa lâ tachbîh) […] Il en est de même pour al-yad qui compte de parmi Ses attributs éternels sans comment, ni similarité, et qui n’est pas un membre. Ainsi, nous confirmons al-yad, et son sens est tel que Allâh ta’âlâ veut » [ Dans son livre Bahrou l-Kalâm ]
– L’Imâm Al-Qourtoubi a dit : « Le terme – yad – dans la langue Arabe peut venir dans le sens de la partie corporelle (c’est-à-dire de la main) comme dans la parole de Allâh ta’âlâ {wa khoudh bi yadika dightha} et ceci est impossible au sujet de Allâh ta’âlâ » [ Dans son tafsîr ]
– L’Imâm Al-Marjâni At-Toûniçi Al-Mâliki (m. 699 H.) a dit : « [La parole de Allâh : ] { يد الله فوق أيديهم } (Yadou l-Lâh fawqa aydîhim) : il ne s’agit pas ici d’un « yad » dans le sens d’une partie corporelle (c’est-à-dire une main), mais il s’agit d’un « yad » dans le sens de la puissance, car Al-Bâri (c’est-à-dire Allâh) est exempt d’une telle chose (c’est-à-dire d’avoir une main) » . [Rapporté par Ibnou l-Mou’allim Al-Qourachi dans son livre Najmou l-Mouhtadi]
– L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {بَلۡ يَدَاهُ مَبۡسُوطَتَانِ} (Bal yadâhou Mabsoûtatân) : ce qui en est voulu n’est pas le sens réelle de l’organe qui est composée, car Allâh ta’âlâ est exempt de la composition, mais il s’agit d’un des attributs de Son Être, comme l’ouïe et la vue, Allâh جل ذكره dit : {لِمَا خَلَقْتُ بِيَدَيَّ} (limâ khalaqtou biyaday), et le prophète a dit « كِلْتَا يَدَيْهِ يَمِينٌ » (kiltâ yadayhi yamîn ) et Allâh est plus savant concernant Ses attributs, ainsi les esclaves se doivent d’y croire, de les accepter et de les lires tels qu’ils sont parvenu, sans comment (bila kayf) » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
– L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {قَالَ يَاإِبْلِيسُ مَا مَنَعَكَ أَنْ تَسْجُدَ لِمَا خَلَقْتُ بِيَدَيَّ} (qâla yâ Iblîssou mâ mana’aka an tasjouda limâ khalaqtou biyadayy) : c’est-à-dire [ce que j’ai créé] moi-même sans intermédiaire comme un père ou une mère ; et « al-yadân » est un attribut de parmi les attributs de Allâh ‘azza wa jall, nous y croyons tel que cela est parvenu , et nous remettons la connaissance du sens à Allâh » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân]
– Le Chaykh Ibnou ‘Aqîl Al-Hambali a dit : « Allâh n’est pas de ceux qui ont des parties ou des organes» . [ Rapporté par Ibnou l-Jawzi ]
– L’Imâm Fakhrou d-Dîn Ar-Râzi lors de son explication de la parole de Allâh { ليس كمثله شيء } (layça kamithlihi chay) qui signifie « Rien n’est tel que Lui », il a dit : « Les savants du Tawhîd par le passé et par le présent ont retenu cette âyah comme argument pour nier le fait que Allâh ta’âlâ soit un corps composé d’organes et de parties étant dans un endroit et une direction ». [ Dans son tafsîr ]
– L’Imâm ‘Abdou l-Ghani An-Nâboulouçi a dit dans son livre : « Quant à l’assimilation (tachbîh) c’est de croire que Allâh ta’âlâ ressemble à l’une de Ses créatures, comme ceux qui croient que Allâh est un corps au-dessus du Trône ou qui croient qu’Il a des mains […] et tout ceci est de la mécréance claire » [ Al-Fathou r-Rabbâni ] Ainsi le fait de croire que Allâh aurait des mains ou n’importe quelle autre partie corporelle, ceci constitue de la mécréance.
– L’Imâm At-Tahâwi a d’ailleurs dit : « Celui qui attribue à Allâh l’une des significations propres aux humains est devenu mécréant. Celui qui aura bien compris cela en aura tiré des leçons et se sera écarté des propos semblables à ceux des mécréants, il aura su que Allâh avec Ses attributs n’est pas semblable aux humains » [ Al-‘Aqîdah At-Tahâwiyyah ]
– Ainsi pour résumer nous disons que le terme « yad » dans la langue arabe a de très nombreux sens autre que le mot « main ». Lorsqu’il est employé au sujet de Allâh il n’est pas à prendre dans le sens de l’organe et de la partie corporelle. Les savants ont donné la règle suivante : La similarité dans les termes n’implique pas la similarité dans la signification. Cela signifie que lorsqu’un même terme est employé au sujet de Allâh et au sujet d’une créature alors la signification sera différente.
– Retrouvez d’autres citations concernant le terme “yad” : ici .
– Retrouvez d’autres citations sur le thème Allah n’est pas un corps / n’a pas d’organes : ici
– Retrouvez d’autres citations sur le thème Attribuer le corps à Allah est de la mécréance : ici', 'ad-dajawi, ad-dajwi, ad-dajwiy, ad-dajwiyy'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'في قوله تعالى : {يد الله فوق أيديهم} : المراد باليد القدرة');

-- source: https://islamsunnite.net/limam-ach-chirazi-confirme-recommande-de-visiter-tombe-du-prophete/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La recommandation de la visite de la tombe du prophète.', 'Chirazi', 'ويستحب زيارة قبر رسول الله صلى الله عليه وسلم لما روى ابن عمر رضي الله عنهما أن النبي صلى الله عليه وسلم قال : { من زار قبري وجبت له شفاعتي }', 'Il est recommandé (moustahabb) de visiter la tombe du Messager de Allâh (صلى الله عليه وسلم) conformément à ce qu’a rapporté Ibnou ‘Oumar (رضي الله عنهما) que le Prophète (صلى الله عليه وسلم) a dit [ce qui a pour sens ] : Celui qui visite ma tombe bénéficiera de mon intercession', '', 'Dans son livre « Al-Mouhadh-dhab fî fiqhi l-Imâm Ach-Châfi’i », l’Imâm Ach-Chîrâzi a dit :
Informations utiles :
– L’Imâm, le Faqîh (spécialiste de la jurisprudence), le Chaykh Ibrâhîm Ibnou ‘Ali Aboû Is-hâq Ach-Chîrâzi est né en 393 à Fayrouzâbâd (en Perse) et il est décédé en 476 de l’Hégire à Baghdâd (رحمه الله), c’est-à-dire il y a plus environ 960 ans. Il est de l’école de jurisprudence (madh-hab) de l’Imâm Ach-Châfi’i. Il est l’auteur d’ouvrages de référence dans le madh-hab Chafi’ite comme « At-Tanbîh », « Al-Mouhadh-dhab » et « Al-Louma'' ».
An-Nawawi a dit de lui : « Il est l’Imâm, le vérificateur scrupuleux, celui qui maîtrise de nombreuses sciences, l’auteur de nombreux ouvrages profitables, l’ascète, l’adorateur, le pieux, détaché de la vie du bas-monde, celui qui s’est sacrifié pour faire vaincre la religion agréée par Allâh, l’un des savants vertueux et l’un des adorateurs de Allâh, l’un des connaisseurs de Allâh (‘ârifîn), qui ont rassemblé entre la science, l’adoration, la dévotion et l’ascétisme ». [Al-Majmoû’]
As-Sam’âni a dit à son sujet : « Il est l’Imâm des Chafi’ites, l’enseignant de An-Nidhâmiyyah (célèbre école à Baghdâd), le Chaykh de l’époque. Les gens voyageaient jusqu’à lui depuis leur pays désirant le rencontrer. Il s’est singularisé par l’étendue de sa science, et ses bons caractères. » [Siyar A’lâmi n-Noubalâ]
Al-Mouwaffaq Al-Hanafi a dit de lui : « Aboû Is-hâq l’Emir des croyants (Amîr al-Mou-minîn) de parmi les Fouqahâ (pl. Faqîh)». [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « Le Chaykh, l’Imâm, le modèle (al-Qoudwah), le moujtahid (jurisconsulte), Chaykhou l-Islâm ». [Siyar A’lâmi n-Noubalâ]
– Ici il mentionne le fait qu’il est fortement recommandé de visiter la tombe du Prophète (صلى الله عليه وسلم).
– Ce jugement fait l’objet de l’unanimité, tout comme l’ont mentionné de nombreux autres savants. Parmi eux :
Al-Qâdî ‘Iyâd Al-Mâliki a dit : « La visite de la tombe du Prophète (صلى الله عليه وسلم) est une sounnah qui fait l’unanimité des musulmans et une vertu vivement recommandée, comme le rapporte Ibnou ‘Oumar (رضي الله عنه). » [ Dans son livre Ach-Chifâ ]
Le Chaykh Ibnou l-Hâjj Al-Mâliki a dit: « Abou Houbayrah [Al-Hambali] a dit dans son livre concernant l’unanimité des imams : Mâlik, Ach-Châfi’i, Aboû Hanîfah et Ahmad Ibnou Hambal, que Allâh ta’âlâ leur fasse miséricorde, ont été en accord que la visite du prophète (صلى الله عليه وسلم) est recommandée (moustahabb)» [Dans son livre Al-Madkhal].
L’Imâm Taqiyyou d-Dîn As-Soubki a également rapporté l’unanimité dans son livre Chifâ-ou s-Saqâm.
Le Chaykh Taqiyyou d-Dîn Al-Hisni a dit au sujet de la visite de la tombe du prophète : « Il s’agit d’ une des sounnah des envoyés par unanimité chez les croyants en l’unicité (mouwahhidîn), personne n’y porterait atteinte sauf quelqu’un dont le cœur contient la maladie des hypocrites » [Dans son livre Daf’ou choubahi man chabaha wa tamarrad].
Le Chaykh Moullâ ‘Ali Al-Qârî Al-Hanafi a dit : « Le voyage pour visiter la tombe du prophète (صلى الله عليه وسلم) fait partie de ce sur quoi les savants ont été unanimes sur son caractère recommandé (moustahabb) » [Dans son livre Charh Ach-Chifâ]
Le Chaykh Mayyârah Al-Mâliki a dit : « Sa visite (du prophète) est une sounnah qui fait l’objet de l’unanimité » [Dans son livre Ad-Dourrou th-Thamîn wa l-Mawridou l-Ma’în]
Le Chaykh Ibnou ‘Âbidîn Al-Hanafi rapporte également l’unanimité dans son livre Raddou l-Mouhtâri ‘ala d-Dourri l-Moukhtâr.
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « Sache, que Allâh te fasse miséricorde, que la visite de la tombe de notre Prophète (صلى الله عليه وسلم) est permise et requise par le Livre [le Qour-ân], la Sounnah, et l’unanimité (ijmâ’) de la Oummah» [ Dans son livre Ad-Dourarou s-Saniyyah fî Raddi ‘ala l-Wahhâbiyyah ]
Le Mouhaddith ‘Abdou l-Lâh Al-Harari a dit : « Il est recommandé de visiter la tombe du Messager (صلى الله عليه وسلم) par l’unanimité, c’est-à-dire selon l’unanimité des Imams de l’ijtihâd, les quatre et les autres ; aussi bien pour celui qui habite à Médine que pour les habitants des différents horizons qui ont, par leur voyage, l’objectif de visiter sa tombe honorée. Il s’agit-là d’un des actes les plus éminents qui rapprochent de l’agrément de Allâh.» [Dans son livre Boughyah At-Tâlib]
– Puis l’Imâm Ach-Chîrâzi dit que la preuve de cela est le hadîth de Ibnou ‘Oumar qui rapporte que le Prophète a dit [ce qui a pour sens ] : « Celui qui visite ma tombe bénéficiera de mon intercession » .
– Le compagnon ‘Abdou l-Lâh Ibnou ‘Oumar est décédé en 73 de l’Hégire (رضي الله عنه) c’est-à-dire il y a environ 1360 ans. Le Prophète (صلى الله عليه وسلم) a dit de lui qu’il est un homme vertueux (sâlih). Il est le fils du second Calife de l’Islâm : ‘Oumar Ibnou l-Khattâb.
– Ce Hadîth que rapporte le compagnon Ibnou ‘Oumar est l’une des preuves confirmant que la visite de la tombe du Prophète (صلى الله عليه وسلم) est une chose recommandée, que le visiteur fasse partie des gens de Médine ou non, qu’il soit venu à l’occasion du pèlerinage ou non. Et les musulmans ont eu pour habitude de le faire, que ce soit les prédécesseurs (salaf) ou les successeurs (khalaf), l’unanimité a été établie sur le caractère agréé selon la Loi (machroû’) et il a été rapporté à ce sujet plusieurs hadîth dont celui-ci.
– Ce Hadîth est rapporté par un grand nombre de Houffâdh (spécialistes de la science du Hadîth). Parmi eux, il y a :
Le Hâfidh Ad-Dâraqoutni ;
Le Hâfidh Al-Bazzâr ;
Le Hâfidh Al-Bayhaqi ;
Al-Qâdi ‘Iyâd [ Dans son livre Ach-Chifâ ]
Et d’autres.
Parmi les savants qui ont authentifié ce Hadîth, il y a :
Le Hâfidh Taqiyyou d-Dîn As-Soubki ;
Le Hâfidh Al-‘Alâ-i ;
Le Hâfidh As-Souyoûti ;
Le Hâfidh As-Sakhâwi ;
Le Hâfidh As-Samhoûdi ;
et beaucoup d’autres. Adh-Dhahabi a été en accord avec eux.
– Malgré cela, Ibnou Taymiyah et ses adeptes ont rejeté la parole du prophète (صلى الله عليه وسلم) pour suivre leurs passions. En effet Ibnou Taymiyah a contredit le prophète (صلى الله عليه وسلم) en interdisant la visite de sa tombe. Les savants lui ont vivement répliqué. Pour plus d’informations, consultez cet article : Ibnou Taymiyah interdit de rendre visite au prophète .
– Également, le Chaykh Ahmad Ibnou Zayni Dahlân dénonce Mouhammad Ibnou ‘Abdi l-Wahhâb (le fondateur de la secte wahhabite) qui déclarait mécréants ceux qui visitent la tombe du prophète (صلى الله عليه وسلم) [ dans son livre Ad-Dawlatou l-‘Outhmâniyyah min Kitâbi l-Foutoûhâtou l-Islâmiyyah ].
– Voir d’autres articles concernant la visite de la tombe du prophète (salla l-Lahou ‘alayhi wa sallam) : ici .', 'ach-chirazi, al-bazzar, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ويستحب زيارة قبر رسول الله صلى الله عليه وسلم لما روى ابن عمر رضي الله عنهما أن النبي صلى الله عليه وسلم قال : { من زار قبري وجبت له شفاعتي }');

-- source: https://islamsunnite.net/limam-ach-chirazi-confirme-que-allah-nest-pas-etabli-sur-le-trone/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas établi sur le trône.', 'Chirazi', 'وإن استواءه ليس باستقرارٍ ولا ملاصقةٍ لأن الاستقرار والـملاصقة صفة الأجسام الـمخلوقة ، والرب عز وجل قديمٌ أزليٌّ', '« Son istiwâ n’est pas un établissement ni le fait d’être en contact, car l’établissement et le fait d’être en contact sont des caractéristiques des corps qui sont donc créés alors que le Seigneur, ‘azza wa jall, est de toute éternité ».', '', 'Dans son livre « Al-Ichârah ilâ madh-hab ahli l-Haqq », l’Imâm Ach-Chîrâzi a dit, au sujet de Allâh :
Informations utiles :
– L’Imâm, le Faqîh (spécialiste de la jurisprudence), le Chaykh Ibrâhîm Ibnou ‘Ali Aboû Is-hâq Ach-Chîrâzi est né en 393 à Fayrouzâbâd (en Perse) et il est décédé en 476 de l’Hégire à Baghdâd (رحمه الله), c’est-à-dire il y a plus environ 960 ans. Il est de l’école de jurisprudence (madh-hab) de l’Imâm Ach-Châfi’i. Il est l’auteur d’ouvrages de référence dans le madh-hab Chafi’ite comme « At-Tanbîh », « Al-Mahdhab » et « Al-Louma'' ».
An-Nawawi a dit de lui : « Il est l’Imâm, le vérificateur scrupuleux, celui qui maîtrise de nombreuses sciences, l’auteur de nombreux ouvrages profitables, l’ascète, l’adorateur, le pieux, détaché de la vie du bas-monde, celui qui s’est sacrifié pour faire vaincre la religion agréée par Allâh, l’un des savants vertueux et l’un des adorateurs de Allâh, l’un des connaisseurs de Allâh (‘ârifîn), qui ont rassemblé entre la science, l’adoration, la dévotion et l’ascétisme ». [Al-Majmoû’]
As-Sam’âni a dit à son sujet : « Il est l’Imâm des Chafi’ites, l’enseignant de An-Nidhâmiyyah (célèbre école à Baghdâd), le Chaykh de l’époque. Les gens voyageaient jusqu’à lui depuis leur pays désirant le rencontrer. Il s’est singularisé par l’étendu de sa science, et ses bons caractères. » [Siyar A’lâmi n-Noubalâ]
Al-Mouwaffaq Al-Hanafi a dit de lui : « Aboû Is-hâq l’Emir des croyants (Amîr al-Mou-minîn) de parmi les Fouqahâ (pl. Faqîh)». [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « Le Chaykh, l’Imâm, le modèle (al-Qoudwah), le moujtahid (jurisconsulte), Chaykhou l-Islâm ». [Siyar A’lâmi n-Noubalâ]
– Ici, il confirme que l’istiwâ de Allâh n’est pas un établissement, contrairement à ceux que prétendent les moujassimah (corporalistes), car l’établissement est une caractéristique des corps et Allâh n’est pas un corps.
– Les savants de l’Islâm ont été unanimes sur le fait que l’istiwâ de Allâh n’est pas une position assise (jouloûss) ni un établissement (istiqrâr). Parmi eux :
L’Imâm Aboû Hanîfah [ Dans son livre Al-Wasiyyah ]
L’Imâm Al-Bâqillâni [ Dans son livre Al-Insâf ]
L’Imâm Ibnou Foûrak [ Dans son livre Mouchkilou l-Hadîth ]
L’Imâm ‘Abdou l-Lâh Al-Jouwayni (père de l’Imâm Al-Haramayn) [Dans son livre Kifâyatou l-Mou’taqad]
Le Chaykh Ibn Battâl [ Dans son commentaire du Sahîh Al-Boukhâri ]
L’Imâm Al-Bayhaqi [ Dans son livre Al-I’tiqâd ]
L’Imâm Ach-Chîrâzi [Dans son livre Al-Ichârah]
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
– Consultez d’autres paroles de savants au sujet du terme « istawâ » : ici .', 'al-icharah, al-icharah ila madh-hab ahlil-haqq, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وإن استواءه ليس باستقرارٍ ولا ملاصقةٍ لأن الاستقرار والـملاصقة صفة الأجسام الـمخلوقة ، والرب عز وجل قديمٌ أزليٌّ');

-- source: https://islamsunnite.net/il-est-permis-de-dire-ya-mouhammad-en-son-absence-ou-apres-sa-mort-rapporte-par-ibn-sounni/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'le tawassoul des compagnons', 'Ibn ''Oumar', 'باب ما يقوله إذا خدرت رجله : […] عن الهيثم بن حنش قال : ” كنا عند عبد الله بن عمر رضي الله عنهما فخدرت رجله ، فقال له رجل : اذكر أحب الناس إليك ، فقال : يا محمد صلى الله عليه وسلم ، فكأنما نشط من عقال', '« Chapitre de ce que l’on dit lors de la paralysie de la jambe : […] « D’après Haytham Ibnou Hanach: « Nous étions avec ‘Abdou l-Lâh Ibn ‘Oumar ( رضي الله عنهما ) lorsque sa jambe s’est paralysée. Alors, un homme lui a dit : « évoque la personne que tu aimes le plus ». C’est alors qu’il a dit : « Yâ Mouhammad » et sa jambe s’est libérée de la paralysie. »', '', 'Dans son livre « ‘Amalou l-Yawmi wa l-Laylah » (page 76 de cette édition), le Hâfidh Ibnou Sounni a dit :
Informations utiles :
– Le Hâfidh (spécialiste de la science du Hadîth) Aboû Bakr Ahmad Ibnou Mouhammad connu sous le nom de Ibnou Sounni, est né en 280, et il est décédé en 364 de l’Hégire (رحمه الله) c’est à dire il y a plus de 1070 ans. Il rapporte ce hadîth dans son livre « ‘Amalou l-Yawmi wa l-Laylah » avec plusieurs chaînes de transmission.
– Le compagnon ‘Abdou l-Lâh Ibnou ‘Oumar est décédé en 73 de l’Hégire (رضي الله عنه) c’est à dire il y a environ 1360 ans. Le Prophète (صلى الله عليه وسلم) a dit de lui qu’il est un homme vertueux (sâlih). Il est le fils du second Calife de l’Islâm : ‘Oumar Ibnou l-Khattâb.
– Le Hâfidh Ibnou Sounni a écrit ce livre « ‘Amalou l-Yawmi wa l-Laylah » dans le but de regrouper les évocations utiles et méritoires selon différentes situations. Il rapporte cette histoire dans le chapitre « ce que l’on dit lors de la paralysie de la jambe » afin que les gens appliquent cette évocation « Yâ Mouhammad ». Le Hâfidh Ibnou Sounni incite donc les musulmans à dire « Yâ Mouhammad » tout comme l’a fait le grand compagnon Ibnou ‘Oumar (رضي الله عنه).
– Cette citation est une réplique aux égarés qui prétendent que tous ceux qui disent : «Yâ Mouhammad » après la mort du Messager (صلى الله عليه وسلم) ou bien en son absence, sont des mécréants associateurs. Par leur parole infondée ces gens là ont déclaré mécréant un grand compagnon, des grands savants de la communauté et un grand nombre de musulmans.
– En effet cette parole est rapportée par de très nombreux savants, ceci fera l’objet d’articles (إن شاء الله).
– Cette parole “Yâ Mouhammad” est confirmée dans le manuscrit du livre « Al-Adabou l-Moufrad » de l’Imâm Al-Boukhari, et sa chaîne de transmission est authentique. Voir l’article concernant Al-Boukhâri : ici . Voir également le livre de l’Imâm An-Nawawi : ici .
– Même Ibn Taymiyah (moujassim) a mentionné ce hadîth dans son livre intitulé « Al-Kalimou t-Tayyib » (les bonnes paroles) afin d’inciter les gens à dire “Yâ Mouhammad” lorsque la jambe se paralyse.
– De plus il a été confirmé que le fait de dire “yâ foulân” au sujet d’un mort ou d’une personne absente est quelque chose que le prophète (صلى الله عليه وسلم) a lui-même pratiqué et incité à faire. En effet il a été rapporté que lorsque le prophète (صلى الله عليه وسلم) visitait les tombes, il disait “As-Salâmou ‘alaykoum yâ Ahla l-qouboûr” (As-Salâmou ‘alaykoum Ô habitants des tombes) [ Rapporté par At-Tirmidhi et d’autres ], et le prophète (صلى الله عليه وسلم) a enseigné à un homme aveugle de réciter en son absence une invocation qui contient les termes “yâ Mouhammad” et les compagnons le pratiquaient également après son décès (صلى الله عليه وسلم) [ Rapporté par At-Tabarâni ].
– Le tawassoul est le fait de demander à Allâh l’obtention d’un profit ou l’empêchement d’une nuisance et ce, par la mention du nom d’un prophète ou d’un saint, par honneur pour celui par lequel le tawassoul est fait. Faire le tawassoul est permis en leur présence et en leur absence tout comme l’indique les preuves selon la Loi de l’Islâm. Le tawassoul ne constitue donc pas une adoration pour autre que Allâh.
– Ainsi, le tawassoul est une pratique qui est permise selon l’unanimité des musulmans comme le rapporte l’Imâm Taqiyyou d-Dîn As-Soubki [ Dans son livre Chifâ-ou s-Saqâm ]
– L’adoration (al-‘Ibâdah) : c’est l’extrême limite de la crainte et de la soumission, comme l’a mentionné l’Imâm Moujtahid, le Hâfidh (spécialiste du Hadîth), le Loughawi (spécialiste de la langue Arabe) Taqiyyou d-Dîn As-Soubki.
Ainsi le simple fait d’appeler (nidâ) un vivant ou un mort ne constitue pas une adoration d’autre que Allâh, ni le simple fait de glorifier (ta’dhîm) ou de faire al-istighâthah (la recherche du renfort) par autre que Allâh. De même, le simple fait de visiter la tombe d’un saint pour le tabarrouk (la recherche des bénédictions) ne constitue pas une adoration d’autre que Allâh. De même, le simple fait de demander ce qu’il n’est pas habituel de demander aux gens ne constitue pas une adoration d’autre que Allâh. De même, la formule de al-isti’ânah (demande d’aide) à autre que Allâh ta’âlâ ne constitue pas une adoration d’autre que Allâh. Egalement, la simple humilité n’est pas une adoration envers autre que Allâh car sinon, tous ceux qui font preuve d’humilité avec les rois et les nobles seraient devenus mécréants.
C’est-à-dire que tout cela n’est pas du chirk (le fait d’attribuer des associés à Allâh), car la définition de l’adoration (al-‘ibâdah) selon les spécialistes de la langue ne s’applique pas à tout cela. En effet, pour eux, l’adoration (al-‘ibâdah) comme nous venons de le voir est l’obéissance avec la soumission. Voir à ce sujet l’explication de l’Imâm du Salaf, le Loughawi (spécialiste de la langue Arabe) Aboû Is-hâq Ibrâhîm Az-Zajjâj : ici .
– Retrouvez d’autres articles au sujet du tawassoul et du tabarrouk : ici .', '''abdoullah ibn oumar, abdullah ibn umar, al adab al moufrad, al adab al mufrad'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'باب ما يقوله إذا خدرت رجله : […] عن الهيثم بن حنش قال : ” كنا عند عبد الله بن عمر رضي الله عنهما فخدرت رجله ، فقال له رجل : اذكر أحب الناس إليك ، فقال : يا محمد صلى الله عليه وسلم ، فكأنما نشط من عقال');

-- source: https://islamsunnite.net/limam-ahmad-ibn-hanbal-a-interprete-le-verset-wa-ja-a-rabbouka-rapporte-par-as-saidi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'l’interprétation des salafs', 'Ahmad Ibn Hanbal', '[قال الإمام أحمد بن حنبل:] قال الله جلَّ ذكره{وجاء ربك والملك صفا صفا} وإنما تأتي قدرته', '« Allâh jalla dit : « wa jâ-a Rabbouka wa l-malakou saffan saffâ » ; et certes c’est la manifestation de Sa puissance qui viendra (qoudratouhou). »', '', 'Dans son livre « Al-Jawhar Al-Mouhassal fî Manâqibi l-Imâm Ahmad Ibnou Hanbal », le Chaykh As-Sa’di Al-Hanbali rapporte que l’Imâm Ahmad Ibnou Hanbal a dit :
Informations utiles :
– L’Illustre savant du salaf, le Moujtahid (jurisconsulte), l’Imâm Aboû ‘Abdi l-Lâh Ahmad Ibnou Mouhammad Ibnou Hanbal Ach-Chaybâni est né en 164 à Baghdâd et il est décédé en 241 de l’Hégire à Baghdâd (رحمه الله) c’est-à-dire il y a plus de 1190 ans. Il est l’Imâm de l’école Hanbalite, l’un des quatre Imams.
– Le Chaykh Mouhammad Ibn Mouhammad Ibn Abî Bakr As-Sa’di Al-Misri Al-Hanbali est né en 836 et il est décédé en 900 de l’Hégire (رحمه الله) , c’est-à-dire il y a plus de 530 ans. Il était un savant de l’école Hambalite. Son livre « Al-Jawhar Al-Mouhassal fî Manâqibi l-Imâm Ahmad Ibnou Hanbal » est consacré à l’Imâm Ahmad.
– Ici, le Chaykh As-Sa’di Al-Hanbali rapporte dans son ouvrage que l’Imâm Ahmad ibn Hanbal a fait l’interprétation du verset {وَجَآءَ رَبُّك } « wa jâ-a Rabbouka », en disant que c’est la manifestation de la puissance de Allâh qui viendra.
-Cette interprétation de l’Imâm Ahmad Ibn Hanbal a été mentionnée dans de nombreux ouvrages de savants. Parmi eux :
Le Hâfidh Al-Bayhaqi, avec une chaîne de transmission authentique comme le mentionne Ibnou Kathîr [ Al-Bidâyah wa n-Nihâyah ]
L’Imâm Ibnou l-Jawzi Al-Hanbali [dans son livre Daf’ou Choubahi t-Tachbîh]
Le Chaykh Ahmad Ibn Hamdân Al-Hanbali [dans son livre Nihâyatou l-Moubtadi-în]
Le Chaykh Taqiyyou d-Dîn Al-Hisni [ Daf’ou choubahi man chabbaha wa tamarrad ]
Le Chaykh As-Sa’di Al-Hanbali [Al-Jawhar Al-Mouhassal]
Le Chaykh Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali [dans son tafsîr]
Le Chaykh Al-Kawthari [dans son introduction du livre Al-Asmâ-ou wa s-Sifât]
– Quant aux moujassimah (ceux qui attribuent à Allâh les caractéristiques des créatures) ils comprennent de ce verset que Allâh viendra par lui-même, c’est à dire qu’ils attribuent à Allâh le mouvement et le déplacement.
– Cette citation est une preuve supplémentaire confirmant le fait que les musulmans du Salaf avaient quelquefois recours à l’interprétation détaillé (ta-wîl).
– Le Chaykh Ibn Hamdân Al-Hanbali a dit : « Et [l’Imâm] Ahmad a certes interprété certains versets et certains hadîths comme le verset de an-najwâ, ainsi que Sa parole { أَن يَأْتِيَهُمُ اللّهُ } [an ya-tiyahoumou l-Lâh] et il a dit qu’il s’agit de Sa puissance (c’est-à-dire les manifestations de Sa toute puissance) et Son ordre. Et Sa parole { وَجَاء رَبُّكَ } [wa jâ-a rabbouk] et il a dit qu’il s’agit de Sa puissance. Et Ibnou l-Jawzi [Al-Hambali] a mentionné ces deux interprétations [de l’Imâm Ahmad] dans « Al-Minhâj » et il a, quant à lui, penché vers le fait de prendre les versets tels qu’ils sont parvenus sans en donner d’explications, et Ibn ‘Aqîl [Al-Hambali] a interprété de nombreux versets et khabar. Et [l’Imâm] Ahmad a interprété la parole du prophète (صلى الله عليه وسلم) : « الحجر الأسود يمين الله في الارض » [al-hajarou l-aswad yamînou l-Lâhi fi l-ard] et ce qui est similaire » [Nihâyatou l-Moubtadi-în]. Cela nous indique que bien que la voie majoritaire des savants du Salaf était de ne pas procéder à l’interprétation, il est toutefois arrivé que certains d’entre eux, à l’image de l’Imâm Ahmad Ibn Hambal, la pratique dans certains cas. Et il en est de même concernant les savants du madh-hab Hambalite.
– De nombreux savants ont donné des explications similaires, parmi eux :
L’Imâm Al-Bayhaqi qui dit que le Majî de Allâh n’est pas un mouvement ou un déplacement [ Dans son livre Al-I’tiqâd ] et il explique qu’il est valable de se contenter d’accepter le majî sans comment (bilâ kayf) [ Dans son ouvrage Al-I’tiqâd ] en niant par cette expression le déplacement ou le mouvement à l’égard de Allâh.
L’Imâm Al-Jouwayni (m.478 H.) qui a dit : « Le sens du majî n’est pas le déplacement et la disparition [d’un endroit à autre], Allâh est exempt de cela, mais le sens de Sa parole { وجاء ربك } « wa jâ-a Rabbouk » c’est-à-dire l’ordre de ton Seigneur viendra, ainsi que Son jugement » [Dans son livre Al-Irchâd]
L’Imâm Al-Baghawi [ Dans son tafsîr ]
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
Ibnou l-Bannâ Al-Hambali qui a dit : « Celui qui prend le nouzoûl dans le sens de quitter un endroit pour en occuper un autre, et du déplacement alors c’est de la mécréance » [Al-Ousoûlou l-Moujarradah].', 'ahmad, ahmad ibn hambal, ahmad ibn hanbal, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '[قال الإمام أحمد بن حنبل:] قال الله جلَّ ذكره{وجاء ربك والملك صفا صفا} وإنما تأتي قدرته');

-- source: https://islamsunnite.net/le-chaykh-abdoullah-ibn-houcayn-alawi-parle-des-trois-sortes-apostasie/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les sortes d’apostasie', '''AbdoulLah Ibn Houçayn', 'والرِّدَّةُ ثَلاثَةُ أقْسامٍ: اعْتِقاداتٌ وأفْعالٌ وأقْوالٌ، وكُلُّ قِسْمٍ يَتَشَعَّبُ شُعَبًا كَثِيرَةً', '« L’apostasie est de trois sortes : par la croyance, par les actes et par la parole. Et chacune de ces sortes se ramifient en de nombreuses branches ».', '', 'Dans son livre « Soullamou t-Tawfîq » Le Chaykh ‘AbdoulLâh Ibn Houçayn a dit :
Informations utiles :
– L’Imam, le Chaykh, le Faqîh (spécialiste de la jurisprudence) ‘AbdoulLâh Ibn Houçayn Ibn Tâhir Al-‘Alawi (Ba’Alawi) Al-Hadrami At-Tarîmi Ach-Châfi’i est né est en 1191 de l’Hégire et il est décédé en 1272 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 160 ans. Il est né et décédé dans la ville de Tarîm dans Al-Hadramawt qui est une région montagneuse du Yémen. Il fût le plus réputé des savants de Al-Hadramawt de son temps et celui à qui les gens de son pays accordaient le plus de considération et de respect.
– Ici il explique que l’apostasie est de trois sortes, c’est-à-dire qu’il arrive que des gens sortent de l’Islâm suite à une mauvaise croyance, ou bien suite à un acte de mécréance, ou encore par le fait d’avoir prononcé une parole de mécréance.
– En effet il y a des croyances, des actes et des paroles qui contredisent les deux témoignages et font tomber dans la mécréance. Tout ceci par accord des savants des quatre écoles (madh-hab).
– Dans la suite de son livre, parmi les choses qu’il a mentionné :
Concernant la mécréance par la croyance, il y a le fait de croire que Allâh est un corps;
Concernant la mécréance par les actes, il a mentionné le fait de se prosterner pour le soleil et la lune;
Et concernant la mécréance par la parole, il a cité le fait de se moquer de l’un des Noms de Allâh.
– Consulter d’autres articles concernant certaines choses qui font sortir de l’Islam : ici .
– A voir également : Préserver sa foi : éviter l’apostasie, la mécréance, le blasphème : ici .', '''abdoullah ibn houçayn, abdoullah ibn houçayn ibn tahir, al-''alawi, al-alaoui'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'والرِّدَّةُ ثَلاثَةُ أقْسامٍ: اعْتِقاداتٌ وأفْعالٌ وأقْوالٌ، وكُلُّ قِسْمٍ يَتَشَعَّبُ شُعَبًا كَثِيرَةً');

-- source: https://islamsunnite.net/chaykh-al-qawouqji-confirme-que-allah-nest-pas-aux-cieux/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas incarné dans le ciel', 'Qawouqji', 'إذا قال لك قائلٌ: من تعبدُ؟ فقل: أعبدُ اللهَ الذي لا إله إلا هو، الذي ليس متحيزًا في الأرضِ ولا في السماء، كان قبلَ المكانَ والزمان وهو الآن كما كان، لا يُمكن تصويرُهُ في القلب لأنهُ لا شبيه له في الموجوداتِ', '« Si quelqu’un te demande « qui adores-tu ? » réponds-lui : j’adore Allâh, il n’est de dieu que Lui, Il est Celui qui n’est ni localisé sur terre ni dans [ou au dessus] les cieux (fi s-samâ), Il existe de toute éternité avant la création de l’endroit et du temps, et Il est maintenant tel qu’Il est de toute éternité [c’est-à-dire qu’Il est sans endroit et qu’Il ne dépend pas du temps], on ne peut pas l’imaginer, rien de ce qui existe n’a de ressemblance avec Lui ».', '', 'Dans son livre « Al-I’timâdou fi l-I’tiqâd », le Chaykh Al-Qâwouqji a dit :
Informations utiles :
– Le Chaykh, Al-‘Allâmah (l’illustre savant), le Mouhaddith (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence) Abou l-Mahâcin Chamsou d-Dîn Mouhammad Ibn Khalîl Ibn Ibrâhîm Al-Qâwouqji At-Tarâboulouçi Al-Loubnâni Al-Hanafi est né en 1224 et il est décédé en 1305 de l’Hégire (رحمه الله).
– Il a dit dans l’introduction de son ouvrage : « Voici un traité de croyance concernant le tawhîd pur de tout verbiage et de toute complication dont a besoin tout mourîd, que Allâh en fasse profiter tous les esclaves, âmîn »
– Ici il confirme la croyance des gens de ahlou s-Sounnah sur le fait que Allâh n’a aucune ressemblance avec Ses créatures, qu’Il existe sans endroit, qu’Il n’est ni sur terre ni aux cieux, qu’Il ne dépend pas du temps et qu’Il n’est pas possible de L’imaginer.
– Dans ce même ouvrage le Chaykh Al-Qâwouqji a dit : « Si quelqu’un te dit “ayna l-Lâh ?” dis : « ma’a (avec) tout un chacun par Sa science et non pas par Lui-même ; fawq (supérieur) à tout un chacun par Sa toute puissance ; Dhâhir (Dont l’existence est évidente) par les manifestations de Ses attributs ; Bâtin (inimaginable) de par la réalité de Son Être, c’est-à-dire qu’il n’est pas possible de se L’imaginer ; Il est exempt de la direction et du physique [du corps]. On ne dit pas qu’Il a une droite, ni une gauche, ni un devant, ni un arrière, ni qu’Il est au-dessus du Trône ni en dessous, ni à sa droite, ni à sa gauche, ni à l’intérieur du monde, ni à l’extérieur. On ne dit pas que personne ne sait Son endroit sinon Lui et celui qui dit : « je ne sais pas si Allâh est dans le ciel ou sur la terre » est mécréant car il aura considéré qu’Il occuperait l’un de ces deux endroits. Si maintenant on te demande : « Quelle est ta preuve en cela ? Réponds : « Parce que s’Il avait une direction ou s’Il était dans une direction, Il serait localisé et tout ce qui est localisé est entré en existence alors que l’entrée en existence est impossible à Son sujet » [ Al-I’timâd fi l-I’tiqâd ]
– Dans ce même ouvrage le Chaykh Al-Qawouqji a dit également : « Il est un devoir à Son sujet [de connaitre de parmi Ses attributs] ta’âlâ : l’ouïe : et Il est exempt de l’oreille et du tympan ». [ Al-I’timâdou fi l-I’tiqâd ]', 'al-i’timad fi l-i’tiqad, al-qawoqji, al-qawouqji, al-qawouqjiyy'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'إذا قال لك قائلٌ: من تعبدُ؟ فقل: أعبدُ اللهَ الذي لا إله إلا هو، الذي ليس متحيزًا في الأرضِ ولا في السماء، كان قبلَ المكانَ والزمان وهو الآن كما كان، لا يُمكن تصويرُهُ في القلب لأنهُ لا شبيه له في الموجوداتِ');

-- source: https://islamsunnite.net/chaykh-ad-dardir-al-maliki-confirme-que-allah-nest-pas-dans-une-direction/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas dans une direction', 'Al Azhar', 'منزه عن الحلـــــول والجهــــــه والاتصال الانفصال والسفه', 'Il (Allâh) est exempt de l’incarnation, de la direction, du contact, de la séparation et de ce qui serait stupide de Lui attribuer', '', 'Dans son livre « Al-Kharîdah al-Bahiyyah » , le Chaykh Ad-Dardîr Al-Mâliki a dit au sujet de Allâh ta’âlâ :
Informations utiles :
– Le Chaykh, Al-‘Allâmah (l’illustre savant) Abou l-Barakât Ahmad Ibnou Mouhammad Al-‘Adawi Ad-Dardîr Al-Mâliki Al-Misri Al-Azhari est né en 1127 et il est décédé en 1201 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 230 ans. Il était un grand savant Malikite de l’Université Islamique Al-Azhar.
– Ici, il confirme que Allâh n’est pas une direction, qu’Il n’est pas incarné dans un endroit ou dans Ses créatures, et qu’Il n’est concerné ni par le contact ni par la séparation.
– Retrouvez d’autres articles sur le thème Allah est sans endroit / sans direction : ici.', 'ad-dardir, ad-dardir al-maliki, al azhar, al misri'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'منزه عن الحلـــــول والجهــــــه والاتصال الانفصال والسفه');

-- source: https://islamsunnite.net/le-chaykh-zakariyya-al-ansari-confirme-que-le-wajh-de-allah-nest-pas-un-visage/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’a pas de visage', 'Ansari (Zakariyya)', 'قال تعالى {كُلُّ شَيْءٍ هَالِكٌ إِلاَّ وَجْهَهُ} لا بمعنى الجارحة بل بمعنى الذات أي :إلا ذاته', '« Allâh ta’âlâ dit : {Koullou chay-in hâlikoun illâ Wajhah} [ce qui signifie : « Tout disparaîtra sauf Son Wajh »], cela n’est pas dans le sens de l’organe (du visage) mais cela est dans le sens de l’Être (adh-dhât), c’est-à-dire [tout disparaîtra] sauf Son Être ».', '', 'Dans son commentaire de « Ar-Riçâlatou l-Qouchayriyyah », Chaykh Al-Islâm Zakariyyâ Al-Ansâri a dit :
Informations utiles :
– Chaykh Al-Islâm, le Qâdî (juge), le Hâfidh (spécialiste du Hadîth), le Moufassir (exégète), le Faqîh (spécialiste de la jurisprudence) Zakariyyâ Ibn Mouhammad Ibn Ahmad Al-Ansâri Al-Misri Al-Azhari Ach-Châfi’i est né en 824 et il est décédé en 926 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 500 ans. Il étudia auprès de très grands savants comme l’Imâm Al-Boulqîni, l’Imâm Ibn Hajar Al-‘Asqalâni… Et on compte de parmi ses élèves, le Chaykh Ibn Hajar Al-Haytami…
Le Chaykh Mourâd Youçoûf Al-Hanafi a dit de lui : « Le Chaykh, l’Imâm profitable […] le savant, Al-‘Allâmah (l’illustre savant), le modèle (qoudwah) […] le Faqîh (spécialiste de la jurisprudence), le Hâfidh (spécialiste de la science du hadîth), le mouhaddith, le moufassir (l’exégète), le waliyy, le vertueux […] le juge des juges (Qâdi l-Qoudâh) » [Fath-ou l l-Bârî fîma khtassa l-Lâh bihi ach-Chaykh Zakariyyâ Al-Ansâri]
Ibnou Iyyâs a dit à son sujet : « Chaykh Al-Islâm et des musulmans, le moufti, le reste des salafs, le soutien des khalafs » [Badâ-i’ou z-Zouhoûr]
Az-Zirikli a dit de lui : « Chaykh Al-Islâm, le Qâdî (juge), le moufassir (exégète), il est de parmi les houffâdh du hadîth» [Al-A’lâm]
– Ici il dit que le terme wajh lorsqu’il est attribué à Allâh n’a pas le sens de l’organe, c’est-à-dire que le wajh de Allâh ne vient pas dans le sens du visage.
– Le grand savant du Salaf, l’Imâm At-Tahâwi (رحمه الله) a dit : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres. Les six directions ne Le délimitent pas, contrairement à toutes les créatures » [ Al-‘Aqîdah At-Tahâwiyyah ] .
– Le mot « wajh » dans la langue arabe a plusieurs sens, et son sens premier est « visage » ou « face ». Mais ce n’est pas ce sens qui est retenu lorsqu’il est attribué à Allâh. En effet Allâh n’est pas composé de partie, Il n’est pas un corps et Il n’a ni membre, ni organe. Le mot wajh peut désigner un être, ou encore avoir le sens de al-Moulk (la souveraineté) comme l’a dit l’Imâm Al-Boukhâri [ Dans son Sahîh ].
– De nombreux autres savants ont interprété le mot « wajh » en fonction du contexte du verset. [ Consultez des paroles de savants : ici ].
– Dans ce même ouvrage, le Chaykh Zakariyyâ Al-Ansâri a dit : « Certes, Allâh n’est pas un corps ni une caractéristique qui advient aux corps. Il n’est pas dans un endroit ni sujet au temps » [ Dans son commentaire de Ar-Riçâlatou l-Qouchayriyyah ]
– Le Chaykh Zakariyyâ Al-Ansâri a dit également : « Le terme « istawâ » peut etre employé [dans la langue arabe] pour dire s’assoir (jalassa), se redresser (i’tadala), dominer (istawlâ), être élevé par l’endroit (‘alâ makânan) ou [êtré élevé] par le mérite (routbatan), vouloir (qasada) comme dans Sa parole ta’âlâ : « thoumma stawâ ila s-samâ ». Les deux premiers sens [c’est-à-dire le sens de la position assise et du redressement] ainsi que le quatrième dans le sens d’être élevé par l’endroit est impossible au sujet de Allâh ta’âlâ contrairement aux autres sens cités [c’est-à-dire le sens de la domination (istawlâ), le sens d’être élevé par le mérite (‘alâ routbatan) et vouloir (qasada)]. Et al-‘arch (trône) dans la langue arabe signifie le lit du roi, et le toit. » [ Dans son commentaire de Ar-Riçâlatou l-Qouchayriyyah ]
– L’émargement (al-hâchiyah) de cette édition à été réalisée par le Chaykh Moustafâ Al-‘Aroûçi Al-Misri Al-Azhari Ach-Châfi’i qui est décédé en 1293 de l’Hégire (رحمه الله).', 'al misri, al qouchayriyya, al qouchayriyyah, al-qochayri'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال تعالى {كُلُّ شَيْءٍ هَالِكٌ إِلاَّ وَجْهَهُ} لا بمعنى الجارحة بل بمعنى الذات أي :إلا ذاته');

-- source: https://islamsunnite.net/limam-abou-hayyan-al-andalouci-confirme-que-leau-est-la-premiere-creature/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'l’eau est la première des créatures', 'Abou Hayyan Al-Andalouçi', 'وإن أصل جميع المخلوقات الماء', 'Certes l’origine de toutes les créatures est l’eau', '', 'Dans son célèbre Tafsîr « Al-Bahrou l-Mouhît », lors de l’explication du verset 45 de Soûrat An-Noûr, l’Imâm Aboû Hayyân Al-Andalouçi a dit :
Informations utiles :
– L’Imâm, Al-‘Allâmah (l’Illustre savant), le Moufassir (exégète), le Mouqri (spécialiste de la récitation), le Nahwiyy (spécialiste de la grammaire) Mouhammad Ibn Yoûçouf Aboû Hayyân Al-Andalouçi Al-Gharnâti est né en 654 à Grenade (Espagne) et il décédé en 745 de l’hégire (رحمه الله) au Caire (Egypte) c’est-à-dire il y a environ 690 ans. C’est un savant du madh-hab (école de jurisprudence) de l’Imâm Ach-Châfi’i. De nombreux grands savants ont étudié auprès de lui, parmi eux : Taqiyyou d-Dîn As-Soubki, Tâjou d-Dîn As-Soubki, Badrou d-Dîn Ibn Jamâ’ah, et autres.
L’Imâm As-Souyoûti a dit de lui : « Il est le nahwi (spécialiste de la grammaire), le Loughawi (spécialiste de la langue Arabe), le Moufassir (spécialiste du tafsîr), le Mouhaddith (spécialiste de la transmission du hadîth), le Mouqri (spécialiste de la récitation), et l’Historien de son époque » [Al-Boughyah]
L’Imâm Ibn Hajar Al-‘Asqalâni a dit à son sujet : « Il est le Chaykh de son époque et le revivificateur des sciences » et il a dit aussi : « Il a une grande maîtrise du tafsîr et de ses explications » [Ad-Dourarou l-Kâminah]
As-Safadi a dit le concernant : « Il a une grande maîtrise du tafsîr, du hadîth, et des biographies ».
Ibnou l-Jazari a dit de lui : « L’Imâm, le Hâfidh, le Chaykh de la langue Arabe, des récitations, et qui est honnete et digne de confiance ».
Ibnou Battoûtah a dit de lui après avoir cité un groupe de savants : « Et parmi eux [c’est-à-dire les savants d’Egypte] Athîrou d-Dîn Aboû Hayyân Mouhammad Ibn Yoûçouf Ibn Hayyân Al-Gharnâti, et il est le plus savant d’entre eux dans la grammaire (nahw) » [Ar-Rihlah] .
Az-Zirikli a dit à son sujet : « Il compte de parmi les plus grands savants dans la langue Arabe, le tafsîr (l’exégèse du Qour-ân), le hadîth, les biographies, et les matières linguistiques ». [Al-A’lâm]
– Ici il confirme que l’eau est à l’origine de toutes les créatures, c’est-à-dire que l’eau est la première des créatures.
– Parmi les textes du Qour-ân et du hadîth confirmant que l’eau est la première créature :
Allâh ta’âlâ dit : { وَجَعَلْنَا مِنَ الْمَاءِ كُلَّ شَىْءٍ حَيّ} [Al-‘Anbiyâ / 30] (ce qui a pour sens) : « Nous avons fait de l’eau toute chose vivante » .
Allâh ta’âlâ dit : {قُلْ إِنَّمَا أَنَا بَشَرٌ مِثْلُكُمْ يُوحَى إِلَيّ} [Al-Kahf / 110] (ce qui a pour sens): « Dis (Ô Mouhammad, à ton sujet) : je ne suis qu’un être humain comme vous à qui il a été révélé » .
Le Messager de Allâh (صلى الله عليه وسلم) lorsqu’il fût interrogé au sujet du début de la création a dit : « كَانَ اللهُ وَلَمْ يَكُنْ شَىْءٌ غَيْرُهُ وَكَانَ عَرْشُهُ عَلَى الْمَاءِ » (ce qui a pour sens) : « Allâh est de toute éternité et rien d’autre que Lui n’est de toute éternité. Son Trône a été créé sur l’eau. » [Hadîth sahîh -authentique- rapporté de Al-Boukhâri et Al-Bayhaqi d’après ‘Imrân Ibnou l-Housayn]. Nous comprenons à travers ce hadîth que la création de l’eau a précédé celle du trône. Et ceci est confirmé par ce que mentionne Ibnou Hajar : « Ahmad et At-Tirmidhi ont rapporté, et At-Tirmidhi le déclare sahîh, du hadîth marfoû’ (c’est-à-dire qui remonte jusqu’au prophète) d’après Aboû Razîn Al-‘Ouqayli : “Certes l’eau fût créée avant le trône” » [Dans son livre Fat-hou l-Bârî et rapporté par Al-Qastallâni dans Irchâd As-Sârî et par le Mouhaddith Al-Ghoumâri dans son livre Qisasou l-Ambiyâ : Âdam ‘alayhi s-salâm]
Ibnou Hibbân a rapporté dans son sahîh, d’après Aboû Hourayrah qu’il a dit : « J’ai dit : Ô Messager de Allâh chaque fois que je te vois je me sens bien et je me réjouis. Informe moi sur toute chose. Il a dit : « كُلُّ شَىْءٍ خُلِقَ مَنَ الْمَاءِ » (ce qui a pour sens) : « Toute chose a été créée à partir de l’eau » . Ce hadîth est confirmé comme étant sahîh. Et Ibnou Mâjah a rapporté semblable à cela dans ses sounan.
As-Souddi a rapporté dans son tafsîr avec plusieurs chaînes de transmission qui remontent jusqu’à plusieurs compagnons, que le Messager de Allâh (صلى الله عليه وسلم) a dit : « إِنَّ اللهَ لَمْ يَخْلُقْ شَيْئًا مِمَّا خَلَقَ قَبْلَ الْمَاءِ » (ce qui a pour sens) : « Certes Allâh n’a rien créé de ce qu’Il a créé avant l’eau » .
– De parmi les savants qui ont confirmé que l’eau est la première des créatures :
Le compagnon Ibnou ‘Abbâs qui a dit : « Le trône de Allâh ta’âlâ était sur l’eau avant qu’Il ne crée autre chose, puis Il a créé [d’autres créatures], et la première de Ses créatures [après l’eau et le trône] fût le Qalam » [Rapporté par le Mouhaddith Aboû Bakr Al-Âjourri dans son livre Kitâbou ch-Charî’ah d’après Moujâhid]. Ibnou ‘Abbâs a dit également : « Le trône de Allâh ‘azza wa jall était sur l’eau, et Il n’a rien créé de ce qu’Il a créé avant de créer l’eau » [Rapporté par l’Imâm Al-Qastallâni dans Irchâd As-Sârî, d’après Ibn Jarîr et d’autres]
L’Imâm Moujâhid qui a dit au sujet de la parole de Allâh : {وكانَ عَرْشُهُ علـى الـمَاءِ} (wa kâna ‘Archouhou ‘ala l-Mâ-) [-soûrat Hoûd / 7-, qui signifie : « Et Son trône fût [créé] sur l’eau »] : « Son trône fût [créé] sur l’eau avant qu’Il n’ait créé quoi que ce soit » [ Rapporté par At-Tabari dans son tafsîr ]
L’Imâm Qatâdah qui a dit au sujet du verset {وكانَ عَرْشُهُ علـى الـمَاءِ} (wa kâna ‘Archouhou ‘ala l-Mâ-) [-soûrat Hoûd / 7-, qui signifie : « Et Son trône fût [créé] sur l’eau »] : «Ceci est le début de ce que Allâh a créé, avant qu’Il ne créé les cieux et la terre» [ Rapporté par l’Imâm ‘Abdou r-Razzâq dans son tafsîr ]
L’Imâm Ibnou Hibbân a dit après avoir mentionné le hadîth rapporté par Aboû Hourayrah, précédemment cité : « Ce qu’il a visé c’est que toute chose est créé à partir de l’eau et la preuve de l’authenticité de cela est la parole de Al-Moustafâ (le prophète), étant donné qu’il a dit [ce qui a pour sens : ] « Toute chose a été créée à partir de l’eau » alors qu’il n’y avait pas encore de créature » [Dans son Sahîh]
L’Imâm Al-Bayhaqi a dit : « Il (Allâh) a créé l’eau en premier, ou bien l’eau et ce qu’Il a voulu comme créature, sans origine et sans modèle précédant, puis Il en a fait l’origine des choses créées qui ont suivis » [Dans son livre Al-Asmâ-ou wa s-Sifât].
Le Hâfidh Ibnou ‘Açâkir a dit : «La parole du prophète “كَانَ اللهُ وَلَمْ يَكُنْ شَىْءٌ غَيْرُهُ” (kâna l-Lâhou wa lam yakoun chay-oun ghayrouh) indique qu’il n’y avait rien [de toute éternité] autre que Lui, ni eau, ni trône, ni autre qu’eux deux de parmi tout ce qui est autre que Allâh ta’âlâ. Et sa parole “وَكَانَ عَرْشُهُ عَلَى الْمَاءِ” (wa kâna ‘archouhou ‘ala l-mâ) signifie qu’ensuite Allâh a créé l’eau, puis qu’Il a créé le trône sur l’eau, puis Il a fait écrire toute chose sur la table préservée» [Dans son livre Tabyînou kadhibi l-Mouftarî].
L’Imâm Al-Qourtoubi Al-Mâliki a dit : « L’origine de toute les choses créées est l’eau » puis il cite comme preuve le hadîth d’Ibnou Hibbân et Ibnou Mâjah précédemment cité [Dans son tafsîr].
Le Chaykh Houçayn Charafou d-Dîn At-Tîbi a dit : « Allâh a indiqué par sa parole {وكانَ عَرْشُهُ علـى الـمَاءِ} (wa kâna ‘Archouhou ‘ala l-Mâ-) [qui signifie : « Et Son trône fût [créé] sur l’eau »] que l’eau et le trône étaient tout deux le début de la création de ce monde ». [Rapporté par Ibnou Hajar Al-‘Asqalâni dans Fat-hou l-Bârî]
L’Imâm Aboû Hayyân Al-Andalouçi [voir ci-dessus].
L’Imâm Al-Qastallâni a dit : « La parole du prophète “وَكَانَ عَرْشُهُ عَلَى الْمَاءِ” (wa kâna ‘archouhou ‘ala l-mâ) indique qu’ils sont tout deux (l’eau et le trône) les premières créatures car ils ont été créés avant toute autre chose. Et dans le hadîth d’Aboû Razîn Al-‘Ouqayli, qui est marfoû’ (dont la chaîne de transmission remonte jusqu’au prophète) d’après l’Imâm Ahmad et qui a été jugé sahîh (authentique) par At-Tirmidhi : l’eau a été créé avant le trône. […] Et d’après l’Imâm Ahmad, et Ibnou Hibbân dans son sahîh ainsi que Al-Hâkim dans son sahîh, d’après Aboû Hourayrah qui a dit : « J’ai dit : Ô Messager de Allâh chaque fois que je te vois je me sens bien et je me réjouis. Informe moi sur toute chose. Il a dit : « كُلُّ شَىْءٍ خُلِقَ مَنَ الْمَاءِ » (ce qui a pour sens) : « Toute chose a été créée à partir de l’eau » et cela indique que l’eau est l’origine (asl) de l’ensemble des créatures et que l’ensemble des créatures ont été créé à partir de l’eau » [Dans son livre Irchâdou s-Sârî].
Le Chaykh ‘Abdou l-Lâh Al-Ghoumari a dit après avoir mentionné différent hadîth authentiques qui indique que l’eau est la première des créatures : « Il apparaît à travers ces différents hadîth que la première des créatures est l’eau, puis le trône, puis le Qalam » [Dans son livre Qisasou l-Ambiyâ : Âdam ‘alayhi s-salâm]
Le Chaykh ‘Abdou l-Lâh Al-Harari a dit : « L’eau est la première des créatures dans l’absolu.» [Dans son livre Riçâlatoun fî Boutlâni Da’wâ Awwaliyyati n-Noûri l-Mouhammadiyy].
Dans le livre « ‘Aqîdatou l-Mouslimîn» qui est un petit ouvrage de 50 questions-réponses sur la croyance, approuvé par la faculté des Fondements de la Religion (Ousoûlou d-Dîn) de l’Université de Al-Azhar Ach-Charîf, il est dit : « Quelle est la première des créatures ? Réponse : La première des créatures, c’est l’eau.» [ ‘Aqîdah Al-Mouslimîn ]
– Quant au hadîth connu sous le nom de “hadîth de Jâbir” dans lequel il est dit que la première créature serait la lumière du prophète (صلى الله عليه وسلم), il n’a pas de chaîne de transmission sur laquelle on puisse se baser, tout comme l’a mentionné le Hâfidh As-Souyoûti [ Dans son recueil de Fatwâ Al-Hâwi li l-Fatâwi ].
– D’autres savants spécialistes de la science du hadîth ont confirmé les propos de l’Imâm As-Souyoûti, et d’autres encore ont dit que les expressions même du hadîth, démontrent qu’il n’est pas à retenir. A ce sujet :
Le Mouhaddith ‘Abdou l-Lâh Al-Ghoumâri a composé un livre qu’il a nommé “Mourchidou l-Hâ-ir li Bayâni Wad’i hadîth Jâbir”. Ainsi, tout comme l’indique le titre de son livre, le Mouhaddith ‘Abdou l-Lâh Al-Ghoumâri considérait ce hadîth mensonger (mawdoû’). Il a d’ailleurs explicité cela dedans en disant : « En résumé Il s’agit d’un hadîth mounkar, mawdoû’ (mensonger) qui n’a aucune origine dans les livres de la sounnah.».
Le Mouhaddith ‘Abdou l-Lâh Al-Ghoumâri a également dit au sujet du hadîth de Jâbir : « Le fait d’attribuer la chaîne de transmission de ce hadîth à ‘Abdou r-Razzâq est une erreur, car il ne se trouve ni dans son mousannaf, ni dans son jâmi’, ni dans son tafsîr » [Dans son livre Mourchidou l-Hâ-ir li Bayâni Wad’i hadîth Jâbir]
Le Mouhaddith ‘Abdou l-Lâh Al-Harari après avoir mentionné les propos ci-dessus du Chaykh ‘Abdou l-Lâh Al-Ghoumâri, les a confirmé en disant : « Il en est comme il l’a dit» [Dans son livre Riçâlatoun fî Boutlâni Da’wâ Awwaliyyati n-Noûri l-Mouhammadiyy].
Le Mouhaddith ‘Abdou l-Lâh Al-Harari a dit également : « Le fait d’attribuer ce hadîth à Al-Bayhaqi n’est pas correct, et certains l’attribuent au mousannaf de ‘Abdou r-Razzâq, mais il ne se trouve pas dans son mousannaf, et ce qui se trouve dans son tafsîr est le contraire de cela. En effet, il a cité dedans que la première des choses entrées en existence est l’eau.» [Dans son livre Riçâlatoun fî Boutlâni Da’wâ Awwaliyyati n-Noûri l-Mouhammadiyy].
Le Mouhaddith ‘Abdou l-Lâh Al-Harari a dit également : « Il s’agit d’un hadîth mawdoû’ (mensonger).» [Dans son livre Riçâlatoun fî Boutlâni Da’wâ Awwaliyyati n-Noûri l-Mouhammadiyy].
Le Hâfidh Ahmad Ibnou Siddîq Al-Ghoumari a dit : « Il s’agit d’un hadîth mawdoû’ (mensonger) […] il est composé d’expression faible et de sens rejetés.» [Dans l’introduction de son livre Al-Moughîr ‘Ala l-Ahâdithi l-Mawdoû’ah fi l-Jâmi’i s-Saghîr].
Le Mouhaddith ‘Abdou l-Lâh Al-Harari a détaillé cela en disant : « Et s’il n’y avait dans ce hadîth que les termes “Allâh l’a créé de sa lumière avant toute chose” cela aurait suffit pour démontrer sa faiblesse d’expression, car il y a là une incohérence de parmi les plus extrême, en effet si on suppose que le pronom personnel “sa” dans “sa lumière” (min noûrihi) viendrait dans le sens d’une lumière créée par Allâh, alors cela viendrait contredire leur prétention, car selon cette supposition ce serait cette lumière là qui serait la première, et non la lumière de Mouhammad, au contraire la lumière de Mouhammad serait la seconde. Et si on suppose que l’attribution de cette lumière reviendrait à Allâh lui-même (c’est-à-dire prétendre que cette lumière serait une partie de Allâh) alors ça serait encore plus abominable et moche, car cela reviendrait à dire que Allâh serait composé, et le fait de dire que Allâh est composé fait partie des mécréances les plus laide, car il y a en cela l’attribution de l’entrée en existence à Allâh ta’âlâ » [Dans son livre Riçâlatoun fî Boutlâni Da’wâ Awwaliyyati n-Noûri l-Mouhammadiyy].
Le Mouhaddith ‘Abdou l-Lâh Al-Ghoumâri a dit : « Quant au hadîth « Awwalou mâ khalaqa l-Lâhou Noûrou Nabiyyika Yâ Jâbir » , il a été mentionné par plus d’un auteur de la biographie prophétique et du Mawlid An-Nabawi, mais son attribution à ‘Abdou r-Razzâq et Al-Bayhaqi dans « Ad-Dalâ-il » est une attribution erronée, car il ne se trouve dans aucun de ces deux ouvrages, et As-Souyoûti a mentionné dans « Al-Hâwî » qu’il n’a pas de chaîne de transmission sur laquelle on puisse se baser. Et j’ajoute à cela qu’il s’agit d’un hadîth mensonger (mawdoû’) […] il s’agit d’un hadîth long comportant des faiblesses d’expressions, au point que quiconque le lira, saura qu’il est infondé. Il en est de même pour le hadîth « Kountou noûran bayna yadayyi Rabbi qabla an yakhlouqa Âdam bi arba’ati ‘achara alfi ‘Âm » il est mensonger (mawdoû’) » [Dans son livre Qisasou l-Ambiyâ : Âdam ‘alayhi s-salâm]
– Quant au hadîth qui semble indiquer la primauté du Qalam, il s’agit d’une primauté relative. C’est-à-dire que le Qalam est la première créature après l’eau et le trône.
Le compagnon Ibnou ‘Abbâs a dit : « Le trône de Allâh ta’âlâ était sur l’eau avant qu’Il ne crée autre chose, puis Il a créé [d’autres créatures], et la première de Ses créatures [après l’eau et le trône] fût le Qalam » [Rapporté par le Mouhaddith Aboû Bakr Al-Âjourri dans son livre Kitâbou ch-Charî’ah d’après Moujâhid]
Le Hâfidh Ibnou Hajar a dit à ce sujet : « La primauté du Qalam est par rapport à ce qui est autre que l’eau et le trône » [Dans son livre Fat-hou l-Bâri].
L’Imâm Al-Qastallâni a dit après avoir mentionné un hadîth : « Ce hadîth indique que le création du trône a précédé celle du qalam, qui écrit ce qui est prédestiné, et ceci est l’avis de la majorité » [Dans son livre Irchâd As-Sârî].
Le Chaykh Al-‘Ajloûni a dit : « Le plus authentique est que le trône fût créé avant le Qalam » [Dans son livre Kachfou l-Khafâ]
Le Mouhaddith ‘Abdou l-Lâh Al-Ghoumâri a dit après avoir confirmé que le Qalam a été créé après l’eau et le trône: « L’écriture a eu lieu après la création du trône sur l’eau, d’ailleurs cela est parvenu de manière explicite d’après ce que rapporte Ibn Châhîn dans « As-Sahâbah » d’après Nâfi’ Ibn Yazîd Al-Hamyari qu’un groupe du Yémen qui n’était pas des ach’ariyyîn sont venu au prophète (صلى الله عليه وسلم) et l’ont questionné concernant le début de la création, alors il a dit (ce qui a pour sens : ) «Allâh existe de toute éternité et rien d’autre que Lui n’existe avec Lui de toute éternité, et Son trône fût créé sur l’eau, puis Il a créé le Qalam et Il a dit : « écrit ce qui a eu lieu » puis Il créa les cieux et la terre et ce qu’il y a dedans» Ceci est explicite concernant l’ordre d’entré en existence des créatures. Et ceci ne contredit pas ce qui fût rapporté [puis il cite le hadîth qui semble indiqué la primauté du Qalam], car la primauté du Qalam est par rapport à ce qui est autre que l’eau et le trône […] et rien d’autre n’est parvenu de manière authentique du prophète (صلى الله عليه وسلم) concernant l’ordre d’entré en existence des créatures » [Dans son livre Qisasou l-Ambiyâ : Âdam ‘alayhi s-salâm]
– Quant au hadîth “أول ما خلق الله العقل”; il n’est pas parvenu avec une chaîne de transmission confirmé comme le mentionne :
Le Hâfidh As-Saghâni [dans son livre Al-Mawdoû’ât]
Le Hâfidh Ibnou Hajar [dans son livre Fat-hou l-Bâri] ;
Le Mouhaddith Al-Harari [dans son livre Riçâlatoun fî Boutlâni Da’wâ Awwaliyyati n-Noûri l-Mouhammadiyy].
Le Hâfidh Al-‘Irâqi qui le déclare mounkar tout comme le rapporte de lui le Hâfidh Az-Zabîdi [dans son livre It-hâfou s-Sâdati l-Mouttaqîn]. Et le Hâfidh Al-‘Irâqi a dit également au sujet de ce hadîth : « At-Tabarâni le rapporte dans Al-Awsat d’après le hadîth de Aboû Oumâmah et Aboû Nou’aym du hadîth de ‘Â-ichah, par deux chaînes de transmissions toutes deux faibles (da’îf) » [dans son takhrîj de Ihyâ-ou ‘ouloûmi d-Dîn]
Le Mouhaddith ‘Abdou l-Lâh Al-Ghoumâri qui a dit : « Il s’agit d’un hadîth faible (wâhin) dans toutes ses chaînes de transmission, il n’est pas valable de le prendre en considération » [Dans son livre Qisasou l-Ambiyâ : Âdam ‘alayhi s-salâm]
– Consultez d’autres articles concernant le thème : « L’eau est la première des créatures » : ici', 'abou hayyan, abu hayyan, al andalouçi, al andaloussi'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وإن أصل جميع المخلوقات الماء');

-- source: https://islamsunnite.net/limam-jafar-as-sadiq-declare-mecreant-ceux-qui-disent-que-allah-est-dans-ou-au-dessus-de-quelque-chose-rapporte-par-al-baqillani/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La croyance de Ahlou l-Bayt', 'Baqillani', 'قال جعفر بن محمد الصادق عليه السلام : من زعم أن الله تعالى في شىء ، أومن شىء أو على شىء فقد أشرك . لأنه لو كان على شىء لكان محمولا ، ولو كان في شىء لكان محصوراً ، ولو كان من شىء لكان محدثًا (أي مخلوقاً) و الله يتعالى عن جميع ذلك', 'Ja’far Ibn Mouhammad As-Sâdiq (‘alayhi s-salâm) a dit : Celui qui prétend que Allâh est dans quelque chose, ou issu de quelque chose, ou au-dessus de [ou sur] quelque chose a commis du chirk (c’est-à-dire : adorer autre que Allâh), car s’Il était au-dessus de [ou sur] quelque chose Il serait porté, s’Il était dans quelque chose, Il serait limité, s’Il était issu de quelque chose, Il serait entré en existence (c’est-à-dire créé) et Allâh est exempt de tout cela', '', 'Dans son livre « Al-Insâf » (pages 40 de cette édition) l’Imâm Al-Bâqillâni a dit :
Informations utiles :
– L’Imâm Ja’far As-Sâdiq: Il est Aboû ‘Abdi l-Lâh, Ja’far fils de Mouhammad Al-Bâqir, fils de Zaynou l-‘Âbidin ‘Ali fils de Al-Houçayn, le fils de l’Imâm ‘Ali Ibnou Abî Tâlib et Fâtimah (رضي الله عنهم), la fille du prophète (صلى الله عليه وسلم). Il est également descendant du Calife Aboû Bakr As-Siddîq (رضي الله عنه) de par son ascendance maternelle. Il est parmi les grands Imam du Salaf. Il est né en 83 à Médine et est décédé en 148 de l’Hégire à Médine également, et fût enterré dans le cimetière d’Al-Baqî’. Il faisait partie des maîtres des gens de la famille du Prophète (صلى الله عليه وسلم) dans la jurisprudence, dans la science et par le mérite.
– Ici, il dit que Allâh n’est ni dans quelque chose, ni issu de quelque chose, ni au-dessus de quelque chose, et que la croyance en l’une de ces choses là est du chirk (qui est une forme de mécréance). De nos jours, certains égarés ont pour croyance que Allâh serait dans le ciel, ou bien qu’Il serait au-dessus du Trône. Wa l-‘iyâdhou bilLâh. Que Allâh nous accorde une bonne compréhension de la science du Tawhîd et qu’Il nous préserve du chirk.
– Cette parole a été rapportée par de nombreux autres savants dans leurs ouvrages. Parmi eux :
L’Imâm Al-Qouchayri [ dans son livre Ar-Riçâlatou l-Qouchayriyyah ]
Le Chaykh Ahmad Zarroûq Al-Fâçi [Dans son Charh ‘Aqîdati l-Imâm Al-Ghazâli]
– Une autre parole de Ja’far As-Sâdiq proche de celle-ci a été rapportée : « Le tawhîd (la science de l’unicité) consiste à savoir que Allâh n’est pas « à partir de » quelque chose, ni « dans » une chose, ni « sur » quelque chose, car en effet, celui qui dit de Allâh qu’Il est « à partir de » quelque chose, il Lui aura attribué le fait d’être créé, et il aura mécru, celui qui dit de Allâh qu’Il est « dans » quelque chose, il Lui aura attribué le fait d’être limité, et il aura mécru, et celui qui dit de Allâh qu’Il est « sur / au dessus de » quelque chose, il Lui aura attribué le fait d’avoir un besoin et d’être porté, et il aura mécru. » Rapporté par As-Samarqandi [ Dans son commentaire du livre Al-Fiqh Al-Akbar ], l’Imâm An-Naçafi et d’autres.
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
Adh-Dhahabi a dit de lui : « L’Imâm, l’illustre savant (Al-‘Allâmah), l’incomparable spécialiste de la croyance (moutakallim), le spécialiste des fondements religieux surpassant les autres, le Qâdî » , il a dit également dit de lui : « Il faisait preuve d’une forte compréhension et d’intelligence » . Il rapporte également qu’il était surnommé « Sayfou s-Sounnah » (l’épée de la Sounnah) [Siyar A’lâmi n-Noubalâ]', '3arch, à partir, ahlou l-bayt, al-insaf'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال جعفر بن محمد الصادق عليه السلام : من زعم أن الله تعالى في شىء ، أومن شىء أو على شىء فقد أشرك . لأنه لو كان على شىء لكان محمولا ، ولو كان في شىء لكان محصوراً ، ولو كان من شىء لكان محدثًا (أي مخلوقاً) و الله يتعالى عن جميع ذلك');

-- source: https://islamsunnite.net/limam-an-nawawi-rapporte-lunanimite-quil-est-un-devoir-de-rattraper-les-prieres-delaissees/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les prières délaissées par paresse doivent être rattrapées', 'Unanimité', 'أَجْمَعَ الْعُلَمَاءُ الَّذِينَ يُعْتَدُّ بِهِمْ عَلَى أَنَّ مَنْ تَرَكَ صَلَاةً عَمْدًا لَزِمَهُ قَضَاؤُهَا', 'Il y a unanimité (ijmâ’) des savants dont la parole est retenue que celui qui délaisse une prière délibérément doit la rattraper', '', 'Dans son livre « Al-Majmoû’ Charhou l-Mouhadh-dhab », dans le chapitre de la prière, [tome 3 page 76 de cette édition] l’Imâm An-Nawawi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence) Aboû Zakariyyâ Mouhyi d-Dîn Yahyâ Ibnou Charaf An-Nawawi est un savant de référence. Il est né en 631 et il est décédé en 676 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 750 ans. C’est un savant dans l’école de jurisprudence Chafi’ite. Son commentaire du sahîh de l’Imâm Mouslim est très célèbre. Il a écrit d’autres livres tels que « Riyâd as-Sâlihîn » (le jardin des vertueux), et le recueil de 40 hadîth si connus.
Tâjou d-Dîn As-Soubki le surnommait « Chaykhou l-Islâm » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « Le Moufti de la Oummah, Chaykhou l-Islâm […] le Hâfidh (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chafi’ite, l’ascète, l’un des étendards (de la religion) » [Târîkhou l-Islâm]. Il a dit également : « Le Chaykh, le modèle (qoudwah) […] le Hâfidh (spécialiste de la science du hadîth), l’ascète, le pieux adorateur, le Faqîh (spécialiste de la jurisprudence), le moujtahid versé dans l’adoration de Son Seigneur, Chaykhou l-Islâm » [Siyar A’lâmi n-Noubalâ]
Ibn Kathîr a dit à son sujet : « Le Chaykh, l’Imâm, l’illustre savant (al-‘Allâmah), le Hâfidh (spécialiste de la science du hadîth) l’honorable Faqîh (spécialiste de la jurisprudence) […] l’un des pieux adorateurs et ascètes» [Tabaqâtou ch-Châfi’iyyah]
– Ici, il rapporte l’unanimité sur le fait que celui qui délaisse une prière délibérément, alors il devra rattraper cette prière. C’est-à-dire que les prières non accomplies reste à sa charge, même si cela représente plusieurs années de prières non-effectuées.
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah]
– Pour plus de détails consultez cet article : Obligation de Rattraper les Prières .', 'abou qilabah, abu qilabah, accord, al-awzai'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'أَجْمَعَ الْعُلَمَاءُ الَّذِينَ يُعْتَدُّ بِهِمْ عَلَى أَنَّ مَنْ تَرَكَ صَلَاةً عَمْدًا لَزِمَهُ قَضَاؤُهَا');

-- source: https://islamsunnite.net/limam-ath-thaalibi-explique-listiwa-de-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Explication de l’istiwâ de Allâh', 'Tha''alibi', 'وقوله سبحانه: { ثم استوى على العرش} معناه عند أبي المعالي وغيره من حذاق المتكلمين : الملك والسلطان، وخص العرش بالذكر تشريفاً له إذ هو أعظم المخلوقات', '« Sa parole soubhânah : « { ثُمَّ ٱسۡتَوَىٰ عَلَى ٱلۡعَرۡشِ } (thoumma stawâ ’ala l-’arch) » signifie d’après Abou l-Ma’âli [Al-Jouwayni] et d’autres que lui de parmi les spécialistes de la Croyance (moutakallimîn) : la royauté et la souveraineté. Et le fait que le trône soit mentionné spécifiquement est en raison de son honneur, car il est la plus grande des créatures »', '', 'Dans son tafsîr du Qour-ân « Al-Jawâhir Al-Hissân», lors de l’explication de Soûrat Al-A’raf verset 54 qui comprend la partie { ثُمَّ ٱسۡتَوَىٰ عَلَى ٱلۡعَرۡشِ } (thoumma stawâ ’ala l-’arch), l’Imâm Ath-Tha’âlibi a dit :
Informations utiles :
– L’Imâm, le Mouhaddîth (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Moufassir (exégète), le Loughawi (spécialiste de la langue Arabe) ‘Abdou-r-Rahmân ibnou Mouhammad ibnou Makhloûf Abî Zayd Ath-Tha’âlibi Al-Mâliki est né en 786 dans la région de Ouled Isser et il est décédé en 875 de l’Hégire à Alger (رحمه الله), c’est-à-dire il y a environ 560 ans. Il est un savant dans le madh-hab (école de jurisprudence) de l’Imam Mâlik. On peut citer parmi ses nombreux Chouyoûkh, le Hâfidh Waliyou d-Dîn Al-’Irâqi. De parmi ceux qui ont reçu de sa science : L’Imâm As-Sanoûçi (l’auteur du traité de croyance). Et de parmi les savants reconnus qui ont fait son éloge, le Hâfidh As-Sakhâwi. Il est enterré à Alger dans un Mausolée connu par le nom ” Sayyidi ‘Abdou r-Rahmân ”.
– Ici, il dit que l’istiwâ de Allâh signifie la royauté et la souveraineté. Il précise que le trône à été spécifié dans le verset car le trône est la plus grande des créatures. Et il dit que c’est l’explication de l’Imâm Al-Jouwayni et d’autres savants spécialistes de la croyance.
– Il ne dit pas que l’istiwâ de Allâh aurait pour sens la position assise, l’établissement ou l’élévation spatiale comme le prétendent à tord les moujassimah (corporalistes).
– Imâm Al-Haramayn (des deux Haram) Abou l-Ma’âli ‘Abdou l-Malik Ibnou ‘Abdi l-Lâh Al-Jouwayni, est né en 419 et il est décédé en 478 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 950 ans. C’est un grand savant reconnu par toute la communauté musulmane. Il était surnommé « Imâm al-Haramayn » c’est-à-dire l’Imâm des deux enceintes sacrées de La Mecque et Médine. Il était du madh-hab (Ecole de jurisprudence) de l’Imâm Ach-Châfi’i et il fût l’un des chouyoûkh de l’Imâm Aboû Hâmid Al-Ghazâli (رحمه الله).
Le Chaykh Aboû Is-hâq Ach-Chîrâzi a fait son éloge en lui disant : « Oh toi qui est profitable aux gens d’orient et d’occident, certes les premiers comme les derniers ont profité de ta science ». Il lui a dit également : « Tu es en ce jour, l’Imâm des Imâms » [Dhayl Târîkh Baghdâd]
‘Abdou l-Ghaffâr Al-Fâriçi a dit de lui : « Imâm Al-Haramayn (des deux Haram), la fierté de l’Islâm, l’Imâm de la Oummah dans l’absolue, le docte dans la charî’ah, celui qui a réunis le statut d’Imâm en orient et en occident » [Al-Mountakhab]
Le Hâfidh Ibn Najjâr Al-Baghdâdi a dit à son sujet : « Il est un Faqîh (spécialiste de la jurisprudence) Chafi’ite, il est surnommé Imâm Al-Haramayn […] il est l’Imâm des fouqahâ (spécialistes de la jurisprudence) d’orient et d’occident […] il est parvenu au degré de l’ijtihâd» [Dhayl Târîkh Baghdâd]
‘Abdou l-Lâh Ibn Yoûçouf Al-Jarjâni a dit : « Abou l-Ma’âli Al-Jouwayni est l’Imâm de son temps » [Dhayl Târîkh Baghdâd]
– D’autres savants ont donné la même explication de ce verset comme le Moufassir Ibnou ‘Atiyyah dans son tafsîr.
– L’Imâm Al-Jouwayni a dit également : « Si on nous interroge sur la parole de Allâh ta’âlâ : {الرحمن على العرش استوى} [Ar-Rahmân ‘ala l-‘archi stawâ], nous disons : Ce qui est voulu par l’istiwâ c’est la domination par la toute-puissance (al-qahr wa l-ghalabah) et l’élévation [du mérite]. Dans le même sens les Arabes disent de quelqu’un qu’il s’est «istawâ» sur un royaume, quand il domine sur lui et que le royaume lui est soumis. Et à ce sujet la parole du poète : « Bichr a dominé (istawâ) l’Irak assurément … sans tirer d’épée et sans faire couler de sang ».» [ Dans son livre «Louma’ al-Adillah» ]
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
– Consultez d’autres paroles de savants au sujet du terme « istawâ » : ici .', 'al-akhdariyah, al-djaza''ir, al-istila’, al-istiwa’'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وقوله سبحانه: { ثم استوى على العرش} معناه عند أبي المعالي وغيره من حذاق المتكلمين : الملك والسلطان، وخص العرش بالذكر تشريفاً له إذ هو أعظم المخلوقات');

-- source: https://islamsunnite.net/la-voie-de-limam-al-achari-expliquee-par-limam-ach-chahrastani/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'la croyance de l’Imâm Al-Ach’ari', 'Ach''ari', 'وأثبت اليدين والوجه صفات خبرية فيقول ورد بذلك السمع فيجب الاقرار به كما ورد وصغوه إلى طريقة السلف من ترك التعرض للتأويل وله قول أيضا في جواز التأويل', '« Il (l’Imâm Al-Ach’ari) confirme « al-yadayn » et « al-wajh » en tant qu’attributs révélés. Il dit : « Ceci est parvenu ainsi dans la révélation, donc il est un devoir de les considérer tels qu’ils ont été révélés ». Il penchait pour la méthode des Salafs, qui était de ne pas se risquer à faire une interprétation, mais il lui est arrivé d’accepter l’interprétation. »', '', 'Dans son livre « Al-Milal wa n-Nihal » (page 65 de cette édition), l’Imâm Ach-Chahrastâni a dit concernant l’Imâm Abou l-Haçan Al-Ach’ari:
Informations utiles :
– Le Chaykh Mouhammad Ibnou ‘Abdou l-Karîm Ach-Chahrastâni est décédé en 548 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 880 ans. Il était du madh-hab (école de jurisprudence) de l’Imâm Ach-Châfi’i.
– Ici il parle de la méthodologie de l’Imâm de Ahlou s-Sounnah Abou l-Haçan Al-Ach’ari, et il dit qu’il confirmait les termes parvenus dans les textes (Qour-ân et hadîth) comme « al-yadayn » et « al-wajh » sans rentrer dans l’interprétation détaillée, conformément à la voie de la majorité des gens du Salaf, mais qu’il avait tout de même recours quelquefois à l’interprétation (ta-wîl).
– Et c’est justement les deux méthodologies utilisées par les gens de Ahlou s-Sounnah au sujet des textes (Qour-ân et hadîth) moutachâbih (équivoques) :
La première : croire en ce qui est révélé dans les Textes sans rentrer dans le détail du sens, tout en exemptant Allâh de toutes ressemblances et caractéristiques des créatures (c’est ce qu’on appelle tafwîd ou encore interprétation globale -ta-wîl ijmâliyy-). Voici quelques exemples :
L’Imâm Aboû Hanîfah concernant l’Istiwâ [ Al-Wasiyyah ]
L’Imâm Aboû Hanîfah concernant le Yad [ Al-Fiqh Al-Akbar ]
L’Imâm Mâlik concernant l’Istiwâ [ Rapporté par Al-Bayhaqi ] et [ Rapporté par Al-Qayrawâni ] et [ Rapporté par Al-‘Azzâmi ] et [ Rapporté par Al-Qourtoubi ] et [ Rapporté par Ibn Kathîr ]
L’Imâm Ibn Hibbân concernant le hadîth du Nouzoûl [ Dans son Sahîh ]
La seconde : Interpréter selon un sens digne d’être attribué à Allâh et valable dans la langue (c’est ce qu’on appelle l’interprétation détaillée – ta-wîl tafsîliyy -). Voici quelques exemples :
L’Imâm Ibn ‘Abbâs concernant le Sâq [ Rapporté par At-Tabari ] et [ Rapporté par Al-Khattâbi ]
L’Imâm Al-Boukhâri concernant le Wajh [ Dans son Sahîh ]
L’Imâm Ahmad concernant le verset : “wa jâ-a rabbouka” [ Rapporté par Al-Bayhaqi ] et [ Rapporté par As-Sa’di ] et [ Rapporté par Al-Hisni ]
L’Imâm At-Tabarâni concernant l’Istiwâ [ Dans son tafsîr ]
Ces deux voies qui sont toutes les deux correctes ont en commun de ne pas prendre le sens apparent . Remarquons que les savants du Salaf, bien qu’ils utilisaient majoritairement l’interprétation globale, ils avaient quelque fois recours à l’interprétation détaillée également, comme cela apparaît dans les exemples ci-dessus.
– De nombreux savants ont mentionné les deux méthodologies valables concernant les versets équivoques (moutachâbih), parmi eux ;
L’Imâm Ibnou l-Jawzi [ Daf’ou Choubahi t-Tachbîh ]
L’Imâm Al-Qourtoubi [ Dans son tafsîr ] et [ At-Tidhkâr ]
L’Imâm An-Nawawi [ Charh Sahîh Mouslim ] et [ Charh Sahîh Mouslim (2) ]
Le Chaykh Ibnou Jouzay
L’Imâm Ibnou Hajar Al-‘Asqalâni [ Charh Sahîh Al-Boukhâri ]
Le Chaykh Ibnou Hajar Al-Haytami [ Al-Minhajou l-Qawîm ]
Le Mouhaddith ‘Abdou l-Lâh Al-Harari [ As-Sirâtou l-Moustaqîm ]
Et autres qu’eux…
– L’Imâm Abou l-Haçan Al-Ach’ari est un savant du salaf (C’est-à-dire ayant vécu dans les trois premiers siècles de l’hégire) il est né en 260 (certains ont dit 270) et il est décédé en 324 de l’Hégire (d’autres ont dit 330 ou 333) (رحمه الله). Un très grand nombre de savants ont fait son éloge et le considèrent comme l’un des plus grands défenseurs de la croyance de Ahlou s-sounnah wa-l Jamâ’ah. Consultez sa biographie : ici.
L’Imâm Abou l-Haçan As-Soulami a dit à son sujet : « Al-Ach’ari est le savant à la tête du 3ème siècle [de l’Hégire] (c’est-à-dire le moujaddid – savant revivificateur) » [Rapporté par le Hâfidh Ibnou ‘Açâkir dans Tabyîn kadhib al-Mouftari]
Le Chaykh Mouhammad Ibn A’mar An-Nâbighah Al-Ghalâwi a dit de lui : « Al-Ach’ari est l’Imâm de Ahlou s-Sounnah » [Al-Moubâchir ‘ala Bni ‘Âchir]
Le Mouhaddith ‘Abdou l-Bâsit Al-Fâkhoûri a dit : « Nous disons que Ach-Châfi’i, Mâlik, Aboû Hanîfah, Ahmad Ibn Hanbal, Al-Awzâ’i, et le reste des moujtahidîn sont sur la bonne guidée de leur Seigneur, et que Abou l-Haçan Al-Ach’ari est un Imâm de la Sounnah, tout comme Aboû Mansoûr Al-Mâtourîdi » [Al-Kifâyah li Dhawi l-‘Inâyah]
– L’Imâm Abou l-Haçan Al-Ach’ari a dit au sujet de Allâh : « Il a un ‘ayn sans comment (bilâ kayf)». [Dans son livre Al-Ibânah, d’après Ibnou ‘Açâkir dans son livre Tabyînou kadhibi l-Mouftarî]. Le comment (kayf) c’est ce par quoi on décrit les créatures, comme la forme, la taille, le poids, la couleur, le mouvement, l’immobilité etc. Ainsi, en niant le comment (kayf), l’Imâm Abou l-Haçan Al-Ach’ari a nié le fait que le terme ‘ayn au sujet de Allâh vienne dans le sens de la partie corporelle, c’est-à-dire de l’œil.
– L’Imâm Abou l-Haçan Al-Ach’ari a dit : « Allâh ta’âlâ a fait entendre à Moûçâ Sa parole éternelle qui n’est pas de lettre ni de son » [Rapporté par Ar-Râzi dans son Tafsîr]
– L’Imâm Abou l-Haçan Al-Ach’ari a dit concernant la vision de Allâh par les croyants dans l’au-delà : « Allâh sera vu sans incarnation (houloûl), sans limites (houdoûd) et sans comment (takyîf)» . [Rapporté par Ibnou ‘Açâkir dans son livre Tabyînou kadhibi l-Mouftarî]
– Tout cela nous montre que les gens de Ahlou s-Sounnah ne nient pas les attributs de Allâh, comme le prétendent calomnieusement les moujassimah (corporalistes). Au contraire les gens de Ahlou s-Sounnah acceptent les attributs de Allâh en se détournant des sens qui impliqueraient l’assimilation de Allâh à Ses créatures.
– Il est confirmé de l’Imâm Abou l-Haçan Al-Ach’ari qu’il considérait mécréant ceux qui attribuent l’endroit, la direction ou le corps à Allâh, comme cela a été mentionné par :
l’Imâm Aboû Mansoûr At-Tamîmi [ Rapporté par As-Soubki ],
l’Imâm Taqiyyou d-Dîn As-Soubki [ Rapporté par Al-Kawthari ],
l’Imâm Al-‘Irâqi [ Rapporté par Moullâ ‘Ali Al-Qârî ] et [ Rapporté par Mahmoûd As-Soubki Al-Azhari ],
le Chaykh Al-Bayâdi [ Ichâratou l-Marâm ],
le Chaykh Moullâ ‘Ali Al-Qâri [ Mirqât al-Mafâtîh ] et [ Rapporté par Mahmoûd As-Soubki Al-Azhari ],
le Chaykh Mahmoûd As-Soubki [ It-hâfou l-Kâ-inât ],
le Chaykh Al-Kawthari [ Maqâlâtou l-Kawthari ]
et autres qu’eux.
– Retrouvez d’autres paroles de savants au sujet du terme « yad » : ici .
– Retrouvez d’autres paroles de savants au sujet du terme « wajh » : ici .', 'ach3ari, achari, ahlou s-sounnah, ahlou sounnah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وأثبت اليدين والوجه صفات خبرية فيقول ورد بذلك السمع فيجب الاقرار به كما ورد وصغوه إلى طريقة السلف من ترك التعرض للتأويل وله قول أيضا في جواز التأويل');

-- source: https://islamsunnite.net/le-loughawi-az-zajjaj-du-salaf-explique-le-verset-wasnai-l-foulka-bi-ayounina/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’a pas d’oeil', 'Zajjaj', 'ومعنى: {بأعيننا} أي بإبصارنا إليك وحفظنا لك', '« La signification de « Bi A’youninâ » est par Notre vue et Notre préservation à ton égard »', '', 'Dans son tafsîr « Ma’âni Al-Qour-ân», lors de l’explication du verset « وَاصْنَعِ الْفُلْكَ بِأَعْيُنِنَا » «wasna’i l-foulka bi a’youninâ» (soûrat Hoûd/37), l’Imâm Az-Zajjâj a dit :
Informations utiles :
– L’Imâm, l’exégète (Moufassir), le Spécialiste de la langue Arabe (Loughawi), le Grammairien (Nahwi) Aboû Is-hâq Ibrâhîm Ibnou Mouhammad Ibnou s-Sourri Az-Zajjâj Al-Baghdâdi, est l’un des linguistes les plus connus, il faisait partie des gens du Salaf, il est né en 241 et il est décédé en 311 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1120 ans. Il est souvent cité comme référence par les exégètes (moufassiroûn).
Al-Khatîb Al-Baghdâdi a dit de lui : « Il était parmi les gens honorables et versés dans la religion, il avait une bonne croyance et un bon madh-hab». [Târîkh Baghdâd]
Ibn Khallikân a dit le concernant : « Il était parmi les gens de science, de bonne manière et versé dans la religion». [Wafayâtou l-A’yân]
An-Nawawi a dit à son sujet : « L’Imâm dans la langue Arabe ». [Tahdhîbou l-Asmâ wa l-Loughât]
Ibn Kathîr a dit de lui : « Il était vertueux et versé dans la religion, il avait une bonne croyance et il était auteur de bons ouvrages, et parmi eux “Ma’âni Al-Qour-ân” et d’autres ouvrages bénéfiques.». [Al-Bidâyah wa n-Nihâyah]
Adh-Dhahabi a dit à son sujet : « L’Imâm, le grammairien (Nahwi) de son époque». [Siyarou A’lâmi n-Noubalâ]
– Ici, ce grand savant du Salaf explique ce verset en disant que « bi A’youninâ » signifie « sous Notre préservation ». Et cela nous prouve que les gens du Salaf avaient quelque fois recours à l’interprétation des textes équivoques (moutachâbih).
– Il n’a pas dit comme les moujassimah (corporalistes), que ce verset signifie que Allâh aurait des yeux. En effet Allâh n’est pas un corps, Il n’est pas composé, et Il n’a pas de membres ni d’organes.
– Il en est de même pour le verset {تجري بأعيننا} {Tajrî bi A’youninâ} [Soûrat Al-Qamar / 14], les savants ont expliqué que cela signifie que l’Arche de Noûh (‘Alayhi s-Salâm) était sous la préservation de Allâh. Ou encore que le terme “A’youn” dans ce verset peut désigner les sources d’eau qui ont jaillis de la terre.
L’Imâm Soufyân Ibnou ‘Ouyaynah a dit au sujet du verset {Tajrî bi A’youninâ} « C’est-à-dire : par Notre ordre» [Rapporté par At-Tabari et Al-Baghâwi dans leurs Tafsîr]
L’Imâm Al-Jouwayni a dit : « Concernant la parole de Allâh ta’âlâ au sujet l’arche de Noûh (‘alayhi s-Salâm) : {Tajrî bi A’youninâ} [verset 14 de Soûrat Al-Qamar] Personne de parmi les savants vérificateurs n’a attribué des yeux à Allâh ta’âlâ. Le sens du verset est que l’arche voguait bi A’youninâ, c’est-à-dire dans un endroit entouré par les anges, préservé, et protégé. […] Il a été dit que le sens de « A’youn » dans ce verset désigne les sources qui ont jaillis de la terre, et elles sont annexées à Allâh pour indiquer la possession, et cela [cette explication] est acceptable.» [ Al-Irchâd ]
L’Imâm Al-Moutawalli Ach-Châfi’i a dit : « Quant à la parole de Allâh ta’âlâ : {Tajrî bi A’youninâ} [verset 14 de Soûrat Al-Qamar], ce qui en est visé sont les sources qui ont jaillis de la terre, et leur annexion au nom de Allâh est pour indiquer la possession » [ Al-Ghounyah ]
L’Imâm Ibnou ‘Atiyyah a dit : « La parole de Allâh {Tajrî bi A’youninâ} : la majorité (al-joumhoûr) a dit que cela signifie : par Notre préservation » [Dans son Tafsîr] .
L’Imâm Fakhrou d-Dîn Ar-Razi a dit : « La parole de Allâh {Tajrî bi A’youninâ} c’est-à-dire à Notre vue ou par Notre préservation.» [Dans son Tafsîr] .
L’Imâm Al-Qourtoubi a dit : « La parole de Allâh {Tajrî bi A’youninâ} c’est-à-dire à Notre vue. Et il a été dit : par Notre ordre. Et il a été dit : par Notre préservation. Et il a été dit : par Notre révélation. Et il a été dit que ce qui est visé par “A’youn” sont les sources sortant de la terre. Et il a été dit que “A’youn” signifie les saints de parmi les anges qui étaient chargé de préserver l’arche. Et tout ce que Allâh a créé, il est permis de Lui annexer» [Dans son Tafsîr].
L’Imâm Al-Baydâwi a dit : « La parole de Allâh {Tajrî bi A’youninâ} à Notre vue, c’est-à-dire une préservation de parmi Nos préservations» [Dans son Tafsîr].
L’Imâm An-Naçafi a dit : « La parole de Allâh {Tajrî bi A’youninâ} c’est-à-dire à Notre vue ou par Notre préservation.» [Dans son Tafsîr].
L’Imâm Al-Khâzin a dit : « La parole de Allâh {Tajrî bi A’youninâ} c’est-à-dire à Notre vue. Et il a été dit : par Notre préservation. Et il a été dit : par Notre ordre.» [Dans son Tafsîr].
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « {تَجْرِي بِأَعْيُنِنَا} (tajrî bi A’youninâ) : c’est-à-dire par Notre préservation et Notre protection » [Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân].
Ibn Kathîr a donné une explication similaire en disant : « La parole de Allâh {Tajrî bi A’youninâ} c’est-à-dire par Notre ordre, Notre protection et sous Notre préservation.» [Dans son Tafsîr].
Et beaucoup d’autres…
– Ainsi ces versets ne signifient en aucun cas que Allâh aurait des yeux. De plus le terme “A’youn” est le pluriel du terme “‘ayn”. Et dans la langue Arabe le pluriel s’utilise à partir de trois. Ainsi celui qui se base sur ce verset pour attribuer les yeux à Allâh, il lui aura attribué au minimum trois yeux. Que Allâh nous préserve du chirk !
– L’Imâm At-Tahâwi (رحمه الله) qui fait partie des illustres savants du salaf a dit dans son traité présentant la croyance de l’ensemble des gens de la Sounnah : « Allâh ta’âlâ est exempt des limites, des fins, des côtés, des organes et des membres. Les six directions ne Le délimitent pas, contrairement à toutes les créatures » [ Al-‘Aqîdah At-Tahâwiyyah ].
– L’Imâm Abou l-Haçan Al-Ach’ari a dit au sujet de Allâh : « Il a un ‘ayn sans comment (bilâ kayf)». [Dans son livre Al-Ibânah, d’après Ibnou ‘Açâkir dans son livre Tabyînou kadhibi l-Mouftarî]. Le comment (kayf) c’est ce par quoi on décrit les créatures, comme la forme, la taille, le poids, la couleur, le mouvement, l’immobilité etc. Ainsi, en niant le comment (kayf), l’Imâm Abou l-Haçan Al-Ach’ari a nié le fait que le terme ‘ayn au sujet de Allâh vienne dans le sens de la partie corporelle, c’est-à-dire de l’œil.
– L’Imâm Al-Khattâbi a dit : « Il est confirmé l’attribut de la vue et de l’ouïe au sujet de Allâh, mais Il n’est pas attribué de l’oreille et de l’œil car ce sont des organes». [Charh Sounan Abî Dâwoûd]
– L’Imâm Al-Bayhaqi a dit : «Son « ‘ayn » n’est pas un globe oculaire [un œil]» . [ Al-I’tiqâd ].
– L’Imâm Al-Bayhaqi a dit aussi concernant l’attribut du ‘ayn : «Il s’agit d’un attribut qui n’est pas un globe oculaire [un oeil]» [Al-Asmâ-ou wa s-Sifât]
– L’Imâm An-Naçafi (m.508 h.) a dit : « Allâh voit sans œil » [ Dans son livre Bahrou l-Kalâm ]
– L’Imâm Ahmad Ar-Rifâ’i a dit : «Ne dites pas que le yad et le ‘ayn [au sujet de Allâh] sont des organes » [Dans son livre Al-Bourhânou l-Mou-ayyad]
– L’Imâm Ahmad Ar-Rifâ’i a dit également au sujet de Allâh : « Il voit sans globe oculaire [c’est-à-dire sans œil] ni paupières, Il entend sans tympans ni oreilles » [Ad-Dourratou s-Sâmiyah fî Ma’rifati fadâ-ili souloûki t-Tarîqati r-Rifâ’iyyah]
– L’Imâm Ahmad Ar-Rifâ’i a dit aussi au sujet de Allâh : « Il entend sans oreille, Il voit sans globe oculaire [c’est-à-dire sans œil] et Il parle sans langue. » [Al-Majâlis ar-Rifâ’iyyah]
– L’Imâm Al-Marjâni At-Toûniçi Al-Mâliki (m. 699 H.) a dit au sujet de Allâh: « Il ne voit pas par le biais d’un globe oculaire [œil] ni d’une paupière » . [I’tiqâdou Ahli s-Sounnah wa ‘Oulamâ-i l-Oummah]
– Le Chaykh Abou l-Mountahâ Al-Hanafi a dit : « La vue de Allâh qui est Son attribut qui est éternel, sans organe (lâ bi l-âlah)» [Dans son charh du livre Al-Fiqh Al-Akbar]
– Le Moufti de La Mecque, le Chaykh Ahmad Ibn Zaynî Dahlân dit au sujet de Allâh : « Il voit sans globe oculaire [c’est-à-dire sans oeil] ni paupières » [Charh Al-‘Aqîdah al-Moukhtasarah]
– Le Chaykh Mouhammad Ibn ‘Oumar Nawawi Al-Jâwi a dit : « Allâh voit sans œil » [Dans son livre Mirqâh Sou’oûdi t-Tasdîq]
– Le Mouhaddith ‘Abdou l-Bâsit Al-Fâkhoûri a dit : « [L’attribut de Allâh de] la vue : Il s’agit d’un attribut éternel sans début, propre à Son Être ta’âlâ, sans globe oculaire [œil] ni paupières » [Al-Kifâyah li Dhawi l-‘Inâyah]
– Le Chaykh Mouhammad Al-Mourâkouchi Al-Mâliki Al-Mouwaqqit a dit : « Le sens du fait que Allâh soubhânah entend et voit est qu’Il entend tout ce qui est audible que ce soit de faible volume ou fort, et qu’Il voit ce qui est visible que ce soit caché ou apparent, mais sans oreille et sans œil (‘ayn) et sans organe, car les organes font partis des attributs de ce qui entre en existence » [Al-Hablou l-Matîn ‘alâ Nadhmi l-Mourchidi l-Mou’în]
-Le Mouhaddith Al-Harari a dit : « L’ouïe (as-sam’) : C’est un attribut qui n’a pas de début, immuablement propre à Allâh. Il entend les sons par une ouïe qui n’a pas de début et qui n’a pas de fin, qui n’est pas telle que notre ouïe, qui n’est pas par le biais d’une oreille (oudhoun) ni d’un tympan.» [As-Sirât Al-Moustaqim]
– Retrouvez d’autres paroles de savants sur le thème : Allâh n’est pas un corps et n’a pas d’organes : ici .
– Retrouvez d’autres paroles de savants sur le thème : Attribuer le corps à Allâh est de la mécréance : ici .', '3ayn, a''younina, al-zajjaj, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'ومعنى: {بأعيننا} أي بإبصارنا إليك وحفظنا لك');

-- source: https://islamsunnite.net/limam-ath-thaalibi-explique-le-verset-wa-ja-a-rabbouka/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas concerné par le déplacement', 'Tha''alibi', 'وقوله تعالى {وَجَاءَ رَبُّكَ} معناه جاء أمره و قضاؤه', 'Sa parole ta’âlâ : “wa jâ-a Rabbouka” { وَجَآءَ رَبُّك }, cela signifie que viendront l’ordre et le jugement de ton Seigneur .', '', 'Dans son tafsîr du Qour-ân « Al-Jawâhir Al-Hissân», lors de l’explication du verset 22 de Soûrat Al-Fajr, l’Imâm Ath-Tha’âlibi a dit :
Informations utiles :
– L’Imâm, le Mouhaddîth (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Moufassir (exégète), le Loughawi (spécialiste de la langue Arabe) ‘Abdou-r-Rahmân ibnou Mouhammad ibnou Makhloûf Abî Zayd Ath-Tha’âlibi Al-Mâliki est né en 786 dans la région de Ouled Isser et il est décédé en 875 de l’Hégire à Alger (رحمه الله), c’est-à-dire il y a environ 560 ans. Il est un savant dans le madh-hab (école de jurisprudence) de l’Imam Mâlik. On peut citer parmi ses nombreux Chouyoûkh, le Hâfidh Waliyou d-Dîn Al-’Irâqi. De parmi ceux qui ont reçu de sa science : L’Imâm As-Sanoûçi (l’auteur du traité de croyance). Et de parmi les savants reconnus qui ont fait son éloge, le Hâfidh As-Sakhâwi. Il est enterré à Alger dans un Mausolée connu par le nom ” Sayyidi ‘Abdou r-Rahmân ”.
– Ici il explique le verset {وجاءَ ربُّكَ} « wa jâ-a rabbouka » [Soûrat Al-Fajr/22] et dit que cela signifie que c’est l’ordre de Allâh et Son jugement qui viendront. Et il poursuit en disant que cela n’est pas un déplacement de la part de Allâh.
– Ce verset ne veut pas dire que c’est Allâh lui-même qui viendra comme l’ont prétendu certains corporalistes. L’Imâm Ach-Chahrastâni a dit à ce sujet : « En ce qui concerne les expressions révélées (c’est-à-dire présentes dans le Qour-ân ou la Sounnah) telles que « al-istiwâ », « al-wajh », « al-yadayn », « al-janb », « al-majî » [comme dans le verset wa jâ-a Rabbouka], « al-ityân », « al-fawqiyyah » et d’autres que celles-ci, les corporalistes les prennent selon leur sens apparent, je veux dire telles qu’elles sont comprises lorsqu’elles sont employées au sujet des corps » [ Al-Milal wa n-Nihal ]
– De nombreux savants ont donné des explications similaires, parmi eux :
L’Imâm du Salaf, Ahmad Ibn Hambal comme le rapporte de lui Ibnou Kathîr d’après Al-Bayhaqi avec une chaîne de transmission confirmée [ Al-Bidâyah wa n-Nihâyah ], et l’Imâm as-Sa’idi Al-Hambali [ Al-Jawharou l-Mouhsal ], et l’Imâm Taqiyyou d-Dîn Al-Hisni [ Daf’ou choubahi man chabbaha wa tamarrad ], et beaucoup d’autres.
L’Imâm Al-Bayhaqi qui dit que le Majî de Allâh n’est pas un mouvement ou un déplacement [ Dans son livre Al-I’tiqâd ] et il explique qu’il est valable de se contenter d’accepter le majî sans comment (bilâ kayf) [ Dans son ouvrage Al-I’tiqâd ] en niant par cette expression le déplacement ou le mouvement à l’égard de Allâh.
L’Imâm Al-Jouwayni (m.478 H.) qui a dit : « Le sens du majî n’est pas le déplacement et la disparition [d’un endroit à autre], Allâh est exempt de cela, mais le sens de Sa parole { وجاء ربك } « wa jâ-a Rabbouk » c’est-à-dire l’ordre de ton Seigneur viendra, ainsi que Son jugement » [Dans son livre Al-Irchâd]
L’Imâm Al-Baghawi [ Dans son tafsîr ]
L’Imâm Ibnou l-Jawzi [ Dans son livre Daf’ou Choubahi t-Tachbîh ]
L’Imâm Al-Qourtoubi [ Dans son tafsîr ]
L’Imâm Ibnou Abî Jamrah (m.699 H.) qui a dit : « L a parole de Allâh ta’âlâ { وجاء ربك والملك } « wa jâ-a Rabbouka wa l-malak » c’est-à-dire : l’ordre de ton Seigneur viendra ; et ceci [ce genre de formulation] est très utilisé dans la langue arabe » [Dans son livre Bahjatou n-Noufoûs]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Il n’est pas permis d’attribuer à Allâh la venue (majî) et l’aller (dhahâb) [c’est-à-dire le mouvement et le déplacement] car cela fait partie des attributs des créatures et des caractéristiques des choses entrées en existence, ce sont donc deux attributs qui sont rejetés concernant Allâh ta’âlâ. Ne vois-tu pas comment [le prophète] Ibrahîm -عليه السلام- a argumenté sur le fait que ce qui se déplace d’un endroit à un autre endroit n’est pas Dieu, lorsqu’il a dit : {فَلَمَّا أَفَلَ قَالَ لَا أُحِبُّ الْآفِلِينَ} [ce qui signifie] «Je n’adore pas les choses qui disparaissent».» [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
L’Imâm Mahmoûd Al-Qoûnawi Al-Hanafi (m.771 H.) a dit : « Le sens de la parole de Allâh ta’âla {وجاء ربك} « wa jâ-a Rabbouka » est : viendra l’ordre de ton Seigneur» [Al-Qalâ-id fî Charh Al-‘Aqâ-id]
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
Ibnou l-Bannâ Al-Hambali qui a dit : « Celui qui prend le nouzoûl dans le sens de quitter un endroit pour en occuper un autre, et du déplacement alors c’est de la mécréance » [Al-Ousoûlou l-Moujarradah].', 'algérie, allah, aqida, aube'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وقوله تعالى {وَجَاءَ رَبُّكَ} معناه جاء أمره و قضاؤه');

-- source: https://islamsunnite.net/ibn-battouta-decrit-la-celebration-du-mawlid-a-la-mecque/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La commémoration du Mawlid à La Mecque.', 'Ibn Battouta', 'قاضي مكة العالم الصالح العابد نجم الدين محمد بن إمام العالم محيي الدين الطبري، وهو فاضل كثير الصدقات والمؤاساة للمجاورين، حسن الأخلاق كثير الطواف والمشاهدة للكعبة الشريفة، يطعم الطعام الكثير في المواسم المعظمة، وخصوصًا في مولد رسول الله صلى الله عليه وسلم، فإنه يطعم فيه شرفاء مكة وكبراءها وفقراءها وخدام الحرم الشريف وجميع المجاورين.', 'Le Qâdî (juge) de La Mecque est le savant, l’adorateur vertueux [de Allâh] Najmou d-Dîn Mouhammad fils de l’Imâm, du savant Mouhyi d-Dîn At-Tabari. C’est un homme honorable qui fait preuve de beaucoup de charité et de réconfort envers les visiteurs du Haram (enceinte sacrée) ; il a un excellent comportement et pratique beaucoup de tours rituelles (tawâf) en allant régulièrement voir la Ka’bah honorée. Il distribue beaucoup de repas dans les grandes occasions, particulièrement lors de la Commémoration du Mawlid du Messager de Allâh (صلى الله عليه وسلم). En cette occasion, il offre des repas aux Chérifiens (descendants du Prophète) de La Mecque, aux notables comme aux pauvres, à ceux qui travail au sein de La Mosquée Sacrée et à l’ensemble des visiteurs séjournant dans l’enceinte sacrée.', '', 'Dans le récit de son voyage « ar-Rihlah » Ibn Battoûta relate :
Informations utiles :
– Le Chaykh, le Faqîh (spécialiste de la jurisprudence), le savant digne de confiance, Aboû ‘Abdi l-Lâh Mouhammad Ibnou ‘Abdi l-Lâh Ibnou Mouhammad Ibnou Ibrâhîm Al-Lawâti At-Tanji Al-Maghribi connu sous le nom de Ibnou Battoûta est né en 703 à Tanger et il est décédé en 779 de l’Hégire à Marrakech (رحمه الله), c’est-à-dire il y a plus de 650 ans. Il est connu pour être l’un des plus grands explorateurs de l’histoire. Il a voyagé durant près de 30 ans, du Maroc, jusqu’en Chine en passant par l’Arabie. Il a visité de nombreuses villes et pays : Mali, Tanzanie, Turquie, Malaisie, Inde, Irak, Syrie, Egypte, Maldives etc. et il y rencontra de nombreux savants.
– Lorsqu’il raconte ses voyages à La Mecque, il décrit et fait l’éloge du Qâdî (juge) Najmou d-Dîn Mouhammad le Qâdî de La Mecque, qui commémorait le Mawlid en compagnie de ceux qui travaillaient au sein de la Mosquée al-Harâm (la grande mosquée de La Mecque), les descendants du Prophète (صلى الله عليه وسلم), les notables et les pauvres.
– Ce témoignage de Ibn Battoûta nous indique que le Mawlid était commémoré en Arabie au 8ème siècle de l’Hégire par l’ensemble des musulmans. D’autres passages du livre attestent également de cela. En effet dans un autre passage Ibn Battoûta rapporte que les musulmans célébraient le Mawlid au sein de La mosquée sacrée de La Mecque et qu’en cette occasion ils ouvraient la porte de la Ka’bah.
Ibn Battoûtah a dit : « On ouvrait la porte de la Ka’bah tout les vendredi après la prière [du joumou’ah] et le jour du Mawlid du prophète (صلى الله عليه وسلم) » [Ar-Rihlah]
– Et bien avant lui, au 6ème siècle, l’explorateur Ibn Joubayr décrit également le Mawlid à La Mecque en disant : « Ce lieu béni (c’est-à-dire la maison du prophète) est ouvert au grand public qui y rentre pour en rechercher la bénédiction (tabarrouk), chaque lundi du mois de rabî’ou l-awwal. Car il s’agit du mois dans lequel a eu lieu la naissance du prophète (صلى الله عليه وسلم), et c’est durant le jour mentionné (à savoir un lundi) qu’est né le prophète (صلى الله عليه وسلم). À cette occasion, tous les lieux bénis sont ouverts, et c’est un jour particulièrement mémorable à La Mecque » [ Ar-Rihlah ]
– Le Mawlid compte de parmi les bonnes innovations que les savants de l’Islâm ont approuvé. Parmi eux :
Le Chaykh de l’Imâm An-Nawawi, le Hâfidh Aboû Châma [ Al-Bâ’ithou ‘alâ Inkâri l-bida’ wa l-hawâdith ],
L’Imâm As-Souyoûti [ Housnou l-Maqsid fi ‘Amali l-Mawlid ],
L’Imâm Ibn Hajar Al-‘Asqalâni [ Rapporté par As-Souyoûti ],
Le Hafîdh As-Sakhawi [ Al-Ajwibatou l-Mardiyyah ]
Le Chaykh Ibn Hajar Al-Haytami [ Rapporté par Isma’îl Haqqi ]
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
– L’Imâm As-Souyoûti a d’ailleurs résumé tout cela en disant : « la commémoration de la naissance (Mawlid) à l’origine consiste en le rassemblement des gens, la récitation de ce qu’il est possible de réciter du Qour-ân, la narration des nouvelles rapportées au sujet du début de l’histoire du Prophète et ce qui est advenu comme signes à sa naissance, à la suite de quoi il leur est présenté de la nourriture qu’ils consomment puis partent sans rien ajouter à cela. Ceci compte parmi les bonnes innovations pour laquelle celui qui la fait sera récompensé, et ce, pour ce que cela comporte comme glorification du degré du Prophète (صلى الله عليه وسلم), et comme manifestation de joie et de réjouissance pour sa noble naissance » [ Housnou l-Maqsid fi ‘Amali l-Mawlid ].
– Le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ] .
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ].
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .', 'al-louati, allah, aqida, berbère'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قاضي مكة العالم الصالح العابد نجم الدين محمد بن إمام العالم محيي الدين الطبري، وهو فاضل كثير الصدقات والمؤاساة للمجاورين، حسن الأخلاق كثير الطواف والمشاهدة للكعبة الشريفة، يطعم الطعام الكثير في المواسم المعظمة، وخصوصًا في مولد رسول الله صلى الله عليه وسلم، فإنه يطعم فيه شرفاء مكة وكبراءها وفقراءها وخدام الحرم الشريف وجميع المجاورين.');

-- source: https://islamsunnite.net/chaykh-zakariyya-al-ansari-confirme-que-allah-existe-sans-endroit-et-quil-nest-pas-un-corps/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh existe sans endroit, Il n’est pas un corps.', 'Ansari (Zakariyya)', 'إنَّه (أي الله) ليس بجسمٍ ولا عَرَضٍ ولا في مكانٍ ولا زمان', '« Certes, Allâh n’est pas un corps ni une caractéristique qui advient aux corps. Il n’est pas dans un endroit ni sujet au temps ».', '', 'Dans son commentaire de « Ar-Riçâlatou l-Qouchayriyyah », Chaykh Al-Islâm Zakariyyâ Al-Ansâri a dit :
Informations utiles :
– Chaykh Al-Islâm, le Qâdî (juge), le Hâfidh (spécialiste du Hadîth), le Moufassir (exégète), le Faqîh (spécialiste de la jurisprudence) Zakariyyâ Ibn Mouhammad Ibn Ahmad Al-Ansâri Al-Misri Al-Azhari Ach-Châfi’i est né en 824 et il est décédé en 926 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 500 ans. Il étudia auprès de très grands savants comme l’Imâm Al-Boulqîni, l’Imâm Ibn Hajar Al-‘Asqalâni… Et on compte de parmi ses élèves, le Chaykh Ibn Hajar Al-Haytami…
Le Chaykh Mourâd Youçoûf Al-Hanafi a dit de lui : « Le Chaykh, l’Imâm profitable […] le savant, Al-‘Allâmah (l’illustre savant), le modèle (qoudwah) […] le Faqîh (spécialiste de la jurisprudence), le Hâfidh (spécialiste de la science du hadîth), le mouhaddith, le moufassir (l’exégète), le waliyy, le vertueux […] le juge des juges (Qâdi l-Qoudâh) » [Fath-ou l l-Bârî fîma khtassa l-Lâh bihi ach-Chaykh Zakariyyâ Al-Ansâri]
Ibnou Iyyâs a dit à son sujet : « Chaykh Al-Islâm et des musulmans, le moufti, le reste des salafs, le soutien des khalafs » [Badâ-i’ou z-Zouhoûr]
Az-Zirikli a dit de lui : « Chaykh Al-Islâm, le Qâdî (juge), le moufassir (exégète), il est de parmi les houffâdh du hadîth» [Al-A’lâm]
– Ici, il confirme que Allâh n’est pas un corps, ni une caractéristique des corps (‘arad), qu’Il existe sans endroit et qu’Il ne dépend pas du temps.
– Dans ce même ouvrage, le Chaykh Zakariyyâ Al-Ansâri a dit : « Allâh ta’âlâ dit : {Koullou chay-in hâlikoun illâ Wajhah} [ce qui signifie : « Tout disparaîtra sauf Son Wajh »], cela n’est pas dans le sens de l’organe (du visage) mais cela est dans le sens de l’Être (adh-dhât), c’est-à-dire [tout disparaîtra] sauf Son Être ». [ Dans son commentaire de Ar-Riçâlah al-Qouchayriyyah ]
– Le Chaykh Zakariyyâ Al-Ansâri a dit également : « Le terme « istawâ » peut être employé [dans la langue arabe] pour dire s’assoir (jalassa), se redresser (i’tadala), dominer (istawlâ), être élevé par l’endroit (‘alâ makânan) ou [êtré élevé] par le mérite (routbatan), vouloir (qasada) comme dans Sa parole ta’âlâ : « thoumma stawâ ila s-samâ ». Les deux premiers sens [c’est-à-dire le sens de la position assise et du redressement] ainsi que le quatrième dans le sens d’être élevé par l’endroit est impossible au sujet de Allâh ta’âlâ contrairement aux autres sens cités [c’est-à-dire le sens de la domination (istawlâ), le sens d’être élevé par le mérite (‘alâ routbatan) et vouloir (qasada)]. Et al-‘arch (trône) dans la langue arabe signifie le lit du roi, et le toit. » [ Dans son commentaire de Ar-Riçâlah al-Qouchayriyyah ]
– L’émargement (al-hâchiyah) de cette édition à été réalisée par le Chaykh Moustafâ Al-‘Aroûçi Al-Misri Al-Azhari Ach-Châfi’i qui est décédé en 1293 de l’Hégire (رحمه الله).', 'al misri, al qouchayriyya, al qouchayriyyah, al-qochayri'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'إنَّه (أي الله) ليس بجسمٍ ولا عَرَضٍ ولا في مكانٍ ولا زمان');

-- source: https://islamsunnite.net/limam-ibn-hajar-al-asqalani-approuve-la-celebration-du-mawlid/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Mawlid est une bonne innovation', 'Les Chafi''ites', '« وقد سئل شيخ الإسلام حافظ العصر أبو الفضل ابن حجر عن عمل المولد ، فأجاب بما نصه :', '', '', 'Dans son recueil de fatwâ : « Al-Hâwi li l-Fatâwi », dans le chapitre : « Housnou l-Maqsid fî ‘Amali l-Mawlid » (Le bon objectif dans l’accomplissement du Mawlid), après avoir fait lui-même l’éloge du Mawlid ( voir l’article à ce sujet : ici ), le Hâfidh As-Souyoûti a dit:', '3asqalani, 3oulama, 3oumar, ahlou s-sounnah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« وقد سئل شيخ الإسلام حافظ العصر أبو الفضل ابن حجر عن عمل المولد ، فأجاب بما نصه :');

-- source: https://islamsunnite.net/limam-ibn-hajar-al-asqalani-approuve-la-celebration-du-mawlid/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le Mawlid est une bonne innovation', 'Les Chafi''ites', 'أصل عمل المولد بدعة لم تنقل عن أحد من السلف الصالح من القرون الثلاثة ، ولكنها مع ذلك قد اشتملت على محاسن وضدها ، فمن تحرى في عملها المحاسن وتجنب ضدها كان بدعة حسنة وإلا فلا ، قال : وقد ظهر لي تخريجها على أصل ثابت وهو ما ثبت في الصحيحين من أن النبي صلى الله عليه وسلم قدم المدينة فوجد اليهود يصومون يوم عاشوراء ، فسألهم فقالوا : هو يوم أغرق الله فيه فرعون ونجى موسى فنحن نصومه شكرا لله تعالى ، فيستفاد منه فعل الشكر لله على ما من به في يوم معين من إسداء نعمة أو دفع نقمة ، ويعاد ذلك في نظير ذلك اليوم من كل سنة ، والشكر لله يحصل بأنواع العبادة كالسجود والصيام والصدقة والتلاوة ، وأي نعمة أعظم من النعمة ببروز هذا النبي نبي الرحمة في ذلك اليوم ؟ وعلى هذا فينبغي أن يتحرى اليوم بعينه حتى يطابق قصة موسىفي يوم عاشوراء ، ومن لم يلاحظ ذلك لا يبالي بعمل المولد في أي يوم من الشهر ، بل توسع قوم فنقلوه إلى يوم من السنة ، وفيه ما فيه . فهذا ما يتعلق بأصل عمله . وأما ما يعمل فيه فينبغي أن يقتصر فيه على ما يفهم الشكر لله تعالى من نحو ما تقدم ذكره من التلاوة والإطعام والصدقة وإنشاد شيء من المدائح النبوية والزهدية المحركة للقلوب إلى فعل الخير والعمل للآخرة »', '« Le Chaykh de l’Islâm, le Hâfidh de son époque Abou l-Fadl Ibnou Hajar fut interrogé au sujet de l’organisation du Mawlid. Il répondit ce qui suit :', '', 'L’organisation du Mawlid à l’origine est une innovation qui n’est rapportée d’aucun des gens du Salaf vertueux, ceux des trois premiers siècles. Malgré cela, elle comporte de bons aspects et des aspects qui leur sont contraires. Dans le cas où les gens ne font dans leur acte que les bons aspects et se gardent de leurs opposés, c’est une bonne innovation (bid’ah haçanah). Dans le cas contraire, ça ne l’est pas. Il m’a semblé bon d’extraire à ce sujet des hadîth confirmés. C’est ce qui est confirmé dans les deux Sahîh [de Al-Boukhâri et Mouslim] que le Prophète (صلى الله عليه وسلم) vint à Médine et y trouva les juifs jeûnant le jour de ‘Âchoûrâ. Il les interrogea et ils répondirent : c’est le jour où Allâh a fait périr Pharaon et a sauvé Moûçâ. Nous le jeûnons pour remercier Allâh ta’âlâ.
On tire de cela la permission d’accomplir un acte de remerciement envers Allâh pour ce qu’Il a accordé par grâce en un jour précis, que ce soit un bienfait accordé ou un mal repoussé et la permission de l’accomplir de nouveau la même journée de chaque année. Le remerciement envers Allâh s’effectue par différentes sortes d’adorations comme la prosternation, le jeûne, l’aumône, la récitation. Et quel plus grand bienfait que l’apparition de ce Prophète, le Prophète de la miséricorde en ce jour-là. Ainsi il convient de rechercher et de s’assurer de la journée elle-même pour que cela soit conforme à l’événement arrivé à Moûçâ au jour de ‘Âchoûrâ. Celui qui ne s’assure pas de cela et n’y prête pas attention organisera le Mawlid n’importe quel jour du mois, ou même certains le généraliseront et le feront n’importe quel jour de l’année et cela comportera ce que cela comportera.
Voilà concernant l’origine de l’organisation de la fête et ce qu’on y fait. Il convient donc de se limiter à ce qui représente un remerciement de Allâh ta’âlâ, de l’ordre de ce qui a été cité plus haut, à savoir la récitation, la présentation de nourriture et le chant de quelques chants élogieux rappelant le détachement des plaisirs du bas-monde et touchant les cœurs pour les inciter à faire le bien et à œuvrer pour l’au-delà»
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Moufassir (spécialiste de l’exégèse), le Faqîh (spécialiste de la jurisprudence), Abou l-Fadl ‘Abdou r-Rahmân ibnou Abî Bakr Jalâlou d-Dîn as-Souyoûti est un grand savant Chafi’ite reconnu par toute la communauté musulmane. Il est né en 849 au Caire et il est décédé en 911 de l’hégire au Caire (رحمه الله) c’est-à-dire il y a environ 520 ans. Certains l’ont désigné comme le moujaddid du 10ème siècle de l’hégire (c’est-à-dire celui qui revitalise la science de la religion).
– Il fait parti des nombreux grands savants qui ont fait l’éloge de la célébration du Mawlid [ Housnou l-Maqsid fî ‘Amali l-Mawlid ] et qui ont distingué les bonnes innovations des mauvaises innovations [ Housnou l-Maqsid ].
– Chaykhou l-Islâm, Amîr al-Mouminîn fi l-hadîth (le Prince des croyants dans la science du hadîth) Chihâb ad-Dîn Abou l-Fadl Ahmad Ibnou ‘Ali Ibnou Hajar Al-‘Asqalâni est né en 773 et il est décédé en 852 de l’hégire (رحمه الله) c’est-à-dire il y a plus de 590 ans. C’est un très grand spécialiste de la science du hadîth qui a écrit de nombreux ouvrages. Il est du madh-hab (Ecole de jurisprudence) de l’Imam Ach-Châfi’i. Son livre « Fath Al-Bârî » est incontournable, c’est le plus célèbre commentaire du Sahîh Al-Boukhâri. Consultez sa biographie : ici .
L’Imâm As-Souyoûti a dit de lui : « Chaykhou l-Islâm, l’Imâm des houffâdh (spécialistes de la science du hadîth) de son temps, le Hâfidh (spécialiste du hadîth) des contrées Egyptienne mais il est aussi le Hâfidh de tout le bas-monde, le juge des juges » [Tabaqât Al-Houffâdh].
Le Hâfidh Ibn Nasrou d-Dîn Ad-Dimachqi Ach-Châfi’i a dit à son sujet : « Notre Maître (mawlanâ wa sayyidounâ), Chaykhou l-Islâm, le grand Hâfidh (spécialiste de la science du hadîth), celui qui supporte la sounnah, l’Imâm des Imams, le juge des juges de la oummah » [Al-Jawâhir].
– Ici, l’Imâm Ibn Hajar explique clairement que le Mawlid est une bonne innovation.
– Dans l’un de ses ouvrages il explique les différents jugements des innovations en indiquant qu’une innovation peut être bonne [ Fathou l-Bârî ].
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
– Ainsi le Mawlid compte de parmi les bonnes innovations, et le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » (Rapporté par Mouslim) [ Rapporté par Mouslim ] .
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ].
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .
– Retrouvez de nombreuses paroles de savants concernant le Mawlid : ici .', '3asqalani, 3oulama, 3oumar, ahlou s-sounnah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'أصل عمل المولد بدعة لم تنقل عن أحد من السلف الصالح من القرون الثلاثة ، ولكنها مع ذلك قد اشتملت على محاسن وضدها ، فمن تحرى في عملها المحاسن وتجنب ضدها كان بدعة حسنة وإلا فلا ، قال : وقد ظهر لي تخريجها على أصل ثابت وهو ما ثبت في الصحيحين من أن النبي صلى الله عليه وسلم قدم المدينة فوجد اليهود يصومون يوم عاشوراء ، فسألهم فقالوا : هو يوم أغرق الله فيه فرعون ونجى موسى فنحن نصومه شكرا لله تعالى ، فيستفاد منه فعل الشكر لله على ما من به في يوم معين من إسداء نعمة أو دفع نقمة ، ويعاد ذلك في نظير ذلك اليوم من كل سنة ، والشكر لله يحصل بأنواع العبادة كالسجود والصيام والصدقة والتلاوة ، وأي نعمة أعظم من النعمة ببروز هذا النبي نبي الرحمة في ذلك اليوم ؟ وعلى هذا فينبغي أن يتحرى اليوم بعينه حتى يطابق قصة موسىفي يوم عاشوراء ، ومن لم يلاحظ ذلك لا يبالي بعمل المولد في أي يوم من الشهر ، بل توسع قوم فنقلوه إلى يوم من السنة ، وفيه ما فيه . فهذا ما يتعلق بأصل عمله . وأما ما يعمل فيه فينبغي أن يقتصر فيه على ما يفهم الشكر لله تعالى من نحو ما تقدم ذكره من التلاوة والإطعام والصدقة وإنشاد شيء من المدائح النبوية والزهدية المحركة للقلوب إلى فعل الخير والعمل للآخرة »');

-- source: https://islamsunnite.net/limam-an-nawawi-confirme-que-ceux-qui-suivent-une-religion-autre-que-lislam-sont-mecreants/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La seule religion valable est l’Islâm.', 'Les Chafi''ites', 'وأن من لم يكفر من دان بغير الإسلام كالنصارى ، أو شك في تكفيرهم ، أو صحح مذهبهم ، فهو كافر ، وإن أظهر مع ذلك الإسلام واعتقده', 'Celui qui ne considère pas mécréant, celui qui suit une religion autre que l’Islâm comme les Nasârâ, ou qui doute de leur mécréance ou considère leur voie comme étant valable, est lui-même un mécréant, même s’il manifeste l’Islâm et prétend y croire', '', 'Dans son livre « Rawdat At-Tâlibîn » [tome 10 page 70 de cette édition] dans le chapitre de l’apostasie, l’Imâm An-Nawawi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence) Aboû Zakariyyâ Mouhyi d-Dîn Yahyâ Ibnou Charaf An-Nawawi est un savant de référence. Il est né en 631 et il est décédé en 676 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 750 ans. C’est un savant dans l’école de jurisprudence Chafi’ite. Son commentaire du sahîh de l’Imâm Mouslim est très célèbre. Il a écrit d’autres livres tels que « Riyâd as-Sâlihîn » (le jardin des vertueux), et le recueil de 40 hadîth si connus.
Tâjou d-Dîn As-Soubki le surnommait « Chaykhou l-Islâm » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « Le Moufti de la Oummah, Chaykhou l-Islâm […] le Hâfidh (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chafi’ite, l’ascète, l’un des étendards (de la religion) » [Târîkhou l-Islâm]. Il a dit également : « Le Chaykh, le modèle (qoudwah) […] le Hâfidh (spécialiste de la science du hadîth), l’ascète, le pieux adorateur, le Faqîh (spécialiste de la jurisprudence), le moujtahid versé dans l’adoration de Son Seigneur, Chaykhou l-Islâm » [Siyar A’lâmi n-Noubalâ]
Ibn Kathîr a dit à son sujet : « Le Chaykh, l’Imâm, l’illustre savant (al-‘Allâmah), le Hâfidh (spécialiste de la science du hadîth) l’honorable Faqîh (spécialiste de la jurisprudence) […] l’un des pieux adorateurs et ascètes» [Tabaqâtou ch-Châfi’iyyah]
– Ici il donne un jugement très important : celui qui suit une autre religion que l’Islâm est un mécréant ; et celui qui ne considère pas mécréant une personne qui suit une autre religion que l’Islâm est lui même un mécréant, même s’il prétend être musulman ; il en est de même pour celui qui doute de la mécréance de quelqu’un qui suit une autre religion que l’Islâm.
– D’autres savants ont tenu des propos similaires :
Al-Qâdî ‘Iyâd Al-Mâliki a dit : « Il y a unanimité sur la mécréance de celui qui ne déclare pas mécréant un de parmi les Nasârah, de parmi les Yahoûd ou de tout ceux qui ont contredit la religion des musulmans ; ou bien s’il ne se prononce pas [comme en disant : je ne dis pas qu’il est mécréant ni qu’il n’est pas mécréant] , ou s’il doute de leur mécréance » [Dans son livre Ach-Chifâ].
Al-Qâdî ‘Iyâd a dit également : « Nous déclarons mécréant celui qui prend pour religion autre que l’Islâm de parmi les religions, ou celui qui ne se prononce pas à leur sujet [comme en disant : je ne dis pas qu’ils sont mécréants ni qu’ils ne sont pas mécréants] ou celui qui doute [de leur mécréance], ou celui qui considère leurs voies comme étant valable, même s’il manifeste l’Islâm en apparence et qu’il prétend y croire » [Dans son livre Ach-Chifâ].
L’Imâm Al-Ghazâli a dit : « Exposé concernant celui qu’il est obligatoire de déclarer mécréant de parmi les groupes […] tout ceux qui démentent [le prophète] Mouhammad (صلى الله عليه وسلم) sont mécréants, c’est-à-dire qu’ils resteront éternellement en enfer [s’ils meurent en étant mécréant], […] Les Yahoûd, les Nasârâ, les gens de toutes les autres religions [en dehors de l’Islâm] tels que les Mazdéens et les adorateurs d’idoles et autres qu’eux, leur déclaration de mécréance est issue du Livre (le Qour-ân) et il y a unanimité à ce sujet au sein de la Oummah » [Dans son livre Al-Iqtisâd fi l-I’tiqâd].
L’Imâm Al-Ghazâli a dit également : « Les yahoûd et les Nasârâ sont mécréants du fait de leur démentis du Messager (صلى الله عليه وسلم) » [Dans son livre Faysal At-Tafriqah].
Le Mouhaddith Ahmad Ibn ‘Oumar Al-Qourtoubi a dit : « Ne vois-tu pas que celui qui confirme l’unicité de Allâh ta’âlâ mais qui ne croit pas au prophète [Mouhammad] (صلى الله عليه وسلم), sa croyance envers Allâh ne lui est pas profitable, ni le fait qu’il confirme Son unicité, et qu’il compte de parmi les mécréants par unanimité, de façon catégorique ?!» [Dans son livre Al-Moufhim].
L’Imâm Ibnou Jouzayy a dit : « Il n’y a pas de divergence au sujet de la déclaration de mécréance de celui qui est sur la religion des Yahoûd, ou des Nasârâ, ou des Mazdéens » [Dans son livre Al-Qawânîn Al-Fiqhiyyah].
Le Chaykh Ibn Hajar Al-Haytami a tenu avec exactitude les mêmes propos que l’Imâm An-Nawawi en disant : « Celui qui ne considère pas mécréant, celui qui suit une religion autre que l’Islâm comme les Nasârâ, ou qui doute de leur mécréance ou considère leur voie comme étant valable, est lui-même un mécréant, même s’il manifeste l’Islâm et prétend y croire » [Dans son livre Al-A’lâm]
Le Chaykh Al-Bouhoûti Al-Hambali a dit : « Devient mécréant celui qui ne considère pas mécréant ceux qui prennent autre que l’Islâm pour religion, ou qui doute de leur mécréance, ou qui considère leur voie comme étant valable » [Dans son livre Charh Mountaha l-Irâdât].
Le Mouhaddith ‘Abdou l-Lâh Al-Harari a dit : « Les savants de l’Islâm ont été unanimes à juger mécréant celui qui a autre chose que l’Islâm pour religion et ils ont été unanimes à juger mécréant celui qui ne le juge pas mécréant, celui qui en doute ou bien celui qui ne se prononce pas comme en disant : « moi, je ne dis pas qu’il est mécréant ni qu’il n’est pas mécréant ». » [Dans son livre As-Sirât Al-Moustaqim].
– Allâh ta’âlâ dit dans soûrat Al-Fath / 6 :', 'allah, an-nawawi, an-nawawiyy, apostasie'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وأن من لم يكفر من دان بغير الإسلام كالنصارى ، أو شك في تكفيرهم ، أو صحح مذهبهم ، فهو كافر ، وإن أظهر مع ذلك الإسلام واعتقده');

-- source: https://islamsunnite.net/le-chaykh-al-mardawi-confirme-que-le-tawassoul-est-permis-et-encourage-par-limam-ahmad/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'le tawassoul chez les salafs', 'Mardawi', 'يجوز التوسل بالرجل الصالح على الصحيح من المذهب، وقيل: يُستحب. قال الإمام أحمد للمروذي : يتوسل بالنبي (صلى الله عليه وسلم) في دعائه وجزم به في المستوعب وغيره.', '« Il est permis de faire le tawassoul par le degré d’un homme vertueux, selon l’avis correct du Madh-hab [Hanbalite]. Et il a été dit que cela est recommandé (moustahabb).', '', 'Dans son livre « Al-Insâf » (tome 2, page 456 de cette édition), le Chaykh Al-Mardâwi Al-Hanbali a dit :
L’Imâm Ahmad [Ibn Hanbal] a dit à Al-Marwadhi : « Accomplis le tawassoul par le Prophète ( صلى الله عليه وسلم ) lorsque tu fais des invocations (dou’â) »
Informations utiles :
– Al-‘Allâmah (l’illustre savant), le Faqîh (spécialiste de la jurisprudence), le Chaykh ‘Alâ-ou d-Dîn Abou l-Haçan ‘Ali Ibn Soulaymân Al-Mardâwi Ad-Dimachqi est né en 817 et il est décédé en 885 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 550 ans. Il était un savant reconnu de l’école de l’Imâm Ahmad Ibn Hanbal.
– Ici, il dit que l’avis retenu dans l’école de jurisprudence (madh-hab) Hanbalite est qu’il est permis de faire le tawassoul par le degré d’un homme vertueux, et que cette pratique est recommandée.
– Puis il dit que l’Imâm Ahmad Ibn Hanbal incitait de faire le tawassoul par le Prophète ( صلى الله عليه وسلم ).
– Il est rapporté que l’Imâm Ahmad réalisait lui-même le tawassoul par le prophète ( صلى الله عليه وسلم ). En effet le Chaykh Al-Bouhoûti Al-Hambali a dit : « Et il n’y a pas de problème dans le tawassoul par les vertueux (Sâlihîn), comme il l’a mentionné (c’est-à-dire l’imâm Ahmad Ibn Hanbal) dans son mansik qu’il a écrit pour Al-marwadhi : qu’il intercède par le Messager صلى الله عليه وسلم dans ses dou’â, et cela est confirmé dans Al-moustaw’ib et d’autres (livres) que celui-ci » [Kach-châf Al-Qinâ’]
– L’Illustre savant du salaf, le Moujtahid (jurisconsulte), l’Imâm Aboû ‘Abdi l-Lâh Ahmad Ibnou Mouhammad Ibnou Hanbal Ach-Chaybâni est né en 164 à Baghdâd et il est décédé en 241 de l’Hégire à Baghdâd (رحمه الله) c’est-à-dire il y a plus de 1190 ans. Il est l’Imâm de l’école Hanbalite, l’un des quatre Imams.
– Le Chaykh Aboû Bakr Al-Marwadhi était un contemporain de l’Imâm Ahmad Ibn Hanbal, il est décédé en 238 de l’Hégire (رحمه الله).
– Le tawassoul est le fait de demander à Allâh l’obtention d’un profit ou l’empêchement d’une nuisance et ce, par la mention du nom d’un prophète ou d’un saint, par honneur pour celui par lequel le tawassoul est fait. Faire le tawassoul est permis en leur présence et en leur absence tout comme l’indique les preuves selon la Loi de l’Islâm. Le tawassoul ne constitue donc pas une adoration pour autre que Allâh.
– Le prophète (صلى الله عليه وسلم) enseigna lui-même le tawassoul aux compagnons et les compagnons le pratiquaient également après son décès (صلى الله عليه وسلم). [ Rapporté par At-Tabarâni ]
– Ainsi, le tawassoul est une pratique qui est permise selon l’unanimité des musulmans comme le rapporte l’Imâm Taqiyyou d-Dîn As-Soubki [ Dans son livre Chifâ-ou s-Saqâm ]
– L’adoration (al-‘Ibâdah) : c’est l’extrême limite de la crainte et de la soumission, comme l’a mentionné l’Imâm Moujtahid, le Hâfidh (spécialiste du Hadîth), le Loughawi (spécialiste de la langue Arabe) Taqiyyou d-Dîn As-Soubki.
Ainsi le simple fait d’appeler (nidâ) un vivant ou un mort ne constitue pas une adoration d’autre que Allâh, ni le simple fait de glorifier (ta’dhîm) ou de faire al-istighâthah (la recherche du renfort) par autre que Allâh. De même, le simple fait de visiter la tombe d’un saint pour le tabarrouk (la recherche des bénédictions) ne constitue pas une adoration d’autre que Allâh. De même, le simple fait de demander ce qu’il n’est pas habituel de demander aux gens ne constitue pas une adoration d’autre que Allâh. De même, la formule de al-isti’ânah (demande d’aide) à autre que Allâh ta’âlâ ne constitue pas une adoration d’autre que Allâh. Egalement, la simple humilité n’est pas une adoration envers autre que Allâh car sinon, tous ceux qui font preuve d’humilité avec les rois et les nobles seraient devenus mécréants.
C’est-à-dire que tout cela n’est pas du chirk (le fait d’attribuer des associés à Allâh), car la définition de l’adoration (al-‘ibâdah) selon les spécialistes de la langue ne s’applique pas à tout cela. En effet, pour eux, l’adoration (al-‘ibâdah) comme nous venons de le voir est l’obéissance avec la soumission. Voir à ce sujet l’explication de l’Imâm du Salaf, le Loughawi (spécialiste de la langue Arabe) Aboû Is-hâq Ibrâhîm Az-Zajjâj : ici .
– Ainsi, il ne convient pas de prêter attention aux propos virulents des wahhabites qui interdisent fermement le tawassoul et qui considèrent même celui qui le pratique mouchrik (associateur), kâfir (mécréant), tout comme Al-Fawzân (wahhabite) l’a dit : « Il n’est pas permis de faire le tawassoul par le degré (bi jâhi) du prophète (صلى الله عليه وسلم), ni par le degré d’autres que lui, car ceci est une innovation (bid’ah), et il n’y a aucune preuve de cette pratique, et ceci est du chirk (association) » [ Dans son livre Fatâwâ Al-‘Aqîdah ]
– Sachez également que Al-Albâni (wahhabite), malgré son hostilité, a tout de même confirmé que l’Imâm Ahmad Ibn Hambal considérait permis le tawassoul par le biais du prophète (صلى الله عليه وسلم). Il a dit : « L’Imâm Ahmad a jugé permis le tawassoul par le biais du prophète (صلى الله عليه وسلم) uniquement, et d’autres comme l’Imâm Ach-Chawkâni l’ont jugé permis par lui (c’est-à-dire le prophète) et par d’autres que lui de parmi les prophètes et les vertueux » [Dans son livre At-Tawassoul anwâ’ouhou wa ahkâmouh]
– Retrouvez d’autres articles au sujet du tawassoul et du tabarrouk : ici .', 'ahmad, ahmad ibn hambal, ahmad ibn hanbal, ahmed'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'يجوز التوسل بالرجل الصالح على الصحيح من المذهب، وقيل: يُستحب. قال الإمام أحمد للمروذي : يتوسل بالنبي (صلى الله عليه وسلم) في دعائه وجزم به في المستوعب وغيره.');

-- source: https://islamsunnite.net/limam-ibn-al-jawzi-refute-ceux-qui-renient-linterpretation-ta-wil/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’interprétation des textes.', 'Ibn Al-Jawzi', '« وكيف يمكن أن يقال إن السلف ما استعملوا التأويل وقد ورد في الصحيح عن سيد الكونين صلى الله عليه وسلم أنه قدّم له ابن عباس وَضوءه فقال:{ من فعل هذا}, فقال: قلت: أنا يا رسول الله, فقال:{ اللهم فقّهه في الدين وعلّمه التأويل} , فلا يخلو إما أن يكون الرسول أراد أن يدعو له أو عليه, فلا بد أن تقول أراد الدعاء له لا دعاءً عليه, ولو كان التأويل محظورا لكان هذا دعاء عليه لا له. ثم أقول: لا يخلو إما أن تقول: إن دعاء الرسول ليس مستجابا فليس بصحيح, وإن قلت: إنه مستجاب فقد تركت مذهبك وبَطَل قولك: إنهم ما كانوا يقولون بالتأويل,', '', '', 'Dans son livre « Al-Majâlis » (page 172 de cette édition) l’Imâm Ibnou l-Jawzi a dit :', 'al-majalis, allah, aqida, croyance'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« وكيف يمكن أن يقال إن السلف ما استعملوا التأويل وقد ورد في الصحيح عن سيد الكونين صلى الله عليه وسلم أنه قدّم له ابن عباس وَضوءه فقال:{ من فعل هذا}, فقال: قلت: أنا يا رسول الله, فقال:{ اللهم فقّهه في الدين وعلّمه التأويل} , فلا يخلو إما أن يكون الرسول أراد أن يدعو له أو عليه, فلا بد أن تقول أراد الدعاء له لا دعاءً عليه, ولو كان التأويل محظورا لكان هذا دعاء عليه لا له. ثم أقول: لا يخلو إما أن تقول: إن دعاء الرسول ليس مستجابا فليس بصحيح, وإن قلت: إنه مستجاب فقد تركت مذهبك وبَطَل قولك: إنهم ما كانوا يقولون بالتأويل,');

-- source: https://islamsunnite.net/limam-ibn-al-jawzi-refute-ceux-qui-renient-linterpretation-ta-wil/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’interprétation des textes.', 'Ibn Al-Jawzi', 'وكيف والله يقول:{ وَمَا يَعْلَمُ تَأْوِيلَهُ إِلاَّ اللهُ وَالرَّاسِخُونَ فِي الْعِلْمِ يَقُولُونَ ءامَنَّا بِهِ}(7)[سورة ءال عمران] »', '« Comment quelqu’un pourrait dire que les salaf n’ont pas utilisé le ta-wîl (interprétation) alors qu’il est rapporté dans le sahîh que Ibnou ‘Abbâs avait présenté de l’eau au prophète ( صلى الله عليه وسلم ) pour le woudoû, et le prophète a demandé [ce qui a pour sens : ] « Qui a fait cela ? » alors Ibnou ‘Abbâs a répondu : « C’est moi Ô Messager de Allâh», alors le prophète ( صلى الله عليه وسلم ) a dit :', '', '', 'al-majalis, allah, aqida, croyance'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وكيف والله يقول:{ وَمَا يَعْلَمُ تَأْوِيلَهُ إِلاَّ اللهُ وَالرَّاسِخُونَ فِي الْعِلْمِ يَقُولُونَ ءامَنَّا بِهِ}(7)[سورة ءال عمران] »');

-- source: https://islamsunnite.net/limam-ibn-al-jawzi-refute-ceux-qui-renient-linterpretation-ta-wil/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’interprétation des textes.', 'Ibn Al-Jawzi', 'اللهم فقِّهْهُ قي الدين وعلِّمهُ التأويلَ', '', '', '[ce qui a pour sens : ] « Ô Allâh, augmente-le en connaissances des lois de la religion et enseigne-lui l’interprétation (at-ta-wîl). »
Alors de deux choses l’une : soit le Messager a voulu faire une invocation en sa faveur, soit il a invoqué contre lui. Or il est indispensable que tu dises qu’il a voulu faire une invocation en sa faveur et non pas contre lui. Et si le ta-wîl était interdit, cela aurait été une invocation contre lui et non pas en sa faveur. Ensuite on dit : de deux choses l’une, soit tu dis que l’invocation du Messager n’est pas exaucée, et ce n’est pas vrai ; et si tu dis qu’elle est exaucée, tu auras quitté ta ligne de conduite, et ta parole qu’ils [les salafs] n’utilisaient pas l’interprétation (ta-wîl) sera caduque. Et comment puisque Allâh dit (au sujet du Qour-ân) :', 'al-majalis, allah, aqida, croyance'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'اللهم فقِّهْهُ قي الدين وعلِّمهُ التأويلَ');

-- source: https://islamsunnite.net/il-est-permis-de-dire-ya-mouhammad-en-son-absence-ou-apres-sa-mort-rapporte-par-an-nawawi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'le tawassoul des compagnons', 'Les Chafi''ites', 'باب ما يقوله إذا خدرت رجله : روينا في كتاب ابن السني عن الهيثم بن حنش قال : » كنا عند عبد الله بن عمر رضي الله عنهما فخدرت رجله ، فقال له رجل : اذكر أحب الناس إليك ، فقال : يا محمد صلى الله عليه وسلم ، فكأنما نشط من عقال', '« Chapitre de ce que l’on dit lors de la paralysie de la jambe :', '', 'Dans son livre Al-Adhkâr [les évocations] (page 249 de cette édition), l’Imâm An-Nawawi a dit :
Il est rapporté dans le livre de Ibnou Sounni, d’après Haytham Ibnou Hanach qu’il a dit : « Nous étions avec ‘Abdou l-Lâh Ibn ‘Oumar (رضي الله عنهما) lorsque sa jambe s’est paralysée, Alors, un homme lui a dit : « évoque la personne que tu aimes le plus ». C’est alors qu’il a dit : « Yâ Mouhammad » et sa jambe s’est libérée de la paralysie. »
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence) Aboû Zakariyyâ Mouhyi d-Dîn Yahyâ Ibnou Charaf An-Nawawi est un savant de référence. Il est né en 631 et il est décédé en 676 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 750 ans. C’est un savant dans l’école de jurisprudence Chafi’ite. Son commentaire du sahîh de l’Imâm Mouslim est très célèbre. Il a écrit d’autres livres tels que « Riyâd as-Sâlihîn » (le jardin des vertueux), et le recueil de 40 hadîth si connus.
Tâjou d-Dîn As-Soubki le surnommait « Chaykhou l-Islâm » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « Le Moufti de la Oummah, Chaykhou l-Islâm […] le Hâfidh (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chafi’ite, l’ascète, l’un des étendards (de la religion) » [Târîkhou l-Islâm]. Il a dit également : « Le Chaykh, le modèle (qoudwah) […] le Hâfidh (spécialiste de la science du hadîth), l’ascète, le pieux adorateur, le Faqîh (spécialiste de la jurisprudence), le moujtahid versé dans l’adoration de Son Seigneur, Chaykhou l-Islâm » [Siyar A’lâmi n-Noubalâ]
Ibn Kathîr a dit à son sujet : « Le Chaykh, l’Imâm, l’illustre savant (al-‘Allâmah), le Hâfidh (spécialiste de la science du hadîth) l’honorable Faqîh (spécialiste de la jurisprudence) […] l’un des pieux adorateurs et ascètes» [Tabaqâtou ch-Châfi’iyyah]
– Le Hâfidh Aboû Bakr Ahmad Ibnou Mouhammad connu sous le nom de Ibnou Sounni, est né en 280, et il est décédé en 364 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1070 ans. Il rapporte ce hadîth dans son livre « ‘Amalou l-Yawmi wa l-Laylah » avec plusieurs chaînes de transmission.
– Le compagnon ‘Abdou l-Lâh Ibnou ‘Oumar est décédé en 73 de l’Hégire (رضي الله عنهما) c’est à dire il y a environ 1360 ans. Le Prophète (صلى الله عليه وسلم) a dit de lui qu’il est un homme vertueux (sâlih). Il est le fils du second Calife de l’Islâm : ‘Oumar Ibnou l-Khattâb.
– L’Imam An-Nawawi a écrit ce livre « Al-Adhkâr » (les évocations) dans le but de regrouper les évocations utiles et méritoires selon différentes situations. L’Imâm An-Nawawi rapporte cette histoire dans le chapitre « ce que l’on dit lors de la paralysie de la jambe » afin que les gens appliquent cette évocation « yâ Mouhammad ». L’Imâm An-Nawawi incite donc les musulmans a dire « yâ Mouhammad » tout comme l’a fait le grand compagnon Ibnou ‘Oumar (رضي الله عنهما).
– Cette citation est une réplique aux égarés qui prétendent que tous ceux qui disent : «Yâ Mouhammad » après la mort du Messager (صلى الله عليه وسلم) ou bien en son absence, sont des mécréants associateurs. Par leur parole infondée ces gens là ont déclaré mécréant un grand compagnon, des grands savants de la communauté et un grand nombre de musulmans.
– En effet cette parole est rapportée par de très nombreux savants, ceci fera l’objet d’articles (إن شاء الله).
– Cette parole “Yâ Mouhammad” est confirmée dans le manuscrit du livre « Al-Adabou l-Moufrad » de l’Imâm Al-Boukhari, et sa chaîne de transmission est authentique. Voir l’article concernant Al-Boukhâri : ici .
– Même Ibn Taymiyah (moujassim) a mentionné ce hadîth dans son livre intitulé « Al-Kalimou t-Tayyib » (les bonnes paroles) afin d’inciter les gens à dire « Yâ Mouhammad » lorsque la jambe se paralyse.
– De plus il a été confirmé que le fait de dire “yâ foulân” au sujet d’un mort ou d’une personne absente est quelque chose que le prophète (صلى الله عليه وسلم) a lui-même pratiqué et incité à faire. En effet il a été rapporté que lorsque le prophète (صلى الله عليه وسلم) visitait les tombes, il disait “As-Salâmou ‘alaykoum yâ Ahla l-qouboûr” (As-Salâmou ‘alaykoum Ô habitants des tombes) [ Rapporté par At-Tirmidhi et d’autres ], et le prophète (صلى الله عليه وسلم) a enseigné à un homme aveugle de réciter en son absence une invocation qui contient les termes “yâ Mouhammad” et les compagnons le pratiquaient également après son décès (صلى الله عليه وسلم) [ Rapporté par At-Tabarâni ].
– Le tawassoul est le fait de demander à Allâh l’obtention d’un profit ou l’empêchement d’une nuisance et ce, par la mention du nom d’un prophète ou d’un saint, par honneur pour celui par lequel le tawassoul est fait. Faire le tawassoul est permis en leur présence et en leur absence tout comme l’indique les preuves selon la Loi de l’Islâm. Le tawassoul ne constitue donc pas une adoration pour autre que Allâh.
– Ainsi, le tawassoul est une pratique qui est permise selon l’unanimité des musulmans comme le rapporte l’Imâm Taqiyyou d-Dîn As-Soubki [ Dans son livre Chifâ-ou s-Saqâm ].
– L’adoration (al-‘Ibâdah) : c’est l’extrême limite de la crainte et de la soumission, comme l’a mentionné l’Imâm Moujtahid, le Hâfidh (spécialiste du Hadîth), le Loughawi (spécialiste de la langue Arabe) Taqiyyou d-Dîn As-Soubki.
Ainsi le simple fait d’appeler (nidâ) un vivant ou un mort ne constitue pas une adoration d’autre que Allâh, ni le simple fait de glorifier (ta’dhîm) ou de faire al-istighâthah (la recherche du renfort) par autre que Allâh. De même, le simple fait de visiter la tombe d’un saint pour le tabarrouk (la recherche des bénédictions) ne constitue pas une adoration d’autre que Allâh. De même, le simple fait de demander ce qu’il n’est pas habituel de demander aux gens ne constitue pas une adoration d’autre que Allâh. De même, la formule de al-isti’ânah (demande d’aide) à autre que Allâh ta’âlâ ne constitue pas une adoration d’autre que Allâh. Egalement, la simple humilité n’est pas une adoration envers autre que Allâh car sinon, tous ceux qui font preuve d’humilité avec les rois et les nobles seraient devenus mécréants.
C’est-à-dire que tout cela n’est pas du chirk (le fait d’attribuer des associés à Allâh), car la définition de l’adoration (al-‘ibâdah) selon les spécialistes de la langue ne s’applique pas à tout cela. En effet, pour eux, l’adoration (al-‘ibâdah) comme nous venons de le voir est l’obéissance avec la soumission. Voir à ce sujet l’explication de l’Imâm du Salaf, le Loughawi (spécialiste de la langue Arabe) Aboû Is-hâq Ibrâhîm Az-Zajjâj : ici .
– Retrouvez d’autres articles au sujet du tawassoul et du tabarrouk : ici .', '''abdoullah ibn oumar, abdullah ibn umar, al adab al moufrad, al adab al mufrad'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'باب ما يقوله إذا خدرت رجله : روينا في كتاب ابن السني عن الهيثم بن حنش قال : » كنا عند عبد الله بن عمر رضي الله عنهما فخدرت رجله ، فقال له رجل : اذكر أحب الناس إليك ، فقال : يا محمد صلى الله عليه وسلم ، فكأنما نشط من عقال');

-- source: https://islamsunnite.net/le-chaykh-mouhammad-al-arabi-at-tabbani-approuve-la-celebration-du-mawlid/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Il est permis de célébrer le Mawlid', 'Tabbani', 'عمل المولد وإن حدث بعد السلف الصالح ليس فيه مخالفة لكتاب الله ولا لسنة رسوله صلى الله تعالى عليه وسلم ولا لإجماع المسلمين، فلا يقول من له مسكة من عقل ودين بأنه مذموم', 'Même si la célébration du Mawlid a été instaurée après l’époque des pieux prédécesseurs, elle ne comporte pas ce qui contredirait le Livre de Allâh (Al-Qour-ân), ni la Sounnah de Son Messager (صلى الله عليه وسلم), ni l’Unanimité des musulmans ; il n’y a personne qui ait un brin de cervelle et de religion qui dise qu’elle est blâmable', '', 'Dans son livre “Barâ-atou l-Ach’ariyyîn” (tome 1 p 186 de cette édition), le Chaykh Mouhammad Al-’Arabi At-Tabbâni a dit :
Informations utiles :
– Le Mouhaddith (transmetteur du hadîth), le Chaykh Mouhammad Al-‘Arabi At-Tabbâni Al-Jazâ-iri Al-Makki Al-Haçani connu également sous le nom de “Aboû Hâmid Ibnou Marzoûq” est né en 1313 de l’Hégire à Sétif en Algérie et il est décédé en 1390 de l’Hégire à La Mecque (رحمه الله). Il était un savant de l’école de jurisprudence (madh-hab) Malikite et il enseignait dans la célèbre école “Madraçatou l-Falâh” de La Mecque et également dans Al-Masjid Al-Harâm (la grande mosquée de La Mecque).
– Ici il confirme que la célébration du Mawlid, bien qu’elle est été instauré après l’époque du Salaf, ne contredit ni le Qour-ân, ni la Sounnah, ni l’unanimité des musulmans. En effet une innovation peut être louable si elle est en accord avec le Qour-ân et la Sounnah.
– En quoi consiste le Mawlid ?
Du fait de rassembler les musulmans dans le bien : ceci est un bien dans la religion.
De récitation du Qour-ân : ceci est un bien dans la religion.
De Dhikr (évocation de Allâh) : ceci est un bien dans la religion.
D’éloge du prophète (صلى الله عليه وسلم) : ceci est un bien dans la religion.
De cours et conférences religieuses : ceci est un bien dans la religion.
Du fait de s’inciter mutuellement à la piété : ceci est un bien dans la religion.
Distribuer des aumônes (nourritures et boissons) : ceci est un bien dans la religion.
D’invocations à l’égard de Allâh : ceci est un bien dans la religion.
– L’Imâm As-Souyoûti a d’ailleurs résumé tout cela en disant : « L a commémoration de la naissance (Mawlid) à l’origine consiste en le rassemblement des gens, la récitation de ce qu’il est possible de réciter du Qour-ân, la narration des nouvelles rapportées au sujet du début de l’histoire du Prophète et ce qui est advenu comme signes à sa naissance, à la suite de quoi il leur est présenté de la nourriture qu’ils consomment puis partent sans rien ajouter à cela. Ceci compte parmi les bonnes innovations pour laquelle celui qui la fait sera récompensé, et ce, pour ce que cela comporte comme glorification du degré du Prophète (صلى الله عليه وسلم), et comme manifestation de joie et de réjouissance pour sa noble naissance » [ Housnou l-Maqsid fî ‘Amali l-Mawlid ].
– Le prophète (صلى الله عليه وسلم) a lui même enseigné qu’une innovation peut être bonne et récompensée par sa parole qui a pour sens : « Celui qui instaure dans l’Islâm une bonne tradition (sounnah) en aura la récompense et l’équivalent de la récompense de ceux qui œuvreront avec après lui, sans que leurs récompenses ne soient diminuées en rien ; et celui qui instaure dans l’Islâm une mauvaise tradition (sounnah) se chargera de son péché et de l’équivalent du péché de ceux qui œuvreront avec après lui, sans que leurs péchés ne soient diminués en rien. » [ Rapporté par Mouslim ] .
– Quant au hadîth rapporté par Mouslim qui comprend les termes : ” وكل بدعة ضلالة ” (wa koullou bid’atin dalâlah), ce qui est visé par “koullou” dans ce hadîth est “la plupart” des innovations comme l’ont expliqués les savants de l’Islâm. [ Voir la citation de l’Imâm An-Nawawi à ce sujet : ici ].
– Consultez d’autres paroles de savants concernant les différentes sortes d’innovations : ici .
– Retrouvez de nombreuses paroles de savants concernant le Mawlid : ici .', '3oulama, ahlou s-sounnah, alger, algérie'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'عمل المولد وإن حدث بعد السلف الصالح ليس فيه مخالفة لكتاب الله ولا لسنة رسوله صلى الله تعالى عليه وسلم ولا لإجماع المسلمين، فلا يقول من له مسكة من عقل ودين بأنه مذموم');

-- source: https://islamsunnite.net/limam-as-sanouci-confirme-que-la-parole-de-allah-nest-pas-de-lettre-ni-de-son/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La parole de Allâh', 'Les Malikites', 'وَالْكَلامُ الذي لَيْسَ بِحَرْفٍ، وَلاَ صَوْتٍ', '… et [Allâh a pour attribut] la parole qui n’est pas de lettre ni de son', '', 'Dans son célèbre traité de croyance « Oummou l-Barâhîn » également connu sous le nom de « Al-‘Aqîdatou s-Soughrâ » ou encore « As-Sanoûçiyyah », lors de l’explication des attributs de Allâh qu’il est un devoir de connaître, l’Imâm As-Sanoûçi a dit :
Informations utiles :
– L’Imâm, le Faqîh (spécialiste de la jurisprudence), le Chaykh Aboû ‘Abdillâh Mouhammad Ibn Yoûçouf As-Sanoûçi Al-Haçani Al-Mâliki est né en 832 à Tlemcen en Algérie et il est décédé en 895 de l’hégire (رحمه الله) à Tlemcen également, c’est-à-dire il y a environ 540 ans. Son traité de croyance est l’un des plus connus et enseignés dans le monde musulman.
– Ici, l’Imâm As-Sanoûçi explique l’attribut de la parole de Allâh (al-kalâm) et il précise que Sa parole n’est pas du genre des lettres ni des sons. En effet, Allâh a pour attribut la parole et Il parle sans langue, ni lèvres, ni voix, ni sons, ni lettres. Sa parole n’est pas une langue arabe, ni aucune autre langue et Sa parole ne ressemble pas à la parole des humains. En effet la parole de Allâh est un attribut de toute éternité alors que les lettres, les sons et les langues sont entrés en existence. Ainsi il ne Lui advient pas de silence ni d’entrecoupement car Sa parole n’est pas constituée de lettres ni de son.
– Dans un autre de ses traités de croyance, l’Imâm As-Sanôuçi confirme ses propos en disant : « Il est obligatoire au sujet de Allâh ta’âlâ […] [l’attribut de] la parole qui n’est pas de lettre ni de son » [Dans son traité de croyance Al-Hafîdah -connu également sous de nom de Soughrâ Soughra l-Soughrâ-]
– Allâh ta’âlâ dit : { وَكَلَّمَ اللهُ مُوسَى تَكْلِيمًا } [Soûrat An-Niçâ/ 146] ce qui a pour sens : « Allâh a assurément parlé à Moûçâ ».
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
L’Imâm As-Sanoûçi [voir ci-dessus] ;
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
Et beaucoups d’autres…', 'al-djaza''ir, al-kalam, al-sanoussi, al-‘aqida as-soughra'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وَالْكَلامُ الذي لَيْسَ بِحَرْفٍ، وَلاَ صَوْتٍ');

-- source: https://islamsunnite.net/limam-ali-confirme-quattribuer-le-corps-a-allah-est-de-la-mecreance-rapporte-par-al-qourachi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Attribuer le corps à Allâh est de la mécréance', '''Ali Ibn Abi Talib', 'وعن علي رضي الله عنه : سيرجعُ قومٌ من هذهِ الأمّةِ عندَ اقتراب السّاعةِ كفّارًا ، قال رجلٌ يا أميرَ المؤمنينَ ، كفرهم بماذا أبِالإحداثِ أم بالإنكارِ ، قال بل بالإنكارِ ، يُنكرونَ خالِقَهُم فيَصِفونهُ بالجِسمِ والأعضاءِ', '« [L’Imâm] ‘Ali [Ibn Abî Tâlib] que Allâh l’agrée a dit : « à l’approche du jour dernier il y aura des gens qui vont devenir mécréants », un homme a dit : « Ô émir des croyants leur mécréance à cause du fait qu’ils innovent une chose contraire à la religion ou en reniant une croyance de l’Islâm ? » Il a dit : « En reniant, ils renient leur Créateur, ils Lui attribuent le corps et les membres » .', '', 'Dans son livre Najmou l-Mouhtadi [l’étoile de celui qui est bien guidé] (page 588 du manuscrit présenté ici), le Chaykh Ibnou Mou’allim al-Qourachi a dit :
Informations utiles :
– Le Chaykh, le Faqih (spécialiste de la jurisprudence) Fakhrou d-Dîn Ibnou Mou’allim Al-Qourachi, est né en 660 de l’Hégire en Égypte et il est décédé en 725 à Damas (رحمه الله). Sa biographie a été faite par le Hâfidh Ibnou Hajar Al-‘Asqalâni dans son ouvrage « Ad-Dourarou l-Kâminah ».
– Le scan présenté ici, est issu du manuscrit qui est conservé en France.
– Ici, il mentionne la parole de l’Imâm ‘Ali qui a dit qu’à l’approche du jour dernier, des gens se réclamant de la Oummah deviendront mécréant par le fait de croire que Allâh serait un corps et qu’Il aurait des membres.
– Nous pouvons facilement faire le lien avec certaines personnes à notre époque qui ont pour croyance que Allâh serait un corps, composé de différentes parties corporelles (mains, pied, œil, visage…), qu’Il serait dans un endroit, une direction, qu’Il se déplacerait dans le ciel et autres de parmi les croyance qui font sortir de l’Islâm.
– Il est bien confirmé dans la citation que le fait d’avoir pour croyance que Allâh serait un corps avec des organes, cela est de la mécréance.
– De nombreux savants ont confirmé que le fait d’attribuer le corps à Allâh constitue de la mécréance. Parmi eux :
L’Imâm ‘Ali Ibnou Abî Tâlib [Rapporté par Ibnou Mou’allim al-Qourachi]
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
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ Dans son livre Minhou l-Jalîl ]
Le Chaykh Salîm Al-Bichri Al-Azhari (1335 H.) [Rapporté par Al-‘Azzâmi]
Le Chaykh Al-Marighni Az-Zaytoûni qui mentionne l’unanimité [ Dans son livre Tâli’ou l-Bouchrâ ]
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Chaykh Mehmed Zâhid Kotku [ Dans son livre Ehl-i Sünnet Akaidi ]
Le Mouhaddith Mouhammad Yâçîn Al-Fâdâni (1410 H.) qui mentionne l’unanimité [Dans son livre Boughyah Al-Mouchtâq]
Le Mouhaddith Al-Harari (1429 H.) [Dans son livre Boughyah At-Tâlib]
Al-Oustâdh Mouhammad At-Tâwîl Al-Mâliki Al-Maghribi (Enseignant à l’Université Al-Qarawiyyîn) (1436 H.) qui mentionne l’unanimité [Dans son livre Al-Loubâb fî Charhi Touhfati t-Toullâb]
Et beaucoup d’autres…
– De nombreuses autres paroles de l’Imâm ‘Ali ont été rapportées concernant le Tawhîd. Parmi elles :
Ibnou ‘Abdi Rabbih (m.328 H.) a dit : « Il fût demandé à ‘Ali Ibn Abî Tâlib (que Allâh l’agréé) : “Où était notre Seigneur avant qu’Il ne créé le ciel et la terre ? Alors il (‘Ali Ibn Abî Tâlib) répondit : “la question “où” nécessite l’endroit et Allâh ‘azza wa jall existe de toute éternité et ce n’est pas le cas de l’endroit. » [Al-‘Iqdou l-Farîd]
L’Imâm Aboû Mansoûr Al-Baghdâdi (m. 429 H.) a dit : « L’émir des croyants, ‘Ali (Ibn Abî Tâlib) a dit : « Allâh ta’âlâ a créé le Trône comme manifestation de Sa Toute-puissance et ne l’a pas pris comme endroit pour lui-même » [ Dans son livre Al-Farqou Bayna l-Firaq ]
L’Imâm Aboû Mansoûr Al-Baghdâdi (m. 429 H.) a dit ensuite : « Et il (‘Ali Ibn Abî Tâlib) a dit également : « Allâh existe de toute éternité alors qu’il n’y a pas d’endroit de toute éternité et Il est maintenant tel qu’Il est de toute éternité » [ Dans son livre Al-Farqou Bayna l-Firaq ]
L’Imâm Aboû Nou’aym (m.430 H.) rapporte que l’Imâm ‘Ali Ibn Abî Tâlib a dit : « Celui qui prétend que notre Seigneur est limité, alors certes il n’a pas connu le Créateur, Celui Qui mérite d’être adoré » [Hilyatou l-Awliyâ]
L’Imâm Al-Isfarâyini (m.471 H.) rapporte que lorsqu’une personne demande à l’Imâm ‘Ali « ayna l-Lâh ?», l’Imâm ‘Ali lui répondit : « On ne dit pas « où ?» pour Celui qui a créé les endroits. » Puis la personne lui demanda « comment est Allâh ? » et l’Imâm ‘Ali répondit : « On ne dit pas « comment ? » pour Celui qui a créé le comment » [ Dans son livre At-Tabsirou fi d-Dîn ]
L’Imâm An-Naçafi (m.508 H.) a dit : « Il fût demandé à ‘Ali Ibn Abî Tâlib (que Allâh l’agréé) : “Où était notre Seigneur avant qu’Il ne créé le trône ? Alors il (‘Ali Ibn Abî Tâlib) répondit : “la question “où” concerne l’endroit et Allâh ‘azza wa jall existe de toute éternité sans endroit et sans le temps, et Il est maintenant tel qu’Il est de toute éternité (c’est-à-dire sans endroit et sans dépendre du temps) » [Bahrou l-Kalâm]', '''ali ibnou abi talin, ajmou l-mouhtadiyy wa rajmou l-mou^tadiyy, al-qorachi, al-qourachi'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وعن علي رضي الله عنه : سيرجعُ قومٌ من هذهِ الأمّةِ عندَ اقتراب السّاعةِ كفّارًا ، قال رجلٌ يا أميرَ المؤمنينَ ، كفرهم بماذا أبِالإحداثِ أم بالإنكارِ ، قال بل بالإنكارِ ، يُنكرونَ خالِقَهُم فيَصِفونهُ بالجِسمِ والأعضاءِ');

-- source: https://islamsunnite.net/le-chaykh-al-qaddoumi-al-hanbali-confirme-quattribuer-le-corps-a-allah-est-de-la-mecreance/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Attribuer le corps à Allâh est de la mécréance', 'Ibn Balban', 'فمَن شبّهه بخَلقِه فقَد كفَر كمَن اعتَقدَه جِسمًا أو قالَ إنّه جِسمٌ لا كالأجسام', 'Celui qui assimile Allâh à Ses créatures devient mécréant, tout comme celui qui croit que Allâh est un corps ou qui dit : Allâh est un corps mais pas comme les autres corps', '', 'Dans son livre « Al-Manhajou l-Ahmad », le Chaykh Al-Qaddoûmi Al-Hanbali a dit :
Informations utiles :
– Le Moufti, Al-’Allâmah (l’illustre savant), le Chaykh ‘Abdoul-Lâh Al-Qaddoûmi An-Nâboulouçi Al-Madani Al-Hanbali est né en 1247 et il est décédé en 1331 de l’Hégire (رحمه الله). Il était le savant des Hanbalites dans le Hijâz et au Châm. Ce livre là (Al-Manhajou l-Ahmad) est justement un livre dans lequel il présente la croyance de l’Imâm Ahmad Ibn Hanbal.
– Ici, il mentionne et confirme la citation de Chaykh Badrou d-Dîn Ibnou Balbân Al-Hanbali qui dit clairement que celui qui attribue à Allâh le corps est un mécréant, même si il ajoute ensuite « pas comme les autres corps », il sera tout de même mécréant.
– Et cela est tel que l’a dit l’Imâm Ahmad lui-même. En effet, parmi les citations de l’Imâm Ahmad concernant l’exemption du corps au sujet de Allâh il y a sa parole : « Celui qui dit que Allâh est un corps pas comme les autres corps, il devient [quand même] mécréant » [ Rapporté par l’Imâm Az-Zarkachi ].
– Le Chaykh Ibn Hamdân Al-Hambali (m. 695 H.) a confirmé cela en disant : « Celui qui fait ressembler Allâh à Sa créature il devient mécréant, Ahmad [Ibn Hambal] a textuellement dit cela, et il en est de même pour celui qui Lui attribue le corps, ou qui dit : « c’est un corps pas comme les [autres] corps » » [ Dans son livre Nihâyatou l-Moubtadi-în ]
– Le Chaykh, le Faqîh Aboû Chakoûr As-Sâlimi Al-Hanafi (m.~460 H.) a dit au sujet des Mouchabbihah (ceux qui ont pour croyance que Allâh ressemble aux créatures) : « Parmi eux certains disent que « Allâh est un corps pas comme les autres corps » et cela est de la mécréance » [Dans son livre At-Tamhîd fî Bayâni t-Tawhîd]
– Le Chaykh Mouhammad Ibnou Badri d-Dîn Ibnou Balbân Ad-Dimachqi Al-Hanbali, est né en 1006 et il est décédé en 1083 de l’Hégire (رحمه الله), c’est à dire il y a plus de 350 ans. L’ouvrage dont est tiré cette citation est intitulé « Moukhtasar Al-Ifâdât ».
– En effet, la personne qui attribue des parties corporelles à Allâh comme la main, le pied, le visage, les yeux (etc..) elle devient mécréante même si elle dit « Sa main n’est pas comme les autres mains », ou que « Son Visage n’est pas comme les autres visages » et ainsi de suite, du fait qu’elle aura attribué à Allâh des caractéristiques des créatures.
– Ainsi, la croyance de l’Imâm Ahmad Ibn Hanbal était que Allâh n’est pas un corps. Il a d’ailleurs dit à ce sujet : « Les noms sont pris de la religion et de la langue arabe, or les spécialistes de la langue ont mentionné que le mot « corps » est attribué pour tout ce qui présente une longueur, une largeur, une épaisseur, une composition et une image et Allâh est exempt de tout ceci. Il n’est donc pas permis de Lui attribuer le corps car Il en est exempt, en plus ce terme n’a pas été cité dans la religion comme nom de Dieu, ce qui montre que cela est infondé » [ Rapporté par Abou l-Fadl At-Tamîmi Al-Baghdâdi Al-Hanbali ] et également par Al-Bayhaqi [dans son livre Manâqibou Ahmad].
– Et le Chaykh Ibnou Hajar Al-Haytami a dit : « Sache que Al-Qarâfi et d’autres ont rapporté de Ach-Châfi’i, de Mâlik, de Ahmad [Ibn Hanbal] et de Aboû Hanîfah, que Allâh les agrée, que ceux qui disent [à propos de Allâh] qu’Il est dans une direction ou qu’Il est un corps ont commis de la mécréance, et ils [ces savants] ont raison en cela » [ Al-Minhajou l-Qawîm ].
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
Le Chaykh Ibn Balbân [Dans son livre Moukhtasar Al-Ifâdât] et [Rapporté par Al-Qaddoûmi]
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
– Dans ce même ouvrage le Chaykh Al-Qaddoûmi mentionne également le fait que celui qui a pour croyance que Allâh serait dans un endroit, n’est pas musulman. [ Al-Manhajou l-Ahmad ].', 'ahmad ibn hambal, ahmad ibn hanbal, ahmed ibn hambal, ahmed ibn hanbal'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'فمَن شبّهه بخَلقِه فقَد كفَر كمَن اعتَقدَه جِسمًا أو قالَ إنّه جِسمٌ لا كالأجسام');

-- source: https://islamsunnite.net/limam-az-zajjaj-confirme-que-le-oulouww-de-allah-nest-pas-par-lendroit-mais-par-le-merite/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le ‘oulouww de Allâh n’est pas une élévation spatiale', 'Zajjaj', 'والله تعالى عالٍ على كل شَىء ، وليس الـمراد بالعلو ارتفاع الـمحلِّ ، لأن الله تعالى يجلُّ عن الـمحلِّ والـمكان ، وإنَّما العُلو علوُّ الشأن وارتفاعُ السلطان', 'Allâh ta’âlâ est supérieur (‘Âlin) à toute chose, ce qui est visé par al-‘oulouww n’est pas l’élévation spatiale car Allâh ta’âlâ est exempt de l’emplacement et de l’endroit. Dans ce cas, al-‘oulouww ne veut dire que l’élévation du mérite et la supériorité de la souveraineté', '', 'Dans son livre «Tafsîrou l-Asmâ-i l-Housnâ» (page 60 de cette édition), l’Imâm Az-Zajjâj a dit :
Informations utiles :
– L’Imâm, l’exégète (Moufassir), le Spécialiste de la langue Arabe (Loughawi), le Grammairien (Nahwi) Aboû Is-hâq Ibrâhîm Ibnou Mouhammad Ibnou s-Sourri Az-Zajjâj Al-Baghdâdi, est l’un des linguistes les plus connus, il faisait partie des gens du Salaf, il est né en 241 et il est décédé en 311 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1120 ans. Il est souvent cité comme référence par les exégètes (moufassiroûn).
Al-Khatîb Al-Baghdâdi a dit de lui : « Il était parmi les gens honorables et versés dans la religion, il avait une bonne croyance et un bon madh-hab». [Târîkh Baghdâd]
Ibn Khallikân a dit le concernant : « Il était parmi les gens de science, de bonne manière et versé dans la religion». [Wafayâtou l-A’yân]
An-Nawawi a dit à son sujet : « L’Imâm dans la langue Arabe ». [Tahdhîbou l-Asmâ wa l-Loughât]
Ibn Kathîr a dit de lui : « Il était vertueux et versé dans la religion, il avait une bonne croyance et il était auteur de bons ouvrages, et parmi eux “Ma’âni Al-Qour-ân” et d’autres ouvrages bénéfiques.». [Al-Bidâyah wa n-Nihâyah]
Adh-Dhahabi a dit à son sujet : « L’Imâm, le grammairien (Nahwi) de son époque». [Siyarou A’lâmi n-Noubalâ]
– Ici, il dit que le sens du ‘oulouww de Allâh est l’élévation du mérite et la supériorité de la souveraineté et que le ‘oulouww de Allâh ne signifie pas l’élévation spatiale car Allâh existe sans endroit.
– Dans ce même ouvrage l’Imâm Az-Zajjâj confirme ses propos en disant : « Le nom Al-‘Aliyy est bâti sur le schème « fa’îl » [celui qui fait par excellence] dans le sens du schème « fâ’il » [celui qui fait]. Allâh ta’âlâ est ‘Âlin [Celui Qui a la supériorité] sur Ses créatures et Il est ‘Aliyyoun [Celui Qui a la supériorité absolue] sur elles par Sa puissance. Il ne faut donc pas aller dans le sens de l’élévation spatiale [par l’endroit] car nous avons indiqué que ceci n’est pas possible au sujet de Ses attributs exemptés d’imperfection. Il n’est pas permis de considérer qu’Il serait accessible à l’imagination. Que Allâh soit exempté de tout cela d’une totale exemption » [ Tafsîrou l-Asmâ-i l-Housnâ ]
– De nombreux savants ont tenu des propos similaires :
Le Chaykh Abou n-Nasr Al-Qouchayri a dit : « Ainsi Ar-Rabb [c’est-à-dire Allâh] est attribué du ‘Oulouww (élévation) et de la Fawqiyyah (supériorité) par le mérite et l’éminence et Il est exempt d’être dans un endroit et d’être en face d’un corps» [Dans son livre At-Tadhkirah Ach-Charqiyyah]
L’Imâm Ar-Râzi a dit : « Il n’est pas possible que ce qui est visé par Al-‘Aliyy soit l’élévation (al-‘oulouww) par la direction et l’endroit puisque les preuves de la corruption de cette croyance ont été confirmées » [ Dans son tafsîr ]
L’Imâm Al-Qourtoubi a dit : « Par Al-‘Aliyy, on vise ‘oulouwwou l-qadr wa l-manzilah (l’élévation par le mérite et l’éminence) et non pas ‘oulouwwou l-makân (l’élévation par l’endroit) car Allâh est exempt de la localisation » [ Dans son tafsîr ]
L’Imâm Ibn Hajar Al-‘Asqalâni a dit : « Le fait que les deux directions du haut et du bas soient impossibles au sujet de Allâh n’implique pas qu’on ne Le qualifie pas par al-‘oulouww (l’élévation par le degré) car Son attribution par al-‘oulouww vient dans le sens figuré. Ce qui est impossible, c’est qu’il vienne dans le sens physique (c’est-à-dire l’élévation par l’endroit) » [ Dans son charh sahîh Al-Boukhâri ]
Le Moufassir Ath-Tha’âlibi a dit : « Il n’est pas possible que le terme « fawqa » [dans le verset : { وَهُوَ ٱلۡقَاهِرُ فَوۡقَ عِبَادِهِ } ] vienne dans le sens de la direction, mais il s’agit d’une élévation (‘oulouww) par la puissance et le mérite» [ Dans son tafsîr ]
Le Moufassir Ath-Tha’âlibi a dit également : « “Al-‘Aliyy” : Il est voulu par cela l’élévation (‘oulouww) par le mérite et l’éminence, et non d’une élévation spatiale [par l’endroit], car Allâh soubhânahou wa ta’âlâ est exempt de la localisation » [ Dans son tafsîr ]
L’Imâm Moujîrou d-Dîn Al-‘Oulaymi Al-Hanbali (m. 927 H.) a dit : « Le verset { وَهُوَ ٱلۡقَاهِرُ فَوۡقَ عِبَادِهِ } (wa houwa l-Qâhirou fawqa ‘ibâdihi) c’est-à-dire que Allâh est Al-Qâdir (Celui qui est tout-puissant sur toutes choses) et Al-Ghâlib (Celui qui domine toutes choses). Et ce qui est voulu par « fawqa » est la supériorité (‘oulouww) en termes de puissance et de mérite, comme dans Sa parole { وَإِنَّا فَوْقَهُمْ قَاهِرُونَ} » [ Fat-hou r-Rahmân fî Tafsîr Al-Qour-ân ]
Chaykhou l-Islâm Zakariyyâ Al-Ansari a dit : « L’élévation (‘oulouww) par l’endroit est impossible au sujet de Allâh » [ Dans son livre Ihkâmou d-Dalâlah ]
Le Chaykh Moullâ ‘Ali Al-Qâri a dit : « Quant à Son ‘oulouww, ta’âlâ, par rapport à Ses créatures qui est tiré de ce qui est de l’ordre de la parole de Allâh ta’âlâ : {وَ هُوَ القَاهِرُ فَوْقَ عِبَادِهِ} (wa houwa l-Qâhirou fawqa ‘ibâdih) [soûrat Al-An’âm / 61], il s’agit d’un ‘oulouww (élévation) par le mérite et l’éminence et non pas d’une élévation par l’endroit, conformément à ce qui est décrété chez les gens de Ahlou s-Sounnah wa l-Jamâ’ah » [ Dans son commentaire du livre Al-Fiqh Al-Akbar ]
Le Chaykh Yoûçouf Ad-Dajwi a dit : « Sache que les gens du Salaf déclarent que la supériorité spatiale (al-‘oulouww al-Makânî) est impossible à Son sujet (c’est-à-dire au sujet de Allâh) ta’âlâ, contrairement à certains ignorants qui débattent à tort et à travers à ce propos. » [ Maqâlât wa Fatâwâ ]
Le Chaykh Yoûçouf Ad-Dajwi a dit aussi : « Al-A’lâ est un attribut du Seigneur. Ce qui en est visé c’est la supériorité (‘oulouww) par la domination et la manifestation de la puissance et non pas par l’endroit et la direction, qu’Il soit absolument exempté de tout cela » [ Maqâlât wa Fatâwâ ]
– Retrouvez d’autres paroles de savants qui ont parlé au sujet du ‘oulouww (l’élévation) de Allâh : ici .', '''oloww, ''uluww, al-ali, al-aliyy'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'والله تعالى عالٍ على كل شَىء ، وليس الـمراد بالعلو ارتفاع الـمحلِّ ، لأن الله تعالى يجلُّ عن الـمحلِّ والـمكان ، وإنَّما العُلو علوُّ الشأن وارتفاعُ السلطان');

-- source: https://islamsunnite.net/limam-al-boukhari-exemptait-allah-du-corps-et-de-lendroit-ibn-battal-al-maliki/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La croyance de l’Imâm Al-Boukhâri', 'Les Chafi''ites', 'غرض البخاري في هذا الباب الرد على الجهمية المجسمة في تعلقها بهذه الظواهر وقد تقرر أن الله ليس بجسم فلا يحتاج الى مكان يستقر فيه فقد كان ولا مكان وانما أضاف المعارج اليه إضافة تشريف ومعنى الارتفاع اليه اعتلاؤه مع تنزيهه عن المكان', '« L’objectif de Al-Boukhâri dans ce chapitre, c’est de répliquer aux Jahmites qui ont attribué le corps à Allâh en s’attachant au sens apparents des textes alors qu’il a été authentifié que Allâh n’est pas un corps, Il n’a donc pas besoin d’un endroit où s’établir. Il existe de toute éternité alors qu’il n’y a pas d’endroit de toute éternité. Il s’est grammaticalement adjoint « al-ma’ârij » par un rapport d’annexion visant l’élévation de l’honneur. D’autre part, la signification de l’élévation à Lui [al-irtifâ’] c’est l’élévation de l’éminence [al- i’tilâ], tout en exemptant Allâh de l’endroit.»', '', 'Dans son commentaire du Sahîh de Al-Boukhâri «Fath Al-Bârî » [tome 13 page 355 de cette édition], l’Imâm Ibnou Hajar Al-’Asqalâni rapporte les propos du Chaykh Ibnou Battâl qui a dit :
Informations utiles :
– Chaykhou l-Islâm, Amîr al-Mouminîn fi l-hadîth (le Prince des croyants dans la science du hadîth) Chihâb ad-Dîn Abou l-Fadl Ahmad Ibnou ‘Ali Ibnou Hajar Al-‘Asqalâni est né en 773 et il est décédé en 852 de l’hégire (رحمه الله) c’est-à-dire il y a plus de 590 ans. C’est un très grand spécialiste de la science du hadîth qui a écrit de nombreux ouvrages. Il est du madh-hab (Ecole de jurisprudence) de l’Imam Ach-Châfi’i. Son livre « Fath Al-Bârî » est incontournable, c’est le plus célèbre commentaire du Sahîh Al-Boukhâri. Consultez sa biographie : ici .
L’Imâm As-Souyoûti a dit de lui : « Chaykhou l-Islâm, l’Imâm des houffâdh (spécialistes de la science du hadîth) de son temps, le Hâfidh (spécialiste du hadîth) des contrées Egyptienne mais il est aussi le Hâfidh de tout le bas-monde, le juge des juges » [Tabaqât Al-Houffâdh].
Le Hâfidh Ibn Nasrou d-Dîn Ad-Dimachqi Ach-Châfi’i a dit à son sujet : « Notre Maître (mawlanâ wa sayyidounâ), Chaykhou l-Islâm, le grand Hâfidh (spécialiste de la science du hadîth), celui qui supporte la sounnah, l’Imâm des Imams, le juge des juges de la oummah » [Al-Jawâhir].
– Le Chaykh ‘Ali Ibnou Khalaf Al-Mâliki connu sous le surnom de Ibnou Battâl Al-Qourtoubi puis Al-Balançi, est décédé en 449 de l’Hégire (رحمه الله) c’est-à-dire il y a presque 1000 ans. Il est l’un des premiers commentateurs du « Sahîh » de l’Imâm Al-Boukhâri. L’Imâm Ibnou Hajar le cite beaucoup dans son commentaire du Sahîh Al-Boukhâri «Fat-hou l-Bârî».
Adh-Dhahabi a dit de lui : « Il fait partie des plus grands savants Malikites. Le Qâdî ‘Iyâd a mentionné cela » [Siyar A’lâmi n-Noubalâ]
Ibn Bachkwâl a dit à son sujet : « Il était parmi les gens de science et de la connaissance (ma’rifah). Il a travaillé dans la science du hadith avec une attention particulière. Il a expliqué le Sahîh durant ses nombreux voyages. Et les gens l’ont rapporté de lui » [Siyar A’lâmi n-Noubalâ]
– Ici, il dit clairement que l’Imâm Al-Boukhâri avait pour croyance que Allâh n’est pas un corps et qu’Il n’est pas dans un endroit.
– L’Imâm Al-Boukhâri a cité dans ce chapitre :
Le verset {تعرج الملائكة والروح اليه} qui signifierait selon le sens apparent qui est incorrect que les anges et ar-roûh (l’ange Jibrîl) montent vers Lui. L’explication correcte qui est mentionnée ici, est qu’il s’agit d’une élévation vers un endroit que Allâh a honoré et non d’une élévation spatiale vers Allâh.
Le verset {اليه يصعد الكلم الطيب} qui signifierait selon le sens apparent qui est incorrect que les bonnes paroles montent vers Lui. Et l’explication correcte qui est mentionnée ici, est qu’il s’agit d’une élévation d’éminence et non d’une élévation spatiale.
– Ce qui confirme davantage la croyance saine de l’Imâm Al-Boukhâri, c’est son interprétation (ta-wîl) du terme « wajh » par « moulk » (souveraineté) dans le verset {كُلُّ شَىءٍ هَالِكٌ إِلَّا وَجهَهُ} [Soûrat Al-Qasas/88]. Ainsi selon l’explication de l’Imâm Al-Boukhâri, ce verset signifie : {Tout sera détruit sauf Sa souveraineté}. Ainsi, l’Imâm Al-Boukhâri s’est détourné du sens apparent qui impliquerait l’attribution du corps à Allâh, à savoir le sens du visage [ Dans son Sahîh ]. C’est d’ailleurs suite à cette interprétation que le wahhabite Al-Albâni a déclaré mécréant indirectement l’Imâm Al-Boukhâri (رحمه الله) [ voir l’article à ce sujet : ici ].
– De même, l’Imâm Al-Boukhâri a interprété le terme « dahik » par « rahmah » (miséricorde) dans le hadîth qui commence par les termes «يضحك الله» (yad-hakou l-Lâh). cela a été rapporté de lui par l’Imâm Al-Bayhaqi [ Dans son livre Al-Asmâ-ou wa s-Sifât ], l’Imâm Al-Khattâbi et l’Imâm Ibnou Hajar Al-‘Asqalâni [ Dans son livre Fat-hou l-Bârî ]. Ainsi, selon l’explication de l’Imâm Al-Boukhâri, le début du hadîth signifie « Allâh accorde Sa miséricorde ». Ainsi, l’Imâm Al-Boukhâri s’est détourné du sens apparent qui impliquerait l’attribution des caractéristiques du corps à Allâh, à savoir le rire.
– L’Imâm Badrou d-Dîn Al-‘Ayni Al-Hanafi a également dit : « Il a été authentifié que Allâh n’est pas un corps, Il n’a donc pas besoin d’un endroit où s’établir. Il existe de toute éternité alors qu’il n’y a pas d’endroit de toute éternité » [Dans son commentaire du Sahîh Al-Boukhâri : ‘Oumdatou l-Qârî]
– L’Imâm, le Chaykh des Mouhaddith Aboû ‘Abdi l-Lâh Mouhammad Ibnou Ismâ’îl Al-Boukhâri, l’auteur du célèbre « Sahîh » connu comme étant le livre le plus authentique après le Qour-ân, est né en 194 et il est décédé en 256 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1175 ans. Il est une référence incontournable dans la science du hadîth. Consultez sa biographie : ici .', 'al boukhari, allah, aqida, bokhari'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'غرض البخاري في هذا الباب الرد على الجهمية المجسمة في تعلقها بهذه الظواهر وقد تقرر أن الله ليس بجسم فلا يحتاج الى مكان يستقر فيه فقد كان ولا مكان وانما أضاف المعارج اليه إضافة تشريف ومعنى الارتفاع اليه اعتلاؤه مع تنزيهه عن المكان');

-- source: https://islamsunnite.net/le-chaykh-al-qourachi-rapporte-lunanimite-que-celui-qui-croit-que-allah-est-assis-sur-le-trone-est-mecreant/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Croire que Allâh est sur le trône est de la mécréance', 'Les Chafi''ites', 'وهذا مُنتَظمٌ مَن كفرُهُ مُجمَعٌ عَليهِ ومَن كفَّرناهُ مِن أهلِ القِبلةِ كالقائلينَ بِخَلقِ القُرءآنِ وَبأنَّهُ لايَعلَمُ المَعدوماتِ قَبلَ وُجودِها ومَن لايُؤمِنُ بالقَدرِ وكذا مَن يَعتقدُ أنَّ اللهَ جالسٌ على العَرشِ كما حَكاهُ القاضي حُسَينُ عن نَصِّ الشَّافِعيِّ', '« Ceci est de la mécréance selon l’Unanimité et nous déclarons mécréant de parmi les gens de la qiblah ceux qui disent que la Parole de Allâh est créée et ceux qui disent que Allâh ne sait pas les choses avant leur existence et celui qui ne croit pas en la Prédestination et celui qui croit que Allâh est assis sur le trône tout comme a rapporté ce jugement Al-Qâdî Houçayn d’après le texte de Ach-Châfi’i ».', '', 'Dans son livre Najmou l-Mouhtadi [l’étoile de celui qui est bien guidé] (page 551 du manuscrit présenté ici), le Chaykh Ibnou Mou’allam al-Qourachi a dit :
Informations utiles :
– Le Chaykh, le Faqîh (spécialiste de la jurisprudence) Fakhrou d-Dîn Ibnou Mou’allam al-Qourachi, est né en 660 de l’Hégire en Égypte et il est décédé en 725 à Damas en Syrie (رحمه الله) . Sa biographie a été faite par le Hâfidh Ibnou Hajar al-‘Asqalâni dans son ouvrage « Ad-Dourarou l-Kâminah».
– Le scan présenté ici, est issu du manuscrit qui est conservé en France.
– Ici, il rapporte que les savants musulmans sont unanimes à déclarer mécréant ceux qui ont pour croyance que Allâh serait assis sur le trône, et il précise que cela est un jugement confirmé de la part de l’Imâm Ach-Châfi’i.
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah]
– L’Imâm, le Moujtahid –jurisconsulte– Mouhammad Ibnou Idrîs Ach-Châfi’i est l’un des plus grands savants de notre communauté, c’est une référence incontournable pour tout musulman. C’est un salaf (C’est à dire qu’il a vécu dans les trois premiers siècles de l’hégire), il est né en 150 et il est décédé en 204 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 1230 ans. Il est l’Imâm de l’école (madh-hab) chafi’ite.
L’Imâm Abou l-Haçan As-Soulami a dit à son sujet : « Mouhammad Ibn Idrîs Ach-Châfi’i est le savant à la tête du second siècle [de l’Hégire] (c’est-à-dire le moujaddid – savant revivificateur) » [Rapporté par le Hâfidh Ibnou ‘Açâkir dans Tabyînou kadhibi l-Mouftari]
– Al-‘Allâmah (l’illustre savant), le Chaykh, Al-Qâdî Houçayn fait parti des grands savants de l’école de l’Imâm Ach-Châfi’i, il est décédé en 462 de l’Hégire (رحمه الله) .
L’Imâm ‘Abdou l-Karîm Ar-Râfi’i a dit à son sujet : « On le surnommait le savant de la communauté » .
– Des propos identiques sont rapporté par le Chaykh Ibnou Ar-Rif’ah Ach-Châfi’i [ dans son livre « Kifâyatou n-Nabîh Charh at-Tanbîh » ].
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
L’Imâm Ibnou Abî Jamrah [ Dans son livre Bahjatou n-Noufoûs ]
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
– Retrouvez d’autres paroles de savants concernant l’istiwâ de Allâh : ici .
– L’Imâm Ach-Châfi’i, lorsqu’il a été interrogé au sujet de l’istiwâ de Allâh, il a répondu : « J’ai cru fermement en cela sans assimilation, j’en ai reconnu la véracité sans attribuer d’image, je me suis fait à l’idée que j’étais incapable d’en atteindre la réalité et je me suis abstenu d’engager une discussion à ce sujet d’une totale abstention.» [ Rapporté par l’Imâm Ahmad Ar-Rifâ’i ]. C’est-à-dire qu’il a accepté les termes mentionnés dans le Qour-ân sans en comprendre un sens qui implique l’assimilation (tachbîh) comme la position assise, l’installation, ou l’établissement sur le trône.
– Ibnou Kathîr mentionne également la position de l’Imâm Ach-Châfi’i concernant l’un des versets au sujet de l’istiwâ, qui est d’y croire sans assimilation, sans comment et sans prendre le sens apparent (comme la position assise ou l’établissement). [ Dans son tafsîr ]
– De même, l’Imâm Ibn Hajar Al-‘Asqalâni rapporte la croyance de l’Imâm Ach-Châfi’i concernant les textes équivoques (moutachâbih) qui est d’y croire dans leur globalité, en exemptant Allâh du comment (kayfiyyah) et de toute assimilation (tachbîh), et sans prendre ces textes selon leurs sens apparents. [ Dans son livre Fat-hou l-Bârî ]
– L’Imâm Ach-Châfi’i a dit : « Allâh ta’âlâ existe de toute éternité alors qu’aucun endroit n’est de toute éternité. Il a créé l’endroit en ayant l’attribut de l’exemption de début, tout comme avant la création des endroits, le changement n’est pas possible selon la raison à Son sujet, ni pour Son Être ni pour Ses attributs » [ Rapporté par Az-Zabîdi dans son livre It-hâfou s-Sâdati l-Mouttaqîn ]
– Consultez également les articles sur le thème : Allâh n’est pas sur le trône : ici
-De nombreux autres savants ont confirmé que le fait de croire que Allâh serait assis sur le trône est une croyance qui constitue de la mécréance. Parmi eux :
L’Imâm Al-Bayhaqi qui a dit : « Il y a également parmi eux ceux qui ont dit qu’il est un corps (jism) et d’autres ont dit qu’il est possible qu’Il soit assis sur un trône, tout comme un roi est sur son lit. Toutes ces paroles entraînent l’attribution de la mécréance pour celui qui les dit, tout comme c’est le cas de celui qui fait preuve de négationnisme ou d’association. » [ Dans son livre Chou’abou l-Îmân ] ;
L’Imâm An-Nawawi qui a dit : « Et s’il dit “Allâh s’est levé pour la justice” il est devenu mécréant, ou s’il dit “Allâh s’est assis pour la justice” il est devenu mécréant » [Rawdatou t-Tâlibîn / Kitâb Ar-Riddah] et Ibn Noujaym Al-Hanafi a tenu avec exactitude les mêmes propos dans son livre « Al-Bahrou r-Râ-iq », et également Adh-Dhahabi dans “Ith-hâfou l-Akâbir fî tahdhîbi kitâbi l-Kabâ-ir” ;
L’Imâm Al-Kawthari qui rapporte l’unanimité en disant : « La mécréance de celui qui attribue le mouvement, la position assise et les limites à Allâh ta’âlâ est une chose au sujet de laquelle deux musulmans ne sont pas en désaccord. » [ Dans son livre Maqâlâtou l-Kawthari ]
L’Imâm Al-Kawthari a dit également : « Ce qu’adore ce perdant se lève, s’assoit, et bouge ! Peut-être que ce Sijzi (originaire du Sijistan) a hérité cette croyance de ses voisins, les adorateurs des vaches (les hindous), et celui qui croit cela au sujet du Seigneur des mondes, c’est un mécréant par accord [des savants]. Malheur à celui qui suit des gens comme lui dans la prière ou dans le mariage ! » [ Dans son livre Maqâlâtou l-Kawthari ] ;
Le Chaykh Mahmoûd As-Soubki Al-Azhari qui rapporte également l’unanimité en disant : « Un de ceux qui veulent connaître la science de la religion, et s’attacher à la voie du Salaf et du Khalaf m’a interrogé au sujet de ce qui n’est pas explicite dans les versets et les hadîth, par sa parole : « Que disent les maîtres des savants, que Allâh ta’âlâ les protège, au sujet de celui qui a pour croyance que Allâh ‘azza wa jall a une direction, ou qu’Il serait assis sur le trône dans un endroit spécifique et qui dit que cela est la croyance du Salaf ?» Plus loin, il répond : « Le jugement de cette croyance est qu’elle est infondée et celui qui y croit est un mécréant par l’unanimité des savants musulmans que l’on prend en considération. » [ Dans son livre It-hâfou l-Kâ-inât ] ;
Le Mouhaddith Al-Harari qui a dit : « L’exégèse du verset : {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} (Ar-Rahmânou ‘ala l-‘archi stawâ) : Il est un devoir de faire l’exégèse de ce verset dans un sens autre que celui de l’établissement (al-istiqrâr), de la position assise (al-jouloûss) ou de ce qui est de cet ordre. Celui qui croit une telle chose est devenu mécréant » [ Dans son livre As-Sirât Al-Moustaqîm ]
Et beaucoup d’autres …
– Il est également rapporté que l’Imâm Ach-Châfi’i déclarait mécréant les moujassimah (corporalistes), c’est-à-dire ceux qui attribuent à Allâh le corps et les caractéristiques des corps (telles que les organes, les membres, la couleur, l’endroit, la direction, la composition etc).
– Cette déclaration de mécréance de l’Imâm Ach-Châfi’i à l’égard de ceux qui ont pour croyance que Allâh serait un corps, ou qu’Il serait dans un endroit ou une direction, ou qu’Il serait assis sur le trône est confirmée de lui par de nombreux savants tels que :
Al-Qâdî Houçayn [ Dans son livre At-Ta’lîqah ] et [ Rapporté par Ibnou Ar-Rif’ah ] et [Rapporté par Al-Qourachi],
Le Chaykh Al-Qourachi [Voir ci-dessus],
Le Chaykh Ibnou Ar-Rif’ah [ Dans son livre Kifâyatou n-Nabîh ],
Le Chaykh Al-‘Irâqi [ Rapporté par Moullâ ‘Ali Al-Qârî ] et [ Rapporté par As-Soubki Al-Azhari ],
L’Imâm As-Souyoûti [ Dans son livre al-Achbâh wa n-Nadhâ-ir ],
Le Chaykh Moulla ‘Ali Al-Qârî [ Dans son livre Mirqât al-Mafâtîh ] et [ Rapporté par Mahmoûd As-Soubki Al-Azhari ],
Le Chaykh Ibn Hajar Al-Haytami [ Dans son livre al-Minhajou l-Qawîm ],
Le Chaykh Al-Qarâfi [ Rapporté par Al-Haytami ],
Le Chaykh As-Soubki Al-Azhari [ Dans son livre It-hâfou l-Kâ-inât ],
et autres…
– Retrouvez d’autres paroles de savants confirmant le fait qu’ attribuer le corps à Allâh est de la mécréance : ici .
– Retrouvez d’autres paroles de savants confirmant le fait qu’ attribuer l’endroit ou la direction à Allâh est de la mécréance : ici .', 'ahloul qiblah, ajmou l-mouhtadiyy wa rajmou l-mou^tadiyy, al-qorachi, al-qourachi'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وهذا مُنتَظمٌ مَن كفرُهُ مُجمَعٌ عَليهِ ومَن كفَّرناهُ مِن أهلِ القِبلةِ كالقائلينَ بِخَلقِ القُرءآنِ وَبأنَّهُ لايَعلَمُ المَعدوماتِ قَبلَ وُجودِها ومَن لايُؤمِنُ بالقَدرِ وكذا مَن يَعتقدُ أنَّ اللهَ جالسٌ على العَرشِ كما حَكاهُ القاضي حُسَينُ عن نَصِّ الشَّافِعيِّ');

-- source: https://islamsunnite.net/le-prophete-nous-a-incite-a-visiter-sa-tombe-rapporte-par-al-qadi-iyad/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La visite de la tombe du prophète', 'Ibn ''Oumar', 'حدثنا القاضي أبو علي ، قال : حدثنا أبو الفضل بن خيرون ، قال : حدثنا الحسن بن جعفر ، قال : حدثنا أبو الحسن علي بن عمر الدارقطني ، قال : حدثنا القاضي المحاملي ، قالا : حدثنا محمد بن عبد الرزاق ، قال : حدثنا موسى بن هلال ، عن عبد الله بن عمر ، عن نافع ، عن ابن عمر – رضي الله عنهما – ، قال : قال النبي – صلى الله عليه وسلم – من زار قبري وجبت له شفاعتي .', 'Al-Qâdî Aboû ‘Ali nous a rapporté […] d’après Ibnou ‘Oumar (رضي الله عنهما), que le Prophète (صلى الله عليه وسلم) a dit [ce qui a pour sens] : Celui qui visite ma tombe bénéficiera de mon intercession', '', 'Dans son livre Ach-Chifâ, après avoir rapporté l’unanimité qu’il est recommandé de visiter la tombe du prophète (صلى الله عليه وسلم) [ Voir l’article à ce sujet : ici ] Al-Qâdî ‘Iyâd a dit :
Informations utiles :
– Le Qâdî (juge) Abou l-Fadl ‘Iyâd Ibnou Moûçâ Ibnou ‘Iyâd al-Yahsoubi connu sous le nom de Qâdî ‘Iyâd, est un grand savant Malikite. Il est né en 476 à Ceuta et il est décédé en 544 de l’Hégire à Marrakech (Maroc) (رحمه الله) c’est-à-dire il y a plus de 950 ans. Son ouvrage « Ach-Chifâ » est très connu, le titre complet du livre est « Ach-Chifâ bi ta’rîf houqoûq al-Moustafâ ».
Adh-Dhahabi a dit de lui : « L’Imâm, Al-‘Allâmah (l’illustre savant), le Hâfidh (le spécialiste de la science du hadîth), celui qui n’a pas de pareil, Chaykhou l-Islâm, le Qâdî (Juge) » et il a dit également : « Ses ouvrages sont précieux » [Siyar A’lâmi n-Noubalâ]
Ibn Bachkwâl a dit à son sujet : « Il était parmi les gens de science qui sont intelligent et qui ont une bonne compréhension » [Siyar A’lâmi n-Noubalâ]
Ibn Khallikân a dit de lui : « Il est l’Imâm du hadîth de son temps, et le plus connaisseur des gens de ses sciences, de la grammaire, la langue, la parole des arabes, leurs histoires, et les généalogies.» [Wafayâtou l-A’yân]
– Le compagnon ‘Abdou l-Lâh Ibnou ‘Oumar est décédé en 73 de l’Hégire (رضي الله عنه) c’est-à-dire il y a environ 1360 ans. Le Prophète (صلى الله عليه وسلم) a dit de lui qu’il est un homme vertueux (sâlih). Il est le fils du second Calife de l’Islâm : ‘Oumar Ibnou l-Khattâb (رضي الله عنه).
– Ce Hadîth que rapporte le compagnon Ibnou ‘Oumar (رضي الله عنه) est l’une des preuves confirmant que la visite de la tombe du Prophète (صلى الله عليه وسلم) est recommandée, que le visiteur fasse partie des gens de Médine ou non, qu’il soit venu à l’occasion du pèlerinage ou non. Et les musulmans ont eu pour habitude de le faire, que ce soit les prédécesseurs (salaf) ou les successeurs (khalaf), l’unanimité a été établie sur le caractère agréé selon la Loi (machroû’) et il a été rapporté à ce sujet plusieurs hadîth dont celui-ci.
– Ce Hadîth est également rapporté par un grand nombre de Houffâdh (spécialistes de la science du Hadîth). Parmi eux il y a :
Le Hâfidh Ad-Dâraqoutni ;
Le Hâfidh Al-Bazzâr ;
Le Hâfidh Al-Bayhaqi ;
Et autres.
Parmi les savants qui ont authentifié ce Hadîth, il y a :
Le Hâfidh Taqiyyou d-Dîn As-Soubki ;
Le Hâfidh Al-‘Alâ-i ;
Le Hâfidh As-Souyoûti ;
Le Hâfidh As-Sakhâwi ;
Le Hâfidh As-Samhoûdi ;
et beaucoup d’autres. Adh-Dhahabi a été en accord avec eux.
– De nombreux savants ont rapporté l’unanimité (ijmâ’) sur le fait que la visite de la tombe du Prophète (صلى الله عليه وسلم) est un acte recommandé. Parmi eux :
Al-Qâdî ‘Iyâd Al-Mâliki a dit : « La visite de la tombe du Prophète (صلى الله عليه وسلم) est une sounnah qui fait l’unanimité des musulmans et une vertu vivement recommandée, comme le rapporte Ibnou ‘Oumar (رضي الله عنه). » [ Dans son livre Ach-Chifâ ]
Le Chaykh Ibnou l-Hâjj Al-Mâliki a dit: « Abou Houbayrah [Al-Hambali] a dit dans son livre concernant l’unanimité des imams : Mâlik, Ach-Châfi’i, Aboû Hanîfah et Ahmad Ibnou Hambal, que Allâh ta’âlâ leur fasse miséricorde, ont été en accord que la visite du prophète (صلى الله عليه وسلم) est recommandée (moustahabb)» [Dans son livre Al-Madkhal].
L’Imâm Taqiyyou d-Dîn As-Soubki a également rapporté l’unanimité dans son livre Chifâ-ou s-Saqâm.
Le Chaykh Taqiyyou d-Dîn Al-Hisni a dit au sujet de la visite de la tombe du prophète : « Il s’agit d’ une des sounnah des envoyés par unanimité chez les croyants en l’unicité (mouwahhidîn), personne n’y porterait atteinte sauf quelqu’un dont le cœur contient la maladie des hypocrites » [Dans son livre Daf’ou choubahi man chabaha wa tamarrad].
Le Chaykh Moullâ ‘Ali Al-Qârî Al-Hanafi a dit : « Le voyage pour visiter la tombe du prophète (صلى الله عليه وسلم) fait partie de ce sur quoi les savants ont été unanimes sur son caractère recommandé (moustahabb) » [Dans son livre Charh Ach-Chifâ]
Le Chaykh Mayyârah Al-Mâliki a dit : « Sa visite (du prophète) est une sounnah qui fait l’objet de l’unanimité » [Dans son livre Ad-Dourrou th-Thamîn wa l-Mawridou l-Ma’în]
Le Chaykh Ibnou ‘Âbidîn Al-Hanafi rapporte également l’unanimité dans son livre Raddou l-Mouhtâri ‘ala d-Dourri l-Moukhtâr.
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « Sache, que Allâh te fasse miséricorde, que la visite de la tombe de notre Prophète (salla l-Lâhou ‘alayhi wa âlihi wa sallam) est permise et requise par le Livre [le Qour-ân], la Sounnah, et l’unanimité (ijmâ’) de la Oummah » [ Ad-Dourarou s-Saniyyah fî Raddi ‘ala l-Wahhâbiyyah ]
Le Mouhaddith ‘Abdou l-Lâh Al-Harari a dit : « Il est recommandé de visiter la tombe du Messager (صلى الله عليه وسلم) par l’unanimité, c’est-à-dire selon l’unanimité des Imams de l’ijtihâd, les quatre et les autres ; aussi bien pour celui qui habite à Médine que pour les habitants des différents horizons qui ont, par leur voyage, l’objectif de visiter sa tombe honorée. Il s’agit-là d’un des actes les plus éminents qui rapprochent de l’agrément de Allâh.» [Dans son livre Boughyah At-Tâlib]
– Egalement, il est confirmé que le compagnon Bilâl Al-Habachi (رضي الله عنه) a voyagé depuis le Châm (actuelle Syrie) dans le but d’aller visiter le prophète [ Rapporté par As-Samhoûdi et d’autres ].
– Malgré cela, Ibnou Taymiyah et ses adeptes ont rejeté la parole du prophète (صلى الله عليه وسلم) pour suivre leurs passions. En effet Ibnou Taymiyah a contredit le prophète (صلى الله عليه وسلم) en interdisant la visite de sa tombe. Les savants lui ont vivement répliqué. Pour plus d’informations, consultez cet article : Ibnou Taymiyah interdit de rendre visite au prophète .
– De même, le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân dénonce Mouhammad Ibnou ‘Abdi l-Wahhâb (le fondateur de la secte wahhabite) qui déclarait mécréant ceux qui visitent la tombe du prophète (صلى الله عليه وسلم) [ Dans son livre Al-Foutoûhâtou l-Islâmiyyah ].
– Voir d’autres articles concernant la visite de la tombe du prophète (salla l-Lahou ‘alayhi wa sallam) : ici .', 'al-bazzar, allah, aqida, bayhaqi'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'حدثنا القاضي أبو علي ، قال : حدثنا أبو الفضل بن خيرون ، قال : حدثنا الحسن بن جعفر ، قال : حدثنا أبو الحسن علي بن عمر الدارقطني ، قال : حدثنا القاضي المحاملي ، قالا : حدثنا محمد بن عبد الرزاق ، قال : حدثنا موسى بن هلال ، عن عبد الله بن عمر ، عن نافع ، عن ابن عمر – رضي الله عنهما – ، قال : قال النبي – صلى الله عليه وسلم – من زار قبري وجبت له شفاعتي .');

-- source: https://islamsunnite.net/limam-az-zajjaj-explique-le-nom-de-allah-al-aliyy/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'l’élévation de Allâh n’est pas par l’endroit', 'Zajjaj', 'العلي: هو فَعِيل في معنى فاعل، فالله تعالى عالٍ على خَلْقِه وهو عليٌّ عليهم بقدرته، ولا يجب أن يُذهَب بالعلو ارتفاع مكانٍ، إذ قد بيَّنَّا أن ذلك لا يجوز في صفاته تقدست، ولا يجوز أن يكون على أن يُتصور بذهن، تعالى الله عن ذلك عُلوًّا كبيرًا', '« Le nom Al-‘Aliyy est bâti sur le schème « fa’îl » [celui qui fait par excellence] dans le sens du schème « fâ’il » [celui qui fait]. Allâh ta’âlâ est ‘Âlin [Celui Qui a la supériorité] sur Ses créatures et Il est ‘Aliyyoun [Celui Qui a la supériorité absolue] sur elles par Sa puissance. Il ne faut donc pas aller dans le sens de l’élévation spatiale [par l’endroit] car nous avons indiqué que ceci n’est pas possible au sujet de Ses attributs exemptés d’imperfection. Il n’est pas permis de considérer qu’Il serait accessible à l’imagination. Que Allâh soit exempté de tout cela d’une totale exemption »', '', 'Dans son livre « Tafsîrou l-Asmâ-i l-Housnâ» (page 48 de cette édition), lors de l’explication du nom de Allâh « Al-‘Aliyy », l’Imâm Az-Zajjâj a dit :
Informations utiles :
– L’Imâm, l’exégète (Moufassir), le Spécialiste de la langue Arabe (Loughawi), le Grammairien (Nahwi) Aboû Is-hâq Ibrâhîm Ibnou Mouhammad Ibnou s-Sourri Az-Zajjâj Al-Baghdâdi, est l’un des linguistes les plus connus, il faisait partie des gens du Salaf, il est né en 241 et il est décédé en 311 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1120 ans. Il est souvent cité comme référence par les exégètes (moufassiroûn).
Al-Khatîb Al-Baghdâdi a dit de lui : « Il était parmi les gens honorables et versés dans la religion, il avait une bonne croyance et un bon madh-hab». [Târîkh Baghdâd]
Ibn Khallikân a dit le concernant : « Il était parmi les gens de science, de bonne manière et versé dans la religion». [Wafayâtou l-A’yân]
An-Nawawi a dit à son sujet : « L’Imâm dans la langue Arabe ». [Tahdhîbou l-Asmâ wa l-Loughât]
Ibn Kathîr a dit de lui : « Il était vertueux et versé dans la religion, il avait une bonne croyance et il était auteur de bons ouvrages, et parmi eux “Ma’âni Al-Qour-ân” et d’autres ouvrages bénéfiques.». [Al-Bidâyah wa n-Nihâyah]
Adh-Dhahabi a dit à son sujet : « L’Imâm, le grammairien (Nahwi) de son époque». [Siyarou A’lâmi n-Noubalâ]
– Ici, l’Imâm Az-Zajjâj, lorsqu’il explique le nom de Allâh « ‘Aliyy », il confirme que cela signifie que Allâh est supérieur à Ses créatures par Sa toute-puissance, et qu’il ne faut pas comprendre par cela la supériorité par l’endroit ou la direction.
– Dans ce même ouvrage l’Imâm Az-Zajjâj confirme ses propos en disant : « Allâh ta’âlâ est exempt de toute ressemblance avec les créatures, ce qui est visé par al-‘oulouww n’est pas l’élévation spatiale car Allâh ta’âlâ est exempt de l’emplacement et de l’endroit. Dans ce cas, al-‘oulouww ne veut dire que l’élévation du mérite et la supériorité de la souveraineté » [ Tafsîrou l-Asmâ-i l-Housnâ ].
– D’autres savants ont donné des explications du Nom de Allâh “Al-‘Aliyy” proches de celle-ci :
L’Imâm Ar-Râzi [ Dans son tafsîr ]
L’Imâm Al-Qourtoubi [ Dans son tafsîr ]
Le Moufassir Ath-Tha’âlibi [ Dans son tafsîr ]
– Retrouvez d’autres paroles de savants au sujet du ‘oulouww (élévation) de Allâh : ici .', 'al-ali, al-aliyy, al-zajjaj, ali'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'العلي: هو فَعِيل في معنى فاعل، فالله تعالى عالٍ على خَلْقِه وهو عليٌّ عليهم بقدرته، ولا يجب أن يُذهَب بالعلو ارتفاع مكانٍ، إذ قد بيَّنَّا أن ذلك لا يجوز في صفاته تقدست، ولا يجوز أن يكون على أن يُتصور بذهن، تعالى الله عن ذلك عُلوًّا كبيرًا');

-- source: https://islamsunnite.net/le-chaykh-al-azzami-explique-la-parole-de-limam-malik-sur-listiwa-de-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'l’istiwâ de Allâh selon l’Imâm Mâlik', 'Al Azhar', '« [عن قول مالك لذاك الرجل « صاحب بدعة » : ] لأن سؤاله عن كيفية الاستواء يدل على أنه فهم الاستواء على معناه الظاهر الحسي الذي هو من قبيل تمكن جسم على جسم واستقراره عليه، وإنما شك في كيفية هذا الاستقرار. فسأل عنها، وهذا هو التشبيه بعينه الذي أشار إليه الإمام بالبدعة »', 'Parce que sa question sur le comment de l’istiwâ indique qu’il a compris l’istiwâ selon son sens apparent, physique, qui relève de l’emprise d’un corps sur un autre et de son établissement dessus, et qu’il n’a fait que douter sur le comment de cet établissement. Il a donc demandé à son sujet. Et c’est exactement cela l’assimilation (tachbîh) que l’Imâm Mâlik a pointé comme étant une innovation (bid’ah)', '', 'Dans son livre «Fourqânou l-Qour-ân», concernant la parole « fauteur d’innovation » [صاحب بدعة] adressé par l’Imâm Mâlik à cet homme qui lui avait demandé « comment est l’istiwâ de Allâh », le Chaykh Al-Qoudâ’i Al-’Azzâmi explique en disant :
Informations utiles :
– Le Mouhaddith, le Faqîh (spécialiste de la jurisprudence), le Chaykh Salâmah Al-Qoudâ’i Al-’Azzâmi Ach-Châfi’i est né en 1298 et il est décédé en 1376 de l’Hégire (رحمه الله). Il faisait parti des savants de l’Université Islamique Al-Azhar d’Egypte.
– Ici, lors de l’explication de l’histoire de cet homme ignorant qui a osé demander à l’Imâm Mâlik « comment est l’istiwâ de Allâh ? », il dit que justement si l’Imâm Mâlik a dit à cet homme qu’il est un mauvais innovateur et qu’il l’a fait sortir, c’est que la question de cet homme relevait de l’innovation blâmable. En effet, le fait qu’il ait demandé « comment ? » au sujet de l’istiwâ de Allâh est en soit une mauvaise innovation.
– Le comment (al-kayf) : c’est ce par quoi on décrit les créatures, c’est-à-dire les dimensions, le début, la fin, la couleur, l’endroit, la direction, la forme, la position assise, la proximité, le mouvement, le déplacement, le changement et tout ce qui fait partie des attributs des créatures. Allâh est exempt de tout cela.
– L’Imâm Al-Bayhaqi a bien résumé tout cela en disant au sujet de Allâh ta’âlâ : « Il est Celui Qui n’est pas soumis aux illusions de la kayfiyyah (comment, description physique) » [Dans son livre : Al-I’tiqâd]
– L’Imâm Mâlik a clairement dit que le comment au sujet de l’istiwâ de Allâh est inconcevable, c’est-à-dire que c’est un istiwâ sans comment (bilâ kayf). En effet, l’Imâm Mâlik n’a pas accepté que l’on demande « comment ? » au sujet de l’istiwâ de Allâh. Ceci nous confirme donc que l’istiwâ de Allâh n’est pas une position assise, ni un établissement, ni une installation, ni une élévation spatiale ni aucun autres sens qui font partie des attributs des créatures et qui sont concerné par le « comment » [kayf].
– L’Imâm Mâlik a dit également : « l’istiwâ n’est pas inconnu » (al-istiwâ ghayrou majhoûl) c’est-à-dire que l’istiwâ est connu car il est rapporté dans le Qour-ân, puis il a dit : « le comment n’est pas concevable »(al-kayf minhou ghayrou ma’qoûl) c’est-à-dire que le comment est exclu, impossible à Son sujet, à savoir que l’istiwâ dans le sens du comment, c’est-à-dire de l’attitude comme la position assise, n’est pas concevable : la raison ne l’accepte pas puisqu’il fait partie des caractéristiques des créatures. En effet, la position assise n’est valable que pour un être qui a des membres, c’est-à-dire un postérieur et des genoux, gloire à Allâh Qui est exempté de tout cela.
– Une autre version authentique proche de celle-ci est rapportée de Mâlik avec les termes (wa kayfa ‘anhou marfoû’) c’est-à-dire : « Dire “comment” est exclu à Son sujet ».
– La parole de l’Imâm Mâlik rejetant le « comment » au sujet de l’istiwâ de Allâh est rapportée avec une chaîne de transmission authentique. Elle a également été citée par :
Le Hâfidh Aboû Nou’aym dans « Hilyatou l-Awliyâ » ;
L’Imâm Al-Bayhaqi dans son livre « Al-Asmâ-ou wa s-Sifât », et aussi [ Dans son livre « Al-I’tiqâd » ] ;
L’Imâm Al-Qayrawâni [ Dans son livre « Kitâb Al-Jâmi’ » ] ;
L’Imâm Al-Qourtoubi [ Dans son Tafsîr ] ;
L’Imâm Aboû Hayyân Al-Andalouçi [Dans son Tafsîr Al-Bahrou l-Mouhît]
Le Hâfidh Ibnou Hajar Al-‘Asqalâni dans son livre « Fathou l-Bârî charh Sahîh Al-Boukhâri » qui précise que la chaîne de transmission de l’Imâm Al-Bayhaqi est forte (jayyid) ;
Le Hâfidh As-Souyoûti dans son tafsîr « Ad-Dourrou l-Manthoûr fi t-Tafsîri bi l-Ma-thoûr »
et autres qu’eux.
– Le Hâfidh Az-Zabîdi a dit : « Ibnou l-Labân a dit dans l’explication de la parole de Mâlik : sa parole « Kayf ghayrou ma’qoûl » (le comment est inconcevable) : c’est-à-dire que le kayf (comment) fait parti des caractéristiques de ce qui entre en existence, et tout ce qui fait parti des attributs des choses entrées en existence, le fait de les attribuer à Allâh contredit la raison, de ce fait cela est catégoriquement renié pour Allâh ta’âlâ. Quant à sa parole : « wa l-Istiwâ ghayrou majhoûl » (l’istiwâ n’est pas inconnu) c’est-à-dire que son sens est connu par les spécialistes de la langue Arabe, et sa parole « wa l-îmânou bihi» (et y croire) c’est-à-dire selon ce qui est digne de Lui ta’âlâ, « wâjib» (est un devoir) car cela fait parti de la foi en Allâh et en Ses livres, « wa s-sou-âlou ‘anhou bid’ah » ( poser la question à ce sujet est une innovation ) c’est-à-dire une nouveauté car les compagnons connaissaient son sens qui est digne d’être attribué à Allâh du point du vue de la langue, ainsi ils n’ont pas été amené à poser cette question» [It-hâfou s-Sâdati l-Mouttaqîn].
– Ainsi, la version propagée par les moujassimah (corporalistes), selon laquelle Mâlik aurait dit « le comment est ignoré » (al-kayfou majhoûl), cette version n’est pas vraie ; elle n’a été validée d’aucun des Salaf ; elle n’a pas été confirmée comme étant la parole de Mâlik ni de personne d’autre parmi les Imâm. L’Imâm Mâlik n’a pas dit « le comment est ignoré » (al-kayfou majhoûl). Cette version n’a aucune chaîne de transmission sur laquelle on puisse se baser et elle n’est pas conforme au tawhîd. En effet, le fait de dire que le comment est ignoré, cela insinue que Allâh aurait des attributs qui ont un comment (des caractéristiques des créatures), mais que nous ne saurions pas par lesquelles de ces caractéristiques Il serait attribué; et cela contredit le tawhîd. Cependant certains savants ont cité cette version dans leurs ouvrages en expliquant “al-kayf” par “al-haqîqah” c’est-à-dire Sa réalité, ainsi ils comprennent de cette expression que nul ne connaît la réalité de Allâh si ce n’est Allâh Lui-même.
– Le Chaykh Ahmad Zarroûq explique [ dans son livre « Charh ‘Aqîdati l-Ghazâli » ] que la version contenant les termes « al-kayfiyyatou majhoûlah » n’est pas authentique, car elle signifierait que le comment est inconnu. Cette parole impliquerait donc qu’il existe un comment mais que celui-ci serait ignoré, alors que l’Imâm Mâlik a justement voulu expliquer qu’il n’y a pas de comment.
– Ce qui confirme davantage la position de l’Imâm Mâlik, c’est ce que rapporte l’Imâm Al-Bayhaqi qui a dit : « [Les imâms] Al-Awzâ’i, Mâlik, Soufyân Ath-Thawri et Al-Layth Ibn Sa’d ont été questionné au sujet de ces hadîth (les hadîth moutachâbih – équivoques -), alors ils ont dit : Citez les comme ils sont parvenus, sans attribuer de comment (bilâ kayfiyyah) » [ Dans son livre “Al-I’tiqâd” ].
– De même l’Imâm Mâlik considérait le verset de l’istiwâ de parmi les moutachâbihât (textes équivoques). En effet, l’Imâm Aboû Mansoûr Al-Baghdâdi a dit : « Certains d’entre eux [c’est-à-dire les savants] ont dit que le verset de l’istiwâ est moutachâbih (équivoque), et ceci est l’avis de Mâlik Ibn Anas, des Fouqahâ de Médine et de Al-Asma’i » [Dans son livre Ousoûlou d-Dîn].
– Remarque importante : il y a une grande différence entre :
La parole des gens de la Sounnah qui disent que Allâh est sans comment (bilâ kayf), c’est-à-dire qu’Il n’est pas concerné par le comment, la description physique, comme cela a clairement été déclaré par les grands Imâm de la Oummah ;
et la parole des mouchabbihah (assimilateurs) qui se sont illusionné et qui ont pris pour croyance que Allâh aurait un comment mais que ce comment serait d’après eux ignoré, et qui disent : on ne sait pas comment. Ainsi, Ibn ‘Outhaymîn le wahhabite a contredit ouvertement les gens de la Sounnah en disant : « Nous ne nions pas à leurs sujets [les textes moutachâbihah] la kayfiyyah (comment, description physique) au contraire nous croyons qu’ils ont une kayfiyyah, mais nous n’avons pas connaissance de cette kayfiyyah » [Dans son livre intitulé “Charh al-‘Aqîdah Al-Wâsitiyyah”].
– Certains leaders de la mouvance sectaire wahhabite ont même prétendu textuellement que Allâh serait assis sur le trône. Article à consulter à ce sujet : Ar-Râjihi et Fawzân (wahhabites) prétendent que Allâh est assis sur le trône.
– Les wahhabites ont hérité cette croyance abjecte d’Ibn Taymiyah (moujassim) qui a également prétendu que Allâh serait assis. Article à consulter à ce sujet : L’Imam Abou Hayyan Al-Andalouçi dénonce l’égarement de Ibn Taymiyah .
– De plus, Il a été rapporté que l’Imâm Mâlik considérait mécréant ceux qui ont pour croyance que Allâh serait dans une direction ou qu’Il serait un corps [ Rapporté par Al-Haytami ] et [ Rapporté par Al-Qâri ] et [ Rapporté par Mahmoûd As-Soubki Al-Azhari ].
– Nous voyons également que le Chaykh Al-‘Azzâmi confirme que l’istiwâ de Allâh ne doit pas être compris au sens apparent et que par conséquent, l’istiwâ de Allâh n’est pas un établissement. Dans ce même ouvrage, il mentionne l’unanimité sur le fait que Allâh n’est pas dans un endroit ou une direction, en disant : « Les gens de la vérité parmi les savants du salaf et du khalaf sont unanimes sur le fait que Allâh est exempt de la direction et de l’endroit, et sur Son exemption de la partition, de la division, de la montée, de la descente, de la proximité, de l’éloignement, du déplacement, du mouvement, de l’immobilité et de tout ce qui est semblable à cela » [ Retrouvez l’article : ici ]
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
Il n’est donc pas permis de traduire le verset {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} (Ar-Rahmânou ‘ala l-’archi stawâ) et ceux qui sont similaires par le fait que Allâh serait établi sur le trône car cette explication est contraire au tawhîd (l’unicité de Allâh).', 'al kayf ghayrou ma3qoul, al kayfou ghayrou ma3qoul, al-azhar, al-azhari'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« [عن قول مالك لذاك الرجل « صاحب بدعة » : ] لأن سؤاله عن كيفية الاستواء يدل على أنه فهم الاستواء على معناه الظاهر الحسي الذي هو من قبيل تمكن جسم على جسم واستقراره عليه، وإنما شك في كيفية هذا الاستقرار. فسأل عنها، وهذا هو التشبيه بعينه الذي أشار إليه الإمام بالبدعة »');

-- source: https://islamsunnite.net/le-loughawi-az-zajjaj-du-salaf-donne-la-definition-de-ladoration-al-ibadah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Qu’est-ce que l’adoration ?', 'Zajjaj', 'معنى العبادة في اللغة الطاعة مع الخضوع', 'L’adoration (al-‘ibâdah) dans la langue [arabe] c’est l’obéissance avec la soumission [extrême]', '', 'Dans son tafsîr « Ma’âni Al-Qour-ân», lors de l’explication de la parole « إِيَّاكَ نَعۡبُدُ » « iyyâka na’boudou » (soûrat Al-Fâtihah), l’Imâm Az-Zajjâj a dit :
Informations utiles :
– L’Imâm, l’exégète (Moufassir), le Spécialiste de la langue Arabe (Loughawi), le Grammairien (Nahwi) Aboû Is-hâq Ibrâhîm Ibnou Mouhammad Ibnou s-Sourri Az-Zajjâj Al-Baghdâdi, est l’un des linguistes les plus connus, il faisait partie des gens du Salaf, il est né en 241 et il est décédé en 311 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1120 ans. Il est souvent cité comme référence par les exégètes (moufassiroûn).
Al-Khatîb Al-Baghdâdi a dit de lui : « Il était parmi les gens honorables et versés dans la religion, il avait une bonne croyance et un bon madh-hab». [Târîkh Baghdâd]
Ibn Khallikân a dit le concernant : « Il était parmi les gens de science, de bonne manière et versé dans la religion». [Wafayâtou l-A’yân]
An-Nawawi a dit à son sujet : « L’Imâm dans la langue Arabe ». [Tahdhîbou l-Asmâ wa l-Loughât]
Ibn Kathîr a dit de lui : « Il était vertueux et versé dans la religion, il avait une bonne croyance et il était auteur de bons ouvrages, et parmi eux “Ma’âni Al-Qour-ân” et d’autres ouvrages bénéfiques.». [Al-Bidâyah wa n-Nihâyah]
Adh-Dhahabi a dit à son sujet : « L’Imâm, le grammairien (Nahwi) de son époque». [Siyarou A’lâmi n-Noubalâ]
– Le spécialiste de la langue arabe (loughawi) Al-Azhari a également rapporté cette définition de l’Imâm Az-Zajjâj dans son livre « Tahdhibou l-Loughah ». Et Al-Azhari fait également parti des loughawi du salaf. De même Ibn Mandhoûr a rapporté cette définition de l’Imâm Az-Zajjâj dans son célèbre ouvrage « Liçânou l-‘arab ».
– D’autres savants ont tenu des définitions similaires tels que :
Le linguiste Al-Azhari qui a dit : « L’adoration dans la langue c’est l’obéissance avec humilité et soumission [extrême] » [Tahdhibou l-Loughah]
Le linguiste Al-Farrâ qui a dit : « Le sens de l’adoration dans la langue c’est l’obéissance avec humilité et soumission [extrême] » [Rapporté par Ibn Mandhoûr dans Liçânou l-‘arab]
L’Imâm Abou l-Moudhaffar As-Sam’âni (m.489 H.) qui a dit : « L’adoration, c’est l’obéissance avec humilité et soumission [extrême] » [Dans son tafsîr]
Le linguiste Abou l-Qâçim Ar-Râghib Al-Asbahâni (m.502 H.) qui a dit : « L’adoration, c’est l’extrême soumission » [Al-Moufradât] ;
Le linguiste Al-Fayyoûmi (m.770 H.) qui a dit : « L’adoration, c’est l’humilité et la soumission [extrême] » [Al-Misbâhou l-Mounîr] ;
Ibnou l-Athîr qui a dit : « Le sens de l’adoration, dans la langue, c’est l’obéissance avec humilité et soumission [extrême] » [Rapporté par Az-Zabîdi dans Tâjou l-‘Aroûs et d’autres]
L’Imâm, le Linguiste Aboû Hayyân Al-Andalouçi qui a dit : « L’adoration c’est la soumission, c’est ce qu’a dit la majorité (joumhoûr) [des spécialistes de la langue Arabe]» [Al-Bahrou l-Mouhît].
L’Imâm, le linguiste Taqiyyou d-Dîn As-Soubki (m.756 H.) qui a dit : « L’adoration, c’est l’extrême limite de l’humilité et de la soumission » [Fatâwâ As-Soubki].
– À partir de cette définition de l’adoration, on a su que ce terme ne désigne pas la simple obéissance, ni le simple appel, ni la simple demande de secours ou d’aide, ni la simple crainte, comme le croient à tort certaines personnes.
– En effet, le simple fait d’appeler (nidâ) un vivant ou un mort ne constitue pas une adoration d’autre que Allâh, ni le simple fait de glorifier (ta’dhîm) ou de faire al-istighâthah (la recherche du renfort) par autre que Allâh. De même, le simple fait de visiter la tombe d’un saint pour le tabarrouk (la recherche des bénédictions) ne constitue pas une adoration d’autre que Allâh. De même, le simple fait de demander ce qu’il n’est pas habituel de demander aux gens ne constitue pas une adoration d’autre que Allâh. De même, la formule de al-isti’ânah (demande d’aide) à autre que Allâh ta’âlâ ne constitue pas une adoration d’autre que Allâh. Egalement, la simple humilité n’est pas une adoration envers autre que Allâh car sinon, tous ceux qui font preuve d’humilité avec les rois et les nobles seraient devenus mécréants.
C’est-à-dire que tout cela n’est pas du chirk (le fait d’attribuer des associés à Allâh), car la définition de l’adoration (al-‘ibâdah) selon les spécialistes de la langue ne s’applique pas à tout cela. En effet, pour eux, l’adoration (al-‘ibâdah) comme nous venons de le voir est l’obéissance avec la soumission.', 'adoration, adore, adorer, aide'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'معنى العبادة في اللغة الطاعة مع الخضوع');

-- source: https://islamsunnite.net/al-bouhouti-confirme-qu-on-ne-se-base-pas-sur-le-calcul-pour-ramadan/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'A quel moment début le mois de Ramadân.', 'Les Hanbalites', 'وإن نواه أي صوم يوم الثلاثين من شعبان بلا مستند شرعيّ من رؤية هلاله أو إكمال شعبان أو حيلولة غيم أو قتر ونحوه ان صامه لحساب ونجوم ولو كثرت إصابتهما أو مع صحو فبان منه لم يجزئه صومه لعدم استناده لما يعوّل عليه شرعًا', 'Et s’il a fait l’intention de jeûner le trentième jour de Cha’bân sans aucun argument légal tel que la vue de son croissant [c’est-à-dire du croissant de Ramadân], l’accomplissement de Cha’bân [à trente jours] ou la présence de nuages, de difficultés ou de ce qui est équivalent, comme dans le cas de celui qui a jeûné en se basant sur le calcul et l’astronomie, même si plusieurs de leurs conclusions convergent, ou bien si le ciel est dégagé mais il n’a pas fait d’observation, alors son jeûne ne le décharge pas parce qu’il ne s’est pas basé sur ce qui est un argument du point de vue de la Loi de l’Islâm', '', 'Dans son livre « Kach-châfou l-Qinâ’ », le Chaykh Al-Bouhoûti Al-Hanbali a dit :
Informations utiles :
– Le Chaykh, Al-‘Allâmah (l’illustre savant), le Faqîh (spécialiste de la jurisprudence) Mansoûr Ibn Yoûnous Al-Bouhoûti Al-Misri Al-Hanbali est né en 1000 à Bouhoût (Egypte) et il est décédé en 1051 de l’Hégire (رحمه الله) au Caire (Egypte), c’est-à-dire il y a environ 385 ans. Il est l’un des plus connus parmi les Faqîh Hanbali des derniers siècles.
– Ici, il dit clairement qu’il n’est pas valable de se baser sur le calcul pour déterminer le début du mois de Ramadân.
– En effet le Messager de Allâh (صلى الله عليه وسلم) a dit :', 'ahlou s-sounnah, al boukhari, al-bouhoutiyy, al-buhutiyy'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وإن نواه أي صوم يوم الثلاثين من شعبان بلا مستند شرعيّ من رؤية هلاله أو إكمال شعبان أو حيلولة غيم أو قتر ونحوه ان صامه لحساب ونجوم ولو كثرت إصابتهما أو مع صحو فبان منه لم يجزئه صومه لعدم استناده لما يعوّل عليه شرعًا');

-- source: https://islamsunnite.net/chaykh-al-marighini-az-zaytouni-dit-que-les-moujassimah-sont-mecreant-par-unanimite/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'les moujassimah sont mécréant par unanimité', 'Unanimité', '… ويسمى الاعتقاد الفاسد كاعتقاد قدم العالم أو تعدد الاله أو أن الله تعالى جسم، وصاحب هذا الاعتقاد مجمع على كفره', '… et la mauvaise croyance comme la croyance que le monde n’a pas de début ou qu’il y aurait plusieurs divinités ou que Allâh ta’âlâ serait un corps, et celui qui a cette croyance est mécréant à l’unanimité', '', 'Dans son commentaire de la ‘Aqîdah As-Sanoûssiyah As-Soughrâ intitulé « Tâli’ou l-Bouchrâ » (Page 69 et 70 de cette édition), le Chaykh Al-Mârighni Az-Zaytoûni Al-Mâliki a dit :
Informations utiles :
– Le Chaykh, Al-‘Allâmah (l’illustre savant) Ibrâhîm Ibnou Ahmad Al-Mârighni At-Toûniçi Az-Zaytoûni Al-Mâliki est décédé 1349 de l’Hégire (رحمه الله), c’est-à-dire il y a environ 85 ans. Il était l’un des savants de référence de l’université Az-Zaytoûnah en Tunisie. Il faisait d’ailleurs partie des chouyoûkh du grand Chaykh Ibnou ‘Âchoûr Az-Zaytoûni Al-Mâliki. Ce livre « Tâli’ou l-Bouchrâ» a reçu l’agrément des savants de Zaytoûnah, ils l’ont approuvé, l’ont déclaré conforme à la croyance sunnite et ils l’ont choisi comme livre d’enseignement de référence à Zaytoûnah.
– Ici le Chaykh Al-Mârighni Az-Zaytoûni dit que les moujassimah sont mécréant à l’unanimité. Tout comme sont mécréant à l’unanimité ceux qui ont pour croyance que le monde n’a pas de début ou qu’il y aurait plusieurs divinités. Les anthropomorphistes (moujassimah) sont ceux qui attribuent à Allâh le corps, la direction, l’endroit et autres caractéristiques des créatures.
– Définition : le corps c’est ce qui a une longueur, une largeur et une profondeur. Il n’est donc pas permis d’attribuer cela à Allâh. D’autres savants ont dit que le corps est ce qui est composé de deux substances élémentaires (jawhar) ou plus, c’est-à-dire que le corps est ce qui est composé. Et Allâh n’est ni composé ni un composant.
L’Imâm Ahmad Ibn Hambal a dit : « Les spécialistes de la langue ont mentionné que le mot « corps » (jism) est attribué pour tout ce qui présente une longueur, une largeur, une épaisseur, une composition et une image, et Allâh ta’âlâ est exempt de tout ceci » [ Rapporté par Abou l-Fadl At-Tamîmi ]
L’Imâm Al-Moutawalli (m.478 h.) a dit : « Le corps (jism) c’est ce qui est composé, et le minimum d’un corps c’est la composition de deux substances [élémentaires] (jawhar)» [Dans son livre Al-Ghounyah fî Ousoûli d-Dîn]
Le Loughawi (spécialiste de la langue Arabe) Ar-Râghib Al-Asbahâni (m.502 A.H.) a dit : « Le corps (jism) c’est ce qui a une longueur, une largeur et une profondeur » [Rapporté par Az-Zabîdi dans Tâj al-‘Aroûss]
L’Imâm Al-Ghazâli (m.505 A.H.) a dit : « le corps » (jism) est ce qui a une longueur, une largeur et une profondeur. » [ Iljâmou l-‘awâmm ‘an ‘ilmi l-kalâm ]
Le Mouhaddith Mouhammad ‘Abdou r-Ra-oûf Al-Mounâwi (m.1031 A.H.) a dit : « Le corps (jism) est ce qui a une longueur, une largeur et une profondeur » [At-Ta’ârîf]
Le Mouhaddith ‘Abdou l-Lâh Al-Harari a dit : « Le corps (jism) c’est tout ce qui a un volume ou une longueur, une largeur et une profondeur, qu’il soit grand ou petit » [Boughyatou t-Tâlib]
– Les corps se divisent en deux catégories : les corps palpables et les corps impalpables. Les corps palpables, c’est ce qu’on peut saisir à la main tel que les pierres, les plantes, les humains… Et les corps impalpables, c’est ce qu’on ne peut pas saisir à la main tel que la lumière, les Anges, les Jinns, les âmes… Les corps, qu’ils soient palpables ou impalpables, ainsi que leurs caractéristiques sont tous créés par Allâh, par conséquent Allâh n’est pas un corps, ni un corps palpable, ni un corps impalpable.
– Celui qui attribue à Allâh le fait d’avoir une longueur, ou une largeur, ou une profondeur, ou d’être composé, ou d’être un composant est mécréant par unanimité des savants qu’ils soient du Salaf ou du Khalaf. Il n’est donc pas permis de dire ou de croire que Allâh aurait des membres ou des organes, tels que la main, les doigts, les yeux, le pied, le tibia, le visage …
– Important : il n’y a pas de divergence sur le fait que le moujassim (celui qui adore un corps) est mécréant. Car celui qui adore un corps, il adore autre que Allâh. Le corps est une chose qui est nécessairement créé et entré en existence. Et celui qui adore une créature, celui qui adore autre que Allâh n’est pas musulman, par unanimité. Même s’il appelle « Allâh » le corps qu’il adore. Car il aura voué son adoration à autre que Allâh.
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah]
– Cette citation réfute la prétention de ceux qui disent que les moujassimah ne sont pas déclaré mécréant.
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
Le Chaykh Mouhammad ‘illaych Al-Mâliki [ Dans son livre Minhou l-Jalîl ]
Le Chaykh Salîm Al-Bichri Al-Azhari (1335 H.) [Rapporté par Al-‘Azzâmi]
Le Chaykh Al-Marighni Az-Zaytoûni qui mentionne l’unanimité [Dans son livre Tâli’ou l-Bouchrâ]
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
– Retrouvez d’autres paroles de savants confirmant le fait qu’ attribuer l’endroit ou la direction à Allâh est de la mécréance : ici .', 'al-marighiniyy, al-marighni, al-marighniyy, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '… ويسمى الاعتقاد الفاسد كاعتقاد قدم العالم أو تعدد الاله أو أن الله تعالى جسم، وصاحب هذا الاعتقاد مجمع على كفره');

-- source: https://islamsunnite.net/le-chaykh-abdou-l-lah-al-harari-explique-listiwa-de-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas assis ni établi sur le trône', '''Ali Ibn Abi Talib', 'يَجِبُ أن يكونَ تفسيرُ هذه الآية بغيرِ الاستِقْرارِ والجلُوسِ ونحوِ ذلكَ ويَكْفُر منْ يعتَقِدُ ذَلِكَ، فَيَجِبُ تَركُ الحَمْلِ علَى الظّاهِر بَلْ يُحمَلُ على مَحْمِلٍ مُسْتَقِيمٍ في العُقُولِ فتُحمَلُ لفْظَةُ الاسْتِواءِ علَى القَهْرِ ففي لُغَةِ العَرَبِ يُقَالُ اسْتَوى فُلانٌ على المَمَالِكِ إذَا احْتَوَى علَى مَقَالِيدِ المُلْكِ واسْتَعْلَى علَى الرّقَابِ كَقَوْلِ الشَّاعِرِ: [الزجر] قَد اسْتَوَى بِشْرٌ علَى العِراقِ مِنْ غَيْرِ سَيْفٍ ودَمٍ مُهْراقِ', '', '', '', '3arch, abache, abaches, abachi'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'يَجِبُ أن يكونَ تفسيرُ هذه الآية بغيرِ الاستِقْرارِ والجلُوسِ ونحوِ ذلكَ ويَكْفُر منْ يعتَقِدُ ذَلِكَ، فَيَجِبُ تَركُ الحَمْلِ علَى الظّاهِر بَلْ يُحمَلُ على مَحْمِلٍ مُسْتَقِيمٍ في العُقُولِ فتُحمَلُ لفْظَةُ الاسْتِواءِ علَى القَهْرِ ففي لُغَةِ العَرَبِ يُقَالُ اسْتَوى فُلانٌ على المَمَالِكِ إذَا احْتَوَى علَى مَقَالِيدِ المُلْكِ واسْتَعْلَى علَى الرّقَابِ كَقَوْلِ الشَّاعِرِ: [الزجر] قَد اسْتَوَى بِشْرٌ علَى العِراقِ مِنْ غَيْرِ سَيْفٍ ودَمٍ مُهْراقِ');

-- source: https://islamsunnite.net/le-chaykh-abdou-l-lah-al-harari-explique-listiwa-de-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas assis ni établi sur le trône', '''Ali Ibn Abi Talib', 'وفَائِدَةُ تَخْصِيص العَرْشِ بالذّكْرِ أنَّهُ أعْظَمُ مَخلُوقَاتِ الله تَعَالى حجمًا فيُعْلَمُ شُمُولُ ما دُوْنَه مِنْ بَابِ الأَوْلَى. قَالَ الإمَامُ عَلِيٌّ: « إنَّ الله تَعَالى خَلَقَ العَرْشَ إِظْهَارًا لقُدْرَتِهِ، ولمْ يَتّخِذْهُ مَكَانًا لِذَاتِهِ »، رواهُ الإمامُ المحدثُ الفقيهُ اللغويُّ أبو منصورٍ التميميُّ في كتابهِ الفرق بين الفرق، أَوْ يُقَالُ اسْتَوَى اسْتِوَاءً يَعْلَمُهُ هُوَ مَع تَنزِيْهِهِ عن اسْتِواءِ المخْلُوقِيْنَ كَالجُلوسِ والاسْتِقرارِ.', '', '', '', '3arch, abache, abaches, abachi'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وفَائِدَةُ تَخْصِيص العَرْشِ بالذّكْرِ أنَّهُ أعْظَمُ مَخلُوقَاتِ الله تَعَالى حجمًا فيُعْلَمُ شُمُولُ ما دُوْنَه مِنْ بَابِ الأَوْلَى. قَالَ الإمَامُ عَلِيٌّ: « إنَّ الله تَعَالى خَلَقَ العَرْشَ إِظْهَارًا لقُدْرَتِهِ، ولمْ يَتّخِذْهُ مَكَانًا لِذَاتِهِ »، رواهُ الإمامُ المحدثُ الفقيهُ اللغويُّ أبو منصورٍ التميميُّ في كتابهِ الفرق بين الفرق، أَوْ يُقَالُ اسْتَوَى اسْتِوَاءً يَعْلَمُهُ هُوَ مَع تَنزِيْهِهِ عن اسْتِواءِ المخْلُوقِيْنَ كَالجُلوسِ والاسْتِقرارِ.');

-- source: https://islamsunnite.net/le-chaykh-abdou-l-lah-al-harari-explique-listiwa-de-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Allâh n’est pas assis ni établi sur le trône', '''Ali Ibn Abi Talib', 'واعْلَم أَنَّه يَجِبُ الحَذَرُ مِنْ هؤلاءِ الذينَ يُجِيزُوْنَ علَى الله القُعُودَ علَى العَرْشِ والاسْتِقْرارَ عليه مُفَسّرينَ لِقَوله تعالى: ﴿الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى (5)﴾ بالجُلُوسِ أو المحاذاةِ من فوق، ومُدَّعِينَ أَنَّه لا يُعْقَلُ مَوْجُودٌ إلا في مَكَانٍ، وحُجَّتُهم دَاحِضَةٌ، ومُدَّعِيْنَ أيضًا أنَّ قَوْلَ السَّلَفِ اسْتَوى بلا كَيْفٍ مُوافِقٌ لذَلِكَ وَلم يَدْرُوا أنَّ الكَيْفَ الذي نَفاهُ السَّلَفُ هُوَ الجُلُوسُ والاسْتِقْرارُ والتّحَيُّزُ في المَكَانِ والمُحَاذاةُ وكلُّ الهيئاتِ من حركةٍ وسكونٍ وانتقالٍ. »', '« L’exégèse du verset : {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} (Ar-Rahmânou ‘ala l-‘archi stawâ) :', '', 'Il est un devoir de faire l’exégèse de ce verset dans un sens autre que celui de l’établissement (al-istiqrâr), de la position assise (al-jouloûss) ou de ce qui est de cet ordre. Celui qui croit une telle chose est devenu mécréant. Il est donc un devoir de s’abstenir de retenir le sens apparent – qui vient communément à l’esprit – et l’on retient au contraire une sémantique compatible avec la raison.
Par conséquent, on retient pour le terme « istawâ » le sens de « al-qahr » (la domination). En effet, dans la langue des arabes, on dit » إِسْتَوَى فُلاَنٌ عَلَى الْمَمَالِك » (istawâ foulânoun ‘ala l-mamâlik) « Untel a dominé les royaumes » , lorsqu’il a pris les rênes du pouvoir et a fait peser son joug sur les gens, comme le dit le poète : « قَدِ اسْتَوَى بِشْرٌ عَلَى الْعِرَاقِ مِنْ غَيْرِ سَيْفٍ وَدَمٍ مُهْرَاقٍ » (Qadi stawâ Bichroun ‘ala l-‘Irâqi min ghayri sayfin wa damin mouhrâqi) ce qui a pour sens : « Bichr a dominé l’Irak assurément sans tirer d’épée ni faire couler de sang ».
L’intérêt de spécifier le Trône en le citant dans le verset, c’est parce qu’il est la plus grande des créatures de Allâh ta’âlâ ; ainsi, on apprend que la domination de Allâh concerne ce qui est plus petit que le trône à plus forte raison. L’Imâm ‘Ali a dit : « Allâh ta’âlâ a créé le Trône par manifestation de Sa toute-puissance et ne l’a pas pris comme endroit pour Lui-même ». Ceci a été rapporté par l’Imam, le Mouhaddith, faqîh et linguiste, Aboû Mansoûr At-Tamîmi dans son livre Al-Farqou bayna l-Firaq.
On peut dire aussi « istiwâ » d’un istiwâ que Lui sait, tout en L’exemptant de l’istiwâ des créatures tel que la position assise et l’établissement.
Sachez aussi qu’il est un devoir de mettre en garde contre ces gens qui considèrent possible le fait de s’asseoir et de s’établir sur le Trône concernant Allâh, eux qui expliquent Sa parole ta’âlâ : { الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى } (Ar-Rahmânou ‘ala l-‘archi stawâ) par la position assise ou par le face à face par au-dessus, eux qui prétendent « qu’on ne peut concevoir l’existence d’un être que dans un endroit », leur argumentation est invalide. Eux qui prétendent aussi que la parole des gens du Salaf : «istawâ sans comment» serait en accord avec leur croyance, Ils n’ont pas su que le comment que les gens du Salaf ont nié, c’est justement la position assise, l’établissement, la localisation dans un endroit, le face à face avec un corps ainsi que touts les aspects physiques ou moraux tels que le mouvement, l’immobilité et l’humeur.
[Puis il continue en citant la longue réfutation de l’Imâm Al-Qouchayri en réplique aux anthropomorphistes] »
Informations utiles :
– Al-‘Allâmah (l’illustre savant), l’Imâm, le Mouhaddith (transmetteur du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chaykh ‘Abdoul-Lâh Al-Harari Ach-Châfi’i Ach-Chaybi Al-‘Abdari connu sous le nom de Al-Habachi est décédé en 1429 de l’Hégire (رحمه الله). Il était un grand défenseur de la croyance de Ahlou s-Sounnah. De nombreux savants et responsables d’institutions islamiques ont fait son éloge. Parmi eux :
Le Mouhaddith des contrées marocaines, le Chaykh ‘Abdou l-‘Azîz Al-Ghoumâri a dit à son sujet : « Le Chaykh ‘Abdou l-Lâh est juste (‘adl)… Il a des ouvrages dignes de considération et des livres utiles dans l’explication des Lois de Allâh pour les musulmans, qui montrent bien qu’il fait partie des religieux qui ont une grandeur d’âme et qui œuvrent pour la religion de Allâh. Il n’est donc pas permis, après tout cela, qu’on le calomnie dans sa religion, qu’on le discrédite dans sa croyance ou qu’on récuse sa justesse » .
Le Docteur ‘Oumar Hâchim, qui était président de l’université Al-Azhar en Egypte a dit de lui : « Le Mouhaddith, le Chaykh ‘Abdou l-Lâh Al-Harari est illustre par sa science et sa piété » .
Le Chaykh Mouhammad Châh Al-Hâmidi Al-Houçayni a dit : « Certe, le Chaykh ‘Abdou l-Lâh est un Imâm dans la ‘Aqîdah (croyance), le Fiqh ( jurisprudence), la langue arabe, le Hadîth, et il est rare de trouver semblable à lui dans cette époque. Et ceci n’est pas uniquement mon propre témoignage mais aussi le témoignage de mon père Al-‘Allâmah (l’illustre savant) le Chaykh Qoutbou d-Dîn Al-Hâmidi Al-Houçayni (rahimahou l-Lâh) le Moufti de Deir ez-Zor, et c’est également le témoignage de beaucoup des plus grands de parmi les gens de science de la région du Châm et d’ailleurs »
Le Chaykh Mouhammad Dhafar (Dâr al-‘ouloûm Amjadiyyah de Karachi au Pakistan) a dit : « L’illustre savant érudit (Al-‘Allâmah al-Kabîr) Al-Hâfidh Al-Mouhaddith (spécialiste de la science du hadîth) l’éducateur et l’honorable Chaykh Abdoullâh Al-Harari connu par Al-Habachi suit le Madh-hab Al-Haqq (l’école de droiture) et marche sur la voie droite, celle des Sahâbah du Messager de Allâh (صلى الله عليه وسلم) , des prédécesseurs vertueux ainsi que leurs successeurs. Puisse Allâh leur accorder à tous encore davantage d’agrément et d’approbation. Et il est un Imâm (guide et référence) très grand, et il est une référence en la religion (houjjatou fi d-Dîn). Il est pieux et vertueux, véridique et sincère. » .
Le Président de l’Université et de l’Institut islamique “Az-Ziyâdah” à Jakarta en Indonésie, Habîb Al-Miçâwî, a dit : « J’ai pris connaissance des livres du Mouhaddith, le Chaykh respectable ‘Abdoul-Lâh Al-Harari Ach-Chaybi, que Allâh le préserve, surtout les livres “Al-Maqalatou s-Sounniyyah” et “Sarîhou l-Bayân”, j’ai trouvé en lui un savant, un jurisconsulte, versé dans la science et le Hadîth, je témoigne qu’il est unique à son époque et son ère et qu’il est le Moujaddid de ce siècle » . (c’est-à-dire celui qui revitalise la science de la religion).
Le Chaykh Mouhammad Noûrou d-Dîn Al-Banjari Al-Makki (l’un des Chouyoukh d’Indonésie) a dit de lui : « Concernant la science il est difficile de trouver quelqu’un de semblable au Chaykh ‘Abdou l-Lâh Al-Harari ou quelqu’un qui se rapproche de son niveau » .
Le Chaykh Indonésien, Hajj Mouhammad Châfi’i Hadhâmi, le président de l’assemblée des savants de Jakarta (capitale Indonésienne) a écrit une lettre d’éloge en sa faveur dans laquelle il a dit : « Il est le Chaykh, Al-‘Allâmah (l’illustre savant) ‘Abdou l-Lâh Ibnou Mouhammad Ach-Chaybi Al-‘Abdari Al-Harari connu sous le nom de Al-Habachi, qui est un vérificateur scrupuleux, minutieux, et qui compose avec un style synthétique. Que Allâh augmente le nombre de gens semblable à lui. Que Allâh le récompense en bien pour nous et pour les musulmans, pour ses œuvres dans sa réprimande des bid’ah [mauvaises innovations] et l’élévation de la sounnah prophétique »
Le Chaykh ‘Abdou r-Rahmân Kanj Koya Tankal Al-Boukhâri, le Juge de la province de « Yalal », doyen de la faculté « As-Sayyid Madani » et guide de l’Association des savants de Ahlou-s-Sounnah wal-Jamâ’ah dans l’ensemble de l’Inde : « J’ai été très heureux de connaître le Chaykh ‘Abdou l-Lâh Al-Harari au travers de ses ouvrages et de ses disciples. Ainsi, j’ai pu me rendre compte personnellement de l’éminence de cet homme ; j’ai trouvé en lui le savant érudit, le Mouhaddith, dont il est rare de trouver le pareil, et le jurisconsulte Moujaddid qui combat la bid’ah (la mauvaise innovation) et qui soutient la Sounnah » .
– Ici nous voyons que le Chaykh ‘Abdou l-Lâh Al-Harari confirme la croyance de Ahlou s-Sounnah concernant l’explication du verset : { الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى }. Il dit que ce verset ne signifie pas que Allâh serait assis, ou établi ou au dessus du trône comme l’on prétendu certains égarés. Mais que le sens de l’istiwâ de Allâh est plutôt la domination (qahr), et ceci en accord avec le tawhîd et la langue arabe.
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
Le Hâfidh Waliyyou d-Dîn Al-‘Irâqi [Dans son livre Tarhou t-Tathrîb]
Le Chaykh Ahmad Zarroûq Al-Fâçi [ Dans son livre Charh ‘Aqîdati l-Ghazâli ]
L’Imâm Al-Qastallâni
Chaykh Al-Islâm Zakariyyâ Al-Ansâri [ Dans son livre Ihkâm ad-Dalâlah ]
Le Chaykh Moullâ ‘Alî Al-Qârî
L’Imâm Al-Kawthari (qui rapporte l’unanimité) [ Dans son livre Maqâlâtou l-Kawthari ]
Le Chaykh Al-‘Azzâmi [ Dans son livre Fourqân al-Qour-ân ]
Le Chaykh Ibn ‘Âchoûr [ Dans son tafsîr ]
Le Chaykh Mehmed Zâhid Kotku [ Dans son livre Ehl-i Sünnet Akaidi ]
Le Hâfidh Al-Harari [Dans son livre As-Sirât al-Moustaqîm]
et de nombreux autres savants.
Il n’est donc pas permis de traduire le verset {الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى} (Ar-Rahmânou ‘ala l-’archi stawâ) et ceux qui sont similaires par le fait que Allâh serait établi ou assis sur le trône car cette explication est contraire au tawhîd (l’unicité de Allâh).
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
Chaykh Al-Islâm Zakariyyâ Al-Ansâri [ Dans son livre Ihkâmou d-Dalâlah ]
Le Chaykh Moullâ ‘Ali Al-Qâri
Le Moufassir Ismâ’îl Haqqi Al-Hanafi
Le Hâfidh Mourtadâ Az-Zabîdi
Le Chaykh Mahmoûd As-Soubki Al-Azhari [ Dans son livre It-hâfou l-Kâ-inat ]
Le Chaykh Az-Zourqâni Al-Mâliki
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Hâfidh ‘Abdou l-Lâh Al-Harari [Dans son livre As-Sirâtou l-Moustaqîm]
et de nombreux autres savants.
– Retrouvez d’autres paroles de savants concernant l’istiwâ de Allâh : ici .', '3arch, abache, abaches, abachi'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'واعْلَم أَنَّه يَجِبُ الحَذَرُ مِنْ هؤلاءِ الذينَ يُجِيزُوْنَ علَى الله القُعُودَ علَى العَرْشِ والاسْتِقْرارَ عليه مُفَسّرينَ لِقَوله تعالى: ﴿الرَّحْمَنُ عَلَى الْعَرْشِ اسْتَوَى (5)﴾ بالجُلُوسِ أو المحاذاةِ من فوق، ومُدَّعِينَ أَنَّه لا يُعْقَلُ مَوْجُودٌ إلا في مَكَانٍ، وحُجَّتُهم دَاحِضَةٌ، ومُدَّعِيْنَ أيضًا أنَّ قَوْلَ السَّلَفِ اسْتَوى بلا كَيْفٍ مُوافِقٌ لذَلِكَ وَلم يَدْرُوا أنَّ الكَيْفَ الذي نَفاهُ السَّلَفُ هُوَ الجُلُوسُ والاسْتِقْرارُ والتّحَيُّزُ في المَكَانِ والمُحَاذاةُ وكلُّ الهيئاتِ من حركةٍ وسكونٍ وانتقالٍ. »');

-- source: https://islamsunnite.net/version-imam-malik-concernant-hadith-femme-esclave-jariyah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'le hadîth de la femme esclave', 'Les Malikites', 'وحدثني مالك عن بن شهاب عن عبيد الله بن عبد الله بن عتبة بن مسعود أن رجلا من الأنصار جاء إلى رسول الله صلى الله عليه وسلم بجارية له سوداء فقال يا رسول الله ان علي رقبة مؤمنة فإن كنت تراها مؤمنة اعتقها فقال لها رسول الله صلى الله عليه وسلم أتشهدين أن لا إله إلا الله قالت نعم قال أتشهدين أن محمدا رسول الله قالت نعم قال أتوقنين بالبعث بعد الموت قالت نعم فقال رسول الله صلى الله عليه وسلم اعتقها', '', '', 'Dans son célèbre ouvrage « Al-Mouwattâ » l’Imâm Mâlik rapporte le hadîth suivant :
Ce qui a pour sens : « ‘Oubaydou l-Lâh Ibn ‘Abdi l-Lâh Ibn ‘Outbah Ibn Mas’oûd a rapporté qu’un homme de parmi les Ansâr est venu auprès du Messager de Allâh (صلى الله عليه وسلم) avec une esclave de couleur noir. Puis il a dit : « Ô Messager de Allâh, j’ai à affranchir une esclave, si celle-ci est croyante, je la libérerai ». Le Messager de Allâh (صلى الله عليه وسلم) s’adressant à l’esclave lui dit : « Témoignes-tu qu’il n’est de dieu que Allâh ? » , elle répondit « oui », Il lui dit ensuite : « Témoignes-tu que Mouhammad est le Messager de Allâh ? », elle répondit « oui ». Puis il lui dit « Crois-tu à la résurrection après la mort ? », elle répondit « oui ». Le Messager de Allâh (صلى الله عليه وسلم) dit alors « affranchis la ».
Informations utiles :
– L’Imâm, le spécialiste de la science du Hadîth, le Moujtahid (jurisconsulte), Mâlik Ibnou Anas est l’un des plus grands savants de notre communauté, il est une référence incontournable pour tous musulman. C’est un Salaf (C’est-à-dire qu’il a vécu dans les trois premiers siècles de l’Hégire), il est né en 93 et il est décédé en 179 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1260 ans. Il est l’Imâm de l’école (madh-hab) Malikite. L’Imâm Ach-Châfi’i disait de lui « Lorsque les savants sont cités, Mâlik est comme une étoile » . Consultez sa biographie : ici .
– Ici, il rapporte avec sa chaîne de transmission une version du hadîth de la femme esclave (jâriyah) qui est très différente de celle sur laquelle s’appuie les assimilateurs (mouchabbihah) pour tenter de faire croire aux musulmans que Allâh serait incarné dans le ciel.
– D’autres savants ont également rapporté des versions similaires à celle de l’Imâm Mâlik. Parmi eux : l’Imâm Ad-Dârimi [ Al-Mousnad Al-Jâmi’ ] et l’Imâm Ahmad.
Ibn Kathîr a dit au sujet de la version rapportée par l’Imâm Ahmad : « Sa chaîne de transmission est authentique (sahîh) » [Dans son Tafsîr]
– Il est à savoir que ce hadîth a été rapporté avec plusieurs versions qui sont incompatibles les unes avec les autres, au point que certains savants du hadîth l’ont jugé moudtarib (perturbé) [ voir la parole de Al-Kawthari : ici ], et le hadîth moudtarib fait partie des hadîth qui sont faible comme l’a mentionné le Hâfidh Al-‘Irâqi et d’autres. Et on ne se base pas sur un hadîth perturbé en terme de croyance.
– Ainsi, selon une version, le prophète aurait demandé « ayna l-Lâh ? », selon une autre version il aurait demandé « man rabbouki ?», selon une autre version encore cette femme esclave était muette et elle aurait montré le ciel du doigt, et selon la version ci-dessus, le prophète (صلى الله عليه وسلم) lui a demandé si elle témoignait.
– Si quelqu’un s’étonne que l’on parle de hadîth faible concernant la version avec les termes “ayna l-Lâh” et “fi s-Samâ” rapportée dans le sahîh Mouslim, qu’il sache que certains savants du Hadîth comme l’Imâm Ach-Châfi’i, l’Imâm Al-Boukhâri et l’Imâm As-Souyoûti ont considéré faibles des hadîth qui se trouvent dans le Sahîh Mouslim.
– Aussi certains savants ont rejeté la version de Mouslim de ce hadîth, car il est en contradiction avec des hadîth qui ont une chaîne de transmission beaucoup plus forte, et qui indiquent que la personne n’est considérée musulmane que si elle prononce les deux témoignages en y croyant, et non en disant “Allâhou fi s-Samâ”. D’autant plus que les chrétiens et les juifs sont en accord avec les moujassimah (anthropomorphistes) sur le fait que Allâh serait aux cieux. Alors comment pourraient-on se baser sur ce genre de parole pour considérer quelqu’un musulman ?! La version du hadîth qui est en accord avec les fondements est celle rapportée par l’Imâm Mâlik, l’Imâm Ahmad, et autres qu’eux.
– De même, il est à savoir que ce hadîth n’a pas été mentionné par l’Imâm Mouslim dans le livre de la foi, mais dans le livre : “Al-Maçâjid wa Mawâdi’ as-Salah”, chapitre : “tahrîm al-Kalâm fi s-Salât” ce qui nous indique que l’Imâm Mouslim n’accordait pas à ce hadîth une quelconque importance concernant les sujets de la croyance.
– Les savants de l’Islâm ont dit que celui qui dit : “Allâh fi s-Samâ” alors il y a deux cas : 1- S’il dit cela en visant l’endroit, alors il a commis de la mécréance. 2- Mais s’il visait le simple fait de répéter ce qui est parvenu de manière apparente dans les textes, comme dans ce hadîth, sans viser l’endroit, alors il ne commet pas de mécréance. Voir à ce sujet :
l’extrait du livre Al-Fatâwâ Al-Hindiyyah : ici ;
la citation du Chaykh Ibn Noujaym : ici ;
et la citation du Chaykh Ismâ’îl Haqqi : ici .
– De plus, les savants ont dit que la personne qui dirait pour entrer en Islâm “Il n’y a pas d’autre dieu à part Allâh, qui est localisé aux cieux” cela n’est pas valable de sa part et il ne devient pas musulman car le fait de croire que Allâh est dans un endroit ou une direction est une croyance qui est contraire à l’Islâm, contraire au tawhîd. Cela a été mentionné entre autre par :
L’Imâm An-Nawawi qui a dit : « Si quelqu’un qui dit “Il n’y a pas d’autre dieu à part celui qui est dans les cieux”, il ne devient pas croyant (musulman), et il en est de même s’il dit “Il n’y a pas d’autre dieu à part Allâh, qui est localisé aux cieux”, parce que le fait d’être localisé est impossible au sujet de Allâh ta’âlâ. » [ Rawdat At-Tâlibîn ]
L’Imâm Badrou r-Rachîd Al-Hanafi qui a confirmé ses propos [ Riçâlatoun fî Alfâdhi l-Koufr ].
– Retrouvez de nombreuses autres paroles de savants confirmant qu’ attribuer l’endroit ou la direction à Allâh est de la mécréance : ici .
– Ainsi la version de l’Imâm Malik, en plus de posséder la chaîne de transmission la plus courte (2 personnes avant l’Imâm Mâlik), elle est en conformité avec les autres textes de la charî’ah, tel que le hadîth moutawâtir qui a été rapporté par As-Souyoûti et d’autres que lui, d’après quinze compagnons dont Ibnou ‘Oumar, qui est :', 'allah, aqida, ayna l-lah, croyance'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وحدثني مالك عن بن شهاب عن عبيد الله بن عبد الله بن عتبة بن مسعود أن رجلا من الأنصار جاء إلى رسول الله صلى الله عليه وسلم بجارية له سوداء فقال يا رسول الله ان علي رقبة مؤمنة فإن كنت تراها مؤمنة اعتقها فقال لها رسول الله صلى الله عليه وسلم أتشهدين أن لا إله إلا الله قالت نعم قال أتشهدين أن محمدا رسول الله قالت نعم قال أتوقنين بالبعث بعد الموت قالت نعم فقال رسول الله صلى الله عليه وسلم اعتقها');

-- source: https://islamsunnite.net/fatimah-a-fait-le-tabarrouk-a-la-tombe-du-prophete-rapporte-par-as-samhoudi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'le tabarrouk des compagnons et proches du prophète', 'Fatimah', 'علي رضي الله عنه قال : لما رمس رسول الله صلى الله عليه وسلم جاءت فاطمة رضي الله عنها فوقفت على قبره وأخذت قبضة من تراب القبر ووضعته على عينيها وبكت وأنشأت تقول: ماذا على من شم تربة أحمد ; أن لا يَشُمَّ مدى الزمان غَوَالَيَا ; صُبَّتْ عَليَّ مصائبٌ لو أنها ; صُبَّت على الأيام عُدْنَ لَيَالِيَا', '« ‘Ali (رضي الله عنه) a dit : Quand le Messager de Allâh (صلى الله عليه وسلم) a été enterré, Fâtimah (رضي الله عنها) est venu à sa tombe et a pris une poignée de la terre de la tombe et la mise sur ses yeux. Elle a alors pleuré et a dit [en poésie] : « Celui qui a senti la terre [de la tombe] de Ahmad n’aura rien perdu s’il ne sent pas l’odeur des Ghawâliyâ ; Se sont abattues sur moi des catastrophes telles que si elles s’abattaient sur des journées elles se transformeraient en nuits »', '', 'Dans son livre « Wafâ-ou l-Wafâ bi Akhbâri Dâri l-Moustafâ », le Chaykh As-Samhoûdi a dit :
Informations utiles :
– Al-‘Allâmah (l’illustre savant), le Chaykh Noûrou d-Dîn ‘Ali Ibn Ahmad As-Samhoûdi Al-Haçani est né en 844 en Egypte et il est décédé en 911 de l’Hégire (رحمه الله) à Médine, c’est-à-dire il y a environ 530 ans. Il était du madh-hab de l’Imâm Ach-Châfi’i.
Le Hâfidh As-Sakhâwi a dit à son sujet : « En résumé il est une personne honorable, maîtrisant de nombreuses sciences et qui se distingue dans la jurisprudence (fiqh) et les deux fondements (‘Ilmou l-Kalâm et Ousoûlou l-Fiqh) » [Ad-Daw-ou l-Lâmi’]
Ibnou ‘Imâd a dit de lui : « Le savant, le Moufti, l’enseignant, l’historien de Médine l’illuminée, le Chafi’ite, l’Imâm, le modèle (Qoudwah) » [Chadharâtou dh-Dhahab]
– Il rapporte ici que Fâtimah, la fille du Prophète (صلى الله عليه وسلم) est partie rechercher des bénédictions en se rendant sur la tombe de son père, le prophète de Allâh (صلى الله عليه وسلم) et qu’elle mit de la terre de la tombe sur ses yeux.
– D’autres savants ont rapporté cela dans leurs ouvrages. Parmi eux : l’Imâm Ibnou l-Jawzi et le Hâfidh Ibnou ‘Açâkir.
– Il a également été rapporté par Al-Hâkim et Al-Bayhaqi que Fâtimah visitait la tombe de son oncle Hamzah, et qu’elle y effectuait la prière et qu’elle y pleurait, et ceci chaque vendredi.
– Ces hadîth nous montre que les compagnons, et les proches de la famille du prophète (صلى الله عليه وسلم) autorisaient et pratiquaient le tabarrouk par les traces du prophète (صلى الله عليه وسلم).
– Il a également été rapporté que Asmâ (رضي الله عنها) la fille de Aboû Bakr, trempait la joubbah du prophète (صلى الله عليه وسلم) dans l’eau et recherchait la guérison par elle [ rapporté par Mouslim ].
L’Imâm An-Nawawi (رحمه الله) a dit : « Il y a dans ce hadîth une preuve sur la recommandation de pratiquer le tabarrouk (la recherche de bénédiction) par les traces (âthâr) des vertueux et par leurs vêtements » [ Charh Sahîh Mouslim ]
– Le tabarrouk c’est la recherche de bénédiction par les traces physiques d’un Prophète ou d’un être de vertu, tout en sachant, bien évidemment, que c’est Allâh ta’âlâ qui est Le Créateur de la guérison, du profit, de la barakah etc. Donc le tabarrouk n’est pas une adoration d’autre que Allâh comme le considère à tord certains ignorants.
– ‘Abdou l-Lâh ibnou Ahmad (le fils de l’Imâm Ahmad ibnou Hanbal) a dit : « J’ai vu mon père (l’Imâm Ahmad ibnou Hanbal) prendre un cheveu de ceux du Prophète (صلى الله عليه وسلم), il l’a mis dans sa bouche puis l’a embrassé. Et je suis sur de l’avoir vu le mettre sur ses deux yeux, et l’avoir mélangé avec de l’eau, d’avoir bu cette eau en recherchant la guérison par cela. Et je l’ai vu prendre le bol du Prophète, le laver dans un puits, puis boire dedans. Je l’ai vu boire de l’eau de Zamzam en recherchant la guérison et s’essuyer les mains et le visage avec elle. » [ Rapporté par Adh-Dhahabi ]
– ‘Abdou l-Lâh Ibn Ahmad Ibn Hambal a dit également : « Je l’ai interrogé (c’est-à-dire son père, l’Imâm Ahmad Ibnou Hanbal) à propos de quelqu’un qui touche le minbar du Prophète (صلى الله عليه وسلم) en faisant le tabarrouk (la recherche de bénédiction), en le touchant et en l’embrassant, et qui fait la même chose auprès de la tombe ou ce qui est du même ordre en visant par là le rapprochement de l’agrément de Allâh ‘azza wa jall. Il m’a répondu : il n’y a pas de mal en cela (lâ ba-sa bidhâlik)» [ Al-Jâmi’ fi l-‘Ilal wa Ma’rifati r-Rijâl ]
– Adh-Dhahabi a confirme cela en disant : « Il fut rapporté que ‘Abdou l-Lâh demanda à son père au sujet de quelqu’un qui touche le pommeau du minbar du Prophète (صلى الله عليه وسلم) et touche le mur de la chambre Honorée du Prophète (صلى الله عليه وسلم) et Ahmad Ibnou Hanbal répondit : « Je ne vois aucun mal dans cela ».» [ Siyarou A’lâmi n-Noubalâ ]
– L’Imâm An-Nawawi a dit : « Le Calife ‘Oumar Ibn ‘Abdi l-‘Azîz a demandé à ce que soit enterré avec lui l’un des cheveux du prophète (salla l-Lâhou ‘alayhi wa sallam) qu’il avait avec lui, et également l’un de ses ongles. Il disait : “si je meurt alors mettez-les dans mon linceul”, et c’est ainsi qu’ils ont fait » [Dans son livre Tahdhîbou l-Asmâ wa l-Loughât]
– Le Mouhaddith Al-Harari a dit : « Sachez que les compagnons, que Allâh les agrée, recherchaient les bénédictions par les traces physiques du Prophète (صلى الله عليه وسلم) au cours de sa vie et après sa mort. Les musulmans n’ont cessé de suivre cette voie jusqu’à nos jours. » [ As-Sirâtou l-Moustaqîm ]
– Retrouvez d’autres articles au sujet du tabarrouk : ici .', 'allah, aqida, as-samhodi, as-samhoudi'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'علي رضي الله عنه قال : لما رمس رسول الله صلى الله عليه وسلم جاءت فاطمة رضي الله عنها فوقفت على قبره وأخذت قبضة من تراب القبر ووضعته على عينيها وبكت وأنشأت تقول: ماذا على من شم تربة أحمد ; أن لا يَشُمَّ مدى الزمان غَوَالَيَا ; صُبَّتْ عَليَّ مصائبٌ لو أنها ; صُبَّت على الأيام عُدْنَ لَيَالِيَا');

-- source: https://islamsunnite.net/limam-al-baji-rapporte-lunanimite-sur-le-fait-quil-nest-pas-permis-de-se-baser-sur-le-calcul-pour-determiner-ramadan/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le calcul n’est pas valable pour déterminer le début de Ramadân.', 'Al Azhar', 'قال الباجي : وإجماع السلف الصالح حجة عليهم', 'Al-Bâji a dit : » Et l’unanimité des pieux prédécesseurs (as-salaf as-sâlih) est une preuve contre eux (c’est-à-dire contre les partisans du calcul)', '', 'Dans son commentaire du Sahîh de Al-Boukhâri «Fath Al-Bârî », après avoir expliqué en détail qu’il n’est pas permis de se baser sur le calcul pour déterminer le début du mois de Ramadân ( voir l’article ici ), l’Imâm Ibnou Hajar Al-’Asqalâni rapporte :
Informations utiles :
– Chaykhou l-Islâm, Amîr al-Mouminîn fi l-hadîth (le Prince des croyants dans la science du hadîth) Chihâb ad-Dîn Abou l-Fadl Ahmad Ibnou ‘Ali Ibnou Hajar Al-‘Asqalâni est né en 773 et il est décédé en 852 de l’hégire (رحمه الله) c’est-à-dire il y a plus de 590 ans. C’est un très grand spécialiste de la science du hadîth qui a écrit de nombreux ouvrages. Il est du madh-hab (Ecole de jurisprudence) de l’Imam Ach-Châfi’i. Son livre « Fath Al-Bârî » est incontournable, c’est le plus célèbre commentaire du Sahîh Al-Boukhâri. Consultez sa biographie : ici .
– L’Imâm , le Qâdî (le juge), le Faqîh (le spécialiste de la jurisprudence) Abou l-Walîd Soulaymân Ibn Khalaf Al-Bâji Al-Mâliki Al-Andalouçi Al-Qourtoubi est né en 403 et il est décédé en 474 de l’hégire (رحمه الله) c’est-à-dire il y a plus de 960 ans. Il est l’un des plus connus de parmi les Faqîh de l’école de l’ Imam Malik et il est l’auteur d’un commentaire du Mouwatta.
Adh-Dhahabi a dit de lui : « L’Imâm, Al-‘Allâmah (l’illustre savant), le Hâfidh (le spécialiste de la science du hadîth), celui qui maîtrise les différentes sciences, le Qâdî (Juge) ». [Siyar A’lâmi n-Noubalâ]
– Ici il dit qu’il y a unanimité depuis les pieux predecesseurs, c’est-à-dire depuis les trois premiers siècles de l’Hégire sur le fait que l’on ne se base pas sur le calcul pour déterminer le début du mois de Ramadân.
– En effet le Messager de Allâh (صلى الله عليه وسلم) a dit :', 'accord, ahlou s-sounnah, al boukhari, al-baji'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال الباجي : وإجماع السلف الصالح حجة عليهم');

-- source: https://islamsunnite.net/limam-ibn-hajar-al-asqalani-confirme-que-le-calcul-nest-pas-pris-en-compte-pour-determiner-ramadan/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le calcul n’est pas valable pour déterminer le début de Ramadân.', 'Les Chafi''ites', '« فَعَلَّقَ (النبيُّ) الْحُكْمَ بِالصَّوْمِ وَغَيْرِهِ بِالرُّؤْيَةِ (في حديث: صُومُوا لِرُؤْيَتِهِ وَأَفْطِرُوا لِرُؤْيَتِهِ) لِرَفْعِ الْحَرَجِ عَنْهُمْ فِي مُعَانَاةِ حِسَابِ التَّسْيِيرِ (أي حِساب تسيير النجوم والقمر) وَاسْتَمَرَّ الْحُكْمُ فِي الصَّوْمِ وَلَوْ حَدَثَ بَعْدَهُمْ مَنْ يَعْرِفُ ذَلِكَ (أي مِن الحُسّاب والمنجِّمين ونحوهم) بَلْ ظَاهِرُ السِّيَاقِ يُشْعِرُ بِنَفْيِ تَعْلِيقِ الْحُكْمِ بِالْحِسَابِ أَصْلًا وَيُوَضِّحُهُ قَوْلُهُ فِي الْحَدِيثِ الْمَاضِي: « فَإِنْ غُمَّ عَلَيْكُمْ فَأَكْمِلُوا الْعِدَّةَ ثَلَاثِينَ وَلَمْ يَقُلْ فَسَلُوا أَهْلَ الْحِسَابِ » »', '« Ainsi, il (le prophète صلى الله عليه وسلم) a relié le jugement concernant le jeûne et d’autres questions avec la vue [du croissant], (dans le hadîth qui a pour sens : Jeûnez à la vue [du croissant] et interrompez le jeûne à la vue [du croissant]) pour les dégager de l’embarras dû au calcul éprouvant des cycles et des trajectoires. Le jugement pour le jeûne demeure et ce, même s’il vient après [les compagnons] des gens qui connaissent tout cela. Bien plus, le contexte de la parole fait connaître le rejet radical de la dépendance du jugement sur le calcul et cela est clarifié par la parole [qui a pour sens] : « … et si l’observation est gênée [par des nuages par exemple], poursuivez le compte de Cha’bân à trente jours » et il n’a pas dit : demandez donc aux gens qui utilisent le calcul. »', '', 'Dans son commentaire du Sahîh de Al-Boukhâri «Fath Al-Bârî », l’Imâm Ibnou Hajar Al-’Asqalâni a dit lors de l’explication de la parole du Prophète (صلى الله عليه وسلم) :
« إنا أمة أمية لا نكتب ولا نحسب الشهر هكذا وهكذا يعني مرة تسعة وعشرين ومرة ثلاثين » [qui a pour sens : ] « Nous somme une communauté ‘oummiyyah [c’est-à-dire pour la plupart] qui n’écrivons pas et ne calculons pas. Le mois est ainsi, soit ainsi soit ainsi ; c’est-à-dire soit 29 soit 30 jours » :
Informations utiles :
– Chaykhou l-Islâm, Amîr al-Mouminîn fi l-hadîth (le Prince des croyants dans la science du hadîth) Chihâb ad-Dîn Abou l-Fadl Ahmad Ibnou ‘Ali Ibnou Hajar Al-‘Asqalâni est né en 773 et il est décédé en 852 de l’hégire (رحمه الله) c’est-à-dire il y a plus de 590 ans. C’est un très grand spécialiste de la science du hadîth qui a écrit de nombreux ouvrages. Il est du madh-hab (Ecole de jurisprudence) de l’Imam Ach-Châfi’i. Son livre « Fath Al-Bârî » est incontournable, c’est le plus célèbre commentaire du Sahîh Al-Boukhâri. Consultez sa biographie : ici .
– Ici, l’Imâm Ibnou Hajar confirme qu’il n’est pas valable de se baser sur le calcul pour déterminer le début du mois de Ramadan. Et pour preuve, ils citent deux hadîth du prophète (صلى الله عليه وسلم).
– La détermination du mois de Ramadân a lieu par l’observation, à l’œil nu, du croissant de lune après le coucher du soleil du 29ème jour de Cha’bân, conformément à la tradition Prophétique. On ne peut donc pas prévoir la date exacte du début du mois de Ramadân à l’avance par calcul. Et cela est également valable pour tous les mois lunaires. Les calendriers basés sur des calculs permettent seulement d’avoir une date approximative (à un ou deux jours près) du début du mois.
– En effet le Messager de Allâh (صلى الله عليه وسلم) a dit :', 'accord, ahlou s-sounnah, al boukhari, allah'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = '« فَعَلَّقَ (النبيُّ) الْحُكْمَ بِالصَّوْمِ وَغَيْرِهِ بِالرُّؤْيَةِ (في حديث: صُومُوا لِرُؤْيَتِهِ وَأَفْطِرُوا لِرُؤْيَتِهِ) لِرَفْعِ الْحَرَجِ عَنْهُمْ فِي مُعَانَاةِ حِسَابِ التَّسْيِيرِ (أي حِساب تسيير النجوم والقمر) وَاسْتَمَرَّ الْحُكْمُ فِي الصَّوْمِ وَلَوْ حَدَثَ بَعْدَهُمْ مَنْ يَعْرِفُ ذَلِكَ (أي مِن الحُسّاب والمنجِّمين ونحوهم) بَلْ ظَاهِرُ السِّيَاقِ يُشْعِرُ بِنَفْيِ تَعْلِيقِ الْحُكْمِ بِالْحِسَابِ أَصْلًا وَيُوَضِّحُهُ قَوْلُهُ فِي الْحَدِيثِ الْمَاضِي: « فَإِنْ غُمَّ عَلَيْكُمْ فَأَكْمِلُوا الْعِدَّةَ ثَلَاثِينَ وَلَمْ يَقُلْ فَسَلُوا أَهْلَ الْحِسَابِ » »');

-- source: https://islamsunnite.net/limam-al-isfarayini-parle-de-la-croyance-de-ahlou-s-sounnah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La croyance sunnite', 'Isfarayini (Abou l-Moudhaffar)', 'الباب الخامس عشر في بيان اعتقاد أهل السنة والجماعة : وأن تَعلـم أن كل ما دل على حدوث شىءٍ من الحد ، والنهاية ، والـمكان ، والجهة ، والسكون ، والحركة ، فهو مستحيل عليه سبحانه وتعالى ، لأن ما لا يكون محدَثاً لا يجوز عليه ما هو دليل على الحدوث', 'Chapitre quinzième dans l’exposé de la croyance de Ahlou s-Sounnah wa l-Jamâ’ah : Il faut que tu saches que tout ce qui implique l’entrée en existence, que ce soit la limite, la fin, l’endroit, la direction, l’immobilité, le mouvement, tout cela est impossible au sujet de Allâh soubhânahou wa ta’âlâ, car il n’est pas possible qu’il advienne à Celui Qui n’est pas entré en existence ce qui implique l’entrée en existence', '', 'Dans son livre « At-Tabsîrou fi d-Dîn », l’Imâm Al-Isfarâyîni a dit :
Informations utiles :
– L’Imâm, le Ousoûli (spécialiste des fondements), le Faqîh (spécialiste de la jurisprudence), le Moutakallim (spécialiste de la croyance), le Moufassir (exégète) Tâhir Ibnou Mouhammad Abou l-Moudhaffar Al-Isfarâyîni est décédé en 471 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 950 ans. C’est un savant de l’école de jurisprudence (madh-hab) de l’Imâm Ach-Châfi’i.
Le Hâfidh Ibnou ‘Açâkir a dit à son sujet : «L’Imâm accompli (Kâmil), le Faqîh (spécialiste de la jurisprudence), le Ousoûli (spécialiste des fondements), le Moufassir (spécialiste de l’exégèse du Qour-ân) » [Tabyînou kadhibi l-Mouftarî].
Tâjou d-Dîn As-Soubki a dit de lui : « L’Imâm, le Ousoûli (spécialiste des fondements), le Faqîh (spécialiste de la jurisprudence), le moufassir (spécialiste de l’exégèse du Qour-ân)» [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Chamsou d-Dîn Ad-Dâwoûdi a dit de lui : «L’Imâm accompli (Kâmil), le Faqîh (spécialiste de la jurisprudence), le Ousoûli (spécialiste des fondements), le Moufassir (spécialiste de l’exégèse du Qour-ân) » [Tabaqâtou l-Moufassirîn].
Adh-Dhahabi a dit à son sujet : « L’illustre savant (Al-‘Allâmah), le Mouftî […] Il faisait parti des plus illustres savants» [Siyarou A’lâmi n-Noubalâ]
L’Imâm Al-Kawthari a dit de lui : « L’un des plus grands Imams de Ousoûlou d-Dîn » [Dans son édition de At-Tabsîrou fi d-Dîn]
– Il ne faut pas le confondre avec le savant, l’Imâm Aboû Is-hâq Al-Isfarâyîni (رحمه الله) qui est décédé en 418 de l’Hégire.
– Ici, lorsqu’il détaille la croyance de Ahlou s-Sounnah wa l-Jamâ’ah, il confirme que Allâh existe sans endroit, sans direction, qu’Il n’a pas de limite, ni de fin, qu’Il n’est pas concerné par l’immobilité, le mouvement et par tout ce qui implique l’entrée en existence.
– En effet, Allâh ta’âlâ : {لَيْسَ كَمِثْلِهِ شَيْءٌ} [ce qui a pour sens] : « Rien n’est tel que Lui – d’aucune façon que ce soit -».', 'ahlou-s-sounnah wa-l-jama’ah, allah, aqida, at-tabsirou fi d-din'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'الباب الخامس عشر في بيان اعتقاد أهل السنة والجماعة : وأن تَعلـم أن كل ما دل على حدوث شىءٍ من الحد ، والنهاية ، والـمكان ، والجهة ، والسكون ، والحركة ، فهو مستحيل عليه سبحانه وتعالى ، لأن ما لا يكون محدَثاً لا يجوز عليه ما هو دليل على الحدوث');

-- source: https://islamsunnite.net/limam-at-tabarani-interprete-istawa-par-dominer-par-sa-toute-puissance-al-istila/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’istiwâ de Allâh', 'Tabarani', 'والاستواء: الاستيلاء، ولم يـزل الله سبحانه مستوليا على الأشياء كلها، إلا أن تخصيص العرش لتعظيم شأنه', 'Al-Istiwâ (c’est-à-dire : ) la domination par la toute puissance (Al-Istîlâ). Et Allâh soubhânah par Sa puissance éternelle domine toute chose sans changement, néanmoins la mention du Trône de façon particulière est destinée à magnifier son statut', '', 'Dans son Tafsîr connu sous le nom de « At-Tafsîr al-Kabîr », lors de l’explication de Soûrat Al-A’raf verset 54 qui comprend la partie { ثُمَّ ٱسۡتَوَىٰ عَلَى ٱلۡعَرۡشِ } (thoumma stawâ ‘ala l-‘arch), le Hâfidh At-Tabarâni a dit :
Informations utiles :
– L’Imâm du salaf, le Hâfidh (spécialiste de la science du hadîth), le Moufassir (spécialiste de l’exégèse du Qour-ân) Abou l-Qâçim Soulaymân Ibnou Ahmad Ibnou Ayyoûb At-Tabarâni est né en 260 et il est décédé en 360 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 1000 ans. L’Imâm At-Tabarâni était le plus réputé des gens de son époque dans la science du hadîth et dans sa maîtrise. Il connaissait le tafsîr (Exégèse) et il était spécialiste de jurisprudence. Il est l’auteur du grand recueil de hadîth « Mou’jam al-Kabîr » et de nombreux autres ouvrages de références. Retrouvez sa biographie : ici .
– Ici, ce grand savant du salaf explique que la signification de “istawâ” dans le verset qui comprend « thoumma stawâ ‘ala l-‘arch » et les versets similaires est « dominer par Sa toute-puissance» (al-istîlâ).
– De nombreux savants ont proposé l’interprétation (ta-wîl) du terme “istawâ” par la domination par la toute-puissance. Parmi eux :
Le Loughawi ‘Abdou l-Lâh Ibnou Yahyâ Ibnou l-Moubârak
L’Imâm Az-Zajjâj [ Dans son livre Ma’âni Al-Qour-ân ] et [ Rapporté par An-Naçafi ]
L’Imâm Aboû Mansoûr Al-Mâtourîdi
L’Imâm At-Tabarâni [Dans son Tafsîr]
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
Chaykh Al-Islâm Zakariyyâ Al-Ansâri [ Dans son livre Ihkâmou d-Dalâlah ]
Le Chaykh Moullâ ‘Ali Al-Qâri
Le Moufassir Ismâ’îl Haqqi Al-Hanafi
Le Hâfidh Mourtadâ Az-Zabîdi
Le Chaykh Mahmoûd As-Soubki Al-Azhari [ Dans son livre It-hâfou l-Kâ-inat ]
Le Chaykh Az-Zourqâni Al-Mâliki
L’Imâm Al-Kawthari [ Dans son livre Maqâlâtou l-Kawthari ]
Le Hâfidh ‘Abdou l-Lâh Al-Harari [ Dans son livre As-Sirâtou l-Moustaqîm ]
et de nombreux autres savants.
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
– Retrouvez d’autres paroles de savants concernant l’istiwâ de Allâh : ici .
– Le Messager de Allâh (صلى الله عليه وسلم) a catégoriquement nié la notion de direction au sujet de Allâh dans un hadîth sahîh. Il a dit (صلى الله عليه وسلم) [ce qui a pour sens : ] «Ô Allâh Tu es Adh-Dhâhir, rien n’est au-dessus de Toi et Tu es Al-Bâtin, rien n’est en-dessous de Toi » [ Rapporté par Mouslim , par Al-Bayhaqi et d’autres].', 'al-istila’, al-istiwa’, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'والاستواء: الاستيلاء، ولم يـزل الله سبحانه مستوليا على الأشياء كلها، إلا أن تخصيص العرش لتعظيم شأنه');

-- source: https://islamsunnite.net/limam-an-nacafi-dit-quattribuer-lendroit-a-allah-est-de-la-mecreance/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Attribuer l’endroit à Allâh est de la mécréance', 'Naçafi (m.508H)', 'والله تعالى نفى المماثلة بين ذاته وبين غيره من الأشياء، فيكون القول باثبات المكان له ردا لهذا النص المحكم- أي قوله تعالى ﴿ليس كمثله شيء﴾ – الذي لا احتمال فيه لوجهٍ ما سوى ظاهره، ورادُّ النص كافر، عصمنا الله عن ذلك', '« Allâh ta’âlâ a nié toute similarité entre Sa réalité et toute autre chose, et donc la confirmation d’un endroit pour Allâh est en contradiction avec ce texte explicite [c’est-à-dire la parole de Allâh ta’âlâ « Layça kamithlihi chay » qui a pour sens « Rien n’est tel que Lui »]. Cette parole n’a aucune autre signification en dehors de celle qui est apparente et celui qui contredit les textes est un mécréant (kâfir), que Allâh nous protège de cela ».', '', 'Dans son livre « Tabsiratou l-Adil-lah » (tome 1 page 169 de cette édition) l’Imâm Abou l-Mou’în Maymoûn An-Naçafi a dit :
Informations utiles :
– L’Imâm, Al-Moutakallim (le spécialiste de la croyance), Al-Ousoûli (le spécialiste des fondements) Abou l-Mou’în Maymoûn Ibnou Mouhammad An-Naçafi Al-Hanafi Al-Mâtourîdi est né en 418 et il est décédé en 508 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 930 ans.
– Ici, il dit qu’attribuer l’endroit à Allâh est en contradiction avec les textes explicites comme le verset « Layça Kamithlihi chay » qui a pour sens « Rien n’est tel que Lui ». Et que celui qui contredit les textes est mécréant.
– L’Imâm At-Tahâwi (رحمه الله) qui fait partie des illustres savants du salaf a dit dans son traité de Croyance : « Celui qui s’oppose au jugement du Livre, fait partie des mécréants» .
– L’Imâm An-Naçafi confirme donc par sa parole que le fait d’attribuer l’endroit à Allâh est de la mécréance.
– Dans ce même ouvrage, l’Imâm An-Naçafi dit : « Attribuer l’endroit à Allâh contredit le tawhîd (c’est-à-dire la croyance en l’unicité de Allâh) » [ Tabsiratou l-Adil-lah ].
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
L’Imâm An-Naçafi (508 H.) [Dans son livre Tabsiratou l-Adil-lah]
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
– Précision : Plusieurs grands savants de l’Islâm porte le nom An-Naçafi. En effet il y a également Aboû Hafs Najmou d-Dîn ‘Oumar Ibnou Mouhammad An-Naçafi qui est décédé en 537 de l’Hégire (رحمه الله) [voir des articles à son sujet : ici] , et aussi ‘Abdou l-Lâh Ibnou Ahmad An-Naçafi qui est décédé en 710 de l’Hégire (certains ayant dit en 701 de l’Hégire) (رحمه الله), qui est l’auteur du célèbre tafsîr [voir des articles à son sujet : ici] .', 'allah, apostasie, aqida, croyance'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'والله تعالى نفى المماثلة بين ذاته وبين غيره من الأشياء، فيكون القول باثبات المكان له ردا لهذا النص المحكم- أي قوله تعالى ﴿ليس كمثله شيء﴾ – الذي لا احتمال فيه لوجهٍ ما سوى ظاهره، ورادُّ النص كافر، عصمنا الله عن ذلك');

-- source: https://islamsunnite.net/limam-ach-chafii-confirme-que-lapostat-revient-a-lislam-en-prononcant-les-deux-temoignages/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'comment l’apostat revient à l’Islâm ?', 'Les Chafi''ites', 'وقد وصف الشافعي رضي الله عنه توبته (أي المرتد) فقال: أن يشهد أن لا إله إلا الله، وأن محمدا رسول الله، ويبرأ من كل دين خالف الاسلام', 'Certes, l’Imâm Ach-Châfi’i (رضي الله عنه) a indiqué comment l’apostat revient à l’Islâm, et il a dit pour cela : il doit témoigner qu’il n’est de dieu que Allâh et que Mouhammad est le Messager de Allâh, et il doit s’innocenter de toute croyance qui est contraire à l’Islâm.', '', 'Dans son livre « Rawdat At-Tâlibîn » dans le chapitre de l’apostasie, l’Imâm An-Nawawi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence) Aboû Zakariyyâ Mouhyi d-Dîn Yahyâ Ibnou Charaf An-Nawawi est un savant de référence. Il est né en 631 et il est décédé en 676 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 750 ans. C’est un savant dans l’école de jurisprudence Chafi’ite. Son commentaire du sahîh de l’Imâm Mouslim est très célèbre. Il a écrit d’autres livres tels que « Riyâd as-Sâlihîn » (le jardin des vertueux), et le recueil de 40 hadîth si connus.
Tâjou d-Dîn As-Soubki le surnommait « Chaykhou l-Islâm » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « Le Moufti de la Oummah, Chaykhou l-Islâm […] le Hâfidh (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chafi’ite, l’ascète, l’un des étendards (de la religion) » [Târîkhou l-Islâm]. Il a dit également : « Le Chaykh, le modèle (qoudwah) […] le Hâfidh (spécialiste de la science du hadîth), l’ascète, le pieux adorateur, le Faqîh (spécialiste de la jurisprudence), le moujtahid versé dans l’adoration de Son Seigneur, Chaykhou l-Islâm » [Siyar A’lâmi n-Noubalâ]
Ibn Kathîr a dit à son sujet : « Le Chaykh, l’Imâm, l’illustre savant (al-‘Allâmah), le Hâfidh (spécialiste de la science du hadîth) l’honorable Faqîh (spécialiste de la jurisprudence) […] l’un des pieux adorateurs et ascètes» [Tabaqâtou ch-Châfi’iyyah]
– L’Imâm, le Moujtahid –jurisconsulte– Mouhammad Ibnou Idrîs Ach-Châfi’i est l’un des plus grands savants de notre communauté, c’est une référence incontournable pour tout musulman. C’est un salaf (C’est à dire qu’il a vécu dans les trois premiers siècles de l’hégire), il est né en 150 et il est décédé en 204 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 1230 ans. Il est l’Imâm de l’école (madh-hab) chafi’ite.
L’Imâm Abou l-Haçan As-Soulami a dit à son sujet : « Mouhammad Ibn Idrîs Ach-Châfi’i est le savant à la tête du second siècle [de l’Hégire] (c’est-à-dire le moujaddid – savant revivificateur) » [Rapporté par le Hâfidh Ibnou ‘Açâkir dans Tabyînou kadhibi l-Mouftari]
– Ici l’Imâm Ach-Châfi’i indique comment la personne qui est tombé dans la mécréance revient à l’Islâm. Et c’est en prononçant les deux témoignages. C’est-à-dire en témoignant qu’il n’est de dieu que Allâh et que Mouhammad est le Messager de Allâh.
– En effet, le jugement de la Loi concernant celui qui se retrouve dans une apostasie, c’est qu’il lui est un devoir de revenir à l’Islâm en prononçant les deux témoignages et en abandonnant ce qui a été la cause de l’apostasie, c’est-à-dire la chose par laquelle l’apostasie a eu lieu.
– De nombreux savants ont confirmé ce jugement dans leurs ouvrages :
L’Imâm An-Nawawi a dit : « Et si sa mécréance était le fait de nier une obligation, ou de rendre permise une chose qui est interdite [avec les conditions qu’il a citées précédemment dans son chapitre], alors son Islam n’est pas valable jusqu’à ce qu’il dise les deux témoignages, et qu’il abandonne ce qu’il croyait » [Dans son livre Rawdatou t-Tâlibîn]
Le Chaykh Najmou d-Dîn Al-Asfoûni a dit : « Chapitre : concernant l’entrée en Islam de l’apostat et autre que lui, et le madh-hab est qu’il est indispensable pour cela est qu’il dise les deux témoignages » [Rapporté par Chihâbou d-Dîn Ar-Ramli dans ses Fatâwâ]
Le Chaykh Ibnou l-Mouqri a dit : « Chapitre : il est indispensable pour l’entrée en Islam de l’apostat et autre que lui qu’il dise les deux témoignages dans l’absolu » [Rapporté par Chihâbou d-Dîn Ar-Ramli dans ses Fatâwâ]
Le Chaykh Al-Ardabîli Ach-Châfi’i a dit : « Le repentir de l’apostat et l’entrée en Islâm du mécréant d’origine a lieu par le fait qu’il témoigne qu’il n’y a pas de divinité hormis Allâh et que Mouhammad est le messager de Allâh, qu’il s’innocente de toute religion en dehors de l’islam, et de toute croyance constituant de la mécréance, et il est indispensable qu’il prononce les deux témoignages, l’entrée en Islam n’a pas lieu sans eux » [Dans son livre Al-Anwâr]
Chaykhou l-Islâm Zakariyyâ Al-Ansâri a dit : « Il est indispensable pour l’entrée en Islam de l’apostat et autre que lui qu’il dise les deux témoignages » [Rapporté par Chihâbou d-Dîn Ar-Ramli dans ses Fatâwâ]
L’Imâm Chihâbou d-Dîn Ar-Ramli a dit : « Il est une condition pour l’Islâm de l’apostat et autre que lui, la prononciation des deux témoignages, en raison de ce qui a été rapporté d’authentique à ce sujet, comme le hadîth [qui signifie : ] « L’Islâm est fondé sur cinq principaux devoirs (dans lequel sont mentionné les deux témoignages) et le hadîth [qui signifie : ] « … jusqu’à ce qu’ils témoignent qu’il n’est de dieu que Allâh et que Mouhammad est le messager de Allâh » » [Dans ses Fatâwâ]
L’Imâm Chihâbou d-Dîn Ar-Ramli a dit également : « La voie sur laquelle est la majorité des savants (al-joumhoûr) est que l’Islâm du mécréant n’est pas valable, qu’il soit apostat ou autre, sans la prononciation des deux témoignages » [Dans ses Fatâwâ]
Le Chaykh Zaynou d-Dîn Al-Malîbâri Ach-Châfi’i (m.987 h.) a dit : « L’Islâm de tout mécréant d’origine et de l’apostat a lieu par la prononciation des deux témoignages pour celui qui est en capacité de parler, et il n’est pas suffisant ce qu’il a comme foi dans son cœur » [Dans son livre Fathou l-Mou’în]
Le Chaykh Al-Bouhoûti Al-Hanbali (m.1083 h.) a dit : « Le retour à l’Islâm de l’apostat ainsi que le repentir de tout mécréant prônant l’unicité de Dieu comme les juifs ou ce qui ne le prône pas comme les chrétiens, les mazdéens, et les adorateurs d’idoles a lieu par le fait qu’il témoigne qu’il n’y a pas de divinité hormis Allâh et que Mouhammad est le messager de Allâh. Ceci est tiré du hadîth rapporté par Ibn ‘Oumar « Oumirtou an ouqâtila n-nâça hattâ yach-hadoû al-lâ ilâha illa l-Lâh wa anna Mouhammadan raçoûlou l-Lâh [jusqu’à la fin du hadîth…]» hadîth faisant objet de l’accord [entre Al-Boukhâri et Mouslim] et ceci confirme comment a lieu l’entrée en Islam du mécréant d’origine ainsi que de l’apostat. » [Dans son livre Kach-châfou l-Qinâ’]
Le Chaykh ‘AbdoulLâh Ibn Houçayn Ibn Tâhir (m.1272 h.) a dit : « Il est un devoir pour celui de qui est provenu une apostasie de revenir immédiatement à l’Islam par la prononciation des deux témoignages » [Dans son livre Soullamou t-Tawfîq]
– Important : Le fait que l’apostat dise (astaghfirou l-Lâh) « je demande à Dieu de me pardonner » ne lui est pas utile avant d’être revenu à l’Islâm.
– Article à consulter : Qâdî ‘Iyâd : les deux témoignages sont indispensables pour être musulman', 'allah, an-nawawi, an-nawawiyy, apostasie'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وقد وصف الشافعي رضي الله عنه توبته (أي المرتد) فقال: أن يشهد أن لا إله إلا الله، وأن محمدا رسول الله، ويبرأ من كل دين خالف الاسلام');

-- source: https://islamsunnite.net/chaykh-khalil-confirme-que-jeter-coran-dans-ordures-est-mecreance-moukhtasar/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'cas d’apostasie', 'Khalil', 'أو فعل يتضمنه كإلقاء مصحف بقذر', '[…] ou de faire un acte de mécréance comme de jeter le Qour-ân (mous-haf) dans les ordures', '', 'Dans son « Moukhtasar », le Chaykh Khalîl Al-Mâliki, a écrit un chapitre au sujet de l’apostasie dans lequel il a dit :
Informations utiles :
– L’Illustre savant, le Chaykh Khalîl Ibnou Is-hâq Al-Joundi Al-Misri Al-Mâliki est décédé 767 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 670 ans. Il est l’auteur du célèbre ouvrage « Moukhtasarou l-‘Allâmati Khalîl ».
– Ici, il dit que l’apostasie peut avoir lieu par un acte et il cite comme exemple le fait de jeter le Qour-ân dans les ordures. C’est-à-dire si la personne savait que ce qu’elle avait entre les mains est le Qour-ân et qu’elle le jette délibérément dans les ordures, elle aura commis un acte d’apostasie. C’est-à-dire qu’elle sera devenue mécréante si elle était musulmane.
– Ce jugement a été confirmé par de nombreux savants, tels que :
L’Imâm An-Nawawi dans ses livres « Rawdatou t-Tâlibîn » et « Minhâjou t-Tâlibîn »;
Le Chaykh Chamsou d-Dîn Ar-Ramli qui a dit dans son chapitre concernant l’apostasie : « Comme de jeter le livre du Qour-ân ou ce qui est similaire de ce qui comporte des extraits du Qour-ân, et même ce qui contient des mots honorés ou du hadîth. Ar-Roûyâni a dit : ou ce qui comporte de la science religieuse, dans les impuretés ou même dans un endroit non impure mais qui contient du moukhât [morve ou glaire], du crachat ou du sperme, car il y a en cela un rabaissement de la religion »
Le Chaykh Ibnou ‘Âbidîn Al-Hanafi dans son livre « Raddou l-Mouhtâr » qui a précisé : « Même s’il ne visait pas le rabaissement car son acte indique le rabaissement. »
Le Chaykh Mouhammad ‘Illaych Al-Mâliki dans son commentaire du moukhtasar Khalîl ;
Le Mouhaddith Al-Harari dans son livre «As-Sirâtou l-Moustaqîm » ;
Le Chaykh Samîr Al-Qâdî dans son livre «Noûrou s-Sirâtou l-Moustaqîm » ;
Et beaucoup d’autres.
– Rappel : L’apostasie est de trois sortes, c’est-à-dire qu’il arrive que des gens sortent de l’Islâm suite à une mauvaise croyance, ou bien suite à un acte de mécréance, ou encore par le fait d’avoir prononcé une parole de mécréance.
– Le Chaykh ‘AbdoulLâh Ibn Houçayn (1272 H.) a dit : « L’apostasie est de trois sortes : par la croyance, par les actes et par la parole. Et chacune de ces sortes se ramifient en de nombreuses branches ». [ Dans son livre « Soullamou t-Tawfîq ]
– Il y a, en effet, des croyances, des actes et des paroles qui contredisent les deux témoignages et font tomber dans la mécréance. Tout ceci par accord des savants des quatre écoles (madh-hab).
– Important : Celui qui a commis une mécréance doit revenir immédiatement à l’Islam en prononçant les deux témoignages, qui sont (ach-hadou an l a il a ha il-la l-L a h, wa ach-hadou anna Mou h ammadan raç ou lou l-L a h) c’est-à-dire : « je témoigne qu’il n’est de dieu que All a h et je témoigne que Mou h ammad est le Messager de All a h ». Il ne suffit pas de dire « astaghfirou l-L a h ».
– Consulter d’autres articles concernant certaines choses qui font sortir de l’Islam : ici .', 'allah, apostasie, apostat, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'أو فعل يتضمنه كإلقاء مصحف بقذر');

-- source: https://islamsunnite.net/le-chaykh-mayyarah-al-maliki-confirme-quil-nest-pas-permis-de-se-baser-sur-le-calcul-pour-determiner-le-debut-de-ramadan/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'On ne se base pas sur le calcul pour déterminer Ramadân', 'Qarafi', 'قال الشهاب القرافي عن سند : لو كان إمام يرى الحساب فأثبت به الهلال لم يتبع لإجماع السلف على خلافه', '« Ach-Chihâb Al-Qarâfi a dit, selon Sanad : « Et si le gouverneur se base sur le calcul [astronomique] et qu’il affirmerait par cela le [début du] mois lunaire, on ne le suit pas car l’unanimité des gens du salaf est en opposition avec cela »', '', 'Dans son livre « Ad-Dourrou th-Thamîn wa l-Mawridou l-Ma’în » le Chaykh Mayyârah Al-Mâliki a dit :
Informations utiles :
– Le Chaykh Mouhammad Ibnou Ahmad Mayyârah Al-Mâliki Al-Fâçi est né en 999 à Fès (Maroc) et il est décédé en 1072 de l’Hégire (رحمه الله) à Fès également, c’est-à-dire il y a environ 360 ans. Il était de l’école de jurisprudence (madh-hab) malikite. Il était l’élève direct du Chaykh Ibnou ‘Âchir. Consultez sa biographie : ici .
– Son livre « Ad-Dourrou th-Thamîn wa l-Mawridou l-Ma’în » est un commentaire du très célèbre traité « Al-Mourchidou l-Mou’în ‘ala d-Daroûriyyi min ‘Ouloumi d-Dîn » , appelé plus couramment le « Matn de Ibnou ‘Âchir » composé par le Chaykh ‘Abdou l-Wâhid Ibnou ‘Âchir Al-Ansâri Al-Ach’ari Al-Mâliki (990 – 1040 H) (رحمه الله). Consultez sa biographie : ici .
– L’illustre savant, spécialiste des fondements (Ousoûli) le Chaykh Chihâbou d-Dîn Abou l-‘Abbâs Ahmad Ibnou Idrîss Al-Qarâfi Al-Mâliki Al-Misri, est l’un des spécialistes de la jurisprudence (Fouqahâ) chez les malikites. Il est né en 626 et il est décédé en 684 de l’Hégire (رحمه الله) c’est-à-dire il y a environ 750 ans.
– L’illustre savant, le Faqîh (spécialiste du Fiqh) Sanad Ibnou ‘Inân Ibnou Ibrâhîm Al-Mâliki Al-Misri est décédé en 541 de l’Hégire à Al-Iskandariyyah -Alexandrie- (Egypte) (رحمه الله) c’est-à-dire il y a environ 900 ans.
– Ici, il rapporte l’unanimité des savants du Salaf sur le fait qu’il n’est pas permis de se baser sur le calcul pour déterminer le début du jeune de Ramadân.
– L’unanimité (ijmâ’) est une preuve dans la religion. En effet le prophète (صلى الله عليه وسلم) nous a enseigné que les savants de sa communauté ne seront jamais unanimes sur un égarement, par sa parole « إنّ أُمَّتي لا تجتمع على ضلالة » ce qui a pour sens : « Ma communauté ne sera jamais unanime sur un égarement. » [Hadîth sahîh (authentique) rapporté selon différentes versions par Al-Hâkim, At-Tirmidhi, Ibnou Mâjah, Aboû Dâwoûd et autres en des termes proches]. A ce sujet :
L’Imâm Al-Jouwayni a dit : « L’unanimité (Ijmâ’) de cette communauté (Oummah) est une preuve à elle seule, en raison de la parole du prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Al-Waraqât]
L’Imâm An-Nawawi a dit : « Les fondements de la religion sont quatre : le Livre (le Qour-ân), la Sounnah, l’unanimité (ijmâ’) et le Qiyâs (des savants moujtahid).» [Al-Maqâçid]
Le Moufti de La Mecque, le Chaykh Ahmad Ibnou Zayni Dahlân a dit : « L’unanimité de la Oummah est une preuve dans la religion, comme l’a indiqué le prophète : “لا تجتمع أمتي على ضلالة” [ce qui a pour sens : ] ma communauté ne sera jamais unanime sur un égarement » [Dans son livre Fitnatou l-Wahhâbiyyah]
– La détermination du mois de Ramadân a lieu par l’observation, à l’œil nu, du croissant de lune après le coucher du soleil du 29ème jour de Cha’bân, conformément à la tradition Prophétique. On ne peut donc pas prévoir la date exacte du début du mois de Ramadân à l’avance par calcul. Et cela est également valable pour tous les mois lunaires. Les calendriers basés sur des calculs permettent seulement d’avoir une date approximative (à un ou deux jours près) du début du mois.
– En effet le Messager de Allâh (صلى الله عليه وسلم) a dit :', 'accord, ad-dourrou th-thamîn wa l-mawridou l-mou''în, ahlou s-sounnah, alexandrie'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قال الشهاب القرافي عن سند : لو كان إمام يرى الحساب فأثبت به الهلال لم يتبع لإجماع السلف على خلافه');

-- source: https://islamsunnite.net/le-loughawi-az-zajjaj-du-salaf-interprete-istawa-par-dominer-par-sa-toute-puissance-istawla/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'L’istiwâ de Allâh', 'Zajjaj', 'وقالوا: معنى استوى استولى', '« La signification de « istawâ » est » dominer par Sa toute-puissance » (istawlâ) »', '', 'Dans son tafsîr « Ma’âni Al-Qour-ân», lors de l’explication du verset « ٱلرَّحۡمَـٰنُ عَلَى ٱلۡعَرۡشِ ٱسۡتَوَىٰ » « Ar-Rahmân ‘ala l-‘arch istawâ » (soûrat Taha/5), l’Imâm Az-Zajjâj a dit :
Informations utiles :
– L’Imâm, l’exégète (Moufassir), le Spécialiste de la langue Arabe (Loughawi), le Grammairien (Nahwi) Aboû Is-hâq Ibrâhîm Ibnou Mouhammad Ibnou s-Sourri Az-Zajjâj Al-Baghdâdi, est l’un des linguistes les plus connus, il faisait partie des gens du Salaf, il est né en 241 et il est décédé en 311 de l’Hégire (رحمه الله) c’est-à-dire il y a plus de 1120 ans. Il est souvent cité comme référence par les exégètes (moufassiroûn).
Al-Khatîb Al-Baghdâdi a dit de lui : « Il était parmi les gens honorables et versés dans la religion, il avait une bonne croyance et un bon madh-hab». [Târîkh Baghdâd]
Ibn Khallikân a dit le concernant : « Il était parmi les gens de science, de bonne manière et versé dans la religion». [Wafayâtou l-A’yân]
An-Nawawi a dit à son sujet : « L’Imâm dans la langue Arabe ». [Tahdhîbou l-Asmâ wa l-Loughât]
Ibn Kathîr a dit de lui : « Il était vertueux et versé dans la religion, il avait une bonne croyance et il était auteur de bons ouvrages, et parmi eux « Ma’âni Al-Qour-ân » et d’autres ouvrages bénéfiques.». [Al-Bidâyah wa n-Nihâyah]
Adh-Dhahabi a dit à son sujet : « L’Imâm, le grammairien (Nahwi) de son époque». [Siyarou A’lâmi n-Noubalâ]
– Ici, il dit que la signification de « istawâ » dans le verset « Ar-Rahmân ‘ala l-‘arch istawâ » est « dominer par Sa toute-puissance» (istawlâ). Nous rappelons que Az-Zajjâj est non seulement un Salaf, mais il est également un des plus grands spécialistes de la langue Arabe (loughawi).
– Concernant Allâh, la signification de « istawlâ » n’est donc pas :
de vaincre après avoir combattu, ce qui impliquerait un changement, et le changement est impossible au sujet de Allâh ‘azza wa jall.
ni de dominer physiquement par l’élévation de la position, ce qui impliquerait un endroit et une direction, ce qui est également impossible au sujet de Allâh ta’âlâ.
– L’Imâm An-Naçafi rapporte également cette citation de l’Imâm Az-Zajjâj [ Dans son Tafsîr ].
– L’Imâm Az-Zajjâj a dit également : « Allâh ta’âlâ est exempt de l’emplacement et de l’endroit » [ Tafsîrou l-Asmâ-i l-Housnâ ]
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
L’Imâm Az-Zajjâj [Dans son livre Ma’âni Al-Qour-ân] et [ Rapporté par An-Naçafi ]
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
– Malgré cela, certains leaders de la mouvance sectaire wahhabite, ont diffusé la croyance hideuse d’ Ibn Taymiyah (moujassim) et ont déclaré mensongèrement que Allâh serait assis sur le trône. Voir à ce sujet : Ar-Râjihi et Fawzân (wahhabites) prétendent que Allâh est assis sur le trône .', '3ala l-3arch istawa, 3arch, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وقالوا: معنى استوى استولى');

-- source: https://islamsunnite.net/il-est-permis-decrire-du-qour-an-dans-un-recipient-et-den-utiliser-leau-pour-la-guerison-an-nawawi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le bienfait de l’eau coranisée', 'Haçan Al-Basri', 'وَلَوْ كَتَبَ الْقُرْآنَ فِي إنَاءٍ ثُمَّ غَسَلَهُ وَسَقَاهُ الْمَرِيضَ فَقَالَ الْحَسَنُ الْبَصْرِيُّ وَمُجَاهِدٌ وَأَبُو قِلَابَةَ وَالْأَوْزَاعِيُّ لَا بَأْسَ بِهِ', 'Al-Haçan Al-Basri, ainsi que Moujâhid, Aboû Qilâbah et Al-Awzâ’i ont dit qu’il n’y avait pas de mal dans le fait d’écrire du Qour-ân dans un récipient puis de le rincer et d’asperger le malade avec [cette eau]', '', 'Dans son livre « Al-Majmoû’ Charhou l-Mouhadh-dhab », dans le chapitre « ce que nécessite le ghousl », l’Imâm An-Nawawi a dit :
Informations utiles :
– L’Imâm, le Hâfidh (spécialiste de la science du Hadîth), le Faqîh (spécialiste de la jurisprudence) Aboû Zakariyyâ Mouhyi d-Dîn Yahyâ Ibnou Charaf An-Nawawi est un savant de référence. Il est né en 631 et il est décédé en 676 de l’hégire (رحمه الله), c’est-à-dire il y a plus de 750 ans. C’est un savant dans l’école de jurisprudence Chafi’ite. Son commentaire du sahîh de l’Imâm Mouslim est une référence incontournable pour tout étudiant en science de la religion et pour tout savant. Il a écrit d’autres livres tels que « Riyâd as-Sâlihîn » (le jardin des vertueux), et le recueil de 40 hadîth si connus.
Tâjou d-Dîn As-Soubki le surnommait « Chaykhou l-Islâm » [Tabaqâtou ch-Châfi’iyyah Al-Koubrâ]
Adh-Dhahabi a dit de lui : « Le Moufti de la Oummah, Chaykhou l-Islâm […] le Hâfidh (spécialiste de la science du hadîth), le Faqîh (spécialiste de la jurisprudence), le Chafi’ite, l’ascète, l’un des étendards (de la religion) » [Târîkhou l-Islâm]. Il a dit également : « Le Chaykh, le modèle (qoudwah) […] le Hâfidh (spécialiste de la science du hadîth), l’ascète, le pieux adorateur, le Faqîh (spécialiste de la jurisprudence), le moujtahid versé dans l’adoration de Son Seigneur, Chaykhou l-Islâm » [Siyar A’lâmi n-Noubalâ]
Ibn Kathîr a dit à son sujet : « Le Chaykh, l’Imâm, l’illustre savant (al-‘Allâmah), le Hâfidh (spécialiste de la science du hadîth) l’honorable Faqîh (spécialiste de la jurisprudence) […] l’un des pieux adorateurs et ascètes» [Tabaqâtou ch-Châfi’iyyah]
– Ici l’Imâm An-Nawawi rapporte l’avis de plusieurs savants de référence du salaf, sur le fait qu’il est permis d’écrire du Qour-ân dans un récipient puis de le rincer et d’asperger le malade avec cette eau.
– Parmi les preuves du caractère licite de cela, il y a la parole de Allâh ta’âlâ :', 'abou qilabah, abu qilabah, al-awzai, al-majmou’ charhou l-mouhaddab'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وَلَوْ كَتَبَ الْقُرْآنَ فِي إنَاءٍ ثُمَّ غَسَلَهُ وَسَقَاهُ الْمَرِيضَ فَقَالَ الْحَسَنُ الْبَصْرِيُّ وَمُجَاهِدٌ وَأَبُو قِلَابَةَ وَالْأَوْزَاعِيُّ لَا بَأْسَ بِهِ');

-- source: https://islamsunnite.net/il-est-permis-decrire-du-qour-an-dans-un-recipient-et-den-utiliser-leau-pour-la-guerison-an-nawawi/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'Le bienfait de l’eau coranisée', 'Haçan Al-Basri', 'وَنُنَزِّلُ مِنَ الْقُرْآنِ مَا هُوَ شِفَاء وَرَحْمَةٌ لِّلْمُؤْمِنِينَ وَلاَ يَزِيدُ الظَّالِمِينَ إَلاَّ خَسَاراً', '', '', '[soûrate Al-Isrâ / 82] ce qui a pour sens : « Nous révélons du Qour-ân ce qui comporte une guérison et une miséricorde pour les croyants (…) » .
– L’Illustre successeur des compagnons (tâbi’i), l’Imâm Aboû Sa’îd Al-Haçan Ibn Abi l-Haçan Yaçâr Al-Basri est né en 21 et est décédé en 110 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 1325 ans. Il fut l’un des savants de l’Islâm les plus réputé, de nombreux compagnons et autres savants de l’Islâm ont fait son éloge.
– L’Illustre successeur des compagnons (tâbi’i), Moujâhid ibn Jabr Al-Makhzoûmi Al-Makki est né en 20 et est décédé en 102 de l’Hégire (رحمه الله) c’est à dire il y a plus de 1335 ans. Il était l’un des plus grands élèves de Ibn ‘Abbâs (رضي الله عنه). Il est devenu également une référence dans la science de l’exégèse du Qour-ân (tafsîr).
– L’Illustre successeur des compagnons (tâbi’i), l’Imâm Aboû Qilâbah Al-Jarmi Al-Basri est décédé en 104 de l’Hégire (رحمه الله) c’est à dire il y a plus de 1330 ans.
– L’Imâm du salaf, le Moujtahid, Aboû ‘Amr ‘Abdou r-Rahmân Ibnou ‘Amr Al-Awzâ’i est né en 88 et il est décédé en 158 de l’Hégire (رحمه الله), c’est-à-dire il y a plus de 1285 ans. Il était l’un des plus grands savants du salaf. Il compte parmi les grands savants de la communauté qui ont fondé une école de jurisprudence (madh-hab) tout comme l’Imâm Mâlik, l’Imâm Aboû Hanîfah, l’Imâm Soufyân Ath-Thawri, l’Imâm Ach-Châfi’i ou encore l’Imâm Ahmad Ibn Hanbal, mais son école (madh-hab) n’a pas subsisté. Elle fût suivie durant deux siècles, notamment en Andalousie.', 'abou qilabah, abu qilabah, al-awzai, al-majmou’ charhou l-mouhaddab'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'وَنُنَزِّلُ مِنَ الْقُرْآنِ مَا هُوَ شِفَاء وَرَحْمَةٌ لِّلْمُؤْمِنِينَ وَلاَ يَزِيدُ الظَّالِمِينَ إَلاَّ خَسَاراً');

-- source: https://islamsunnite.net/le-chaykh-guineen-diaby-karan-koutoubo-parle-de-la-croyance-en-allah/
INSERT INTO "parole" (sujet, savant, texte_arabe, texte_francais, phonétique, explication, tag)
SELECT 'La croyance Islamique', 'Karan Koutoubo', 'قديم لا أوّل له ، باقٍ لا آخِرَ لهُ ، مُخَالفٌ للحوادثِ ، ما هو بجرمٍ، ولا صفَةٍ للْجِرمِ، ولا جهةَ لهُ ولا مكانَ لهُ ، غَنِيٌّ عنِ المَحَلِّ والمُخَصِّصِ، قائم بنفسهِ', 'Allâh est Qadîm sans début, Bâqin sans fin, Il ne ressemble pas aux créatures, Il n’est pas un corps, ni un attribut des corps, Il n’a pas de direction, ni d’endroit, Il n’a pas besoin de la localisation, ni de ce qui Le spécifie', '', 'Dans son livre « Ad-Dourratou s-Sâfiyah », le Chaykh Guinéen ‘Abdou l-Qâdir Diaby Karan Koutoubo a dit :
Informations utiles :
– Le Chaykh Qoutbou d-Dîn ‘Abdou l-Qâdir Jabi (Diaby) Karan Koutoubo, fils du Chaykh Najmou d-Dîn Mouhammad At-Taslîmi fils du Chaykh Al-Hajj Salîm Karamokho Bah Jabi (Diaby) (qui sont des grands savants Guinéens), est décédé en 1320 de l’Hégire (رحمه الله) c’est-à-dire il y a plus 120 ans.
– Ici il confirme la croyance du tawhîd concernant le fait que Allâh n’est pas un corps, et qu’Il n’est pas dans une direction ni dans un endroit.
– Cela est la croyance des musulmans de toutes les époques et de toutes les contrées.
– Cette croyance est confirme à ce qui est parvenu dans les textes de la religion. En effet :
Allâh ta’âlâ a dit dans Son livre honoré {لَيْسَ كَمِثْلِهِ شَيْءٌ} [Ce qui a pour sens] : « Rien n’est tel que Lui – d’aucune façon que ce soit -» . Les savants spécialistes de tafsîr du Qour-ân ont confirmé que ce verset en lui-même est une preuve pour exempter Allâh du corps et de l’endroit. Parmi eux : l’Imâm Ar-Râzi [ Dans son tafsîr ], l’Imâm As-Souyoûti [ Al-Iklîl ] et autres.
le Messager de Allâh (صلى الله عليه وسلم) a dit dans un hadîth Sahîh rapporté par Al-Boukhâri et autre : « كَـــــانَ اللهُ وَلَــــمْ يَــــكُــــنْ شَــىءٌ غَــيْـــرُهُ » [ce qui a pour sens ] : « Allâh existe de toute éternité et rien d’autre que Lui n’est de toute éternité » . Ce hadîth nous indique qu’hormis Allâh, rien n’existe de toute éternité : ni terre, ni ciel, ni mer, ni endroit, ni trône, ni corps, ni membre, ni organe, ni aucune autre créature quelle qu’elle soit. Ce hadîth est donc une preuve explicite sur le fait que Allâh n’a pas besoin du trône et qu’Il n’est pas attribué des caractéristiques des créatures comme la position assise ou l’établissement.
Le prophète (صلى الله عليه وسلم) a lui-même nié les directions et l’endroit au sujet de Allâh. Il a dit (صلى الله عليه وسلم) [ce qui a pour sens : ] « Ô Allâh Tu es Adh-Dhâhir, rien n’est au-dessus de Toi et Tu es Al-Bâtin, rien n’est en-dessous de Toi » [ Rapporté par Mouslim et d’autres].
L’Imâm Al-Bayhaqi a dit en commentant ce hadîth : « Puisque rien n’est au-dessus de Lui et rien n’est en dessous de Lui, Il n’est donc pas dans un endroit » [ Dans son livre Al-Asmâ-ou wa s-Sifât ]. Ainsi, il n’est pas valable d’attribuer à Allâh la position assise, l’établissement, ainsi que l’élévation physique et spatiale.
De plus, l’unanimité sur le fait que Allâh existe sans endroit ni direction à été rapportée par de nombreux savants tels que l’Imâm Aboû Mansoûr Al-Baghdâdi [ Al-Farqou bayna l-Firaq ] et l’Imâm Al-Jouwayni [ Al-Irchâd ].', 'africain, afrique, allah, aqida'
WHERE NOT EXISTS (SELECT 1 FROM "parole" WHERE texte_arabe = 'قديم لا أوّل له ، باقٍ لا آخِرَ لهُ ، مُخَالفٌ للحوادثِ ، ما هو بجرمٍ، ولا صفَةٍ للْجِرمِ، ولا جهةَ لهُ ولا مكانَ لهُ ، غَنِيٌّ عنِ المَحَلِّ والمُخَصِّصِ، قائم بنفسهِ');

COMMIT;
