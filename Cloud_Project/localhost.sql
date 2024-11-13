-- Setting up the database
CREATE DATABASE IF NOT EXISTS `travel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `travel`;

-- Creating the `destination` table
CREATE TABLE IF NOT EXISTS `destination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=7;

-- Inserting data into the `destination` table
INSERT INTO `destination` (`id`, `name`, `price`) VALUES
(1, 'Delhi', 300),
(2, 'Agra', 150),
(3, 'Mathura', 25),
(4, 'Vrindavan', 15),
(5, 'Barsana', 50),
(6, 'Chaumuhan', 7);

-- Creating the `pass` table
CREATE TABLE IF NOT EXISTS `pass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(13) NOT NULL,
  `date` date NOT NULL,
  `dest` text NOT NULL,
  `paid` float NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=108;

-- Inserting data into the `pass` table
INSERT INTO `pass` (`id`, `name`, `email`, `contact`, `date`, `dest`, `paid`, `password`) VALUES
(104, 'test1', 'h@h.c', '1234567', '2019-12-07', 'Agra', 1200, 'abcd'),
(107, 'test2', 'jljk@gmial.com', 'jlj', '2019-12-01', 'Agra', 0, '12345');
