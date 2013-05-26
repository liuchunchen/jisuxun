-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 05 月 26 日 11:56
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `jisuxun`
--

-- --------------------------------------------------------

--
-- 表的结构 `think_found_card`
--

CREATE TABLE IF NOT EXISTS `think_found_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `description` varchar(200) NOT NULL,
  `card_no` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expire_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `found_period` varchar(30) NOT NULL,
  `found_area` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `think_lost_card`
--

CREATE TABLE IF NOT EXISTS `think_lost_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `description` varchar(200) NOT NULL,
  `card_no` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expire_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lost_period` varchar(30) NOT NULL,
  `lost_area` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `think_lost_card`
--

INSERT INTO `think_lost_card` (`id`, `type`, `description`, `card_no`, `phone`, `name`, `create_time`, `expire_time`, `lost_period`, `lost_area`) VALUES
(1, '身份证', '江苏省南京市公安局', '320305199009091513', '15195806762', '刘春晨', '2013-05-22 11:02:11', '2013-05-21 16:00:00', '2013-05-01 17:00:00', '浦东新区-张江镇'),
(2, '银行卡', '工商银行-信用卡', '4270200043661355', '15195806762', '刘春晨', '2013-05-22 12:09:55', '2013-05-23 16:00:00', '2013-05-01 17:00:00', '浦东新区-张江镇-龙东大道');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
