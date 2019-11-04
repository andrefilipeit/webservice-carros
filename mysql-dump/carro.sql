-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2018 at 04:47 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livro`
--

-- --------------------------------------------------------

--
-- Table structure for table `carro`
--

CREATE TABLE `carro` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `url_foto` varchar(255) DEFAULT NULL,
  `url_video` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carro`
--

INSERT INTO `carro` (`id`, `nome`, `descricao`, `url_foto`, `url_video`, `latitude`, `longitude`, `tipo`) VALUES
(1, 'Tucker 1948', 'Descrição Tucker 1948', 'http://www.livroandroid.com.br/livro/carros/classicos/Tucker.png', 'http://www.livroandroid.com.br/livro/carros/classicos/tucker.mp4', '-23.564224', '-46.653156', 'classicos'),
(2, 'Chevrolet Corvette', 'Descrição Chevrolet Corvette', 'http://www.livroandroid.com.br/livro/carros/classicos/Chevrolet_Corvette.png', 'http://www.livroandroid.com.br/livro/carros/classicos/corvette.mp4', '-23.564224', '-46.653156', 'classicos'),
(3, 'Chevrolet Impala Coupe', 'Descrição Chevrolet Impala Coupe', 'http://www.livroandroid.com.br/livro/carros/classicos/Chevrolet_Impala_Coupe.png', 'http://www.livroandroid.com.br/livro/carros/classicos/chevrolet_impala.mp4', '-23.564224', '-46.653156', 'classicos'),
(4, 'Cadillac Deville Convertible', 'Descrição Cadillac Deville Convertible', 'http://www.livroandroid.com.br/livro/carros/classicos/Cadillac_Deville_Convertible.png', 'http://www.livroandroid.com.br/livro/carros/classicos/cadillac_deville.mp4', '-23.564224', '-46.653156', 'classicos'),
(5, 'Chevrolet Bel-Air', 'Descrição Chevrolet Bel-Air', 'http://www.livroandroid.com.br/livro/carros/classicos/Chevrolet_BelAir.png', 'http://www.livroandroid.com.br/livro/carros/classicos/chevrolet_bel_air.mp4', '-23.564224', '-46.653156', 'classicos'),
(6, 'Cadillac Eldorado', 'Descrição Cadillac Eldorado', 'http://www.livroandroid.com.br/livro/carros/classicos/Cadillac_Eldorado.png', 'http://www.livroandroid.com.br/livro/carros/classicos/cadillac_eldorado.mp4', '-23.564224', '-46.653156', 'classicos'),
(7, 'Ferrari 250 GTO', 'Descrição Ferrari 250 GTO', 'http://www.livroandroid.com.br/livro/carros/classicos/Ferrari_250_GTO.png', 'http://www.livroandroid.com.br/livro/carros/classicos/ferrari_gto.mp4', '-23.564224', '-46.653156', 'classicos'),
(8, 'Dodge Challenger', 'Descrição Dodge Challenger', 'http://www.livroandroid.com.br/livro/carros/classicos/Dodge_Challenger.png', 'http://www.livroandroid.com.br/livro/carros/classicos/dodge_challenger.mp4', '', '', 'classicos'),
(9, 'Camaro SS 1969', 'Descrição Camaro SS 1969', 'http://www.livroandroid.com.br/livro/carros/classicos/Camaro_SS.png', 'http://www.livroandroid.com.br/livro/carros/classicos/camaro_ss.mp4', '-23.564224', '-46.653156', 'classicos'),
(10, 'Ford Mustang 1976', 'Descrição Ford Mustang 1976', 'http://www.livroandroid.com.br/livro/carros/classicos/Ford_Mustang.png', 'http://www.livroandroid.com.br/livro/carros/classicos/ford_mustang.mp4', '-23.564224', '-46.653156', 'classicos'),
(11, 'Ferrari FF', 'Descrição Ferrari FF', 'http://www.livroandroid.com.br/livro/carros/esportivos/Ferrari_FF.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/ferrari_ff.mp4', '44.532218', '10.864019', 'esportivos'),
(12, 'AUDI GT Spyder', 'Descrição AUDI GT Spyder', 'http://www.livroandroid.com.br/livro/carros/esportivos/Audi_Spyder.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/audi_gt.mp4', '-23.564224', '-46.653156', 'esportivos'),
(13, 'Porsche Panamera', 'Descrição Porsche Panamera', 'http://www.livroandroid.com.br/livro/carros/esportivos/Porsche_Panamera.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/porsche_panamera.mp4', '-23.564224', '-46.653156', 'esportivos'),
(14, 'Lamborghini Aventador', 'Descrição Lamborghini Aventador', 'http://www.livroandroid.com.br/livro/carros/esportivos/Lamborghini_Aventador.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/lamborghini_aventador.mp4', '-23.564224', '-46.653156', 'esportivos'),
(15, 'Chevrolet Corvette Z06', 'Descrição Chevrolet Corvette Z06', 'http://www.livroandroid.com.br/livro/carros/esportivos/Chevrolet_Corvette_Z06.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/chevrolet_corvette.mp4', '-23.564224', '-46.653156', 'esportivos'),
(16, 'BMW M5', 'Descrição BMW M5', 'http://www.livroandroid.com.br/livro/carros/esportivos/BMW.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/bmw-m5.mp4', '-23.564224', '-46.653156', 'esportivos'),
(17, 'Renault Megane RS Trophy', 'Descrição Renault Megane RS Trophy', 'http://www.livroandroid.com.br/livro/carros/esportivos/Renault_Megane_Trophy.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/renault_megane.mp4', '-23.564224', '-46.653156', 'esportivos'),
(18, 'Maserati Grancabrio Sport', 'Descrição Maserati Grancabrio Sport', 'http://www.livroandroid.com.br/livro/carros/esportivos/Maserati_Grancabrio_Sport.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/renault_megane.mp4', '-23.564224', '-46.653156', 'esportivos'),
(19, 'McLAREN MP4-12C', 'Descrição McLAREN MP4-12C', 'http://www.livroandroid.com.br/livro/carros/esportivos/McLAREN.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/mcLaren.mp4', '-23.564224', '-46.653156', 'esportivos'),
(20, 'MERCEDES-BENZ C63 AMG', 'Descrição MERCEDES-BENZ C63 AMG', 'http://www.livroandroid.com.br/livro/carros/esportivos/MERCEDES_BENZ_AMG.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/mercedes.mp4', '-23.564224', '-46.653156', 'esportivos'),
(21, 'Bugatti Veyron', 'Descrição Bugatti Veyron', 'http://www.livroandroid.com.br/livro/carros/luxo/Bugatti_Veyron.png', 'http://www.livroandroid.com.br/livro/carros/luxo/bugatti_veyron.mp4', '-23.564224', '-46.653156', 'luxo'),
(22, 'Ferrari Enzo', 'Descrição Ferrari Enzo', 'http://www.livroandroid.com.br/livro/carros/luxo/Ferrari_Enzo.png', 'http://www.livroandroid.com.br/livro/carros/luxo/ferrari_enzo.mp4', '-23.564224', '-46.653156', 'luxo'),
(23, 'Lamborghini Reventon', 'Descrição Lamborghini Reventon', 'http://www.livroandroid.com.br/livro/carros/luxo/Lamborghini_Reventon.png', 'http://www.livroandroid.com.br/livro/carros/luxo/lamborghini _reventon.mp4', '-23.564224', '-46.653156', 'luxo'),
(24, 'Leblanc Mirabeau', 'Descrição Leblanc Mirabeau', 'http://www.livroandroid.com.br/livro/carros/luxo/Leblanc_Mirabeau.png', 'http://www.livroandroid.com.br/livro/carros/luxo/leblanc_mirabeau.mp4', '-23.564224', '-46.653156', 'luxo'),
(25, 'Shelby Supercars Ultimate', 'Descrição Shelby Supercars Ultimate', 'http://www.livroandroid.com.br/livro/carros/luxo/Shelby_Supercars_Ultimate.png', 'http://www.livroandroid.com.br/livro/carros/luxo/shelby.mp4', '-23.564224', '-46.653156', 'luxo'),
(26, 'Pagani Zonda', 'Descrição Pagani Zonda', 'http://www.livroandroid.com.br/livro/carros/luxo/Pagani_Zonda.png', 'http://www.livroandroid.com.br/livro/carros/luxo/pagani_zonda.mp4', '-23.564224', '-46.653156', 'luxo'),
(27, 'Koenigsegg CCX', 'Descrição Koenigsegg CCX', 'http://www.livroandroid.com.br/livro/carros/luxo/Koenigsegg_CCX.png', 'http://www.livroandroid.com.br/livro/carros/luxo/koenigsegg.mp4', '-23.564224', '-46.653156', 'luxo'),
(28, 'Mercedes SLR McLaren', 'Descrição Mercedes SLR McLaren', 'http://www.livroandroid.com.br/livro/carros/luxo/Mercedes_McLaren.png', 'http://www.livroandroid.com.br/livro/carros/luxo/mclaren_slr.mp4', '-23.564224', '-46.653156', 'luxo'),
(29, 'Rolls Royce Phantom', 'Descrição Rolls Royce Phantom', 'http://www.livroandroid.com.br/livro/carros/luxo/Rolls_Royce_Phantom.png', 'http://www.livroandroid.com.br/livro/carros/luxo/rolls_royce.mp4', '-23.564224', '-46.653156', 'luxo'),
(30, 'Lexus LFA', 'Descrição Lexus LFA', 'http://www.livroandroid.com.br/livro/carros/luxo/Lexus_LFA.png', 'http://www.livroandroid.com.br/livro/carros/luxo/lexus.mp4', '-23.564224', '-46.653156', 'luxo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carro`
--
ALTER TABLE `carro`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
