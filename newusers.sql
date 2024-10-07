-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 07. 12:16
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `users`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `newusers`
--

CREATE TABLE `newusers` (
  `Id` char(36) NOT NULL,
  `Name` longtext NOT NULL,
  `Age` int(11) NOT NULL,
  `License` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `newusers`
--

INSERT INTO `newusers` (`Id`, `Name`, `Age`, `License`) VALUES
('00d09c53-5eaa-420d-bada-302d88238d6d', 'Prentiss Colleymore', 42, 1),
('056a902b-6240-4118-b475-ef46965ae971', 'Ahmed Gaitung', 39, 1),
('0cdd1ae4-3f59-4572-b599-eecbd026998d', 'Gustaf Baccup', 55, 1),
('109c8010-8b4b-4125-916f-1d476b1ec24c', 'Esma Dafydd', 21, 0),
('13cd4f9b-2668-4e2c-af1e-6df995d102d9', 'Brittne Govenlock', 1, 0),
('14e0ef08-cae9-4fb5-af2e-229b6bf32ab6', 'Inga Longo', 16, 0),
('1826e63c-dc52-4b8f-9ac0-cdc5a55d686c', 'Mallorie Northill', 10, 1),
('19306517-8c75-44b7-8260-867d491e9979', 'Margy McGrory', 66, 0),
('19ff8a43-a730-40d5-b0a8-d223fb75e3dc', 'Ilyse Ody', 87, 1),
('1cd1d129-ba7f-43c5-a2ea-d2b4973a6e34', 'Dusty Dagwell', 92, 0),
('1ed4529a-df93-45a1-86e5-15531fec3aa0', 'Fleur Cowderay', 78, 0),
('201efe39-65c1-4a0b-b215-70623acabde5', 'Albertina Stockbridge', 99, 0),
('20ddf820-b884-4064-9fe5-ba6098c790ad', 'Sunshine Tuckwood', 57, 0),
('243d0df9-2c63-433c-94ec-5093f4ab3786', 'Carlotta MacGraith', 65, 1),
('254ee9e3-ad29-4885-81e1-e9e173948e4b', 'Joleen Jagoe', 19, 0),
('27f84e57-a8c1-4c4f-937b-a52f98f00864', 'Godfree Chevis', 32, 0),
('3072b756-a8e3-4280-8319-ec11b6f06387', 'Leonardo Bielfelt', 46, 1),
('3536fe25-7bf8-4e77-9bb9-9064f24d5702', 'Trace Arkcoll', 37, 1),
('38c17660-68e5-4828-b57d-c8d4e4b5ecb5', 'Sasha Brasner', 69, 0),
('430e5054-9c74-407f-9a77-3fea8353af18', 'Suzanna Hadlow', 4, 1),
('445be14c-6a4b-4bdd-9081-f7e51bdb3751', 'Binny Tricker', 44, 1),
('45d9934b-a8cc-47b7-934e-10ad872ec2f7', 'Obie Boodell', 53, 0),
('46959772-6b8f-4d08-9579-749c2d6248d4', 'Tucky Carnduff', 78, 0),
('482bc1ae-bab3-4377-a613-a2802c997e87', 'Rafaela Bleasby', 26, 0),
('4cdbfc32-de55-4c98-8f41-02f5cecc900b', 'Kailey Inde', 18, 0),
('4d0f06d3-a4d4-4ef5-93bb-7eeeb5016954', 'Lewes Coster', 50, 1),
('4e04cad9-e3e0-44fa-a5ee-a7ab8cc8fc52', 'Carlynne Fley', 43, 0),
('4efd50f7-c7d2-4b3c-b443-691d522b8031', 'Karia O\'Fallowne', 31, 1),
('4fc93817-d8d0-43b5-996c-89b27ae43d3b', 'Abby Mighele', 89, 0),
('53939432-0bf9-40db-9ed0-9940984d1f1d', 'Lambert Folcarelli', 1, 0),
('53a3e21f-2eb1-4eef-bdd3-ce6cb06b95eb', 'Brennan Buer', 71, 0),
('55400385-2071-4497-9c39-55a6ca7f2252', 'Lilith Gonsalvo', 51, 1),
('55aeb9d2-52f5-407c-8bc4-7a8378aadf2b', 'De witt Senton', 94, 0),
('58178546-46db-435e-acb0-d15614a47983', 'Rebe Gebbe', 98, 0),
('5bd0cd35-0cbf-4b37-8929-e1982c0da381', 'Ginni McIndrew', 46, 0),
('5d6dc791-b56e-4396-99c3-fd3f390550d8', 'Gallard McNirlan', 40, 0),
('5e56ddf5-d3bf-4f0e-800e-58664a2036f0', 'Chiarra Crockett', 13, 1),
('617a83ce-9289-43e9-af66-8efb9fc22064', 'Larine Fuggles', 64, 0),
('61de0427-c1f7-4cfe-8131-1cf5191dea1f', 'Malvina Tiller', 42, 1),
('6265b88d-f7db-4896-aecc-3608864b9c20', 'Gerick Jelkes', 6, 0),
('635ad511-49b8-4e81-b1b9-3a533f31c4f6', 'Orin Tythe', 38, 1),
('63682af5-9107-44e4-9ae3-ba633e92a173', 'Vittorio Hargey', 56, 1),
('64e60c72-2968-432f-8259-694e6b15e0dd', 'Adelaida Acton', 22, 1),
('64f50f78-5c1d-4726-a4c4-28ea0cb94786', 'Beulah Haydon', 27, 0),
('66ba59dd-d702-4dc4-adf7-b1376a8e8a4c', 'Halie Berrey', 22, 1),
('6dcd35c5-6974-4ff2-846d-c5574283c697', 'Jacques De Micoli', 1, 1),
('702095f2-d011-4c9e-bb62-419c3eaa379b', 'Martguerita Ramos', 77, 0),
('7226dd5a-044e-45d3-963f-e7caf048a351', 'Mohandis Porteous', 84, 0),
('758835c2-05b5-4f68-977a-15381f1c8cce', 'Taffy Copeland', 85, 0),
('75cea4e1-e68e-47ab-a684-d04ad959adfe', 'Sibyl Seamons', 20, 0),
('78353b5e-3391-4c2d-a4f8-adfdedc33d86', 'Benetta Routh', 64, 1),
('786cd5b4-722e-4845-8816-acf2ca3cef1f', 'Onofredo Almack', 14, 0),
('7d4bdbd3-0abe-48a0-8971-c2901621af89', 'Kriste Doll', 86, 0),
('7ef7f127-222e-4864-9732-4edb80da0d81', 'Rodie Garner', 2, 1),
('7f884cda-9d88-4d9d-9520-9bd8fe638d1c', 'Etheline Gormally', 58, 1),
('81e75137-69f4-4dca-8730-1e22a8adc3e3', 'Maribelle Lockier', 41, 1),
('83225149-fed8-41d2-a488-21a167d50ea9', 'Angelle Purchon', 55, 1),
('850177bb-7231-41cc-906c-4b59bc15b519', 'Pasquale Popley', 86, 0),
('862ff8b1-5795-4080-be9f-cd3c898d2c53', 'Mignon Dallan', 60, 1),
('86c56c64-94ba-408a-b486-8c3d966540d5', 'Faythe Melbourne', 71, 1),
('8adc604a-5ae5-41bc-8648-44983e004fde', 'Katrinka Bowe', 51, 1),
('8af70884-6bb7-4efe-aff9-c2c0e5988f52', 'Drona Occleshaw', 20, 0),
('8fa1244f-e0ba-4da1-80a9-5995a897a7e2', 'Michaeline Mattevi', 66, 0),
('9645b271-d4af-42a0-9650-2f84e42a418a', 'Caz Whiff', 69, 1),
('9921ddd9-bf2b-4005-b7ac-570c81c57469', 'Clementius Dalgetty', 93, 1),
('9c6ba03f-f129-4d32-816e-4e13cdbe5e48', 'Florence Pagnin', 61, 1),
('9e8c3ed4-1e53-42da-9352-fff98262a48d', 'Elmira Kondratenya', 80, 1),
('a4746595-e030-4c74-9e49-adc3a1bb8ce9', 'Bruno Deackes', 68, 0),
('aa894731-3f35-4d56-b3e3-65013c40c5c1', 'Florentia Babin', 36, 1),
('ab9b606e-9ea1-454e-961c-af3d0d2bca8f', 'Lizzy Farnhill', 25, 1),
('ad3225bd-aac9-45ce-9bdd-bfc61d17ea0e', 'Chelsy Twort', 58, 0),
('b1b6195c-b216-4ddf-953e-a8c923e5770e', 'Mayor Iredale', 14, 0),
('b3e31dc1-2ef1-4df3-9968-7d7eb6187f63', 'Quint Thulborn', 18, 1),
('b6dc641c-5442-415a-9bbc-4d573e676a99', 'Art Betteney', 97, 1),
('b74a3314-ff84-4213-ac7e-6c483d9285c1', 'Taddeusz Bitten', 45, 1),
('bbec244a-4010-449d-abcc-a87fa60f1ab0', 'Arielle Bowne', 6, 1),
('bdde6138-5850-495c-b001-acf032762d83', 'Tabby Hargrove', 72, 0),
('bfe127bb-7f1d-447a-af5a-2ee4b68c8cc1', 'Sutherland Danneil', 3, 0),
('c3957457-9a76-4b4b-be4e-566a733fec66', 'Jesselyn Boden', 90, 0),
('c49caaa2-cb96-4a78-bef4-06c499bc0c01', 'Rex Roubert', 32, 0),
('ca361f14-f158-430d-b76b-9a3d8fd30df9', 'Teresina Jewsbury', 67, 0),
('ce111031-21bd-493b-b4f8-72b60de85d2a', 'Birgit Stockley', 51, 0),
('d28d3782-43ae-4a68-b78b-e913f5c234af', 'Vince Leavey', 27, 0),
('dddd8d9d-8a72-439e-9261-af9b973882c5', 'Jodie Youel', 65, 1),
('de0535db-d6e6-482a-935e-8f207e1d6e81', 'Jeth Rigate', 64, 1),
('e29c8c48-e83c-4546-8da7-74daa1eb8ae4', 'Teddie Swafield', 30, 1),
('e2b1946e-d3c5-4838-bb9c-75b8d4b076c7', 'Hercules Astin', 84, 1),
('e8be9f86-4ecf-4ece-b600-2606aaf48625', 'Bruno Arlt', 80, 1),
('e9626540-eeed-4da3-bf15-9cd47fee796a', 'Catlin Moakes', 10, 0),
('ead7cc49-2bbd-44a7-bf2b-33a77a0a2336', 'Tonie Proven', 37, 1),
('eb9c9c27-cf67-47f1-869b-1f1fa9108f1f', 'Candide Shouler', 51, 1),
('ebedb5ae-3042-456d-ab5c-880f81f1ee8a', 'Marney Wolfendell', 24, 1),
('eeaae405-292d-4f36-87ec-3fa083b8853f', 'Mina Pelman', 68, 0),
('f0119a5e-4e40-4d9b-8751-84a759814d9e', 'Gabriello Durrell', 12, 0),
('f4447bb5-aa68-4b50-a0b2-64c49ba9bd3b', 'Britt Rycraft', 29, 1),
('f63701f5-ca41-4dcc-8e97-46ba8e3985e6', 'Micky Calven', 2, 0),
('f6b686bd-69ab-430f-ae19-3ef8fc948345', 'Meridith Tullis', 20, 1),
('f6e8618b-0028-49b5-9abd-9cfa0ca99780', 'Leshia Lyttle', 85, 0),
('f7c1cf68-477e-435e-a56f-54f1d3abcff0', 'Rowland MacGuiness', 31, 0),
('fb54c611-2265-4391-a4ec-5afd4c8c896b', 'Ronnie Daltry', 65, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20241007100602_Initial', '8.0.8');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `newusers`
--
ALTER TABLE `newusers`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
