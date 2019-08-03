-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Generation Time: Aug 03, 2019 at 06:37 PM
-- Server version: 5.6.36-log
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `questionnaire`
--

-- --------------------------------------------------------

--
-- Table structure for table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'admin', 'admin', 'biuro@amin.pl', 'biuro@amin.pl', 1, NULL, '$2y$13$rdD4Il7fkdbzk5.E.8M7nuiUuJCA8gFZoV.L5XeJsPzxelRy0pEPi', '2019-08-03 16:33:47', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}'),
(2, 'zveqa', 'zveqa', 'mmo3az.mansor@mxcn.tk', 'mmo3az.mansor@mxcn.tk', 1, NULL, '$2y$13$KqL6gEbQYOQVHpRtXUwo/OtTOG.lV1Yl8SI5bqjlOCKdtFU9oEbti', NULL, NULL, NULL, 'a:0:{}'),
(3, 'pgavi', 'pgavi', 'hiromasa@suhuempek.cf', 'hiromasa@suhuempek.cf', 1, NULL, '$2y$13$Wkv0zvclzWXxEgnkCTPUEOgj7eZPAZXB8GwEA25WL6B4ULDY6Lp4i', NULL, NULL, NULL, 'a:0:{}'),
(4, 'ypizk', 'ypizk', 'fmicloud@onet.tk', 'fmicloud@onet.tk', 1, NULL, '$2y$13$Zoq21JH4UNkSUX9qvpDCgeFeroNKAU9m.w9QUWotYEFzbSb0Qk8E6', NULL, NULL, NULL, 'a:0:{}'),
(5, 'edasy', 'edasy', 'caxisik75@best-mail.net', 'caxisik75@best-mail.net', 1, NULL, '$2y$13$43WF6f0/INQHHh1aPbwZxu1.oCoH6F/Fr2awSK45IyQSBW8z7Bhja', NULL, NULL, NULL, 'a:0:{}'),
(6, 'myrua', 'myrua', 'btoylhsud4th@10minut.xyz', 'btoylhsud4th@10minut.xyz', 1, NULL, '$2y$13$IgoXc8TATM2EZ1V1g14d5.nPrPDmSDju1Ye3/wFzBuxzSpA.srgIS', '2019-07-27 18:41:40', NULL, NULL, 'a:0:{}'),
(7, 'hzuve', 'hzuve', 'kagnukarku@desoz.com', 'kagnukarku@desoz.com', 1, NULL, '$2y$13$ULJB2Ud7IvZGuJwtLGFti.oCAfhmUnDWYuEcwsmq7Fp8n65FvMzy6', NULL, NULL, NULL, 'a:0:{}'),
(8, 'umoda', 'umoda', 'kumoda@rp.co', 'kumoda@rp.co', 1, NULL, '$2y$13$oqvZ0h2CThm3REdeGfuAM.0ZmAswKQ7pvcM29hifYtlPfVljAKxZC', NULL, NULL, NULL, 'a:0:{}'),
(9, 'ucymb', 'ucymb', 'mmo3az@besttandberg.com', 'mmo3az@besttandberg.com', 1, NULL, '$2y$13$YnCWKUYXt6M5i1kXYtuPRepP0dGodVOh2bxWMbyVjrAhUAo3fTb6G', '2019-08-02 22:22:00', NULL, NULL, 'a:0:{}'),
(10, 'jkuja', 'jkuja', 'rikakuja@rifkian.cf', 'rikakuja@rifkian.cf', 1, NULL, '$2y$13$TVjQt/GSicaCxhrIhFK5oOaneVoRl1uCiRc5fYQkKuFpOmRE0.H5y', NULL, NULL, NULL, 'a:0:{}'),
(11, 'izata', 'izata', 'amirando@prurls.com', 'amirando@prurls.com', 1, NULL, '$2y$13$vbfxZ7w3rN0RSSP0Mb0iOew8W0Vb5RR48Pt6godggrJ2uVSkGCEJq', NULL, NULL, NULL, 'a:0:{}'),
(12, 'hamza', 'hamza', 'lekidra52@prurls.co', 'lekidra52@prurls.co', 1, NULL, '$2y$13$OsHwt/I4xahJKJKwDBo0XOL0or5cfQXIRkAMeHr4qqHqFFkD99zaq', NULL, NULL, NULL, 'a:0:{}'),
(13, 'gzena', 'gzena', 'mmiralda@tukulyagan.pl', 'mmiralda@tukulyagan.pl', 1, NULL, '$2y$13$L91LYpLVr0JRi1vLm/DeB.cAvNzuNVwr8koSDCd1wADHtlgOwSTX6', NULL, NULL, NULL, 'a:0:{}'),
(14, 'asala', 'asala', 'ulannor@csgodose.com', 'ulannor@csgodose.com', 1, NULL, '$2y$13$yvFU9Ojj0GXqzCwv8DmsB.JXWq7U84rskSJPU6QZrV5NQLsj5lCz6', NULL, NULL, NULL, 'a:0:{}'),
(15, 'ecila', 'ecila', 'xnu65134@bcaoo.pl', 'xnu65134@bcaoo.pl', 1, NULL, '$2y$13$zLyTz2fdnqhIgVoP2q23JOCKsdO6FOdmb09kGItA92P4h1hZceGNa', NULL, NULL, NULL, 'a:0:{}'),
(16, 'dvide', 'dvide', 'animatedvideos33@gmail.com', 'animatedvideos33@gmail.com', 1, NULL, '$2y$13$3d8GfAnz4uJ4pnz9FAJLOOoYfCwoRh4tyj7bKkjaMkXqsmE2cuH0u', NULL, NULL, NULL, 'a:0:{}'),
(17, 'hael', 'hael', 'micgyhaelTuh@gmail.ty', 'micgyhaeltuh@gmail.ty', 1, NULL, '$2y$13$TCyO3YAEa.iuEoPmcD24/OOXNd.DUN8/YUYjvPf5nfzbU95uZSOoy', NULL, NULL, NULL, 'a:0:{}'),
(18, 'nantor', 'nantor', 'news@mailinator.com', 'news@mailinator.com', 1, NULL, '$2y$13$wUvs9tI3WhWhFLZwUh92ee.Jnk95oQMGvUkXHj4lH2nkPq756l.mW', NULL, NULL, NULL, 'a:0:{}'),
(19, 'cond', 'cond', 'example@secondbusiness.it', 'example@secondbusiness.it', 1, NULL, '$2y$13$rj3mK2qYU38.jxb69.9HQOpFQFZbV8sKcxdt1WlnfXiEkvbb26dty', NULL, NULL, NULL, 'a:0:{}'),
(20, 'obima', 'obima', 'caxisik@best-mail.net', 'caxisik@best-mail.net', 1, NULL, '$2y$13$.ahKhYSp7j19Notqrmt8sOv9Le//9.GktRJ48ENtHyYiexUhA9H5S', NULL, NULL, NULL, 'a:0:{}'),
(21, 'dmome', 'dmome', 'maderano@jssdikpd.ga', 'maderano@jssdikpd.ga', 1, NULL, '$2y$13$Jh.GZQhOI1wgSTEtQzxSyeib2yQkXddZlJz6aZCt81qo4Titm9oJO', NULL, NULL, NULL, 'a:0:{}'),
(22, 'fqabu', 'fqabu', 'ress1982@rhyta.de', 'ress1982@rhyta.de', 1, NULL, '$2y$13$vQZF3EdlsMyrKb9/MjYMt.NzoJaxwUXAPQ7STBMkvnxmjPptd94ba', NULL, NULL, NULL, 'a:0:{}'),
(23, 'wcuxi', 'wcuxi', 'dolorseit@jourrapide.ry', 'dolorseit@jourrapide.ry', 1, NULL, '$2y$13$P6AEQPPRkFUPMcI1fEgV6Osc1VjVZgvIXx3DG4Iz7K4I.qzfd/xDS', NULL, NULL, NULL, 'a:0:{}'),
(24, 'esifo', 'esifo', 'lorem@gustr.com', 'lorem@gustr.com', 1, NULL, '$2y$13$LF0.NLaM528KVJetG7Mf5unRkp7p.opiBmcbXxYoOPqAMBNFcFq7i', NULL, NULL, NULL, 'a:0:{}'),
(25, 'orybn', 'orybn', 'dolorseit@jourrapide.com', 'dolorseit@jourrapide.com', 1, NULL, '$2y$13$uhtE8retz4SpdKmQ4luyaOqrZc7OU7jjsrtw22wbzpkTpVRX/L/3O', NULL, NULL, NULL, 'a:0:{}'),
(26, 'wevuram', 'wevuram', 'wevuramo45@jourrapide.com', 'wevuramo45@jourrapide.com', 1, NULL, '$2y$13$YrXT7s4lyszcT959Q9nJuenRb85TYGq9Moiuc3aFhzZJIYSF7X0ta', NULL, NULL, NULL, 'a:0:{}'),
(27, 'ferihur', 'ferihur', 'zavuge7201@yopmail.com', 'zavuge7201@yopmail.com', 1, NULL, '$2y$13$yz7db7yi81Bl2YKXNQUpCOeVWxGOIcdOIL7AwA..YV5rZwP2vOgmC', NULL, NULL, NULL, 'a:0:{}'),
(28, 'migelea', 'migelea', 'migealmasa@zurej.pl', 'migealmasa@zurej.pl', 1, NULL, '$2y$13$rS/oMBupSoy1No3dfD1SG.rqo7sLkGISVC2yTUXMcVAXe3P7TUFJ2', NULL, NULL, NULL, 'a:0:{}'),
(29, 'ehefoha', 'ehefoha', 'theehefoha@ok.com', 'theehefoha@ok.com', 1, NULL, '$2y$13$QhK7KRG0UH.lvKrkoxbO7u7FGxXtLv8/4k5uvf.X89b32vI5BzCRm', NULL, NULL, NULL, 'a:0:{}'),
(30, 'pudoqu', 'pudoqu', 'pudoguGam@op.pl', 'pudogugam@op.pl', 1, NULL, '$2y$13$qU0hjAr56TWa1Ca.4Btxkemc8M5mDVY5PaFeYASkMQfjkhAjB4jyC', NULL, NULL, NULL, 'a:0:{}'),
(31, 'otyfoa', 'otyfoa', 'piWahh5yoo@o2.com', 'piwahh5yoo@o2.com', 1, NULL, '$2y$13$re6IFov2pPXSIK0/NyMQpesrlnEnd4s7AQwPMDc8Gi7Auj40ODF1a', NULL, NULL, NULL, 'a:0:{}'),
(32, 'taurus', 'taurus', 'taurus.buisness@test.de', 'taurus.buisness@test.de', 1, NULL, '$2y$13$.9JqfzEHlgKjeRywJ3Dbou/L3Ut2ApPib.sVvdmO8WgMTfGg5oNuW', NULL, NULL, NULL, 'a:0:{}'),
(33, 'morgan', 'morgan', 'organ@gmail.com', 'organ@gmail.com', 1, NULL, '$2y$13$RkvR3eKRhZuCpe1rB0becOGUXncjTjN/GIk43GSjNiZQjgCxSgqFy', NULL, NULL, NULL, 'a:0:{}'),
(34, 'xiliary', 'xiliary', 'xiliary@met.com.pl', 'xiliary@met.com.pl', 1, NULL, '$2y$13$lyqRuTordIOW.1pmRtUz9.BWoHskfVUsUH9qL0SEMgVaJUN4Inz1K', NULL, NULL, NULL, 'a:0:{}'),
(35, 'kalos', 'kalos', 'f8b5dcbbd@met.ty', 'f8b5dcbbd@met.ty', 1, NULL, '$2y$13$cievnTXEJYZ9zx4VWv9pIeEwSNmhuUSd5YYuaMlVbze2t6YWFAgiu', NULL, NULL, NULL, 'a:0:{}'),
(36, 'ported', 'ported', 'bottom@polish.pl', 'bottom@polish.pl', 1, NULL, '$2y$13$KobxIMaOHzzW7Cof8Rgw8eNR7ZYMfR4irTE.P82rsq2RDZ4WAyL2G', NULL, NULL, NULL, 'a:0:{}'),
(37, 'redirects', 'redirects', 'anas_al@redi.pl', 'anas_al@redi.pl', 1, NULL, '$2y$13$vnyjY9A6hfYhIoRmcbdLIu6nOSWbIahpULY8D9HrLpTAn7OjwqicW', NULL, NULL, NULL, 'a:0:{}'),
(38, 'qudseh', 'qudseh', 'qudseh23@tesyy.pl', 'qudseh23@tesyy.pl', 1, NULL, '$2y$13$AGcbyWMsQkjV0stLvPMGXOBexCTb9X5riR5LdxEjNztjtIZ3TEEhe', NULL, NULL, NULL, 'a:0:{}'),
(39, 'entry', 'entry', 'Jane.Smith@lorem.yu', 'jane.smith@lorem.yu', 1, NULL, '$2y$13$NUQMbZW8CXTJHlzmZPUOR..KD1zMNrmQO7jPyTkobExCd46SizxzO', NULL, NULL, NULL, 'a:0:{}'),
(40, 'desired', 'desired', 'desired.adam@lotus.pl', 'desired.adam@lotus.pl', 1, NULL, '$2y$13$l8rmuLuzXZV6W1d4EPoe0u0Lse.rc/NPxx/WUQDj8vgkn1qQKhG/i', NULL, NULL, NULL, 'a:0:{}'),
(41, 'charter', 'charter', 'remember@yousii.pl', 'remember@yousii.pl', 1, NULL, '$2y$13$mz5pppIup98nVCqnFHRbBOJtv/hOp4HsCmNZ8qeQZzv0h3gRBHw/m', NULL, NULL, NULL, 'a:0:{}'),
(42, 'bilJohnson', 'biljohnson', 'bilJohnsonok@ok.pl', 'biljohnsonok@ok.pl', 1, NULL, '$2y$13$XRLPMKfyAsknNM2/SRg7z.t.aAeFZumpWhF9YLeTVCioi0uvu6/Jq', NULL, NULL, NULL, 'a:0:{}'),
(43, 'luwucu', 'luwucu', 'Luwucu@buisness.pl', 'luwucu@buisness.pl', 1, NULL, '$2y$13$vcmhajH/kqL.NaFbyC8DoOiG3tBUyAi3PqSoMAN4JQ8/9zdDwiAey', NULL, NULL, NULL, 'a:0:{}'),
(44, 'hirury', 'hirury', 'jonas.hirury@waigton.us', 'jonas.hirury@waigton.us', 1, NULL, '$2y$13$A07GV/8RCdIweZ46g8VBwexMGAh1dr/Y6U.o9mr.3BD22LXyUEJea', NULL, NULL, NULL, 'a:0:{}'),
(45, 'kafera', 'kafera', 'kafera.tobias@git.push.com', 'kafera.tobias@git.push.com', 1, NULL, '$2y$13$7gSnmCpzEFCSe3T/zpUZwejPFFqy7kK50BV3I8aKDW.7Vr7B6Eof6', NULL, NULL, NULL, 'a:0:{}'),
(46, 'ryloga', 'ryloga', 'ryloga78@testy.o2', 'ryloga78@testy.o2', 1, NULL, '$2y$13$iIxLI/B2xal4IXasndcUtO.FQTnXNOgtGMJ6JQlyqpgeBsvyq2Ira', NULL, NULL, NULL, 'a:0:{}'),
(47, 'epafua', 'epafua', 'epafua.atama@lorem.pl', 'epafua.atama@lorem.pl', 1, NULL, '$2y$13$PPDHvnGI88JDBwdsyj5xxe9faAVl7SIooBwOZkDq5bWr3EIDv9tLO', NULL, NULL, NULL, 'a:0:{}'),
(48, 'uwekej', 'uwekej', 'anea.ty@lorum.tu', 'anea.ty@lorum.tu', 1, NULL, '$2y$13$b.TSUN8ipIhc9LmnPjIXNurFZzweV1Lz84gn8CXfW.usQWgpkG6iu', NULL, NULL, NULL, 'a:0:{}'),
(49, 'afysipa', 'afysipa', 'afysipa.yuyu@ok.pl', 'afysipa.yuyu@ok.pl', 1, NULL, '$2y$13$7uOxwq3a5oizjdJbT/mgOOtamA1eQXg04AVVZ.l5RGWb44f3u0ocK', NULL, NULL, NULL, 'a:0:{}'),
(50, 'fyrugon', 'fyrugon', 'fyrugon.ukulele@malys.com', 'fyrugon.ukulele@malys.com', 1, NULL, '$2y$13$xDPVi4uTSqb/Pe0hM7ro7.Xv.biN5v.SGdcSFyi17YBqhT.bIYpgS', NULL, NULL, NULL, 'a:0:{}'),
(51, 'reaper', 'reaper', 'reaper@onet.pl', 'reaper@onet.pl', 1, NULL, '$2y$13$/Is9s.xs1C20/bEmZi9rROviXfzkcH.CGdxJpQc.Pq4YhGb1sD4tS', '2019-07-29 20:07:11', NULL, NULL, 'a:0:{}'),
(52, 'sonia', 'sonia', 'sonia@wp.pl', 'sonia@wp.pl', 1, NULL, '$2y$13$ihRUCwh1GuIdFU.yO4rC9Ouvg2Mh/tV9gEOYYpg0hK7ewl8mcPFgC', '2019-07-29 20:24:04', NULL, NULL, 'a:0:{}'),
(53, 'corea', 'corea', 'corea@onet.pl', 'corea@onet.pl', 1, NULL, '$2y$13$dmYWDpSJ1xbaC.H4u2wW9u5eB8AdQIDYAydTE5VBOa.Jxj8xq/cqW', '2019-07-29 20:25:47', NULL, NULL, 'a:0:{}'),
(54, 'consis', 'consis', 'consis@override.pl', 'consis@override.pl', 1, NULL, '$2y$13$Xje/7ixiEOldTCKmbpKyTOVDvEm4BgfCs4pQ49C.AtfhaL8PLYgYO', '2019-08-02 22:22:46', NULL, NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190729201032', '2019-07-29 20:10:44'),
('20190729201150', '2019-07-29 20:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire`
--

CREATE TABLE `questionnaire` (
  `id` int(100) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(100) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionnaire`
--

INSERT INTO `questionnaire` (`id`, `username`, `name`, `age`, `date`) VALUES
(1, 'admin', 'Wojciech Kondraciuk', 29, '2019-07-27 04:14:15'),
(2, 'zveqa', 'Mateusz Malinowski', 49, '2019-07-29 14:37:46'),
(3, 'pgavi', 'Sandra Lewicka', 16, '2019-07-29 03:13:09'),
(4, 'ypizk', 'Anna Chmielewska', 13, '2019-07-31 03:06:05'),
(5, 'edasy', 'Bartek Majewski', 23, '2019-07-31 03:13:08'),
(6, 'myrua', 'Jakub Świderski', 25, '2019-08-01 04:08:10'),
(7, 'hzuve', 'Filip Tomaszewski', 18, '2019-08-02 04:04:06'),
(8, 'umoda', 'Weronika Kamińska', 46, '2019-08-03 02:06:06'),
(9, 'ucymb', 'Patrycja Czerwińska', 40, '2019-08-04 02:11:03'),
(10, 'jkuja', 'Nadia Ziółkowska', 14, '2019-08-05 03:04:33'),
(11, 'izata', 'Igor Szymański', 15, '2019-08-06 03:09:06'),
(12, 'hamza', 'Laura Grabowska', 17, '2019-08-07 02:04:03'),
(13, 'gzena', 'Jan Zawadzki', 30, '2019-08-08 03:03:04'),
(14, 'asala', 'Maciej Chmielewski', 63, '2019-08-09 02:04:04'),
(15, 'ecila', 'Aleksandra Szymańska', 20, '2019-08-10 03:06:07'),
(16, 'dvide', 'Kornelia Michalska', 50, '2019-08-11 02:06:06'),
(17, 'hael', 'Aleksandra Krawczyk', 52, '2019-07-15 02:02:17'),
(18, 'nantor', 'Julia Nowicka', 46, '2019-08-13 03:06:13'),
(19, 'cond', 'Maja Nowak', 45, '2019-08-14 02:07:14'),
(20, 'obima', 'Jakub Pietrzak', 13, '2019-08-15 03:04:06'),
(21, 'dmome', 'Kinga Dobrowolska', 18, '2019-07-29 14:37:14'),
(22, 'fqabu', 'Anna Wiśniewska', 36, '2019-08-17 03:04:05'),
(23, 'wcuxi', 'Alicja Szulc', 31, '2019-07-27 18:05:47'),
(24, 'esifo', 'Krystian Czaja', 30, '2019-08-18 02:07:05'),
(25, 'orybn', 'Antonina Sawicka', 33, '2019-08-18 03:07:04'),
(26, 'wevuram', 'Klaudia Ciesielska', 34, '2019-08-19 03:07:07'),
(27, 'ferihur', 'Alicja Kamińska', 49, '2019-08-20 02:04:08'),
(28, 'migelea', 'Bartek Morawski', 48, '2019-08-20 03:05:06'),
(29, 'ehefoha', 'Krzysztof Kasprzyk', 39, '2019-08-21 05:08:06'),
(30, 'pudoqu', 'Wiktoria Borkowska', 25, '2019-08-25 03:04:05'),
(31, 'otyfoa', 'Adam Dąbrowski', 21, '2019-08-25 04:07:12'),
(32, 'taurus', 'Łucja Górska', 33, '2019-08-27 02:07:04'),
(33, 'morgan', 'Andrzej Jakubowski', 34, '2019-08-27 02:04:12'),
(34, 'xiliary', 'Anna Król', 46, '2019-08-28 03:04:06'),
(35, 'kalos', 'Kamil Dudek', 58, '2019-08-29 02:03:15'),
(36, 'ported', 'Marcel Smoliński', 65, '2019-08-30 01:05:07'),
(37, 'redirects', 'Karolina Zawadzka', 26, '2019-08-31 02:06:10'),
(38, 'qudseh', 'Anna Kwiatkowska', 50, '2019-09-01 04:04:29'),
(39, 'entry', 'Nina Czarnecka', 49, '2019-09-01 00:00:00'),
(40, 'desired', 'Weronika Stefańska', 21, '2019-09-02 02:08:05'),
(41, 'charter', 'Stanisław Sowa', 26, '2019-09-03 02:09:14'),
(42, 'bilJohnson', 'Monika Borowska', 32, '2019-09-04 03:03:12'),
(43, 'luwucu', 'Wiktoria Lis', 22, '2019-09-05 03:05:12'),
(44, 'hirury', 'Jakub Głowacki', 22, '2019-09-13 02:06:06'),
(45, 'kafera', 'Damian Kubiak', 24, '2019-09-13 01:09:07'),
(46, 'ryloga', 'Maja Włodarczyk', 24, '2019-09-30 03:05:12'),
(47, 'epafua', 'Zofia Kaczor', 41, '2019-09-20 03:02:08'),
(48, 'uwekej', 'Michał Kaźmierczak', 22, '2019-09-29 02:03:14'),
(49, 'afysipa', 'Dominik Marciniak', 29, '2019-09-21 01:05:19'),
(50, 'fyrugon', 'Jakub Lewandowski', 33, '2019-08-21 03:03:08'),
(51, 'reaper', 'adam nowak', 32, '2019-07-29 18:12:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
