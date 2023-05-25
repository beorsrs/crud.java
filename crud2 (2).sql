-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 25/05/2023 às 16:33
-- Versão do servidor: 10.4.22-MariaDB
-- Versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `crud2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `sementes`
--

CREATE TABLE `sementes` (
  `id_semente` int(11) NOT NULL,
  `nome_semente` varchar(200) NOT NULL,
  `peso_semente` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `sementes`
--

INSERT INTO `sementes` (`id_semente`, `nome_semente`, `peso_semente`) VALUES
(2, '', ''),
(3, 'sla', 'sei n'),
(14, 'bbbbbbbb', '233333'),
(5, 'girassol rolon', '0,2kg'),
(6, 'a', '1111111'),
(7, '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `email_usuario` varchar(200) NOT NULL,
  `nome_usuario` varchar(200) NOT NULL,
  `senha_usuario` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `email_usuario`, `nome_usuario`, `senha_usuario`) VALUES
(1, '1111111', '111', '111111'),
(2, 'nathangay/bi@gmail.com', 'nathan', 'gay'),
(3, '2222', '22222', '22222');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `sementes`
--
ALTER TABLE `sementes`
  ADD PRIMARY KEY (`id_semente`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `sementes`
--
ALTER TABLE `sementes`
  MODIFY `id_semente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
