-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-12-18 17:31:26
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `homework4`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cabinet`
--

CREATE TABLE `cabinet` (
  `ID` int(10) NOT NULL,
  `storeName` varchar(30) NOT NULL,
  `cabinetName` varchar(50) NOT NULL,
  `wait` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `cabinet`
--

INSERT INTO `cabinet` (`ID`, `storeName`, `cabinetName`, `wait`, `price`) VALUES
(1, '湯姆熊歡樂世界台北金萬年店', 'jubeat （Ave.）', '直接排隊', '代幣'),
(3, '湯姆熊歡樂世界台北金萬年店', 'REFLEC BEAT （悠久のリフレシア）', '直接排隊', '代幣'),
(4, '湯姆熊歡樂世界台北金萬年店', 'REFLEC BEAT （悠久のリフレシア）', '直接排隊', '代幣'),
(5, '湯姆熊歡樂世界台北金萬年店', 'Taiko no Tatsujin （新框體）', '直接排隊', '代幣'),
(6, '湯姆熊歡樂世界台北金萬年店', 'SOUND VOLTEX （Legacy Model (舊框)）', '直接排隊', '代幣'),
(7, '湯姆熊歡樂世界台北金萬年店', 'SOUND VOLTEX （Legacy Model (舊框)）', '直接排隊', '代幣'),
(8, '湯姆熊歡樂世界台北金萬年店', 'Dance Dance Revolution （(紅筐體) A3）', '直接排隊', '代幣'),
(9, '湯姆熊歡樂世界台北金萬年店', 'Hatsune Miku Project DIVA Arcade （預設版本）', '直接排隊', '代幣'),
(10, '湯姆熊歡樂世界台北金萬年店', 'GROOVE COASTER AC （4EX）', '直接排隊', '代幣'),
(11, '湯姆熊歡樂世界台北金萬年店', 'Dancerush Stardom （預設版本）', '直接排隊', '代幣'),
(12, '湯姆熊歡樂世界台北金萬年店', 'maimai （DX FESTiVAL）', '簽名排隊', '代幣'),
(13, '湯姆熊歡樂世界台北金萬年店', 'maimai （DX FESTiVAL）', '簽名排隊', '代幣'),
(14, '湯姆熊歡樂世界台北金萬年店', 'CHUNITHM （SUN）', '簽名排隊', '代幣'),
(15, '湯姆熊歡樂世界台北金萬年店', 'CHUNITHM （SUN）', '簽名排隊', '代幣'),
(16, '湯姆熊歡樂世界台北金萬年店', 'GITADORA DrumMania （(黑筐體) FUZZ-UP）', '簽名排隊', '代幣'),
(17, '湯姆熊歡樂世界台北金萬年店', 'GITADORA GuitarFreaks （(黑筐體) FUZZ-UP）', '簽名排隊', '代幣'),
(33, '湯姆熊歡樂世界台北金萬年店', 'Hatsune Miku Project DIVA Arcade （預設版本）', '直接排隊', '代幣'),
(34, '湯姆熊歡樂世界台北金萬年店', 'jubeat （Ave.）', '直接排隊', '代幣'),
(35, '湯姆熊歡樂世界板橋麗寶店', 'maimai （DX FESTiVAL）', '卡片排隊', '代幣'),
(36, '湯姆熊歡樂世界板橋麗寶店', 'maimai （DX FESTiVAL）', '卡片排隊', '代幣'),
(37, '湯姆熊歡樂世界板橋麗寶店', 'Taiko no Tatsujin （新框體）', '直接排隊', '代幣'),
(38, '湯姆熊歡樂世界板橋麗寶店', 'Taiko no Tatsujin （新框體）', '直接排隊', '代幣'),
(39, '湯姆熊歡樂世界板橋麗寶店', 'CHUNITHM （SUN）', '卡片排隊', '代幣'),
(40, '湯姆熊歡樂世界板橋麗寶店', 'CHUNITHM （SUN）', '卡片排隊', '代幣'),
(41, '湯姆熊歡樂世界板橋麗寶店', 'Dance Dance Revolution （(白筐體) A3）', '直接排隊', '代幣'),
(42, '湯姆熊歡樂世界台北美麗華', 'maimai （DX FESTiVAL）', '卡片排隊', '代幣'),
(43, '湯姆熊歡樂世界台北美麗華', 'Taiko no Tatsujin （新框體）', '卡片排隊', '代幣'),
(44, '湯姆熊歡樂世界淡水大都會', 'Dancerush Stardom （預設版本）', '直接排隊', '代幣'),
(45, '湯姆熊歡樂世界淡水大都會', 'Taiko no Tatsujin （新框體）', '直接排隊', '代幣'),
(46, '湯姆熊歡樂世界淡水大都會', 'maimai （DX FESTiVAL）', '簽名排隊', '代幣'),
(47, '湯姆熊歡樂世界淡水大都會', 'maimai （DX FESTiVAL）', '簽名排隊', '代幣'),
(48, '湯姆熊歡樂世界淡水大都會', 'CHUNITHM （SUN）', '簽名排隊', '代幣'),
(49, '湯姆熊歡樂世界淡水大都會', 'CHUNITHM （SUN）', '簽名排隊', '代幣'),
(50, '湯姆熊歡樂世界淡水大都會', 'CHUNITHM （SUN）', '簽名排隊', '代幣'),
(51, '湯姆熊歡樂世界淡水大都會', 'CHUNITHM （SUN）', '簽名排隊', '代幣');

-- --------------------------------------------------------

--
-- 資料表結構 `playdata`
--

CREATE TABLE `playdata` (
  `ID` int(10) NOT NULL,
  `new_old_player` varchar(100) NOT NULL,
  `playerName` varchar(20) NOT NULL,
  `storeName` varchar(30) NOT NULL,
  `cabinetName` varchar(50) NOT NULL,
  `playTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `playdata`
--

INSERT INTO `playdata` (`ID`, `new_old_player`, `playerName`, `storeName`, `cabinetName`, `playTime`) VALUES
(1, 'new', 'Player', '湯姆熊歡樂世界台北金萬年店', 'SOUND VOLTEX （Legacy Model (舊框)）', '2023-10-13 19:40:24'),
(2, 'old', 'Player', '湯姆熊歡樂世界台北金萬年店', 'SOUND VOLTEX （Legacy Model (舊框)）', '2023-12-01 11:37:50'),
(3, 'new', 'Admin', '湯姆熊歡樂世界淡水大都會', 'Taiko no Tatsujin （新框體）', '2023-12-01 11:14:15');

-- --------------------------------------------------------

--
-- 資料表結構 `store`
--

CREATE TABLE `store` (
  `name` varchar(30) NOT NULL,
  `city` varchar(10) DEFAULT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `store`
--

INSERT INTO `store` (`name`, `city`, `address`) VALUES
('湯姆熊歡樂世界台北美麗華', '台北市', '中山區敬業三路20號'),
('湯姆熊歡樂世界台北金萬年店', '台北市', '萬華區西寧南路70號5F'),
('湯姆熊歡樂世界板橋麗寶店', '新北市', '板橋區縣民大道二段3號 (麗寶百貨5樓)'),
('湯姆熊歡樂世界淡水大都會', '新北市', '淡水區中山路8號4樓');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `cabinet`
--
ALTER TABLE `cabinet`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `storeName` (`storeName`);

--
-- 資料表索引 `playdata`
--
ALTER TABLE `playdata`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `storeName` (`storeName`);

--
-- 資料表索引 `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`name`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cabinet`
--
ALTER TABLE `cabinet`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `playdata`
--
ALTER TABLE `playdata`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `cabinet`
--
ALTER TABLE `cabinet`
  ADD CONSTRAINT `cabinet_ibfk_1` FOREIGN KEY (`storeName`) REFERENCES `store` (`name`) ON UPDATE CASCADE;

--
-- 資料表的限制式 `playdata`
--
ALTER TABLE `playdata`
  ADD CONSTRAINT `playdata_ibfk_1` FOREIGN KEY (`storeName`) REFERENCES `cabinet` (`storeName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `playdata_ibfk_2` FOREIGN KEY (`cabinetName`) REFERENCES `cabinet` (`cabinetName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
