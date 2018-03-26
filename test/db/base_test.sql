-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 26 Mars 2018 à 21:42
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `base_test`
--

-- --------------------------------------------------------

--
-- Structure de la table `test`
--

CREATE TABLE `test` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `test`
--

INSERT INTO `test` (`id`, `nom`, `telephone`, `email`, `adresse`) VALUES
(1, 'Hillary', '06 71 55 09 74', 'malesuada.vel.convallis@Aliquamtinciduntnunc.net', '785-4358 Tincidunt Av.'),
(2, 'Davis', '06 44 59 56 56', 'eleifend.Cras@ante.edu', '826-1748 Imperdiet Av.'),
(3, 'Indira', '06 89 21 27 91', 'libero.Integer@scelerisqueneque.co.uk', 'Ap #659-4463 Ornare, Road'),
(4, 'Daria', '06 64 89 27 92', 'vehicula.risus.Nulla@etrisus.org', 'Ap #654-5488 Ipsum Rd.'),
(5, 'Lillith', '06 82 41 55 46', 'neque.non.quam@vel.ca', '280-1285 Pellentesque Rd.'),
(6, 'Macey', '06 23 49 56 42', 'ac@Nunc.edu', '689-5158 Amet, Av.'),
(7, 'Christian', '06 76 42 08 10', 'dui.Cras.pellentesque@vitaemaurissit.ca', 'P.O. Box 255, 924 Magna Ave'),
(8, 'Xander', '06 70 29 86 34', 'erat@netus.org', '5834 Quisque St.'),
(9, 'Marny', '06 25 78 57 95', 'velit.Sed.malesuada@magnisdisparturient.ca', 'P.O. Box 929, 9317 Tempor Ave'),
(10, 'Kasper', '06 30 41 18 53', 'Sed@loremDonec.net', 'P.O. Box 602, 2022 Phasellus Rd.'),
(11, 'Rina', '06 82 28 17 41', 'non.lobortis@magna.org', '3270 Amet St.'),
(12, 'Kasper', '06 26 14 80 43', 'montes.nascetur.ridiculus@liberolacus.org', 'P.O. Box 536, 9524 Non St.'),
(13, 'Graiden', '06 23 18 65 54', 'tempor@Seddiam.com', '315-8650 Velit. Av.'),
(14, 'Jordan', '06 19 55 24 61', 'nisl.Maecenas@at.edu', 'P.O. Box 513, 6316 Luctus Avenue'),
(15, 'Charissa', '06 31 59 45 37', 'adipiscing@Nullaeu.net', 'Ap #604-8242 Integer St.'),
(16, 'Jack', '06 42 76 02 31', 'dolor@antedictumcursus.com', '354-5461 Ipsum Road'),
(17, 'Uriah', '06 83 00 22 95', 'mauris.Integer@laciniamattis.org', 'Ap #339-5207 Tempus St.'),
(18, 'Echo', '06 22 25 92 31', 'eu.sem@Pellentesquetincidunt.com', '946-9392 Suspendisse Ave'),
(19, 'Alexandra', '06 88 40 48 03', 'ante@eleifendvitae.net', 'Ap #444-6406 A Av.'),
(20, 'Joshua', '06 21 14 47 64', 'consectetuer@Sed.co.uk', 'Ap #852-8776 Natoque Ave'),
(21, 'Aiko', '06 83 42 43 08', 'id.sapien.Cras@ultricesposuerecubilia.org', '9487 Enim Street'),
(22, 'Deborah', '06 07 61 55 05', 'nibh@velitinaliquet.ca', '407-6978 Tempus Ave'),
(23, 'Hayes', '06 68 73 89 64', 'Nullam.suscipit@temporest.com', 'P.O. Box 408, 9354 Interdum. Ave'),
(24, 'Harper', '06 28 06 31 29', 'sapien.cursus@tortor.org', 'P.O. Box 287, 9746 Curabitur Road'),
(25, 'Rooney', '06 74 07 37 54', 'amet@fringilla.edu', 'Ap #968-4478 Dui Avenue'),
(26, 'Dillon', '06 18 72 73 31', 'Aliquam.fringilla.cursus@mi.net', '427-8896 Mauris Av.'),
(27, 'Piper', '06 88 85 92 16', 'egestas.Aliquam@eutellus.edu', '496-8234 Arcu Rd.'),
(28, 'Branden', '06 71 42 11 25', 'nibh.vulputate.mauris@sociisnatoque.co.uk', '5912 Laoreet Rd.'),
(29, 'Adria', '06 49 79 55 54', 'id@convallisin.edu', 'Ap #898-1648 Ornare, Avenue'),
(30, 'Rowan', '06 17 84 83 36', 'per.inceptos.hymenaeos@commodoauctor.com', 'Ap #144-5528 Non, St.'),
(31, 'Alma', '06 53 16 24 70', 'in.magna@idenimCurabitur.com', '957-5068 Arcu. Rd.'),
(32, 'Amal', '06 69 25 83 82', 'tempor@atlacus.edu', 'P.O. Box 959, 5106 Amet Ave'),
(33, 'Alexandra', '06 91 14 17 37', 'Donec.fringilla.Donec@fames.com', '2200 Sem Street'),
(34, 'Rana', '06 70 02 76 61', 'leo.Cras@dictum.edu', 'P.O. Box 177, 1018 Aliquam Road'),
(35, 'Carlos', '06 88 80 83 66', 'facilisis.facilisis.magna@habitantmorbi.co.uk', 'P.O. Box 306, 9602 Nulla Street'),
(36, 'Heather', '06 13 83 59 66', 'metus.In.nec@acsemut.net', 'Ap #726-5679 Ullamcorper Street'),
(37, 'Clare', '06 80 92 53 45', 'augue.id.ante@aodio.net', '2150 Risus. Av.'),
(38, 'Jacqueline', '06 67 48 54 28', 'Sed.eu.eros@et.co.uk', '512 Pede. Avenue'),
(39, 'Dara', '06 34 09 84 13', 'ultrices.Vivamus.rhoncus@acsem.org', '258-363 Pede Ave'),
(40, 'Veda', '06 14 77 02 05', 'sodales.nisi.magna@semper.co.uk', '9726 Quisque Road'),
(41, 'Jescie', '06 21 09 25 56', 'amet.faucibus@duiFusce.net', '3389 Neque Avenue'),
(42, 'Isaiah', '06 47 56 44 01', 'eu.tellus@magnaSuspendisse.edu', 'Ap #866-5384 Eu St.'),
(43, 'Wylie', '06 95 36 42 07', 'ac.facilisis@Donecconsectetuermauris.edu', '657-1682 Lacinia Rd.'),
(44, 'Callum', '06 99 62 33 40', 'nulla.Donec@facilisismagna.org', 'Ap #902-1564 Magna Road'),
(45, 'Thor', '06 51 88 34 24', 'Mauris.vestibulum@cursus.net', 'Ap #269-4595 Varius. Avenue'),
(46, 'Jaquelyn', '06 81 65 85 46', 'ullamcorper@Morbinequetellus.co.uk', '918-4315 Adipiscing Road'),
(47, 'Demetrius', '06 08 82 67 29', 'erat.Etiam.vestibulum@sagittisaugueeu.ca', 'Ap #576-9994 Risus. Av.'),
(48, 'Patricia', '06 59 51 31 15', 'amet.massa.Quisque@rutrummagnaCras.edu', '2014 Elementum St.'),
(49, 'Brody', '06 32 11 97 46', 'id.mollis@Nunc.org', 'P.O. Box 428, 7973 Blandit. St.'),
(50, 'Stone', '06 10 46 44 67', 'ornare@odioPhasellusat.co.uk', '1087 Montes, Avenue'),
(51, 'Denton', '06 64 38 52 58', 'dictum.eu@primisinfaucibus.net', 'P.O. Box 702, 9943 Luctus St.'),
(52, 'Pamela', '06 81 35 16 52', 'Sed.malesuada@sitametconsectetuer.org', '568-378 Condimentum. Rd.'),
(53, 'Rebecca', '06 52 83 36 51', 'Cum@Praesent.org', '403 Fringilla Avenue'),
(54, 'Charissa', '06 91 88 51 72', 'ornare.elit.elit@liberoProinmi.com', '992-4688 Maecenas Street'),
(55, 'Quemby', '06 92 85 42 79', 'egestas.ligula@vitaealiquam.org', '7378 Vestibulum Rd.'),
(56, 'Phoebe', '06 51 71 64 42', 'Nulla.aliquet.Proin@telluslorem.org', '288-6380 Pretium Rd.'),
(57, 'Beverly', '06 35 83 82 51', 'Suspendisse.aliquet.molestie@porttitorvulputate.org', '227-7071 Dolor St.'),
(58, 'Shaine', '06 42 38 83 81', 'nisi.dictum.augue@turpisvitae.org', 'P.O. Box 561, 4233 Montes, Rd.'),
(59, 'Hakeem', '06 35 45 19 93', 'quis.diam.Pellentesque@euismod.com', 'Ap #441-4044 Parturient Rd.'),
(60, 'Emery', '06 14 47 33 48', 'sed.pede@felis.edu', 'P.O. Box 451, 4650 Sapien Ave'),
(61, 'Kenyon', '06 48 17 67 94', 'ante.dictum@risusa.ca', 'P.O. Box 962, 6358 Aliquet, Av.'),
(62, 'Xenos', '06 40 65 08 15', 'Phasellus.in@Donecfelisorci.edu', '2809 Erat Road'),
(63, 'Jayme', '06 57 77 65 27', 'porttitor.eros@sodalesMaurisblandit.ca', 'Ap #267-7312 Gravida Rd.'),
(64, 'Fletcher', '06 37 06 98 92', 'mi@est.com', 'Ap #153-8363 Dolor Road'),
(65, 'Simon', '06 67 02 93 46', 'vel.turpis@consectetuereuismod.edu', '8872 Amet Rd.'),
(66, 'Kevyn', '06 42 56 64 25', 'volutpat.Nulla@tortorInteger.edu', '161 Mauris Ave'),
(67, 'Charles', '06 36 45 64 82', 'nec.mauris.blandit@vestibulumlorem.co.uk', '239-1929 Orci. St.'),
(68, 'Dieter', '06 45 07 89 80', 'ipsum@parturientmontes.edu', '357-3800 Congue. Avenue'),
(69, 'Brooke', '06 51 20 51 37', 'ullamcorper.eu.euismod@sed.com', 'Ap #218-1393 Quisque Street'),
(70, 'Mohammad', '06 91 76 89 15', 'Nullam@enimmitempor.edu', 'P.O. Box 482, 4936 Lectus Av.'),
(71, 'Lenore', '06 91 77 42 83', 'urna@facilisisvitae.com', 'Ap #958-875 Magna. Avenue'),
(72, 'Hayley', '06 83 94 48 38', 'placerat@etmagnis.ca', 'P.O. Box 574, 7380 Aliquet Rd.'),
(73, 'Orli', '06 32 95 20 70', 'est@ametultriciessem.co.uk', '3327 Donec Rd.'),
(74, 'Glenna', '06 88 67 01 57', 'auctor.quis.tristique@ornarefacilisis.co.uk', 'Ap #564-228 Etiam Street'),
(75, 'Gareth', '06 56 56 94 09', 'ac.facilisis@Phasellus.co.uk', 'P.O. Box 600, 9910 Auctor Road'),
(76, 'Phyllis', '06 67 19 28 48', 'volutpat@ridiculusmus.ca', 'P.O. Box 607, 4804 Porta Avenue'),
(77, 'Lydia', '06 49 59 26 57', 'justo.sit@miac.ca', '8502 Risus St.'),
(78, 'Haley', '06 19 36 16 63', 'lacus.Cras@fringilla.com', 'P.O. Box 580, 258 Quis St.'),
(79, 'Athena', '06 54 20 06 59', 'Sed.nunc.est@egetmollis.edu', 'P.O. Box 658, 9263 Egestas Road'),
(80, 'Amethyst', '06 17 39 88 95', 'fermentum.vel.mauris@malesuadavelconvallis.edu', 'Ap #952-9647 Lectus. St.'),
(81, 'Herman', '06 32 62 79 06', 'non.magna.Nam@Fusce.com', '851-2465 Non, Rd.'),
(82, 'Kimberley', '06 59 52 41 17', 'Donec.nibh.Quisque@Inscelerisque.ca', 'Ap #775-4053 Laoreet Rd.'),
(83, 'Marsden', '06 77 14 79 63', 'fringilla.porttitor@nisi.co.uk', '1717 Magna, St.'),
(84, 'Kim', '06 08 37 87 38', 'augue.ac@tinciduntcongueturpis.edu', 'P.O. Box 434, 1881 Eu, St.'),
(85, 'Elvis', '06 16 64 61 28', 'Maecenas.mi@amet.com', '185-9493 Orci. St.'),
(86, 'Beatrice', '06 55 23 14 91', 'ut.nulla@Nullaeu.org', 'Ap #839-4654 Tempus Rd.'),
(87, 'Martin', '06 73 41 95 15', 'lobortis@Nunclaoreet.edu', 'Ap #879-6305 Proin Street'),
(88, 'Guy', '06 09 62 67 17', 'euismod.mauris@sedconsequat.com', '5033 Penatibus Road'),
(89, 'Quinn', '06 15 04 17 21', 'aliquet@vel.ca', '529-4745 Libero Av.'),
(90, 'Martin', '06 10 36 14 31', 'Cras.sed.leo@lectuspedeultrices.net', 'P.O. Box 520, 5956 Ipsum Rd.'),
(91, 'Cyrus', '06 77 25 01 05', 'libero@ac.edu', 'Ap #612-4829 Ridiculus Rd.'),
(92, 'Hakeem', '06 08 04 81 00', 'dolor.dolor.tempus@lectus.edu', '3077 Varius. Road'),
(93, 'Elton', '06 00 92 64 76', 'molestie@nec.ca', '5202 Placerat. St.'),
(94, 'Jael', '06 92 91 15 63', 'ligula.Donec@necurna.edu', '404-509 Sed Street'),
(95, 'Nehru', '06 91 09 84 83', 'felis.purus.ac@quamvelsapien.ca', 'Ap #507-6043 Neque St.'),
(96, 'Jerome', '06 58 92 17 34', 'malesuada.Integer@elitNulla.net', '1599 Nec Rd.'),
(97, 'Azalia', '06 76 35 19 98', 'vel.pede@etpede.ca', 'P.O. Box 553, 6775 Pharetra. Road'),
(98, 'Danielle', '06 66 59 98 98', 'a@Sed.net', 'P.O. Box 884, 2690 Odio Ave'),
(99, 'Lawrence', '06 21 97 15 08', 'ante.Maecenas.mi@ProinultricesDuis.ca', 'Ap #680-8192 At Rd.'),
(100, 'Nehru', '06 88 84 66 75', 'ante.Vivamus@consequat.com', 'Ap #414-4097 Rutrum St.');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `test`
--
ALTER TABLE `test`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
