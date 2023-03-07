DROP DATABASE projet_php;

CREATE DATABASE projet_php;

use projet_php;


DROP TABLE IF EXISTS `attente`;
CREATE TABLE IF NOT EXISTS `attente` (
  `facture` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(50) DEFAULT NULL,
  `designation` text NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dateAchat` varchar(50) DEFAULT NULL,
  `image` text NOT NULL,
  `montant` int(11) DEFAULT NULL,
  PRIMARY KEY (`facture`)
) ENGINE=InnoDB;



DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `facture` int(11) NOT NULL AUTO_INCREMENT,
  `dateAchat` text DEFAULT NULL,
  `montant` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  PRIMARY KEY (`facture`),
  KEY `id` (`id`)
) ENGINE=InnoDB;


DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL,
  `email` text NOT NULL,
  `sujet` varchar(30) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;



DROP TABLE IF EXISTS `detail`;
CREATE TABLE IF NOT EXISTS `detail` (
  `facture` int(11) NOT NULL,
  `reference` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  PRIMARY KEY (`facture`,`reference`),
  KEY `reference` (`reference`)
) ENGINE=InnoDB;


DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` text NOT NULL,
  `nomutilisateur` text NOT NULL,
  `heure` text NOT NULL,
  `date` text NOT NULL,
  `status` text NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;



DROP TABLE IF EXISTS `livraison`;
CREATE TABLE IF NOT EXISTS `livraison` (
  `numero` int(25) NOT NULL AUTO_INCREMENT,
  `facture` int(11) NOT NULL,
  `lieu` text NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB;


DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `reference` int(50) NOT NULL AUTO_INCREMENT,
  `date` text NOT NULL,
  `email` text NOT NULL,
  `motif` text NOT NULL,
  PRIMARY KEY (`reference`)
) ENGINE=InnoDB;



DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `reference` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `prixunitaire` int(11) DEFAULT NULL,
  `categorie` varchar(25) NOT NULL,
  `image` text DEFAULT NULL,
  PRIMARY KEY (`reference`)
) ENGINE=InnoDB;





DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomprenom` varchar(50) DEFAULT NULL,
  `adresse` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `motdepasse` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;


INSERT INTO `produit` (`reference`, `designation`, `description`, `prixunitaire`, `categorie`, `image`) VALUES
(1, 'Tshirt Suisse Garcon', 'taille XL,M,XXL compris ,  avec etiquette du drapeau de suisse,  couleur:rouge,bleu,orange,gris,violet,blanc , livraison: gratuit', 20000, 'garcon', 'dre.jpg'),
(2, 'Madame Apero', 'taille XL,M,XXL compris ,  avec etiquette du drapeau de suisse,  couleur:rouge,bleu,orange,gris,violet,blanc , livraison: gratuit', 30000, 'fille', 'er.jpg'),
(3, 'Manga Tee-shirt', 'taille XL,M,XXL compris ,  avec etiquette du drapeau de suisse,  couleur:rouge,bleu,orange,gris,violet,blanc , livraison: gratuit', 25000, 'garcon', 'fr.jpeg'),
(4, 'Polo Shirt', 'taille XL,M,XXL compris ,  avec etiquette du drapeau de suisse,  couleur:rouge,bleu,orange,gris,violet,blanc , livraison: gratuit', 15000, 'enfant', 'lu.jpeg'),
(5, 'Fille Tee-Shirt', 'taille XL,M,XXL compris ,  avec etiquette du drapeau de suisse,  couleur:rouge,bleu,orange,gris,violet,blanc , livraison: gratuit', 30000, 'fille', 'qa.jpg'),
(6, 'Premium Shirt fille', 'taille XL,M,XXL compris ,  avec etiquette du drapeau de suisse,  couleur:rouge,bleu,orange,gris,violet,blanc , livraison: gratuit', 16000, 'fille', 'ty.jpg'),
(7, 'Tee-Shirt Lakers', 'taille XL,M,XXL compris ,  avec etiquette du drapeau de suisse,  couleur:rouge,bleu,orange,gris,violet,blanc , livraison: gratuit', 55000, 'enfant', 'ui.jpg'),
(8, 'Tee-shirt julliette', 'taille XL,M,XXL compris ,  avec etiquette du drapeau de suisse,  couleur:rouge,bleu,orange,gris,violet,blanc , livraison: gratuit', 14500, 'enfant', 'ze.jpg');
COMMIT;