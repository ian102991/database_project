-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-01-02 15:44:48
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
-- 資料庫： `arcade`
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
(51, '湯姆熊歡樂世界淡水大都會', 'CHUNITHM （SUN）', '簽名排隊', '代幣'),
(52, 'X50 Music game station(西門)', 'jubeat （Ave.）', '直接排隊', '現金'),
(53, 'X50 Music game station(西門)', 'GROOVE COASTER AC （4EX）', '直接排隊', '現金'),
(54, 'X50 Music game station(西門)', 'Pop\n Music （UniLab）', '其他', '現金'),
(55, 'X50 Music game station(西門)', 'maimai （DX FESTiVAL）', '其他', '現金'),
(56, 'X50 Music game station(西門)', 'maimai （DX FESTiVAL）', '其他', '現金'),
(57, 'X50 Music game station(西門)', 'maimai （DX FESTiVAL）', '其他', '現金'),
(58, 'X50 Music game station(西門)', 'WACCA （Reverse）', '直接排隊', '現金'),
(59, 'X50 Music game station(西門)', 'beatmania IIDX （(雷霆筐體) 30th RESIDENT）', '其他', '現金'),
(60, 'X50 Music game station(西門)', 'SOUND VOLTEX （Valkyrie Model (女武神)）', '其他', '現金'),
(61, 'X50 Music game station(西門)', 'SOUND VOLTEX （Valkyrie Model (女武神)）', '其他', '現金'),
(62, 'X50 Music game station(西門)', 'SOUND VOLTEX （Valkyrie Model (女武神)）', '其他', '現金'),
(63, 'X50 Music game station(西門)', 'SOUND VOLTEX （Valkyrie Model (女武神)）', '其他', '現金'),
(64, 'X50 Music game station(西門)', 'Dance Dance Revolution （(白筐體) A3）', '其他', '現金'),
(65, 'X50 Music game station(西門二店)', 'maimai （DX FESTiVAL）', '其他', '現金'),
(66, 'X50 Music game station(西門二店)', 'maimai （DX FESTiVAL）', '其他', '現金'),
(67, 'X50 Music game station(西門二店)', 'CHUNITHM （SUN）', '其他', '現金'),
(68, 'X50 Music game station(西門二店)', 'CHUNITHM （SUN）', '其他', '現金'),
(69, 'X50 Music game station(西門二店)', 'CHUNITHM （SUN）', '其他', '現金'),
(70, 'X50 Music game station(西門二店)', 'CHUNITHM （SUN）', '其他', '現金'),
(71, 'X50 Music game station(西門二店)', 'CHUNITHM （SUN）', '其他', '現金'),
(72, 'X50 Music game station(西門二店)', 'CHUNITHM （SUN）', '其他', '現金'),
(73, 'X50 Music game station(西門二店)', 'Hatsune Miku Project DIVA Arcade （預設版本）', '卡片排隊', '現金'),
(74, 'X50 Music game station(西門二店)', 'Taiko no Tatsujin （新框體）', '其他', '現金'),
(75, 'X50 Music game station(西門二店)', 'Taiko no Tatsujin （新框體）', '其他', '現金'),
(76, 'X50 Music game station(西門二店)', 'Nostalgia （Op.3）', '直接排隊', '現金'),
(77, '力堡台北站前店', 'jubeat （Ave.）', '直接排隊', '現金'),
(78, '力堡台北站前店', 'jubeat （Ave.）', '直接排隊', '現金'),
(79, '力堡台北站前店', 'SOUND VOLTEX （Legacy Model (舊框)）', '卡片排隊', '現金'),
(80, '力堡台北站前店', 'SOUND VOLTEX （Legacy Model (舊框)）', '卡片排隊', '現金'),
(81, '力堡台北站前店', 'SOUND VOLTEX （Legacy Model (舊框)）', '卡片排隊', '現金'),
(82, '力堡台北站前店', 'Taiko no Tatsujin （新框體）', '卡片排隊', '現金'),
(83, '力堡台北站前店', 'Taiko no Tatsujin （新框體）', '卡片排隊', '現金'),
(84, '力堡台北站前店', 'Taiko no Tatsujin （新框體）', '卡片排隊', '現金'),
(85, '力堡台北站前店', 'Taiko no Tatsujin （新框體）', '卡片排隊', '現金'),
(86, '力堡台北站前店', 'Nostalgia （Op.3）', '直接排隊', '現金'),
(87, '力堡台北站前店', 'beatmania IIDX （(一般筐體) 30th RESIDENT）', '直接排隊', '現金'),
(88, '力堡台北站前店', 'GITADORA DrumMania （(白筐體) FUZZ-UP）', '直接排隊', '現金'),
(89, '力堡台北站前店', 'maimai （DX FESTiVAL）', '卡片排隊', '現金'),
(90, '力堡台北站前店', 'maimai （DX FESTiVAL）', '卡片排隊', '現金'),
(91, '力堡台北站前店', 'WACCA （Reverse）', '卡片排隊', '現金'),
(92, '力堡台北站前店', 'WACCA （Reverse）', '卡片排隊', '現金'),
(93, '力堡台北站前店', 'CHUNITHM （SUN）', '卡片排隊', '現金'),
(94, '力堡台北站前店', 'CHUNITHM （SUN）', '卡片排隊', '現金'),
(95, '力堡台北站前店', 'SOUND VOLTEX （Valkyrie Model (女武神)）', '卡片排隊', '現金'),
(96, '力堡台北站前店', 'SOUND VOLTEX （Valkyrie Model (女武神)）', '卡片排隊', '現金'),
(97, '力堡台北站前店', 'Dance Dance Revolution （(白筐體) A3）', '直接排隊', '現金'),
(98, '力堡台北站前店', 'beatmania IIDX （(雷霆筐體) 30th RESIDENT）', '卡片排隊', '現金'),
(99, '力堡台北站前店', 'GITADORA DrumMania （(黑筐體) FUZZ-UP）', '直接排隊', '現金'),
(100, '力堡台北站前店', 'GITADORA GuitarFreaks （(黑筐體) FUZZ-UP）', '直接排隊', '現金'),
(101, '哈拉星球西門店', 'jubeat （Ave.）', '直接排隊', '現金'),
(102, '哈拉星球西門店', 'REFLEC BEAT （悠久のリフレシア）', '直接排隊', '現金'),
(103, '哈拉星球西門店', 'Taiko no Tatsujin （新框體）', '直接排隊', '現金'),
(104, '哈拉星球西門店', 'maimai （FiNALE）', '直接排隊', '現金'),
(105, '哈拉星球西門店', 'GROOVE COASTER AC （4EX）', '直接排隊', '現金'),
(106, '哈拉星球西門店', 'Hatsune Miku Project DIVA Arcade （預設版本）', '直接排隊', '現金'),
(107, '哈拉星球西門店', 'Crossbeats （預設版本）', '直接排隊', '現金'),
(108, '哈拉星球西門店', 'maimai （DX FESTiVAL）', '卡片排隊', '現金'),
(109, '哈拉星球西門店', 'maimai （DX FESTiVAL）', '卡片排隊', '現金'),
(110, '哈拉星球西門店', 'maimai （DX FESTiVAL）', '卡片排隊', '現金'),
(111, '哈拉星球西門店', 'maimai （DX FESTiVAL）', '卡片排隊', '現金'),
(112, '哈拉星球西門店', 'maimai （DX FESTiVAL）', '卡片排隊', '現金'),
(113, '哈拉星球西門店', 'WACCA （Reverse）', '直接排隊', '現金'),
(114, '哈拉星球西門店', 'CHUNITHM （SUN）', '直接排隊', '現金'),
(115, '哈拉星球西門店', 'CHUNITHM （SUN）', '直接排隊', '現金'),
(116, '哈拉星球西門店', 'CHUNITHM （SUN）', '直接排隊', '現金'),
(117, '哈拉星球西門店', 'CHUNITHM （SUN）', '直接排隊', '現金'),
(119, '哈拉星球西門店', 'SOUND VOLTEX （Valkyrie Model (女武神)）', '直接排隊', '現金'),
(120, '哈拉星球西門店', 'SOUND VOLTEX （Valkyrie Model (女武神)）', '直接排隊', '現金');

-- --------------------------------------------------------

--
-- 資料表結構 `playdata`
--

CREATE TABLE `playdata` (
  `ID` int(10) NOT NULL,
  `new_old_player` varchar(100) NOT NULL,
  `playerName` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `storeName` varchar(30) NOT NULL,
  `cabinetName` varchar(50) NOT NULL,
  `playTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `playdata`
--

INSERT INTO `playdata` (`ID`, `new_old_player`, `playerName`, `password`, `storeName`, `cabinetName`, `playTime`) VALUES
(1, 'new', 'Player', '01057035', '湯姆熊歡樂世界台北金萬年店', 'SOUND VOLTEX （Legacy Model (舊框)）', '2023-10-13 19:40:24'),
(2, 'old', 'Player', '01057035', '湯姆熊歡樂世界台北金萬年店', 'SOUND VOLTEX （Legacy Model (舊框)）', '2023-12-01 11:37:50'),
(3, 'new', 'Admin', '0106C052', '湯姆熊歡樂世界淡水大都會', 'Taiko no Tatsujin （新框體）', '2023-12-01 11:14:15');

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
('E7 PLAY新莊店', '新北市', '新莊區民安路188巷5號B1'),
('Hyper Gamer 遊戲玩家', '台北市', '萬華區武昌街二段77號B1'),
('Max Game Center / 極限遊戲道館', '新北市', '三重區重新路二段78號'),
('X50 Music game station(西門)', '台北市', '萬華區武昌街二段134號'),
('X50 Music game station(西門二店)', '台北市', '萬華區康定路10號'),
('力堡台北站前店', '台北市', '中正區忠孝西路一段50-1號 (近Z5出入口)'),
('哈啦影城', '台北市', '內湖區康寧路三段72號'),
('哈拉星球信陽店', '台北市', '中正區信陽街2-1號'),
('哈拉星球公館店', '台北市', '中正區羅斯福路四段130號'),
('哈拉星球南雅店', '新北市', '板橋區南雅東路31號'),
('哈拉星球西門店', '台北市', '萬華區中華路一段114巷11號2樓'),
('哈拉星球饒河店', '台北市', '松山區饒河街202號'),
('大魯閣土城館', '新北市', '土城區青雲路152號'),
('大魯閣新莊館', '新北市', '新莊區中正路621號'),
('奇樂多三和店', '新北市', '三重區中央北路26號2樓'),
('奇樂多三越站前店', '台北市', '中正區忠孝西路一段66號8樓'),
('奇樂多南港店', '台北市', '南港區忠孝東路七段299號'),
('奇樂多板橋三猿', '新北市', '板橋區文化路一段360號B1'),
('奇樂多林口店', '新北市', '林口區文化三路一段402巷2號3樓'),
('奇樂多淡水店', '新北市', '淡水區中正路一段2號2樓禮萊廣場二樓'),
('永淇樂園', '台北市', '中正區市民大道一段100號B1 (近Y19出入口)'),
('湯姆熊歡樂世界中和環球店', '新北市', '中和區中山路三段122號3號樓C區'),
('湯姆熊歡樂世界台北美麗華', '台北市', '中山區敬業三路20號'),
('湯姆熊歡樂世界台北金萬年店', '台北市', '萬華區西寧南路70號5F'),
('湯姆熊歡樂世界新莊宏匯店', '新北市', '新莊區新北大道四段3號9樓'),
('湯姆熊歡樂世界板橋麗寶店', '新北市', '板橋區縣民大道二段3號 (麗寶百貨5樓)'),
('湯姆熊歡樂世界汐止遠雄店', '新北市', '汐止區新台五路一段93號號3樓'),
('湯姆熊歡樂世界淡水大都會', '新北市', '淡水區中山路8號4樓'),
('無限遊戲中心 INF GAME CENTER ', '新北市', '板橋區中山路一段50巷22號'),
('陸行鳥選物販賣水源店', '台北市', '中正區羅斯福路四段108巷4號');

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  ADD CONSTRAINT `playdata_ibfk_1` FOREIGN KEY (`storeName`) REFERENCES `store` (`name`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
