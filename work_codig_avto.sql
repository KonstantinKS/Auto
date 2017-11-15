-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Ноя 15 2017 г., 10:27
-- Версия сервера: 5.7.12
-- Версия PHP: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, 'Уведомление 1', 'not-1', 'Уведомление 1 Уведомление 1 Уведомление 1', 0, '2017-11-15 10:11:20', '{"1":"cat-1","3":"cat-3"}'),
(2, 'Уведомление 2', 'not-2', 'Уведомление 2 Уведомление 2 Уведомление 2', 0, '2017-11-15 10:11:20', '{"3":"cat-3"}'),
(3, 'Уведомление 3', 'not-3', 'Уведомление 4 Уведомление 4 Уведомление 4', 0, '2017-11-15 10:11:20', '{"2":"cat-2","3":"cat-3","6":"cat-6"}'),
(4, 'Уведомление 4', 'not-4', 'Уведомление 5 Уведомление 5 Уведомление 5', 0, '2017-11-15 10:11:20', '{"5":"cat-5","3":"cat-3"}'),
(5, 'Уведомление 5', 'not-5', 'Уведомление 5 Уведомление 5 Уведомление 5', 0, '2017-11-15 10:11:21', '{"4":"cat-4"}'),
(6, 'Уведомление 6', 'not-6', 'Уведомление 6 Уведомление 6 Уведомление 6', 0, '2017-11-15 10:11:21', '{"2":"cat-2"}'),
(7, 'Уведомление 7', 'not-7', 'Уведомление 7 Уведомление 7 Уведомление 7', 0, '2017-11-15 10:11:21', '{"1":"cat-1"}'),
(8, 'Уведомление 8', 'not-8', 'Уведомление 8 Уведомление 8 Уведомление 8', 0, '2017-11-15 10:11:21', '{"5":"cat-5"}'),
(9, 'Уведомление 9', 'not-9', 'Уведомление 9 Уведомление 9 Уведомление 9', 0, '2017-11-15 10:11:21', '{"3":"cat-3"}');

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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
