-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 Ağu 2023, 14:47:40
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `finalfe`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `carts`
--

CREATE TABLE `carts` (
  `car_id` bigint(20) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `carts`
--

INSERT INTO `carts` (`car_id`, `user_email`) VALUES
(1, 'ayse@mail.com'),
(2, 'ayse@mail.com'),
(3, 'ayse@mail.com'),
(4, 'ayse@mail.com'),
(5, 'ayse@mail.com'),
(6, 'ayse@mail.com'),
(7, 'ayse@mail.com'),
(8, 'ayse@mail.com'),
(9, 'ayse@mail.com'),
(10, 'ayse@mail.com'),
(11, 'ayse@mail.com'),
(12, 'ayse@mail.com'),
(13, 'ayse@mail.com'),
(14, 'ayse@mail.com'),
(15, 'ayse@mail.com'),
(16, 'ayse@mail.com'),
(17, 'ayse@mail.com'),
(18, 'ayse@mail.com'),
(19, 'ayse@mail.com'),
(20, 'ayse@mail.com'),
(21, 'ayse@mail.com'),
(22, 'ahmet@mail.com'),
(23, 'ahmet@mail.com'),
(24, 'ahmet@mail.com'),
(25, 'ahmet@mail.com'),
(26, 'ahmet@mail.com'),
(27, 'ahmet@mail.com'),
(28, 'ahmet@mail.com'),
(29, 'ahmet@mail.com'),
(30, 'ahmet@mail.com'),
(31, 'ahmet@mail.com'),
(32, 'ahmet@mail.com'),
(33, 'ahmet@mail.com'),
(34, 'ahmet@mail.com'),
(35, 'ahmet@mail.com'),
(36, 'ahmet@mail.com'),
(37, 'ahmet@mail.com'),
(38, 'ahmet@mail.com'),
(39, 'ahmet@mail.com'),
(40, 'ahmet@mail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `carts_products`
--

CREATE TABLE `carts_products` (
  `carts_car_id` bigint(20) NOT NULL,
  `products_pid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `carts_products`
--

INSERT INTO `carts_products` (`carts_car_id`, `products_pid`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 2),
(6, 1),
(7, 2),
(8, 1),
(9, 1),
(10, 2),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 2),
(16, 1),
(17, 2),
(18, 1),
(19, 2),
(20, 1),
(21, 2),
(22, 15),
(23, 15),
(24, 1),
(25, 1),
(26, 15),
(27, 1),
(28, 1),
(29, 1),
(30, 2),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 2),
(38, 1),
(39, 2),
(40, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `cid` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`cid`, `name`) VALUES
(2, 'Caravan'),
(3, 'Electric'),
(1, 'Sport');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `images`
--

CREATE TABLE `images` (
  `iid` bigint(20) NOT NULL,
  `pid` bigint(20) NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `images`
--

INSERT INTO `images` (`iid`, `pid`, `images`) VALUES
(1, 1, 'https://www.sertackemiksiz.com/images/2021/10/05/yeni-cadillac-escalade-tanitildi-11_large.jpg'),
(2, 2, 'https://4.bp.blogspot.com/-mlN4dC9Duq4/VpUg9TlqqmI/AAAAAAAArSc/xfZy7cXT5FI/s1600/Nissan%2BTitan%2BWarrior%2B1.jpg'),
(3, 3, 'https://cdn.motor1.com/images/mgl/P33J9G/s3/2022-bmw-3er-limousine.jpg'),
(4, 4, 'https://i0.shbdn.com/photos/69/93/39/x5_1106699339ewu.jpg'),
(5, 5, 'https://upload.wikimedia.org/wikipedia/commons/3/37/98-02_Mazda_Millenia.jpg.com/130x100.png/cc0000/ffffff'),
(6, 6, 'https://www.sertackemiksiz.com/images/2022/02/12/yeni-chevrolet-malibu-tanitildi-11_large.jpg'),
(7, 7, 'http://https://upload.wikimedia.org/wikipedia/commons/8/80/WidebodyStarion.jpg.com/172x100.png/cc0000/ffffff'),
(8, 8, 'https://file.kelleybluebookimages.com/kbb/base/house/1999/1999-Dodge-Ram%202500%20Club%20Cab-Side_DTPUE983_505x353.jpg'),
(9, 9, 'https://www.auto-data.net/images/f103/Saab-9000.jpg'),
(10, 10, 'http://dummyimage.com/247x100.png/ff4444/ffffff'),
(11, 2, 'http://dummyimage.com/247x100.png/ff4444/ffffff'),
(12, 2, 'http://dummyimage.com/105x100.png/ff4444/ffffff'),
(13, 15, 'https://ares.shiftdelete.net/2023/07/tesla-model-3-1.jpeg'),
(14, 15, 'https://arabam-blog.mncdn.com/wp-content/uploads/2022/06/5edf9f83a0208.jpg'),
(15, 13, 'https://www.donanimhaber.com/images/images/haber/147174/1400x1400ford-mondeo-nun-uretimi-sona-erdi.jpg'),
(16, 5, 'https://cdn.motor1.com/images/mgl/6WXLE/s1/2019-mazda-mx-5-miata-30th-anniversary-soft-top-01.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `pid` bigint(20) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `price` int(11) NOT NULL,
  `thumbnail` varchar(300) NOT NULL,
  `title` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`pid`, `detail`, `price`, `thumbnail`, `title`) VALUES
(1, 'Fleetwood', 773, 'https://www.sertackemiksiz.com/images/2021/10/05/yeni-cadillac-escalade-tanitildi-11_large.jpg', 'Cadillac'),
(2, 'Titan', 917, 'https://4.bp.blogspot.com/-mlN4dC9Duq4/VpUg9TlqqmI/AAAAAAAArSc/xfZy7cXT5FI/s1600/Nissan%2BTitan%2BWarrior%2B1.jpg', 'Nissan'),
(3, '3 Series', 552, 'https://cdn.motor1.com/images/mgl/P33J9G/s3/2022-bmw-3er-limousine.jpg', 'BMW'),
(4, 'Elantra', 670, 'https://i0.shbdn.com/photos/69/93/39/x5_1106699339ewu.jpg', 'Hyundai'),
(5, 'Millenia', 896, 'https://cdn.motor1.com/images/mgl/6WXLE/s1/2019-mazda-mx-5-miata-30th-anniversary-soft-top-01.jpg', 'Mazda'),
(6, 'Malibu', 948, 'https://upload.wikimedia.org/wikipedia/commons/0/01/2019_Chevrolet_Malibu_%28facelift%29_LT%2C_front_10.19.19.jpg', 'Chevrolet'),
(7, 'Starion', 530, 'https://upload.wikimedia.org/wikipedia/commons/8/80/WidebodyStarion.jpg', 'Mitsubishi'),
(8, 'Ram 2500 Club', 587, 'https://file.kelleybluebookimages.com/kbb/base/house/1999/1999-Dodge-Ram%202500%20Club%20Cab-Side_DTPUE983_505x353.jpg', 'Dodge'),
(9, '9000', 851, 'https://www.auto-data.net/images/f103/Saab-9000.jpg', 'Saab'),
(10, 'Viper', 696, 'https://file.kelleybluebookimages.com/kbb/base/house/1999/1999-Dodge-Ram%202500%20Club%20Cab-Side_DTPUE983_505x353.jpg', 'Dodge'),
(11, 'Focus', 750, 'https://cdn.ototeknikveri.com/Files/News/Big/ford-focus-sport-gorsel-degisikliklerle-essende.jpg', 'Ford'),
(12, 'Titan', 650, 'https://cdn.ototeknikveri.com/Files/News/Big/ford-focus-sport-gorsel-degisikliklerle-essende.jpg', 'Ford'),
(13, 'Mondeo', 650, 'https://www.donanimhaber.com/images/images/haber/147174/1400x1400ford-mondeo-nun-uretimi-sona-erdi.jpg', 'Ford'),
(14, 'Leon', 950, 'https://i2.milimaj.com/i/milliyet/75/869x477/60099ace554284233cb3a5e1.jpg', 'Seat'),
(15, 'Model 3', 950, 'https://ares.shiftdelete.net/2023/07/tesla-model-3-1.jpeg', 'Tesla');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_categories`
--

CREATE TABLE `product_categories` (
  `product_pid` bigint(20) NOT NULL,
  `categories_cid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `product_categories`
--

INSERT INTO `product_categories` (`product_pid`, `categories_cid`) VALUES
(1, 1),
(2, 2),
(3, 3),
(13, 1),
(14, 1),
(15, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role`
--

CREATE TABLE `role` (
  `rid` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `role`
--

INSERT INTO `role` (`rid`, `name`) VALUES
(1, 'user'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `uid` bigint(20) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `surname` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`uid`, `age`, `email`, `name`, `password`, `surname`) VALUES
(1, 30, 'can@mail.com', 'can', '$2a$10$UfVBUO1s8NC92pagZCwUueJChoJje/dJSUWrlP4Jw3uWnJtqPmtu6', 'akbo'),
(2, 29, 'ayse@mail.com', 'ayse', '$2a$10$2lh5lP7dZtmLuIYEwbc8EOjrO1e41lZzUex.M8IR28XsDDR9pikqu', 'akboy'),
(3, 30, 'ayse23@mail.com', 'Ayse', '$2a$10$QKz8x7FrtHCAhWcQIRhr.u8bJdwtEQ5o8U4h2cM6o3bpg84TBDWeG', 'Akboyraz'),
(5, 30, 'can23@mail.com', 'Ayse', '$2a$10$1GjoDQvLuhcGVLpawjvHqul9Byr35xfcfxwNYbvyk19G8KgoUjStC', 'Akboyraz'),
(7, 30, 'ali@mail.com', 'Ali', '$2a$10$pKM/dggfY7y8vVi2aZ.jieZN7eDEhLZSaoz.BfDDtDUAEpo56unGm', 'Akboyraz'),
(8, 30, 'ahmet@mail.com', 'Ali', '$2a$10$np3Exx15GqsZEDo4UfgUxOsbzRdZPcTlLnNfLfx7GzfKX8.WnL2AC', 'Akboyraz');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_roles`
--

CREATE TABLE `user_roles` (
  `user_uid` bigint(20) NOT NULL,
  `roles_rid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `user_roles`
--

INSERT INTO `user_roles` (`user_uid`, `roles_rid`) VALUES
(1, 1),
(2, 2),
(7, 1),
(8, 2);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`car_id`);

--
-- Tablo için indeksler `carts_products`
--
ALTER TABLE `carts_products`
  ADD KEY `FKd374wvkyu2a6vfsdeeghal3f5` (`products_pid`),
  ADD KEY `FKfrwowhh42mubw6nfptcvcum8t` (`carts_car_id`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `UK_46ccwnsi9409t36lurvtyljak` (`name`);

--
-- Tablo için indeksler `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `FKrxyqoxq9pdxkhu7dhcy5jgtgj` (`pid`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Tablo için indeksler `product_categories`
--
ALTER TABLE `product_categories`
  ADD KEY `FK69oreiy9bgyp9clgw8shmbnij` (`categories_cid`),
  ADD KEY `FKs9rh239b5veog2gg77bfmdyj7` (`product_pid`);

--
-- Tablo için indeksler `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`rid`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- Tablo için indeksler `user_roles`
--
ALTER TABLE `user_roles`
  ADD KEY `FKp6taepjm8nbj4doesmj3uj5jy` (`roles_rid`),
  ADD KEY `FKsk35kye23trjmxl5owaoly5y8` (`user_uid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `carts`
--
ALTER TABLE `carts`
  MODIFY `car_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `cid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `images`
--
ALTER TABLE `images`
  MODIFY `iid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `role`
--
ALTER TABLE `role`
  MODIFY `rid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `uid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `carts_products`
--
ALTER TABLE `carts_products`
  ADD CONSTRAINT `FKd374wvkyu2a6vfsdeeghal3f5` FOREIGN KEY (`products_pid`) REFERENCES `product` (`pid`),
  ADD CONSTRAINT `FKfrwowhh42mubw6nfptcvcum8t` FOREIGN KEY (`carts_car_id`) REFERENCES `carts` (`car_id`);

--
-- Tablo kısıtlamaları `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FKrxyqoxq9pdxkhu7dhcy5jgtgj` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`);

--
-- Tablo kısıtlamaları `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `FK69oreiy9bgyp9clgw8shmbnij` FOREIGN KEY (`categories_cid`) REFERENCES `category` (`cid`),
  ADD CONSTRAINT `FKs9rh239b5veog2gg77bfmdyj7` FOREIGN KEY (`product_pid`) REFERENCES `product` (`pid`);

--
-- Tablo kısıtlamaları `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKp6taepjm8nbj4doesmj3uj5jy` FOREIGN KEY (`roles_rid`) REFERENCES `role` (`rid`),
  ADD CONSTRAINT `FKsk35kye23trjmxl5owaoly5y8` FOREIGN KEY (`user_uid`) REFERENCES `user` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
