/*
Navicat MySQL Data Transfer

Source Server         : Jane
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : moon

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-08-07 20:47:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mn_mediabox
-- ----------------------------
DROP TABLE IF EXISTS `mn_mediabox`;
CREATE TABLE `mn_mediabox` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `nbody` varchar(128) DEFAULT NULL,
  `ndate` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mn_mediabox
-- ----------------------------
INSERT INTO `mn_mediabox` VALUES ('1', '迪玛希新歌《时光·沧海》首发 世界顶级“梦之队”量身定制', '07/11');
INSERT INTO `mn_mediabox` VALUES ('2', '天刀全新副本开封会八荒BOSS详情首曝', '06/15');
INSERT INTO `mn_mediabox` VALUES ('3', '剑荡八荒S4赛季6月开启 海量奖励活动等你参与', '05/31');
INSERT INTO `mn_mediabox` VALUES ('4', '【多玩】掌心朱砂天一团 挑战开封会八荒路小佳', '07/14');
INSERT INTO `mn_mediabox` VALUES ('5', '【多玩】沧海云帆 天刀新版本内容攻略汇总一览', '07/03');
INSERT INTO `mn_mediabox` VALUES ('6', '【国风音绕】国风音绕决赛来袭 6月25日火热直播', '06/23');
INSERT INTO `mn_mediabox` VALUES ('7', '【多玩】剑荡八荒 天刀OLS4线下赛冠亚季军专访', '06/20');
INSERT INTO `mn_mediabox` VALUES ('8', '【178】最贴地气的天刀剑荡专访（五）：神威是信仰', '06/15');
INSERT INTO `mn_mediabox` VALUES ('9', '天刀全新副本开封会八荒BOSS详情首曝', '06/15');
INSERT INTO `mn_mediabox` VALUES ('10', '【多玩】掌心朱砂天一团 挑战开封会八荒路小佳', '07/14');
INSERT INTO `mn_mediabox` VALUES ('11', '【多玩】沧海云帆 天刀新版本内容攻略汇总一览', '07/03');
INSERT INTO `mn_mediabox` VALUES ('12', '【多玩】剑荡八荒 天刀OLS4线下赛冠亚季军专访', '06/20');
INSERT INTO `mn_mediabox` VALUES ('13', '【多玩】半青少女 天刀新版本爆料内容整理第一弹', '06/14');
INSERT INTO `mn_mediabox` VALUES ('14', '【多玩】剑荡八荒S4媒体专题', '06/01');
INSERT INTO `mn_mediabox` VALUES ('15', '【多玩】天刀傀儡杀场详细细节攻略', '05/24');
INSERT INTO `mn_mediabox` VALUES ('16', '【多玩】相信且坚持 多玩访3V3海报插画家张禄', '04/21');
INSERT INTO `mn_mediabox` VALUES ('17', '从萝莉到国风美少女 天刀都做了哪些改变？', '01/23');
INSERT INTO `mn_mediabox` VALUES ('18', '天刀国风音乐盛典于TGC2016盛大启幕', '12/31');
INSERT INTO `mn_mediabox` VALUES ('19', '【我与天刀不解缘】天刀主策、Coser、画师…专访', '11/10');
INSERT INTO `mn_mediabox` VALUES ('20', '修罗城玩法大揭秘 镇派武器实装效果首曝', '10/21');
INSERT INTO `mn_mediabox` VALUES ('21', '万雪窟话本上线在即 超全爆料抢先看', '10/11');
INSERT INTO `mn_mediabox` VALUES ('22', '【173】天刀交易数据报第24期 新服人气火爆', '08/04');
INSERT INTO `mn_mediabox` VALUES ('23', '【17173】天刀交易数据报第23期 新区物价依旧昂贵', '07/27');
INSERT INTO `mn_mediabox` VALUES ('24', '【178】最贴地气的天刀剑荡专访（五）：神威是信仰', '06/15');
INSERT INTO `mn_mediabox` VALUES ('25', '最贴地气的天刀剑荡专访（四）：专业神刀斗花', '16/13');
INSERT INTO `mn_mediabox` VALUES ('26', '【178】最贴地气的天刀剑荡专访（一）：信仰丐苏忆风', '06/09');
INSERT INTO `mn_mediabox` VALUES ('27', '【178】天刀玩家COS：若真孤星照命 叶某唯有以剑破之', '05/15');
INSERT INTO `mn_mediabox` VALUES ('28', '【178】剑荡八荒血海飘香冠军队小专访 各种美滋滋', '04/07');
INSERT INTO `mn_mediabox` VALUES ('29', '【178】178墨客轩出品 唐门对战神威专题攻略', '03/29');
INSERT INTO `mn_mediabox` VALUES ('30', '【178】心海出品：PVP大型详细攻略 唐门篇下', '03/23');
INSERT INTO `mn_mediabox` VALUES ('31', null, '03/19');

-- ----------------------------
-- Table structure for mn_navbar_photo
-- ----------------------------
DROP TABLE IF EXISTS `mn_navbar_photo`;
CREATE TABLE `mn_navbar_photo` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mn_navbar_photo
-- ----------------------------
INSERT INTO `mn_navbar_photo` VALUES ('1', 'imgs/rotate1.jpg', '半青少女');
INSERT INTO `mn_navbar_photo` VALUES ('2', 'imgs/rotate2.jpg', '青龙永夜');
INSERT INTO `mn_navbar_photo` VALUES ('3', 'imgs/rotate3.jpg', '时光沧海');
INSERT INTO `mn_navbar_photo` VALUES ('4', 'imgs/rotate4.jpg', '沧海云帆');

-- ----------------------------
-- Table structure for mn_newsbox
-- ----------------------------
DROP TABLE IF EXISTS `mn_newsbox`;
CREATE TABLE `mn_newsbox` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `nhead` varchar(32) DEFAULT NULL,
  `nbody` varchar(128) DEFAULT NULL,
  `ndate` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mn_newsbox
-- ----------------------------
INSERT INTO `mn_newsbox` VALUES ('1', '[新闻]', '授人以渔第二弹 《天涯明月刀ol》天峰训练营国风剪辑篇报名开启', '07/21');
INSERT INTO `mn_newsbox` VALUES ('2', '[新闻]', '天涯明月刀携手交通银行 国风联名信用卡正式发布', '07/20');
INSERT INTO `mn_newsbox` VALUES ('3', '[媒体]', '迪玛希新歌《时光·沧海》首发 世界顶级“梦之队”量身定制', '07/11');
INSERT INTO `mn_newsbox` VALUES ('4', '[新闻]', '史上最震撼航海玩法来袭 天刀沧海云帆版本今日上线', '07/11');
INSERT INTO `mn_newsbox` VALUES ('5', '[新闻]', '来呀，斗图呀~首届天刀原创表情包大赛开启', '06/30');
INSERT INTO `mn_newsbox` VALUES ('6', '[多玩]', '天刀全新副本开封会八荒BOSS详情首曝', '06/15');
INSERT INTO `mn_newsbox` VALUES ('7', '[公告]', '7月19日服务器例行维护公告（已完成）', '07/19');
INSERT INTO `mn_newsbox` VALUES ('8', '[新闻]', '【欢乐英雄精英服】资格招募开启！', '06/28');
INSERT INTO `mn_newsbox` VALUES ('9', '[公告]', '7月19日服务器例行维护公告（已完成）', '07/19');
INSERT INTO `mn_newsbox` VALUES ('10', '[公告]', '7月21日欢乐英雄服务器更新公告（已完成）', '07/18');
INSERT INTO `mn_newsbox` VALUES ('11', '[公告]', '7月18日欢乐英雄服务器更新公告（已完成）', '07/18');
INSERT INTO `mn_newsbox` VALUES ('12', '[公告]', '7月18日欢乐英雄服务器更新公告（已完成）', '07/15');
INSERT INTO `mn_newsbox` VALUES ('13', '[公告]', '7月15日欢乐英雄服务器更新公告（已完成）', '07/14');
INSERT INTO `mn_newsbox` VALUES ('14', '[公告]', '7月14日服务器临时维护公告（已完成）', '07/11');
INSERT INTO `mn_newsbox` VALUES ('15', '[公告]', '7月11日服务器延迟开服公告（已完成）', '07/11');
INSERT INTO `mn_newsbox` VALUES ('16', '[公告]', '7月11日欢乐英雄服务器更新公告（已完成）', '07/11');
INSERT INTO `mn_newsbox` VALUES ('17', '[活动]', '授人以渔第二弹 《天涯明月刀ol》天峰训练营国风剪辑篇报名开启', '07/21');
INSERT INTO `mn_newsbox` VALUES ('18', '[活动]', '【官方微信】“周周礼”福利翻倍！等您来领取！', '05/08');
INSERT INTO `mn_newsbox` VALUES ('19', '[活动]', '时光沧海MV大赛火热开启 剪出心中的天刀大航海', '07/11');
INSERT INTO `mn_newsbox` VALUES ('20', '[活动]', '天刀同人之星太白唐门篇获奖名单公告', '06/28');
INSERT INTO `mn_newsbox` VALUES ('21', '[活动]', '【国风音绕】国风音绕决赛来袭 6月25日火热直播', '06/23');
INSERT INTO `mn_newsbox` VALUES ('22', '[活动]', '天刀与微信游戏圈联欢啦 绑定微信领好礼', '06/12');
INSERT INTO `mn_newsbox` VALUES ('23', '[活动]', '剑荡八荒S4线上赛冠军诞生，线下赛总决赛即将来袭', '06/06');
INSERT INTO `mn_newsbox` VALUES ('24', '[活动]', '剑荡八荒S4赛季6月开启 海量奖励活动等你参与', '05/31');
INSERT INTO `mn_newsbox` VALUES ('25', '[直播]', '一剑荡八荒！——致我们共同的武侠电竞梦', null);
INSERT INTO `mn_newsbox` VALUES ('26', '[直播]', '【国风音绕】复赛第一轮视频回看', '06/09');
INSERT INTO `mn_newsbox` VALUES ('27', '[直播]', '【1.19更新】周周换套路 百晓生拼两个残局攻略', '05/22');
INSERT INTO `mn_newsbox` VALUES ('28', '[直播]', '全职业教学 五毒力战唐门技能详解', '01/20');
INSERT INTO `mn_newsbox` VALUES ('29', '[直播]', '3v3唐门视角 天涯伴我行第8期', '12/21');
INSERT INTO `mn_newsbox` VALUES ('30', '[直播]', '全职业教学 五毒战神威技能应对详解', '12/21');
INSERT INTO `mn_newsbox` VALUES ('31', '[直播]', '【全景TGA】天涯明月刀 兄弟的呐喊 才是胜利的法宝', '12/21');
INSERT INTO `mn_newsbox` VALUES ('32', '[直播]', 'S3总决赛冠军赛', '12/07');

-- ----------------------------
-- Table structure for mn_rotate_photo
-- ----------------------------
DROP TABLE IF EXISTS `mn_rotate_photo`;
CREATE TABLE `mn_rotate_photo` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mn_rotate_photo
-- ----------------------------
INSERT INTO `mn_rotate_photo` VALUES ('1', 'rotate1.jpg', '八大活动来袭');
INSERT INTO `mn_rotate_photo` VALUES ('2', 'rotate2.jpg', '商城回馈');
INSERT INTO `mn_rotate_photo` VALUES ('3', 'rotate3.jpg', '回流升级');
INSERT INTO `mn_rotate_photo` VALUES ('4', 'rotate4.jpg', '轩辕传奇手游公测');
INSERT INTO `mn_rotate_photo` VALUES ('5', 'rotate5.jpg', '沧海云帆版本专题');
INSERT INTO `mn_rotate_photo` VALUES ('6', 'rotate6.jpg', 'APP助手');
INSERT INTO `mn_rotate_photo` VALUES ('7', 'rotate7.jpg', '熊猫主播招新');
INSERT INTO `mn_rotate_photo` VALUES ('8', 'rotate11.jpg', 'TGP助力江湖');
INSERT INTO `mn_rotate_photo` VALUES ('9', 'rotate12.jpg', '会员助力江湖');
INSERT INTO `mn_rotate_photo` VALUES ('10', 'rotate13.jpg', '腾讯动漫');
INSERT INTO `mn_rotate_photo` VALUES ('11', 'rotate14.jpg', 'TGP夏日游乐场');
INSERT INTO `mn_rotate_photo` VALUES ('12', 'rotate15.jpg', '道聚城CP日');
INSERT INTO `mn_rotate_photo` VALUES ('13', 'rotate16.jpg', '道聚城助力');
INSERT INTO `mn_rotate_photo` VALUES ('14', 'rotate17.jpg', '微信游戏圈上线');

-- ----------------------------
-- Table structure for mn_sevroles
-- ----------------------------
DROP TABLE IF EXISTS `mn_sevroles`;
CREATE TABLE `mn_sevroles` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `shead` varchar(32) DEFAULT NULL,
  `scont` varchar(32) DEFAULT NULL,
  `priarm` varchar(32) DEFAULT NULL,
  `vicarm` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mn_sevroles
-- ----------------------------
INSERT INTO `mn_sevroles` VALUES ('1', '神刀', '刀含杀气腾幽朔，萧飒寒芒泣鬼神', '主武器：长刀', '副武器：鹰');
INSERT INTO `mn_sevroles` VALUES ('2', '太白', '流星白羽光出匣，一剑无痕雪漫山', '主武器：剑', '副武器：剑鞘');
INSERT INTO `mn_sevroles` VALUES ('3', '神威', '神威倒卷翻空浪，一举冲霄气势雄', '主武器：枪', '副武器：长弓');
INSERT INTO `mn_sevroles` VALUES ('4', '唐门', '雾霭云从飞星落，半影相依扇中情', '主武器：傀儡', '副武器：扇子');
INSERT INTO `mn_sevroles` VALUES ('5', '丐帮', '醉来豪气不可收，嘘作长虹贯牛斗', '主武器：缠手', '副武器：酒葫芦');
INSERT INTO `mn_sevroles` VALUES ('6', '天香', '竞夸天下双无绝，独立人间第一香', '主武器：伞', '副武器：伞中剑');
INSERT INTO `mn_sevroles` VALUES ('7', '真武', '灵妙潜通乘风起，太极玄虚若镜清', '主武器：双剑', '副武器：剑鞘');
INSERT INTO `mn_sevroles` VALUES ('8', '五毒', '动游碧落心无碍，静藏深渊迹绝踪', '主武器：双刃', '副武器：双刃');

-- ----------------------------
-- Table structure for mn_sevunits
-- ----------------------------
DROP TABLE IF EXISTS `mn_sevunits`;
CREATE TABLE `mn_sevunits` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `shead` varchar(128) DEFAULT NULL,
  `sshot` varchar(200) DEFAULT NULL,
  `slong` varchar(500) DEFAULT NULL,
  `simg` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mn_sevunits
-- ----------------------------
INSERT INTO `mn_sevunits` VALUES ('1', '神刀', '刀含杀气腾幽朔，萧飒寒芒泣鬼神', '长刀掠世，雄鹰相随，勇者初心无惧，仁者自可无敌。神刀乃傅红雪叶开所在之门派，江湖中第一用刀之门派，亦是八荒中最为特立独行、潇洒率性之门派...', 'imgs/shendao.jpg');
INSERT INTO `mn_sevunits` VALUES ('2', '太白', '流星白羽光出匣，一剑无痕雪漫山', '流星白羽光出匣，一剑无痕雪漫山\',\'风无痕本是开封府司录司参军事，负责协助捕门之人，利用强大的分析能力来推理查案。在多年的查案之中，风无痕因偶然机会获取本被认为是医书的《破穴论》...', 'imgs/taibai.jpg');
INSERT INTO `mn_sevunits` VALUES ('3', '神威', '神威倒卷翻空浪，一举冲霄气势雄', '后周副都指挥使韩通于954年创立“神威营”，忠诚守护后周皇室安全。韩通之子韩微，曾几次劝说父亲除去后周重臣赵匡胤，但韩通却欣赏赵匡胤之人才气度...', 'imgs/shenwei.jpg');
INSERT INTO `mn_sevunits` VALUES ('4', '唐门', '雾霭云从飞星落，半影相依扇中情', '蜀中唐氏，自魏晋起便为世家。五代十国之时，唐门少主唐郢化名卢郢，游历江南，更是进士及第，成为南唐的文武双进士，天下闻名...', 'imgs/tangmen.jpg');
INSERT INTO `mn_sevunits` VALUES ('5', '丐帮', '醉来豪气不可收，嘘作长虹贯牛斗', '丐帮最早的源流可追溯到春秋时期，但正式作为一个门派存在于江湖之中，则是从唐末开始。黄巢起义中，某金姓将领因不满义军暴虐残害百姓...', 'imgs/gaibang.jpg');
INSERT INTO `mn_sevunits` VALUES ('6', null, '竞夸天下双无绝，独立人间第一香', '华佗当年被处死之前，将其一生所学著为《青囊书》一卷。数百年后，少年桑柴子偶得此书，修习医术，其第一个救下之人，便是官宦千金员外之女...', 'imgs/tianxiang.jpg');
INSERT INTO `mn_sevunits` VALUES ('7', '真武', '灵妙潜通乘风起，太极玄虚若镜清', '真武祖师张梦白本是书香门第出身，屡试不中时竟在襄州山中偶遇一似癫似疯之道人扶摇子。得其点化，张梦白以文入武，更习得驱影之术...', 'imgs/zhenwu.jpg');
INSERT INTO `mn_sevunits` VALUES ('8', '五毒', '动游碧落心无碍，静藏深渊迹绝踪', '地处云滇的五毒与中原诸派均有所不同，其武学以狠、诡、毒、快为要诀，以诡秘凌厉的刀法配合神鬼莫测的身法，可谓是举手之间、取人性命；轻烟散尽、乃见五毒。', 'imgs/wudu.jpg');

-- ----------------------------
-- Table structure for mn_strategybox
-- ----------------------------
DROP TABLE IF EXISTS `mn_strategybox`;
CREATE TABLE `mn_strategybox` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `nbody` varchar(128) DEFAULT NULL,
  `ndate` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mn_strategybox
-- ----------------------------
INSERT INTO `mn_strategybox` VALUES ('1', '天刀话本BOSS家庭住址大曝光', '03/30');
INSERT INTO `mn_strategybox` VALUES ('2', '团队副本回顾系列之苍梧城', '03/22');
INSERT INTO `mn_strategybox` VALUES ('3', '新版81技巧解锁搬砖新姿势 ', '03/21');
INSERT INTO `mn_strategybox` VALUES ('4', '新十人团本琴魔练清商开荒攻略解读', '03/14');
INSERT INTO `mn_strategybox` VALUES ('5', '团队副本回顾系列之万雪窟', '03/14');
INSERT INTO `mn_strategybox` VALUES ('6', '团队副本回顾系列之天峰会八荒', '03/14');
INSERT INTO `mn_strategybox` VALUES ('7', '男默女泪 话本更新改动全体验', '03/13');
INSERT INTO `mn_strategybox` VALUES ('8', '轻松打过万雪窟 95挑战简单打法（下）', '03/10');
INSERT INTO `mn_strategybox` VALUES ('9', '以战续战虽战可也 太白团战思路', '03/30');
INSERT INTO `mn_strategybox` VALUES ('10', '团战中那些不容忽视的神级技能', '03/30');
INSERT INTO `mn_strategybox` VALUES ('11', '3V3剑荡八荒血海区决赛 大王又来巡山啦VS血海冠军队', '03/29');
INSERT INTO `mn_strategybox` VALUES ('12', '3V3剑荡八荒血海区4强 血海爸爸VS血海冠军队', '03/29');
INSERT INTO `mn_strategybox` VALUES ('13', '3V3剑荡八荒血海区8强 血海爸爸VS砍死外国佬', '03/29');
INSERT INTO `mn_strategybox` VALUES ('14', '3V3剑荡八荒血海区16强 血海冠军VS天下第13', '03/29');
INSERT INTO `mn_strategybox` VALUES ('15', '3V3剑荡八荒天命16强集锦 断奶唐门的无奈', '03/28');
INSERT INTO `mn_strategybox` VALUES ('16', '3V3剑荡八荒天命区决赛赛 鱼服墨家军再次制霸', '03/28');
INSERT INTO `mn_strategybox` VALUES ('17', '天刀太白中后期 双练武心法搭配推荐', '03/23');
INSERT INTO `mn_strategybox` VALUES ('18', '神刀从入门到精通 基础篇', '03/25');
INSERT INTO `mn_strategybox` VALUES ('19', '唐门心法推荐 土豪平民都可用', '03/10');
INSERT INTO `mn_strategybox` VALUES ('20', '秦川太白网友属性分析和堆叠建议', '03/09');
INSERT INTO `mn_strategybox` VALUES ('21', '无限叠加 能潜修的心法才是好心法', '03/03');
INSERT INTO `mn_strategybox` VALUES ('22', '真武流派选择之气劲流详解', '02/27');
INSERT INTO `mn_strategybox` VALUES ('23', '平民奶妈前期的心法选择推荐', '02/23');
INSERT INTO `mn_strategybox` VALUES ('24', '平民萌新向 手把手教你如何选择心法', '02/23');
INSERT INTO `mn_strategybox` VALUES ('25', '论剑江湖 浅谈论剑跳跃的一些作用', '05/17');
INSERT INTO `mn_strategybox` VALUES ('26', '有备而无患 赛季末版本初一些建议', '05/17');
INSERT INTO `mn_strategybox` VALUES ('27', '【逍遥会所】vol.1 天刀最诚交友平台开启', '03/31');
INSERT INTO `mn_strategybox` VALUES ('28', '戏说江湖 功力党是这样练成的', '03/31');
INSERT INTO `mn_strategybox` VALUES ('29', '带你看天刀那些风景如画的地皮', '03/31');
INSERT INTO `mn_strategybox` VALUES ('30', '入门基础 平胸天香饲养指南', '03/31');
INSERT INTO `mn_strategybox` VALUES ('31', '风景党不得不去的地方 东越', '03/30');
INSERT INTO `mn_strategybox` VALUES ('32', '江湖前沿 一篇攻略成就课代表', '03/30');

-- ----------------------------
-- Table structure for mn_user
-- ----------------------------
DROP TABLE IF EXISTS `mn_user`;
CREATE TABLE `mn_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uname` (`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mn_user
-- ----------------------------
INSERT INTO `mn_user` VALUES ('1', 'huatengma', '123456');
INSERT INTO `mn_user` VALUES ('2', 'yijiahu', '654321');
INSERT INTO `mn_user` VALUES ('3', 'admin', '123456');
#01等级突破礼
CREATE TABLE mn_levelgift(
    liid INT PRIMARY KEY AUTO_INCREMENT,
    ldetail VARCHAR(200)
);
INSERT INTO mn_levelgift VALUES
(null,'<table><tbody>
                               <tr><td>会心小石·三*1</td><td>血制棱石·三*1</td></tr>
                               <tr><td>根骨圆石·三*1</td><td>长久棱石·三*1</td></tr>
                               <tr><td>锻铁*15</td><td>纯银*15</td></tr>
                               <tr><td>锦缎*15</td><td>秋水澄江*1</td></tr>
                               <tr><td>绑定点券*100</td><td>绑定游戏币*40000</td></tr>
                               <tr><td>上班族减负令·壹*1</td><td>上班族减负令·贰*1</td></tr>
                               <tr><td>上班族减负令·叁*1</td><td>上班族减负令·肆*1</td></tr>
                               <tr><td>精纯石母*5</td><td>初级精金石*100</td></tr>
                               </tbody></table>'),
(null,'<table><tbody>
                               <tr><td>会心小石·三*1</td><td>血制棱石·三*1</td></tr>
                               <tr><td>根骨圆石·三*1</td><td>长久棱石·三*1</td></tr>
                               <tr><td>锻铁*15</td><td>纯银*15</td></tr>
                               <tr><td>锦缎*15</td><td>秋水澄江*1</td></tr>
                               <tr><td>绑定点券*100</td><td>绑定游戏币*40000</td></tr>
                               <tr><td>上班族减负令·壹*1</td><td>上班族减负令·贰*1</td></tr>
                               <tr><td>上班族减负令·叁*1</td><td>上班族减负令·肆*1</td></tr>
                               <tr><td>精纯石母*5</td><td>初级精金石*100</td></tr>
                               </tbody></table>'),
(null,'<table><tbody>
                               <tr><td>会心小石·三*1</td><td>血制棱石·三*1</td></tr>
                               <tr><td>根骨圆石·三*1</td><td>长久棱石·三*1</td></tr>
                               <tr><td>锻铁*15</td><td>纯银*15</td></tr>
                               <tr><td>锦缎*15</td><td>秋水澄江*1</td></tr>
                               <tr><td>绑定点券*100</td><td>绑定游戏币*40000</td></tr>
                               <tr><td>上班族减负令·壹*1</td><td>上班族减负令·贰*1</td></tr>
                               <tr><td>上班族减负令·叁*1</td><td>上班族减负令·肆*1</td></tr>
                               <tr><td>精纯石母*5</td><td>初级精金石*100</td></tr>
                               </tbody></table>'),
(null,'<table><tbody>
                               <tr><td>会心小石·三*1</td><td>血制棱石·三*1</td></tr>
                               <tr><td>根骨圆石·三*1</td><td>长久棱石·三*1</td></tr>
                               <tr><td>锻铁*15</td><td>纯银*15</td></tr>
                               <tr><td>锦缎*15</td><td>秋水澄江*1</td></tr>
                               <tr><td>绑定点券*100</td><td>绑定游戏币*40000</td></tr>
                               <tr><td>上班族减负令·壹*1</td><td>上班族减负令·贰*1</td></tr>
                               <tr><td>上班族减负令·叁*1</td><td>上班族减负令·肆*1</td></tr>
                               <tr><td>精纯石母*5</td><td>初级精金石*100</td></tr>
                               </tbody></table>'),
(null,'<table><tbody>
                               <tr><td>会心小石·三*1</td><td>血制棱石·三*1</td></tr>
                               <tr><td>根骨圆石·三*1</td><td>长久棱石·三*1</td></tr>
                               <tr><td>锻铁*15</td><td>纯银*15</td></tr>
                               <tr><td>锦缎*15</td><td>秋水澄江*1</td></tr>
                               <tr><td>绑定点券*100</td><td>绑定游戏币*40000</td></tr>
                               <tr><td>上班族减负令·壹*1</td><td>上班族减负令·贰*1</td></tr>
                               <tr><td>上班族减负令·叁*1</td><td>上班族减负令·肆*1</td></tr>
                               <tr><td>精纯石母*5</td><td>初级精金石*100</td></tr>
                               </tbody></table>'),
(null,'<table><tbody>
                               <tr><td>会心小石·三*1</td><td>血制棱石·三*1</td></tr>
                               <tr><td>根骨圆石·三*1</td><td>长久棱石·三*1</td></tr>
                               <tr><td>锻铁*15</td><td>纯银*15</td></tr>
                               <tr><td>锦缎*15</td><td>秋水澄江*1</td></tr>
                               <tr><td>绑定点券*100</td><td>绑定游戏币*40000</td></tr>
                               <tr><td>上班族减负令·壹*1</td><td>上班族减负令·贰*1</td></tr>
                               <tr><td>上班族减负令·叁*1</td><td>上班族减负令·肆*1</td></tr>
                               <tr><td>精纯石母*5</td><td>初级精金石*100</td></tr>
                               </tbody></table>'),
(null,'<table><tbody>
                               <tr><td>会心小石·三*1</td><td>血制棱石·三*1</td></tr>
                               <tr><td>根骨圆石·三*1</td><td>长久棱石·三*1</td></tr>
                               <tr><td>锻铁*15</td><td>纯银*15</td></tr>
                               <tr><td>锦缎*15</td><td>秋水澄江*1</td></tr>
                               <tr><td>绑定点券*100</td><td>绑定游戏币*40000</td></tr>
                               <tr><td>上班族减负令·壹*1</td><td>上班族减负令·贰*1</td></tr>
                               <tr><td>上班族减负令·叁*1</td><td>上班族减负令·肆*1</td></tr>
                               <tr><td>精纯石母*5</td><td>初级精金石*100</td></tr>
                               </tbody></table>'),
(null,'<table><tbody>
                               <tr><td>会心小石·三*1</td><td>血制棱石·三*1</td></tr>
                               <tr><td>根骨圆石·三*1</td><td>长久棱石·三*1</td></tr>
                               <tr><td>锻铁*15</td><td>纯银*15</td></tr>
                               <tr><td>锦缎*15</td><td>秋水澄江*1</td></tr>
                               <tr><td>绑定点券*100</td><td>绑定游戏币*40000</td></tr>
                               <tr><td>上班族减负令·壹*1</td><td>上班族减负令·贰*1</td></tr>
                               <tr><td>上班族减负令·叁*1</td><td>上班族减负令·肆*1</td></tr>
                               <tr><td>精纯石母*5</td><td>初级精金石*100</td></tr>
                               </tbody></table>'),
(null,'<table><tbody>
                               <tr><td>会心小石·三*1</td><td>血制棱石·三*1</td></tr>
                               <tr><td>根骨圆石·三*1</td><td>长久棱石·三*1</td></tr>
                               <tr><td>锻铁*15</td><td>纯银*15</td></tr>
                               <tr><td>锦缎*15</td><td>秋水澄江*1</td></tr>
                               <tr><td>绑定点券*100</td><td>绑定游戏币*40000</td></tr>
                               <tr><td>上班族减负令·壹*1</td><td>上班族减负令·贰*1</td></tr>
                               <tr><td>上班族减负令·叁*1</td><td>上班族减负令·肆*1</td></tr>
                               <tr><td>精纯石母*5</td><td>初级精金石*100</td></tr>
                               </tbody></table>');
