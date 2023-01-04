-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2016 at 02:39 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'anuj.lpu1@gmail.com', 'Test@1234', '2016-04-04 20:31:45', '2016-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE IF NOT EXISTS `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hoteles`
--

CREATE TABLE IF NOT EXISTS `hoteles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `nit` int(11) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `habitaciones` int(11) NOT NULL,
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoteles`
--

INSERT INTO `hoteles` (`id`, `nombre`, `direccion`, `nit`, `ciudad`, `habitaciones` ) VALUES
(1, 'Decameron Bogota', 'Cra. 15 #98-70', '19876432', 'Bogota DC', '140'),
(2, 'Decameron Bocagrande', 'Cra. 1a #10-10', '98765432', 'Cartagena', '130'),
(3, 'Decameron Medellin', 'Cl. 36 #43-66', '97548653', 'Medellin', '100'),
(4, 'Decameron Amazonas', 'Cra. 11 #6-11', '95237862', 'Amazonas', '90'),
(5, 'Decameron Isleño', 'Av. Colón Calle 3ra N°6-106', '765439832', 'San Andres', '200'),
(6, 'Decameron Rodadero', 'Km 17 vía Ciénaga', '96753276', 'Santa Marta', '180'),
(7, 'Decameron Barranquilla', 'Carrera 51B # 87-50', '12987543', 'Barranquilla', '150');

-- --------------------------------------------------------

--
-- Table structure for table `habitaciones`
--

CREATE TABLE IF NOT EXISTS `habitaciones` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `tipo` varchar(500) NOT NULL,
  `acomodacion` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `habitaciones`
--

INSERT INTO `habitaciones` (`id`, `cantidad`, `tipo`, `acomodacion`) VALUES
(1, 25, 'Estandar', 'Sencilla'),
(2, 50, 'Junior', 'Triple'),
(3, 20, 'Suite', 'Sencilla'),
(4, 80, 'Junior', 'Doble'),
(5, 40, 'Suite', 'Sencilla'),
(6, 100, 'Estandar', 'Triple'),
(7, 35, 'Estandar', 'Sencilla'),
(8, 10, 'Junior', 'Doble'),
(9, 75, 'Estandar', 'Doble'),
(10, 60, 'Junior', 'Triple'),

-- --------------------------------------------------------


--
-- Table structure for table `ciudades`
--

CREATE TABLE IF NOT EXISTS `ciudades` (
  `id` int(11) NOT NULL,
  `Ciudad` varchar(150) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ciudades`
--

INSERT INTO `ciudades` (`id`, `Ciudad`) VALUES
(1, 'Bogota DC'),
(2, 'Medellin'),
(3, 'Barranquilla'),
(4, 'Cali'),
(5, 'Santa Marta'),
(6, 'Riohacha'),
(7, 'Cartagena'),
(8, 'San Andres'),
(9, 'Bucaramanga'),
(10, 'Leticia');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoteles`
--
ALTER TABLE `hoteles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hoteles`
--
ALTER TABLE `hoteles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
