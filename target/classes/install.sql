CREATE database IF NOT EXISTS `visualplan`;
USE visualplan;
drop table if exists `usert`;
drop table if exists `plan`;


CREATE TABLE `usert`(
	`id` INT PRIMARY KEY,
	`username` VARCHAR(10) NOT NULL,
	`password` VARCHAR(20) NOT NULL,
	`phoneNo` VARCHAR(15),
	`email` VARCHAR(20)
);

CREATE TABLE `plan`(
	`id` INT PRIMARY KEY,
	`release_time` DATE NOT NULL,
	`start_time` DATETIME,
	`end_time` DATETIME,
	`status` INT NOT NULL,
	`content` VARCHAR(200) NOT NULL,
	`userId` INT NOT NULL,
	FOREIGN KEY(`userId`) REFERENCES usert(`id`)
)