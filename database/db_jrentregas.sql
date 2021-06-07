-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Tempo de geração: 07/06/2021 às 03:49
-- Versão do servidor: 5.7.27
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_jrentregas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Products`
--

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `trackingId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Products`
--

INSERT INTO `Products` (`id`, `name`, `trackingId`, `createdAt`, `updatedAt`) VALUES
(1, 'Bola', 1, '2021-06-07 00:00:00', '2021-06-07 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20210607022549-create-user.js'),
('20210607022851-create-tracking.js'),
('20210607023010-create-product.js');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Trackings`
--

CREATE TABLE `Trackings` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Trackings`
--

INSERT INTO `Trackings` (`id`, `code`, `local`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 'BRDS4554', 'São Paulo', 1, '2021-06-07 00:00:00', '2021-06-07 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `Users`
--

INSERT INTO `Users` (`id`, `name`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'José Roberto', '123456', '2021-06-07 00:00:00', '2021-06-07 00:00:00'),
(2, 'Giovana Costa', '123456', '2021-06-07 00:00:00', '2021-06-07 00:00:00');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trackingId` (`trackingId`);

--
-- Índices de tabela `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices de tabela `Trackings`
--
ALTER TABLE `Trackings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Índices de tabela `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `Products`
--
ALTER TABLE `Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `Trackings`
--
ALTER TABLE `Trackings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `Products`
--
ALTER TABLE `Products`
  ADD CONSTRAINT `Products_ibfk_1` FOREIGN KEY (`trackingId`) REFERENCES `Trackings` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `Trackings`
--
ALTER TABLE `Trackings`
  ADD CONSTRAINT `Trackings_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
