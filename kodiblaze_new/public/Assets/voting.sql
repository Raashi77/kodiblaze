-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2021 at 06:04 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` bigint(20) NOT NULL,
  `name` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `name`, `url`, `time_stamp`) VALUES
(1, 'KodiBlaze', 'uploads/banner.jpg', '2021-10-19 09:01:34'),
(2, 'KodiBlaze2', 'uploads/banner.jpg', '2021-10-19 09:01:50'),
(3, 'KodiBlaze3', 'uploads/banner.jpg', '2021-10-19 09:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(50) NOT NULL,
  `name` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `long_description` text DEFAULT NULL,
  `short_des` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tags` text DEFAULT NULL,
  `category` bigint(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `image`, `title`, `long_description`, `short_des`, `timestamp`, `tags`, `category`, `status`) VALUES
(18, 'AYUSH', 'admin/uploads/blog_spot_poster.png', 'test', '<h2><img src=\"https://kodiblaze.com/voting/admin/uploads/1615287383.jpg\" style=\"display:block; margin:10px auto 20px; max-height:400px; width:auto\" />What is Lorem Ipsum?</h2>\n\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n\n<h2>Why do we use it?</h2>\n\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n\n<h2>Where does it come from?</h2>\n\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\n\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n\n<h2>Where can I get some?</h2>\n\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n', 'test', '2021-09-06 13:43:28', 'gsha', 9, 1),
(19, 'DuBuddy', 'https://kodiblaze.com/admin/uploads/1628631426.jpeg', 'number one news today CLB', '<p><a href=\"http://www.hotnewhiphop.com/Diddy/profile\" target=\"_blank\">Diddy</a>&nbsp;is loving all of the new music that we&#39;ve received in the last couple of weeks, taking time out of his vacation in Capri, Italy to share his opinion of two of&nbsp;<a href=\"https://www.hotnewhiphop.com/fans-debate-whether-certified-lover-boy-or-donda-is-better-news.138566.html\" target=\"_blank\">this year&#39;s biggest album releases: Kanye West&#39;s&nbsp;<em>DONDA</em>&nbsp;and Drake&#39;s&nbsp;<em>Certified Lover Boy</em></a>.</p>\r\n\r\n<p>The hip-hop mogul is presently soaking up the sun in Italy but he wanted to show some love to&nbsp;<a href=\"http://www.hotnewhiphop.com/Drake/profile\" target=\"_blank\">Drake</a>&nbsp;and&nbsp;<a href=\"http://www.hotnewhiphop.com/KanyeWest/profile\" target=\"_blank\">Kanye West</a>, two of the biggest artists in the world, congratulating them on their new album releases.</p>\r\n', 'CLB DONDA', '2021-09-07 18:02:23', 'TESTING DRIZZY KANYE ', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(50) NOT NULL,
  `category` text DEFAULT NULL,
  `color` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category`, `color`) VALUES
(10, 'hio hop news', '#000000');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL,
  `vid_id` bigint(20) DEFAULT NULL,
  `c_id` bigint(20) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `user` bigint(20) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `vid_id`, `c_id`, `comments`, `user`, `time_stamp`) VALUES
(1, 90, 17, 'This is a good laptop\r\n', 17, '2021-05-12 16:56:08'),
(2, 90, NULL, 'Good Laptop please share the link to buy!', 22, '2021-05-12 18:47:47'),
(3, 92, NULL, 'Nice Song Man', 22, '2021-05-13 08:54:38'),
(4, 92, NULL, 'Crazy jack ', 22, '2021-09-07 17:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `contest`
--

CREATE TABLE `contest` (
  `id` bigint(50) NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `start_date` text DEFAULT NULL,
  `start_time` text DEFAULT NULL,
  `end_date` text DEFAULT NULL,
  `end_time` text DEFAULT NULL,
  `prize` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contest`
--

INSERT INTO `contest` (`id`, `name`, `description`, `start_date`, `start_time`, `end_date`, `end_time`, `prize`, `status`) VALUES
(17, 'ongoing', '       test test  ', '2021-05-20', '19:00', '2022-10-13', '20:00', '345', NULL),
(24, 'BLAZE THE TRACK', '     rap your hardest \r\nthrow a hook the smartest \r\nwatch the ball grow ', '2021-04-29', '19:18', '2021-08-14', '21:30', '$500', 1),
(25, 'test contest', 'test dscription   ', '2021-04-01', '00:59', '2021-08-01', '23:59', '30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contest_songs`
--

CREATE TABLE `contest_songs` (
  `id` bigint(50) NOT NULL,
  `c_id` bigint(50) NOT NULL,
  `s_id` bigint(50) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contest_songs`
--

INSERT INTO `contest_songs` (`id`, `c_id`, `s_id`, `status`) VALUES
(6, 20, 11, 1),
(7, 20, 17, 1),
(8, 20, 15, 1),
(9, 17, 17, 1),
(10, 24, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contest_users`
--

CREATE TABLE `contest_users` (
  `id` bigint(50) NOT NULL,
  `c_id` bigint(50) NOT NULL,
  `u_id` bigint(50) NOT NULL,
  `description` text DEFAULT NULL,
  `votes` bigint(50) DEFAULT 0,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contest_users`
--

INSERT INTO `contest_users` (`id`, `c_id`, `u_id`, `description`, `votes`, `status`) VALUES
(37, 20, 11, '', 2, 1),
(38, 20, 14, NULL, 2, 1),
(39, 20, 13, NULL, 1, 1),
(40, 20, 15, NULL, 2, 1),
(41, 20, 16, NULL, 2, 1),
(42, 25, 17, NULL, 2, 1),
(43, 17, 17, NULL, 2, 1),
(44, 16, 19, NULL, 1, 1),
(45, 17, 20, NULL, 1, 1),
(46, 17, 22, NULL, 0, 1),
(47, 24, 22, 'Vote Me', 1, 1),
(48, 24, 27, 'Vote me guys', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) NOT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `icon` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`, `description`, `icon`) VALUES
(1, 'Song', 'Simply dummy text of the printing andrety esetting industry. Lorem Ipsum has beeyan the indust standard ', 'fas fa-music m-3'),
(2, 'Make  Video ', 'Simply dummy text of the printing andrety esetting industry. Lorem Ipsum has beeyan the indust standard unknown', 'fas fa-video m-3'),
(5, 'Video Downloadd', 'Simply dummy text of the printing andrety esetting industry. Lorem Ipsum has beeyan the indust standard unknownn', 'fas fa-download m-3');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(50) NOT NULL,
  `u_id` bigint(50) NOT NULL,
  `image` text DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `category` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `u_id`, `image`, `time_stamp`, `category`) VALUES
(34, 1, 'https://kodiblaze.com/admin/uploads/1628631426.jpeg', '2021-08-10 21:37:06', 'Blogs');

-- --------------------------------------------------------

--
-- Table structure for table `home_slider`
--

CREATE TABLE `home_slider` (
  `id` bigint(20) NOT NULL,
  `heading` text DEFAULT NULL,
  `sub_heading` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `color` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL,
  `file_type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_slider`
--

INSERT INTO `home_slider` (`id`, `heading`, `sub_heading`, `image`, `link`, `color`, `sort_order`, `file_type`) VALUES
(1, 'Slider test', 'voting Contestw', 'uploads/banner.jpg', 'view_blog', '#cd0a0a', 1, 'video/quicktime');

-- --------------------------------------------------------

--
-- Table structure for table `index`
--

CREATE TABLE `index` (
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `index_changes`
--

CREATE TABLE `index_changes` (
  `id` bigint(50) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `title_color` text DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `subtitle_color` text DEFAULT NULL,
  `header_image` text DEFAULT NULL,
  `body_title` text DEFAULT NULL,
  `body_title_color` text DEFAULT NULL,
  `body_subtitle` text DEFAULT NULL,
  `body_subtitle_color` text DEFAULT NULL,
  `btn_color` text DEFAULT NULL,
  `name_color` text DEFAULT NULL,
  `votes_color` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `index_changes`
--

INSERT INTO `index_changes` (`id`, `c_id`, `title`, `title_color`, `subtitle`, `subtitle_color`, `header_image`, `body_title`, `body_title_color`, `body_subtitle`, `body_subtitle_color`, `btn_color`, `name_color`, `votes_color`, `status`) VALUES
(1, 1, 'Main Title 222', '#10c668', 'Sub Title new new', '#ef0ba7', 'http://kodiblaze.com/voting/admin/uploads/headingImg1.1613795167.jpg', 'Voteeee!!', '#2b4e73', 'Hello  ', '#22ece2', '#952d2d', '#58ae1e', '#000000', 1),
(2, 2, 'VOTE FOR OUR NEWEST FLAVOUR!', 'black', 'Enter for a chance to win a year\'s supply of ice cream !', 'black', 'http://localhost/voting/admin/uploads/headingImg1.1613795167.jpg', 'CHOOSE YOUR FAVOURITE FLAVOUR !', 'black', 'Calling all ice cream lovers! Here\'s your chance to pick the Icecream Shoppe\'s next feature flavour.Choose one of the options below\r\n                below to cast your vote - one lucky winner will recieve a year\'s supply of Icecream hoppe ice cream. You can vote once a day. \r\n                So don\'t forget to come back to this page and vote again to get more entries! GOOD LUCK!', 'black', 'yellow', 'purple', 'pink', 1),
(3, 14, 'VOTE FOR OUR NEWEST FLAVOUR!', '#5c0099', 'Enter for a chance to win a years supply of ice cream !', 'white', 'http://localhost/voting/admin/uploads/headingImg1.1613795167.jpg', 'CHOOSE YOUR FAVOURITE FLAVOUR !', '#a31aff', 'Calling all ice cream lovers! Heres your chance to pick the Icecream Shoppes next feature flavour.Choose one of the options below below to cast your vote - one lucky winner will recieve a years supply of Icecream hoppe ice cream. You can vote once a day. So dont forget to come back to this page and vote again to get more entries! GOOD LUCK!', 'black', '#18c91d', '#133db9', '#c81414', 0),
(4, 15, 'VOTE FOR OUR NEWEST FLAVOUR!', '#5c0099', 'Enter for a chance to win a years supply of ice cream !', 'white', 'http://localhost/voting/admin/uploads/headingImg1.1613795167.jpg', 'CHOOSE YOUR FAVOURITE FLAVOUR !', '#a31aff', 'Calling all ice cream lovers! Heres your chance to pick the Icecream Shoppes next feature flavour.Choose one of the options below below to cast your vote - one lucky winner will recieve a years supply of Icecream hoppe ice cream. You can vote once a day. So dont forget to come back to this page and vote again to get more entries! GOOD LUCK!', 'black', '#ffd633', '#b84dff', '#ff66ff', 0),
(5, 16, 'VOTE FOR OUR NEWEST FLAVOUR!', '#5c0099', 'Enter for a chance to win a years supply of ice cream !', 'white', 'http://localhost/voting/admin/uploads/headingImg1.1613795167.jpg', 'CHOOSE YOUR FAVOURITE FLAVOUR !', '#a31aff', 'Calling all ice cream lovers! Heres your chance to pick the Icecream Shoppes next feature flavour.Choose one of the options below below to cast your vote - one lucky winner will recieve a years supply of Icecream hoppe ice cream. You can vote once a day. So dont forget to come back to this page and vote again to get more entries! GOOD LUCK!', 'black', '#ffd633', '#b84dff', '#ff66ff', 0),
(6, 17, 'VOTE FOR OUR NEWEST FLAVOUR!', '#5c0099', 'Enter for a chance to win a years supply of ice cream !', 'white', 'http://localhost/voting/admin/uploads/headingImg1.1613795167.jpg', 'CHOOSE YOUR FAVOURITE FLAVOUR !', '#a31aff', 'Calling all ice cream lovers! Heres your chance to pick the Icecream Shoppes next feature flavour.Choose one of the options below below to cast your vote - one lucky winner will recieve a years supply of Icecream hoppe ice cream. You can vote once a day. So dont forget to come back to this page and vote again to get more entries! GOOD LUCK!', 'black', '#ffd633', '#b84dff', '#ff66ff', 0),
(7, 20, 'VOTE FOR OUR NEWEST FLAVOUR!', '#5c0099', 'Enter for a chance to win a years supply of ice cream !', 'white', 'http://localhost/voting/admin/uploads/headingImg1.1613795167.jpg', 'CHOOSE YOUR FAVOURITE FLAVOUR !', '#a31aff', 'Calling all ice cream lovers! Heres your chance to pick the Icecream Shoppes next feature flavour.Choose one of the options below below to cast your vote - one lucky winner will recieve a years supply of Icecream hoppe ice cream. You can vote once a day. So dont forget to come back to this page and vote again to get more entries! GOOD LUCK!', 'black', '#ffd633', '#b84dff', '#ff66ff', 0),
(8, 22, 'VOTE FOR OUR NEWEST FLAVOUR!', '#5c0099', 'Enter for a chance to win a years supply of ice cream !', 'white', 'http://localhost/voting/admin/uploads/headingImg1.1613795167.jpg', 'CHOOSE YOUR FAVOURITE FLAVOUR !', '#a31aff', 'Calling all ice cream lovers! Heres your chance to pick the Icecream Shoppes next feature flavour.Choose one of the options below below to cast your vote - one lucky winner will recieve a years supply of Icecream hoppe ice cream. You can vote once a day. So dont forget to come back to this page and vote again to get more entries! GOOD LUCK!', 'black', '#ffd633', '#b84dff', '#ff66ff', 0),
(9, 23, 'VOTE FOR OUR NEWEST FLAVOUR!', '#5c0099', 'Enter for a chance to win a years supply of ice cream !', 'white', 'http://localhost/voting/admin/uploads/headingImg1.1613795167.jpg', 'CHOOSE YOUR FAVOURITE FLAVOUR !', '#a31aff', 'Calling all ice cream lovers! Heres your chance to pick the Icecream Shoppes next feature flavour.Choose one of the options below below to cast your vote - one lucky winner will recieve a years supply of Icecream hoppe ice cream. You can vote once a day. So dont forget to come back to this page and vote again to get more entries! GOOD LUCK!', 'black', '#ffd633', '#b84dff', '#ff66ff', NULL),
(10, 24, 'VOTE FOR OUR NEWEST FLAVOUR!', '#5c0099', 'Enter for a chance to win a years supply of ice cream !', 'white', 'http://localhost/voting/admin/uploads/headingImg1.1613795167.jpg', 'CHOOSE YOUR FAVOURITE FLAVOUR !', '#a31aff', 'Calling all ice cream lovers! Heres your chance to pick the Icecream Shoppes next feature flavour.Choose one of the options below below to cast your vote - one lucky winner will recieve a years supply of Icecream hoppe ice cream. You can vote once a day. So dont forget to come back to this page and vote again to get more entries! GOOD LUCK!', 'black', '#ffd633', '#b84dff', '#ff66ff', NULL),
(11, 25, 'VOTE FOR OUR NEWEST FLAVOUR!', '#5c0099', 'Enter for a chance to win a years supply of ice cream !', 'white', 'http://localhost/voting/admin/uploads/headingImg1.1613795167.jpg', 'CHOOSE YOUR FAVOURITE FLAVOUR !', '#a31aff', 'Calling all ice cream lovers! Heres your chance to pick the Icecream Shoppes next feature flavour.Choose one of the options below below to cast your vote - one lucky winner will recieve a years supply of Icecream hoppe ice cream. You can vote once a day. So dont forget to come back to this page and vote again to get more entries! GOOD LUCK!', 'black', '#ffd633', '#b84dff', '#ff66ff', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_admin`
--

CREATE TABLE `master_admin` (
  `id` bigint(50) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_admin`
--

INSERT INTO `master_admin` (`id`, `name`, `email`, `password`, `status`) VALUES
(1, 'admin', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL,
  `song_id` bigint(20) DEFAULT NULL,
  `gateway_ref` text DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `user` bigint(20) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `payment_ref` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `payer_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `song_id`, `gateway_ref`, `price`, `user`, `status`, `time_stamp`, `payment_ref`, `email`, `payer_id`) VALUES
(1, 5, '4244150', 15, 22, 'successful', '2021-10-29 17:40:36', '123422', 'vansh10patpatia@gmail.com', NULL),
(25, 17, '0HB93402X59872502', 10, 22, 'successful', '2021-05-16 11:06:13', '25Q1V03E', 'sb-gcx7d6236846@personal.example.com', 'QNWFMB7VP6ABU'),
(35, 15, '9V484508DP5451949', 10, 22, 'successful', '2021-05-16 16:20:30', '35L7PYY6', 'sb-x3xtd6230055@personal.example.com', '33YCPHEF45GZ2'),
(37, 18, '2NT18739MC846083A', 10, 22, 'successful', '2021-05-29 04:43:53', '37T72XLW', 'sb-x3xtd6230055@personal.example.com', '33YCPHEF45GZ2'),
(38, 20, NULL, 10, 22, 'successful', '2021-10-29 16:27:46', '380DIZSF', 'najeemilton@gmail.com', NULL),
(39, 17, NULL, 10, 11, NULL, '2021-06-20 06:11:26', '394179HF', 'najeemilton@gmail.com', NULL),
(40, 17, NULL, 10, 11, NULL, '2021-06-25 04:04:51', '402D6GFV', 'najeemilton@gmail.com', NULL),
(41, 17, NULL, 10, 11, NULL, '2021-07-07 14:40:44', '414F8P18', 'najeemilton@gmail.com', NULL),
(42, 17, NULL, 10, 11, NULL, '2021-07-10 14:42:47', '4249TTR5', 'najeemilton@gmail.com', NULL),
(43, 5, NULL, 15, 23, NULL, '2021-07-10 14:48:07', '43PVBKD5', 'xmarthacker6@gmail.com', NULL),
(44, 5, NULL, 15, 22, NULL, '2021-08-28 08:40:24', '44H02075', 'vansh10patpatia@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `id` bigint(20) NOT NULL,
  `com_id` bigint(20) DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `user` bigint(20) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`id`, `com_id`, `reply`, `user`, `time_stamp`) VALUES
(1, 1, 'Ya good laptop!', 2, '2021-05-12 17:23:44'),
(2, 1, 'Jon ask him to share the price', 22, '2021-05-12 18:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` bigint(50) NOT NULL,
  `name` text DEFAULT NULL,
  `song` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `downloads` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `name`, `song`, `status`, `price`, `downloads`) VALUES
(5, 'Mehndi', '/uploads/Mehndi.wav', 1, 15, 0),
(15, 'Popo ', '/uploads/Popoo.1617469107.WAV', 1, 10, 1),
(17, 'Style ', '/uploads/Style.1617470455.WAV', 1, 10, 0),
(18, 'Dark', '/uploads/Dark.1617461722.wav', 1, 10, 1),
(20, 'Yeh Baby', '/uploads/Yeh Baby.mp3', 1, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `theme_color`
--

CREATE TABLE `theme_color` (
  `id` bigint(50) NOT NULL,
  `base_color` text NOT NULL,
  `head_text_color` text NOT NULL,
  `top_header_color` text NOT NULL,
  `title_first_color` text NOT NULL,
  `title_second_color` text NOT NULL,
  `bottom_header_color` text NOT NULL,
  `vg_bg_color` text NOT NULL,
  `c_bg_color` text NOT NULL,
  `c_button_color` text NOT NULL,
  `c_button_text_color` text NOT NULL,
  `f_bg_color` text NOT NULL,
  `icon_color` text NOT NULL,
  `icon_border_color` text NOT NULL,
  `icon_bg_color` text NOT NULL,
  `other_text_color` text NOT NULL,
  `comment_color` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme_color`
--

INSERT INTO `theme_color` (`id`, `base_color`, `head_text_color`, `top_header_color`, `title_first_color`, `title_second_color`, `bottom_header_color`, `vg_bg_color`, `c_bg_color`, `c_button_color`, `c_button_text_color`, `f_bg_color`, `icon_color`, `icon_border_color`, `icon_bg_color`, `other_text_color`, `comment_color`) VALUES
(1, '#294417', '#f9fcf8', '#131711', '#f87630', '#ff740a', '#a34d95', '#2e2d2d', '#2e2d2d', '#fb8537', '#ffffff', '#141c12', '#fafafa', '#f2f3f3', '#0c0d0c', '#eaece4', '#84db84');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(50) NOT NULL,
  `name` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `ip_address` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `profilePic` text DEFAULT NULL,
  `loginType` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `email`, `password`, `ip_address`, `status`, `profilePic`, `loginType`) VALUES
(2, 'raashi', '', 'Mananryan1234@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '::1', 1, NULL, 'default'),
(5, 'new', '', 'mm@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '::1', 1, NULL, 'default'),
(6, 'What do you want to learn?', '', 'Man1234@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '::1', 2, NULL, 'default'),
(7, 'test', '', 'test@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '::1', 1, NULL, 'default'),
(8, 'raashi', '', 'rrras@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '::1', 1, NULL, 'default'),
(9, 'Sumit Kumar', NULL, 'sk79875648@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '182.68.166.218', 1, NULL, 'default'),
(10, 'Morgan Mangawe', NULL, 'babyfacemo3400@gmail.com', '2c9341ca4cf3d87b9e4eb905d6a3ec45', '108.251.27.199', 1, NULL, 'default'),
(11, 'Najee', NULL, 'najeemilton@gmail.com', 'e81ebe352292d1d5b35286583974f12d', '166.137.143.17', 1, NULL, 'default'),
(12, 'Shedrick Marks', NULL, 'shedrickmarks123@gmail.com', 'b40b8f862d816d65b4c1dcdaf6accfc1', '98.44.24.21', 1, NULL, 'default'),
(13, 'raashi', NULL, 'p@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '132.154.237.64', 1, NULL, 'default'),
(14, 'new', NULL, 'new@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '132.154.106.189', 1, NULL, 'default'),
(15, 'Bwoods', NULL, 'brycewoodson18@gmail.com', '65b11ffdbfede1794f4279514765d772', '98.198.110.204', 1, NULL, 'default'),
(16, 'Naba', NULL, 'nlang876@gmail.com', 'cc428d0f75d77d9b450fa0a166d712c2', '172.58.191.35', 1, NULL, 'default'),
(17, 'Jon', NULL, 'jondlspam1@gmail.com', '25d55ad283aa400af464c76d713c07ad', '73.136.217.191', 1, NULL, 'default'),
(18, 'James Lang', NULL, 'tlang@ccrhubzone.com', '990763ecfd715befad384c38731a3af6', '172.58.219.250', 1, NULL, 'default'),
(19, 'ttest', NULL, 'ttest@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '139.167.204.122', 1, NULL, 'default'),
(20, 'najee', NULL, 'kodiblazee@gmail.com', '42b3a434680c6ab19771582f6d1bfbf5', '2601:2c5:c700:2ed0:d54a:a439:2bc4:6a24', 1, NULL, 'default'),
(21, 'tset', NULL, 'r@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '139.167.202.92', 1, NULL, 'default'),
(22, 'Vansh Patpatia', NULL, 'vansh10patpatia@gmail.com', NULL, '10.10.3.81', 1, 'uploads/1635350884_02DD81E9-770F-4A6A-9279-2FD5EF5744A9.png', 'google'),
(23, 'Pancham Sheoran', NULL, 'xmarthacker6@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2401:4900:b07:7bfa:2121:80d1:eccf:79ea', 1, NULL, 'default'),
(27, 'Vansh Patpatia', NULL, 'vanshpatpatia@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '192.168.243.184', 1, 'uploads/vansh.png', 'default'),
(33, 'Sankalp Rai', NULL, 'Sankalp@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '10.10.0.141', 1, 'uploads/userAvtar.jpg', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(1, 'Pancham Sheoran', 'panchamsheoran@gmail.com', '8109716921', '213', 'rwq'),
(2, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Turn Surf-Surf-Surf into Talk Talk Talk', 'Hello, my nameâ€™s Eric and I just ran across your website at kodiblaze.com...\r\n\r\nI found it after a quick search, so your SEOâ€™s working outâ€¦\r\n\r\nContent looks pretty goodâ€¦\r\n\r\nOne thingâ€™s missing thoughâ€¦\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds â€“ 7 out of 10 disappear almost instantly, Surf Surf Surfâ€¦ then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  Youâ€™ll know immediately theyâ€™re interested and you can call them directly to TALK with them - literally while theyâ€™re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a tryâ€¦ it could be huge for your business.\r\n\r\nPlus, now that youâ€™ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation prontoâ€¦ which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything Iâ€™ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(3, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'how to turn eyeballs into phone calls', 'Hi, Eric here with a quick thought about your website frst.group...\r\n\r\nIâ€™m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it â€“ itâ€™s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHereâ€™s a solution for youâ€¦\r\n\r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  Youâ€™ll know immediately theyâ€™re interested and you can call them directly to talk with them literally while theyâ€™re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business â€“ and because youâ€™ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation â€“ immediatelyâ€¦ and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything Iâ€™ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=frst.group\r\n'),
(4, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!', 'Cool website!\r\n\r\nMy nameâ€™s Eric, and I just found your site - kodiblaze.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what youâ€™re doing is pretty cool.\r\n \r\nBut if you donâ€™t mind me asking â€“ after someone like me stumbles across kodiblaze.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nIâ€™m guessing some, but I also bet youâ€™d like moreâ€¦ studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHereâ€™s a thought â€“ what if there was an easy way for every visitor to â€œraise their handâ€ to get a phone call from you INSTANTLYâ€¦ the second they hit your site and said, â€œcall me now.â€\r\n\r\nYou can â€“\r\n  \r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  It lets you know IMMEDIATELY â€“ so that you can talk to that lead while theyâ€™re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads â€“ the difference between contacting someone within 5 minutes versus 30 minutes later can be huge â€“ like 100 times better!\r\n\r\nThatâ€™s why we built out our new SMS Text With Lead featureâ€¦ because once youâ€™ve captured the visitorâ€™s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities â€“ even if you donâ€™t close a deal then and there, you can follow up with text messages for new offers, content links, even just â€œhow you doing?â€ notes to build a relationship.\r\n\r\nWouldnâ€™t that be cool?\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(5, 'Ash', 'ash@techknowspace.com', '888-938-8893', '', 'Hello,\r\n\r\nMy Name is Ash and I Run Tech Know Space https://techknowspace.com We are your Premium GO-TO Service Centre for All Logic Board & Mainboard Repair\r\n\r\nWhen other shops say \"it can\'t be fixed\" WE CAN HELP!\r\n\r\nALL iPHONE 8 & NEWER\r\nBACK GLASS REPAIR - 1 HOUR\r\n\r\nDevices We Repair\r\nAudio Devices Audio Device Repair\r\n\r\nBluetooth Speakers - Headphones - iPod Touch\r\nComputers All Computer Repair\r\n\r\nAll Brands & Models - Custom Built - PC & Mac\r\nGame Consoles Game Console Repair\r\n\r\nPS4 - XBox One - Nintendo Switch\r\nLaptops All Laptop Repair\r\n\r\nAll Brands & Models - Acer, Asus, Compaq, Dell, HP, Lenovo, Toshiba\r\nMacBooks All MacBook Repair\r\n\r\nAll Series & Models - Air, Classic, Pro\r\nPhones All Phone Repair\r\n\r\nAll Brands & Models - BlackBerry, Huawei, iPhone, LG, OnePlus, Samsung, Sony\r\nSmart Watches Apple Watch Repair\r\n\r\nApple Watch - Samsung Gear - Moto 360\r\nTablets All Tablet Repair\r\n\r\nAll Brands & Models - iPad, Lenovo Yoga, Microsoft Surface, Samsung Tab\r\n\r\nDrone Repair\r\n\r\nCall us and tell us your issues today!\r\n\r\nToll Free: (888) 938-8893\r\nhttps://techknowspace.com\r\n\r\nAsh Mansukhani\r\nash@techknowspace.com\r\n<img src=\"https://yt3.ggpht.com/ytc/AAUvwnhUhkYdWNeEvgk0Kb1HPFRGjLlXdAKaAXUhwNjC=s900-c-k-c0x00ffffff-no-rj\" alt=\"Ash Mansukhani\" width=\"500\" height=\"600\"> \r\n'),
(6, 'Den', 'info@orderdomains.com', '+16898593423', 'ATTENTION', 'DOMAIN kodiblaze.com IMMEDIATE TERMINATION\r\nInvoice#: 576833\r\nDate: 2021-05-05\r\n\r\nINSTANT ATTENTION REQUIRED IN REGARDS TO YOUR DOMAIN kodiblaze.com\r\n\r\nYOUR DOMAIN kodiblaze.com WILL BE TERMINATED WITHIN 12 HOURS\r\n\r\nWe have not received your payment for the renewal of your domain kodiblaze.com\r\n\r\nWe have tried to reach you by phone several times, to inform you in regards of the TERMINATION of your domain kodiblaze.com\r\n\r\nCLICK HERE FOR SECURE ONLINE PAYMENT: https://united-domains.ga/?n=kodiblaze.com&r=a&t=1620105345&p=v8\r\n\r\nIF WE DO NOT RECEIVE YOUR PAYMENT WITHIN 12 HOURS, YOUR DOMAIN kodiblaze.com WILL BE TERMINATED!\r\n\r\nCLICK HERE FOR SECURE ONLINE PAYMENT: https://united-domains.ga/?n=kodiblaze.com&r=a&t=1620105345&p=v8\r\n\r\nYOUR IMMEDIATE ATTENTION IS ABSOLUTELY NECESSARY IN ORDER TO KEEP YOUR DOMAIN kodiblaze.com\r\n\r\nThis important notification for kodiblaze.com will EXPIRE WITHIN 12 HOURS after you have received this email!'),
(7, 'Donaldflilt', 'no-replyEnduch@gmail.com', '83145136141', 'A new method of email distribution.', 'Good day!  kodiblaze.com \r\n \r\nDid you know that it is possible to send commercial offer entirely lawfully? \r\nWe providing a new method of sending proposal through feedback forms. Such forms are located on many sites. \r\nWhen such letters are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals. \r\nalso, messages sent through feedback Forms do not get into spam because such messages are considered important. \r\nWe offer you to test our service for free. We will send up to 50,000 messages for you. \r\nThe cost of sending one million messages is 49 USD. \r\n \r\nThis message is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\n \r\nWe only use chat.'),
(8, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Turn Surf-Surf-Surf into Talk Talk Talk', 'Hello, my nameâ€™s Eric and I just ran across your website at kodiblaze.com...\r\n\r\nI found it after a quick search, so your SEOâ€™s working outâ€¦\r\n\r\nContent looks pretty goodâ€¦\r\n\r\nOne thingâ€™s missing thoughâ€¦\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds â€“ 7 out of 10 disappear almost instantly, Surf Surf Surfâ€¦ then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  Youâ€™ll know immediately theyâ€™re interested and you can call them directly to TALK with them - literally while theyâ€™re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a tryâ€¦ it could be huge for your business.\r\n\r\nPlus, now that youâ€™ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation prontoâ€¦ which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything Iâ€™ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(9, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'how to turn eyeballs into phone calls', 'Hi, Eric here with a quick thought about your website kodiblaze.com...\r\n\r\nIâ€™m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it â€“ itâ€™s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHereâ€™s a solution for youâ€¦\r\n\r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  Youâ€™ll know immediately theyâ€™re interested and you can call them directly to talk with them literally while theyâ€™re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business â€“ and because youâ€™ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation â€“ immediatelyâ€¦ and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything Iâ€™ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(10, 'Thomas', 'thomas.mooner@gmail.com', '0351 81 39 73', 'Freelancers, they are ready to work with you', 'Find your Freelancer professional, worth it to try, believe me!\r\nFreelancers with amazing ideas, perfect skills, outstanding knowledge, low cost, ready to start right now, here: https://bit.ly/3vKlcxo\r\n\r\nSincerely, Thomas'),
(11, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'how to turn eyeballs into phone calls', 'Hi, Eric here with a quick thought about your website kodiblaze.com...\r\n\r\nIâ€™m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it â€“ itâ€™s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHereâ€™s a solution for youâ€¦\r\n\r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  Youâ€™ll know immediately theyâ€™re interested and you can call them directly to talk with them literally while theyâ€™re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business â€“ and because youâ€™ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation â€“ immediatelyâ€¦ and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything Iâ€™ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(12, 'Mike Audley\r\n', 'see-email-in-message@monkeydigital.co', '84623293112', 'Increase Domain Strength for kodiblaze.com', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your kodiblaze.com website? \r\nHaving a high DA score, always helps \r\n \r\nGet your kodiblaze.com to have a DA between 50 to 60 points in Moz with us today and rip the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-DR50-UR70/ \r\n \r\n \r\nthank you \r\nMike Audley\r\n \r\nsupport@monkeydigital.co'),
(13, 'Clay Merion', 'merion.clay@hotmail.com', '919 42 415', '***Get as many clients, customers, and sales as you can possibly handle.', 'Iâ€™m a marketing director of an IT company (I write my own letters personally, on principal), I specialize in the one and only subject, how to make big money in small business.\r\nI thought that because recently there is a lot of interest in online marketing among small businesses, I should personally invite you to see what marketing solutions you can order from us.\r\nHere is a practical outcome of working together:\r\nYou will double or triple your clients with our services at the best price in the shortest amount of time.\r\nIâ€™m trying to keep this note brief (in case you are interested, you can check our services)\r\nIt is best if you respond soon because we currently have a 55% discount on all services.\r\nHowever, if youâ€™re not interested, donâ€™t feel any need to respond.\r\nWeâ€™re just grateful to know that you have seen this note.\r\nhttps://first-class-promo.com/backlinks-generator\r\nKind regards,\r\nWe offer the most effective IT services you may find on our website for making big money in a small business, still not enthusiastic about getting new clients? Here is a quick, 1-click unsubscribe link: https://first-class-promo.com/?unsubscribe=kodiblaze.com'),
(14, 'RolandseK', 'amata-andrea@alice.it', '81381163937', 'Download Music Scene Releases', 'Hello, \r\n \r\nDownload Music Private FTP: https://0daymusic.org \r\nLabel, LIVESETS, Music Videos. \r\nDownload Dance, Electro, House, Techno, Trance, Pop, Rock, Rap... \r\n \r\nBest regards, \r\n0day MP3s'),
(15, 'RolandseK', 'amata-andrea@alice.it', '88238425985', 'Download Music Scene Releases', 'Hello, \r\n \r\nDownload Music Private FTP: https://0daymusic.org \r\nLabel, LIVESETS, Music Videos. \r\nDownload Dance, Electro, House, Techno, Trance, Pop, Rock, Rap... \r\n \r\nBest regards, \r\n0day MP3s'),
(16, 'Lorrie Colquhoun', 'lorrie.colquhoun@hotmail.com', '09188 60 23 20', 'Amazing Site!', 'Let me just say your site is amazing! It is well put together and easy to navigate which is a plus. With such a nice layout you must attract a lot of visitors. I just wanted to give you a heads up because your site inspired me to build my own. I hope everything is going great and much success in your future. Thank and have the best of day!'),
(17, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!', 'Cool website!\r\n\r\nMy nameâ€™s Eric, and I just found your site - kodiblaze.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what youâ€™re doing is pretty cool.\r\n \r\nBut if you donâ€™t mind me asking â€“ after someone like me stumbles across kodiblaze.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nIâ€™m guessing some, but I also bet youâ€™d like moreâ€¦ studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHereâ€™s a thought â€“ what if there was an easy way for every visitor to â€œraise their handâ€ to get a phone call from you INSTANTLYâ€¦ the second they hit your site and said, â€œcall me now.â€\r\n\r\nYou can â€“\r\n  \r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  It lets you know IMMEDIATELY â€“ so that you can talk to that lead while theyâ€™re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads â€“ the difference between contacting someone within 5 minutes versus 30 minutes later can be huge â€“ like 100 times better!\r\n\r\nThatâ€™s why we built out our new SMS Text With Lead featureâ€¦ because once youâ€™ve captured the visitorâ€™s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities â€“ even if you donâ€™t close a deal then and there, you can follow up with text messages for new offers, content links, even just â€œhow you doing?â€ notes to build a relationship.\r\n\r\nWouldnâ€™t that be cool?\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(18, 'Mike Parson\r\n', 'no-replymub@gmail.com', '84357324316', 'Local SEO for more business', 'Howdy \r\n \r\nWe will increase your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our pricelist here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Parson\r\n \r\nSpeed SEO Digital Agency'),
(19, 'Sang Clarke', 'sang.clarke@gmail.com', '032 357 22 99', 'C/O CEO', 'Hey\r\nHope youâ€™re excellent, and that business is good. Please allow me to introduce to you this service that you may find useful for your business.\r\nBefore you create another \"great website,â€ figure out how you are going to find clients first. The cost of submitting your website is less than the cost of not doing it.\r\nhttps://iseo-shop.com\r\nSincerely,\r\nWe offer the best marketing services you can find on our online shop for making big money in a small business, still not enthusiastic about getting clients? Here is a straightforward, 1-click unsubscribe link: https://iseo-shop.com/?unsubscribe=kodiblaze.com'),
(20, 'Jamesjem', 'no-replyEnduch@gmail.com', '81197826716', 'The best advertising of your products and services!', 'Hi!  kodiblaze.com \r\n \r\nDo you know the easiest way to state your product or services? Sending messages exploitation feedback forms will enable you to simply enter the markets of any country (full geographical coverage for all countries of the world).  The advantage of such a mailing  is that the emails which will be sent through it will end up in the mailbox that is meant for such messages. Sending messages using Contact forms isn\'t blocked by mail systems, which means it\'s sure to reach the client. You\'ll be ready to send your offer to potential customers who were antecedently unavailable because of email filters. \r\nWe offer you to check our service for gratis. We will send up to 50,000 message for you. \r\nThe cost of sending one million messages is us $ 49. \r\n \r\nThis letter is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.'),
(21, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!', 'Cool website!\r\n\r\nMy nameâ€™s Eric, and I just found your site - kodiblaze.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what youâ€™re doing is pretty cool.\r\n \r\nBut if you donâ€™t mind me asking â€“ after someone like me stumbles across kodiblaze.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nIâ€™m guessing some, but I also bet youâ€™d like moreâ€¦ studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHereâ€™s a thought â€“ what if there was an easy way for every visitor to â€œraise their handâ€ to get a phone call from you INSTANTLYâ€¦ the second they hit your site and said, â€œcall me now.â€\r\n\r\nYou can â€“\r\n  \r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  It lets you know IMMEDIATELY â€“ so that you can talk to that lead while theyâ€™re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads â€“ the difference between contacting someone within 5 minutes versus 30 minutes later can be huge â€“ like 100 times better!\r\n\r\nThatâ€™s why we built out our new SMS Text With Lead featureâ€¦ because once youâ€™ve captured the visitorâ€™s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities â€“ even if you donâ€™t close a deal then and there, you can follow up with text messages for new offers, content links, even just â€œhow you doing?â€ notes to build a relationship.\r\n\r\nWouldnâ€™t that be cool?\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(22, 'Yasuhiro Yamada', 'info.rohtopharmaceutical@gmail.com', '85484761231', 'Representative Request', 'Hello, \r\n \r\n \r\nWith all due respect. I write to inform you that we need you to serve as our Spokesperson/Financial Coordinator for our company ROHTO PHARMACEUTICAL CO., LTD. and its clients in the United States and Canada. It\'s a part-time job and will only take few minutes of your time daily and it will not bring any conflict of interest in case you are working with another company. If interested reply me using this email address: admin@rohtopharmaceutical.jp \r\n \r\n \r\nYasuhiro Yamada \r\nSenior Executive Officer, \r\nROHTO Pharmaceutical Co.,Ltd. \r\n1-8-1 Tatsumi-nishi, \r\nIkuno-Ku, Osaka, 544-8666, \r\nJapan.'),
(23, 'Luis L', 'cheryle.trickett@msn.com', '+16106539916', 'Amazing Site!', 'Hey this is Luis. I lost your number but remembered your site. Need you to contact me ASAP regarding that one deal +16106539916'),
(24, 'Mike Osborne\r\n', 'no-replyHEAL@gmail.com', '88228198143', 'quality monthly SEO plans', 'Good Day \r\n \r\nI have just analyzed  kodiblaze.com for  the current search visibility and saw that your website could use a boost. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart enhancing your sales and leads with us, today! \r\n \r\nregards \r\nMike Osborne\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(25, 'Saar', 'saar.jbakker@gmail.com', '980 03 844', 'Please Help Anne To Repair Her Home After Storm Damage', 'Hi, my name is Saar and I am fundraising for Anne, please help to save the old aunt Anne\'s house! You too can help us to save the old house together.\r\nAnna is an old lady who is very warm with everyone, lives alone, has no family.\r\nPlease show that you are an understanding, helping person and you know that a similar disaster can happen to anyone.\r\nClick here for details: https://bit.ly/2V89bVq\r\n\r\nIâ€™m so sorry if you take my message as harassment, I donâ€™t intend to harass you, but unfortunately there is no other way to help Anna.\r\n\r\nThank you for your understanding, have a nice day,\r\nSaar'),
(26, 'Mike Birch\r\n', 'voegeleeilen32@gmail.com\r\n', '84341512852', 'Increase sales for kodiblaze.com', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your kodiblaze.com website? \r\nHaving a high DA score, always helps \r\n \r\nGet your kodiblaze.com to have a DA between 50 to 60 points in Moz with us today and rip the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nthank you \r\nMike Birch\r\n \r\nsupport@monkeydigital.co'),
(27, 'SEO X Press Digital Agency', 'ingeborgzeile135@gmail.com\r\n', '84715143371', 'Ultimate SEO Solutions for kodiblaze.com', 'Hi \r\n \r\n \r\nI have just took an in depth look on your  kodiblaze.com for its SEO Trend and saw that your website could use a boost. \r\n \r\n \r\nWe will enhance your Ranks organically and safely, using only whitehat methods, \r\n \r\n \r\nIf interested, please email us \r\n \r\nsupport@digital-x-press.com \r\n \r\n \r\nregards \r\nMike Hancock\r\n \r\nSEO X Press Digital Agency \r\nhttps://www.digital-x-press.com'),
(28, 'Erica Jackson', 'ericajacksonmi0@yahoo.com', '0381 78 24 00', 'DA50 Backlink for your website', 'Hi, \r\n\r\nWe\'re wondering if you\'d be interested in a \'dofollow\' backlink to kodiblaze.com from our Moz DA50 website?\r\n\r\nOur website is dedicated to facts/education, and so can host articles on pretty much any topic.\r\n\r\nYou can either write a new article yourself, or we can link from existing content.\r\n\r\nThe price is just $40 to be paid via Paypal. This is a one-time fee, so there are no extra charges.\r\n\r\nIf you\'re interested, please reply to this email, including the word \'interested\' in the Subject Field.\r\n\r\nNot sure what DA is? Have a read here: https://moz.com/learn/seo/domain-authority\r\n\r\nKind Regards,\r\nErica'),
(29, 'Mike Blare\r\n', 'krystalbarr32@gmail.com\r\n', '85644498263', 'Local SEO for more business', 'Hi \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Blare\r\n \r\nSpeed SEO Digital Agency'),
(30, 'Bernt Maes', 'c_ontactreports87495@outlook.hu', '86574938917', 'Cold Steel for Hot Girls at Lock-Master.com', '5000+ Quality 3D Metal-Bondage and latex slavery pictures:  https://lock-master.com/ \r\nPreviews:   https://lock-master.com/previews/'),
(31, 'Stan Winkler', 'winkler.stan@gmail.com', '0676 802 31 49', 'Want more clients? Youâ€™ll need our website submitterÂ©, it has arrived!', 'Good morning\r\nOnline directories will help you scale your organic growth much quicker than on your own. They provide organic reach on a (hopefully) credible, trustworthy platform, as well as backlinks and additional brand exposure.\r\nhttps://it-technicians.com\r\nWith warm regards,\r\nWe offer the very best marketing services you may check on our online shop for making big money in a small business, still not thinking about getting new clients? Here is an easy, 1-click unsubscribe link: https://it-technicians.com/?unsubscribe=kodiblaze.com'),
(32, 'Harris', 'harris.jwalton@gmail.com', '081 964 92 65', 'Bulk Email Delivery Service', 'Most effective, high delivery-open rate, highest inbox rate on today\'s market. Now you have a chance to try our fast, perfect bulk email delivery service for the best price. Different sending speeds, inbox rates for different prices, here are a few examples, based on 100.000 sent messages:\r\n- BASIC SENDING --> $30 USD (good delivery rate, low inbox rate, perfect for clean old, dirty list)\r\n- PRO SENDING --> $55 USD (perfect delivery rate, acceptable inbox rate, this is the best option for a budget marketing campaign)\r\n- EXPERT SENDING --> $150 USD (highest delivery rate, best inbox rate, high-end email delivery service)\r\n\r\nAll our services are much more valuable than other bulk email service providers (MailChimp, GetResponse, SendGrid, Mailjet, etc...), while we are able to use (for send your marketing campaign) the SMTP servers with the highest reputation what other providers CAN\'T do for this low prices! If you don\'t believe, then TRY our service and enjoy the result.\r\nIf you have any other questions or want to try-order our service, then please write a short message to here: jasmine.hfuller@gmail.com\r\n\r\nIMPORTANT: The email address that we used as SENDER in this message isn\'t monitored, please DON\'T reply!\r\n\r\nHave a nice day,\r\nHarris'),
(33, 'Mike Paterson\r\n', 'leeanneault532@gmail.com\r\n', '83851567535', 'quality monthly SEO plans', 'Hello \r\n \r\nI have just took a look on your SEO for  kodiblaze.com for its SEO Trend and saw that your website could use an upgrade. \r\n \r\nWe will enhance your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart improving your sales and leads with us, today! \r\n \r\nregards \r\nMike Paterson\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(34, 'Denny Rubbo', 'denny.rubbo77@gmail.com', '(02) 6166 8971', 'Your backlinks, have arrived!', 'Hey \r\nWe offer you a want to skyrocket your small business:\r\nhttps://iseo-shop.com/backlinks-generator\r\nSincerely,\r\nWe offer the very best marketing services you can purchase on our website for making big money in a small business, still not enthusiastic about getting new clients? Here is a quick, 1-click unsubscribe link: https://iseo-shop.com/?unsubscribe=kodiblaze.com'),
(35, 'Emanuel', 'jiminez.emanuel@googlemail.com', '070 3283 0975', 'kodiblaze.com', 'Hey\r\n\r\nOur Medical-Grade Toenail Clippers is the safest and especially recommended for those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, thickened nails etc..\r\n\r\nGet yours: thepodiatrist.online\r\n\r\nTo your success,\r\n\r\nEmanuel\r\nKodi Blaze'),
(36, 'Harris', 'harris.jwalton@gmail.com', '06-95837298', 'Bulk Email Delivery Service', 'Most effective, high delivery-open rate, highest inbox rate on today\'s market. Now you have a chance to try our fast, perfect bulk email delivery service for the best price. Different sending speeds, inbox rates for different prices, here are a few examples, based on 100.000 sent messages:\r\n- BASIC SENDING --> $30 USD (good delivery rate, low inbox rate, perfect for clean old, dirty list)\r\n- PRO SENDING --> $55 USD (perfect delivery rate, acceptable inbox rate, this is the best option for a budget marketing campaign)\r\n- EXPERT SENDING --> $150 USD (highest delivery rate, best inbox rate, high-end email delivery service)\r\n\r\nAll our services are much more valuable than other bulk email service providers (MailChimp, GetResponse, SendGrid, Mailjet, etc...), while we are able to use (for send your marketing campaign) the SMTP servers with the highest reputation what other providers CAN\'T do for this low prices! If you don\'t believe, then TRY our service and enjoy the result.\r\nIf you have any other questions or want to try-order our service, then please write a short message to here: jasmine.hfuller@gmail.com\r\n\r\nIMPORTANT: The email address that we used as SENDER in this message isn\'t monitored, please DON\'T reply!\r\n\r\nHave a nice day,\r\nHarris'),
(37, 'skyreveryVep', 'malinoleg91@mail.ru', '89469854343', 'Private jet charter flights cost of hire', ' \r\n<a href=https://www.skyrevery.com/destinations/private-jet-chambery/>Chambery Private Jet Charter </a>        -  more information on our website <a href=https://skyrevery.com>skyrevery.com</a> \r\n<a href=https://skyrevery.com/>Private jet rental</a> at SkyRevery allows you to use such valuable resource as time most efficiently. \r\nYou are the one who decides where and when your private jet will fly. It is possible to organize and perform a flight between any two civil airports worldwide round the clock. In airports, private jet passengers use special VIP terminals where airport formalities are minimized, and all handling is really fast â€“ you come just 30 minutes before  the estimated time of the departure of the rented private jet. \r\nWhen you need <a href=https://skyrevery.com/>private jet charter</a> now, we can organise your flight with departure in 3 hours from confirmation.'),
(38, 'Denise', 'denise.carrol@gmail.com', '915-613-5978', 'kodiblaze.com', 'Hi \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 24.99 dollars with FREE SHIPPING & Returns.  If interested, please visit our site: lensoutlet.online\r\n \r\nThank You, \r\n\r\nDenise \r\nKodi Blaze'),
(39, 'Laverne', 'laverne.burrell@googlemail.com', '06-25459324', 'kodiblaze.com', 'Hey \r\n \r\nMeet your best Buds - True Wireless Earbuds with amazing sound, convenience, portability, & affordability!\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: musicontrol.online\r\n \r\nKind Regards, \r\n \r\nLaverne\r\nKodi Blaze'),
(40, 'Olivia Pointon', 'avaolivia2747@gmail.com', '02079460433', 'Explainer Video for kodiblaze.com?', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service which we feel can benefit your site kodiblaze.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=ivTmAwuli14\r\nhttps://www.youtube.com/watch?v=uywKJQvfeAM\r\nhttps://www.youtube.com/watch?v=oPNdmMo40pI\r\nhttps://www.youtube.com/watch?v=6gRb-HPo_ck\r\n\r\nAll of our videos are in a similar animated format as the above examples and we have voice over artists with US/UK/Australian accents.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video such as Youtube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\n1 minute = $239\r\n1-2 minutes = $339\r\n2-3 minutes = $439\r\n\r\n*All prices above are in USD and include an engaging, captivating video with full script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to get in touch.\r\n\r\nKind Regards,\r\nOlivia'),
(41, 'Margret Jury', 'jury.margret@googlemail.com', '02191 57 91 23', 'The cost of getting backlinks for kodiblaze.com is less than the cost of not doing it.', 'Good evening \r\nWith our service your company will grow:\r\nhttps://first-class-promotion.com/backlinks-generator\r\nWith warm regards,\r\nWe offer the very best marketing services you can purchase on our shop for making big money in a small business, still not enthusiastic about getting clients? Here is a straightforward, 1-click unsubscribe link:  https://first-class-promotion.com/?unsubscribe=kodiblaze.com'),
(42, 'Cathryn', 'shackelford.cathryn54@googlemail.com', '01.64.74.26.46', 'Kodi Blaze', 'Hello there \r\n \r\nCAREDOGBESTâ„¢ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.com\r\n \r\nThank You, \r\n \r\nCathryn\r\nKodi Blaze'),
(43, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'how to turn eyeballs into phone calls', 'Hi, Eric here with a quick thought about your website kodiblaze.com...\r\n\r\nIâ€™m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it â€“ itâ€™s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHereâ€™s a solution for youâ€¦\r\n\r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  Youâ€™ll know immediately theyâ€™re interested and you can call them directly to talk with them literally while theyâ€™re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business â€“ and because youâ€™ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation â€“ immediatelyâ€¦ and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything Iâ€™ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(44, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Turn Surf-Surf-Surf into Talk Talk Talk', 'Hello, my nameâ€™s Eric and I just ran across your website at kodiblaze.com...\r\n\r\nI found it after a quick search, so your SEOâ€™s working outâ€¦\r\n\r\nContent looks pretty goodâ€¦\r\n\r\nOne thingâ€™s missing thoughâ€¦\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds â€“ 7 out of 10 disappear almost instantly, Surf Surf Surfâ€¦ then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  Youâ€™ll know immediately theyâ€™re interested and you can call them directly to TALK with them - literally while theyâ€™re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a tryâ€¦ it could be huge for your business.\r\n\r\nPlus, now that youâ€™ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation prontoâ€¦ which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything Iâ€™ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(45, 'Ferdinand', 'dawbin.ferdinand@msn.com', '955 22 724', 'Kodi Blaze', 'Hey \r\n \r\nBody Revolution - Medico Posturaâ„¢ Body Posture Corrector\r\nImprove Your Posture INSTANTLY!\r\n\r\nGet it while it\'s still 60% OFF!  FREE Worldwide Shipping!\r\n\r\nGet yours here: medicopostura.com\r\n \r\nMany Thanks, \r\n \r\nFerdinand\r\nKodi Blaze'),
(46, 'Bridget Warkentin', 'warkentin.bridget40@gmail.com', '077 6687 9381', 'kodiblaze.com page speed is a critical factor.', 'Your website is awesome butâ€¦\r\n\r\nGood morning, \r\n\r\nPay attention to the webpage speed. Most people leave the web page if it does not load within 3 seconds. Fewer Visitors = Less Money. We\'ll make kodiblaze.com so flying that your customers will say â€œWOW!â€\r\n\r\n\r\nTo effortlessly increase sales over the internet youâ€™ll want this enormous plan:\r\n\r\n\r\nhttps://iseo-shop.com/speedup\r\n\r\n\r\nKind regards,\r\nWe offer the best marketing services you may find on our online shop to make big money in a small business, still not interested in getting clients? Here is a simple, 1-click unsubscribe link: https://iseo-shop.com/?unsubscribe=kodiblaze.com'),
(47, 'Abraham', 'linn.abraham11@gmail.com', 'Lhgxv Wvl', 'Kodi Blaze', 'Get The Worlds Greatest Magic Sand Free Beach Mat!\r\n\r\nWatch sand, dirt & dust disappear right before your eyes! It\'s perfect for beach, picnic, camping or hiking.\r\n\r\nAct Now And Receive A Special Discount For Our Magic Mat!\r\n\r\nGet Yours Here:  magicmat.shop\r\n\r\nSincerely, \r\n \r\nAbraham\r\nKodi Blaze'),
(48, 'SEO X Press Digital Agency', 'jasontorres3262@gmail.com\r\n', '86321953769', 'Ultimate SEO Solutions for kodiblaze.com', 'Hi there \r\n \r\n \r\nI have just checked  kodiblaze.com for its SEO Trend and saw that your website could use a push. \r\n \r\n \r\nWe will improve your Ranks organically and safely, using only whitehat methods, \r\n \r\n \r\nIf interested, please email us \r\n \r\nsupport@digital-x-press.com \r\n \r\n \r\nregards \r\nMike Bush\r\n \r\nSEO X Press Digital Agency \r\nhttps://www.digital-x-press.com'),
(49, 'Mike Bradshaw\r\n', 'paulholmes3262@gmail.com\r\n', '89977959189', 'Increase sales for kodiblaze.com', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your kodiblaze.com website? \r\nHaving a high DA score, always helps \r\n \r\nGet your kodiblaze.com to have a DA between 50 to 60 points in Moz with us today and rip the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nthank you \r\nMike Bradshaw\r\n \r\nsupport@monkeydigital.co'),
(50, 'Jason Ward', 'jasonward9681@gmail.com', '85232461468', 'Posting positive reviews', 'Hello, \r\n \r\nOur company, RatingsKing, specializes in posting 5-star testimonials on all major review sites. This way people can find you much easier and get a good impression of your business. \r\nJust go on our website and choose the package that best fits your needs at https://ratingsking.com/packages.php \r\n \r\nOur packages start from $49/month. \r\nDepending on your package you will have a number of positive reviews that we will do for you. You will have reports monthly with the work that has been done in your account. \r\n \r\nUsually, we are posting on all major reviews sites or other listings you may have.');
INSERT INTO `user_queries` (`id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(51, 'Mike Saunder\r\n', 'adrianagoodall3262@gmail.com\r\n', '84187512585', 'Local SEO for more business', 'Howdy \r\n \r\nWe will increase your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our services below, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Saunder\r\n \r\nSpeed SEO Digital Agency'),
(52, 'Vickie Selig', 'selig.vickie@yahoo.com', '06-24854869', 'Your website can do more - kodiblaze.com', 'Schedule kodiblaze.com maintenance. \r\n\r\nGood Afternoon, \r\n\r\nOnline presence is essential for local businesses. They not only enhance your online presence and improve your local visibility, but they also help build brand awareness and allow your business to be discovered more easily.\r\n\r\nTry this tremendous plan itâ€™s crucial to trigger kodiblaze.com progress in finding rich customers efficiently:\r\n	\r\nhttps://it-web-marketing.com/backlinks-generator\r\n\r\n\r\nKind regards,\r\nWe offer the top marketing services you can check on our website to make big money in a small business, still not thinking about getting new customers? Here is a simple, 1-click unsubscribe link: https://it-web-marketing.com/?unsubscribe=kodiblaze.com'),
(53, 'Gudrun', 'gudrun.black@gmail.com', '466 48 711', 'Gudrun Black', 'New Multifunction Anti-theft Waterproof Sling Bag\r\n\r\nThe best ever SUPER Sling Bag: Drop-proof/Anti-theft/Scratch-resistant/USB Charging\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: fashiondaily.online\r\n\r\nKind Regards, \r\n\r\nGudrun\r\nKodi Blaze\r\n'),
(54, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Turn Surf-Surf-Surf into Talk Talk Talk', 'Hello, my nameâ€™s Eric and I just ran across your website at kodiblaze.com...\r\n\r\nI found it after a quick search, so your SEOâ€™s working outâ€¦\r\n\r\nContent looks pretty goodâ€¦\r\n\r\nOne thingâ€™s missing thoughâ€¦\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds â€“ 7 out of 10 disappear almost instantly, Surf Surf Surfâ€¦ then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  Youâ€™ll know immediately theyâ€™re interested and you can call them directly to TALK with them - literally while theyâ€™re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a tryâ€¦ it could be huge for your business.\r\n\r\nPlus, now that youâ€™ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation prontoâ€¦ which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything Iâ€™ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(55, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Your site â€“ more leads?', 'Hey, this is Eric and I ran across kodiblaze.com a few minutes ago.\r\n\r\nLooks greatâ€¦ but now what?\r\n\r\nBy that I mean, when someone like me finds your website â€“ either through Search or just bouncing around â€“ what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a siteâ€™s visitors disappear and are gone forever after just a moment.\r\n\r\nHereâ€™s an ideaâ€¦\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your siteâ€¦\r\n \r\nYou can â€“\r\n  \r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  It signals you the moment they let you know theyâ€™re interested â€“ so that you can talk to that lead while theyâ€™re literally looking over your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYouâ€™ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even betterâ€¦ once youâ€™ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you donâ€™t close a deal right away, you can follow up with text messages for new offers, content links, even just â€œhow you doing?â€ notes to build a relationship.\r\n\r\nPretty sweet â€“ AND effective.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(56, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Your site â€“ more leads?', 'Hey, this is Eric and I ran across kodiblaze.com a few minutes ago.\r\n\r\nLooks greatâ€¦ but now what?\r\n\r\nBy that I mean, when someone like me finds your website â€“ either through Search or just bouncing around â€“ what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a siteâ€™s visitors disappear and are gone forever after just a moment.\r\n\r\nHereâ€™s an ideaâ€¦\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your siteâ€¦\r\n \r\nYou can â€“\r\n  \r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  It signals you the moment they let you know theyâ€™re interested â€“ so that you can talk to that lead while theyâ€™re literally looking over your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYouâ€™ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even betterâ€¦ once youâ€™ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you donâ€™t close a deal right away, you can follow up with text messages for new offers, content links, even just â€œhow you doing?â€ notes to build a relationship.\r\n\r\nPretty sweet â€“ AND effective.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(57, 'Simon Jones', 'admin@2xbinancebonushelp.network', '85883221741', 'Binance x Trust Wallet Official Crypto Giveaway', 'To celebrate the 2 year anniversary of Binanceâ€™s acquisition of Trust Wallet, weâ€™re teaming up with Trust for the biggest giveaway ever!. \r\n \r\nYou will receive a 2x/3x bonus depending on the amount you participate with. This event will end once the assigned coins are distributed completely. To participate, you are required to have at least the Following in your wallet. \r\n1 ETH, 0.05 BTC, 1000.0 XRP, 15,000 TRX, 2.5 LTC. \r\n \r\n \r\nhttps://2xbonusstore.online'),
(58, 'Candelaria', 'candelaria.soper@outlook.com', '06486 98 27 99', 'Candelaria Soper', 'Morning\r\n\r\nBuy medical disposable face mask to protect your loved ones from the deadly CoronaVirus.  The price is $0.28 each.  If interested, please visit our site: pharmacyoutlets.online\r\n\r\nMany Thanks,\r\n\r\nCandelaria'),
(59, 'Russ Eanes', 'russ.eanes@msn.com', '(08) 9422 7269', 'If kodiblaze.com is not on Page 1, youâ€™re not winning the click', 'Superior German Marketing services.\r\n\r\nYou can\'t expect to make a website and have clients buy from you - that\'s too passive. You\'ll need to act.\r\n\r\nTo effortlessly win your competitors on the web itâ€™s paramount to have   this amazing plan:\r\n	\r\nhttps://your-it-technicians.com/backlinks-generator\r\n\r\n\r\nRegards,\r\nWe offer the best marketing services you may purchase on our shop for making big money in a small business, still not considering getting new clients? Here is a simple, 1-click unsubscribe link: https://your-it-technicians.com/?unsubscribe=kodiblaze.com'),
(60, 'Mike Dodson\r\n', 'eliseharris3262@gmail.com\r\n', '87971881483', 'affordable monthly SEO plans', 'Good Day \r\n \r\nI have just checked  kodiblaze.com for  the current search visibility and saw that your website could use a boost. \r\n \r\nWe will enhance your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our services below, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart improving your sales and leads with us, today! \r\n \r\nregards \r\nMike Dodson\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(61, 'Gabriel Angelo', 'gafinan.cier@gmail.com', '88211227972', 'Project/Business financing', 'Dear Entrepreneur, \r\n \r\nI\'m Gabriel Angelo, My company can bridge funds for your new or ongoing business. do let me know when you receive this message for further procedure. \r\n \r\nWe also pay 1% commission to brokers and friends who introduce project owners for finance or other opportunities. \r\n \r\nYou can reach me directly using this email address: gabriel_angelo@nestalconsultants.com \r\n \r\nRegards, \r\nGabriel Angelo'),
(62, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!', 'Cool website!\r\n\r\nMy nameâ€™s Eric, and I just found your site - kodiblaze.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what youâ€™re doing is pretty cool.\r\n \r\nBut if you donâ€™t mind me asking â€“ after someone like me stumbles across kodiblaze.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nIâ€™m guessing some, but I also bet youâ€™d like moreâ€¦ studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHereâ€™s a thought â€“ what if there was an easy way for every visitor to â€œraise their handâ€ to get a phone call from you INSTANTLYâ€¦ the second they hit your site and said, â€œcall me now.â€\r\n\r\nYou can â€“\r\n  \r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  It lets you know IMMEDIATELY â€“ so that you can talk to that lead while theyâ€™re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads â€“ the difference between contacting someone within 5 minutes versus 30 minutes later can be huge â€“ like 100 times better!\r\n\r\nThatâ€™s why we built out our new SMS Text With Lead featureâ€¦ because once youâ€™ve captured the visitorâ€™s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities â€“ even if you donâ€™t close a deal then and there, you can follow up with text messages for new offers, content links, even just â€œhow you doing?â€ notes to build a relationship.\r\n\r\nWouldnâ€™t that be cool?\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(63, 'Edmundo', 'edmundo.mcgeorge@gmail.com', '613-260-3252', 'Edmundo McGeorge', 'Hey\r\n\r\nYou need a pair of Quick Dry Beach Shoes, going out shoes, going OUT OUT shoes, trainers, a spare pair of trainers in case it rains...\r\n\r\nAct Now And Receive A Special Discount For Our Quick Dry Beach Shoes!\r\n\r\nGet Yours Here:  tonature.online\r\n\r\nTo your success, \r\n \r\nEdmundo'),
(64, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!', 'Cool website!\r\n\r\nMy nameâ€™s Eric, and I just found your site - kodiblaze.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what youâ€™re doing is pretty cool.\r\n \r\nBut if you donâ€™t mind me asking â€“ after someone like me stumbles across kodiblaze.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nIâ€™m guessing some, but I also bet youâ€™d like moreâ€¦ studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHereâ€™s a thought â€“ what if there was an easy way for every visitor to â€œraise their handâ€ to get a phone call from you INSTANTLYâ€¦ the second they hit your site and said, â€œcall me now.â€\r\n\r\nYou can â€“\r\n  \r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  It lets you know IMMEDIATELY â€“ so that you can talk to that lead while theyâ€™re literally looking over your site.\r\n\r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads â€“ the difference between contacting someone within 5 minutes versus 30 minutes later can be huge â€“ like 100 times better!\r\n\r\nThatâ€™s why we built out our new SMS Text With Lead featureâ€¦ because once youâ€™ve captured the visitorâ€™s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities â€“ even if you donâ€™t close a deal then and there, you can follow up with text messages for new offers, content links, even just â€œhow you doing?â€ notes to build a relationship.\r\n\r\nWouldnâ€™t that be cool?\r\n\r\nCLICK HERE http://talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(65, 'Jina Strahan', 'strahan.jina@gmail.com', 'Bbb E S Wseco', 'Re:Hi! - Website SubmitterÂ©', 'Can we help?\r\n\r\nOrganic search is a massive part of most businesses \' website performance and a crucial part of the buyer funnel and ultimately getting clients to complete a conversion or engagement.\r\n\r\n\r\nTry this mad Artificial Intelligence service to submit your website to a large number of search engines and similar directories.\r\n\r\nTo boost your company efficiently on the web youâ€™ll want this extravagant service:\r\n\r\n\r\nhttps://superb-marketing.com\r\n\r\n\r\n\r\nWith warm regards,\r\nWe offer superb Marketing services you may purchase on our website to make big money in a small business, still not thinking about getting new business? Here is a quick, one-click unsubscribe link: https://superb-marketing.com/?unsubscribe=kodiblaze.com'),
(66, 'Mike Ramacey\r\n', 'no-replyHEAL@gmail.com', '86834845294', 'Get more dofollow backlinks for kodiblaze.com', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Ramacey\r\n \r\nsupport@digital-x-press.com'),
(67, 'Mike MacAlister\r\n', 'no-replyHEAL@gmail.com', '88363675593', 'Increase sales for kodiblaze.com', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your kodiblaze.com website? \r\nHaving a high DA score, always helps \r\n \r\nGet your kodiblaze.com to have a DA between 50 to 60 points in Moz with us today and reap the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nthank you \r\nMike MacAlister\r\n \r\nsupport@monkeydigital.co'),
(68, 'Tobias', 'tobias.voss@hotmail.com', '(07) 4019 5981', 'Tobias Voss', 'Good day\r\n\r\nBuy medical disposable face mask to protect your loved ones from the deadly CoronaVirus.  The price is $0.28 each.  If interested, please visit our site: pharmacyoutlets.online\r\n\r\nBest,\r\n\r\nTobias'),
(69, 'Mike Page\r\n', 'no-replyHEAL@gmail.com', '89728519581', 'Local SEO for more business', 'Hi \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our services below, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Page\r\n \r\nSpeed SEO Digital Agency'),
(70, 'Kari', 'kari.marko@hotmail.com', '0394 6366427', 'Kari Marko', 'Hello there \r\n \r\nCAREDOGBESTâ„¢ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.com\r\n \r\nThe Best, \r\n \r\nKari\r\nKodi Blaze'),
(71, 'skyreveryVep', 'malinoleg91@mail.ru', '85664828121', 'ÐÑ€ÐµÐ½Ð´Ð° Ñ‡Ð°ÑÑ‚Ð½Ð¾Ð³Ð¾ ÑÐ°Ð¼Ð¾Ð»ÐµÑ‚Ð° Ñ ÑÐºÐ¸Ð¿Ð°Ð¶ÐµÐ¼', ' \r\n<a href=https://www.skyrevery.ru/helicopters/agusta_a109_new/>ÐÑ€ÐµÐ½Ð´Ð° Ñ‡Ð°ÑÑ‚Ð½Ð¾Ð³Ð¾ Ð²ÐµÑ€Ñ‚Ð¾Ð»ÐµÑ‚Ð° Agusta A109 - SkyRevery</a>        -  Ð¿Ð¾Ð´Ñ€Ð¾Ð±Ð½ÐµÐµ Ð½Ð° Ð½Ð°ÑˆÐµÐ¼ ÑÐ°Ð¹Ñ‚Ðµ <a href=https://skyrevery.ru>skyrevery.ru</a> \r\n<a href=https://skyrevery.ru/>ÐÑ€ÐµÐ½Ð´Ð° Ñ‡Ð°ÑÑ‚Ð½Ð¾Ð³Ð¾ ÑÐ°Ð¼Ð¾Ð»ÐµÑ‚Ð°</a> Ñ ÑÐºÐ¸Ð¿Ð°Ð¶ÐµÐ¼ Ð² ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ð¸ SkyRevery â€“ ÑÑ‚Ð¾ Ð²Ñ‹Ð±Ð¾Ñ€ Ñ‚ÐµÑ…, ÐºÑ‚Ð¾ Ñ†ÐµÐ½Ð¸Ñ‚ ÑÐ²Ð¾Ðµ Ð²Ñ€ÐµÐ¼Ñ Ð¸ Ð¶Ð¸Ð²ÐµÑ‚ Ð¿Ð¾ ÑÐ²Ð¾ÐµÐ¼Ñƒ Ñ€Ð°ÑÐ¿Ð¸ÑÐ°Ð½Ð¸ÑŽ! \r\nÐÑ€ÐµÐ½Ð´Ð° Ñ‡Ð°ÑÑ‚Ð½Ð¾Ð³Ð¾ ÑÐ°Ð¼Ð¾Ð»ÐµÑ‚Ð° Ð¿Ð¾Ð¼Ð¾Ð³Ð°ÐµÑ‚ ÑÐºÐ¾Ð½Ð¾Ð¼Ð¸Ñ‚ÑŒ ÑÐ°Ð¼Ñ‹Ð¹ Ð²Ð°Ð¶Ð½Ñ‹Ð¹ Ñ€ÐµÑÑƒÑ€Ñ â€“ Ð²Ñ€ÐµÐ¼Ñ. ÐÑ€ÐµÐ½Ð´Ð¾Ð²Ð°Ð² Ñ‡Ð°ÑÑ‚Ð½Ñ‹Ð¹ ÑÐ°Ð¼Ð¾Ð»ÐµÑ‚, Ð¸Ð¼ÐµÐ½Ð½Ð¾ Ð’Ñ‹ Ñ€ÐµÑˆÐ°ÐµÑ‚Ðµ, ÐºÐ¾Ð³Ð´Ð° Ð¸ ÐºÑƒÐ´Ð° Ð¿Ð¾Ð»ÐµÑ‚Ð¸Ñ‚Ðµ. Ð”Ð»Ñ Ð²Ñ‹Ð¿Ð¾Ð»Ð½ÐµÐ½Ð¸Ñ Ñ‡Ð°Ñ€Ñ‚ÐµÑ€Ð½Ñ‹Ñ… Ñ€ÐµÐ¹ÑÐ¾Ð² Ð¼Ñ‹ Ð¿Ñ€ÐµÐ´Ð»Ð°Ð³Ð°ÐµÐ¼ Ñ‡Ð°ÑÑ‚Ð½Ñ‹Ðµ ÑÐ°Ð¼Ð¾Ð»ÐµÑ‚Ñ‹ Ð¸Ð½Ð¾ÑÑ‚Ñ€Ð°Ð½Ð½Ð¾Ð³Ð¾ Ð¿Ñ€Ð¾Ð¸Ð·Ð²Ð¾Ð´ÑÑ‚Ð²Ð°, Ð³Ð°Ñ€Ð°Ð½Ñ‚Ð¸Ñ€ÑƒÑŽÑ‰Ð¸Ðµ Ð²Ñ‹ÑÐ¾ÐºÐ¸Ð¹ ÑƒÑ€Ð¾Ð²ÐµÐ½ÑŒ ÐºÐ¾Ð¼Ñ„Ð¾Ñ€Ñ‚Ð° Ð¸ Ð±ÐµÐ·Ð¾Ð¿Ð°ÑÐ½Ð¾ÑÑ‚Ð¸ Ð¿Ð¾Ð»ÐµÑ‚Ð°. Ð’Ð½Ð¸Ð¼Ð°Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ðµ Ð±Ð¾Ñ€Ñ‚Ð¿Ñ€Ð¾Ð²Ð¾Ð´Ð½Ð¸ÐºÐ¸ Ð¸ Ð²Ñ‹ÑÐ¾ÐºÐ¾Ð¿Ñ€Ð¾Ñ„ÐµÑÑÐ¸Ð¾Ð½Ð°Ð»ÑŒÐ½Ñ‹Ðµ Ð¿Ð¸Ð»Ð¾Ñ‚Ñ‹ ÑÐ´ÐµÐ»Ð°ÑŽÑ‚ Ð’Ð°Ñˆ Ð¿Ð¾Ð»ÐµÑ‚ Ð¼Ð°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð¿Ñ€Ð¸ÑÑ‚Ð½Ñ‹Ð¼ Ð¸ ÑƒÐ´Ð¾Ð±Ð½Ñ‹Ð¼. \r\nÐšÐ¾Ð³Ð´Ð° Ð’Ð°Ð¼ Ð½ÑƒÐ¶Ð½Ð° <a href=https://skyrevery.ru/>Ð°Ñ€ÐµÐ½Ð´Ð° ÑÐ°Ð¼Ð¾Ð»ÐµÑ‚Ð°</a> ÑÑ€Ð¾Ñ‡Ð½Ð¾, Ð¼Ñ‹ Ð¼Ð¾Ð¶ÐµÐ¼ Ð¾Ñ€Ð³Ð°Ð½Ð¸Ð·Ð¾Ð²Ð°Ñ‚ÑŒ Ð´Ð»Ñ Ð’Ð°Ñ Ð²Ñ‹Ð»ÐµÑ‚ Ð¿Ð¾ Ð³Ð¾Ñ‚Ð¾Ð²Ð½Ð¾ÑÑ‚Ð¸ Ð¾Ñ‚ 3 Ñ‡Ð°ÑÐ¾Ð² Ñ Ð¼Ð¾Ð¼ÐµÐ½Ñ‚Ð° Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ.'),
(72, 'Steve James', 'steve@explainervideos4u.xyz', '863-984-4356', 'Explainer Video for kodiblaze.com', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service which we feel can benefit your site kodiblaze.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=oYoUQjxvhA0\r\nhttps://www.youtube.com/watch?v=MOnhn77TgDE\r\nhttps://www.youtube.com/watch?v=NKY4a3hvmUc\r\n\r\nAll of our videos are in a similar animated format as the above examples and we have voice over artists with US/UK/Australian accents.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video such as Youtube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\n1 minute = $239\r\n1-2 minutes = $339\r\n2-3 minutes = $449\r\n\r\n*All prices above are in USD and include an engaging, captivating video with full script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to get in touch.\r\nIf you are not interested, simply delete this message and we won\'t contact you again.\r\n\r\nYou can see more of our work here: http://www.explainervideos4u.info\r\n\r\nKind Regards,\r\nSteve'),
(73, 'Jamesjem', 'no-replyEnduch@gmail.com', '83362557114', 'Want more customers for your business?', 'Hello!  kodiblaze.com \r\n \r\nDo you know the simplest way to mention your product or services? Sending messages through contact forms can allow you to simply enter the markets of any country (full geographical coverage for all countries of the world).  The advantage of such a mailing  is that the emails that will be sent through it\'ll end up within the mailbox that\'s intended for such messages. Sending messages using Feedback forms is not blocked by mail systems, which implies it\'s certain to reach the client. You\'ll be able to send your supply to potential customers who were antecedently unavailable due to spam filters. \r\nWe offer you to test our service without charge. We\'ll send up to fifty thousand message for you. \r\nThe cost of sending one million messages is us $ 49. \r\n \r\nThis offer is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.'),
(74, 'Elliott', 'elliott.driggers@msn.com', '04323 12 53 05', 'Kodi Blaze', 'Good day \r\n \r\nLEARN HOW PawSaferâ„¢ CAN SAFELY TRIM YOUR DOG\'S NAILS IN NO TIME FROM HOME.\r\n\r\nGet it while it\'s still 50% OFF + FREE Shipping\r\n\r\nBuy here: pawsafer.shop\r\n \r\nBest Wishes, \r\n \r\nElliott'),
(75, 'Steve James', 'steve@explainervideos4u.info', '254-803-0272', 'Explainer Videos for kodiblaze.com', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service which we feel can benefit your site kodiblaze.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=ivTmAwuli14\r\nhttps://www.youtube.com/watch?v=uywKJQvfeAM\r\nhttps://www.youtube.com/watch?v=oPNdmMo40pI\r\nhttps://www.youtube.com/watch?v=6gRb-HPo_ck\r\n\r\nAll of our videos are in a similar animated format as the above examples and we have voice over artists with US/UK/Australian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video such as Youtube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\n1 minute = $239\r\n1-2 minutes = $339\r\n2-3 minutes = $449\r\n\r\n*All prices above are in USD and include an engaging, captivating video with full script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to get in touch.\r\nIf you are not interested, simply delete this message and we won\'t contact you again.\r\n\r\nYou can see more of our work here: http://www.explainervideos4u.info\r\n\r\nKind Regards,\r\nSteve'),
(76, 'Mike Bush\r\n', 'no-replyHEAL@gmail.com', '82553965375', 'cheap monthly SEO plans', 'Hi \r\n \r\nI have just took an in depth look on your  kodiblaze.com for the ranking keywords and saw that your website could use a push. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nMike Bush\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(77, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Turn Surf-Surf-Surf into Talk Talk Talk', 'Hello, my nameâ€™s Eric and I just ran across your website at kodiblaze.com...\r\n\r\nI found it after a quick search, so your SEOâ€™s working outâ€¦\r\n\r\nContent looks pretty goodâ€¦\r\n\r\nOne thingâ€™s missing thoughâ€¦\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds â€“ 7 out of 10 disappear almost instantly, Surf Surf Surfâ€¦ then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  Youâ€™ll know immediately theyâ€™re interested and you can call them directly to TALK with them - literally while theyâ€™re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a tryâ€¦ it could be huge for your business.\r\n\r\nPlus, now that youâ€™ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation prontoâ€¦ which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything Iâ€™ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(78, 'Patty Noonan', 'noonan.patty@yahoo.com', '459 1287', 'Increase your sales with backlinks!', 'The appropriate person to contact?\r\n\r\nOnline Marketing can be pivotal to the success of a business because it provides a shortcut into visibility that would otherwise take way too long to achieve or cost substantially more to buy.\r\n\r\nHere is the extraordinary plan you must have to win unlimited customers regularly:\r\n	\r\nhttps://first-class-marketing.com/backlinks-generator\r\n\r\n\r\nWith best regards,\r\nWe offer superb Promotion services you may check on our online shop to make big money in a small business, still not interested in getting new business? Here is a simple, 1-click unsubscribe link:  https://first-class-marketing.com/?unsubscribe=kodiblaze.com'),
(79, 'Edgardo', 'edgardowinkel@gmail.com', '929 07 751', 'Edgardo Winkel', 'Good day \r\n\r\nThe New Powerful LED Flashlight is The Perfect Flashlight For Any Situation!\r\n\r\nThe 3,000 Lumens & Adjustable Zoom gives you the wide field of view and brightness other flashlights donâ€™t have.\r\n\r\n50% OFF + Free Shipping!  Get it Now: linterna.shop\r\n\r\nBest, \r\n\r\nEdgardo'),
(80, 'Ilana', 'ilanablankenship@gmail.com', '04283 25 78 47', 'Ilana Blankenship', 'Hi \r\n\r\nDefrost frozen foods in minutes safely and naturally with our THAW KINGâ„¢. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time.\r\n\r\nBuy now: thawking.online\r\n\r\nBest Wishes, \r\n\r\nIlana'),
(81, 'Mike Becker\r\n', 'no-replyHEAL@gmail.com', '81362824239', 'Get more dofollow backlinks for kodiblaze.com', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Becker\r\n \r\nsupport@digital-x-press.com'),
(82, 'Colleen Hansen', 'chanokformsen@gmail.com', '82269887179', 'Finance Your Business with Government-backed Grants', 'Explore government-backed grants and funding programs for your business! APPLY NOW - https://rebrand.ly/USAGOV-SmallBusiness-Grants'),
(83, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Your site â€“ more leads?', 'Hey, this is Eric and I ran across kodiblaze.com a few minutes ago.\r\n\r\nLooks greatâ€¦ but now what?\r\n\r\nBy that I mean, when someone like me finds your website â€“ either through Search or just bouncing around â€“ what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a siteâ€™s visitors disappear and are gone forever after just a moment.\r\n\r\nHereâ€™s an ideaâ€¦\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your siteâ€¦\r\n \r\nYou can â€“\r\n  \r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  It signals you the moment they let you know theyâ€™re interested â€“ so that you can talk to that lead while theyâ€™re literally looking over your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYouâ€™ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even betterâ€¦ once youâ€™ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you donâ€™t close a deal right away, you can follow up with text messages for new offers, content links, even just â€œhow you doing?â€ notes to build a relationship.\r\n\r\nPretty sweet â€“ AND effective.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(84, 'Katlyn Haigh', 'haigh.katlyn@gmail.com', '662-680-3474', 'Your Thousands Social Signals for kodiblaze.com', 'Catapult promotion services from Germany.\r\n\r\nContinually seek ways to grow your business because once you\'ve reached your top, your competitors will never stop trying to outrank you.\r\n\r\nTo sky rocket your company efficiently on the internet you must have this fantastic service:\r\n	\r\nhttps://superb-promo.com/socialsignals\r\n\r\n\r\nBest regards,\r\nWe offer superb Marketing services you can find on our online shop to make big money in a small business, still not considering getting new clients? Here is an easy, one-click unsubscribe link: https://superb-promo.com/?unsubscribe=kodiblaze.com'),
(85, 'Eric Jones', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Turn Surf-Surf-Surf into Talk Talk Talk', 'Hello, my nameâ€™s Eric and I just ran across your website at kodiblaze.com...\r\n\r\nI found it after a quick search, so your SEOâ€™s working outâ€¦\r\n\r\nContent looks pretty goodâ€¦\r\n\r\nOne thingâ€™s missing thoughâ€¦\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds â€“ 7 out of 10 disappear almost instantly, Surf Surf Surfâ€¦ then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  Youâ€™ll know immediately theyâ€™re interested and you can call them directly to TALK with them - literally while theyâ€™re still on the web looking at your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a tryâ€¦ it could be huge for your business.\r\n\r\nPlus, now that youâ€™ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation prontoâ€¦ which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything Iâ€™ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=kodiblaze.com\r\n'),
(86, 'Fleta', 'fleta.ducroz@gmail.com', '0362 0630927', 'Fleta Du Croz', 'EASE YOUR PAIN IN 10 MINUTES EFFORTLESSLY\r\n\r\nBe Free from Neck Pain! Try NeckFlexer & Relieve Neck Pain Effortlessly In 10 Min!\r\n\r\nSave 50% OFF + FREE Worldwide Shipping\r\n\r\nShop Now: neckflexer.online\r\n\r\nEnjoy, \r\n\r\nFleta'),
(87, 'LiWipsext', 'catattack@wir.pl', '86671184956', 'pokoje pracownicze nieopodal suwalk', 'analogical canberra bucket  <a href=\"https://www.noclegipracowniczneaugustow.site\">www.noclegipracowniczneaugustow.site</a> \r\nnoclegi pracownicze augustow <a href=\"https://www.noclegipracowniczneaugustow.site\">noclegi pracownicze w suwalkach</a> \r\ntanie noclegi w augustowie https://www.noclegipracowniczneaugustow.site/kwatery-augustow-mostowa.htm \r\nstx21'),
(88, 'Mike WifKinson\r\n', 'no-replyHEAL@gmail.com', '82295795493', 'Increase sales for kodiblaze.com', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your kodiblaze.com website? \r\nHaving a high DA score, always helps \r\n \r\nGet your kodiblaze.com to have a DA between 50 to 60 points in Moz with us today and reap the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nthank you \r\nMike WifKinson\r\n \r\nsupport@monkeydigital.co'),
(89, 'Roosevelt', 'roosevelt.steffanoni@hotmail.com', '0231 70 19 97', 'Roosevelt Steffanoni', 'Hello\r\n\r\nBe Buzz Free! The Original Mosquito Trap.\r\n\r\n60% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping\r\nâœ”ï¸LED Bionic Wave Technology\r\nâœ”ï¸Eco-Friendly\r\nâœ”ï¸15 Day Money-Back Guarantee\r\n\r\nShop Now: mosquitotrap.online\r\n\r\nBest,\r\n\r\nRoosevelt\r\nKodi Blaze'),
(90, 'Florian Baecker', 'baecker.florian@gmail.com', '(02) 6772 4301', 'Your business - kodiblaze.com can do more!', 'Only the best for you, kodiblaze.com\r\n\r\nThe best place to hide a dead body is the second page of Google search. Get kodiblaze.com on the first page.\r\n\r\nTo easily win the competition over the web youâ€™ll want  this mad package:\r\n	\r\nhttps://iseo-shop.com/backlinks-generator\r\n\r\n\r\nSincerely,\r\nWe offer the very best Promotion services you can purchase on our shop to make big money in a small business, still not considering getting new customers? Here is a simple, 1-click unsubscribe link:  https://iseo-shop.com/?unsubscribe=kodiblaze.com'),
(91, 'Mike Davis\r\n', 'no-replyHEAL@gmail.com', '87462237188', 'Local SEO for more business', 'Hello \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike Davis\r\n \r\nSpeed SEO Digital Agency'),
(92, 'Karissa', 'info@kodiblaze.com', '052 305 34 95', 'kodiblaze.com', 'World\'s Best Neck Massager Get it Now 50% OFF + Free Shipping!\r\n\r\nWellness Enthusiasts! There has never been a better time to take care of your neck pain! \r\n\r\nOur clinical-grade TENS technology will ensure you have neck relief in as little as 20 minutes.\r\n\r\nGet Yours: hineck.online\r\n\r\nCheers,\r\n\r\nKarissa\r\nKodi Blaze');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(50) NOT NULL,
  `u_id` bigint(50) NOT NULL,
  `c_id` bigint(50) NOT NULL,
  `video` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `file_type` text DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `u_id`, `c_id`, `video`, `status`, `file_type`, `time_stamp`) VALUES
(75, 9, 16, 'uploads/vid1.mp4', 1, 'video/mp4', '2021-06-14 14:19:29'),
(76, 9, 16, 'uploads/trim.C617E2B5-D792-4543-B7B4-77BD350DD5D5.1615861314.1617172885.mp4', 1, 'video/quicktime', '2021-03-31 06:41:25'),
(77, 9, 16, 'uploads/trim.C617E2B5-D792-4543-B7B4-77BD350DD5D5.1615861314.1617172917.mp4', 1, 'video/quicktime', '2021-03-31 06:41:57'),
(78, 11, 20, 'uploads/vid2.mp4', 1, 'video/quicktime', '2021-06-14 14:18:05'),
(81, 14, 20, 'uploads/VID_63200605_102640_738.1617616152.mp4', 1, 'video/mp4', '2021-04-05 09:49:12'),
(82, 14, 20, 'uploads/VID_63210504_080903_591.1617616754.mp4', 1, 'video/mp4', '2021-04-05 09:59:14'),
(83, 13, 20, 'uploads/VID_78500917_052531_688.1617629408.mp4', 1, 'video/mp4', '2021-04-05 13:30:08'),
(84, 13, 20, 'uploads/VID_63270702_042855_340.1617629442.mp4', 1, 'video/mp4', '2021-04-05 13:30:42'),
(85, 13, 20, 'uploads/VID_78520412_114228_648.1617629480.mp4', 1, 'video/mp4', '2021-04-05 13:31:20'),
(86, 15, 20, 'uploads/trim.56C97E7D-D2FF-46B1-89F2-BD372DCE3F85.1617731356.mp4', 1, 'video/quicktime', '2021-04-06 17:49:16'),
(87, 16, 20, 'uploads/trim.3F316480-CA85-412D-9593-75C71A11C39E.1617733877.mp4', 1, 'video/quicktime', '2021-04-06 18:31:17'),
(90, 17, 17, 'uploads/64002952703__E120AA28-A128-433B-BCE6-7F0E4BB42826.1618336736.mp4', 1, 'video/quicktime', '2021-04-19 09:26:25'),
(91, 19, 16, 'uploads/vid2.mp4', 1, 'video/mp4', '2021-06-14 13:33:47'),
(92, 20, 17, 'uploads/vid1.mp4', 1, 'video/quicktime', '2021-06-14 13:32:41'),
(93, 22, 17, 'uploads/pancha1m.mp4', 1, 'video/x-matroska', '2021-06-14 13:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` bigint(50) NOT NULL,
  `email` text DEFAULT NULL,
  `c_id` bigint(50) NOT NULL,
  `cu_id` bigint(50) NOT NULL,
  `ip_address` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `email`, `c_id`, `cu_id`, `ip_address`, `status`) VALUES
(1, '', 17, 1, '::1', 1),
(2, '', 19, 32, '::1', 1),
(3, '', 16, 36, '::1', 1),
(4, '', 16, 37, '::1', 1),
(5, '', 20, 38, '166.137.143.113', 1),
(6, '', 20, 37, '166.137.143.113', 1),
(7, '', 20, 40, '166.137.143.113', 1),
(8, '', 20, 40, '2600:387:1:803::a4', 1),
(9, '', 20, 38, '139.167.204.122', 1),
(10, '', 20, 43, '139.167.204.122', 1),
(11, '', 20, 42, '139.167.204.122', 1),
(12, '', 20, 40, '139.167.204.122', 1),
(15, '', 17, 43, '139.167.204.122', 1),
(16, '', 16, 44, '139.167.204.122', 1),
(17, '', 20, 40, '2600:387:1:803::71', 1),
(18, '', 20, 39, '2600:387:1:803::71', 1),
(19, '', 20, 41, '2600:387:1:803::71', 1),
(20, '', 17, 43, '139.167.168.134', 1),
(21, '', 20, 38, '139.167.168.134', 1),
(22, '', 20, 40, '2600:387:1:803::bf', 1),
(23, '', 20, 38, '2600:387:1:803::66', 1),
(24, '', 20, 41, '2600:1702:8f0:85c0::48', 1),
(25, '', 17, 45, '2601:2c5:c700:2ed0:61d1:4e11:e55c:a553', 1),
(26, 'vansh10patpatia@gmail.com', 24, 22, '192.168.237.184', 1),
(27, 'vansh10patpatia@gmail.com', 25, 17, '192.168.237.184', 1),
(28, 'vansh10patpatia@gmail.com', 25, 17, '10.10.0.141', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_config`
--

CREATE TABLE `web_config` (
  `id` bigint(20) NOT NULL,
  `email` text DEFAULT NULL,
  `phn` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `feature_image` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `about` text DEFAULT NULL,
  `about_us` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `web_title` text DEFAULT NULL,
  `home_title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `web_config`
--

INSERT INTO `web_config` (`id`, `email`, `phn`, `address`, `location`, `logo`, `image`, `feature_image`, `message`, `about`, `about_us`, `facebook`, `instagram`, `twitter`, `web_title`, `home_title`) VALUES
(1, 'kodiblazee@gmail.com', '281690333fourrrrrr', '', 'mo city texas ', 'uploads/1619926159_ScreenShot2021-01-09at6.11.29PM.png', 'uploads/banner.jpg', 'uploads/1619926209_tumblr_n8nofbqR3l1spn9cyo1_1280.jpeg', 'hello test', 'Number one place to be.\r\n						Hottest artist in the streets we love', '', 'facebbook', 'instagram', 'twitter', 'KODI BLAZE', 'KODIBLAZE');

-- --------------------------------------------------------

--
-- Table structure for table `winner`
--

CREATE TABLE `winner` (
  `id` bigint(50) NOT NULL,
  `c_id` bigint(50) NOT NULL,
  `u_id` bigint(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `winner`
--

INSERT INTO `winner` (`id`, `c_id`, `u_id`, `status`) VALUES
(1, 24, 22, 1),
(2, 25, 23, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contest`
--
ALTER TABLE `contest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contest_songs`
--
ALTER TABLE `contest_songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contest_users`
--
ALTER TABLE `contest_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_slider`
--
ALTER TABLE `home_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_changes`
--
ALTER TABLE `index_changes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_admin`
--
ALTER TABLE `master_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_color`
--
ALTER TABLE `theme_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_config`
--
ALTER TABLE `web_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winner`
--
ALTER TABLE `winner`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contest`
--
ALTER TABLE `contest`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `contest_songs`
--
ALTER TABLE `contest_songs`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contest_users`
--
ALTER TABLE `contest_users`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `home_slider`
--
ALTER TABLE `home_slider`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `index_changes`
--
ALTER TABLE `index_changes`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `theme_color`
--
ALTER TABLE `theme_color`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `web_config`
--
ALTER TABLE `web_config`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `winner`
--
ALTER TABLE `winner`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
