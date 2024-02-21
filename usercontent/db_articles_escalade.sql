-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 21 fév. 2024 à 15:26
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
(1, 'Edelweiss', 'Lite unicorne 9.8 MM x 70M', '99.90', 'Une corde d\'escalade bleu de 9.8 MM x 70M', 'edelweiss-corde-98mmX70m.svg', 5, 8),
(2, 'Trangoworld', 'Pantalon d\'escalade Agora', '55.90', 'Un pantalon brun d\'escalade, modèle Agora', 'trangoworld-pantalon-escalade-agora.svg', 3, 7),
(3, 'Black Diamond', 'Climbing Helmet', '65.90', 'Un casque d\'escalade bleu', 'blackdiamond-climbinghelmet-blue.svg', 5, 2),
(4, 'Red Chili', 'SPIRIT IV Climbing Shoe', '95.90', 'Des chaussons d\'escalade rouge de la marque red chili', 'redchili-spiritIV-climbingShoe.svg', 1, 1),
(5, 'Petzl', 'ASPIC', '115.90', 'Un baudrier noir le la marque Petzl', 'petzl-aspic-baudrier.svg', 5, 5),
(6, 'Red Chili', 'SAC A MAGNESITE BETA', '9.90', 'Un sac à magnésie vert avec des dessins de fleurs verts clair, foncé et rose ainsi que le logo red chili en vert', 'redchili-sacMagnesieBeta.svg', 2, 1),
(7, 'Beastmaker', '1000 senes', '130.90', 'Une hangboard en bois pour s\'entraîner les doigts', 'beastmaker-1000-senes.svg', 4, 9),
(8, 'Simond', 'Mousqueton à Vis', '12.90', 'Un mousqueton bleu Simond résistant à plus de 300Kg à vis', 'simond-mousqueton-a-vis.svg', 5, 3),
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
(19, 'Red Chili', 'Charger LV', '85.90', 'Si l\'escalade consiste avant tout à recharger ses propres réserves d\'énergie, le Red Chili Charger Low Volume est le chausson d\'escalade parfait pour toute personne ayant un pied plutôt fin. Avec une asymétrie d\'axe longitudinal presque neutre, une pré-tension relativement faible et aucune baisse notable, ce modèle polyvalent offre une coupe étroite et confortable qui lui permet d\'être porté pendant de longues périodes sans stresser les pieds. Que vous soyez en salle ou sur les rochers, débutant ou expert, la Charger Low Volume se distingue par des détails tels que la semelle intermédiaire Powerflex pour une stabilité et des performances durables, deux sangles Velcro opposées pour un réglage rapide et détaillé, une languette en mesh respirant. et à ne pas sous-estimer l\'amorti du talon pour un séjour sans douleur en position d\'assurage, lors de l\'assurage ou du démontage. Des matériaux de haute qualité tels que le cuir de la tige et de la semelle intérieure ou le caoutchouc de la semelle RX-2 assurent la longévité et un maintien fiable du chausson d\'escalade plaisir.', 'redchili-chargerlv-climbingShoe.svg', 1, 1);

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
(9, 'Beastmaker');

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
(2, 'Sac à Pof', 'Les sac à magnésie'),
(3, 'Vêtements', 'Tout ce qui touche aux vêtements, t-shirt, pantalons, chaussettes...'),
(4, 'Entraînement', 'Tout ce qui touche à l\'entrainement, des doigts, des mains, des bras...'),
(5, 'Accessoires', 'Lunettes escalade, cordes, baudriers...');

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
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_articles`
--
ALTER TABLE `t_articles`
  MODIFY `idArticle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `t_marque`
--
ALTER TABLE `t_marque`
  MODIFY `idMarque` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `t_type_articles`
--
ALTER TABLE `t_type_articles`
  MODIFY `idType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
