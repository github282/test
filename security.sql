# 选择使用数据库
USE springbootdata;
# 创建表Customer并插入相关数据
DROP TABLE IF EXISTS `Customer`;
CREATE TABLE `Customer` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `Username` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Valid` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `Customer` VALUES ('1', 'shitou', '$2a$10$5ooQI8dir8jv0/gCa1Six.GpzAdIPf6pMqdminZ/3ijYzivCyPlfK', '1');
INSERT INTO `Customer` VALUES ('2', '李四', '$2a$10$5ooQI8dir8jv0/gCa1Six.GpzAdIPf6pMqdminZ/3ijYzivCyPlfK', '1');
# 创建表Authority并插入相关数据
DROP TABLE IF EXISTS `Authority`;
CREATE TABLE `Authority` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `Authority` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO `Authority` VALUES ('1', 'ROLE_common');
INSERT INTO `Authority` VALUES ('2', 'ROLE_vip');
# 创建表Customer_authority并插入相关数据
DROP TABLE IF EXISTS `CustomerAuthority`;
CREATE TABLE `CustomerAuthority` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `CustomerId` int(20) DEFAULT NULL,
  `AuthorityId` int(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO `CustomerAuthority` VALUES ('1', '1', '1');
INSERT INTO `CustomerAuthority` VALUES ('2', '2', '2');

# 记住我功能中创建持久化Token存储的数据表
create table persistent_logins (username varchar(64) not null,
								series varchar(64) primary key,
								token varchar(64) not null,
								last_used timestamp not null);




