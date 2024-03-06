-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 06 mars 2024 à 14:18
-- Version du serveur :  10.11.1-MariaDB
-- Version de PHP : 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_articles_escalade`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_articles`
--

CREATE TABLE `t_articles` (
  `idArticle` int(11) NOT NULL,
  `artBrand` varchar(50) NOT NULL,
  `artModel` varchar(100) NOT NULL,
  `artPrice` decimal(5,2) NOT NULL,
  `artDescription` varchar(3000) NOT NULL,
  `artImage` varchar(500) NOT NULL,
  `fkType` int(11) NOT NULL,
  `fkMarque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `t_articles`
--

INSERT INTO `t_articles` (`idArticle`, `artBrand`, `artModel`, `artPrice`, `artDescription`, `artImage`, `fkType`, `fkMarque`) VALUES
(1, 'Edelweiss', 'Lite unicorne 9.8 MM x 70M', '99.90', 'Avec son diamètre de 9.8 mm et un poids très contenu, la corde à simple Rock Lite Unicore de chez Edelweiss sera une corde idéale pour l\'escalade sportive. Avec la technologie Unicore, la résistance et la durée de vie sont encore améliorées.', 'edelweiss-corde-98mmX70m.svg', 5, 8),
(2, 'Trangoworld', 'Pantalon d\'escalade Agora', '55.90', 'Escalade et bloc. Egalement pour usage urbain. Très extensible. Taille élastiquée. Ajusteur d\'ourlet élastique. Poches latérales. Poches arrière. Conception polyvalente. Agréable et confortable avec un peu d\'élasticité pour augmenter la liberté de mouvement\r\n', 'trangoworld-pantalon-escalade-agora.svg', 3, 7),
(3, 'Black Diamond', 'Climbing Helmet', '65.90', 'Conçu par la marque Black Diamond, le casque escalade Capitan Helmet protège non seulement le dessus du crâne, mais aussi l\'arrière et les côtés.', 'blackdiamond-climbinghelmet-blue.svg', 5, 2),
(4, 'Red Chili', 'SPIRIT IV Climbing Shoe', '95.90', 'Le Spirit IV de RED CHILI est un \"classique de luxe\" qui assure aussi bien le confort dans la salle d\'escalade que le plaisir de grimper une longue journée en montagne, et ce même dans la 23e longueur de corde. La cale Impact Zone sous le talon amortit l\'impact lors de la marche et assure le confort sur une', 'redchili-spiritIV-climbingShoe.svg', 1, 1),
(5, 'Petzl', 'ASPIC', '115.90', 'Pour un confort optimal de l\'utilisateur en suspension libre, la ceinture et les tours de cuisse sont rembourrés de mousse respirante. - Peut être combiné avec la ceinture pectorale CHEST\'AIR pour le sauvetage héliporté.', 'petzl-aspic-baudrier.svg', 5, 5),
(6, 'Red Chili', 'SAC A MAGNESITE BETA', '9.90', 'Red Chili Beta Chalk Bag est un sac à craie conçu pour l\'escalade et le bloc. La version bêta a un design simple et linéaire avec des graphiques qui varient en fonction de la couleur choisie. Il a une fermeture à cordon qui vous permet de minimiser le gaspillage de magnésie et il y a une sangle clip à nouer à la taille et un porte-brosse.\r\n', 'redchili-sacMagnesieBeta.svg', 2, 1),
(7, 'Beastmaker', '1000 senes', '130.90', 'Cette poutre, en bois massif, a été créée pour les grimpeurs désirant s’entraîner à la maison afin de pouvoir progresser rapidement. La texture du bois, très fine mais adhérente, permet de s’entraîner longtemps sans s’abîmer la peau. Convient aux grimpeurs évoluant entre le 5 a et le 7c. Le bois est de loin supérieur à la résine en termes de propriétés naturelles d\'adhérence, de porosité et de texture. Le bois est de loin le meilleur matériau d\'entraînement actuellement disponible pour la force des doigts', 'beastmaker-1000-senes.svg', 4, 9),
(8, 'Simond', 'Mousqueton à Vis', '12.90', 'Notre équipe de grimpeurs a conçu ce mousqueton pour relier un système d\'assurage au harnais ou sécuriser le grimpeur lors des manœuvres de cordes. Mousqueton HMS à vis pouvant supporter un poids total de plus de 300KG.', 'simond-mousqueton-a-vis.svg', 5, 3),
(9, 'Red Chili', 'Session 4', '85.90', 'Chausson confortable pour l\'escalade en salle - Points forts : pas de précontrainte, ressemelage possible ; convient pour l\'escalade en salle, l\'escalade sportive ; survit sans problème aux contacts fréquents avec la paroi - le Session de Red Chili ! Ce chausson d\'escalade est spécialement conçu pour l\'escalade en salle grâce à sa construction à double bord de pointe. Les débutants qui souhaitent faire leurs premiers pas sur le mur artificiel peuvent se réjouir d\'avoir un chausson super robuste qui résiste à beaucoup de choses et dont la semelle dure longtemps. Elle est fabriquée en caoutchouc Red Chili RX 3, dont le mélange adhérent apporte beaucoup de friction aux pas. La chaussure est dotée d\'une forme symétrique, qui suit la forme naturelle du pied, et d\'une forme plate. Il est ainsi super confortable, ce qui permet d\'effectuer de longues sessions d\'escalade sans douleur et sans devoir enlever les chaussons entre les voies. La tige en cuir a un effet antibactérien naturel et empêche ainsi la formation rapide d\'odeurs désagréables. La fermeture velcro ainsi que les passants permettent d\'enfiler et d\'enlever rapidement la chaussure. Si vous cherchez un compagnon durable pour les niveaux de difficulté inférieurs, vous faites le bon choix avec la Red Chili Session !', 'redchili-session4-climbingShoe.svg', 1, 1),
(10, 'Red Chili', 'Charger', '95.90', 'Si, en escalade, il s\'agit avant tout de recharger ses réserves d\'énergie, le Red Chili Charger est le chausson d\'escalade parfait. Avec une asymétrie de l\'axe longitudinal presque neutre, une précontrainte relativement faible et sans downturn marqué, ce modèle polyvalent offre un chaussant confortable qui permet de le porter longtemps sans avoir les pieds stressés. Que ce soit en salle ou en falaise, pour les débutants ou les experts, la Charger marque des points avec des détails tels que la semelle intermédiaire Powerflex pour une stabilité et une performance durable, deux sangles velcro opposées pour un ajustement rapide et détaillé, une languette en mesh respirant et un amorti au talon non négligeable pour des séjours sans douleur sur le site, lors de l\'assurage ou de la descente. Des matériaux de haute qualité comme le cuir de la tige et de la semelle intérieure ou le caoutchouc de la semelle RX-2 assurent la longévité et une adhérence fiable de ce chausson d\'escalade plaisir.', 'redchili-charger-climbingShoe.svg', 1, 1),
(11, 'Red Chili', 'Magnet', '73.90', 'Le MAGNET augmente tes forces d\'attraction en escalade sportive et dans les voies multi-pitchs. Un chausson d\'escalade axé sur la performance, mais aussi sur le confort. La nouvelle semelle intermédiaire RC-TENSION + s\'étend sur toute la semelle et se compose de deux semelles intermédiaires combinées pour créer l\'équilibre parfait entre sensibilité et soutien lorsque tu te tiens sur de petites prises.', 'redchili-magnet-climbingShoe.svg', 1, 1),
(12, 'Red Chili', 'Ventic Air Lace Gris', '70.90', 'Une étape importante en matière de durabilité ! Ceux qui cherchent une alternative respectueuse des ressources pour les chaussons d\'escalade trouveront désormais leur bonheur avec la VENTIC AIR LACE.', 'redchili-venticairlacegris-climbingShoe.svg', 1, 1),
(13, 'Red Chili', 'Fusion VCR', '109.90', 'Les chaussons d\'escalade Fusion VCR de Red Chili sont votre compagnon idéal pour l\'escalade de grandes voies alpines, le bloc ou l\'escalade sportive. Les semelles des chaussures en caoutchouc sont très résistantes à l\'abrasion et offrent une grande adhérence. Il y a une fermeture Velcro pour un enfilage et un retrait rapides.', 'redchili-fusionvcr-climbingShoe.svg', 1, 1),
(14, 'Red Chili', 'Ventic Air', '75.90', 'Forme plate Construction de semelle souple Tige tricotée Caoutchouc RX-2 Construction de talon confortable Durable Respirant La chaussure Ventic Air de Red Chili est une chaussure polyvalente confortable dans un design moderne pour l\'escalade en salle et les voies d\'escalade faciles. La forme neutre et plate de la chaussure, associée à une semelle souple, offre un excellent confort lors des longues journées d\'escalade. La tige tricotée est particulièrement respirante et assure moins de transpiration. Les chaussures sont particulièrement faciles à enfiler et à enlever grâce à la languette parfaitement intégrée et aux deux fermetures VCR. Le design moderne en forme de chaussette ravira également les jeunes grimpeurs. Les semelles Ventic Air sont fabriquées en caoutchouc RX-2 durable. Ils se caractérisent par des valeurs de friction élevées, mais offrent en même temps la stabilité nécessaire pour marcher avec précision sur le plus petit pied. La nouvelle construction Comfort-Fit Heel offre une traction modérée du talon et garantit une adhérence optimale lors de l\'escalade de bloc. Le Ventic Air est le premier choix pour ceux qui recherchent un appareil polyvalent et confortable pour différents styles d\'escalade, mais qui apprécient également le confort.', 'redchili-venticair-climbingShoe.svg', 1, 1),
(15, 'Red Chili', 'Session Air Gris', '71.90', 'Les chaussons d\'escalade Session Air de Red Chili sont tes compagnons parfaits pour l\'escalade sportive. Une fermeture velcro permet de les enfiler et de les retirer rapidement.', 'redchili-sessionairgris-climbingShoe.svg', 1, 1),
(16, 'Red Chili', 'Fusion II', '109.90', 'RED CHILI FUSION La Fusion VCR a été entièrement revue pour 2022 et s\'appelle désormais Fusion. La nouvelle forme est plus courbée et un avant-pied légèrement plus large. Le système de fermeture innovant est également nouveau : il combine les avantages du velcro et du laçage et permet un ajustement rapide et individuel au pied. Pour la fermeture, Red Chili utilise des suspentes extrêmement solides et résistantes à l\'abrasion en Technora Aramid, qui sont normalement utilisées dans les parapentes et sont des restes de la production. La languette en néoprène de 3 mm d\'épaisseur assure plus de confort et une répartition plus étendue de la force de fermeture. Avec ces caractéristiques, le FUSION offre plus de performances et un ajustement plus individuel, mais reste un modèle polyvalent et polyvalent. Ceci est également souligné par la semelle RX-1 ALLROUND sur toute la surface, qui brille par ses propriétés particulièrement équilibrées entre friction, sensibilité, durabilité et stabilité des carres. La série Fusion s\'est fait un nom auprès de tous ceux qui souhaitent essayer quelque chose de plus sportif après leur premier chausson d\'escalade. Mais sans tout faire d\'emblée, c\'est-à-dire devoir porter des chaussures extrêmement tendues, asymétriques et donc probablement inconfortables. Et c’est exactement ce que proposent les nouvelles Fusions.', 'redchili-fusionii-climbingShoe.svg', 1, 1),
(17, 'Red Chili', 'Voltage LV', '102.90', 'Les chaussons d\'escalade Voltage Low Volume de Red Chili sont tes compagnons parfaits pour le bloc ou l\'escalade sportive. Les semelles en caoutchouc sont très résistantes à l\'usure et offrent une bonne adhérence. Une fermeture velcro permet de les enfiler et de les retirer rapidement.', 'redchili-voltagelv-climbingShoe.svg', 1, 1),
(18, 'Red Chili', 'Sausalito', '92.90', 'Sausalito IV (chaussons d\'escalade, unisexe) - Red Chili Le classique fait peau neuve et devient encore plus confortable ! Une nouvelle doublure sur tout le pourtour à l\'extrémité de la tige assure un confort maximal. Une autre nouveauté est la semelle intérieure antibactérienne en chanvre, particulièrement anti-odeurs. Grâce à sa forme légèrement plus large et à sa grande plage de réglage, le Sausalito convient à presque tous ceux qui recherchent un chausson d\'escalade super confortable. Les grimpeurs ayant des problèmes de pieds apprécient le système de laçage variable qui est tiré loin vers l\'avant.', 'redchili-sausalito-climbingShoe.svg', 1, 1),
(19, 'Red Chili', 'Charger LV', '85.90', 'Si l\'escalade consiste avant tout à recharger ses propres réserves d\'énergie, le Red Chili Charger Low Volume est le chausson d\'escalade parfait pour toute personne ayant un pied plutôt fin. Avec une asymétrie d\'axe longitudinal presque neutre, une pré-tension relativement faible et aucune baisse notable, ce modèle polyvalent offre une coupe étroite et confortable qui lui permet d\'être porté pendant de longues périodes sans stresser les pieds. Que vous soyez en salle ou sur les rochers, débutant ou expert, la Charger Low Volume se distingue par des détails tels que la semelle intermédiaire Powerflex pour une stabilité et des performances durables, deux sangles Velcro opposées pour un réglage rapide et détaillé, une languette en mesh respirant. et à ne pas sous-estimer l\'amorti du talon pour un séjour sans douleur en position d\'assurage, lors de l\'assurage ou du démontage. Des matériaux de haute qualité tels que le cuir de la tige et de la semelle intérieure ou le caoutchouc de la semelle RX-2 assurent la longévité et un maintien fiable du chausson d\'escalade plaisir.', 'redchili-chargerlv-climbingShoe.svg', 1, 1),
(20, 'La Sportiva', 'Solution Comp noir jaune', '165.90', 'Conçu pour offrir aux grimpeurs le confort maximum, le chausson SOLUTION COMP de LA SPORTIVA saura vous accompagner dans chacune de vos ascensions. Ce modèle pour homme vous fera atteindre les sommets ! Grâce à sa pointe Pacfic et à une languette en jersey stretch, l’adhérence est maximale, peu importe la paroi. Les pressés apprécieront sa méthode de serrage précise et rapide, ainsi que ses belles performances sur les revers et les foot-hooks. Le système P3, breveté, promet un maintien de la forme du chausson dans le temps.', 'lasportiva-solutioncompnoirjaune-climbingShoe.svg', 1, 6),
(21, 'La Sportiva', 'Solution (White/ Lily Orange) Women', '99.90', 'Le chausson d\'escalade La Sportiva Solution pour femmes est ultra-précis et flexible pour passer au niveau supérieur dans les voies les plus techniques et en bloc. Ses principaux atouts sont l\'accroche et la sensibilité transmises par la très bonne semelle Vibram XS Grip 2 de 3,5 mm. Vous sentez chaque relief : Les crochets et les prises inversées deviennent beaucoup plus faciles.', 'lasportiva-solutionwomen-climbingShoe.svg', 1, 6),
(22, 'La Sportiva', 'Skwama', '135.90', 'Chausson d\'escalade sensible, enveloppant et flexible, idéal pour les performances en falaise et en salle, en surplomb et en dalle.Comme la peau écailleuse d\'un serpent, le chausson d\'escalade Skwama est super sensible et enveloppant, et soutient le grimpeur dans les mouvements très techniques en surplomb (en et en extérieur) et en escalade en dalle. Idéal pour les hautes performances, il est extrêmement flexible grâce à la nouvelle construction de la semelle, ce qui améliore l\'engagement homogène et régulier en escalade par friction. La tige en cuir chamoisé et microfibre a une construction qui enveloppe parfaitement le pied, il n\'y a pas de points de pression ni de zones non remplies dans le chausson pour une stabilité maximale même lors des moments de torsion. La coque innovante brevetée S-Heel garantit la stabilité, augmente la performance et l\'adaptabilité de la chaussure lors des crochets. Le Skwama en caoutchouc protecteur ultra-grippant à la pointe protège de l\'abrasion et forme une surface adhérente pour les toehooks. La semelle Vibram XS-Grip2 offre une friction maximale sur tous les types de parois. L\'escalade change de peau, ajoute des écailles.', 'lasportiva-skwama-climbingShoe.svg', 1, 6),
(23, 'La Sportiva', 'Finale', '91.90', 'Un allrounder d\'entrée de gamme ultime de La Sportiva. La Finale est idéale pour le rocher et la salle d\'escalade. Comme elle est extrêmement confortable grâce à sa précontrainte très faible, elle convient aussi parfaitement aux longues randonnées. Le chaussant très précis permet un excellent ajustement individuel. Équipé d\'une semelle Vibram XS Edge de 5 mm, le Finale est le partenaire idéal partout où l\'on veut se tenir sur des petites formes et des petites marches. Pour tous ceux qui souhaitent faire leurs premières expériences en escalade, le Finale est une recommandation absolue, notamment en raison de son excellent rapport qualité-prix. Vibram XS EdgeNé pour un soutien maximal. XS Edge permet un soulagement maximal sur les plus petites marches. Grâce à sa résistance accrue à la déformation plastique, XS Edge conserve sa forme (longueur) même après de nombreuses heures d\'utilisation, aussi bien à basse qu\'à haute température.', 'lasportiva-finale-climbingShoe.svg', 1, 6),
(24, 'La Sportiva', 'Katana Bleu Tempête (Dame)', '115.90', 'Chausson technique et polyvalent avec une fermeture innovante composée de deux bandes de Velcro qui se fixent chacune dans une direction opposée. Idéal pour les différents types d\'escalade sportive, comme les courses alpines, les fissures et le bloc. La combinaison équilibrée de matériaux synthétiques et naturels offre un maximum de confort et de performance, tout en assurant un bon maintien durable, même dans les longues voies. La semelle intermédiaire spéciale avec une \"zone d\'adhérence\" très sensible au niveau des orteils assure un soutien optimal lors de l\'escalade sur les plus petites arêtes.', 'lasportiva-katana-climbingShoe.svg', 1, 6),
(25, 'La Sportiva', 'Otaki', '115.90', 'La Sportiva Otaki sont des chaussons d\'escalade de haut niveau qui tirent leur nom de la plus ancienne épée de samouraï, et comme elle ils sont très précis même sur les plus petits appuis.C\'est pourquoi les Otaki sont la chaussure parfaite pour l\'escalade sportive et surtout pour le bloc au plus haut niveau. La fermeture à mi-chemin entre celle d\'une ballerine et d\'une chaussure velcro permet un ajustement inégalé et ne laisse pas de points vides sur la surface du pied, rendant la chaussure très ajustée. Le talon S-Heel et la semelle de construction P3 garantissent un maintien sur toute la longueur de la chaussure et permettent un talon précis pour surmonter les mouvements les plus difficiles du bloc.', 'lasportiva-otaki-climbingShoe.svg', 1, 6),
(26, 'La Sportiva', 'Theory Women', '112.04', 'Un chausson spécialement conçu pour la performance en escalade indoor, qui s\'adapte parfaitement à la forme des prises et aux volumes. Il est le représentant officiel de l\'évolution de l\'espèce chez La Sportiva : une sensibilité extrême combinée à un grand dynamisme permet un écartement et une réactivité sans précédent lors de la marche.', 'lasportiva-theorywomen-climbingShoe.svg', 1, 6),
(27, 'La Sportiva', 'Solution Homme', '135.90', 'Un chausson d\'escalade révolutionnaire, spécialement conçu pour les exigences extrêmes du bloc. Quel que soit le problème d\'escalade technique auquel tu es confronté, le \"Solution\" te donne le soutien nécessaire pour venir à bout du bloc grâce à l\'utilisation de la technologie la plus innovante. Le système Lock-Harness de La Sportiva, qui soutient le pied de l\'intérieur, est utilisé dans la tige. Associé à des talonnettes parfaites, il assure une liberté de mouvement maximale pour les crochets, les encoches et les surplombs. Le Randing System P3 (Permanent Power Platform) est l\'âme de la chaussure qui lui confère sa polyvalence. En synergie avec la base du pied, il en résulte une précontrainte vraiment permanente. Le système innovant de laçage rapide (Fast Lacing System), associé à la languette élastique, assure une adaptation optimale du volume interne. Vibram XS Grip²L\'évolution naturelle du mélange plusieurs fois champion du monde d\'escalade de difficulté. P3 Permanent Power PlatformCe système breveté laisse intacte la forme arquée de la chaussure d\'escalade, sans compromettre la performance originale et la puissance de poussée, même après des années d\'utilisation intensive.', 'lasportiva-solutionhomme-climbingShoe.svg', 1, 6),
(28, 'Scarpa', 'Vapor pour femmes Vert', '52.90', 'A propos de Scarpa La passion associée à la conscience de la qualité et à l\'amour de la nature - tels étaient les ingrédients de la success story de SCARPA. Ce qui a commencé en 1938 comme une petite manufacture de chaussures à Asolo, un village de montagne idyllique dans le nord de l\'Italie, s\'est développé au fil du temps pour devenir une marque outdoor appréciée au niveau international. Toujours dans la tradition des cordonniers d\'Asolo, qui se sont unis pour fabriquer les chaussures de la plus haute qualité, loin à la ronde.', 'scarpa-vapor-climbingShoe.svg', 1, 4),
(29, 'Black Diamond', 'Mojo Zip Chalk Bag (Azul)', '8.90', 'Incontournable, le MOJO ZIP de BLACK DIAMOND est un sac à magnésie ultra fonctionnel. Les grimpeurs l\'apprécient pour sa simplicité et sa facilité d\'utilisation grâce à son cordon de fermeture et sa sangle d’attache avec boucle.Doté d\'une forme cylindrique classique, ce sac à magnésie se compose d\'un bord supérieur flexible et d\'un fond en TPU résistant à l\'abrasion pour plus de durabilité. Il est équipé d’une poche zippée pour votre téléphone, vos clés ou autres accessoires essentiels. Sa sangle d\'attache munie d\'une boucle à ouverture rapide permet de l\'accrocher ou le décrocher rapidement.', 'blackdiamond-mojozipazul-sacMagnesie.svg', 2, 2),
(30, 'Black Diamond', 'Mojo Chalk Bag - Sac à magnésie Dark Crimson M/L', '10.90', 'Avec un design cylindrique classique, un bord en fil métallique souple et une fermeture améliorée, le sac à magnésie Black Diamond Mojo est notre sac à magnésie préféré pour une utilisation quotidienne, des blocs aux grands murs. La ceinture en sangle incluse avec une boucle à déclenchement rapide permet de l\'enfiler et de l\'enlever rapidement. Caractéristiques Forme cylindrique classique qui tient debout avec bord interne flexible et fond en TPU résistant à l’abrasion. Intérieur doublé en fibre polaire et système d’ouverture/fermeture facile à utiliser. Porte-brosse. Sangle d’attache avec boucle rapide.', 'blackdiamond-mojodarkcrimson-sacMagnesie.svg', 2, 2),
(31, 'Simond', 'Vertika taille m gris clair', '10.90', 'Nos concepteurs ont développé ce sac à magnésie pour le grimpeur pratiquant l\'escalade en salle et en falaise, quelque soit son niveau. Grimpez facilement avec votre sac à magnésie léger. Son ergonomie vous permettra de \"pofer\" rapidement dans le \"crux\" des voies. Seulement 55 grammes ! Son ouverture rigidifiée permet une très bonne accessibilité à la magnésie.La ceinture réglable et élastique apporte du confort pendant la grimpe.Une sangle sur le côté permet d\'accrocher facilement une brosse d\'escalade.', 'simond-vertikagrisclair-sacMagnesie.svg', 2, 3),
(32, 'Black Diamond', 'Mondo Chalk Pot (Red)', '37.90', 'Le sac Mondo ne laissera jamais filer la magnésie. Grâce à sa fermeture magnétique, vous l\'ouvrez ou le fermer en un clin d’œil sans laisser la magnésie s\'échapper lorsque vous déplacez vos crash pad d\'un bloc à l\'autre. Ses porte-brosses conviennent à la plupart des tailles de brosses, vous pourrez donc emporter vos préférées. Glissez aussi votre téléphone dans la poche zippée et placez le Mondo dans votre sac en toute sérénité grâce à sa fermeture étanche par enroulement du haut.', 'blackdiamond-mondochalkpotred-sacMagnesie.svg', 2, 2),
(33, 'Petzl', 'Bandi Turquoise', '11.90', 'Le sac à magnésie BANDI possède une forme ronde avec une large ouverture pour pouvoir accueillir la main entière. Sa matière souple reste confortable avec un sac à dos ou lorsque vous êtes adossé contre le rocher. Le système de fermeture est pratique, grâce à un serrage central par cordon et tanka. Il peut s’ouvrir d’une seule main lorsque vous avez oublié de l’ouvrir avant de commencer à grimper. Caractéristiques: Petzl Bandi Forme ronde pouvant recevoir la main entière. Bordure rigidifiée permettant au sac de garder sa forme. Fermeture du sac en textile tissé empêchant la magnésie de s\'échapper pendant le transport. Porte-brosse à dent textile pour une meilleure tenue de tous types de brosses. Doublure cousue au fond du sac pour éviter son retournement lorsque l\'on retire la main du sac à magnésie.', 'petzl-banditurquoise-sacMagnesie.svg', 2, 5),
(34, 'La Sportiva', 'Jeans Chalk Bag Jeans - Bleu', '17.90', 'Un sac à pof stylé en jeans ! La Sportiva vous propose un sac à magnésie avec porte brosse et fermeture à soufflet. Le sac à pof a une forme ergonomique qui permet d’accéder facilement à la magnésie. La fermeture à soufflet permet de bien conserver la magnésie à l\'intérieur du sac. Le Jeans Chalk Bag est équipé d\'un porte-brosse à dents très facile d\'accès. Il peut s’ouvrir d’une seule main lorsque vous avez oublié de l’ouvrir avant de commencer à grimper. La doublure cousue au fond du sac sert à éviter son retournement lorsque l\'on retire la main du sac à magnésie.', 'lasportiva-jeanschalkbleu-sacMagnesie.svg', 2, 6),
(35, 'Mammut', 'We Care Chalk Bag', '23.90', 'Que faire avec les reste de matériaux issus de la production de produits outdoor haut de gamme? Le We Care Chalk Bag fournit la réponse: ce sac à magnésie se compose de tissus de qualité issus de la production d\'autres articles. Ainsi, chaque sac est une pièce unique de par ses couleurs et la composition de ses matériaux. Les sacs ont cependant une chose en commun: un cordon de serrage fiable et une ceinture réglable. Une doublure en polaire douce réduit la formation de nuages de poussière, tandis que la fermeture ronde solide conserve toujours sa forme. Convaincant en termes de design et de durabilité, le We Care Chalk Bag est parfait pour tous ceux qui veulent soutenir une gestion respectueuse des ressources. ', 'mammut-wecare-sacMagnesie.svg', 2, 10),
(36, 'Simond', 'Edge Jaune', '14.90', 'Tout a été travaillé pour permettre un sac à magnésie léger et terriblement efficace pour \"pofer\" rapidement. Sa profondeur permet de bien garder la magnésie à l\'intérieur. L\'ouverture large, rigide et en biais permet un très rapide accès à la magnésie.Ceinture réglable. Elle est élastique donnant un meilleur confort dans la grimpeCordon de serrage pour ne pas mettre de la magnésie partout dans son sac.L\'intérieur est en tissu polaire et apporte du confort.', 'simond-edgejaune-sacMagnesie.svg', 2, 3),
(37, 'Simond', 'bigblocker stopchalk taille xxl gris', '17.90', 'Grand sac à magnésie de bloc stable et ergonomique pour une utilisation facile, seul ou en groupe. La double membrane limite fortement la magnésie volatile dans l\'air. Un cordon permet de fermer et d\'ouvrir entièrement le sac à pof. Un zip intégral permet de remplir facilement le sac a pof de magnésie. Une poignée centrale est fixée pour transporter le sac de bloc en bloc. Le tissu principal est très solide pour résister aux sollicitations en usage.', 'simond-bigblockerxxlgris-sacMagnesie.svg', 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `t_blog_articles`
--

CREATE TABLE `t_blog_articles` (
  `idBlog` int(11) NOT NULL,
  `bloArtName` varchar(100) NOT NULL,
  `bloArtCategorie` varchar(30) NOT NULL,
  `bloArtDescription` varchar(5000) NOT NULL,
  `bloArtDate` date NOT NULL,
  `bloImgCover` varchar(50) NOT NULL,
  `bloArtAuteur` varchar(30) NOT NULL,
  `bloPreDescription` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_blog_articles`
--

INSERT INTO `t_blog_articles` (`idBlog`, `bloArtName`, `bloArtCategorie`, `bloArtDescription`, `bloArtDate`, `bloImgCover`, `bloArtAuteur`, `bloPreDescription`) VALUES
(1, 'Choisir ces chaussures d\'escalade de bloc', 'Sport', '<div class=\"subtitleArticle\">\r\nLes chaussures d\'escalade sont des équipements cruciaux pour tout grimpeur de bloc sérieux. Lorsque vous grimpez, vos pieds sont votre principal point de contact avec la paroi, et le bon choix de chaussures peut faire toute la différence entre une ascension réussie et une chute frustrante. Voici quelques conseils pour choisir les meilleures chaussures d\'escalade de bloc :\r\n</div>\r\n<div class=\"mainPointsArticle\">\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">1. Ajustement et confort :</div> La première chose à considérer est le confort. Vos chaussures doivent être bien ajustées sans être trop serrées. Les chaussures d\'escalade de bloc doivent offrir un bon soutien à votre pied tout en vous permettant une certaine liberté de mouvement.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">2. Sensibilité :</div> Les chaussures d\'escalade de bloc doivent être suffisamment sensibles pour vous permettre de sentir la roche sous vos pieds. Cela vous aidera à trouver des prises précises et à vous équilibrer correctement.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">3. Forme et asymétrie :</div> La forme et l\'asymétrie des chaussures d\'escalade de bloc peuvent varier en fonction de votre style de grimpe. Les chaussures plus asymétriques sont généralement meilleures pour les surplombs et les petites prises, tandis que les chaussures plus plates peuvent être meilleures pour les dalles et les voies verticales.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">4. Type de fermeture :</div> Les chaussures d\'escalade de bloc sont généralement disponibles avec différents types de fermeture, tels que lacets, velcro ou chaussons. Choisissez celui qui vous convient le mieux en fonction de votre préférence et de votre facilité d\'utilisation.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">5. Matériaux :</div> Les matériaux utilisés dans la construction des chaussures d\'escalade de bloc peuvent affecter leur performance et leur durabilité. Recherchez des chaussures fabriquées avec des matériaux de haute qualité qui offrent à la fois une bonne adhérence et une bonne résistance à l\'usure.\r\n</div>\r\n</div>\r\n<div class=\"endTextArticle\">\r\nEn fin de compte, le meilleur moyen de choisir des chaussures d\'escalade de bloc est d\'essayer différentes paires et de trouver celles qui conviennent le mieux à votre style de grimpe et à la forme de votre pied. Assurez-vous de consulter un professionnel dans un magasin spécialisé pour obtenir des conseils personnalisés.\r\n</div>', '2024-02-29', 'choose_your_climbing_shoes.svg', 'ChatGPT', 'Les chaussures d\'escalade sont des équipements cruciaux pour tout grimpeur de bloc sérieux. Lorsque vous grimpez, vos pieds sont votre principal point de contact avec la paroi, et le bon choix de chaussures peut faire toute la différence entre...'),
(2, 'Progresser en escalade comme un pro', 'Sport', '<div class=\"subtitleArticle\">\r\nL\'escalade est un sport exigeant qui demande à la fois force, agilité et technique. Que vous soyez débutant ou grimpeur expérimenté, voici quelques conseils pour progresser en escalade comme un pro :\r\n</div>\r\n<div class=\"mainPointsArticle\">\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">1. Entraînement spécifique :</div> Pour améliorer vos performances en escalade, rien ne vaut un entraînement spécifique. Travaillez régulièrement sur des exercices qui ciblent vos points faibles, que ce soit la force des doigts, la technique des pieds ou l\'endurance.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">2. Variez les styles de grimpe :</div> Pour devenir un grimpeur polyvalent, il est important de varier les styles de grimpe. Essayez différents types de voies, du bloc à la grande voie en passant par la falaise, et adaptez votre technique en conséquence.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">3. Travaillez votre mental :</div> L\'escalade est autant un défi mental qu\'un défi physique. Apprenez à gérer le stress et la peur, à visualiser votre progression et à rester concentré sur vos objectifs, même lorsque la paroi semble infranchissable.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">4. Écoutez votre corps :</div> L\'escalade peut être éprouvante pour le corps, alors assurez-vous de lui accorder le repos et la récupération nécessaires. Écoutez les signaux de fatigue et d\'épuisement, et n\'hésitez pas à faire des pauses ou à vous accorder des jours de repos lorsque cela est nécessaire.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">5. Apprenez des autres : </div>L\'escalade est aussi une communauté, alors n\'hésitez pas à apprendre des autres grimpeurs. Observez leur technique, posez-leur des questions sur leur entraînement et partagez vos propres expériences pour progresser ensemble.\r\n</div>\r\n</div>\r\n<div class=\"endTextArticle\">\r\nEn suivant ces conseils et en restant motivé, vous pourrez progresser en escalade et atteindre de nouveaux sommets !\r\n</div>', '2024-02-29', 'progress_inclimb_like_a_pro.svg', 'ChatGPT', 'L\'escalade est un sport exigeant qui demande à la fois force, agilité et technique. Que vous soyez débutant ou grimpeur expérimenté, voici quelques conseils pour progresser en escalade comme un...'),
(3, 'Les meilleurs sites escalade du monde', 'Voyage', '<div class=\"subtitleArticle\">\r\nL\'escalade est un sport qui vous emmène aux quatre coins du monde, à la découverte de paysages époustouflants et de parois mythiques. Voici une sélection des meilleurs sites d\'escalade du monde entier :\r\n</div>\r\n<div class=\"mainPointsArticle\">\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">1. Yosemite Valley, États-Unis :</div> Réputé pour ses grandes parois de granite et ses voies emblématiques comme \"El Capitan\" et \"Half Dome\", Yosemite est un incontournable pour tout grimpeur.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">2. Kalymnos, Grèce :</div> Avec ses falaises calcaires et son climat méditerranéen, Kalymnos est un paradis pour les grimpeurs sportifs. Les voies sont bien équipées et offrent une grande variété de styles et de difficultés.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">3. Siurana, Espagne :</div> Niché au cœur de la Catalogne, Siurana est célèbre pour ses voies techniques et verticales, ainsi que pour ses paysages à couper le souffle. C\'est un endroit idéal pour repousser ses limites en escalade sportive.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">4. Fontainebleau, France :</div> Surnommé \"Bleau\" par les locaux, Fontainebleau est l\'un des plus grands sites de bloc au monde. Avec ses milliers de blocs de grès disséminés dans la forêt, c\'est un lieu magique pour les amoureux du bloc.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">5. Rodellar, Espagne :</div> Situé dans les gorges de la Sierra de Guara, Rodellar est réputé pour ses voies déversantes et athlétiques, ainsi que pour son ambiance conviviale. C\'est un spot idéal pour les grimpeurs en quête de sensations fortes.\r\n</div>\r\n</div>\r\n<div class=\"endTextArticle\">\r\nQue vous soyez amateur ou grimpeur confirmé, ces sites d\'escalade vous promettent des aventures inoubliables et des défis à la hauteur de vos attentes !\r\n</div>', '2024-02-29', 'best_sportclimbing_spot_img1.svg', 'ChatGPT', 'L\'escalade est un sport qui vous emmène aux quatre coins du monde, à la découverte de paysages époustouflants et de parois mythiques. Voici une sélection des meilleurs sites d\'escalade du...'),
(4, 'Les meilleurs conseils pour réussir sa première longue voie', 'Conseils', '<div class=\"subtitleArticle\">\r\nLa grimpe en longue voie est une expérience unique et passionnante qui demande à la fois compétence technique et préparation mentale. Voici quelques conseils pour réussir votre première grande voie :\r\n</div>\r\n<div class=\"mainPointsArticle\">\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">1. Choisissez une voie adaptée :</div> Pour votre première longue voie, optez pour une voie bien équipée et de difficulté modérée. Assurez-vous de connaître le niveau de difficulté et les particularités de la voie avant de vous lancer.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">2. Préparez-vous mentalement :</div> La grimpe en longue voie peut être intimidante, alors préparez-vous mentalement en visualisant la voie, en vous fixant des objectifs réalistes et en restant concentré sur chaque mouvement.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">3. Maîtrisez les manœuvres de corde :</div> Avant de partir en longue voie, assurez-vous de maîtriser les manœuvres de corde essentielles, comme l\'assurage en tête, la gestion des relais et les manœuvres de rappel. Si nécessaire, faites-vous accompagner par un guide expérimenté.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">4. Gérez votre matériel :</div> Assurez-vous d\'avoir le matériel nécessaire pour la voie, y compris les dégaines, les friends, les coinceurs et les cordes. Vérifiez votre équipement avant de partir et assurez-vous de savoir comment l\'utiliser correctement.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">5. Soyez prudent et responsable :</div> La sécurité est primordiale en escalade, surtout en longue voie. Respectez les règles de sécurité, communiquez clairement avec votre partenaire et soyez conscient des conditions météorologiques et des dangers potentiels sur la paroi.\r\n</div>\r\n</div>\r\n<div class=\"endTextArticle\">\r\nEn suivant ces conseils et en restant calme et concentré, vous pourrez profiter pleinement de votre première longue voie et vivre une expérience inoubliable en montagne.\r\n</div>', '2024-03-04', 'long_route_first_time.svg', 'ChatGPT', 'La grimpe en longue voie est une expérience unique et passionnante qui demande à la fois compétence technique et préparation...'),
(5, 'Les plus beaux sites d\'escalade en France', 'Voyage', '<div class=\"subtitleArticle\">\r\nLa France regorge de sites d\'escalade exceptionnels, allant des falaises calcaires du sud aux massifs granitiques des Alpes. Voici une sélection des plus beaux sites d\'escalade à découvrir en France :\r\n</div>\r\n<div class=\"mainPointsArticle\">\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">1. Les Calanques, Provence-Alpes-Côte d\'Azur :</div> Nichées entre Marseille et Cassis, les Calanques offrent des falaises abruptes plongeant dans la mer Méditerranée. Les voies sont variées et offrent des panoramas à couper le souffle.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">2. Chamonix-Mont-Blanc, Auvergne-Rhône-Alpes :</div> Chamonix est un paradis pour les grimpeurs, avec ses nombreuses voies de granite et ses vues imprenables sur le Mont-Blanc. Que vous soyez amateur ou expert, vous trouverez des défis à votre mesure dans la vallée de Chamonix.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">3. Buoux, Provence-Alpes-Côte d\'Azur :</div> Buoux est célèbre pour ses voies techniques et athlétiques taillées dans le calcaire. C\'est un spot incontournable pour les grimpeurs en quête de sensations fortes dans le sud de la France.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">4. Verdon, Provence-Alpes-Côte d\'Azur :</div> Le Verdon est le plus grand canyon d\'Europe et un site d\'escalade légendaire. Les voies sont longues et exposées, offrant des défis uniques aux grimpeurs les plus audacieux.\r\n</div>\r\n<div class=\"pointsArticle\">\r\n<div class=\"titlePointsArticle\">5. Fontainebleau, Île-de-France :</div> Fontainebleau est mondialement connu pour ses blocs de grès disséminés dans la forêt de Fontainebleau. Avec ses milliers de problèmes de bloc de toutes les difficultés, c\'est un lieu magique pour les amateurs de bloc.\r\n</div>\r\n</div>\r\n<div class=\"endTextArticle\">\r\nQue vous soyez à la recherche de sensations fortes ou de paysages à couper le souffle, ces sites d\'escalade en France vous promettent des aventures inoubliables et des souvenirs à partager.\r\n</div>', '2024-03-04', 'fontainbleau_france_climbing_bouldersroutes.svg', 'ChatGPT', 'La France regorge de sites d\'\'escalade exceptionnels, allant des falaises calcaires du sud aux massifs granitiques des...');

-- --------------------------------------------------------

--
-- Structure de la table `t_marque`
--

CREATE TABLE `t_marque` (
  `idMarque` int(30) NOT NULL,
  `marName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_marque`
--

INSERT INTO `t_marque` (`idMarque`, `marName`) VALUES
(1, 'Red Chili'),
(2, 'Black Diamond'),
(3, 'Simond'),
(4, 'Scarpa'),
(5, 'Petzl'),
(6, 'La Sportiva'),
(7, 'Trangoworld'),
(8, 'Edelweiss'),
(9, 'Beastmaker'),
(10, 'Mammut');

-- --------------------------------------------------------

--
-- Structure de la table `t_type_articles`
--

CREATE TABLE `t_type_articles` (
  `idType` int(11) NOT NULL,
  `typName` varchar(50) NOT NULL,
  `typDescription` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_type_articles`
--

INSERT INTO `t_type_articles` (`idType`, `typName`, `typDescription`) VALUES
(1, 'Chaussons', 'Tout les chaussons d\'escalades'),
(2, 'Sac à pof', 'Les sac à magnésie'),
(3, 'Vêtements', 'Tout ce qui touche aux vêtements, t-shirt, pantalons, chaussettes...'),
(4, 'Entraînement', 'Tout ce qui touche à l\'entrainement, des doigts, des mains, des bras...'),
(5, 'Accessoires', 'Lunettes escalade, cordes, baudriers...');

-- --------------------------------------------------------

--
-- Structure de la table `t_user_account`
--

CREATE TABLE `t_user_account` (
  `idUsrAcc` int(11) NOT NULL,
  `usrUsername` varchar(50) NOT NULL,
  `usrEmail` varchar(50) NOT NULL,
  `usrPassword` varchar(50) NOT NULL,
  `usrCreate_DateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_user_account`
--

INSERT INTO `t_user_account` (`idUsrAcc`, `usrUsername`, `usrEmail`, `usrPassword`, `usrCreate_DateTime`) VALUES
(5, 'Adam.Ondra', 'adam.ondra@ifsc.cz', '05ef603ac63ff541126d724aa6ddb3aa', '2024-03-06 07:41:12'),
(6, 'Ai.Mori', 'ai.mori@ifsc.jp', '05ef603ac63ff541126d724aa6ddb3aa', '2024-03-06 07:52:59'),
(7, 'Alex.Megos', 'alex.megos@ifsc.de', '05ef603ac63ff541126d724aa6ddb3aa', '2024-03-06 07:54:14'),
(9, 'Janja.Garnbret', 'janja.garnbret@ifsc.si', '05ef603ac63ff541126d724aa6ddb3aa', '2024-03-06 08:05:11'),
(10, 'Sascha.Lehmann', 'sascha.lehmann@ifsc.de', '05ef603ac63ff541126d724aa6ddb3aa', '2024-03-06 13:05:15'),
(11, 'Brooke.Raboutou', 'brooke.raboutou@ifsc.us', '05ef603ac63ff541126d724aa6ddb3aa', '2024-03-06 13:09:35'),
(12, 'Magnus.Midtbo', 'magnus.midtbo@youtube.no', '05ef603ac63ff541126d724aa6ddb3aa', '2024-03-06 13:11:56'),
(23, 'Miho.Nonaka', 'Miho.Nonaka@ifsc.jp', '05ef603ac63ff541126d724aa6ddb3aa', '2024-03-06 13:45:28');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_articles`
--
ALTER TABLE `t_articles`
  ADD PRIMARY KEY (`idArticle`),
  ADD KEY `idArticle` (`idArticle`),
  ADD KEY `fkType` (`fkType`),
  ADD KEY `fkMarque` (`fkMarque`);

--
-- Index pour la table `t_blog_articles`
--
ALTER TABLE `t_blog_articles`
  ADD PRIMARY KEY (`idBlog`),
  ADD KEY `idBlog` (`idBlog`);

--
-- Index pour la table `t_marque`
--
ALTER TABLE `t_marque`
  ADD PRIMARY KEY (`idMarque`),
  ADD KEY `idMarque` (`idMarque`);

--
-- Index pour la table `t_type_articles`
--
ALTER TABLE `t_type_articles`
  ADD PRIMARY KEY (`idType`),
  ADD KEY `idType` (`idType`);

--
-- Index pour la table `t_user_account`
--
ALTER TABLE `t_user_account`
  ADD PRIMARY KEY (`idUsrAcc`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_articles`
--
ALTER TABLE `t_articles`
  MODIFY `idArticle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `t_blog_articles`
--
ALTER TABLE `t_blog_articles`
  MODIFY `idBlog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `t_marque`
--
ALTER TABLE `t_marque`
  MODIFY `idMarque` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `t_type_articles`
--
ALTER TABLE `t_type_articles`
  MODIFY `idType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `t_user_account`
--
ALTER TABLE `t_user_account`
  MODIFY `idUsrAcc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
