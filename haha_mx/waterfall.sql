/*
MySQL Data Transfer
Source Host: localhost
Source Database: waterfall
Target Host: localhost
Target Database: waterfall
Date: 2012-3-7 17:15:41
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for haha_img
-- ----------------------------
DROP TABLE IF EXISTS `haha_img`;
CREATE TABLE `haha_img` (
  `id` tinyint(3) NOT NULL auto_increment,
  `file` varchar(100) NOT NULL,
  `desc` varchar(255) default NULL,
  `date` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `userid` tinyint(3) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for haha_message
-- ----------------------------
DROP TABLE IF EXISTS `haha_message`;
CREATE TABLE `haha_message` (
  `id` tinyint(3) NOT NULL auto_increment,
  `date` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `message` text NOT NULL,
  `imgid` tinyint(3) NOT NULL,
  `userid` tinyint(3) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for haha_user
-- ----------------------------
DROP TABLE IF EXISTS `haha_user`;
CREATE TABLE `haha_user` (
  `id` int(3) NOT NULL auto_increment,
  `roleid` tinyint(1) NOT NULL default '1',
  `username` varchar(16) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `haha_img` VALUES ('4', '8544618211e62010ac9675f2fecadded.jpg', '假睫毛走掉', '2012-03-06 11:47:31', '1');
INSERT INTO `haha_img` VALUES ('3', 'afd3393a2ce7ad67226a538485ed668b.jpg', 'jjm走了。。。', '2012-03-06 11:47:21', '1');
INSERT INTO `haha_img` VALUES ('5', '4d98e2de01238ed73c9a67d3b7409134.jpg', '5555555555555555555555', '2012-03-06 11:47:44', '1');
INSERT INTO `haha_img` VALUES ('6', 'd27712eb7095de36afbb8c4e11eac33a.jpg', 'xbq王八蛋', '2012-03-06 11:47:55', '1');
INSERT INTO `haha_img` VALUES ('7', 'a353f50055f2ea122fda4b92a5d22616.jpg', '洞头王八蛋', '2012-03-06 11:48:06', '1');
INSERT INTO `haha_img` VALUES ('8', '90faf9230140542d97d2eb3b8eff527c.jpg', '琼姐王八蛋啊王八蛋啊啊蛋', '2012-03-06 11:48:20', '1');
INSERT INTO `haha_img` VALUES ('9', 'caefbf29bd27978ac3484c627adfcbe5.jpg', '你们都是王八蛋啊啊啊', '2012-03-06 11:48:31', '1');
INSERT INTO `haha_img` VALUES ('10', '79f971c4a2d57bd97ad4d71e368e8601.jpg', '啊荣你出卖队友啊啊啊啊', '2012-03-06 11:48:43', '1');
INSERT INTO `haha_img` VALUES ('11', '94ceafaaf72fde8b3ab177a3cf44c195.jpg', 'tt你太怂啊啊啊啊', '2012-03-06 11:48:53', '1');
INSERT INTO `haha_img` VALUES ('12', 'd086bbeb68f36b799f8186603dbb8073.jpg', '腿哥是黑西啊', '2012-03-06 11:49:04', '1');
INSERT INTO `haha_img` VALUES ('13', 'a33c4a3abdc63bf156a55a5fa9bf9edb.jpg', 'sq', '2012-03-06 11:49:16', '1');
INSERT INTO `haha_img` VALUES ('14', 'e898b361a9218c584824ad63ab7b7bd3.jpg', '哎呀呀呀', '2012-03-06 11:49:25', '1');
INSERT INTO `haha_img` VALUES ('15', 'c80a9125b244967519629c506c834671.jpg', '求92妹子有木有啊', '2012-03-06 11:49:36', '1');
INSERT INTO `haha_img` VALUES ('16', '49b83048c947cd91038d94d084dc8cc1.jpg', '求93妹子有木有啊', '2012-03-06 11:49:45', '1');
INSERT INTO `haha_img` VALUES ('17', '0559b607fa5e61e6dae2fcd9bf627d00.jpg', '求94妹子有木有啊', '2012-03-06 11:49:59', '1');
INSERT INTO `haha_img` VALUES ('18', '901ca530c2635eb3c4bc945b99e1a4b2.jpg', '林jj你是搓b好吗', '2012-03-06 11:50:18', '1');
INSERT INTO `haha_img` VALUES ('19', 'a273b4b2fbe4aaa301850c61c922fe90.jpg', '豆腐你是跨bi好吗', '2012-03-06 11:50:32', '1');
INSERT INTO `haha_img` VALUES ('20', 'c1ff9ef4916ad0aca38a15ebc2318e1f.jpg', '洞头你是跨b好吗', '2012-03-06 11:50:44', '1');
INSERT INTO `haha_img` VALUES ('21', '9d4347a34e819fbc9810ac0722b4d1f3.jpg', '托总你是跨比好吗', '2012-03-06 11:50:55', '1');
INSERT INTO `haha_img` VALUES ('22', '93e72de109df0cd5e9b0813527e397cd.jpg', '秀秀你是跨比好吗', '2012-03-06 11:51:11', '1');
INSERT INTO `haha_img` VALUES ('23', '057660917e338c7b3d0885a43a192cab.jpg', 'nani你最跨好吗', '2012-03-06 11:51:27', '1');
INSERT INTO `haha_img` VALUES ('24', 'aa35a33ba37f3feba3bb88f768ea14d2.jpg', '盾疼有木有呀', '2012-03-06 11:51:45', '1');
INSERT INTO `haha_img` VALUES ('25', '18b8c91384cf0c1cff3b2051a93024cc.jpg', '美女有木有呀', '2012-03-06 11:51:58', '1');
INSERT INTO `haha_img` VALUES ('26', '78a77e9564c789fb468ce6c832080baa.jpg', '华哥创业好吗', '2012-03-06 11:52:13', '1');
INSERT INTO `haha_img` VALUES ('27', '2364e847ce8fa412e2d8deec6f278ece.jpg', '王子jb再大点有吗', '2012-03-06 11:52:30', '1');
INSERT INTO `haha_img` VALUES ('28', '7fee209bd6bb33df2eb1c0bc3a19e606.jpg', '豆腐赶紧发单子给兄弟们可以吗', '2012-03-06 11:52:59', '1');
INSERT INTO `haha_img` VALUES ('29', '20905272dd0a7c4d22fc606982dc6028.jpg', '求操翻有木有', '2012-03-06 11:53:51', '1');
INSERT INTO `haha_img` VALUES ('30', '4f710146654c59708572ebdae8d72a80.jpg', '- - -', '2012-03-06 11:54:08', '1');
INSERT INTO `haha_img` VALUES ('31', 'd6fe087c43026e98a2d5b238ea82acde.jpg', '悲催了', '2012-03-06 11:54:34', '1');
INSERT INTO `haha_img` VALUES ('32', '99754d9e16fbdd6906519fb808152104.jpg', '为神马图片这么多', '2012-03-06 11:54:47', '1');
INSERT INTO `haha_img` VALUES ('33', '1862b86c41f1778e20a721683a10328d.jpg', '手动操作有点累好吗', '2012-03-06 11:55:00', '1');
INSERT INTO `haha_img` VALUES ('34', 'fcd0d0561b7716bc0c573f74b219a009.jpg', '我想去福州划橡皮艇有木有呀', '2012-03-06 11:55:18', '1');
INSERT INTO `haha_img` VALUES ('35', 'eae649a373757d93bfed16c98a25d486.gif', 'omg', '2012-03-06 11:55:29', '1');
INSERT INTO `haha_img` VALUES ('36', 'eaf0b730f0709190d42ccdefa38d91ae.gif', 'good job', '2012-03-06 11:55:39', '1');
INSERT INTO `haha_img` VALUES ('37', 'a89c700e52c9970524159665efdef8a3.gif', 'pp带', '2012-03-06 11:55:49', '1');
INSERT INTO `haha_img` VALUES ('38', 'faa37ce5618e4dd17c7c599eb3671513.jpg', '禽兽们', '2012-03-06 11:55:58', '1');
INSERT INTO `haha_img` VALUES ('39', '6ef549bd715094f63f4ae351726c3b16.jpg', '这个面试的敢是美女吗敢吗', '2012-03-06 11:57:18', '1');
INSERT INTO `haha_img` VALUES ('40', 'e1a5c5bba38c10ec222ae4e22be067cf.jpg', 'soga', '2012-03-06 11:57:41', '1');
INSERT INTO `haha_img` VALUES ('41', '4a825dd8dd56c2fb172b8ce289bbf72e.jpg', 'mx。haha', '2012-03-06 11:57:52', '1');
INSERT INTO `haha_img` VALUES ('42', 'a28d29fce32cb26cbdd5e6197e34be64.gif', '求雨快停', '2012-03-06 11:58:08', '1');
INSERT INTO `haha_img` VALUES ('43', 'db1ee1d5ef03648e44024b8fb389eb89.gif', '求女人', '2012-03-06 11:58:22', '1');
INSERT INTO `haha_img` VALUES ('44', '31e3738684099c3d90f9c35a88be3072.jpg', '两点自己找哦', '2012-03-06 11:58:44', '1');
INSERT INTO `haha_img` VALUES ('45', '4a97e556b148151f48b465b6b3cf5f24.jpg', '求虐杀对面', '2012-03-06 11:59:02', '1');
INSERT INTO `haha_img` VALUES ('46', 'ac26afdc6e2fba08cce402a43613b317.jpg', '不要进我空间好吗。', '2012-03-06 11:59:30', '1');
INSERT INTO `haha_img` VALUES ('47', 'b66a43c5e541945e5f33f39820c4d739.jpg', '忘了吧忘了吧诶诶', '2012-03-06 11:59:53', '1');
INSERT INTO `haha_img` VALUES ('48', '0e0946fea7766ac1489e28c0b25e1295.jpg', '句话进', '2012-03-06 12:00:25', '1');
INSERT INTO `haha_img` VALUES ('49', '291de6f261749acfc8e5009e853ae636.jpg', '没有草不烦的强', '2012-03-06 12:00:40', '1');
INSERT INTO `haha_img` VALUES ('50', '3b4c1b7b7da660091b85d46cf962634a.jpg', '只有不努力的小撒', '2012-03-06 12:00:55', '1');
INSERT INTO `haha_img` VALUES ('51', 'a995b442d1d6a5f22bf47e4d01ded66d.gif', 'By JnR', '2012-03-06 12:01:16', '1');
INSERT INTO `haha_user` VALUES ('1', '1', 'xiaooman', '111111');
INSERT INTO `haha_user` VALUES ('2', '1', 'ohohye258', 'qqqqqq');
