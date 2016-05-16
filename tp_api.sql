-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 22 Mars 2016 à 12:44
-- Version du serveur :  5.7.9
-- Version de PHP :  5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tp_api`
--

-- --------------------------------------------------------

--
-- Structure de la table `data`
--

DROP TABLE IF EXISTS `data`;
CREATE TABLE IF NOT EXISTS `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `date` date NOT NULL,
  `url` text NOT NULL,
  `content` text NOT NULL,
  `author` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `data`
--

INSERT INTO `data` (`id`, `title`, `date`, `url`, `content`, `author`) VALUES
(1, 'Un Â«Â pacte salarial europÃ©enÂ Â» contre le chÃ´mage', '2016-03-22', 'http://www.lemonde.fr/idees/article/2016/03/22/un-pacte-salarial-europeen-contre-le-chomage_4887771_3232.html', '<p>Si les salaires et la demande stagnent, lâ€™emploi ne peut sâ€™accroÃ®tre, sauf endettement public supplÃ©mentaire, explique lâ€™Ã©conomiste Pierre Le Masne.<br/></p>', ''),
(2, 'Explosions Ã  BruxellesÂ : la rÃ©cupÃ©ration politique a dÃ©jÃ  commencÃ©', '2016-03-22', 'http://www.lemonde.fr/politique/article/2016/03/22/attentats-a-bruxelles-la-recuperation-politique-a-deja-commence_4887751_823448.html', '<p>Des Ã©lus franÃ§ais ont rapidement rÃ©agi sur Twitter. Le socialiste Bruno Le Roux a indignÃ© nombre de ses collÃ¨gues en Ã©voquant la rÃ©vision constitutionnelle actuellement au SÃ©nat.<br/></p>', ''),
(3, 'Â«Â Lâ€™emploi et lâ€™emploi durable passent par la nÃ©gociationÂ Â»', '2016-03-22', 'http://www.lemonde.fr/idees/article/2016/03/22/l-emploi-et-l-emploi-durable-passent-par-la-negociation_4887556_3232.html', '<p>Il est tout Ã  fait anormal que les syndicats aient dÃ©couvert les 130 pages de la loi El Khomri en mÃªme temps que la presse, constate Henri Rouilleault, membre du groupe de travail Combrexelle, directeur gÃ©nÃ©ral de lâ€™Agence nationale pour lâ€™amÃ©lioration des conditions de travail de 1991 Ã  2006<br/></p>', ''),
(4, 'Perquisition au siÃ¨ge des RÃ©publicains dans le cadre dâ€™une enquÃªte sur les lÃ©gislatives de 2012', '2016-03-21', 'http://www.lemonde.fr/politique/article/2016/03/21/perquisition-au-siege-des-republicains-dans-le-cadre-d-une-enquete-sur-les-legislatives-de-2012_4887361_823448.html', '<p>La procÃ©dure vise des tracts Ã©ditÃ©s par Jean-Christophe Baguet, maire de Boulogne et ancien dÃ©putÃ© des Hauts-de-Seine, en faveur de Claude GuÃ©ant, qui briguait sa succession Ã  lâ€™AssemblÃ©e en 2012. Il est soupÃ§onnÃ© dâ€™avoir financÃ© ces tracts avec lâ€™argent de la municipalitÃ© de Boulogne-Billancourt.<br/></p>', ''),
(5, 'Quand JuppÃ© drague les collaborateurs des Ã©lus LR', '2016-03-21', 'http://www.lemonde.fr/election-presidentielle-2017/article/2016/03/21/quand-juppe-drague-les-collaborateurs-des-elus-lr_4887352_4854003.html', '<p>Le maire de Bordeaux a rappelÃ© sa dÃ©termination Ã  accÃ©der Ã  lâ€™ElysÃ©e aux 90 collaborateurs de parlementaires des RÃ©publicains quâ€™il a reÃ§us lundi Ã  son QG de campagne.<br/></p>', ''),
(6, 'Pour Ã©viter une crise politique, Cameron annonce le retrait dâ€™une mesure budgÃ©taire contestÃ©e', '2016-03-21', 'http://www.lemonde.fr/europe/article/2016/03/21/pour-eviter-une-crise-politique-cameron-annonce-le-retrait-d-une-mesure-budgetaire-contestee_4887338_3214.html', '<p>Le ministre du travail avait donnÃ© sa dÃ©mission vendredi pour protester contre une coupe de 1,3 milliard de livres dans les allocations dâ€™invaliditÃ©.<br/></p>', ''),
(7, 'Non, le projet de Â«Â loi travailÂ Â» nâ€™introduit pas le Â«Â communautarismeÂ Â» dans lâ€™entreprise', '2016-03-21', 'http://www.lemonde.fr/les-decodeurs/article/2016/03/21/non-le-projet-de-loi-travail-n-introduit-pas-le-communautarisme-dans-l-entreprise_4887274_4355770.html', '<p>Une disposition du projet de loi sur le travail reconnaÃ®t au salariÃ© le droit de manifester ses convictions, quelles quâ€™elles soient. Rien de vraiment nouveau du cÃ´tÃ© du droit.<br/></p>', ''),
(8, 'Primaire des RÃ©publicainsÂ : pourquoi il faut (toujours) se mÃ©fier des sondages', '2016-03-21', 'http://www.lemonde.fr/les-decodeurs/article/2016/03/21/primaire-des-republicains-pourquoi-il-faut-toujours-se-mefier-des-sondages_4887267_4355770.html', '<p>Les enquÃªtes dâ€™opinion se multiplient autour de la future primaire de la formation de droite. Mais nombre de biais rendent leurs rÃ©sultats ambigus.<br/></p>', ''),
(9, 'ImpÃ´tÂ : les rÃ©ponses Ã  vos questions sur le prÃ©lÃ¨vement Ã  la source', '2016-03-21', 'http://www.lemonde.fr/argent/article/2016/03/21/impot-les-reponses-a-vos-questions-sur-le-prelevement-a-la-source_4887254_1657007.html', '<p>Comment lâ€™impÃ´t sera-t-il partagÃ© au sein du couple ? Quel sort sera rÃ©servÃ© aux crÃ©dits dâ€™impÃ´t et autres rÃ©ductions ? Les revenus fonciers sont-ils concernÃ©s ?â€¦ Les questions des internautes sont nombreuses Ã  la suite de lâ€™annonce de la rÃ©forme.<br/></p>', ''),
(10, 'La droite dÃ©nonce les Â«Â failles opÃ©rationnellesÂ Â» aprÃ¨s lâ€™arrestation de Salah Abdeslam', '2016-03-21', 'http://www.lemonde.fr/politique/article/2016/03/21/la-droite-denonce-les-failles-operationnelles-et-organisationnelles-apres-l-arrestation-de-salah-abdeslam_4887172_823448.html', '<p>Le parti Les RÃ©publicains (LR) accuse lâ€™exÃ©cutif dâ€™instrumentaliser la question terroriste.<br/></p>', ''),
(11, 'BrexitÂ : rÃ¨glements de comptes chez les tories', '2016-03-21', 'http://www.lemonde.fr/international/article/2016/03/21/brexit-climat-de-guerre-civile-chez-les-tories_4887161_3210.html', '<p>La dÃ©mission surprise de Iain Duncan Smith, ministre des affaires sociales, affaiblit la campagne en faveur du maintien du Royaume-Uni dans lâ€™Union europÃ©enne.<br/></p>', ''),
(12, 'Les mÃ©dias sÃ©nÃ©galais annoncent la victoire du Â«Â ouiÂ Â» au rÃ©fÃ©rendum sur la Constitution', '2016-03-21', 'http://www.lemonde.fr/afrique/article/2016/03/21/les-medias-senegalais-annoncent-la-victoire-du-oui-au-referendum-sur-la-constitution_4887068_3212.html', '<p>La rÃ©forme constitutionnelle prÃ©voit, notamment, une rÃ©duction de la durÃ©e du mandat prÃ©sidentiel de sept Ã  cinq ans.<br/></p>', ''),
(13, 'En Ile-de-France, ValÃ©rie PÃ©cresse veut tripler lâ€™offre de formation pour les chÃ´meurs', '2016-03-21', 'http://www.lemonde.fr/politique/article/2016/03/21/en-ile-de-france-valerie-pecresse-veut-tripler-l-offre-de-formation-pour-les-chomeurs_4887043_823448.html', '<p>La prÃ©sidente (LR) de la rÃ©gion a annoncÃ©, lundi 21 mars, que lâ€™Ile-de-France allait dÃ©penser 36 millions dâ€™euros pour financer 6 000 formations par an.<br/></p>', ''),
(14, 'Â«Â Lâ€™adaptation Ã©quilibrÃ©e du code du travail est possibleÂ Â»', '2016-03-21', 'http://www.lemonde.fr/idees/article/2016/03/21/l-adaptation-equilibree-du-code-du-travail-est-possible_4886902_3232.html', '<p>Le rapport du comitÃ© Badinter sur le code du travail pÃªche soit par excÃ¨s soit par insuffisance, selon Jean-Pierre Agaesse, directeur du travail. Il sâ€™agit de redÃ©finir la hiÃ©rarchie des sources du droit du travail et de dÃ©terminer la place de la nÃ©gociation collective.<br/></p>', ''),
(15, 'La droite remporte trois lÃ©gislatives partielles', '2016-03-20', 'http://www.lemonde.fr/politique/article/2016/03/20/la-droite-remporte-trois-legislatives-partielles_4886695_823448.html', '<p>Les candidats Les RÃ©publicains lâ€™ont emportÃ© dimanche lors dâ€™Ã©lections lÃ©gislatives partielles dans lâ€™Aisne, le Nord et les Yvelines, dont deux en duel face au FN.<br/></p>', ''),
(16, 'Philippe Poutou (NPA) candidat Ã  la prÃ©sidentielle : Â«Â Le plus simple, câ€™est que ce soit moi qui y retourneÂ Â»', '2016-03-20', 'http://www.lemonde.fr/politique/article/2016/03/20/npa-philippe-poutou-de-nouveau-candidat-a-la-presidentielle_4886669_823448.html', '<p>Cinq ans aprÃ¨s avoir Ã©tÃ© le premier candidat Ã  la prÃ©sidentielle du Nouveau Parti anticapitaliste, lâ€™ouvrier de chez Ford a Ã©tÃ© dÃ©signÃ© par sa formation pour les Ã©lections de 2017.<br/></p>', ''),
(17, 'Les adhÃ©rents de lâ€™UDI refusent de participer Ã  une primaire Ã  droite', '2016-03-20', 'http://www.lemonde.fr/politique/article/2016/03/20/les-adherents-de-l-udi-refusent-de-participer-a-une-primaire-a-droite_4886595_823448.html', '<p>Une consultation interne du parti centriste a abouti Ã  un rejet net de cette stratÃ©gie pour la prÃ©sidentielle de 2017, par 66,5 % des voix.<br/></p>', ''),
(18, 'En directÂ : Â«Â Le Grand Rendez-vousÂ Â» avec Michel Sapin et Wolfgang SchÃ¤uble', '2016-03-20', 'http://www.lemonde.fr/politique/article/2016/03/20/en-direct-le-grand-rendez-vous-avec-michel-sapin_4886558_823448.html', '<p>Le ministre franÃ§ais des finances Michel Sapin et son homologue allemand Wolfgang SchÃ¤uble rÃ©pondent aux questions des journalistes dâ€™Europe 1, du Monde et dâ€™i-TÃ©lÃ©.<br/></p>', ''),
(19, 'Hollande commÃ©more le cessez-le-feu en AlgÃ©rie, initiative controversÃ©e', '2016-03-19', 'http://www.lemonde.fr/politique/article/2016/03/19/hollande-commemore-le-cessez-le-feu-en-algerie-initiative-controversee_4886412_823448.html', '<p>Pour les anciens combattants, les pieds-noirs et une partie de lâ€™opposition, le 19 mars 1962 reste Â« douloureux Â» car il marque le dÃ©but de lâ€™exil et des massacres de civils.<br/></p>', ''),
(20, 'A Paris, lâ€™autre bataille de Stalingrad des migrants', '2016-03-19', 'http://www.lemonde.fr/societe/article/2016/03/19/a-paris-l-autre-bataille-de-stalingrad-des-migrants_4886111_3224.html', '<p>Ã€ la station de mÃ©tro Stalingrad, quatre cents migrants campent. Ensemble, ils luttent contre les tentatives de la police pour les disperser.<br/></p>', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
