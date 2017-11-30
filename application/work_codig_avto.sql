-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 30 2017 г., 23:42
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `work_codig_avto`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`) VALUES
(1, 'Категория 1', 'cat-1'),
(2, 'Категория 2', 'cat-2'),
(3, 'Категория 3', 'cat-3'),
(4, 'Категория 4', 'cat-4'),
(5, 'Категория 5', 'cat-5'),
(6, 'Категория 6', 'cat-6');

-- --------------------------------------------------------

--
-- Структура таблицы `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `text` text,
  `counter` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `categories` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `notice`
--

INSERT INTO `notice` (`id`, `name`, `slug`, `text`, `counter`, `date`, `categories`) VALUES
(1, 'Уведомление 1', 'not-1', 'Уведомление 1 Уведомление 1 Уведомление 1', 414, '2017-11-15 10:11:20', '{\"1\":\"cat-1\",\"3\":\"cat-3\"}'),
(2, 'Уведомление 2', 'not-2', 'Уведомление 2 Уведомление 2 Уведомление 2', 427, '2017-11-15 10:11:20', '{\"3\":\"cat-3\"}'),
(3, 'Уведомление 3', 'not-3', 'Уведомление 4 Уведомление 4 Уведомление 4', 448, '2017-11-15 10:11:20', '{\"2\":\"cat-2\",\"3\":\"cat-3\",\"6\":\"cat-6\"}'),
(4, 'Уведомление 4', 'not-4', 'Уведомление 5 Уведомление 5 Уведомление 5', 469, '2017-11-15 10:11:20', '{\"5\":\"cat-5\",\"3\":\"cat-3\"}'),
(5, 'Уведомление 5', 'not-5', 'Уведомление 5 Уведомление 5 Уведомление 5', 488, '2017-11-15 10:11:21', '{\"4\":\"cat-4\"}'),
(6, 'Уведомление 6', 'not-6', 'Уведомление 6 Уведомление 6 Уведомление 6', 505, '2017-11-15 10:11:21', '{\"2\":\"cat-2\"}'),
(7, 'Уведомление 7', 'not-7', 'Уведомление 7 Уведомление 7 Уведомление 7', 528, '2017-11-15 10:11:21', '{\"1\":\"cat-1\"}'),
(8, 'Уведомление 8', 'not-8', 'Уведомление 8 Уведомление 8 Уведомление 8', 556, '2017-11-15 10:11:21', '{\"5\":\"cat-5\"}'),
(9, 'Уведомление 9', 'not-9', 'Уведомление 9 Уведомление 9 Уведомление 9', 590, '2017-11-15 10:11:21', '{\"3\":\"cat-3\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `q` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `q`) VALUES
(3, '11', '6512bd43d9caa6e02c990b0a82652dca', 0),
(4, '22', 'b6d767d2f8ed5d21a44b0e5886680cb9', 0),
(5, '222', '3d2172418ce305c7d16d4b05597c6a59', 0),
(6, '2222', '934b535800b1cba8f96a5d72f72f1611', 0),
(7, '33', '182be0c5cdcd5072bb1864cdee4d3d6e', 0),
(8, '44', 'f7177163c833dff4b38fc8d2872f1ec6', 0),
(9, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0),
(10, 'ssss', 'd41d8cd98f00b204e9800998ecf8427e', 0),
(11, '333333', '350b8859ca09c5d8d170cf7759e0afec', 0),
(12, '3333332', '350b8859ca09c5d8d170cf7759e0afec', 0),
(13, 'wwwwww', '4c665b2778b8c890e31fe90db6e719b1', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Индексы таблицы `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
