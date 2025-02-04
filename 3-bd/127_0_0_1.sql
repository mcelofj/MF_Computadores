-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 02/02/2025 às 14:41
-- Versão do servidor: 9.1.0
-- Versão do PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_usuarios`
--
CREATE DATABASE IF NOT EXISTS `bd_usuarios` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bd_usuarios`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'marcelo', '123', '2025-01-27 02:16:14'),
(2, 'admin', '', '2025-01-27 02:28:46');
--
-- Banco de dados: `cadastro_clientes`
--
CREATE DATABASE IF NOT EXISTS `cadastro_clientes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `cadastro_clientes`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(255) NOT NULL,
  `cepCliente` varchar(8) DEFAULT NULL,
  `logradouro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `numero` int NOT NULL,
  `telefoneCliente` varchar(15) NOT NULL,
  `emailCliente` varchar(255) NOT NULL,
  `tipoEquipamento` enum('notebook','computador') NOT NULL,
  `defeito` text NOT NULL,
  `dataCadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nomeCliente`, `cepCliente`, `logradouro`, `numero`, `telefoneCliente`, `emailCliente`, `tipoEquipamento`, `defeito`, `dataCadastro`) VALUES
(1, 'Marcelo Franco Junior', '79034331', 'capiata', 377, '67998614312', 'marcelofrancojunior@gmail.com', 'notebook', '123456123', '2025-01-24 02:54:48'),
(2, 'cjuihuil;', '123', '18917965', 0, '179618796186143', '128591junior@gmail.com', 'computador', 'nao liga', '2025-01-24 02:57:00'),
(3, '156+17861786', '12345678', '', 0, '12859178', '17486145@156', 'notebook', '1546156', '2025-01-24 02:58:19'),
(4, '156+17861786', '123', '41546+', 0, '12859178', '17486145@156', 'computador', '1546156', '2025-01-24 02:59:05'),
(5, 'marcelo', NULL, 'capiata, 377', 0, '67998614312', 'marcelofrancojunior@gmail.com', 'notebook', 'nao liga', '2025-01-26 11:08:12'),
(6, 'teste', NULL, 'teste', 0, '156', '123@123', 'notebook', '99999999', '2025-01-26 21:57:17'),
(7, 'agora', NULL, '123', 0, '123123123', '123@123', 'computador', '123123', '2025-01-28 00:53:28'),
(8, '321', NULL, '321', 0, '321', '321@321', 'computador', '321', '2025-01-28 01:28:54'),
(9, 'bb', NULL, 'bbb', 0, 'bbb', '156b@bbb', 'notebook', 'bbb', '2025-01-28 01:43:47'),
(10, 'wwwwwww', NULL, 'wwww', 0, 'wwww', 'www@www', 'computador', '321312', '2025-01-28 01:58:35'),
(11, 'bbb', NULL, 'bbbbb', 0, 'bbbbbb', 'bbb@bbbb', 'computador', 'bbbbbbbbbbb', '2025-01-28 01:59:29'),
(12, '2222222', NULL, '2222', 0, '222222', '222@22', 'notebook', '2222', '2025-01-28 02:01:26'),
(13, '222231312', NULL, '3213213213', 0, '1321312', '2@2', 'notebook', '222', '2025-01-28 02:02:06'),
(14, '222', NULL, '222', 0, '222', '2@2', 'notebook', '222', '2025-01-28 02:03:52'),
(15, 'Marcelo Franco Junior', NULL, 'capiata, 377', 0, '67998614312', 'marcelofrancojunior@gmail.com', 'notebook', '111111111111111111111111111111111111', '2025-01-28 02:14:49'),
(16, 'Marcelo Franco Junior', NULL, 'capiata, 377', 0, '67998614312', 'marcelofrancojunior@gmail.com', 'computador', '5555', '2025-01-28 02:16:25'),
(17, 'Marcelo Franco Junior', NULL, 'capiata, 377', 0, '67998614312', 'marcelofrancojunior@gmail.com', 'computador', 'atoa', '2025-01-28 03:07:14'),
(18, 'Marcelo Franco Junior', NULL, 'capiata, 377', 0, '67998614312', 'marcelofrancojunior@gmail.com', 'notebook', '123132', '2025-01-29 12:54:36'),
(19, 'Marcelo Franco Junior', NULL, 'capiata, 377', 0, '67998614312', 'marcelofrancojunior@gmail.com', 'notebook', '321', '2025-01-29 13:24:20'),
(20, 'Marcelo Franco Junior', NULL, 'capiata, 377', 0, '67998614312', 'marcelofrancojunior@gmail.com', 'computador', 'tettetetetete', '2025-01-29 13:30:26'),
(21, 'melancia', NULL, 'fvhjlbyj', 0, '456+486135165', 'gvytuf@miopmi', 'computador', '123', '2025-01-30 13:29:05');
--
-- Banco de dados: `contato`
--
CREATE DATABASE IF NOT EXISTS `contato` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `contato`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mensagens`
--

DROP TABLE IF EXISTS `mensagens`;
CREATE TABLE IF NOT EXISTS `mensagens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `duvida` text NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `nome`, `email`, `duvida`, `telefone`, `created_at`) VALUES
(1, 'Marcelo Franco Junior', 'marcelofrancojunior@gmail.com', '4231', '', '2025-01-28 02:21:00'),
(2, 'Marcelo Franco Junior', 'marcelofrancojunior@gmail.com', '1891789', '', '2025-01-28 02:21:00'),
(3, 'coluna', 'gbyuguybuy@fvthiuk', 'teeeeeetststetetydtjk', '', '2025-01-28 02:21:00'),
(4, 'Marcelo Franco Junior', 'teste@tesste', 'r13r13r', '', '2025-01-28 02:21:00'),
(5, 'Marcelo Franco Junior', 'marcelofrancojunior@gmail.com', 'teste 2159', '', '2025-01-28 02:21:00'),
(6, 'Marcelo Franco Junior', 'marcelofrancojunior@gmail.com', '33333333333', '', '2025-01-28 02:21:00'),
(7, 'Marcelo Franco Junior', 'marcelofrancojunior@gmail.com', '421414141', '', '2025-01-28 02:22:28'),
(8, 'marcelo', 'marcelofrancojunior@gmail.com', 'testando', '67998614312', '2025-01-29 02:47:38'),
(9, 'Marcelo Franco Junior', 'marcelofrancojunior@gmail.com', 'teste de email pro google e banco de dados', '67998614312', '2025-01-29 02:53:13'),
(10, 'Marcelo Franco Junior', 'marcelofrancojunior@gmail.com', 'teste de email pro google e banco de dados', '67998614312', '2025-01-29 02:57:59'),
(11, 'Marcelo Franco Junior', 'marcelofrancojunior@gmail.com', 'teste de envio bd e email', '67998614312', '2025-01-29 03:04:51'),
(12, 'Marcelo Franco Junior', 'marcelofrancojunior@gmail.com', 'tetetete', '67998614312', '2025-01-29 03:13:45'),
(13, 'Marcelo Franco Junior', 'marcelofrancojunior@gmail.com', '456456melawcia\r\n', '67998614312', '2025-01-30 13:25:18'),
(14, 'Marcelo Franco Junior', 'marcelofrancojunior@gmail.com', 'MELAncia', '67998614312', '2025-01-30 13:27:41');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
