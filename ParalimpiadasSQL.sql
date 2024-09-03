-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/09/2024 às 19:16
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `seleção vascaina`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `atleta`
--

CREATE TABLE `atleta` (
  `id_Atleta` int(255) NOT NULL,
  `Nome Completo` varchar(50) NOT NULL,
  `Data de Nascimento` int(10) NOT NULL,
  `Esporte` varchar(20) NOT NULL,
  `Nacionalidade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atleta`
--

INSERT INTO `atleta` (`id_Atleta`, `Nome Completo`, `Data de Nascimento`, `Esporte`, `Nacionalidade`) VALUES
(1, 'Maria Silva', 12031992, 'Atletismo', 'Brasileira'),
(2, 'João Pereira', 8071988, 'Futebol', 'Português'),
(3, 'Ana Costa', 21101995, 'Natação', 'Espanhola'),
(4, 'Carlos Oliveira', 15021990, 'Basquetebol', 'Americana');

-- --------------------------------------------------------

--
-- Estrutura para tabela `time`
--

CREATE TABLE `time` (
  `id_Time` int(255) NOT NULL,
  `Nome do Time` varchar(30) NOT NULL,
  `Data de Fundação` int(10) NOT NULL,
  `Cidade/País de Origem` varchar(30) NOT NULL,
  `Esporte` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `time`
--

INSERT INTO `time` (`id_Time`, `Nome do Time`, `Data de Fundação`, `Cidade/País de Origem`, `Esporte`) VALUES
(1, 'Flamengo', 17111895, 'Rio de Janeiro, Brasil', 'Futebol'),
(2, 'Los Angeles Lakers', 21061947, 'Los Angeles, EUA', 'Basquetebol'),
(3, 'FC Barcelona', 29111899, 'Barcelona, Espanha', 'Futebol'),
(4, 'All Blacks', 16081903, 'Wellington, Nova Zelândia', 'Rugby');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`id_Atleta`);

--
-- Índices de tabela `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id_Time`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atleta`
--
ALTER TABLE `atleta`
  MODIFY `id_Atleta` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `time`
--
ALTER TABLE `time`
  MODIFY `id_Time` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
