/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanzhaopin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanzhaopin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanzhaopin`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1和都是水电费和','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (17,'sex_types','性别',1,'男',NULL,NULL,'2023-04-27 09:28:51'),(18,'sex_types','性别',2,'女',NULL,NULL,'2023-04-27 09:28:51'),(19,'yonghu_zhuangtai_types','用户状态',1,'未就业',NULL,NULL,'2023-04-27 09:28:51'),(20,'yonghu_zhuangtai_types','用户状态',2,'已就业',NULL,NULL,'2023-04-27 09:28:51'),(21,'jianli_types','求职意向',1,'求职意向1',NULL,NULL,'2023-04-27 09:28:51'),(22,'jianli_types','求职意向',2,'求职意向2',NULL,NULL,'2023-04-27 09:28:51'),(23,'jianli_types','求职意向',3,'求职意向3',NULL,NULL,'2023-04-27 09:28:51'),(24,'zhaopin_toudi_yesno_types','审核状态',1,'待审核',NULL,NULL,'2023-04-27 09:28:51'),(25,'zhaopin_toudi_yesno_types','审核状态',2,'通过',NULL,NULL,'2023-04-27 09:28:51'),(26,'zhaopin_toudi_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2023-04-27 09:28:51'),(27,'zhaopin_toudi_jieguo_types','结果',1,'不录取',NULL,NULL,'2023-04-27 09:28:51'),(28,'zhaopin_toudi_jieguo_types','结果',2,'录取',NULL,NULL,'2023-04-27 09:28:51'),(29,'qiye_types','企业类型',1,'企业类型1',NULL,NULL,'2023-04-27 09:28:51'),(30,'qiye_types','企业类型',2,'企业类型2',NULL,NULL,'2023-04-27 09:28:51'),(31,'qiye_types','企业类型',3,'企业类型3',NULL,NULL,'2023-04-27 09:28:51'),(32,'zhaopin_yesno_types','审核状态',1,'待审核',NULL,NULL,'2023-04-27 09:28:51'),(33,'zhaopin_yesno_types','审核状态',2,'通过',NULL,NULL,'2023-04-27 09:28:51'),(34,'zhaopin_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2023-04-27 09:28:51'),(35,'shangxia_types','是否上架',1,'上架',NULL,NULL,'2023-04-27 09:28:52'),(36,'shangxia_types','是否上架',2,'下架',NULL,NULL,'2023-04-27 09:28:52'),(37,'zhaopin_types','招聘岗位',1,'招聘岗位1',NULL,NULL,'2023-04-27 09:28:52'),(38,'zhaopin_types','招聘岗位',2,'招聘岗位2',NULL,NULL,'2023-04-27 09:28:52'),(39,'zhaopin_types','招聘岗位',3,'招聘岗位3',NULL,NULL,'2023-04-27 09:28:52'),(40,'zhaopin_chat_types','数据类型',1,'问题',NULL,NULL,'2023-04-27 09:28:52'),(41,'zhaopin_chat_types','数据类型',2,'回复',NULL,NULL,'2023-04-27 09:28:52'),(42,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-04-27 09:28:52'),(43,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-04-27 09:28:52'),(44,'zhaopin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-27 09:28:52'),(45,'gonggao_types','公告类型',1,'招聘公告',NULL,NULL,'2023-04-27 09:28:52'),(46,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-27 09:28:52'),(47,'gonggao_types','公告类型',3,'公告类型1',NULL,NULL,'2023-04-27 09:28:52'),(48,'zhaopin_types','招聘岗位',4,'招聘岗位5',NULL,'','2023-04-27 10:45:58');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',3,'2023-04-27 09:30:54','公告详情1','2023-04-27 09:30:54'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-04-27 09:30:54','公告详情2','2023-04-27 09:30:54'),(3,'公告名称3','upload/gonggao3.jpg',3,'2023-04-27 09:30:54','公告详情3','2023-04-27 09:30:54'),(4,'公告名称4','upload/gonggao4.jpg',3,'2023-04-27 09:30:54','公告详情4','2023-04-27 09:30:54'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-04-27 09:30:54','公告详情5','2023-04-27 09:30:54'),(6,'公告名称6','upload/gonggao6.jpg',3,'2023-04-27 09:30:54','公告详情6','2023-04-27 09:30:54'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-27 09:30:54','公告详情7','2023-04-27 09:30:54'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-27 09:30:54','公告详情8','2023-04-27 09:30:54'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-04-27 09:30:54','公告详情9','2023-04-27 09:30:54'),(10,'公告名称10','upload/gonggao10.jpg',3,'2023-04-27 09:30:54','公告详情10','2023-04-27 09:30:54'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-04-27 09:30:54','公告详情11','2023-04-27 09:30:54'),(12,'公告名称12','upload/gonggao12.jpg',3,'2023-04-27 09:30:54','公告详情12','2023-04-27 09:30:54'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-04-27 09:30:54','公告详情13','2023-04-27 09:30:54'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-04-27 09:30:54','公告详情14','2023-04-27 09:30:54');

/*Table structure for table `jianli` */

DROP TABLE IF EXISTS `jianli`;

CREATE TABLE `jianli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jianli_uuid_number` varchar(200) DEFAULT NULL COMMENT '简历唯一编号 ',
  `jianli_name` varchar(200) DEFAULT NULL COMMENT '简历标题',
  `jianli_xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jianli_types` int(11) DEFAULT NULL COMMENT '求职意向 Search111',
  `jianli_xinzi` varchar(200) DEFAULT NULL COMMENT '期望工资 Search111',
  `jianli_xueli` varchar(200) DEFAULT NULL COMMENT '学历 Search111',
  `jianli_jingli` varchar(200) DEFAULT NULL COMMENT '工作经历 Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jianli_file` varchar(200) DEFAULT NULL COMMENT '简历文件',
  `jianli_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jianli_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jianli_address` varchar(200) DEFAULT NULL COMMENT '现在位置',
  `jiaoyu_text` text COMMENT '教育经历',
  `shixi_text` text COMMENT '实习或工作经历',
  `geren_text` text COMMENT '个人介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='简历';

/*Data for the table `jianli` */

insert  into `jianli`(`id`,`yonghu_id`,`jianli_uuid_number`,`jianli_name`,`jianli_xingming`,`jianli_types`,`jianli_xinzi`,`jianli_xueli`,`jianli_jingli`,`sex_types`,`jianli_file`,`jianli_phone`,`jianli_photo`,`jianli_address`,`jiaoyu_text`,`shixi_text`,`geren_text`,`create_time`) values (1,1,'1682559054842','简历标题1','姓名1',3,'期望工资1','学历1','工作经历1',2,'upload/file.rar','17703786901','upload/jianli1.jpg','现在位置1','教育经历1','实习或工作经历1','个人介绍1','2023-04-27 09:30:54'),(2,1,'1682559054881','简历标题2','姓名2',1,'期望工资2','学历2','工作经历2',1,'upload/file.rar','17703786902','upload/jianli2.jpg','现在位置2','教育经历2','实习或工作经历2','个人介绍2','2023-04-27 09:30:54'),(3,1,'1682559054803','简历标题3','姓名3',1,'期望工资3','学历3','工作经历3',2,'upload/file.rar','17703786903','upload/jianli3.jpg','现在位置3','教育经历3','实习或工作经历3','个人介绍3','2023-04-27 09:30:54'),(4,1,'1682559054874','简历标题4','姓名4',3,'期望工资4','学历4','工作经历4',2,'upload/file.rar','17703786904','upload/jianli4.jpg','现在位置4','教育经历4','实习或工作经历4','个人介绍4','2023-04-27 09:30:54'),(5,2,'1682559054866','简历标题5','姓名5',3,'期望工资5','学历5','工作经历5',1,'upload/file.rar','17703786905','upload/jianli5.jpg','现在位置5','教育经历5','实习或工作经历5','个人介绍5','2023-04-27 09:30:54'),(6,3,'1682559054796','简历标题6','姓名6',1,'期望工资6','学历6','工作经历6',1,'upload/file.rar','17703786906','upload/jianli6.jpg','现在位置6','教育经历6','实习或工作经历6','个人介绍6','2023-04-27 09:30:54'),(7,2,'1682559054838','简历标题7','姓名7',2,'期望工资7','学历7','工作经历7',1,'upload/file.rar','17703786907','upload/jianli7.jpg','现在位置7','教育经历7','实习或工作经历7','个人介绍7','2023-04-27 09:30:54'),(8,3,'1682559054861','简历标题8','姓名8',3,'期望工资8','学历8','工作经历8',2,'upload/file.rar','17703786908','upload/jianli8.jpg','现在位置8','教育经历8','实习或工作经历8','个人介绍8','2023-04-27 09:30:54'),(9,3,'1682559054834','简历标题9','姓名9',3,'期望工资9','学历9','工作经历9',1,'upload/file.rar','17703786909','upload/jianli9.jpg','现在位置9','教育经历9','实习或工作经历9','个人介绍9','2023-04-27 09:30:54'),(10,1,'1682559054789','简历标题10','姓名10',3,'期望工资10','学历10','工作经历10',1,'upload/file.rar','17703786910','upload/jianli10.jpg','现在位置10','教育经历10','实习或工作经历10','个人介绍10','2023-04-27 09:30:54'),(11,2,'1682559054817','简历标题11','姓名11',3,'期望工资11','学历11','工作经历11',1,'upload/file.rar','17703786911','upload/jianli11.jpg','现在位置11','教育经历11','实习或工作经历11','个人介绍11','2023-04-27 09:30:54'),(12,1,'1682559054843','简历标题12','姓名12',3,'期望工资12','学历12','工作经历12',2,'upload/file.rar','17703786912','upload/jianli12.jpg','现在位置12','教育经历12','实习或工作经历12','个人介绍12','2023-04-27 09:30:54'),(13,3,'1682559054825','简历标题13','姓名13',1,'期望工资13','学历13','工作经历13',1,'upload/file.rar','17703786913','upload/jianli13.jpg','现在位置13','教育经历13','实习或工作经历13','个人介绍13','2023-04-27 09:30:54'),(14,3,'1682559054849','简历标题14','姓名14',3,'期望工资14','学历14','工作经历14',2,'upload/file.rar','17703786914','upload/jianli14.jpg','现在位置14','教育经历14','实习或工作经历14','个人介绍14','2023-04-27 09:30:54'),(15,8,'1682563192727','简历1111','张三',2,'5000','本科','14534153个第三个第三个',1,'upload/1682563210887.doc','17788885555','upload/1682563218184.jpg','位置i1111','还记得涣发大号','加工费加工费借古讽今','加快看看扩扩扩','2023-04-27 10:40:29');

/*Table structure for table `qiye` */

DROP TABLE IF EXISTS `qiye`;

CREATE TABLE `qiye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `qiye_name` varchar(200) DEFAULT NULL COMMENT '企业名称 Search111 ',
  `qiye_types` int(11) DEFAULT NULL COMMENT '企业类型',
  `qiye_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiye_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `qiye_photo` varchar(200) DEFAULT NULL COMMENT '企业logo',
  `qiye_guimo` varchar(200) DEFAULT NULL COMMENT '规模',
  `qiye_chenglishijian_time` timestamp NULL DEFAULT NULL COMMENT '企业成立时间',
  `qiye_content` text COMMENT '企业介绍',
  `qiye_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `qiye` */

insert  into `qiye`(`id`,`username`,`password`,`qiye_name`,`qiye_types`,`qiye_phone`,`qiye_email`,`qiye_photo`,`qiye_guimo`,`qiye_chenglishijian_time`,`qiye_content`,`qiye_delete`,`create_time`) values (1,'a1','123456','企业名称1',1,'17703786901','1@qq.com','upload/qiye1.jpg','规模1','2023-04-27 09:30:54','<p>企业介绍1哈哈哈哈</p>',1,'2023-04-27 09:30:54'),(2,'a2','123456','企业名称2',2,'17703786902','2@qq.com','upload/qiye2.jpg','规模2','2023-04-27 09:30:54','企业介绍2',1,'2023-04-27 09:30:54'),(3,'a3','123456','企业名称3',3,'17703786903','3@qq.com','upload/qiye3.jpg','规模3','2023-04-27 09:30:54','企业介绍3',1,'2023-04-27 09:30:54');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','eos030nldttbz0ye04yekwn4r99i7mbl','2023-04-27 09:43:05','2023-04-27 11:48:17'),(2,1,'a1','yonghu','用户','1shnzsjfqycffx82fgifkvdxyzxyvu6j','2023-04-27 10:10:01','2023-04-27 11:37:45'),(3,1,'a1','qiye','企业','a19vllv9rt01m1nkcx7z5kjx7femccs1','2023-04-27 10:21:15','2023-04-27 11:43:29'),(4,8,'a10','yonghu','用户','rsw7qgtikbudua3jy0uf719quaug969t','2023-04-27 10:38:43','2023-04-27 11:39:29'),(5,1,'a1','xuexiaorenyuan','学校人员','iqp2wj6xl9og8eoep56akdn24ods0kt6','2023-04-27 10:42:11','2023-04-27 11:42:12');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-27 09:28:51');

/*Table structure for table `xuexiaorenyuan` */

DROP TABLE IF EXISTS `xuexiaorenyuan`;

CREATE TABLE `xuexiaorenyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuexiaorenyuan_name` varchar(200) DEFAULT NULL COMMENT '学校人员姓名 Search111 ',
  `xuexiaorenyuan_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `xuexiaorenyuan_phone` varchar(200) DEFAULT NULL COMMENT '学校人员手机号',
  `xuexiaorenyuan_id_number` varchar(200) DEFAULT NULL COMMENT '学校人员身份证号 ',
  `xuexiaorenyuan_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学校人员';

/*Data for the table `xuexiaorenyuan` */

insert  into `xuexiaorenyuan`(`id`,`username`,`password`,`xuexiaorenyuan_name`,`xuexiaorenyuan_photo`,`xuexiaorenyuan_phone`,`xuexiaorenyuan_id_number`,`xuexiaorenyuan_email`,`sex_types`,`create_time`) values (1,'a1','123456','学校人员姓名1','upload/xuexiaorenyuan1.jpg','17703786901','410224199010102001','1@qq.com',1,'2023-04-27 09:30:54'),(2,'a2','123456','学校人员姓名2','upload/xuexiaorenyuan2.jpg','17703786902','410224199010102002','2@qq.com',1,'2023-04-27 09:30:54'),(3,'a3','123456','学校人员姓名3','upload/xuexiaorenyuan3.jpg','17703786903','410224199010102003','3@qq.com',1,'2023-04-27 09:30:54');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_zhuangtai_types` int(11) DEFAULT NULL COMMENT '用户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`sex_types`,`yonghu_zhuangtai_types`,`create_time`) values (1,'a1','123456','用户姓名1','upload/yonghu1.jpg','17703786901','410224199010102001','1@qq.com',2,1,'2023-04-27 09:30:54'),(2,'a2','123456','用户姓名2','upload/yonghu2.jpg','17703786902','410224199010102002','2@qq.com',2,2,'2023-04-27 09:30:54'),(3,'a3','123456','用户姓名3','upload/yonghu3.jpg','17703786903','410224199010102003','3@qq.com',2,2,'2023-04-27 09:30:54'),(8,'a10','123456','用户姓名10','upload/yonghu3.jpg','17703786903','410224199010102003','3@qq.com',2,1,'2023-04-27 09:30:54');

/*Table structure for table `zhaopin` */

DROP TABLE IF EXISTS `zhaopin`;

CREATE TABLE `zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiye_id` int(11) DEFAULT NULL COMMENT '企业',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zhaopin_types` int(11) DEFAULT NULL COMMENT '招聘岗位 Search111',
  `zhaopin_renshu_number` int(11) DEFAULT NULL COMMENT '招聘人数',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `zhaopin_content` text COMMENT '招聘信息详情',
  `zhaopin_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `zhaopin_yesno_text` text COMMENT '投递回复',
  `zhaopin_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='职位招聘';

/*Data for the table `zhaopin` */

insert  into `zhaopin`(`id`,`qiye_id`,`zhaopin_name`,`zhaopin_photo`,`zhaopin_daiyu`,`zhaopin_address`,`lianxiren_name`,`zhaopin_phone`,`zhaopin_types`,`zhaopin_renshu_number`,`shangxia_types`,`zhaopin_content`,`zhaopin_yesno_types`,`zhaopin_yesno_text`,`zhaopin_shenhe_time`,`create_time`) values (1,1,'招聘信息名称1','upload/zhaopin1.jpg','薪资待遇1','上班地点1','联系人1','17703786901',1,189,1,'招聘信息详情1',2,'同意','2023-04-27 09:30:54','2023-04-27 09:30:54'),(2,2,'招聘信息名称2','upload/zhaopin2.jpg','薪资待遇2','上班地点2','联系人2','17703786902',2,431,1,'招聘信息详情2',2,'同意','2023-04-27 09:30:54','2023-04-27 09:30:54'),(3,3,'招聘信息名称3','upload/zhaopin3.jpg','薪资待遇3','上班地点3','联系人3','17703786903',2,356,1,'招聘信息详情3',2,'同意','2023-04-27 09:30:54','2023-04-27 09:30:54'),(4,2,'招聘信息名称4','upload/zhaopin4.jpg','薪资待遇4','上班地点4','联系人4','17703786904',3,35,1,'招聘信息详情4',2,'同意','2023-04-27 09:30:54','2023-04-27 09:30:54'),(5,2,'招聘信息名称5','upload/zhaopin5.jpg','薪资待遇5','上班地点5','联系人5','17703786905',2,260,1,'招聘信息详情5',2,'同意','2023-04-27 09:30:54','2023-04-27 09:30:54'),(6,3,'招聘信息名称6','upload/zhaopin6.jpg','薪资待遇6','上班地点6','联系人6','17703786906',2,54,1,'招聘信息详情6',2,'同意','2023-04-27 09:30:54','2023-04-27 09:30:54'),(7,2,'招聘信息名称7','upload/zhaopin7.jpg','薪资待遇7','上班地点7','联系人7','17703786907',1,333,1,'招聘信息详情7',2,'同意','2023-04-27 09:30:54','2023-04-27 09:30:54'),(8,3,'招聘信息名称8','upload/zhaopin8.jpg','薪资待遇8','上班地点8','联系人8','17703786908',2,67,1,'招聘信息详情8',2,'同意','2023-04-27 09:30:54','2023-04-27 09:30:54'),(9,2,'招聘信息名称9','upload/zhaopin9.jpg','薪资待遇9','上班地点9','联系人9','17703786909',2,218,1,'招聘信息详情9',2,'同意','2023-04-27 09:30:54','2023-04-27 09:30:54'),(10,2,'招聘信息名称10','upload/zhaopin10.jpg','薪资待遇10','上班地点10','联系人10','17703786910',3,310,1,'招聘信息详情10',2,'同意','2023-04-27 09:30:54','2023-04-27 09:30:54'),(11,1,'招聘信息名称11','upload/zhaopin11.jpg','薪资待遇11','上班地点11','联系人11','17703786911',2,266,1,'<p>招聘信息详情11哈哈哈哈</p>',1,NULL,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(12,1,'招聘信息名称12','upload/zhaopin12.jpg','薪资待遇12','上班地点12','联系人12','17703786912',3,458,1,'招聘信息详情12',1,NULL,NULL,'2023-04-27 09:30:54'),(13,1,'招聘信息名称13','upload/zhaopin13.jpg','薪资待遇13','上班地点13','联系人13','17703786913',2,183,1,'招聘信息详情13',1,NULL,NULL,'2023-04-27 09:30:54'),(14,3,'招聘信息名称14','upload/zhaopin14.jpg','薪资待遇14','上班地点14','联系人14','17703786914',3,388,1,'招聘信息详情14',1,NULL,NULL,'2023-04-27 09:30:54');

/*Table structure for table `zhaopin_chat` */

DROP TABLE IF EXISTS `zhaopin_chat`;

CREATE TABLE `zhaopin_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问人',
  `qiye_id` int(11) DEFAULT NULL COMMENT '回答人',
  `zhaopin_chat_issue_text` longtext COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `zhaopin_chat_reply_text` longtext COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `zhaopin_chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户咨询';

/*Data for the table `zhaopin_chat` */

insert  into `zhaopin_chat`(`id`,`yonghu_id`,`qiye_id`,`zhaopin_chat_issue_text`,`issue_time`,`zhaopin_chat_reply_text`,`reply_time`,`zhuangtai_types`,`zhaopin_chat_types`,`insert_time`,`create_time`) values (1,1,1,'问题1','2023-04-27 09:30:54','回复1','2023-04-27 09:30:54',2,2,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(2,2,1,'问题2','2023-04-27 09:30:54','回复2','2023-04-27 09:30:54',1,2,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(3,2,3,'问题3','2023-04-27 09:30:54','回复3','2023-04-27 09:30:54',2,2,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(4,1,2,'问题4','2023-04-27 09:30:54','回复4','2023-04-27 09:30:54',2,2,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(5,3,3,'问题5','2023-04-27 09:30:54','回复5','2023-04-27 09:30:54',2,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(6,2,2,'问题6','2023-04-27 09:30:54','回复6','2023-04-27 09:30:54',1,2,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(7,1,1,'问题7','2023-04-27 09:30:54','回复7','2023-04-27 09:30:54',1,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(8,3,2,'问题8','2023-04-27 09:30:54','回复8','2023-04-27 09:30:54',1,2,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(9,1,1,'问题9','2023-04-27 09:30:54','回复9','2023-04-27 09:30:54',2,2,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(10,2,1,'问题10','2023-04-27 09:30:54','回复10','2023-04-27 09:30:54',1,2,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(11,1,1,'问题11','2023-04-27 09:30:54','回复11','2023-04-27 09:30:54',2,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(12,2,3,'问题12','2023-04-27 09:30:54','回复12','2023-04-27 09:30:54',2,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(13,1,3,'问题13','2023-04-27 09:30:54','回复13','2023-04-27 09:30:54',2,2,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(14,1,2,'问题14','2023-04-27 09:30:54','回复14','2023-04-27 09:30:54',1,2,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(15,8,1,'电光花谁说的噶十多个','2023-04-27 10:39:03',NULL,NULL,2,1,'2023-04-27 10:39:03','2023-04-27 10:39:03'),(16,8,1,NULL,NULL,'华东师范很过分收到货','2023-04-27 10:39:15',NULL,2,'2023-04-27 10:39:15','2023-04-27 10:39:15'),(17,8,1,NULL,NULL,'股份房管局','2023-04-27 10:39:18',NULL,2,'2023-04-27 10:39:18','2023-04-27 10:39:18'),(18,1,1,NULL,NULL,'江湖救急就','2023-04-27 10:45:41',NULL,2,'2023-04-27 10:45:41','2023-04-27 10:45:41');

/*Table structure for table `zhaopin_collection` */

DROP TABLE IF EXISTS `zhaopin_collection`;

CREATE TABLE `zhaopin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaopin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='职位收藏';

/*Data for the table `zhaopin_collection` */

insert  into `zhaopin_collection`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(2,2,1,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(3,3,1,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(4,4,2,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(5,5,3,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(6,6,2,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(7,7,3,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(8,8,3,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(9,9,3,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(10,10,1,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(11,11,1,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(12,12,1,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(13,13,1,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(14,14,1,1,'2023-04-27 09:30:54','2023-04-27 09:30:54'),(16,11,8,1,'2023-04-27 10:41:19','2023-04-27 10:41:19'),(17,7,8,1,'2023-04-27 10:41:20','2023-04-27 10:41:20');

/*Table structure for table `zhaopin_liuyan` */

DROP TABLE IF EXISTS `zhaopin_liuyan`;

CREATE TABLE `zhaopin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '职位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhaopin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='职位留言';

/*Data for the table `zhaopin_liuyan` */

insert  into `zhaopin_liuyan`(`id`,`zhaopin_id`,`yonghu_id`,`zhaopin_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,3,'留言内容1','回复信息1','2023-04-27 09:30:54','2023-04-27 09:30:54','2023-04-27 09:30:54'),(2,2,2,'留言内容2','回复信息2','2023-04-27 09:30:54','2023-04-27 09:30:54','2023-04-27 09:30:54'),(3,3,2,'留言内容3','回复信息3','2023-04-27 09:30:54','2023-04-27 09:30:54','2023-04-27 09:30:54'),(4,4,2,'留言内容4','回复信息4','2023-04-27 09:30:54','2023-04-27 09:30:54','2023-04-27 09:30:54'),(5,5,3,'留言内容5','回复信息5','2023-04-27 09:30:54','2023-04-27 09:30:54','2023-04-27 09:30:54'),(6,6,2,'留言内容6','回复信息6','2023-04-27 09:30:54','2023-04-27 09:30:54','2023-04-27 09:30:54'),(7,7,3,'留言内容7','回复信息7','2023-04-27 09:30:54','2023-04-27 09:30:54','2023-04-27 09:30:54'),(8,8,1,'留言内容8','回复信息8','2023-04-27 09:30:54','2023-04-27 09:30:54','2023-04-27 09:30:54'),(9,9,3,'留言内容9','回复信息9','2023-04-27 09:30:54','2023-04-27 09:30:54','2023-04-27 09:30:54'),(10,10,3,'留言内容10','回复信息10','2023-04-27 09:30:54','2023-04-27 09:30:54','2023-04-27 09:30:54'),(11,11,1,'留言内容11','回复信息11','2023-04-27 09:30:54','2023-04-27 09:30:54','2023-04-27 09:30:54'),(12,12,3,'留言内容12','回复信息12','2023-04-27 09:30:54','2023-04-27 09:30:54','2023-04-27 09:30:54'),(13,13,2,'留言内容13','回复信息13','2023-04-27 09:30:54','2023-04-27 09:30:54','2023-04-27 09:30:54'),(14,14,3,'留言内容14','回复信息14','2023-04-27 09:30:54','2023-04-27 09:30:54','2023-04-27 09:30:54'),(15,11,8,'华帝圣服饰','哈哈哈哈','2023-04-27 10:41:36','2023-04-27 10:45:00','2023-04-27 10:41:36'),(16,1,8,'好得很','华东师大','2023-04-27 10:41:52','2023-04-27 10:44:26','2023-04-27 10:41:52');

/*Table structure for table `zhaopin_toudi` */

DROP TABLE IF EXISTS `zhaopin_toudi`;

CREATE TABLE `zhaopin_toudi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianli_id` int(11) DEFAULT NULL COMMENT '简历',
  `zhaopin_id` int(11) DEFAULT NULL COMMENT '招聘',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投递时间',
  `zhaopin_toudi_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `zhaopin_toudi_yesno_text` text COMMENT '投递回复',
  `zhaopin_toudi_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhaopin_toudi_file` varchar(200) DEFAULT NULL COMMENT '笔试文件',
  `zhaopin_toudi_jieguo_types` int(11) DEFAULT NULL COMMENT '结果 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='简历投递';

/*Data for the table `zhaopin_toudi` */

insert  into `zhaopin_toudi`(`id`,`jianli_id`,`zhaopin_id`,`insert_time`,`zhaopin_toudi_yesno_types`,`zhaopin_toudi_yesno_text`,`zhaopin_toudi_shenhe_time`,`zhaopin_toudi_file`,`zhaopin_toudi_jieguo_types`,`create_time`) values (1,1,1,'2023-04-27 09:30:54',1,NULL,NULL,NULL,NULL,'2023-04-27 09:30:54'),(2,2,2,'2023-04-27 09:30:54',1,NULL,NULL,NULL,NULL,'2023-04-27 09:30:54'),(3,3,3,'2023-04-27 09:30:54',1,NULL,NULL,NULL,NULL,'2023-04-27 09:30:54'),(4,4,4,'2023-04-27 09:30:54',1,NULL,NULL,NULL,NULL,'2023-04-27 09:30:54'),(5,5,5,'2023-04-27 09:30:54',1,NULL,NULL,NULL,NULL,'2023-04-27 09:30:54'),(6,6,6,'2023-04-27 09:30:54',1,NULL,NULL,NULL,NULL,'2023-04-27 09:30:54'),(7,7,7,'2023-04-27 09:30:54',1,NULL,NULL,NULL,NULL,'2023-04-27 09:30:54'),(8,8,8,'2023-04-27 09:30:54',1,NULL,NULL,NULL,NULL,'2023-04-27 09:30:54'),(9,9,9,'2023-04-27 09:30:54',1,NULL,NULL,NULL,NULL,'2023-04-27 09:30:54'),(10,10,10,'2023-04-27 09:30:54',1,NULL,NULL,NULL,NULL,'2023-04-27 09:30:54'),(11,11,11,'2023-04-27 09:30:54',1,NULL,NULL,NULL,NULL,'2023-04-27 09:30:54'),(12,12,12,'2023-04-27 09:30:54',3,'哈哈哈','2023-04-27 10:22:07',NULL,NULL,'2023-04-27 09:30:54'),(13,13,13,'2023-04-27 09:30:54',2,'过大勾搭勾搭上','2023-04-27 10:22:00',NULL,NULL,'2023-04-27 09:30:54'),(14,14,14,'2023-04-27 09:30:54',1,NULL,NULL,NULL,NULL,'2023-04-27 09:30:54'),(29,12,10,'2023-04-27 10:19:12',1,NULL,NULL,NULL,NULL,'2023-04-27 10:19:12'),(30,15,9,'2023-04-27 10:40:42',1,NULL,NULL,NULL,NULL,'2023-04-27 10:40:42'),(31,15,11,'2023-04-27 10:41:29',3,'斤斤计较','2023-04-27 10:45:15',NULL,NULL,'2023-04-27 10:41:29'),(32,15,1,'2023-04-27 10:42:00',2,'好几家','2023-04-27 10:45:09','/upload/1682563531785.doc',2,'2023-04-27 10:42:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
