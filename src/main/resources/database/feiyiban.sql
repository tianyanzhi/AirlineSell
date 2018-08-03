CREATE TABLE `user` (
`id` int(5) NOT NULL AUTO_INCREMENT,
`accountname` varchar(50) NOT NULL,
`password` varchar(20) NOT NULL,
`points` int(10) NOT NULL,
`accounttype` int(2) NOT NULL,
`name` varchar(50) NOT NULL,
`sex` int(2) NOT NULL,
`phone` int(11) NOT NULL,
`email` varchar(50) NOT NULL,
`idnumber` int(20) NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `admin` (
`id` int(5) NOT NULL AUTO_INCREMENT,
`accountname` varchar(50) NOT NULL,
`password` varchar(20) NOT NULL,
`authority` int(2) NOT NULL,
`name` varchar(50) NOT NULL,
`sex` int(2) NOT NULL,
`phone` int(11) NOT NULL,
`eamli` varchar(50) NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `userinfo` (
`id` int(5) NOT NULL AUTO_INCREMENT,
`user_id` int(5) NOT NULL,
`name` varchar(50) NOT NULL,
`sex` int(2) NOT NULL,
`phone` int(11) NOT NULL,
`email` varchar(50) NOT NULL,
`idnumber` int(20) NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `airlinecompany` (
`id` int(5) NOT NULL AUTO_INCREMENT,
`name` varchar(50) NOT NULL,
`companycode` int(10) NOT NULL,
`addres` varchar(50) NOT NULL,
`website` varchar(100) NOT NULL,
`phone` int(11) NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `flightinfo` (
`id` int(5) NOT NULL AUTO_INCREMENT,
`flightnumber` int(15) NOT NULL,
`airplanetype_id` int(5) NOT NULL,
`airlinecompany_id` int(5) NOT NULL,
`start` varchar(50) NOT NULL,
`end` varchar(50) NOT NULL,
`starttime` date NOT NULL,
`endtime` date NOT NULL,
`firstprice` int(10) NOT NULL,
`businessprice` int(10) NOT NULL,
`economyprice` int(10) NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `airplanetype` (
`id` int(5) NOT NULL AUTO_INCREMENT,
`name` varchar(50) NOT NULL,
`firstnum` int(5) NOT NULL,
`businessnum` int(5) NOT NULL,
`economynum` int(5) NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `orders` (
`id` int(5) NOT NULL AUTO_INCREMENT,
`user_id` int(5) NOT NULL,
`flightinfo_id` int(5) NOT NULL,
`userinfo_id` int(5) NOT NULL,
`price` double NOT NULL,
`status` int(5) NOT NULL,
`genetime` datetime NULL ON UPDATE CURRENT_TIMESTAMP,
`printtime` datetime NULL ON UPDATE CURRENT_TIMESTAMP,
`returntime` datetime NULL ON UPDATE CURRENT_TIMESTAMP,
`paytime` datetime NULL ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`id`) 
);
CREATE TABLE `discount` (
`id` int(5) NOT NULL AUTO_INCREMENT,
`accounttype` int(2) NOT NULL,
`cut` double(10,2) NOT NULL,
PRIMARY KEY (`id`) 
);

ALTER TABLE `userinfo` ADD CONSTRAINT `FK_user_relation` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `flightinfo` ADD CONSTRAINT `FK_flightinfo1` FOREIGN KEY (`airplanetype_id`) REFERENCES `airplanetype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `flightinfo` ADD CONSTRAINT `FK_flightinfo2` FOREIGN KEY (`airlinecompany_id`) REFERENCES `airlinecompany` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `orders` ADD CONSTRAINT `FK_orders1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `orders` ADD CONSTRAINT `FK_orders2` FOREIGN KEY (`flightinfo_id`) REFERENCES `flightinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `orders` ADD CONSTRAINT `FK_orders3` FOREIGN KEY (`userinfo_id`) REFERENCES `userinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

