-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2020 年 7 月 16 日 16:39
-- サーバのバージョン： 10.4.13-MariaDB
-- PHP のバージョン: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d06_07`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `like_table`
--

CREATE TABLE `like_table` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `todo_id` int(12) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `like_table`
--

INSERT INTO `like_table` (`id`, `user_id`, `todo_id`, `created_at`) VALUES
(5, 1, 8, '2020-07-11 16:03:29'),
(6, 1, 11, '2020-07-11 16:03:31'),
(9, 3, 9, '2020-07-11 16:04:17'),
(10, 3, 10, '2020-07-11 16:04:17'),
(11, 3, 11, '2020-07-11 16:04:18'),
(12, 3, 12, '2020-07-11 16:04:18'),
(15, 3, 8, '2020-07-11 16:21:47'),
(18, 5, 9, '2020-07-11 16:45:46');

-- --------------------------------------------------------

--
-- テーブルの構造 `progress`
--

CREATE TABLE `progress` (
  `id` int(128) NOT NULL,
  `user_id` int(128) NOT NULL,
  `todo_id` int(11) NOT NULL,
  `progress` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `Q_list`
--

CREATE TABLE `Q_list` (
  `id` int(128) NOT NULL,
  `enquete_name` varchar(128) NOT NULL,
  `q_number` int(255) NOT NULL,
  `ans_count` int(255) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `is_delete` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `Q_list`
--

INSERT INTO `Q_list` (`id`, `enquete_name`, `q_number`, `ans_count`, `deadline`, `is_delete`) VALUES
(2, 'test', 4, NULL, NULL, 0),
(3, 'セミナーアンケート', 4, NULL, '2020-07-09 00:00:00', 0),
(4, 'セミナーアンケート2', 5, NULL, '2020-07-17 00:00:00', 0),
(5, 'セミナーアンケート', 4, NULL, '2020-07-16 00:00:00', 0),
(6, 'セミナーアンケート2', 3, NULL, '2020-07-08 00:00:00', 0),
(7, 'セミナーアンケート2', 4, NULL, '2020-07-10 00:00:00', 0),
(8, 'セミナーアンケート2', 3, NULL, '2020-07-16 00:00:00', 0),
(9, 'セミナーアンケート2', 4, NULL, '2020-07-14 00:00:00', 0),
(10, 'セミナーアンケート2', 4, NULL, '2020-07-15 00:00:00', 0),
(11, 'セミナーアンケート2', 5, NULL, '2020-07-16 00:00:00', 0),
(12, 'セミナーアンケート2', 3, NULL, '2020-07-13 00:00:00', 0),
(13, 'セミナーアンケート2', 3, NULL, '2020-07-13 00:00:00', 0),
(14, 'セミナーアンケート2', 3, NULL, '2020-07-13 00:00:00', 0),
(15, 'セミナーアンケート2', 3, NULL, '2020-07-13 00:00:00', 0),
(16, 'セミナーアンケート2', 3, NULL, '2020-07-13 00:00:00', 0),
(17, 'セミナーアンケート2', 3, NULL, '2020-07-13 00:00:00', 0),
(18, 'セミナーアンケート2', 3, NULL, '2020-07-13 00:00:00', 0),
(19, 'セミナーアンケート2', 3, NULL, '2020-07-13 00:00:00', 0),
(20, 'セミナーアンケート2', 3, NULL, '2020-07-15 00:00:00', 0),
(21, 'セミナーアンケート2', 3, NULL, '2020-07-15 00:00:00', 0),
(22, 'セミナーアンケート2', 3, NULL, '2020-07-15 00:00:00', 0),
(23, 'セミナーアンケート', 3, NULL, '2020-07-16 00:00:00', 0),
(24, 'セミナーアンケート2', 5, NULL, '2020-07-13 00:00:00', 0),
(25, 'セミナーアンケート2', 4, NULL, '2020-07-14 00:00:00', 0),
(26, 'セミナーアンケート2', 3, NULL, '2020-07-15 00:00:00', 0),
(27, 'セミナーアンケート2', 3, NULL, '2020-07-22 00:00:00', 0),
(28, 'セミナーアンケート2', 3, NULL, '2020-07-01 00:00:00', 0),
(29, 'セミナーアンケート2', 3, NULL, '2020-07-09 00:00:00', 0),
(30, 'セミナーアンケート2', 3, NULL, '2020-07-14 00:00:00', 0),
(31, 'セミナーアンケート2', 3, NULL, '2020-07-15 00:00:00', 0),
(32, 'セミナーアンケート', 6, NULL, '2020-07-13 00:00:00', 0),
(33, 'セミナーアンケート!!!', 3, NULL, '2020-07-14 00:00:00', 0),
(34, 'セミナーアンケート!!!', 3, NULL, '2020-07-14 00:00:00', 0),
(35, 'セミナーアンケート2', 3, NULL, '2020-07-06 00:00:00', 0),
(36, 'セミナーアンケート!!!', 3, NULL, '2020-07-22 00:00:00', 0),
(37, 'セミナーアンケート!!!', 3, NULL, '2020-07-22 00:00:00', 0),
(38, 'セミナーアンケート', 3, NULL, '2020-07-15 00:00:00', 0),
(39, 'セミナーアンケート2', 3, NULL, '2020-07-14 00:00:00', 0),
(40, 'セミナーアンケート2', 3, NULL, '2020-07-15 00:00:00', 0),
(41, 'セミナーアンケート2', 3, NULL, '2020-07-14 00:00:00', 0),
(42, 'セミナーアンケート2', 3, NULL, '2020-07-14 00:00:00', 0),
(43, 'セミナーアンケート2', 3, NULL, '2020-07-21 00:00:00', 0),
(44, 'セミナーアンケート2', 3, NULL, '2020-07-14 00:00:00', 0),
(45, 'セミナーアンケート!!!', 5, NULL, '2020-07-14 00:00:00', 0),
(46, 'セミナーアンケート!!!', 5, NULL, '2020-07-14 00:00:00', 0),
(47, 'セミナーアンケート2', 5, NULL, '2020-07-23 00:00:00', 0),
(48, 'セミナーアンケート!!!!!!', 3, NULL, '2020-07-21 00:00:00', 0),
(49, 'セミナーアンケート!!!!!!', 3, NULL, '2020-07-29 00:00:00', 0),
(50, 'セミナー', 6, NULL, '2020-07-23 00:00:00', 0),
(51, 'セミナーアンケート!!!', 3, NULL, '2020-07-14 00:00:00', 0),
(52, 'セミナーアンケート2', 3, NULL, '2020-07-15 00:00:00', 0),
(53, 'セミナーアンケート2', 3, NULL, '2020-07-08 00:00:00', 0),
(54, 'セミナーアンケート2', 3, NULL, '2020-07-01 00:00:00', 0),
(55, 'セミナーアンケート2', 3, NULL, '2020-07-02 00:00:00', 0),
(56, 'セミナーアンケート2', 3, NULL, '2020-07-14 00:00:00', 0),
(57, 'セミナー', 3, NULL, '2020-07-23 00:00:00', 0),
(58, 'セミナーアンケート!!!', 3, NULL, '2020-07-21 00:00:00', 0),
(59, 'セミナーアンケート!!!', 3, NULL, '2020-07-22 00:00:00', 0),
(60, 'セミナー', 3, NULL, '2020-07-24 00:00:00', 0),
(61, 'セミナーアンケート!!!', 3, NULL, '2020-07-24 00:00:00', 0),
(62, 'セミナーアンケート!!!!!!', 3, NULL, '2020-07-15 00:00:00', 0),
(63, 'セミナーアンケートnew', 3, NULL, '2020-07-23 00:00:00', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `score`
--

CREATE TABLE `score` (
  `id` int(12) NOT NULL,
  `colum1` int(1) DEFAULT NULL,
  `colum2` int(1) DEFAULT NULL,
  `colum3` int(1) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `score`
--

INSERT INTO `score` (`id`, `colum1`, `colum2`, `colum3`, `user`) VALUES
(4, 4, 0, 0, NULL),
(5, 0, 6, 0, NULL),
(6, 4, 0, 0, NULL),
(7, 4, 0, 0, NULL),
(8, 4, 4, 0, NULL),
(9, 4, 0, 0, NULL),
(10, 6, 0, 0, NULL),
(11, 6, 4, 0, NULL),
(12, 4, 0, 0, NULL),
(13, 0, 4, 0, NULL),
(14, 4, 0, 0, NULL),
(15, 4, 2, 0, NULL),
(16, 4, 2, 4, NULL),
(17, 4, 2, 4, NULL),
(18, 4, 0, 0, NULL),
(19, 4, 0, 0, NULL),
(20, 4, 2, 0, NULL),
(21, 5, 2, 0, NULL),
(22, 5, 2, 0, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `score_`
--

CREATE TABLE `score_` (
  `id` int(20) NOT NULL,
  `colum1` int(2) DEFAULT NULL,
  `colum2` int(2) DEFAULT NULL,
  `colum3` int(2) DEFAULT NULL,
  `colum4` int(2) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`, `user_id`) VALUES
(8, '安らぎが欲しい', '2020-06-30', '2020-06-27 16:29:44', '2020-06-27 16:29:44', 1),
(9, 'でも仕事はしたい', '2020-06-20', '2020-06-27 16:29:54', '2020-06-27 16:29:54', 1),
(10, '美味しいお肉が食べたい', '2020-06-27', '2020-06-27 16:30:52', '2020-06-27 16:30:52', 3),
(11, '新しいMac Proが欲しい', '2020-07-08', '2020-06-27 16:31:19', '2020-06-27 16:31:19', 5),
(12, '究を極める', '2020-07-04', '2020-07-04 16:41:03', '2020-07-04 16:41:03', 2),
(13, '1234', '2020-07-11', '2020-07-11 16:57:58', '2020-07-11 16:57:58', 5),
(14, '1234', '2020-07-10', '2020-07-11 16:58:04', '2020-07-11 16:58:04', 3),
(15, 'wqwq', '2020-07-09', '2020-07-11 16:58:10', '2020-07-11 16:58:10', 3),
(16, 'test', '2020-07-10', '2020-07-15 20:05:03', '2020-07-15 20:05:03', 3),
(17, 'test2', '2020-07-10', '2020-07-15 20:05:22', '2020-07-15 20:05:22', 5),
(18, 'test3', '2020-07-10', '2020-07-15 20:05:33', '2020-07-15 20:05:33', 2);

-- --------------------------------------------------------

--
-- テーブルの構造 `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `user`
--

INSERT INTO `user` (`user_id`, `user_name`) VALUES
(1, 'Aさん'),
(2, 'Bさん'),
(3, 'Cさん'),
(4, 'Dさん'),
(5, 'Eさん'),
(6, 'Fさん'),
(7, 'Gさん');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `screen_name` varchar(100) NOT NULL,
  `followers_count` int(11) NOT NULL,
  `friends_count` int(11) NOT NULL,
  `listed_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `screen_name`, `followers_count`, `friends_count`, `listed_count`) VALUES
(783214, 'Twitter', 'Twitter', 58084701, 1, 87120),
(7080152, 'Twitter Japan', 'TwitterJP', 2285150, 141, 15175),
(20536157, 'Google', 'Google', 22090538, 290, 93122),
(74286565, 'Microsoft', 'Microsoft', 8954284, 2555, 23246),
(124493689, 'oka', 'sachioka', 0, 0, 0),
(169480493, '日本経済新聞 電子版', 'nikkei', 3149610, 45, 39658),
(324798061, '東京都庁広報課', 'tocho_koho', 1157955, 327, 4294),
(376883364, 'さちおか', 'SachiOKD', 49, 54, 1),
(380749300, 'Apple', 'Apple', 4525552, 0, 9458),
(468122115, '安倍晋三', 'AbeShinzo', 2081974, 18, 12418),
(2147483647, 'President Trump', 'POTUS', 30603404, 39, 25481);

-- --------------------------------------------------------

--
-- テーブルの構造 `users_kadai`
--

CREATE TABLE `users_kadai` (
  `id` int(11) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `latelogin_at` datetime(6) NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_delete` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '111', '2222', 0, 0, '2020-07-04 16:09:26', '2020-07-04 16:09:26'),
(2, '1111', '3333', 0, 0, '2020-07-04 16:50:23', '2020-07-04 16:50:23'),
(3, 'admin', 'admin', 1, 0, '2020-07-04 17:55:20', '2020-07-04 17:55:20'),
(5, 'test2', 'test2', 0, 0, '2020-07-11 16:03:46', '2020-07-11 16:03:46');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `like_table`
--
ALTER TABLE `like_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `Q_list`
--
ALTER TABLE `Q_list`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `score_`
--
ALTER TABLE `score_`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_kadai`
--
ALTER TABLE `users_kadai`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `like_table`
--
ALTER TABLE `like_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- テーブルのAUTO_INCREMENT `progress`
--
ALTER TABLE `progress`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `Q_list`
--
ALTER TABLE `Q_list`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- テーブルのAUTO_INCREMENT `score`
--
ALTER TABLE `score`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- テーブルのAUTO_INCREMENT `score_`
--
ALTER TABLE `score_`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- テーブルのAUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- テーブルのAUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- テーブルのAUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- テーブルのAUTO_INCREMENT `users_kadai`
--
ALTER TABLE `users_kadai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
