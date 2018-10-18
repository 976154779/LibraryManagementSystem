create database BOOK_MASTER;
use BOOK_MASTER;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`admin_id`, `password`) VALUES
(20170001, '111111');

-- --------------------------------------------------------

--
-- 表的结构 `book_info`
--

CREATE TABLE `book_info` (
  `book_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publish` varchar(30) NOT NULL,
  `ISBN` varchar(13) NOT NULL,
  `introduction` text,
  `language` varchar(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `pubdate` date DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `pressmark` int(11) DEFAULT NULL,
  `state` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `book_info`
--


INSERT INTO `book_info` (`book_id`, `name`, `author`, `publish`, `ISBN`, `introduction`, `language`,`price`, `pubdate`, `class_id`, `pressmark`, `state`) VALUES
(10000001, '大雪中的山庄', '东野圭吾 ', '北京十月文艺出版社', '9787530216835', '东野圭吾长篇小说杰作，中文简体首次出版。 一出没有剧本的舞台剧，为什么能让七个演员赌上全部人生.东野圭吾就是有这样过人的本领，能从充满悬念的案子写出荡气回肠的情感，在极其周密曲折的同时写出人性的黑暗与美丽。 一家与外界隔绝的民宿里，七个演员被要求住满四天，接受导演的考验，但不断有人失踪。难道这并非正常排练，而是有人布下陷阱要杀他们。 那时候我开始喜欢上戏剧和音乐，《大雪中的山庄》一书的灵感就来源于此。我相信这次的诡计肯定会让人大吃一惊。——东野圭吾', '中文', '35.00', '2017-06-01', 9, 13, 1),
(10000002, '方向', '马克-安托万·马修 ', '后浪丨北京联合出版公司', '9787020125265', '《方向》即便在马修的作品中也算得最独特的：不着一字，尽得风流。原作本无一字，标题只是一个→，出版时才加了个书名Sens——既可以指“方向”，也可以指“意义”。 《方向》没有“字”，但有自己的语言——请读者在尽情释放想象力和独立思考之余，破解作者的密码，听听作者对荒诞的看法。', '中文', '99.80', '2017-04-01', 9, 13, 1),
(10000003, '画的秘密', '马克-安托万·马修 ', '北京联合出版公司·后浪出版公司', '9787550265608', '一本关于友情的疗伤图像小说，直击人内心最为隐秘的情感。 一部追寻艺术的纸上悬疑电影，揭示命运宇宙中奇诡的真相。 ★ 《画的秘密》荣获欧洲第二大漫画节“瑞士谢尔漫画节最佳作品奖”。 作者曾两度夺得安古兰国际漫画节重要奖项。 ★ 《画的秘密》是一部罕见的、结合了拼贴、镜像、3D等叙事手法的实验型漫画作品。作者巧妙地调度光线、纬度、时间、记忆，在一个悬念重重又温情治愈的故事中，注入了一个有关命运的哲学议题。', '中文', '60.00', '2016-01-01', 9, 13, 1),
(10000004, '造彩虹的人', '东野圭吾 ', '北京十月文艺出版社', '9787530216859', '其实每个人身上都会发光，但只有纯粹渴求光芒的人才能看到。 从那一刻起，人生会发生奇妙的转折。 ------------------------------------------------------------------------------------------------------ 功一高中退学后无所事事，加入暴走族消极度日；政史备战高考却无法集中精神，几近崩溃；辉美因家庭不和对生活失去勇气，决定自杀。面对糟糕的人生，他们无所适从，直到一天夜里，一道如同彩虹的光闯进视野。 凝视着那道光，原本几乎要耗尽的气力，源源不断地涌了出来。一切又开始充满希望。打起精神来，不能输。到这儿来呀，快来呀——那道光低声呼唤着。 他们追逐着呼唤，到达一座楼顶，看到一个人正用七彩绚烂的光束演奏出奇妙的旋律。 他们没想到，这一晚看到的彩虹，会让自己的人生彻底转...', '中文', '39.50', '2017-06-01', 9, 13, 1),
(10000005, '追寻生命的意义', '[奥] 维克多·弗兰克 ', '新华出版社', '9787501162734', '《追寻生命的意义》是一个人面对巨大的苦难时，用来拯救自己的内在世界，同时也是一个关于每个人存在的价值和能者多劳们生存的社会所应担负职责的思考。本书对于每一个想要了解我们这个时代的人来说，都是一部必不可少的读物。这是一部令人鼓舞的杰作……他是一个不可思议的人，任何人都可以从他无比痛苦的经历中，获得拯救自己的经验……高度推荐。', '中文', '12.00', '2003-01-01', 9, 16, 1),
(10000006, '秘密花园', '乔汉娜·贝斯福 ', '北京联合出版公司', '9787550252585', '欢迎来到秘密花园！ 在这个笔墨编织出的美丽世界中漫步吧 涂上你喜爱的颜色，为花园带来生机和活力 发现隐藏其中的各类小生物，与它们共舞 激活创造力，描绘那些未完成的仙踪秘境 各个年龄段的艺术家和“园丁”都可以来尝试喔！', '中文', '42.00', '2015-06-01', 9, 18, 1);

-- --------------------------------------------------------

--
-- 表的结构 `class_info`
--

CREATE TABLE `class_info` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `class_info`
--

INSERT INTO `class_info` (`class_id`, `class_name`) VALUES
(1, '马克思主义'),
(2, '哲学'),
(3, '社会科学总论'),
(4, '政治法律'),
(5, '军事'),
(6, '经济'),
(7, '文化'),
(8, '语言'),
(9, '文学'),
(10, '艺术'),
(11, '历史地理'),
(12, '自然科学总论'),
(13, ' 数理科学和化学'),
(14, '天文学、地球科学'),
(15, '生物科学'),
(16, '医药、卫生'),
(17, '农业科学'),
(18, '工业技术'),
(19, '交通运输'),
(20, '航空、航天'),
(21, '环境科学'),
(22, '综合');

-- --------------------------------------------------------

--
-- 表的结构 `lend_list`
--

CREATE TABLE `lend_list` (
  `sernum` bigint(20) NOT NULL,
  `book_id` bigint(20) NOT NULL,
  `reader_id` int(11) NOT NULL,
  `lend_date` date DEFAULT NULL,
  `back_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lend_list`
--



-- --------------------------------------------------------

--
-- 表的结构 `reader_card`
--

CREATE TABLE `reader_card` (
  `reader_id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `passwd` varchar(15) NOT NULL DEFAULT '111111',
  `card_state` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `reader_card`
--

INSERT INTO `reader_card` (`reader_id`, `name`, `passwd`, `card_state`) VALUES
(141301301, '张勇', '111111', 1),
(141301302, '曹晓刚', '111111', 1),
(141301303, '王旭东', '111111', 1);

-- --------------------------------------------------------

--
-- 表的结构 `reader_info`
--

CREATE TABLE `reader_info` (
  `reader_id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `telcode` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `reader_info`
--

INSERT INTO `reader_info` (`reader_id`, `name`, `sex`, `birth`, `address`, `telcode`) VALUES
(141301301, '张勇', '男', '1995-06-10', '陕西省西安市', '12345678900'),
(141301302, '曹晓刚', '男', '1996-02-01', '陕西省西安市', '12345678909'),
(141301303, '王旭东', '男', '1995-04-15', '陕西省西安市', '12345678908');

-- --------------------------------------------------------

--
-- 表的结构 `reserve_list`
--

CREATE TABLE `reserve_list` (
	`reader_id` int NOT NULL,
    `book_id` long NOT NULL
);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `book_info`
--
ALTER TABLE `book_info`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `class_info`
--
ALTER TABLE `class_info`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `lend_list`
--
ALTER TABLE `lend_list`
  ADD PRIMARY KEY (`sernum`);

--
-- Indexes for table `reader_card`
--
ALTER TABLE `reader_card`
  ADD PRIMARY KEY (`reader_id`);

--
-- Indexes for table `reader_info`
--
ALTER TABLE `reader_info`
  ADD PRIMARY KEY (`reader_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `book_info`
--
ALTER TABLE `book_info`
  MODIFY `book_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000007;

alter table `reader_info` add money int default 0 after telcode;
--
-- 使用表AUTO_INCREMENT `lend_list`
--
ALTER TABLE `lend_list`
  MODIFY `sernum` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20171121001;

ALTER TABLE `book_master`.`reader_info`
ADD COLUMN `current_book` INT NOT NULL DEFAULT 0 AFTER `money`,
ADD COLUMN `current_reserve` INT NOT NULL DEFAULT 0 AFTER `current_book`;

ALTER TABLE `book_master`.`reader_info`
CHANGE COLUMN `reader_id` `reader_id` INT(11) NOT NULL DEFAULT -1 ;

ALTER TABLE `book_master`.`book_info`
DROP COLUMN `language`;

ALTER TABLE `book_master`.`reader_info`
DROP COLUMN `current_reserve`;

ALTER TABLE `book_master`.`reader_info`
CHANGE COLUMN `current_book` `curr_books` INT(11) NOT NULL DEFAULT '0' ;

ALTER TABLE `book_master`.`reserve_list`
ADD COLUMN `reserve_date` DATETIME NOT NULL AFTER `book_id`;

ALTER TABLE `book_master`.`admin`
ADD COLUMN `fine` FLOAT NULL DEFAULT 0 AFTER `password`;

ALTER TABLE `book_master`.`reader_info`
CHANGE COLUMN `money` `money` FLOAT NOT NULL DEFAULT '0' ;

UPDATE `book_master`.`reader_info` SET `money`='5.2' WHERE `reader_id`='141301301';


COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
