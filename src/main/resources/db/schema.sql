/*
Navicat MySQL Data Transfer

Source Server         : blog
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2018-07-25 15:53:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bl_attach
-- ----------------------------
DROP TABLE IF EXISTS `bl_attach`;
CREATE TABLE `bl_attach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `ftype` varchar(50) DEFAULT NULL,
  `fkey` varchar(100) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_attach
-- ----------------------------
INSERT INTO `bl_attach` VALUES ('10', 'a4.jpg', 'image', 'article/2018/02/7lt38sn21ci3qobfpach5r9cm7.jpg', '3', '1519809459');

-- ----------------------------
-- Table structure for bl_code_task
-- ----------------------------
DROP TABLE IF EXISTS `bl_code_task`;
CREATE TABLE `bl_code_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` char(1) DEFAULT '0',
  `function_name` varchar(100) DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `msg_id` varchar(100) DEFAULT NULL,
  `user_id` decimal(10,0) DEFAULT NULL,
  `result` varchar(100) DEFAULT '0',
  `type` varchar(100) DEFAULT NULL,
  `way` decimal(10,0) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `deleted` char(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_code_task
-- ----------------------------

-- ----------------------------
-- Table structure for bl_comments
-- ----------------------------
DROP TABLE IF EXISTS `bl_comments`;
CREATE TABLE `bl_comments` (
  `coid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT '0',
  `created` int(11) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `author_id` int(11) DEFAULT '0',
  `owner_id` int(11) DEFAULT '0',
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `content` longtext,
  `type` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `parent` int(11) DEFAULT '0',
  PRIMARY KEY (`coid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_comments
-- ----------------------------
INSERT INTO `bl_comments` VALUES ('4', '7', '1514514413', '杨光鸿', '0', '3', '1819500@123.com', null, '120.79.30.96', null, '什么鬼啊？那里来的服务器 ', null, null, '0');
INSERT INTO `bl_comments` VALUES ('5', '7', '1515311572', 'yangxs', '3', '3', 'yanghbwork@163.com', null, '120.79.30.96', null, '当然买的咯~~~', null, null, '4');
INSERT INTO `bl_comments` VALUES ('6', '7', '1515482754', 'VeraJing', '0', '3', '13108901481@163.COM', null, '120.79.30.96', null, '你是个傻逼吗?', null, null, '4');
INSERT INTO `bl_comments` VALUES ('7', '7', '1515482843', 'VeraJing', '0', '3', '13108901481@163.COM', 'https://www.baidu.com', '120.79.30.96', null, 'eeeeeee', null, null, '0');
INSERT INTO `bl_comments` VALUES ('13', '7', '1516260908', 'yangxs', '3', '3', 'yanghbwork@163.com', null, '180.169.128.212', null, '你可不可以不要乱留', null, null, '7');
INSERT INTO `bl_comments` VALUES ('15', '8', '1516261844', 'yangxs', '3', '3', 'yanghbwork@163.com', null, '180.169.128.212', null, '客气，有博客可以互换下友链~', null, null, '14');
INSERT INTO `bl_comments` VALUES ('16', '8', '1524820776', 'jon', '0', '3', 'yanghbwork@163.com', null, '120.79.30.96', null, '顶顶~~~~', null, null, '0');
INSERT INTO `bl_comments` VALUES ('18', '8', '1524821243', 'yangxs', '3', '3', 'yanghbwork@163.com', null, '180.169.128.212', null, 'thanks', null, null, '16');

-- ----------------------------
-- Table structure for bl_contents
-- ----------------------------
DROP TABLE IF EXISTS `bl_contents`;
CREATE TABLE `bl_contents` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `thumb_img` varchar(500) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  `content` longtext,
  `author_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `fmt_type` varchar(50) DEFAULT 'markdown',
  `tags` varchar(200) DEFAULT NULL,
  `categories` varchar(200) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  `comments_num` int(11) DEFAULT '0',
  `allow_comment` int(11) DEFAULT NULL,
  `allow_ping` int(11) DEFAULT NULL,
  `allow_feed` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_contents
-- ----------------------------
INSERT INTO `bl_contents` VALUES ('1', '关于', 'about', null, '1514428648', '1516342230', '### 目的\r\n  开通本网站目的很简单。\r\n\r\n主要是熟悉整个流程，以及linux的学习。\r\n\r\n另外就是方便整理一些笔记，属实是学习到了很多东西。\r\n\r\n在这条道路上走着，还是给自己留一点东西下来吧~\r\n\r\n:wink::wink::wink::wink:\r\n### 介绍\r\n我是一名软件工程师，主修Java,其他喜欢的语言（比如python）\r\n\r\n90后，双子座，中度强迫症吧~~~\r\n\r\n音乐：纯音 电音 偏欧美 日系 粤语\r\n\r\n电影：偏科幻 搞笑\r\n\r\n目前经常出没地上海，老家在遥远的四川遂宁\r\n\r\n### 网站\r\n本网站主语言Java~~\r\n\r\n使用了轻量级 MVC 框架 Blade 开发，网页主题采用了漂亮的 Pinghsu\r\n\r\n数据库是比较常规的MySql\r\n\r\n关于网站详细介绍 [Here](http://120.79.30.96/article/2)\r\n### 想要联系我\r\n如果你想要与我交朋友的话，请通过以下方式找到我\r\n\r\n希望可以共同进步~！~\r\n- <p><a href=\'https://twitter.com/yangxs3\' target=\'_blank\'>Twitter</a></p>\r\n- <p><a href=\'https://github.com/yangxsa\' target=\'_blank\'>Github</a></p>\r\n- <p><a href=\'https://gitee.com/yangxsa\' target=\'_blank\'>Gitee</a></p>\r\n- <p><a href=\'mailto:yangxswork@gmail.com\'>Email</a></p>\r\n- yangxswork@gmail.com\r\n建议使用邮箱QAQ··', '1', 'page', 'publish', 'markdown', '', '', '399', '0', '1', '1', '1');
INSERT INTO `bl_contents` VALUES ('2', '网站使用技术及更新记录', null, null, '1514428648', '1517623763', '## 前言\r\n最开始本来想用Spring全家桶写的\r\n\r\n但是由于前端知识不足，写出页面不是很合心意\r\n\r\n于是找到了Tale开源项目，这是一个开源博客建站系统，\r\n\r\n比较凑巧的是用Java写的，然后就开始了修修改改的路程\r\n\r\n## 使用相关\r\n为了表示感谢原作者以及以后的学习这里放点链接\r\n\r\n- <p><a href=\'https://gitee.com/biezhi/tale\' target=\'_blank\'>Tale</a> 博客系统</p>\r\n- <p><a href=\'https://github.com/chakhsu/pinghsu\' target=\'_blank\'>Pinghsu</a> 主题</p>\r\n- <p><a href=\'https://github.com/lets-blade/blade\' target=\'_blank\'>Blade</a> 轻量级mvc框架</p>\r\n- <p><a href=\'https://github.com/vdurmont/emoji-java\' target=\'_blank\'>Emoji-Java</a> 轻量级的java库</p>\r\n- <p><a href=\'https://github.com/subchen/jetbrick-template-2x\' target=\'_blank\'>Jetbrick-Template</a> 模板引擎</p>\r\n\r\n## 网站更新\r\n\r\n- 添加了独立搜索页\r\n- 修改原系统数据库Sqllite为MySql\r\n- 添加了评论回复邮箱提醒（ps:请确保邮箱正确,可能会误识别为垃圾邮件）\r\n- 添加了网站访问日志，IP地区识别-\r\n- 修改图片存储服务为阿里OSS\r\n- 好像就这么多\r\n\r\n## 变迁历史\r\n- 于2017年11月上线\r\n- 于2017年12月买了第一个域名www.yangxs.ink\r\n\r\n## 服务器\r\n- 阿里云 CenterOS\r\n- 域名也是阿里云的\r\n- 云存储是阿里云OSS', '1', 'post', 'publish', 'markdown', '博客,日志', 'Daily', '377', '0', '1', '1', '1');
INSERT INTO `bl_contents` VALUES ('3', '友情链接', 'links', null, '1514428648', '1515165967', '## 友情链接\r\n\r\n- :lock: <a href=\'http://www.begincode.net\' target=\'blank\'>Java技术论坛</a>\r\n\r\n## 链接须知\r\n> 请确定贵站可以稳定运营\r\n> 原创博客优先，技术类博客优先，设计、视觉类博客优先\r\n> 经常过来访问和评论，眼熟的\r\n\r\n备注：默认申请友情链接均为内页（当前页面）\r\n\r\n## 基本信息\r\n\r\n                网站名称：yangxs博客\r\n                网站地址：www.yangxs.ink(ps：还没有备案QAQ)\r\n请在当页通过评论来申请友链，其他地方不予回复\r\n\r\n暂时先这样，同时欢迎互换友链，这个页面留言即可。 ^_^\r\n\r\n还有，我会不定时对无法访问的网址进行清理，请保证自己的链接长期有效。', '1', 'page', 'publish', 'markdown', '', '', '416', '0', '1', '1', null);
INSERT INTO `bl_contents` VALUES ('5', '最近听的歌曲', null, null, '1514431277', '1516349439', '### 分享一些歌曲：\r\n---\r\n<iframe frameborder=\"no\" border=\"0\" marginwidth=\"0\" marginheight=\"0\" width=330 height=86 src=\"//music.163.com/outchain/player?type=2&id=509313150&auto=0&height=66\"></iframe>\r\n\r\n<iframe frameborder=\"no\" border=\"0\" marginwidth=\"0\" marginheight=\"0\" width=330 height=86 src=\"//music.163.com/outchain/player?type=2&id=436514415&auto=0&height=66\"></iframe>\r\n\r\n<iframe frameborder=\"no\" border=\"0\" marginwidth=\"0\" marginheight=\"0\" width=330 height=86 src=\"//music.163.com/outchain/player?type=2&id=515143305&auto=0&height=66\"></iframe>', '1', 'post', 'publish', 'markdown', '音乐', 'Music', '309', '0', '1', '1', '1');
INSERT INTO `bl_contents` VALUES ('7', 'Java--SSH三大框架的整合', null, null, '1514510280', '1516333518', '这里记录一下SSH的整合过程，顺便复习一下\r\n\r\n## 环境\r\n\r\n开发环境：JDK1.8 Window10\r\n\r\n使用工具：Idea  \r\n\r\n这里我使用了maven管理，项目结构是这个样子。\r\n\r\n<!--more-->\r\n\r\n<img src=\'http://120.79.30.96/upload/2018/01/sgvmj8ipgijcup109nln3flc1v.png\' style=\'margin-left:0px;\'>\r\n\r\n## Jar的引用(pom.xml)\r\n```java\r\n    <!--版本统一-->\r\n    <properties>\r\n        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>\r\n        <spring.version>3.1.1.RELEASE</spring.version>\r\n        <hibernate.version>3.6.5.Final</hibernate.version>\r\n        <struts2.version>2.3.1</struts2.version>\r\n        <mysql.version>5.0.5</mysql.version>\r\n    </properties>\r\n\r\n    <dependencies>\r\n        <!-- junit -->\r\n        <dependency>\r\n            <groupId>junit</groupId>\r\n            <artifactId>junit</artifactId>\r\n            <version>3.8.1</version>\r\n            <scope>test</scope>\r\n        </dependency>\r\n    </dependencies>\r\n\r\n    <dependencyManagement>\r\n        <dependencies>\r\n            <!-- spring -->\r\n            <dependency>\r\n                <groupId>org.springframework</groupId>\r\n                <artifactId>spring-core</artifactId>\r\n                <version>${spring.version}</version>\r\n            </dependency>\r\n            <dependency>\r\n                <groupId>org.springframework</groupId>\r\n                <artifactId>spring-context</artifactId>\r\n                <version>${spring.version}</version>\r\n            </dependency>\r\n            <dependency>\r\n                <groupId>org.springframework</groupId>\r\n                <artifactId>spring-jdbc</artifactId>\r\n                <version>${spring.version}</version>\r\n            </dependency>\r\n            <dependency>\r\n                <groupId>org.springframework</groupId>\r\n                <artifactId>spring-beans</artifactId>\r\n                <version>${spring.version}</version>\r\n            </dependency>\r\n            <dependency>\r\n                <groupId>org.springframework</groupId>\r\n                <artifactId>spring-web</artifactId>\r\n                <version>${spring.version}</version>\r\n            </dependency>\r\n            <dependency>\r\n                <groupId>org.springframework</groupId>\r\n                <artifactId>spring-orm</artifactId>\r\n                <version>${spring.version}</version>\r\n            </dependency>\r\n            <dependency>\r\n                <groupId>cglib</groupId>\r\n                <artifactId>cglib-nodep</artifactId>\r\n                <version>2.1_3</version>\r\n            </dependency>\r\n            <!-- hibernate -->\r\n            <dependency>\r\n                <groupId>org.hibernate</groupId>\r\n                <artifactId>hibernate-core</artifactId>\r\n                <version>${hibernate.version}</version>\r\n            </dependency>\r\n            <!-- struts2 -->\r\n            <dependency>\r\n                <groupId>org.apache.struts</groupId>\r\n                <artifactId>struts2-core</artifactId>\r\n                <version>${struts2.version}</version>\r\n            </dependency>\r\n            <!--config-browser-plugin 方便的浏览项目action与jsp view的映射 -->\r\n            <dependency>\r\n                <groupId>org.apache.struts</groupId>\r\n                <artifactId>struts2-junit-plugin</artifactId>\r\n                <version>${struts2.version}</version>\r\n                <scope>test</scope>\r\n            </dependency>\r\n            <dependency>\r\n                <groupId>org.apache.struts</groupId>\r\n                <artifactId>struts2-spring-plugin</artifactId>\r\n                <version>${struts2.version}</version>\r\n            </dependency>\r\n            <!-- 添加对数据库的支持 -->\r\n            <dependency>\r\n                <groupId>mysql</groupId>\r\n                <artifactId>mysql-connector-java</artifactId>\r\n                <version>${mysql.version}</version>\r\n            </dependency>\r\n            <!-- 添加对数据源的支持 -->\r\n            <dependency>\r\n                <groupId>commons-dbcp</groupId>\r\n                <artifactId>commons-dbcp</artifactId>\r\n                <version>1.4</version>\r\n            </dependency>\r\n        </dependencies>\r\n    </dependencyManagement>\r\n\r\n    <build>\r\n        <plugins>\r\n            <!-- 统一源代码编译输出的JDK版本 -->\r\n            <plugin>\r\n                <groupId>org.apache.maven.plugins</groupId>\r\n                <artifactId>maven-compiler-plugin</artifactId>\r\n                <version>3.5.1</version>\r\n                <configuration>\r\n                    <source>1.7</source>\r\n                    <target>1.7</target>\r\n                </configuration>\r\n            </plugin>\r\n        </plugins>\r\n    </build>\r\n```  \r\n\r\n## Spring配置文件(applicationContext.xml)\r\n\r\n```java\r\n<!-- 开启包扫描，并注册注解 -->\r\n    <context:component-scan base-package=\"com.yaa.*\"/>\r\n\r\n    <!--引入属性文件-->\r\n    <context:property-placeholder file-encoding=\"utf-8\" location=\"classpath:config/jdbc.properties\"/>\r\n\r\n    <!--设置数据源-->\r\n    <bean id=\"dataSource\" class=\"org.apache.commons.dbcp.BasicDataSource\">\r\n        <property name=\"username\" value=\"${jdbc.username}\"/>\r\n        <property name=\"password\" value=\"${jdbc.password}\"/>\r\n        <property name=\"url\" value=\"${jdbc.url}\"/>\r\n        <property name=\"driverClassName\" value=\"${jdbc.classDriver}\"/>\r\n    </bean>\r\n\r\n\r\n    <!--sessionFactory-->\r\n    <!-- hibernate 管理-->\r\n    <bean id=\"sessionFactory\" class=\"org.springframework.orm.hibernate3.annotation.AnnotationSessionFactoryBean\">\r\n        <!-- 引用上面设置的数据源 -->\r\n        <property name=\"dataSource\">\r\n            <ref bean=\"dataSource\" />\r\n        </property>\r\n\r\n        <property name=\"hibernateProperties\">\r\n            <props>\r\n                <prop key=\"hibernate.dialect\">org.hibernate.dialect.MySQLDialect</prop>\r\n                <prop key=\"hibernate.autoReconnect\">true</prop>\r\n                <prop key=\"hibernate.hbm2ddl.auto\">update</prop>\r\n                <prop key=\"hibernate.show_sql\">true</prop>\r\n                <prop key=\"hibernate.format_sql\">true</prop>\r\n                <!-- 解决session关闭问题 -->\r\n                <prop key=\"hibernate.enable_lazy_load_no_trans\">true</prop>\r\n                <prop key=\"current_session_context_class\">thread</prop>\r\n                <prop key=\"hibernate.connection.url\">jdbc:mysql://localhost:3306/ssh</prop>\r\n                <prop key=\"hibernate.connection.driver_class\">com.mysql.jdbc.Driver</prop>\r\n            </props>\r\n        </property>\r\n        <!-- 包扫描的方式加载注解类 -->\r\n        <property name=\"packagesToScan\">\r\n            <list>\r\n                <value>com.yaa.model</value>\r\n            </list>\r\n        </property>\r\n    </bean>\r\n\r\n    <!-- 用注解来实现事物管理 -->\r\n    <bean id=\"transactionManager\" class=\"org.springframework.orm.hibernate3.HibernateTransactionManager\">\r\n        <property name=\"sessionFactory\" ref=\"sessionFactory\" />\r\n    </bean>\r\n    <tx:annotation-driven transaction-manager=\"transactionManager\" proxy-target-class=\"true\"/>\r\n```  \r\n\r\n\r\n## Struts配置文件（struts.xml）\r\n\r\n```java\r\n    <constant name=\"struts.devMode\" value=\"false\"/>\r\n    <constant name=\"struts.objectFactory\" value=\"spring\" />\r\n    <package name=\"user\" namespace=\"/\" extends=\"struts-default\">\r\n        <action name=\"user_save\" class=\"userAction\" method=\"saveUser\">\r\n            <result name=\"success\">/index.jsp</result>\r\n        </action>\r\n    </package>\r\n```  \r\n## web.xml配置\r\n```java\r\n    <!-- struts2容器控制器 -->\r\n    <filter>\r\n        <filter-name>struts2</filter-name>\r\n        <filter-class>org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter</filter-class>\r\n    </filter>\r\n\r\n    <filter-mapping>\r\n        <filter-name>struts2</filter-name>\r\n        <url-pattern>/*</url-pattern>\r\n    </filter-mapping>\r\n    <!-- spring容器配置 -->\r\n    <context-param>\r\n        <param-name>contextConfigLocation</param-name>\r\n        <param-value>classpath*:spring/applicationContext.xml</param-value>\r\n    </context-param>\r\n\r\n    <!-- spring容器监听器 -->\r\n    <listener>\r\n        <listener-class>org.springframework.web.context.ContextLoaderListener</listener-class>\r\n    </listener>\r\n    <listener>\r\n        <listener-class>org.springframework.web.util.IntrospectorCleanupListener</listener-class>\r\n    </listener>\r\n    <!-- 欢迎页面 -->\r\n    <welcome-file-list>\r\n        <welcome-file>index.jsp</welcome-file>\r\n    </welcome-file-list>\r\n```  \r\n\r\n## 逻辑类\r\n1、dao层\r\n```java\r\npackage com.yaa.dao.impl;\r\n\r\nimport com.yaa.dao.UserDao;\r\nimport com.yaa.model.User;\r\nimport org.springframework.stereotype.Repository;\r\nimport org.springframework.transaction.annotation.Transactional;\r\n\r\n@Repository\r\n@Transactional(rollbackFor = Exception.class)\r\npublic class UserDaoImpl extends BaseDaoImpl<User> implements UserDao{\r\n\r\n    @Override\r\n    public void saveUser(User user) {\r\n        try {\r\n            save(user);\r\n        }catch (Exception e){\r\n            e.printStackTrace();\r\n        }\r\n    }\r\n}\r\n\r\n```  \r\n2.service层\r\n```java\r\npackage com.yaa.service.impl;\r\n\r\nimport com.yaa.dao.UserDao;\r\nimport com.yaa.model.User;\r\nimport com.yaa.service.UserService;\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.stereotype.Service;\r\n\r\n@Service\r\npublic class UserServiceImpl implements UserService {\r\n\r\n    @Autowired\r\n    private UserDao userDao;\r\n\r\n    @Override\r\n    public void save(User user) {\r\n        userDao.saveUser(user);\r\n    }\r\n}\r\n```\r\n 3.action层\r\n ```java\r\npackage com.yaa.action;\r\n\r\nimport com.opensymphony.xwork2.ActionSupport;\r\nimport com.yaa.model.User;\r\nimport com.yaa.service.UserService;\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.stereotype.Controller;\r\n\r\nimport java.util.UUID;\r\n\r\n\r\n@Controller\r\npublic class UserAction extends ActionSupport {\r\n\r\n    @Autowired\r\n    private UserService userService;\r\n\r\n\r\n    public String saveUser(){\r\n        User user = new User();\r\n        user.setName(UUID.randomUUID().toString());\r\n        user.setAge(1);\r\n        user.setSex(\"m\");\r\n        userService.save(user);\r\n        return SUCCESS;\r\n    }\r\n\r\n\r\n}\r\n\r\n```  \r\n基本的配置信息如上所示<br>\r\n\r\n具体的Demo，请<a href=\'https://github.com/yangxsa/ssh\' target=\'blank\'> 点击这里</a>', '3', 'post', 'publish', 'markdown', 'SSH', 'Tutorials', '331', '5', '1', '1', '1');
INSERT INTO `bl_contents` VALUES ('8', 'Linux系统下MYSQL的配置以及安装', null, null, '1516003876', '1516341785', '因为博客是使用的MYSQL数据库，<br>\r\n上线时自然而然的遇到安装MYSQL的问题<br>\r\n这里就记录一下我在Linux系统安装MYSQL的过程~~~\r\n安装的方式有很多，这里使用yum安装大法\r\n\r\n## 添加MYSQL YUM库\r\n1.查看自己的Linux平台版本信息\r\n```java\r\nuname -a\r\n```\r\n![alt](http://yangxs.oss-cn-beijing.aliyuncs.com/article/15159950678502.png)\r\n2.选择版本 (地址：https://dev.mysql.com/downloads/repo/yum/)<br>\r\n![alt](http://yangxs.oss-cn-beijing.aliyuncs.com/article/1515995290657.png)\r\n\r\n3.下载rpm包（这里我选择el6的对应版本）\r\n```java\r\nwget https://repo.mysql.com//mysql57-community-release-el6-11.noarch.rpm\r\n```\r\n![alt](http://yangxs.oss-cn-beijing.aliyuncs.com/article/20180115135257.png)\r\n\r\n4.安装rpm包\r\n```java\r\nrpm -Uvh mysql57-community-release-el6-11.noarch.rpm\r\n```\r\n![alt](http://yangxs.oss-cn-beijing.aliyuncs.com/article/20180115135707.png)\r\n\r\nMYSQL YUM库安装完成~~~~\r\n## 安装MYSQL数据库\r\n```java\r\nyum install mysql-community-server\r\n```\r\n![alt](http://yangxs.oss-cn-beijing.aliyuncs.com/article/15159965359265.png)\r\n\r\n继续输Y，等待下载完成，下载完成后继续输入Y，等待安装完成。\r\n![alt](http://yangxs.oss-cn-beijing.aliyuncs.com/article/20180115141744.png)\r\n\r\nMYSQL数据库就安装成功了~~\r\n## 查看版本信息\r\n```java\r\nrmp -qa|grep mysql\r\n```\r\n![alt](http://yangxs.oss-cn-beijing.aliyuncs.com/article/20180115142034.png)\r\n\r\n可以看到MYSQL的版本信息\r\n## MYSQL的配置\r\n因为MYSQL5.7之前的版本第一次是没有密码的，<br>\r\n但是5.7之后的版本会有一个随机生成的密码<br>\r\n这个密码在 /var/log/mysqld.log 文件中<br>\r\n1.首先启动服务（第一次启动如下图）\r\n```java\r\nservice mysqld start\r\n```\r\n![alt](http://yangxs.oss-cn-beijing.aliyuncs.com/article/20180115142832.png)\r\n\r\n2.查看密码生成的随机密码（初始化完成后）\r\n```java\r\nsudo grep \'temporary password\' /var/log/mysqld.log\r\n```\r\n![alt](http://yangxs.oss-cn-beijing.aliyuncs.com/article/20180115143042.png)\r\n\r\n3.登录mysql数据库\r\n输入上方生成的密码进行登录（注意密码的输入是不可见的）\r\n```java\r\nmysql -u root -p  \r\n```\r\n![alt](http://yangxs.oss-cn-beijing.aliyuncs.com/article/20180115143327.png)\r\n\r\n4.修改密码\r\n```java\r\nset password = password(\'123456\')\r\n```\r\n如果出现如下错误：\r\n![alt](http://yangxs.oss-cn-beijing.aliyuncs.com/article/20180115155648.png)\r\n你可以设置复杂一点的密码<br>\r\n如果想设置简单的密码,运行下面两条语句\r\n```java\r\nset global validate_password_policy=0;\r\nset global validate_password_length=1;\r\n```\r\n修改密码安全策略后，然后重新修改即可~~~~\r\n\r\n至此大功完成~~~\r\n## 总结\r\n最开始走了很多弯路，不过好在记忆深刻~~<br>\r\n这是在虚拟机上搭建的过程', '3', 'post', 'publish', 'markdown', 'MYSQL,Linux', 'Tutorials', '185', '3', '1', '1', '1');
INSERT INTO `bl_contents` VALUES ('10', 'Shell脚本命令运行多个Jar包', null, null, '1516350879', '1516352644', '最近学习了一丢丢的Shell基础\r\n\r\n也是查询了许多的资料~~~\r\n\r\n下面是我写的运行多个Jar包的Shell脚本\r\n```java\r\n#!/bin/bash\r\n#启动Jar所在目录  \r\nHOME=\'/home/friendy/Desktop/blog\'\r\n\r\n#开启方法\r\nstart(){  \r\n   #进入命令所在目录  \r\n   cd $HOME\r\n   #启动Jar并输出日志文件\r\n   nohup java -jar $HOME/email-task.jar > $HOME/email-tasks.log 2>&1 &     \r\n   nohup java -jar $HOME/blog-least.jar > $HOME/blog.log 2>&1 &  \r\n   \r\n   i=1\r\n   #查询启动的Pid端口号\r\n   ps -ef|grep java|awk \'{print $2}\'|while read pid	\r\n     do\r\n	i=`expr $i + 1`\r\n 	echo \"jar is running:pid is $pid\"\r\n	if [[ $i -eq 3 ]];then\r\n          return;\r\n  	fi\r\n     done\r\n}  \r\n\r\n#停止方法\r\nstop(){  \r\n    j=1\r\n    #查询出Jar运行的Pid端口\r\n    ps -ef|grep java|awk \'{print $2}\'|while read pid\r\n      do\r\n	  j=`expr $j + 1`\r\n         #循环关闭Pid端口\r\n         kill -9 $pid\r\n	  echo \"close process pid $pid\"\r\n	  if [[ $j -eq 3 ]];then\r\n	   	return ;\r\n	  fi\r\n      done\r\n}  \r\n  \r\ncase $1 in  \r\n   start)  \r\n      start  \r\n   ;;  \r\n   stop)  \r\n      stop  \r\n   ;;\r\n   restart)  \r\n      $0 stop\r\n      sleep 2\r\n      $0 start\r\n   ;;  \r\n   *)  \r\n      echo \"Usage: {start|stop|restart}\"  \r\n   ;;  \r\nesac  \r\n\r\n```  \r\n\r\n至此~~:kissing_heart::kissing_heart::kissing_heart:', '3', 'post', 'publish', 'markdown', 'Shell,Linux', 'Notes', '104', '0', '1', '1', '1');
INSERT INTO `bl_contents` VALUES ('11', 'jQuery获取json文件中的值', null, null, '1517381892', '1517383486', '## Json文件格式\r\n```js\r\n{\r\n  \"text1\":\"邮箱地址不能为空\",\r\n  \"text2\":\"请输入正确的邮箱地址\"\r\n}\r\n```  \r\n\r\n## JavaScript\r\n```js\r\n//声明方法\r\nfunction getValue(key){\r\n  $.getJSON(url,function (data) {\r\n      return data[key]\r\n  });\r\n}\r\n//调用\r\nconsole.log(getValue(\"text1\"));\r\n```  \r\n > url：Json文件所在路径\r\n', '3', 'post', 'publish', 'markdown', 'jQuery,JavaScript', 'Notes', '44', '0', '1', '1', '1');
INSERT INTO `bl_contents` VALUES ('12', 'Js操作Cookie相关代码', null, null, '1517641842', '1517642102', '# 代码块\r\n```js\r\n//time 单位毫秒  2*60*60*1000\r\nfunction setCookie(name,value,time) {\r\n    var exp = new Date();\r\n    exp.setTime(exp.getTime() + time);\r\n    document.cookie = name + \"=\"+ escape (value) + \";expires=\" + exp.toGMTString()+\";path=/\";\r\n}\r\n\r\nfunction getCookie(name) {\r\n    var arr,reg=new RegExp(\"(^| )\"+name+\"=([^;]*)(;|$)\");\r\n    if(arr=document.cookie.match(reg)){\r\n        return unescape(arr[2]);\r\n    }else{\r\n        return null;\r\n    }\r\n}\r\n\r\nfunction delCookie(name) {\r\n    var exp = new Date();\r\n    exp.setTime(exp.getTime() - 1);\r\n    var cval=getCookie(name);\r\n    if(cval!=null){\r\n        document.cookie= name + \"=\"+cval+\";expires=\"+exp.toGMTString()+\";path=/\";\r\n    }\r\n}\r\n```', '3', 'post', 'publish', 'markdown', 'JavaScript,Cookie', 'Notes', '30', '0', '1', '1', '1');

-- ----------------------------
-- Table structure for bl_email_task
-- ----------------------------
DROP TABLE IF EXISTS `bl_email_task`;
CREATE TABLE `bl_email_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `msg` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` char(1) DEFAULT '0',
  `function_name` varchar(100) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_email_task
-- ----------------------------
INSERT INTO `bl_email_task` VALUES ('4', '7', 'admin', '你可不可以不要乱留', '13108901481@163.COM', '1', 'reply', '180.169.128.212', null, '2018-01-18 15:35:08');
INSERT INTO `bl_email_task` VALUES ('5', '8', 'yangxs', '客气，有博客可以互换下友链~', '310632730@qq.com', '1', 'reply', '180.169.128.212', null, '2018-01-18 15:50:44');
INSERT INTO `bl_email_task` VALUES ('6', '8', 'jon', 'thanks', 'yanghbwork@163.com', '1', 'reply', '120.79.30.96', null, '2018-04-27 17:26:58');
INSERT INTO `bl_email_task` VALUES ('7', '8', 'yangxs', 'thanks', 'yanghbwork@163.com', '1', 'reply', '180.169.128.212', null, '2018-04-27 17:27:23');

-- ----------------------------
-- Table structure for bl_log
-- ----------------------------
DROP TABLE IF EXISTS `bl_log`;
CREATE TABLE `bl_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(100) DEFAULT NULL,
  `data` varchar(2000) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_log
-- ----------------------------

-- ----------------------------
-- Table structure for bl_logs
-- ----------------------------
DROP TABLE IF EXISTS `bl_logs`;
CREATE TABLE `bl_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(100) DEFAULT NULL,
  `data` varchar(2000) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_logs
-- ----------------------------
INSERT INTO `bl_logs` VALUES ('5', '初始化站点', null, '3', '', '1514440029');
INSERT INTO `bl_logs` VALUES ('6', '登录后台', 'admin', '3', '120.79.30.96', '1514440731');
INSERT INTO `bl_logs` VALUES ('7', '登录后台', 'admin', '3', '120.79.30.96', '1514441201');
INSERT INTO `bl_logs` VALUES ('8', '登录后台', 'admin', '3', '120.79.30.96', '1514444613');
INSERT INTO `bl_logs` VALUES ('9', '登录后台', 'admin', '3', '120.79.30.96', '1514510139');
INSERT INTO `bl_logs` VALUES ('10', '删除文章', '6', '3', '120.79.30.96', '1514510292');
INSERT INTO `bl_logs` VALUES ('11', '登录后台', 'admin', '3', '120.79.30.96', '1515135883');
INSERT INTO `bl_logs` VALUES ('12', '删除附件', '/upload/2018/01/2fddpv747oin9re658edgvdkcq.png', '3', '120.79.30.96', '1515136561');
INSERT INTO `bl_logs` VALUES ('13', '删除附件', '/upload/2018/01/tq6ok5entcg61raa61hcsn5m6j.png', '3', '120.79.30.96', '1515136667');
INSERT INTO `bl_logs` VALUES ('14', '登录后台', 'admin', '3', '120.79.30.96', '1515137482');
INSERT INTO `bl_logs` VALUES ('15', '登录后台', 'admin', '3', '120.79.30.96', '1515165499');
INSERT INTO `bl_logs` VALUES ('16', '登录后台', 'admin', '3', '120.79.30.96', '1515310196');
INSERT INTO `bl_logs` VALUES ('17', '修改个人信息', '{\"uid\":null,\"username\":null,\"password\":null,\"email\":null,\"home_url\":null,\"screen_name\":null,\"created\":null,\"activated\":null,\"logged\":null,\"group_name\":null}', '3', '120.79.30.96', '1515311614');
INSERT INTO `bl_logs` VALUES ('18', '登录后台', 'admin', '3', '120.79.30.96', '1515503906');
INSERT INTO `bl_logs` VALUES ('19', '登录后台', 'admin', '3', '120.79.30.96', '1515547019');
INSERT INTO `bl_logs` VALUES ('20', '登录后台', 'admin', '3', '120.79.30.96', '1515721664');
INSERT INTO `bl_logs` VALUES ('21', '登录后台', 'admin', '3', '120.79.30.96', '1516003711');
INSERT INTO `bl_logs` VALUES ('22', '登录后台', 'admin', '3', '120.79.30.96', '1516005584');
INSERT INTO `bl_logs` VALUES ('23', '登录后台', 'admin', '3', '120.79.30.96', '1516007813');
INSERT INTO `bl_logs` VALUES ('24', '登录后台', 'admin', '3', '120.79.30.96', '1516009207');
INSERT INTO `bl_logs` VALUES ('25', '登录后台', 'admin', '3', '120.79.30.96', '1516016433');
INSERT INTO `bl_logs` VALUES ('26', '登录后台', 'admin', '3', '120.79.30.96', '1516247170');
INSERT INTO `bl_logs` VALUES ('27', '登录后台', 'admin', '3', '120.79.30.96', '1516260521');
INSERT INTO `bl_logs` VALUES ('28', '登录后台', 'admin', '3', '120.79.30.96', '1516261806');
INSERT INTO `bl_logs` VALUES ('29', '登录后台', 'admin', '3', '120.79.30.96', '1516274811');
INSERT INTO `bl_logs` VALUES ('30', '登录后台', 'admin', '3', '120.79.30.96', '1516276948');
INSERT INTO `bl_logs` VALUES ('31', '登录后台', 'admin', '3', '120.79.30.96', '1516325055');
INSERT INTO `bl_logs` VALUES ('32', '登录后台', 'admin', '3', '120.79.30.96', '1516325994');
INSERT INTO `bl_logs` VALUES ('33', '登录后台', 'admin', '3', '120.79.30.96', '1516328038');
INSERT INTO `bl_logs` VALUES ('34', '登录后台', 'admin', '3', '120.79.30.96', '1516329892');
INSERT INTO `bl_logs` VALUES ('35', '登录后台', 'admin', '3', '120.79.30.96', '1516330867');
INSERT INTO `bl_logs` VALUES ('36', '登录后台', 'admin', '3', '120.79.30.96', '1516332338');
INSERT INTO `bl_logs` VALUES ('37', '登录后台', 'admin', '3', '120.79.30.96', '1516332898');
INSERT INTO `bl_logs` VALUES ('38', '登录后台', 'admin', '3', '120.79.30.96', '1516338407');
INSERT INTO `bl_logs` VALUES ('39', '登录后台', 'admin', '3', '120.79.30.96', '1516341532');
INSERT INTO `bl_logs` VALUES ('40', '登录后台', 'admin', '3', '120.79.30.96', '1516342609');
INSERT INTO `bl_logs` VALUES ('41', '登录后台', 'admin', '3', '120.79.30.96', '1516349369');
INSERT INTO `bl_logs` VALUES ('42', '删除文章', '9', '3', '120.79.30.96', '1516350887');
INSERT INTO `bl_logs` VALUES ('43', '登录后台', 'admin', '3', '120.79.30.96', '1516351808');
INSERT INTO `bl_logs` VALUES ('44', '登录后台', 'admin', '3', '120.79.30.96', '1516365446');
INSERT INTO `bl_logs` VALUES ('45', '登录后台', 'admin', '3', '120.79.30.96', '1516366970');
INSERT INTO `bl_logs` VALUES ('46', '登录后台', 'admin', '3', '120.79.30.96', '1516431972');
INSERT INTO `bl_logs` VALUES ('47', '登录后台', 'admin', '3', '120.79.30.96', '1516506523');
INSERT INTO `bl_logs` VALUES ('48', '登录后台', 'admin', '3', '120.79.30.96', '1516509189');
INSERT INTO `bl_logs` VALUES ('49', '登录后台', 'admin', '3', '120.79.30.96', '1516699206');
INSERT INTO `bl_logs` VALUES ('50', '登录后台', 'admin', '3', '120.79.30.96', '1516953629');
INSERT INTO `bl_logs` VALUES ('51', '登录后台', 'admin', '3', '120.79.30.96', '1516960862');
INSERT INTO `bl_logs` VALUES ('52', '删除附件', 'article/2018/01/rq2al6aol8ht1r72u32dkdi6k4.jpg', '3', '120.79.30.96', '1516960917');
INSERT INTO `bl_logs` VALUES ('53', '删除附件', 'article/2018/01/qqe3b5hijshdpp6r2kp0i8a47v.jpg', '3', '120.79.30.96', '1516960920');
INSERT INTO `bl_logs` VALUES ('54', '删除附件', 'article/2018/01/7tar9rbfjmgonolp548gae09k1.jpg', '3', '120.79.30.96', '1516960924');
INSERT INTO `bl_logs` VALUES ('55', '删除附件', 'article/2018/01/7c9b0nbk16iduo906q0p03uc5a.jpg', '3', '120.79.30.96', '1516960939');
INSERT INTO `bl_logs` VALUES ('56', '删除附件', 'article/2018/01/rliavcjor0jh2o0eokrsn7r1a4.jpg', '3', '120.79.30.96', '1516960942');
INSERT INTO `bl_logs` VALUES ('57', '登录后台', 'admin', '3', '120.79.30.96', '1517013860');
INSERT INTO `bl_logs` VALUES ('58', '登录后台', 'admin', '3', '120.79.30.96', '1517136526');
INSERT INTO `bl_logs` VALUES ('59', '登录后台', 'admin', '3', '120.79.30.96', '1517319018');
INSERT INTO `bl_logs` VALUES ('60', '登录后台', 'admin', '3', '120.79.30.96', '1517378110');
INSERT INTO `bl_logs` VALUES ('61', '登录后台', 'admin', '3', '120.79.30.96', '1517381574');
INSERT INTO `bl_logs` VALUES ('62', '登录后台', 'admin', '3', '120.79.30.96', '1517383461');
INSERT INTO `bl_logs` VALUES ('63', '登录后台', 'admin', '3', '120.79.30.96', '1517580533');
INSERT INTO `bl_logs` VALUES ('64', '登录后台', 'admin', '3', '120.79.30.96', '1517623693');
INSERT INTO `bl_logs` VALUES ('65', '登录后台', 'admin', '3', '120.79.30.96', '1517641106');
INSERT INTO `bl_logs` VALUES ('66', '登录后台', 'admin', '3', '120.79.30.96', '1518138893');
INSERT INTO `bl_logs` VALUES ('67', '登录后台', 'admin', '3', '120.79.30.96', '1519809325');
INSERT INTO `bl_logs` VALUES ('68', '删除附件', 'article/2018/02/72o6fbc3okh4npur8con3s29c0.jpg', '3', '120.79.30.96', '1519809449');
INSERT INTO `bl_logs` VALUES ('69', '登录后台', 'admin', '3', '120.79.30.96', '1520924850');
INSERT INTO `bl_logs` VALUES ('70', '登录后台', 'admin', '3', '120.79.30.96', '1521200215');
INSERT INTO `bl_logs` VALUES ('71', '登录后台', 'admin', '3', '120.79.30.96', '1522672537');
INSERT INTO `bl_logs` VALUES ('72', '登录后台', 'admin', '3', '120.79.30.96', '1524820680');
INSERT INTO `bl_logs` VALUES ('73', '登录后台', 'admin', '3', '120.79.30.96', '1524821204');

-- ----------------------------
-- Table structure for bl_metas
-- ----------------------------
DROP TABLE IF EXISTS `bl_metas`;
CREATE TABLE `bl_metas` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `parent` int(11) DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_metas
-- ----------------------------
INSERT INTO `bl_metas` VALUES ('4', '音乐', '音乐', 'tag', null, '0', '0');
INSERT INTO `bl_metas` VALUES ('6', 'SSH', 'SSH', 'tag', null, '0', '0');
INSERT INTO `bl_metas` VALUES ('9', 'MYSQL', 'MYSQL', 'tag', null, '0', '0');
INSERT INTO `bl_metas` VALUES ('10', 'Linux', 'Linux', 'tag', null, '0', '0');
INSERT INTO `bl_metas` VALUES ('12', 'Notes', null, 'category', null, '0', '0');
INSERT INTO `bl_metas` VALUES ('13', 'Tutorials', null, 'category', null, '0', '0');
INSERT INTO `bl_metas` VALUES ('14', 'Daily', null, 'category', null, '0', '0');
INSERT INTO `bl_metas` VALUES ('15', 'Music', null, 'category', null, '0', '0');
INSERT INTO `bl_metas` VALUES ('16', '博客', '博客', 'tag', null, '0', '0');
INSERT INTO `bl_metas` VALUES ('17', '日志', '日志', 'tag', null, '0', '0');
INSERT INTO `bl_metas` VALUES ('18', 'Shell', 'Shell', 'tag', null, '0', '0');
INSERT INTO `bl_metas` VALUES ('19', 'jQuery', 'jQuery', 'tag', null, '0', '0');
INSERT INTO `bl_metas` VALUES ('20', 'JavaScript', 'JavaScript', 'tag', null, '0', '0');
INSERT INTO `bl_metas` VALUES ('21', 'Cookie', 'Cookie', 'tag', null, '0', '0');

-- ----------------------------
-- Table structure for bl_options
-- ----------------------------
DROP TABLE IF EXISTS `bl_options`;
CREATE TABLE `bl_options` (
  `name` varchar(100) NOT NULL,
  `value` longtext NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_options
-- ----------------------------
INSERT INTO `bl_options` VALUES ('allow_install', '0', '是否允许重新安装博客');
INSERT INTO `bl_options` VALUES ('site_description', '博客系统,Blade框架', null);
INSERT INTO `bl_options` VALUES ('site_keywords', '博客系统,Blade框架', null);
INSERT INTO `bl_options` VALUES ('site_theme', 'default', null);
INSERT INTO `bl_options` VALUES ('site_title', '杨先森', null);
INSERT INTO `bl_options` VALUES ('site_url', 'http://120.79.30.96', null);
INSERT INTO `bl_options` VALUES ('social_github', 'yangxsa', null);
INSERT INTO `bl_options` VALUES ('social_twitter', 'yangxs3', null);
INSERT INTO `bl_options` VALUES ('social_weibo', '', null);
INSERT INTO `bl_options` VALUES ('social_zhihu', '', null);

-- ----------------------------
-- Table structure for bl_relationships
-- ----------------------------
DROP TABLE IF EXISTS `bl_relationships`;
CREATE TABLE `bl_relationships` (
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`cid`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_relationships
-- ----------------------------
INSERT INTO `bl_relationships` VALUES ('2', '14');
INSERT INTO `bl_relationships` VALUES ('2', '16');
INSERT INTO `bl_relationships` VALUES ('2', '17');
INSERT INTO `bl_relationships` VALUES ('5', '4');
INSERT INTO `bl_relationships` VALUES ('5', '14');
INSERT INTO `bl_relationships` VALUES ('5', '15');
INSERT INTO `bl_relationships` VALUES ('7', '6');
INSERT INTO `bl_relationships` VALUES ('7', '13');
INSERT INTO `bl_relationships` VALUES ('8', '9');
INSERT INTO `bl_relationships` VALUES ('8', '10');
INSERT INTO `bl_relationships` VALUES ('8', '13');
INSERT INTO `bl_relationships` VALUES ('10', '10');
INSERT INTO `bl_relationships` VALUES ('10', '12');
INSERT INTO `bl_relationships` VALUES ('10', '18');
INSERT INTO `bl_relationships` VALUES ('11', '12');
INSERT INTO `bl_relationships` VALUES ('11', '19');
INSERT INTO `bl_relationships` VALUES ('11', '20');
INSERT INTO `bl_relationships` VALUES ('12', '12');
INSERT INTO `bl_relationships` VALUES ('12', '20');
INSERT INTO `bl_relationships` VALUES ('12', '21');

-- ----------------------------
-- Table structure for bl_safe_code
-- ----------------------------
DROP TABLE IF EXISTS `bl_safe_code`;
CREATE TABLE `bl_safe_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `scene_id` varchar(32) DEFAULT NULL,
  `open_id` varchar(100) DEFAULT NULL,
  `s_key` varchar(200) DEFAULT NULL,
  `s_value` varchar(100) DEFAULT NULL,
  `scangen_key` varchar(100) DEFAULT NULL,
  `business_type` varchar(32) DEFAULT NULL,
  `scan_time` datetime DEFAULT NULL,
  `expiry_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_safe_code
-- ----------------------------

-- ----------------------------
-- Table structure for bl_users
-- ----------------------------
DROP TABLE IF EXISTS `bl_users`;
CREATE TABLE `bl_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `home_url` varchar(255) DEFAULT NULL,
  `screen_name` varchar(100) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `activated` int(11) DEFAULT NULL,
  `logged` int(11) DEFAULT NULL,
  `group_name` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `AK_UNQ_BL_USER_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_users
-- ----------------------------
INSERT INTO `bl_users` VALUES ('3', 'admin', '2e4d491a26a987532ef1ba4ed1be4e6d', 'yanghbwork@163.com', null, 'yangxs', '1514440029', null, '1524821204', null);

-- ----------------------------
-- Table structure for bl_visited
-- ----------------------------
DROP TABLE IF EXISTS `bl_visited`;
CREATE TABLE `bl_visited` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `county` varchar(50) DEFAULT NULL,
  `visited_num` int(11) DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1441 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_visited
-- ----------------------------
INSERT INTO `bl_visited` VALUES ('1', null, '120.79.30.96', '中国', '华南', '广东省', '深圳市', '', '24', '1516244947');
INSERT INTO `bl_visited` VALUES ('2', null, '180.169.128.212', '中国', '华东', '上海市', '上海市', '', '192', '1526893002');
INSERT INTO `bl_visited` VALUES ('4', null, '114.215.45.101', '中国', '华东', '山东省', '青岛市', '', '36', '1527152795');
INSERT INTO `bl_visited` VALUES ('8', null, '106.11.231.20', '中国', '华东', '上海市', '上海市', '', '1', '1516266711');
INSERT INTO `bl_visited` VALUES ('12', null, '223.104.213.36', '中国', '华东', '上海市', '上海市', '', '9', '1516269980');
INSERT INTO `bl_visited` VALUES ('15', null, '183.192.201.97', '中国', '华东', '上海市', '上海市', '', '2', '1517800079');
INSERT INTO `bl_visited` VALUES ('17', null, '101.245.176.41', '中国', '华东', '上海市', '上海市', '', '23', '1516378266');
INSERT INTO `bl_visited` VALUES ('20', null, '113.108.10.5', '中国', '华南', '广东省', '深圳市', '', '1', '1516320690');
INSERT INTO `bl_visited` VALUES ('23', null, '223.104.212.174', '中国', '华东', '上海市', '上海市', '', '2', '1516327443');
INSERT INTO `bl_visited` VALUES ('24', null, '223.104.213.23', '中国', '华东', '上海市', '上海市', '', '9', '1516352768');
INSERT INTO `bl_visited` VALUES ('25', null, '218.75.70.3', '中国', '华东', '浙江省', '杭州市', '', '6', '1518184077');
INSERT INTO `bl_visited` VALUES ('26', null, '140.205.225.190', '中国', '华东', '上海市', '上海市', '', '9', '1517128868');
INSERT INTO `bl_visited` VALUES ('27', null, '223.104.212.42', '中国', '华东', '上海市', '上海市', '', '5', '1516352901');
INSERT INTO `bl_visited` VALUES ('28', null, '106.11.226.69', '中国', '华东', '上海市', '上海市', '', '1', '1516354173');
INSERT INTO `bl_visited` VALUES ('29', null, '114.215.45.79', '中国', '华东', '山东省', '青岛市', '', '25', '1526317741');
INSERT INTO `bl_visited` VALUES ('30', null, '223.104.212.143', '中国', '华东', '上海市', '上海市', '', '4', '1516360026');
INSERT INTO `bl_visited` VALUES ('31', null, '116.234.26.207', '中国', '华东', '上海市', '上海市', '', '4', '1516538680');
INSERT INTO `bl_visited` VALUES ('32', null, '106.120.161.68', '中国', '华北', '北京市', '北京市', '', '1', '1516365058');
INSERT INTO `bl_visited` VALUES ('33', null, '220.181.132.180', '中国', '华北', '北京市', '北京市', '', '1', '1516365085');
INSERT INTO `bl_visited` VALUES ('34', null, '106.120.162.108', '中国', '华北', '北京市', '北京市', '', '1', '1516365094');
INSERT INTO `bl_visited` VALUES ('35', null, '101.199.112.45', '中国', '华北', '北京市', '北京市', '', '1', '1516365112');
INSERT INTO `bl_visited` VALUES ('36', null, '61.151.207.252', '中国', '华东', '上海市', '上海市', '', '1', '1516365236');
INSERT INTO `bl_visited` VALUES ('37', null, '106.11.224.84', '中国', '华东', '上海市', '上海市', '', '2', '1517045106');
INSERT INTO `bl_visited` VALUES ('38', null, '106.11.224.146', '中国', '华东', '上海市', '上海市', '', '1', '1516369099');
INSERT INTO `bl_visited` VALUES ('39', null, '106.11.224.87', '中国', '华东', '上海市', '上海市', '', '1', '1516369134');
INSERT INTO `bl_visited` VALUES ('40', null, '106.11.224.25', '中国', '华东', '上海市', '上海市', '', '1', '1516369141');
INSERT INTO `bl_visited` VALUES ('42', null, '106.11.224.90', '中国', '华东', '上海市', '上海市', '', '1', '1516369301');
INSERT INTO `bl_visited` VALUES ('43', null, '106.11.224.218', '中国', '华东', '上海市', '上海市', '', '1', '1516369330');
INSERT INTO `bl_visited` VALUES ('44', null, '106.11.224.213', '中国', '华东', '上海市', '上海市', '', '1', '1516369347');
INSERT INTO `bl_visited` VALUES ('45', null, '61.129.7.217', '中国', '华东', '上海市', '上海市', '', '1', '1516378168');
INSERT INTO `bl_visited` VALUES ('46', null, '47.100.130.114', '中国', '华东', '浙江省', '杭州市', '', '3', '1521390726');
INSERT INTO `bl_visited` VALUES ('47', null, '202.173.10.65', '中国', '华北', '北京市', '北京市', '', '34', '1527225740');
INSERT INTO `bl_visited` VALUES ('48', null, '106.11.225.21', '中国', '华东', '上海市', '上海市', '', '1', '1516388608');
INSERT INTO `bl_visited` VALUES ('49', null, '106.11.227.32', '中国', '华东', '上海市', '上海市', '', '1', '1516412930');
INSERT INTO `bl_visited` VALUES ('50', null, '211.161.240.116', '中国', '华东', '上海市', '上海市', '', '2', '1516422974');
INSERT INTO `bl_visited` VALUES ('51', null, '120.204.17.73', '中国', '华东', '上海市', '上海市', '', '1', '1516422899');
INSERT INTO `bl_visited` VALUES ('53', null, '140.205.225.206', '中国', '华东', '上海市', '上海市', '', '5', '1516893362');
INSERT INTO `bl_visited` VALUES ('54', null, '34.208.227.95', '美国', '西部', '俄勒冈州', '', '', '1', '1516438364');
INSERT INTO `bl_visited` VALUES ('55', null, '104.192.74.42', '美国', '东部', '伊利诺伊州', '', '', '3', '1525446861');
INSERT INTO `bl_visited` VALUES ('56', null, '140.205.201.44', '中国', '华东', '上海市', '上海市', '', '17', '1517482101');
INSERT INTO `bl_visited` VALUES ('57', null, '140.205.201.34', '中国', '华东', '上海市', '上海市', '', '1', '1516458975');
INSERT INTO `bl_visited` VALUES ('58', null, '47.100.64.9', '中国', '华东', '上海市', '上海市', '', '7', '1526231998');
INSERT INTO `bl_visited` VALUES ('59', null, '106.11.242.197', '中国', '华东', '上海市', '上海市', '', '1', '1516477156');
INSERT INTO `bl_visited` VALUES ('60', null, '106.11.242.88', '中国', '华东', '上海市', '上海市', '', '1', '1516500038');
INSERT INTO `bl_visited` VALUES ('61', null, '194.28.172.176', '乌克兰', '', '', '', '', '2', '1516508983');
INSERT INTO `bl_visited` VALUES ('62', null, '13.56.229.65', '美国', '西部', '加利福尼亚州', '', '', '1', '1516501695');
INSERT INTO `bl_visited` VALUES ('63', null, '196.52.43.101', '荷兰', '', '', '', '', '2', '1521688116');
INSERT INTO `bl_visited` VALUES ('64', null, '42.196.206.39', '中国', '华东', '上海市', '上海市', '', '9', '1516510523');
INSERT INTO `bl_visited` VALUES ('65', null, '171.210.196.89', '中国', '西南', '四川省', '成都市', '', '2', '1516509154');
INSERT INTO `bl_visited` VALUES ('66', null, '59.127.248.182', '台湾', '', '台湾省', '', '', '1', '1516510416');
INSERT INTO `bl_visited` VALUES ('67', null, '106.120.160.109', '中国', '华北', '北京市', '北京市', '', '1', '1516512204');
INSERT INTO `bl_visited` VALUES ('68', null, '101.199.112.50', '中国', '华北', '北京市', '北京市', '', '1', '1516512221');
INSERT INTO `bl_visited` VALUES ('69', null, '47.95.63.56', '中国', '华北', '北京市', '北京市', '', '1', '1516523154');
INSERT INTO `bl_visited` VALUES ('70', null, '106.11.224.178', '中国', '华东', '上海市', '上海市', '', '1', '1516527442');
INSERT INTO `bl_visited` VALUES ('71', null, '140.205.201.46', '中国', '华东', '上海市', '上海市', '', '5', '1518712720');
INSERT INTO `bl_visited` VALUES ('72', null, '211.161.240.229', '中国', '华东', '上海市', '上海市', '', '1', '1516537027');
INSERT INTO `bl_visited` VALUES ('73', null, '101.226.68.215', '中国', '华东', '上海市', '上海市', '', '1', '1516537028');
INSERT INTO `bl_visited` VALUES ('74', null, '140.205.225.187', '中国', '华东', '上海市', '上海市', '', '8', '1516542109');
INSERT INTO `bl_visited` VALUES ('75', null, '47.52.221.59', '香港', '', '香港特别行政区', '', '', '2', '1517938115');
INSERT INTO `bl_visited` VALUES ('76', null, '104.192.74.41', '美国', '东部', '伊利诺伊州', '', '', '4', '1521711195');
INSERT INTO `bl_visited` VALUES ('77', null, '106.11.225.14', '中国', '华东', '上海市', '上海市', '', '2', '1523343967');
INSERT INTO `bl_visited` VALUES ('78', null, '47.93.90.175', '中国', '华北', '北京市', '北京市', '', '13', '1526758582');
INSERT INTO `bl_visited` VALUES ('79', null, '104.236.176.81', '美国', '西部', '加利福尼亚州', '', '', '1', '1516585729');
INSERT INTO `bl_visited` VALUES ('80', null, '106.11.242.216', '中国', '华东', '上海市', '上海市', '', '1', '1516587493');
INSERT INTO `bl_visited` VALUES ('81', null, '140.205.225.202', '中国', '华东', '上海市', '上海市', '', '8', '1516623503');
INSERT INTO `bl_visited` VALUES ('82', null, '104.192.74.22', '美国', '东部', '伊利诺伊州', '', '', '2', '1517505748');
INSERT INTO `bl_visited` VALUES ('83', null, '210.14.78.91', '中国', '华东', '上海市', '上海市', '', '2', '1521597115');
INSERT INTO `bl_visited` VALUES ('84', null, '106.11.224.172', '中国', '华东', '上海市', '上海市', '', '1', '1516628493');
INSERT INTO `bl_visited` VALUES ('85', null, '106.11.224.252', '中国', '华东', '上海市', '上海市', '', '1', '1516628582');
INSERT INTO `bl_visited` VALUES ('86', null, '106.11.224.109', '中国', '华东', '上海市', '上海市', '', '2', '1516961596');
INSERT INTO `bl_visited` VALUES ('87', null, '106.11.224.75', '中国', '华东', '上海市', '上海市', '', '3', '1518082443');
INSERT INTO `bl_visited` VALUES ('88', null, '106.11.224.124', '中国', '华东', '上海市', '上海市', '', '1', '1516628667');
INSERT INTO `bl_visited` VALUES ('89', null, '106.11.224.211', '中国', '华东', '上海市', '上海市', '', '4', '1516956410');
INSERT INTO `bl_visited` VALUES ('90', null, '47.52.210.140', '美国', '西部', '加利福尼亚州', '', '', '2', '1525791104');
INSERT INTO `bl_visited` VALUES ('91', null, '66.240.213.92', '美国', '西部', '加利福尼亚州', '', '', '1', '1516655792');
INSERT INTO `bl_visited` VALUES ('92', null, '106.11.242.241', '中国', '华东', '上海市', '上海市', '', '1', '1516657456');
INSERT INTO `bl_visited` VALUES ('93', null, '34.201.146.151', '美国', '东部', '弗吉尼亚州', '', '', '1', '1516670855');
INSERT INTO `bl_visited` VALUES ('94', null, '106.11.242.32', '中国', '华东', '上海市', '上海市', '', '1', '1516681845');
INSERT INTO `bl_visited` VALUES ('95', null, '140.205.201.39', '中国', '华东', '上海市', '上海市', '', '4', '1518343898');
INSERT INTO `bl_visited` VALUES ('96', null, '196.52.43.116', '荷兰', '', '', '', '', '1', '1516698127');
INSERT INTO `bl_visited` VALUES ('97', null, '114.143.167.198', '印度', '', '', '', '', '3', '1516709842');
INSERT INTO `bl_visited` VALUES ('98', null, '140.205.225.183', '中国', '华东', '上海市', '上海市', '', '9', '1517996060');
INSERT INTO `bl_visited` VALUES ('99', null, '60.191.38.78', '中国', '华东', '浙江省', '杭州市', '', '25', '1526870949');
INSERT INTO `bl_visited` VALUES ('100', null, '106.15.76.92', '中国', '华东', '上海市', '上海市', '', '8', '1526581086');
INSERT INTO `bl_visited` VALUES ('101', null, '107.170.240.186', '美国', '西部', '加利福尼亚州', '', '', '1', '1516742201');
INSERT INTO `bl_visited` VALUES ('102', null, '118.112.17.14', '中国', '西南', '四川省', '成都市', '', '1', '1516743358');
INSERT INTO `bl_visited` VALUES ('103', null, '106.11.242.26', '中国', '华东', '上海市', '上海市', '', '1', '1516743434');
INSERT INTO `bl_visited` VALUES ('104', null, '39.104.29.35', '中国', '华北', '内蒙古自治区', '呼和浩特市', '', '2', '1519767184');
INSERT INTO `bl_visited` VALUES ('105', null, '209.126.136.4', '美国', '西部', '加利福尼亚州', '', '', '7', '1527036206');
INSERT INTO `bl_visited` VALUES ('106', null, '106.11.226.239', '中国', '华东', '上海市', '上海市', '', '1', '1516767568');
INSERT INTO `bl_visited` VALUES ('107', null, '107.170.224.252', '美国', '西部', '加利福尼亚州', '', '', '1', '1516771339');
INSERT INTO `bl_visited` VALUES ('108', null, '140.205.225.204', '中国', '华东', '上海市', '上海市', '', '24', '1519223736');
INSERT INTO `bl_visited` VALUES ('109', null, '140.205.201.37', '中国', '华东', '上海市', '上海市', '', '13', '1518012467');
INSERT INTO `bl_visited` VALUES ('111', null, '120.78.225.124', '中国', '华南', '广东省', '深圳市', '', '10', '1526573736');
INSERT INTO `bl_visited` VALUES ('113', null, '106.11.225.30', '中国', '华东', '上海市', '上海市', '', '1', '1516831692');
INSERT INTO `bl_visited` VALUES ('116', null, '106.11.227.241', '中国', '华东', '上海市', '上海市', '', '2', '1519359579');
INSERT INTO `bl_visited` VALUES ('120', null, '47.97.16.6', '中国', '华东', '浙江省', '杭州市', '', '8', '1524760560');
INSERT INTO `bl_visited` VALUES ('121', null, '101.254.149.239', '中国', '华北', '北京市', '北京市', '', '1', '1516906061');
INSERT INTO `bl_visited` VALUES ('122', null, '106.11.225.98', '中国', '华东', '上海市', '上海市', '', '1', '1516921041');
INSERT INTO `bl_visited` VALUES ('125', null, '106.11.227.243', '中国', '华东', '上海市', '上海市', '', '1', '1516941390');
INSERT INTO `bl_visited` VALUES ('127', null, '106.11.224.72', '中国', '华东', '上海市', '上海市', '', '2', '1516959004');
INSERT INTO `bl_visited` VALUES ('128', null, '106.11.224.18', '中国', '华东', '上海市', '上海市', '', '1', '1516957689');
INSERT INTO `bl_visited` VALUES ('129', null, '106.11.224.28', '中国', '华东', '上海市', '上海市', '', '1', '1516957848');
INSERT INTO `bl_visited` VALUES ('130', null, '116.62.176.205', '中国', '华东', '浙江省', '杭州市', '', '17', '1525829512');
INSERT INTO `bl_visited` VALUES ('131', null, '106.11.224.168', '中国', '华东', '上海市', '上海市', '', '1', '1516960396');
INSERT INTO `bl_visited` VALUES ('132', null, '106.11.224.81', '中国', '华东', '上海市', '上海市', '', '1', '1516962118');
INSERT INTO `bl_visited` VALUES ('133', null, '106.11.224.40', '中国', '华东', '上海市', '上海市', '', '1', '1516962220');
INSERT INTO `bl_visited` VALUES ('134', null, '106.11.224.197', '中国', '华东', '上海市', '上海市', '', '1', '1516962616');
INSERT INTO `bl_visited` VALUES ('136', null, '106.11.224.140', '中国', '华东', '上海市', '上海市', '', '1', '1516962647');
INSERT INTO `bl_visited` VALUES ('137', null, '106.11.224.225', '中国', '华东', '上海市', '上海市', '', '2', '1517048883');
INSERT INTO `bl_visited` VALUES ('138', null, '106.11.224.141', '中国', '华东', '上海市', '上海市', '', '1', '1516962676');
INSERT INTO `bl_visited` VALUES ('139', null, '106.11.224.102', '中国', '华东', '上海市', '上海市', '', '1', '1516963398');
INSERT INTO `bl_visited` VALUES ('140', null, '106.11.224.56', '中国', '华东', '上海市', '上海市', '', '1', '1516963446');
INSERT INTO `bl_visited` VALUES ('141', null, '106.15.76.85', '中国', '华东', '上海市', '上海市', '', '11', '1525450734');
INSERT INTO `bl_visited` VALUES ('142', null, '125.76.61.191', '中国', '西北', '甘肃省', '兰州市', '', '1', '1516987397');
INSERT INTO `bl_visited` VALUES ('143', null, '117.50.7.159', '中国', '华北', '北京市', '北京市', '', '5', '1526476818');
INSERT INTO `bl_visited` VALUES ('144', null, '106.75.2.81', '中国', '华北', '北京市', '北京市', '', '1', '1517003902');
INSERT INTO `bl_visited` VALUES ('145', null, '106.11.225.103', '中国', '华东', '上海市', '上海市', '', '1', '1517007554');
INSERT INTO `bl_visited` VALUES ('146', null, '211.161.240.154', '中国', '华东', '上海市', '上海市', '', '2', '1517013916');
INSERT INTO `bl_visited` VALUES ('147', null, '101.226.33.227', '中国', '华东', '上海市', '上海市', '', '1', '1517013961');
INSERT INTO `bl_visited` VALUES ('148', null, '162.220.57.47', '美国', '东部', '佛罗里达州', '', '', '1', '1517028032');
INSERT INTO `bl_visited` VALUES ('149', null, '66.102.8.30', '美国', '', '', '', '', '1', '1517028033');
INSERT INTO `bl_visited` VALUES ('150', null, '72.14.199.159', '美国', '', '', '', '', '2', '1517028107');
INSERT INTO `bl_visited` VALUES ('151', null, '66.249.83.202', '美国', '', '', '', '', '1', '1517028113');
INSERT INTO `bl_visited` VALUES ('152', null, '106.11.226.72', '中国', '华东', '上海市', '上海市', '', '1', '1517028198');
INSERT INTO `bl_visited` VALUES ('153', null, '34.208.12.137', '美国', '西部', '俄勒冈州', '', '', '1', '1517031096');
INSERT INTO `bl_visited` VALUES ('154', null, '106.11.224.202', '中国', '华东', '上海市', '上海市', '', '1', '1517040834');
INSERT INTO `bl_visited` VALUES ('156', null, '104.192.74.43', '美国', '东部', '伊利诺伊州', '', '', '2', '1520937453');
INSERT INTO `bl_visited` VALUES ('157', null, '177.193.149.149', '巴西', '', '', '', '', '1', '1517042676');
INSERT INTO `bl_visited` VALUES ('158', null, '106.11.224.99', '中国', '华东', '上海市', '上海市', '', '1', '1517043623');
INSERT INTO `bl_visited` VALUES ('159', null, '106.11.224.126', '中国', '华东', '上海市', '上海市', '', '1', '1517044892');
INSERT INTO `bl_visited` VALUES ('160', null, '106.11.224.92', '中国', '华东', '上海市', '上海市', '', '1', '1517045268');
INSERT INTO `bl_visited` VALUES ('161', null, '106.11.224.12', '中国', '华东', '上海市', '上海市', '', '1', '1517048283');
INSERT INTO `bl_visited` VALUES ('162', null, '106.11.224.45', '中国', '华东', '上海市', '上海市', '', '1', '1517048901');
INSERT INTO `bl_visited` VALUES ('163', null, '106.11.224.241', '中国', '华东', '上海市', '上海市', '', '1', '1517049524');
INSERT INTO `bl_visited` VALUES ('164', null, '106.11.224.32', '中国', '华东', '上海市', '上海市', '', '1', '1517049579');
INSERT INTO `bl_visited` VALUES ('165', null, '106.11.224.156', '中国', '华东', '上海市', '上海市', '', '1', '1517049601');
INSERT INTO `bl_visited` VALUES ('166', null, '101.251.246.66', '中国', '华北', '北京市', '北京市', '', '4', '1526007722');
INSERT INTO `bl_visited` VALUES ('167', null, '140.205.225.196', '中国', '华东', '上海市', '上海市', '', '9', '1518271218');
INSERT INTO `bl_visited` VALUES ('168', null, '106.14.104.214', '中国', '华东', '上海市', '上海市', '', '6', '1527180720');
INSERT INTO `bl_visited` VALUES ('169', null, '106.11.225.31', '中国', '华东', '上海市', '上海市', '', '1', '1517092681');
INSERT INTO `bl_visited` VALUES ('170', null, '66.240.236.119', '美国', '西部', '加利福尼亚州', '', '', '1', '1517106473');
INSERT INTO `bl_visited` VALUES ('171', null, '106.11.227.167', '中国', '华东', '上海市', '上海市', '', '1', '1517115545');
INSERT INTO `bl_visited` VALUES ('172', null, '219.142.241.235', '中国', '华北', '北京市', '北京市', '', '1', '1517122960');
INSERT INTO `bl_visited` VALUES ('173', null, '52.35.187.48', '美国', '西部', '俄勒冈州', '', '', '1', '1517134053');
INSERT INTO `bl_visited` VALUES ('174', null, '140.205.201.42', '中国', '华东', '上海市', '上海市', '', '23', '1519209042');
INSERT INTO `bl_visited` VALUES ('175', null, '140.205.201.43', '中国', '华东', '上海市', '上海市', '', '8', '1517148539');
INSERT INTO `bl_visited` VALUES ('176', null, '104.192.74.13', '美国', '东部', '伊利诺伊州', '', '', '2', '1523609073');
INSERT INTO `bl_visited` VALUES ('177', null, '106.11.242.168', '中国', '华东', '上海市', '上海市', '', '1', '1517179238');
INSERT INTO `bl_visited` VALUES ('178', null, '106.11.225.150', '中国', '华东', '上海市', '上海市', '', '1', '1517202519');
INSERT INTO `bl_visited` VALUES ('181', null, '34.216.227.249', '美国', '西部', '俄勒冈州', '', '', '1', '1517221837');
INSERT INTO `bl_visited` VALUES ('182', null, '140.205.225.203', '中国', '华东', '上海市', '上海市', '', '4', '1518429579');
INSERT INTO `bl_visited` VALUES ('183', null, '47.96.254.10', '中国', '华东', '浙江省', '杭州市', '', '6', '1526404666');
INSERT INTO `bl_visited` VALUES ('186', null, '140.205.201.31', '中国', '华东', '上海市', '上海市', '', '9', '1518961992');
INSERT INTO `bl_visited` VALUES ('187', null, '106.11.226.191', '中国', '华东', '上海市', '上海市', '', '1', '1517264919');
INSERT INTO `bl_visited` VALUES ('188', null, '140.205.225.197', '中国', '华东', '上海市', '上海市', '', '15', '1519399331');
INSERT INTO `bl_visited` VALUES ('189', null, '106.11.225.144', '中国', '华东', '上海市', '上海市', '', '1', '1517288179');
INSERT INTO `bl_visited` VALUES ('191', null, '106.11.224.122', '中国', '华东', '上海市', '上海市', '', '1', '1517304051');
INSERT INTO `bl_visited` VALUES ('192', null, '101.249.40.29', '中国', '西南', '西藏自治区', '拉萨市', '', '2', '1517319556');
INSERT INTO `bl_visited` VALUES ('193', null, '211.161.240.78', '中国', '华东', '上海市', '上海市', '', '8', '1517407283');
INSERT INTO `bl_visited` VALUES ('200', null, '220.179.124.180', '中国', '华东', '安徽省', '黄山市', '', '47', '1517470273');
INSERT INTO `bl_visited` VALUES ('202', null, '140.205.225.186', '中国', '华东', '上海市', '上海市', '', '8', '1517394081');
INSERT INTO `bl_visited` VALUES ('203', null, '140.205.225.188', '中国', '华东', '上海市', '上海市', '', '18', '1519306931');
INSERT INTO `bl_visited` VALUES ('204', null, '207.46.13.51', '美国', '', '', '', '', '1', '1517398810');
INSERT INTO `bl_visited` VALUES ('205', null, '104.192.74.20', '美国', '东部', '伊利诺伊州', '', '', '3', '1517731780');
INSERT INTO `bl_visited` VALUES ('206', null, '179.212.134.207', '巴西', '', '', '', '', '1', '1517402837');
INSERT INTO `bl_visited` VALUES ('207', null, '38.104.1.186', '美国', '东部', '乔治亚州', '', '', '2', '1521095130');
INSERT INTO `bl_visited` VALUES ('208', null, '39.104.67.189', '中国', '华东', '浙江省', '杭州市', '', '3', '1517406991');
INSERT INTO `bl_visited` VALUES ('209', null, '39.104.95.77', '中国', '华东', '浙江省', '杭州市', '', '1', '1517406993');
INSERT INTO `bl_visited` VALUES ('210', null, '120.78.231.236', '中国', '华南', '广东省', '深圳市', '', '6', '1525812995');
INSERT INTO `bl_visited` VALUES ('211', null, '106.11.242.78', '中国', '华东', '上海市', '上海市', '', '1', '1517438290');
INSERT INTO `bl_visited` VALUES ('212', null, '207.46.13.158', '美国', '', '', '', '', '2', '1521396091');
INSERT INTO `bl_visited` VALUES ('213', null, '106.11.226.254', '中国', '华东', '上海市', '上海市', '', '2', '1519818815');
INSERT INTO `bl_visited` VALUES ('214', null, '157.55.39.59', '美国', '', '', '', '', '1', '1517470984');
INSERT INTO `bl_visited` VALUES ('215', null, '177.142.111.83', '巴西', '', '', '', '', '1', '1517486004');
INSERT INTO `bl_visited` VALUES ('216', null, '38.142.192.82', '美国', '', '', '', '', '2', '1518524986');
INSERT INTO `bl_visited` VALUES ('219', null, '112.66.101.148', '中国', '华南', '海南省', '海口市', '', '1', '1517499349');
INSERT INTO `bl_visited` VALUES ('220', null, '140.205.201.35', '中国', '华东', '上海市', '上海市', '', '9', '1517752785');
INSERT INTO `bl_visited` VALUES ('221', null, '42.122.10.86', '中国', '华北', '天津市', '天津市', '', '1', '1517505453');
INSERT INTO `bl_visited` VALUES ('222', null, '106.11.227.122', '中国', '华东', '上海市', '上海市', '', '1', '1517525208');
INSERT INTO `bl_visited` VALUES ('225', null, '106.11.242.30', '中国', '华东', '上海市', '上海市', '', '1', '1517548865');
INSERT INTO `bl_visited` VALUES ('227', null, '140.205.225.198', '中国', '华东', '上海市', '上海市', '', '9', '1518620173');
INSERT INTO `bl_visited` VALUES ('229', null, '101.245.185.194', '中国', '华东', '上海市', '上海市', '', '1', '1517580566');
INSERT INTO `bl_visited` VALUES ('230', null, '14.17.3.64', '中国', '华南', '广东省', '深圳市', '', '1', '1517580566');
INSERT INTO `bl_visited` VALUES ('231', null, '61.151.178.167', '中国', '华东', '上海市', '上海市', '', '1', '1517580626');
INSERT INTO `bl_visited` VALUES ('242', null, '38.142.99.26', '美国', '', '', '', '', '1', '1517647518');
INSERT INTO `bl_visited` VALUES ('243', null, '104.192.74.16', '美国', '东部', '伊利诺伊州', '', '', '3', '1524324450');
INSERT INTO `bl_visited` VALUES ('244', null, '47.94.52.159', '中国', '华北', '北京市', '北京市', '', '5', '1526145485');
INSERT INTO `bl_visited` VALUES ('245', null, '157.55.39.37', '美国', '', '', '', '', '1', '1517677355');
INSERT INTO `bl_visited` VALUES ('246', null, '140.205.225.195', '中国', '华东', '上海市', '上海市', '', '8', '1517686201');
INSERT INTO `bl_visited` VALUES ('247', null, '106.11.226.188', '中国', '华东', '上海市', '上海市', '', '1', '1517697951');
INSERT INTO `bl_visited` VALUES ('248', null, '64.184.56.16', '美国', '东部', '印第安纳州', '', '', '1', '1517705957');
INSERT INTO `bl_visited` VALUES ('249', null, '172.104.247.223', '美国', '', '', '', '', '1', '1517710908');
INSERT INTO `bl_visited` VALUES ('250', null, '106.11.226.252', '中国', '华东', '上海市', '上海市', '', '1', '1517721244');
INSERT INTO `bl_visited` VALUES ('251', null, '140.205.201.32', '中国', '华东', '上海市', '上海市', '', '16', '1518078130');
INSERT INTO `bl_visited` VALUES ('252', null, '12.193.174.86', '美国', '西部', '德克萨斯州', '', '', '3', '1517737561');
INSERT INTO `bl_visited` VALUES ('253', null, '186.223.163.121', '巴西', '', '', '', '', '1', '1517741707');
INSERT INTO `bl_visited` VALUES ('254', null, '212.198.160.254', '法国', '', '', '', '', '3', '1517745847');
INSERT INTO `bl_visited` VALUES ('255', null, '140.205.201.36', '中国', '华东', '上海市', '上海市', '', '13', '1518786206');
INSERT INTO `bl_visited` VALUES ('256', null, '47.95.28.143', '中国', '华北', '北京市', '北京市', '', '9', '1526409294');
INSERT INTO `bl_visited` VALUES ('257', null, '106.11.226.110', '中国', '华东', '上海市', '上海市', '', '2', '1526157045');
INSERT INTO `bl_visited` VALUES ('258', null, '207.46.13.122', '美国', '', '', '', '', '1', '1517793454');
INSERT INTO `bl_visited` VALUES ('259', null, '61.129.8.250', '中国', '华东', '上海市', '上海市', '', '2', '1525701831');
INSERT INTO `bl_visited` VALUES ('260', null, '61.151.178.168', '中国', '华东', '上海市', '上海市', '', '2', '1525702069');
INSERT INTO `bl_visited` VALUES ('261', null, '223.104.213.68', '中国', '华东', '上海市', '上海市', '', '1', '1517800025');
INSERT INTO `bl_visited` VALUES ('262', null, '58.247.212.98', '中国', '华东', '上海市', '上海市', '', '3', '1525701833');
INSERT INTO `bl_visited` VALUES ('263', null, '120.204.17.67', '中国', '华东', '上海市', '上海市', '', '2', '1517800085');
INSERT INTO `bl_visited` VALUES ('264', null, '106.11.227.154', '中国', '华东', '上海市', '上海市', '', '1', '1517808123');
INSERT INTO `bl_visited` VALUES ('265', null, '140.205.225.201', '中国', '华东', '上海市', '上海市', '', '21', '1517929157');
INSERT INTO `bl_visited` VALUES ('266', null, '220.181.132.178', '中国', '华北', '北京市', '北京市', '', '1', '1517830598');
INSERT INTO `bl_visited` VALUES ('267', null, '106.120.162.107', '中国', '华北', '北京市', '北京市', '', '1', '1517830601');
INSERT INTO `bl_visited` VALUES ('268', null, '140.205.201.45', '中国', '华东', '上海市', '上海市', '', '8', '1517845989');
INSERT INTO `bl_visited` VALUES ('269', null, '157.55.39.214', '美国', '', '', '', '', '1', '1517859240');
INSERT INTO `bl_visited` VALUES ('270', null, '106.11.227.121', '中国', '华东', '上海市', '上海市', '', '2', '1525706186');
INSERT INTO `bl_visited` VALUES ('271', null, '220.179.124.179', '中国', '华东', '安徽省', '黄山市', '', '1', '1517882094');
INSERT INTO `bl_visited` VALUES ('272', null, '119.48.218.244', '中国', '东北', '吉林省', '长春市', '', '1', '1517898035');
INSERT INTO `bl_visited` VALUES ('273', null, '106.11.226.84', '中国', '华东', '上海市', '上海市', '', '1', '1517898060');
INSERT INTO `bl_visited` VALUES ('274', null, '106.120.61.44', '中国', '华北', '北京市', '北京市', '', '1', '1517903147');
INSERT INTO `bl_visited` VALUES ('275', null, '196.52.43.89', '荷兰', '', '', '', '', '3', '1525778253');
INSERT INTO `bl_visited` VALUES ('276', null, '140.205.201.41', '中国', '华东', '上海市', '上海市', '', '8', '1517920540');
INSERT INTO `bl_visited` VALUES ('277', null, '104.192.74.28', '美国', '东部', '伊利诺伊州', '', '', '7', '1525186814');
INSERT INTO `bl_visited` VALUES ('278', null, '207.46.13.67', '美国', '', '', '', '', '1', '1517927993');
INSERT INTO `bl_visited` VALUES ('279', null, '106.47.167.247', '中国', '华北', '天津市', '天津市', '', '1', '1517939069');
INSERT INTO `bl_visited` VALUES ('280', null, '121.42.241.32', '中国', '华东', '山东省', '青岛市', '', '2', '1518551570');
INSERT INTO `bl_visited` VALUES ('281', null, '171.13.14.150', '中国', '华中', '河南省', '洛阳市', '', '1', '1517958956');
INSERT INTO `bl_visited` VALUES ('282', null, '101.199.108.58', '中国', '华北', '北京市', '北京市', '', '1', '1517958967');
INSERT INTO `bl_visited` VALUES ('283', null, '171.13.14.148', '中国', '华中', '河南省', '洛阳市', '', '2', '1517959033');
INSERT INTO `bl_visited` VALUES ('284', null, '106.11.227.90', '中国', '华东', '上海市', '上海市', '', '1', '1517959232');
INSERT INTO `bl_visited` VALUES ('285', null, '220.179.124.184', '中国', '华东', '安徽省', '黄山市', '', '1', '1517968288');
INSERT INTO `bl_visited` VALUES ('286', null, '222.186.50.75', '中国', '华东', '江苏省', '镇江市', '', '2', '1518320489');
INSERT INTO `bl_visited` VALUES ('287', null, '106.11.227.25', '中国', '华东', '上海市', '上海市', '', '2', '1519024012');
INSERT INTO `bl_visited` VALUES ('288', null, '140.205.225.185', '中国', '华东', '上海市', '上海市', '', '1', '1517992298');
INSERT INTO `bl_visited` VALUES ('289', null, '40.77.167.145', '美国', '', '', '', '', '1', '1518022741');
INSERT INTO `bl_visited` VALUES ('290', null, '104.192.74.14', '美国', '东部', '伊利诺伊州', '', '', '4', '1524751795');
INSERT INTO `bl_visited` VALUES ('291', null, '27.156.88.84', '中国', '华东', '福建省', '福州市', '', '1', '1518037206');
INSERT INTO `bl_visited` VALUES ('292', null, '106.11.225.223', '中国', '华东', '上海市', '上海市', '', '1', '1518049259');
INSERT INTO `bl_visited` VALUES ('293', null, '106.11.226.240', '中国', '华东', '上海市', '上海市', '', '1', '1518071904');
INSERT INTO `bl_visited` VALUES ('294', null, '207.46.13.13', '美国', '', '', '', '', '2', '1518117459');
INSERT INTO `bl_visited` VALUES ('295', null, '104.192.74.23', '美国', '东部', '伊利诺伊州', '', '', '4', '1524493217');
INSERT INTO `bl_visited` VALUES ('296', null, '186.224.234.106', '巴西', '', '', '', '', '3', '1518074210');
INSERT INTO `bl_visited` VALUES ('297', null, '203.208.60.154', '台湾', '', '台湾省', '', '', '4', '1525330828');
INSERT INTO `bl_visited` VALUES ('298', null, '107.6.183.163', '荷兰', '', '', '', '', '1', '1518089466');
INSERT INTO `bl_visited` VALUES ('299', null, '106.11.224.11', '中国', '华东', '上海市', '上海市', '', '1', '1518099468');
INSERT INTO `bl_visited` VALUES ('300', null, '106.11.224.237', '中国', '华东', '上海市', '上海市', '', '1', '1518099494');
INSERT INTO `bl_visited` VALUES ('301', null, '106.11.224.104', '中国', '华东', '上海市', '上海市', '', '2', '1518099501');
INSERT INTO `bl_visited` VALUES ('302', null, '106.11.224.62', '中国', '华东', '上海市', '上海市', '', '1', '1518099515');
INSERT INTO `bl_visited` VALUES ('303', null, '106.11.224.190', '中国', '华东', '上海市', '上海市', '', '3', '1518099534');
INSERT INTO `bl_visited` VALUES ('304', null, '47.100.64.86', '中国', '华东', '上海市', '上海市', '', '4', '1524330498');
INSERT INTO `bl_visited` VALUES ('305', null, '203.208.60.157', '台湾', '', '台湾省', '', '', '4', '1527163264');
INSERT INTO `bl_visited` VALUES ('306', null, '128.77.9.209', '丹麦', '', '', '', '', '1', '1518121934');
INSERT INTO `bl_visited` VALUES ('307', null, '196.52.43.119', '荷兰', '', '', '', '', '2', '1522405137');
INSERT INTO `bl_visited` VALUES ('308', null, '106.11.226.115', '中国', '华东', '上海市', '上海市', '', '1', '1518135707');
INSERT INTO `bl_visited` VALUES ('309', null, '38.140.161.170', '美国', '东部', '纽约州', '', '', '1', '1518150206');
INSERT INTO `bl_visited` VALUES ('310', null, '187.21.156.249', '巴西', '', '', '', '', '1', '1518152516');
INSERT INTO `bl_visited` VALUES ('311', null, '106.11.227.62', '中国', '华东', '上海市', '上海市', '', '2', '1522306607');
INSERT INTO `bl_visited` VALUES ('312', null, '207.46.13.124', '美国', '', '', '', '', '2', '1518213803');
INSERT INTO `bl_visited` VALUES ('313', null, '140.205.225.189', '中国', '华东', '上海市', '上海市', '', '4', '1518522952');
INSERT INTO `bl_visited` VALUES ('314', null, '221.14.173.194', '中国', '华中', '河南省', '郑州市', '', '1', '1518184824');
INSERT INTO `bl_visited` VALUES ('315', null, '172.104.108.109', '日本', '', '', '', '', '6', '1527073373');
INSERT INTO `bl_visited` VALUES ('316', null, '47.52.210.38', '美国', '西部', '加利福尼亚州', '', '', '1', '1518193204');
INSERT INTO `bl_visited` VALUES ('317', null, '60.191.38.77', '中国', '华东', '浙江省', '杭州市', '', '5', '1525074074');
INSERT INTO `bl_visited` VALUES ('318', null, '107.6.171.133', '荷兰', '', '', '', '', '1', '1518215987');
INSERT INTO `bl_visited` VALUES ('319', null, '101.71.224.30', '中国', '华东', '浙江省', '杭州市', '', '1', '1518225958');
INSERT INTO `bl_visited` VALUES ('320', null, '106.11.227.215', '中国', '华东', '上海市', '上海市', '', '1', '1518234688');
INSERT INTO `bl_visited` VALUES ('321', null, '139.162.114.70', '日本', '', '', '', '', '1', '1518245747');
INSERT INTO `bl_visited` VALUES ('322', null, '106.11.227.1', '中国', '华东', '上海市', '上海市', '', '1', '1518250881');
INSERT INTO `bl_visited` VALUES ('323', null, '157.55.39.228', '美国', '', '', '', '', '1', '1518285010');
INSERT INTO `bl_visited` VALUES ('324', null, '106.11.226.18', '中国', '华东', '上海市', '上海市', '', '2', '1520452161');
INSERT INTO `bl_visited` VALUES ('325', null, '106.11.242.63', '中国', '华东', '上海市', '上海市', '', '1', '1518329767');
INSERT INTO `bl_visited` VALUES ('326', null, '140.205.225.191', '中国', '华东', '上海市', '上海市', '', '9', '1519295905');
INSERT INTO `bl_visited` VALUES ('327', null, '118.117.108.106', '中国', '西南', '四川省', '遂宁市', '', '10', '1518357692');
INSERT INTO `bl_visited` VALUES ('328', null, '42.156.251.206', '中国', '华东', '浙江省', '杭州市', '', '2', '1518357006');
INSERT INTO `bl_visited` VALUES ('329', null, '47.100.84.151', '中国', '华东', '浙江省', '杭州市', '', '3', '1526833335');
INSERT INTO `bl_visited` VALUES ('330', null, '104.192.74.29', '美国', '东部', '伊利诺伊州', '', '', '5', '1524810507');
INSERT INTO `bl_visited` VALUES ('331', null, '123.14.122.163', '中国', '华中', '河南省', '郑州市', '', '1', '1518368681');
INSERT INTO `bl_visited` VALUES ('332', null, '207.46.13.66', '美国', '', '', '', '', '3', '1522833167');
INSERT INTO `bl_visited` VALUES ('333', null, '71.6.167.142', '美国', '西部', '加利福尼亚州', '', '', '1', '1518380722');
INSERT INTO `bl_visited` VALUES ('334', null, '106.11.225.11', '中国', '华东', '上海市', '上海市', '', '1', '1518402467');
INSERT INTO `bl_visited` VALUES ('335', null, '37.187.178.192', '法国', '', '', '', '', '1', '1518409054');
INSERT INTO `bl_visited` VALUES ('336', null, '106.11.242.212', '中国', '华东', '上海市', '上海市', '', '1', '1518417045');
INSERT INTO `bl_visited` VALUES ('337', null, '104.218.53.207', '美国', '东部', '新泽西州', '', '', '1', '1518419314');
INSERT INTO `bl_visited` VALUES ('338', null, '179.234.241.159', '巴西', '', '', '', '', '1', '1518437325');
INSERT INTO `bl_visited` VALUES ('339', null, '47.97.10.19', '中国', '华东', '浙江省', '杭州市', '', '4', '1526142805');
INSERT INTO `bl_visited` VALUES ('340', null, '106.11.225.252', '中国', '华东', '上海市', '上海市', '', '1', '1518488668');
INSERT INTO `bl_visited` VALUES ('341', null, '106.11.226.3', '中国', '华东', '上海市', '上海市', '', '1', '1518503488');
INSERT INTO `bl_visited` VALUES ('342', null, '106.11.228.6', '中国', '华东', '上海市', '上海市', '', '1', '1518525993');
INSERT INTO `bl_visited` VALUES ('343', null, '106.11.230.40', '中国', '华东', '上海市', '上海市', '', '1', '1518526018');
INSERT INTO `bl_visited` VALUES ('344', null, '106.11.228.41', '中国', '华东', '上海市', '上海市', '', '2', '1518526025');
INSERT INTO `bl_visited` VALUES ('345', null, '106.11.231.27', '中国', '华东', '上海市', '上海市', '', '1', '1518526039');
INSERT INTO `bl_visited` VALUES ('346', null, '106.11.228.249', '中国', '华东', '上海市', '上海市', '', '3', '1518526061');
INSERT INTO `bl_visited` VALUES ('347', null, '207.46.13.4', '美国', '', '', '', '', '3', '1518660844');
INSERT INTO `bl_visited` VALUES ('348', null, '207.46.13.116', '美国', '', '', '', '', '1', '1518557859');
INSERT INTO `bl_visited` VALUES ('349', null, '54.173.215.163', '美国', '东部', '弗吉尼亚州', '', '', '1', '1518558929');
INSERT INTO `bl_visited` VALUES ('350', null, '205.209.159.15', '美国', '西部', '加利福尼亚州', '', '', '1', '1518569236');
INSERT INTO `bl_visited` VALUES ('351', null, '205.209.159.19', '美国', '西部', '加利福尼亚州', '', '', '1', '1518569461');
INSERT INTO `bl_visited` VALUES ('352', null, '106.11.227.93', '中国', '华东', '上海市', '上海市', '', '1', '1518576398');
INSERT INTO `bl_visited` VALUES ('353', null, '47.92.2.1', '中国', '华北', '河北省', '张家口市', '', '3', '1522775299');
INSERT INTO `bl_visited` VALUES ('354', null, '106.11.226.253', '中国', '华东', '上海市', '上海市', '', '2', '1520626006');
INSERT INTO `bl_visited` VALUES ('355', null, '140.205.225.193', '中国', '华东', '上海市', '上海市', '', '8', '1518604968');
INSERT INTO `bl_visited` VALUES ('356', null, '106.11.225.83', '中国', '华东', '上海市', '上海市', '', '1', '1518662721');
INSERT INTO `bl_visited` VALUES ('357', null, '106.11.225.27', '中国', '华东', '上海市', '上海市', '', '2', '1524341024');
INSERT INTO `bl_visited` VALUES ('358', null, '157.55.39.64', '美国', '', '', '', '', '4', '1518884168');
INSERT INTO `bl_visited` VALUES ('359', null, '107.170.232.242', '美国', '西部', '加利福尼亚州', '', '', '1', '1518712249');
INSERT INTO `bl_visited` VALUES ('360', null, '196.52.43.118', '荷兰', '', '', '', '', '1', '1518727043');
INSERT INTO `bl_visited` VALUES ('361', null, '96.127.158.234', '美国', '东部', '伊利诺伊州', '', '', '1', '1518734805');
INSERT INTO `bl_visited` VALUES ('362', null, '184.158.219.186', '美国', '东部', '伊利诺伊州', '', '', '1', '1518750451');
INSERT INTO `bl_visited` VALUES ('363', null, '106.11.225.125', '中国', '华东', '上海市', '上海市', '', '1', '1518751712');
INSERT INTO `bl_visited` VALUES ('364', null, '106.11.225.47', '中国', '华东', '上海市', '上海市', '', '1', '1518776796');
INSERT INTO `bl_visited` VALUES ('365', null, '140.205.225.205', '中国', '华东', '上海市', '上海市', '', '1', '1518788523');
INSERT INTO `bl_visited` VALUES ('366', null, '106.11.226.43', '中国', '华东', '上海市', '上海市', '', '1', '1518839393');
INSERT INTO `bl_visited` VALUES ('367', null, '104.192.74.15', '美国', '东部', '伊利诺伊州', '', '', '2', '1518862338');
INSERT INTO `bl_visited` VALUES ('368', null, '106.11.225.232', '中国', '华东', '上海市', '上海市', '', '2', '1519197872');
INSERT INTO `bl_visited` VALUES ('369', null, '140.205.225.199', '中国', '华东', '上海市', '上海市', '', '1', '1518873443');
INSERT INTO `bl_visited` VALUES ('370', null, '54.189.150.128', '美国', '西部', '俄勒冈州', '', '', '1', '1518876657');
INSERT INTO `bl_visited` VALUES ('371', null, '106.11.225.177', '中国', '华东', '上海市', '上海市', '', '1', '1518933400');
INSERT INTO `bl_visited` VALUES ('372', null, '207.46.13.10', '美国', '', '', '', '', '1', '1518943452');
INSERT INTO `bl_visited` VALUES ('373', null, '106.11.225.1', '中国', '华东', '上海市', '上海市', '', '2', '1526916095');
INSERT INTO `bl_visited` VALUES ('374', null, '140.205.201.47', '中国', '华东', '上海市', '上海市', '', '1', '1518962042');
INSERT INTO `bl_visited` VALUES ('375', null, '106.11.242.34', '中国', '华东', '上海市', '上海市', '', '1', '1519013244');
INSERT INTO `bl_visited` VALUES ('376', null, '157.55.39.229', '美国', '', '', '', '', '3', '1519126248');
INSERT INTO `bl_visited` VALUES ('377', null, '179.215.153.151', '巴西', '', '', '', '', '1', '1519041142');
INSERT INTO `bl_visited` VALUES ('378', null, '5.11.183.30', '土耳其', '', '', '', '', '3', '1519071944');
INSERT INTO `bl_visited` VALUES ('379', null, '106.11.227.147', '中国', '华东', '上海市', '上海市', '', '1', '1519100484');
INSERT INTO `bl_visited` VALUES ('380', null, '188.226.129.55', '荷兰', '', '', '', '', '1', '1519103640');
INSERT INTO `bl_visited` VALUES ('381', null, '106.11.227.47', '中国', '华东', '上海市', '上海市', '', '1', '1519111038');
INSERT INTO `bl_visited` VALUES ('382', null, '140.205.225.200', '中国', '华东', '上海市', '上海市', '', '1', '1519133422');
INSERT INTO `bl_visited` VALUES ('383', null, '47.92.22.210', '中国', '华北', '河北省', '张家口市', '', '2', '1520428210');
INSERT INTO `bl_visited` VALUES ('384', null, '157.55.39.241', '美国', '', '', '', '', '2', '1519223645');
INSERT INTO `bl_visited` VALUES ('385', null, '106.11.226.53', '中国', '华东', '上海市', '上海市', '', '1', '1519187614');
INSERT INTO `bl_visited` VALUES ('386', null, '119.23.139.140', '中国', '华南', '广东省', '深圳市', '', '6', '1526490233');
INSERT INTO `bl_visited` VALUES ('387', null, '194.44.247.218', '乌克兰', '', '', '', '', '2', '1519245911');
INSERT INTO `bl_visited` VALUES ('388', null, '90.231.112.48', '瑞典', '', '', '', '', '1', '1519259136');
INSERT INTO `bl_visited` VALUES ('389', null, '106.11.227.31', '中国', '华东', '上海市', '上海市', '', '1', '1519284119');
INSERT INTO `bl_visited` VALUES ('390', null, '217.120.230.86', '荷兰', '', '', '', '', '1', '1519287756');
INSERT INTO `bl_visited` VALUES ('391', null, '157.55.39.224', '美国', '', '', '', '', '3', '1519393874');
INSERT INTO `bl_visited` VALUES ('392', null, '31.172.141.57', '乌克兰', '', '', '', '', '1', '1519332683');
INSERT INTO `bl_visited` VALUES ('393', null, '177.141.126.19', '巴西', '', '', '', '', '1', '1519342443');
INSERT INTO `bl_visited` VALUES ('394', null, '106.11.242.83', '中国', '华东', '上海市', '上海市', '', '2', '1524513766');
INSERT INTO `bl_visited` VALUES ('395', null, '112.208.32.184', '菲律宾', '', '', '', '', '1', '1519374296');
INSERT INTO `bl_visited` VALUES ('396', null, '82.208.139.115', '罗马尼亚', '', '', '', '', '1', '1519375875');
INSERT INTO `bl_visited` VALUES ('397', null, '140.205.225.194', '中国', '华东', '上海市', '上海市', '', '4', '1519385198');
INSERT INTO `bl_visited` VALUES ('398', null, '136.243.145.134', '德国', '', '', '', '', '1', '1519382146');
INSERT INTO `bl_visited` VALUES ('399', null, '85.24.214.78', '瑞典', '', '', '', '', '1', '1519420849');
INSERT INTO `bl_visited` VALUES ('400', null, '71.49.51.16', '美国', '', '', '', '', '1', '1519425328');
INSERT INTO `bl_visited` VALUES ('401', null, '196.52.43.111', '荷兰', '', '', '', '', '1', '1519445419');
INSERT INTO `bl_visited` VALUES ('402', null, '106.11.242.94', '中国', '华东', '上海市', '上海市', '', '1', '1519447387');
INSERT INTO `bl_visited` VALUES ('403', null, '40.77.167.6', '美国', '', '', '', '', '1', '1519450621');
INSERT INTO `bl_visited` VALUES ('404', null, '52.91.133.225', '美国', '东部', '弗吉尼亚州', '', '', '1', '1519454812');
INSERT INTO `bl_visited` VALUES ('405', null, '106.11.225.89', '中国', '华东', '上海市', '上海市', '', '1', '1519457420');
INSERT INTO `bl_visited` VALUES ('406', null, '87.50.146.160', '丹麦', '', '', '', '', '1', '1519464090');
INSERT INTO `bl_visited` VALUES ('407', null, '38.140.143.226', '美国', '东部', '佛罗里达州', '', '', '1', '1519465016');
INSERT INTO `bl_visited` VALUES ('408', null, '207.46.13.160', '美国', '', '', '', '', '1', '1519495975');
INSERT INTO `bl_visited` VALUES ('409', null, '46.236.80.77', '瑞典', '', '', '', '', '1', '1519510868');
INSERT INTO `bl_visited` VALUES ('410', null, '106.11.226.153', '中国', '华东', '上海市', '上海市', '', '1', '1519534779');
INSERT INTO `bl_visited` VALUES ('411', null, '139.162.108.53', '日本', '', '', '', '', '6', '1526964747');
INSERT INTO `bl_visited` VALUES ('412', null, '106.11.242.211', '中国', '华东', '上海市', '上海市', '', '1', '1519548180');
INSERT INTO `bl_visited` VALUES ('413', null, '207.46.13.191', '美国', '', '', '', '', '2', '1526480941');
INSERT INTO `bl_visited` VALUES ('414', null, '82.209.137.120', '瑞典', '', '', '', '', '1', '1519552445');
INSERT INTO `bl_visited` VALUES ('415', null, '35.202.106.6', '美国', '', '', '', '', '1', '1519568297');
INSERT INTO `bl_visited` VALUES ('416', null, '47.52.210.90', '美国', '西部', '加利福尼亚州', '', '', '2', '1524844898');
INSERT INTO `bl_visited` VALUES ('417', null, '106.11.225.203', '中国', '华东', '上海市', '上海市', '', '1', '1519623682');
INSERT INTO `bl_visited` VALUES ('418', null, '221.166.157.214', '韩国', '', '', '', '', '1', '1519640466');
INSERT INTO `bl_visited` VALUES ('419', null, '106.11.242.243', '中国', '华东', '上海市', '上海市', '', '1', '1519644964');
INSERT INTO `bl_visited` VALUES ('420', null, '211.161.240.47', '中国', '华东', '上海市', '上海市', '', '2', '1519650932');
INSERT INTO `bl_visited` VALUES ('421', null, '191.100.8.200', '厄瓜多尔', '', '', '', '', '1', '1519682129');
INSERT INTO `bl_visited` VALUES ('422', null, '85.184.163.77', '丹麦', '', '', '', '', '1', '1519683656');
INSERT INTO `bl_visited` VALUES ('423', null, '207.46.13.121', '美国', '', '', '', '', '1', '1519687402');
INSERT INTO `bl_visited` VALUES ('424', null, '106.11.226.247', '中国', '华东', '上海市', '上海市', '', '2', '1521231199');
INSERT INTO `bl_visited` VALUES ('425', null, '207.46.13.155', '美国', '', '', '', '', '2', '1519744090');
INSERT INTO `bl_visited` VALUES ('426', null, '118.189.188.117', '新加坡', '', '', '', '', '1', '1519727705');
INSERT INTO `bl_visited` VALUES ('427', null, '106.11.242.40', '中国', '华东', '上海市', '上海市', '', '1', '1519731635');
INSERT INTO `bl_visited` VALUES ('428', null, '112.74.94.30', '中国', '华南', '广东省', '深圳市', '', '1', '1519753747');
INSERT INTO `bl_visited` VALUES ('429', null, '158.248.187.87', '丹麦', '', '', '', '', '1', '1519771959');
INSERT INTO `bl_visited` VALUES ('430', null, '106.11.242.162', '中国', '华东', '上海市', '上海市', '', '1', '1519795596');
INSERT INTO `bl_visited` VALUES ('431', null, '40.77.167.27', '美国', '', '', '', '', '1', '1519796617');
INSERT INTO `bl_visited` VALUES ('432', null, '46.237.64.79', '保加利亚', '', '', '', '', '1', '1519803096');
INSERT INTO `bl_visited` VALUES ('434', null, '177.194.42.85', '巴西', '', '', '', '', '1', '1519847701');
INSERT INTO `bl_visited` VALUES ('435', null, '111.231.247.248', '中国', '华南', '广东省', '广州市', '', '1', '1519855711');
INSERT INTO `bl_visited` VALUES ('436', null, '106.11.227.128', '中国', '华东', '上海市', '上海市', '', '1', '1519885947');
INSERT INTO `bl_visited` VALUES ('437', null, '91.200.12.91', '乌克兰', '', '', '', '', '2', '1519970898');
INSERT INTO `bl_visited` VALUES ('438', null, '203.208.60.155', '台湾', '', '台湾省', '', '', '7', '1527198516');
INSERT INTO `bl_visited` VALUES ('439', null, '125.212.217.214', '越南', '', '', '', '', '1', '1519901468');
INSERT INTO `bl_visited` VALUES ('440', null, '203.208.60.156', '台湾', '', '台湾省', '', '', '2', '1527184525');
INSERT INTO `bl_visited` VALUES ('441', null, '47.97.21.76', '中国', '华东', '浙江省', '杭州市', '', '5', '1525891501');
INSERT INTO `bl_visited` VALUES ('442', null, '40.77.167.175', '美国', '', '', '', '', '1', '1519936105');
INSERT INTO `bl_visited` VALUES ('443', null, '185.100.87.247', '罗马尼亚', '', '', '', '', '3', '1519960511');
INSERT INTO `bl_visited` VALUES ('444', null, '106.11.226.208', '中国', '华东', '上海市', '上海市', '', '1', '1519972291');
INSERT INTO `bl_visited` VALUES ('445', null, '196.52.43.94', '荷兰', '', '', '', '', '1', '1519993021');
INSERT INTO `bl_visited` VALUES ('446', null, '106.11.227.230', '中国', '华东', '上海市', '上海市', '', '1', '1519993412');
INSERT INTO `bl_visited` VALUES ('447', null, '47.94.39.226', '中国', '华北', '北京市', '北京市', '', '4', '1525105974');
INSERT INTO `bl_visited` VALUES ('448', null, '40.77.167.13', '美国', '', '', '', '', '1', '1520031724');
INSERT INTO `bl_visited` VALUES ('449', null, '106.11.242.74', '中国', '华东', '上海市', '上海市', '', '1', '1520062978');
INSERT INTO `bl_visited` VALUES ('450', null, '42.225.214.70', '中国', '华中', '河南省', '商丘市', '', '1', '1520077310');
INSERT INTO `bl_visited` VALUES ('451', null, '59.19.241.156', '韩国', '', '', '', '', '1', '1520077809');
INSERT INTO `bl_visited` VALUES ('452', null, '106.11.227.250', '中国', '华东', '上海市', '上海市', '', '1', '1520081106');
INSERT INTO `bl_visited` VALUES ('453', null, '119.23.127.40', '中国', '华南', '广东省', '深圳市', '', '4', '1520867421');
INSERT INTO `bl_visited` VALUES ('454', null, '157.55.39.55', '美国', '', '', '', '', '2', '1520130207');
INSERT INTO `bl_visited` VALUES ('455', null, '120.79.112.153', '中国', '华南', '广东省', '深圳市', '', '1', '1520094422');
INSERT INTO `bl_visited` VALUES ('456', null, '46.237.80.186', '保加利亚', '', '', '', '', '1', '1520139038');
INSERT INTO `bl_visited` VALUES ('457', null, '218.28.59.130', '中国', '华中', '河南省', '焦作市', '', '2', '1521871722');
INSERT INTO `bl_visited` VALUES ('458', null, '191.188.10.149', '巴西', '', '', '', '', '1', '1520144964');
INSERT INTO `bl_visited` VALUES ('459', null, '106.11.226.160', '中国', '华东', '上海市', '上海市', '', '1', '1520152206');
INSERT INTO `bl_visited` VALUES ('460', null, '106.11.226.19', '中国', '华东', '上海市', '上海市', '', '1', '1520172641');
INSERT INTO `bl_visited` VALUES ('461', null, '47.52.210.94', '美国', '西部', '加利福尼亚州', '', '', '1', '1520179397');
INSERT INTO `bl_visited` VALUES ('462', null, '59.110.6.177', '中国', '华北', '北京市', '北京市', '', '10', '1526260218');
INSERT INTO `bl_visited` VALUES ('463', null, '101.199.108.57', '中国', '华北', '北京市', '北京市', '', '1', '1520216029');
INSERT INTO `bl_visited` VALUES ('464', null, '39.104.91.125', '中国', '华东', '浙江省', '杭州市', '', '3', '1520224508');
INSERT INTO `bl_visited` VALUES ('465', null, '39.104.70.5', '中国', '华东', '浙江省', '杭州市', '', '2', '1521634703');
INSERT INTO `bl_visited` VALUES ('466', null, '207.46.13.159', '美国', '', '', '', '', '1', '1520228575');
INSERT INTO `bl_visited` VALUES ('467', null, '106.11.242.249', '中国', '华东', '上海市', '上海市', '', '1', '1520239665');
INSERT INTO `bl_visited` VALUES ('468', null, '106.11.226.49', '中国', '华东', '上海市', '上海市', '', '2', '1526828549');
INSERT INTO `bl_visited` VALUES ('469', null, '159.65.246.244', '美国', '', '', '', '', '1', '1520269216');
INSERT INTO `bl_visited` VALUES ('470', null, '157.55.39.225', '美国', '', '', '', '', '1', '1520273529');
INSERT INTO `bl_visited` VALUES ('471', null, '38.142.99.10', '美国', '', '', '', '', '1', '1520298606');
INSERT INTO `bl_visited` VALUES ('472', null, '39.108.180.144', '中国', '华南', '广东省', '深圳市', '', '1', '1520305255');
INSERT INTO `bl_visited` VALUES ('473', null, '106.11.225.82', '中国', '华东', '上海市', '上海市', '', '1', '1520325197');
INSERT INTO `bl_visited` VALUES ('474', null, '106.11.225.81', '中国', '华东', '上海市', '上海市', '', '1', '1520333189');
INSERT INTO `bl_visited` VALUES ('475', null, '181.143.27.34', '哥伦比亚', '', '', '', '', '1', '1520349933');
INSERT INTO `bl_visited` VALUES ('476', null, '40.77.167.122', '美国', '', '', '', '', '2', '1526044977');
INSERT INTO `bl_visited` VALUES ('477', null, '207.46.13.157', '美国', '', '', '', '', '2', '1520450986');
INSERT INTO `bl_visited` VALUES ('478', null, '186.71.135.218', '厄瓜多尔', '', '', '', '', '1', '1520409088');
INSERT INTO `bl_visited` VALUES ('479', null, '106.11.225.35', '中国', '华东', '上海市', '上海市', '', '1', '1520412656');
INSERT INTO `bl_visited` VALUES ('480', null, '106.11.225.242', '中国', '华东', '上海市', '上海市', '', '2', '1523478615');
INSERT INTO `bl_visited` VALUES ('481', null, '119.23.138.247', '中国', '华南', '广东省', '深圳市', '', '6', '1527105357');
INSERT INTO `bl_visited` VALUES ('482', null, '106.11.227.124', '中国', '华东', '上海市', '上海市', '', '1', '1520453092');
INSERT INTO `bl_visited` VALUES ('483', null, '51.174.242.153', '挪威', '', '', '', '', '1', '1520494425');
INSERT INTO `bl_visited` VALUES ('484', null, '39.107.14.208', '中国', '华北', '北京市', '北京市', '', '7', '1527008032');
INSERT INTO `bl_visited` VALUES ('485', null, '198.20.103.243', '荷兰', '', '', '', '', '1', '1520533228');
INSERT INTO `bl_visited` VALUES ('486', null, '106.11.227.21', '中国', '华东', '上海市', '上海市', '', '1', '1520539059');
INSERT INTO `bl_visited` VALUES ('487', null, '106.11.226.97', '中国', '华东', '上海市', '上海市', '', '1', '1520539412');
INSERT INTO `bl_visited` VALUES ('488', null, '157.55.39.94', '美国', '', '', '', '', '1', '1520544933');
INSERT INTO `bl_visited` VALUES ('489', null, '106.11.227.212', '中国', '华东', '上海市', '上海市', '', '1', '1520626400');
INSERT INTO `bl_visited` VALUES ('490', null, '40.77.167.95', '美国', '', '', '', '', '1', '1520660064');
INSERT INTO `bl_visited` VALUES ('491', null, '31.163.124.221', '俄罗斯', '', '', '', '', '1', '1520684831');
INSERT INTO `bl_visited` VALUES ('492', null, '196.52.43.92', '荷兰', '', '', '', '', '2', '1523576439');
INSERT INTO `bl_visited` VALUES ('493', null, '80.211.249.13', '意大利', '', '', '', '', '1', '1520688091');
INSERT INTO `bl_visited` VALUES ('494', null, '106.11.227.70', '中国', '华东', '上海市', '上海市', '', '1', '1520713271');
INSERT INTO `bl_visited` VALUES ('495', null, '106.11.242.137', '中国', '华东', '上海市', '上海市', '', '1', '1520713375');
INSERT INTO `bl_visited` VALUES ('496', null, '179.157.103.9', '巴西', '', '', '', '', '1', '1520753155');
INSERT INTO `bl_visited` VALUES ('497', null, '106.11.225.157', '中国', '华东', '上海市', '上海市', '', '1', '1520795615');
INSERT INTO `bl_visited` VALUES ('498', null, '106.11.225.17', '中国', '华东', '上海市', '上海市', '', '2', '1522480144');
INSERT INTO `bl_visited` VALUES ('499', null, '157.55.39.156', '美国', '', '', '', '', '1', '1520848382');
INSERT INTO `bl_visited` VALUES ('500', null, '72.14.190.168', '美国', '西部', '德克萨斯州', '', '', '1', '1520872441');
INSERT INTO `bl_visited` VALUES ('501', null, '106.11.226.80', '中国', '华东', '上海市', '上海市', '', '1', '1520884036');
INSERT INTO `bl_visited` VALUES ('502', null, '106.11.242.239', '中国', '华东', '上海市', '上海市', '', '1', '1520937424');
INSERT INTO `bl_visited` VALUES ('503', null, '118.31.244.58', '中国', '华东', '浙江省', '杭州市', '', '6', '1527016199');
INSERT INTO `bl_visited` VALUES ('504', null, '106.11.242.252', '中国', '华东', '上海市', '上海市', '', '1', '1520971201');
INSERT INTO `bl_visited` VALUES ('505', null, '139.224.92.237', '中国', '华东', '上海市', '上海市', '', '1', '1520984108');
INSERT INTO `bl_visited` VALUES ('506', null, '207.46.13.147', '美国', '', '', '', '', '1', '1520991840');
INSERT INTO `bl_visited` VALUES ('507', null, '167.114.209.28', '加拿大', '', '', '', '', '1', '1520992506');
INSERT INTO `bl_visited` VALUES ('508', null, '106.11.225.108', '中国', '华东', '上海市', '上海市', '', '1', '1521024712');
INSERT INTO `bl_visited` VALUES ('509', null, '40.77.167.177', '美国', '', '', '', '', '1', '1521043664');
INSERT INTO `bl_visited` VALUES ('510', null, '139.59.26.174', '印度', '', '', '', '', '1', '1521047481');
INSERT INTO `bl_visited` VALUES ('511', null, '119.23.174.205', '中国', '华南', '广东省', '深圳市', '', '8', '1527182874');
INSERT INTO `bl_visited` VALUES ('512', null, '106.15.52.246', '中国', '华东', '上海市', '上海市', '', '3', '1527096111');
INSERT INTO `bl_visited` VALUES ('513', null, '177.141.144.201', '巴西', '', '', '', '', '1', '1521057037');
INSERT INTO `bl_visited` VALUES ('514', null, '106.11.227.84', '中国', '华东', '上海市', '上海市', '', '1', '1521058822');
INSERT INTO `bl_visited` VALUES ('515', null, '106.11.227.112', '中国', '华东', '上海市', '上海市', '', '1', '1521113153');
INSERT INTO `bl_visited` VALUES ('516', null, '40.77.167.72', '美国', '', '', '', '', '1', '1521116459');
INSERT INTO `bl_visited` VALUES ('517', null, '106.11.227.57', '中国', '华东', '上海市', '上海市', '', '2', '1521676232');
INSERT INTO `bl_visited` VALUES ('518', null, '34.238.240.23', '美国', '东部', '弗吉尼亚州', '', '', '1', '1521149727');
INSERT INTO `bl_visited` VALUES ('519', null, '106.11.227.13', '中国', '华东', '上海市', '上海市', '', '1', '1521195960');
INSERT INTO `bl_visited` VALUES ('520', null, '180.173.35.50', '中国', '华东', '上海市', '上海市', '', '5', '1521200207');
INSERT INTO `bl_visited` VALUES ('521', null, '207.46.13.18', '美国', '', '', '', '', '12', '1525767900');
INSERT INTO `bl_visited` VALUES ('522', null, '106.11.227.77', '中国', '华东', '上海市', '上海市', '', '1', '1521229418');
INSERT INTO `bl_visited` VALUES ('523', null, '38.100.21.67', '美国', '东部', '弗吉尼亚州', '', '', '1', '1521237185');
INSERT INTO `bl_visited` VALUES ('524', null, '83.82.191.238', '荷兰', '', '', '', '', '1', '1521301319');
INSERT INTO `bl_visited` VALUES ('525', null, '207.46.13.99', '美国', '', '', '', '', '3', '1523064916');
INSERT INTO `bl_visited` VALUES ('526', null, '106.11.242.35', '中国', '华东', '上海市', '上海市', '', '1', '1521317443');
INSERT INTO `bl_visited` VALUES ('527', null, '106.11.242.171', '中国', '华东', '上海市', '上海市', '', '1', '1521319513');
INSERT INTO `bl_visited` VALUES ('528', null, '189.60.21.91', '巴西', '', '', '', '', '1', '1521332276');
INSERT INTO `bl_visited` VALUES ('529', null, '157.55.39.102', '美国', '', '', '', '', '1', '1521348220');
INSERT INTO `bl_visited` VALUES ('530', null, '220.179.124.182', '中国', '华东', '安徽省', '黄山市', '', '2', '1522042180');
INSERT INTO `bl_visited` VALUES ('531', null, '75.149.221.170', '美国', '', '', '', '', '1', '1521364341');
INSERT INTO `bl_visited` VALUES ('532', null, '158.69.228.56', '加拿大', '', '', '', '', '1', '1521404339');
INSERT INTO `bl_visited` VALUES ('533', null, '106.11.227.20', '中国', '华东', '上海市', '上海市', '', '1', '1521406741');
INSERT INTO `bl_visited` VALUES ('534', null, '106.11.226.142', '中国', '华东', '上海市', '上海市', '', '1', '1521409201');
INSERT INTO `bl_visited` VALUES ('535', null, '157.55.39.207', '美国', '', '', '', '', '1', '1521460717');
INSERT INTO `bl_visited` VALUES ('536', null, '47.94.52.138', '中国', '华北', '北京市', '北京市', '', '4', '1524676494');
INSERT INTO `bl_visited` VALUES ('537', null, '106.11.242.199', '中国', '华东', '上海市', '上海市', '', '1', '1521499077');
INSERT INTO `bl_visited` VALUES ('538', null, '106.11.242.10', '中国', '华东', '上海市', '上海市', '', '1', '1521499342');
INSERT INTO `bl_visited` VALUES ('539', null, '157.55.39.137', '美国', '', '', '', '', '1', '1521504345');
INSERT INTO `bl_visited` VALUES ('540', null, '34.216.157.181', '美国', '西部', '俄勒冈州', '', '', '1', '1521521106');
INSERT INTO `bl_visited` VALUES ('541', null, '207.46.13.65', '美国', '', '', '', '', '1', '1521556010');
INSERT INTO `bl_visited` VALUES ('542', null, '106.11.227.143', '中国', '华东', '上海市', '上海市', '', '2', '1521769793');
INSERT INTO `bl_visited` VALUES ('543', null, '66.249.65.82', '美国', '', '', '', '', '3', '1521671645');
INSERT INTO `bl_visited` VALUES ('544', null, '106.11.242.193', '中国', '华东', '上海市', '上海市', '', '1', '1521585917');
INSERT INTO `bl_visited` VALUES ('545', null, '122.226.73.141', '中国', '华东', '浙江省', '金华市', '', '1', '1521600621');
INSERT INTO `bl_visited` VALUES ('546', null, '222.187.223.31', '中国', '华东', '江苏省', '宿迁市', '', '1', '1521601622');
INSERT INTO `bl_visited` VALUES ('547', null, '207.46.13.32', '美国', '', '', '', '', '1', '1521601887');
INSERT INTO `bl_visited` VALUES ('548', null, '139.162.119.197', '日本', '', '', '', '', '8', '1527160050');
INSERT INTO `bl_visited` VALUES ('549', null, '39.104.28.63', '中国', '华北', '内蒙古自治区', '呼和浩特市', '', '3', '1521634702');
INSERT INTO `bl_visited` VALUES ('550', null, '207.46.13.179', '美国', '', '', '', '', '1', '1521650127');
INSERT INTO `bl_visited` VALUES ('551', null, '52.90.227.228', '美国', '东部', '弗吉尼亚州', '', '', '1', '1521657572');
INSERT INTO `bl_visited` VALUES ('552', null, '66.249.65.84', '美国', '', '', '', '', '1', '1521671647');
INSERT INTO `bl_visited` VALUES ('553', null, '106.11.242.95', '中国', '华东', '上海市', '上海市', '', '1', '1521676741');
INSERT INTO `bl_visited` VALUES ('554', null, '207.46.13.146', '美国', '', '', '', '', '1', '1521696407');
INSERT INTO `bl_visited` VALUES ('555', null, '125.64.94.200', '中国', '西南', '四川省', '德阳市', '', '2', '1525768585');
INSERT INTO `bl_visited` VALUES ('556', null, '207.46.13.164', '美国', '', '', '', '', '5', '1521908057');
INSERT INTO `bl_visited` VALUES ('557', null, '189.123.165.181', '巴西', '', '', '', '', '1', '1521720820');
INSERT INTO `bl_visited` VALUES ('558', null, '47.97.23.199', '中国', '华东', '浙江省', '杭州市', '', '2', '1526229165');
INSERT INTO `bl_visited` VALUES ('559', null, '106.11.225.122', '中国', '华东', '上海市', '上海市', '', '1', '1521768002');
INSERT INTO `bl_visited` VALUES ('560', null, '167.114.232.244', '法国', '', '', '', '', '2', '1521800839');
INSERT INTO `bl_visited` VALUES ('561', null, '106.11.226.237', '中国', '华东', '上海市', '上海市', '', '1', '1521855272');
INSERT INTO `bl_visited` VALUES ('562', null, '168.1.128.54', '澳大利亚', '', '', '', '', '1', '1521856712');
INSERT INTO `bl_visited` VALUES ('563', null, '106.11.242.144', '中国', '华东', '上海市', '上海市', '', '1', '1521857124');
INSERT INTO `bl_visited` VALUES ('564', null, '54.88.67.106', '美国', '东部', '弗吉尼亚州', '', '', '1', '1521940567');
INSERT INTO `bl_visited` VALUES ('565', null, '106.11.226.56', '中国', '华东', '上海市', '上海市', '', '1', '1521941275');
INSERT INTO `bl_visited` VALUES ('566', null, '106.11.225.43', '中国', '华东', '上海市', '上海市', '', '1', '1521942741');
INSERT INTO `bl_visited` VALUES ('567', null, '86.110.118.137', '乌克兰', '', '', '', '', '1', '1521958301');
INSERT INTO `bl_visited` VALUES ('568', null, '27.156.88.131', '中国', '华东', '福建省', '福州市', '', '1', '1521965592');
INSERT INTO `bl_visited` VALUES ('569', null, '124.90.49.52', '中国', '华东', '浙江省', '杭州市', '', '1', '1521965649');
INSERT INTO `bl_visited` VALUES ('570', null, '107.170.195.238', '美国', '西部', '加利福尼亚州', '', '', '1', '1521973877');
INSERT INTO `bl_visited` VALUES ('571', null, '207.46.13.172', '美国', '', '', '', '', '1', '1521999788');
INSERT INTO `bl_visited` VALUES ('572', null, '106.11.242.203', '中国', '华东', '上海市', '上海市', '', '2', '1522114188');
INSERT INTO `bl_visited` VALUES ('573', null, '106.11.225.135', '中国', '华东', '上海市', '上海市', '', '1', '1522028043');
INSERT INTO `bl_visited` VALUES ('574', null, '95.225.134.91', '意大利', '', '', '', '', '1', '1522034662');
INSERT INTO `bl_visited` VALUES ('575', null, '157.55.39.254', '美国', '', '', '', '', '3', '1522149922');
INSERT INTO `bl_visited` VALUES ('576', null, '34.216.187.176', '美国', '西部', '俄勒冈州', '', '', '1', '1522061862');
INSERT INTO `bl_visited` VALUES ('577', null, '104.192.74.19', '美国', '东部', '伊利诺伊州', '', '', '2', '1522077800');
INSERT INTO `bl_visited` VALUES ('578', null, '189.34.176.229', '巴西', '', '', '', '', '1', '1522085801');
INSERT INTO `bl_visited` VALUES ('579', null, '106.11.226.10', '中国', '华东', '上海市', '上海市', '', '1', '1522114169');
INSERT INTO `bl_visited` VALUES ('580', null, '182.101.50.54', '中国', '华东', '江西省', '南昌市', '', '1', '1522133680');
INSERT INTO `bl_visited` VALUES ('581', null, '120.55.13.109', '中国', '华东', '浙江省', '杭州市', '', '5', '1526319194');
INSERT INTO `bl_visited` VALUES ('582', null, '207.46.13.185', '美国', '', '', '', '', '2', '1522244435');
INSERT INTO `bl_visited` VALUES ('583', null, '106.11.227.145', '中国', '华东', '上海市', '上海市', '', '1', '1522200917');
INSERT INTO `bl_visited` VALUES ('584', null, '106.11.225.226', '中国', '华东', '上海市', '上海市', '', '1', '1522201300');
INSERT INTO `bl_visited` VALUES ('585', null, '31.208.33.86', '瑞典', '', '', '', '', '1', '1522203663');
INSERT INTO `bl_visited` VALUES ('586', null, '104.192.74.40', '美国', '东部', '伊利诺伊州', '', '', '3', '1526192272');
INSERT INTO `bl_visited` VALUES ('587', null, '157.55.39.39', '美国', '', '', '', '', '3', '1522390965');
INSERT INTO `bl_visited` VALUES ('588', null, '106.11.242.59', '中国', '华东', '上海市', '上海市', '', '1', '1522302961');
INSERT INTO `bl_visited` VALUES ('589', null, '168.1.128.38', '澳大利亚', '', '', '', '', '1', '1522380024');
INSERT INTO `bl_visited` VALUES ('590', null, '106.11.226.71', '中国', '华东', '上海市', '上海市', '', '1', '1522389493');
INSERT INTO `bl_visited` VALUES ('591', null, '106.11.225.124', '中国', '华东', '上海市', '上海市', '', '1', '1522393220');
INSERT INTO `bl_visited` VALUES ('592', null, '187.36.248.147', '巴西', '', '', '', '', '1', '1522434763');
INSERT INTO `bl_visited` VALUES ('593', null, '40.77.167.194', '美国', '', '', '', '', '1', '1522435332');
INSERT INTO `bl_visited` VALUES ('594', null, '193.151.118.79', '匈牙利', '', '', '', '', '1', '1522472601');
INSERT INTO `bl_visited` VALUES ('595', null, '106.11.227.163', '中国', '华东', '上海市', '上海市', '', '1', '1522476813');
INSERT INTO `bl_visited` VALUES ('596', null, '157.55.39.105', '美国', '', '', '', '', '4', '1522636286');
INSERT INTO `bl_visited` VALUES ('597', null, '187.75.66.228', '巴西', '', '', '', '', '1', '1522523487');
INSERT INTO `bl_visited` VALUES ('598', null, '190.57.128.222', '厄瓜多尔', '', '', '', '', '1', '1522523549');
INSERT INTO `bl_visited` VALUES ('599', null, '64.135.199.25', '美国', '东部', '伊利诺伊州', '', '', '1', '1522524989');
INSERT INTO `bl_visited` VALUES ('600', null, '71.78.213.179', '美国', '', '', '', '', '1', '1522527165');
INSERT INTO `bl_visited` VALUES ('601', null, '200.254.159.162', '巴西', '', '', '', '', '1', '1522527560');
INSERT INTO `bl_visited` VALUES ('602', null, '201.67.22.222', '巴西', '', '', '', '', '1', '1522528186');
INSERT INTO `bl_visited` VALUES ('603', null, '201.67.22.222', '巴西', '', '', '', '', '1', '1522528186');
INSERT INTO `bl_visited` VALUES ('604', null, '203.173.93.16', '印度尼西亚', '', '', '', '', '1', '1522529264');
INSERT INTO `bl_visited` VALUES ('605', null, '195.22.231.133', '摩尔多瓦', '', '', '', '', '1', '1522529373');
INSERT INTO `bl_visited` VALUES ('606', null, '112.225.133.142', '中国', '华东', '山东省', '青岛市', '', '1', '1522530015');
INSERT INTO `bl_visited` VALUES ('607', null, '146.120.196.84', '俄罗斯', '', '', '', '', '1', '1522530553');
INSERT INTO `bl_visited` VALUES ('608', null, '202.89.67.82', '印度', '', '', '', '', '1', '1522531419');
INSERT INTO `bl_visited` VALUES ('609', null, '189.46.50.248', '巴西', '', '', '', '', '1', '1522532448');
INSERT INTO `bl_visited` VALUES ('610', null, '177.68.235.11', '巴西', '', '', '', '', '1', '1522534070');
INSERT INTO `bl_visited` VALUES ('611', null, '191.193.27.243', '巴西', '', '', '', '', '1', '1522535579');
INSERT INTO `bl_visited` VALUES ('612', null, '178.216.26.34', '波兰', '', '', '', '', '1', '1522536110');
INSERT INTO `bl_visited` VALUES ('613', null, '84.3.1.235', '匈牙利', '', '', '', '', '1', '1522536416');
INSERT INTO `bl_visited` VALUES ('614', null, '87.229.93.152', '匈牙利', '', '', '', '', '1', '1522536629');
INSERT INTO `bl_visited` VALUES ('615', null, '187.57.24.198', '巴西', '', '', '', '', '1', '1522540148');
INSERT INTO `bl_visited` VALUES ('616', null, '96.39.170.101', '美国', '', '', '', '', '1', '1522541942');
INSERT INTO `bl_visited` VALUES ('617', null, '179.225.228.91', '巴西', '', '', '', '', '1', '1522543130');
INSERT INTO `bl_visited` VALUES ('618', null, '64.66.23.208', '加拿大', '', '', '', '', '1', '1522547282');
INSERT INTO `bl_visited` VALUES ('619', null, '164.132.91.1', '法国', '', '', '', '', '1', '1522553026');
INSERT INTO `bl_visited` VALUES ('620', null, '106.11.226.94', '中国', '华东', '上海市', '上海市', '', '1', '1522561768');
INSERT INTO `bl_visited` VALUES ('621', null, '178.47.187.104', '俄罗斯', '', '', '', '', '1', '1522562537');
INSERT INTO `bl_visited` VALUES ('622', null, '106.11.225.61', '中国', '华东', '上海市', '上海市', '', '1', '1522566414');
INSERT INTO `bl_visited` VALUES ('623', null, '152.250.131.124', '巴西', '', '', '', '', '1', '1522583300');
INSERT INTO `bl_visited` VALUES ('624', null, '184.154.189.94', '美国', '东部', '伊利诺伊州', '', '', '1', '1522643693');
INSERT INTO `bl_visited` VALUES ('625', null, '106.11.226.81', '中国', '华东', '上海市', '上海市', '', '1', '1522647454');
INSERT INTO `bl_visited` VALUES ('626', null, '106.11.227.53', '中国', '华东', '上海市', '上海市', '', '1', '1522650595');
INSERT INTO `bl_visited` VALUES ('627', null, '177.32.21.33', '巴西', '', '', '', '', '1', '1522651474');
INSERT INTO `bl_visited` VALUES ('628', null, '157.55.39.109', '美国', '', '', '', '', '2', '1522731862');
INSERT INTO `bl_visited` VALUES ('629', null, '54.145.188.132', '美国', '东部', '弗吉尼亚州', '', '', '1', '1522706602');
INSERT INTO `bl_visited` VALUES ('630', null, '106.11.225.66', '中国', '华东', '上海市', '上海市', '', '1', '1522734627');
INSERT INTO `bl_visited` VALUES ('631', null, '106.11.226.62', '中国', '华东', '上海市', '上海市', '', '1', '1522737465');
INSERT INTO `bl_visited` VALUES ('632', null, '158.85.81.118', '加拿大', '', '', '', '', '2', '1526637235');
INSERT INTO `bl_visited` VALUES ('633', null, '34.245.239.61', '爱尔兰', '', '', '', '', '1', '1522766575');
INSERT INTO `bl_visited` VALUES ('634', null, '211.161.240.226', '中国', '华东', '上海市', '上海市', '', '1', '1522770306');
INSERT INTO `bl_visited` VALUES ('635', null, '112.90.82.218', '中国', '华南', '广东省', '深圳市', '', '1', '1522770307');
INSERT INTO `bl_visited` VALUES ('636', null, '101.226.225.85', '中国', '华东', '上海市', '上海市', '', '1', '1522770366');
INSERT INTO `bl_visited` VALUES ('637', null, '157.55.39.196', '美国', '', '', '', '', '1', '1522784448');
INSERT INTO `bl_visited` VALUES ('638', null, '124.114.152.238', '中国', '西北', '陕西省', '西安市', '', '1', '1522822411');
INSERT INTO `bl_visited` VALUES ('639', null, '104.236.7.158', '美国', '东部', '纽约州', '', '', '1', '1522857694');
INSERT INTO `bl_visited` VALUES ('640', null, '216.245.222.74', '美国', '西部', '德克萨斯州', '', '', '1', '1522872433');
INSERT INTO `bl_visited` VALUES ('641', null, '40.77.167.62', '美国', '', '', '', '', '1', '1522882126');
INSERT INTO `bl_visited` VALUES ('642', null, '106.11.226.168', '中国', '华东', '上海市', '上海市', '', '1', '1522907909');
INSERT INTO `bl_visited` VALUES ('643', null, '104.192.74.21', '美国', '东部', '伊利诺伊州', '', '', '1', '1522908277');
INSERT INTO `bl_visited` VALUES ('644', null, '117.50.20.164', '中国', '华北', '北京市', '北京市', '', '1', '1522911331');
INSERT INTO `bl_visited` VALUES ('645', null, '106.11.226.157', '中国', '华东', '上海市', '上海市', '', '1', '1522911710');
INSERT INTO `bl_visited` VALUES ('646', null, '40.77.167.94', '美国', '', '', '', '', '2', '1522975923');
INSERT INTO `bl_visited` VALUES ('647', null, '106.11.226.105', '中国', '华东', '上海市', '上海市', '', '1', '1522993972');
INSERT INTO `bl_visited` VALUES ('648', null, '106.11.242.100', '中国', '华东', '上海市', '上海市', '', '1', '1522998988');
INSERT INTO `bl_visited` VALUES ('649', null, '179.158.29.177', '巴西', '', '', '', '', '1', '1523007311');
INSERT INTO `bl_visited` VALUES ('650', null, '220.179.124.185', '中国', '华东', '安徽省', '黄山市', '', '1', '1523018791');
INSERT INTO `bl_visited` VALUES ('651', null, '106.11.225.80', '中国', '华东', '上海市', '上海市', '', '2', '1525984066');
INSERT INTO `bl_visited` VALUES ('652', null, '106.11.227.210', '中国', '华东', '上海市', '上海市', '', '1', '1523085263');
INSERT INTO `bl_visited` VALUES ('653', null, '40.77.167.197', '美国', '', '', '', '', '2', '1523160810');
INSERT INTO `bl_visited` VALUES ('654', null, '196.52.43.105', '荷兰', '', '', '', '', '2', '1524830018');
INSERT INTO `bl_visited` VALUES ('655', null, '106.11.227.177', '中国', '华东', '上海市', '上海市', '', '1', '1523166066');
INSERT INTO `bl_visited` VALUES ('656', null, '106.11.227.217', '中国', '华东', '上海市', '上海市', '', '1', '1523172257');
INSERT INTO `bl_visited` VALUES ('657', null, '157.55.39.101', '美国', '', '', '', '', '1', '1523207172');
INSERT INTO `bl_visited` VALUES ('658', null, '201.53.47.247', '巴西', '', '', '', '', '1', '1523216763');
INSERT INTO `bl_visited` VALUES ('659', null, '106.11.226.148', '中国', '华东', '上海市', '上海市', '', '1', '1523253131');
INSERT INTO `bl_visited` VALUES ('660', null, '207.46.13.28', '美国', '', '', '', '', '1', '1523301172');
INSERT INTO `bl_visited` VALUES ('661', null, '106.11.225.121', '中国', '华东', '上海市', '上海市', '', '1', '1523341453');
INSERT INTO `bl_visited` VALUES ('662', null, '107.170.193.209', '美国', '西部', '加利福尼亚州', '', '', '1', '1523345762');
INSERT INTO `bl_visited` VALUES ('663', null, '207.46.13.137', '美国', '', '', '', '', '1', '1523354139');
INSERT INTO `bl_visited` VALUES ('664', null, '106.185.52.36', '日本', '', '', '', '', '5', '1523533508');
INSERT INTO `bl_visited` VALUES ('665', null, '172.105.215.38', '日本', '', '', '', '', '3', '1526127334');
INSERT INTO `bl_visited` VALUES ('666', null, '196.52.43.103', '荷兰', '', '', '', '', '1', '1523371519');
INSERT INTO `bl_visited` VALUES ('667', null, '54.67.59.131', '美国', '西部', '加利福尼亚州', '', '', '8', '1525711732');
INSERT INTO `bl_visited` VALUES ('668', null, '40.77.167.18', '美国', '', '', '', '', '1', '1523396815');
INSERT INTO `bl_visited` VALUES ('669', null, '106.185.25.97', '日本', '', '', '', '', '2', '1523485548');
INSERT INTO `bl_visited` VALUES ('670', null, '103.25.28.17', '中国', '华北', '北京市', '北京市', '', '1', '1523398835');
INSERT INTO `bl_visited` VALUES ('671', null, '118.31.170.240', '中国', '华东', '浙江省', '杭州市', '', '2', '1523400923');
INSERT INTO `bl_visited` VALUES ('672', null, '66.249.79.30', '美国', '', '', '', '', '1', '1523417825');
INSERT INTO `bl_visited` VALUES ('673', null, '104.192.74.27', '美国', '东部', '伊利诺伊州', '', '', '1', '1523458863');
INSERT INTO `bl_visited` VALUES ('674', null, '35.156.99.170', '德国', '', '', '', '', '1', '1523469164');
INSERT INTO `bl_visited` VALUES ('675', null, '196.52.43.106', '荷兰', '', '', '', '', '1', '1523488848');
INSERT INTO `bl_visited` VALUES ('676', null, '207.46.13.36', '美国', '', '', '', '', '2', '1523546668');
INSERT INTO `bl_visited` VALUES ('677', null, '54.80.251.13', '美国', '东部', '弗吉尼亚州', '', '', '1', '1523518353');
INSERT INTO `bl_visited` VALUES ('678', null, '191.191.165.81', '巴西', '', '', '', '', '1', '1523526273');
INSERT INTO `bl_visited` VALUES ('679', null, '106.11.227.29', '中国', '华东', '上海市', '上海市', '', '1', '1523528304');
INSERT INTO `bl_visited` VALUES ('680', null, '106.11.226.16', '中国', '华东', '上海市', '上海市', '', '1', '1523564173');
INSERT INTO `bl_visited` VALUES ('681', null, '157.55.39.9', '美国', '', '', '', '', '2', '1523643877');
INSERT INTO `bl_visited` VALUES ('682', null, '101.132.193.68', '中国', '华东', '上海市', '上海市', '', '1', '1523599106');
INSERT INTO `bl_visited` VALUES ('683', null, '80.123.68.174', '奥地利', '', '', '', '', '3', '1523602206');
INSERT INTO `bl_visited` VALUES ('684', null, '106.11.227.192', '中国', '华东', '上海市', '上海市', '', '1', '1523613013');
INSERT INTO `bl_visited` VALUES ('685', null, '47.97.28.80', '中国', '华东', '浙江省', '杭州市', '', '2', '1523629449');
INSERT INTO `bl_visited` VALUES ('686', null, '106.11.225.200', '中国', '华东', '上海市', '上海市', '', '1', '1523650796');
INSERT INTO `bl_visited` VALUES ('687', null, '111.204.176.252', '中国', '华北', '北京市', '北京市', '', '2', '1526202620');
INSERT INTO `bl_visited` VALUES ('688', null, '106.38.3.253', '中国', '华北', '北京市', '北京市', '', '1', '1523659163');
INSERT INTO `bl_visited` VALUES ('689', null, '104.192.74.17', '美国', '东部', '伊利诺伊州', '', '', '2', '1523695424');
INSERT INTO `bl_visited` VALUES ('690', null, '106.11.226.60', '中国', '华东', '上海市', '上海市', '', '1', '1523699018');
INSERT INTO `bl_visited` VALUES ('691', null, '187.2.232.247', '巴西', '', '', '', '', '1', '1523731349');
INSERT INTO `bl_visited` VALUES ('692', null, '106.11.225.241', '中国', '华东', '上海市', '上海市', '', '1', '1523737340');
INSERT INTO `bl_visited` VALUES ('693', null, '207.46.13.134', '美国', '', '', '', '', '2', '1523802854');
INSERT INTO `bl_visited` VALUES ('694', null, '47.97.63.143', '中国', '华东', '浙江省', '杭州市', '', '1', '1523765109');
INSERT INTO `bl_visited` VALUES ('695', null, '117.136.63.222', '中国', '西南', '四川省', '成都市', '', '4', '1523775623');
INSERT INTO `bl_visited` VALUES ('696', null, '106.11.242.155', '中国', '华东', '上海市', '上海市', '', '1', '1523786525');
INSERT INTO `bl_visited` VALUES ('697', null, '5.142.204.42', '俄罗斯', '', '', '', '', '3', '1523810894');
INSERT INTO `bl_visited` VALUES ('698', null, '106.11.227.18', '中国', '华东', '上海市', '上海市', '', '1', '1523821844');
INSERT INTO `bl_visited` VALUES ('699', null, '47.96.36.200', '中国', '华东', '浙江省', '杭州市', '', '1', '1523846228');
INSERT INTO `bl_visited` VALUES ('700', null, '118.31.167.112', '中国', '华东', '浙江省', '杭州市', '', '1', '1523862313');
INSERT INTO `bl_visited` VALUES ('701', null, '47.97.63.119', '中国', '华东', '浙江省', '杭州市', '', '1', '1523868615');
INSERT INTO `bl_visited` VALUES ('702', null, '107.170.192.119', '美国', '西部', '加利福尼亚州', '', '', '1', '1523869098');
INSERT INTO `bl_visited` VALUES ('703', null, '157.55.39.176', '美国', '', '', '', '', '1', '1523896656');
INSERT INTO `bl_visited` VALUES ('704', null, '121.43.40.106', '中国', '华东', '浙江省', '杭州市', '', '2', '1524140603');
INSERT INTO `bl_visited` VALUES ('705', null, '121.43.38.11', '中国', '华东', '浙江省', '杭州市', '', '1', '1523898859');
INSERT INTO `bl_visited` VALUES ('706', null, '47.97.68.118', '中国', '华东', '浙江省', '杭州市', '', '1', '1523899320');
INSERT INTO `bl_visited` VALUES ('707', null, '106.11.226.5', '中国', '华东', '上海市', '上海市', '', '1', '1523908238');
INSERT INTO `bl_visited` VALUES ('708', null, '168.235.93.142', '美国', '西部', '加利福尼亚州', '', '', '1', '1523955923');
INSERT INTO `bl_visited` VALUES ('709', null, '106.11.225.3', '中国', '华东', '上海市', '上海市', '', '1', '1523957102');
INSERT INTO `bl_visited` VALUES ('710', null, '35.192.109.200', '美国', '', '', '', '', '2', '1524472382');
INSERT INTO `bl_visited` VALUES ('711', null, '169.54.244.78', '美国', '西部', '德克萨斯州', '', '', '2', '1525729251');
INSERT INTO `bl_visited` VALUES ('712', null, '106.11.242.145', '中国', '华东', '上海市', '上海市', '', '1', '1523993851');
INSERT INTO `bl_visited` VALUES ('713', null, '40.77.167.179', '美国', '', '', '', '', '1', '1523999761');
INSERT INTO `bl_visited` VALUES ('714', null, '106.11.242.107', '中国', '华东', '上海市', '上海市', '', '1', '1524044110');
INSERT INTO `bl_visited` VALUES ('715', null, '207.46.13.165', '美国', '', '', '', '', '4', '1524193195');
INSERT INTO `bl_visited` VALUES ('716', null, '66.228.49.95', '美国', '西部', '德克萨斯州', '', '', '1', '1524058389');
INSERT INTO `bl_visited` VALUES ('717', null, '106.11.227.168', '中国', '华东', '上海市', '上海市', '', '1', '1524082649');
INSERT INTO `bl_visited` VALUES ('718', null, '47.96.251.186', '中国', '华东', '浙江省', '杭州市', '', '1', '1524138489');
INSERT INTO `bl_visited` VALUES ('719', null, '118.31.165.43', '中国', '华东', '浙江省', '杭州市', '', '1', '1524139948');
INSERT INTO `bl_visited` VALUES ('720', null, '196.52.43.54', '荷兰', '', '', '', '', '1', '1524183229');
INSERT INTO `bl_visited` VALUES ('721', null, '104.192.74.24', '美国', '东部', '伊利诺伊州', '', '', '2', '1524219580');
INSERT INTO `bl_visited` VALUES ('722', null, '179.218.211.185', '巴西', '', '', '', '', '1', '1524265500');
INSERT INTO `bl_visited` VALUES ('723', null, '35.193.31.87', '美国', '', '', '', '', '1', '1524266231');
INSERT INTO `bl_visited` VALUES ('724', null, '106.11.225.99', '中国', '华东', '上海市', '上海市', '', '1', '1524307279');
INSERT INTO `bl_visited` VALUES ('725', null, '107.170.224.184', '美国', '西部', '加利福尼亚州', '', '', '1', '1524307931');
INSERT INTO `bl_visited` VALUES ('726', null, '207.46.13.104', '美国', '', '', '', '', '1', '1524311315');
INSERT INTO `bl_visited` VALUES ('727', null, '157.55.39.236', '美国', '', '', '', '', '1', '1524354505');
INSERT INTO `bl_visited` VALUES ('728', null, '106.11.225.130', '中国', '华东', '上海市', '上海市', '', '1', '1524393925');
INSERT INTO `bl_visited` VALUES ('729', null, '110.164.126.175', '泰国', '', '', '', '', '3', '1524394588');
INSERT INTO `bl_visited` VALUES ('730', null, '104.192.74.31', '美国', '东部', '伊利诺伊州', '', '', '2', '1524401128');
INSERT INTO `bl_visited` VALUES ('731', null, '207.46.13.227', '美国', '', '', '', '', '3', '1524515119');
INSERT INTO `bl_visited` VALUES ('732', null, '47.93.112.232', '中国', '华北', '北京市', '北京市', '', '1', '1524417873');
INSERT INTO `bl_visited` VALUES ('733', null, '178.73.215.171', '瑞典', '', '', '', '', '5', '1526840298');
INSERT INTO `bl_visited` VALUES ('734', null, '106.11.227.45', '中国', '华东', '上海市', '上海市', '', '1', '1524427449');
INSERT INTO `bl_visited` VALUES ('735', null, '47.52.163.179', '香港', '', '香港特别行政区', '', '', '2', '1524432310');
INSERT INTO `bl_visited` VALUES ('736', null, '5.188.62.117', '俄罗斯', '', '', '', '', '2', '1524436338');
INSERT INTO `bl_visited` VALUES ('737', null, '35.165.162.112', '美国', '西部', '俄勒冈州', '', '', '1', '1524447748');
INSERT INTO `bl_visited` VALUES ('738', null, '223.205.159.53', '泰国', '', '', '', '', '1', '1524449460');
INSERT INTO `bl_visited` VALUES ('739', null, '106.11.242.233', '中国', '华东', '上海市', '上海市', '', '1', '1524479731');
INSERT INTO `bl_visited` VALUES ('740', null, '31.184.193.154', '俄罗斯', '', '', '', '', '34', '1527198208');
INSERT INTO `bl_visited` VALUES ('741', null, '124.200.102.166', '中国', '华北', '北京市', '北京市', '', '1', '1524531127');
INSERT INTO `bl_visited` VALUES ('742', null, '84.24.79.48', '荷兰', '', '', '', '', '1', '1524558750');
INSERT INTO `bl_visited` VALUES ('743', null, '45.115.236.2', '香港', '', '香港特别行政区', '', '', '1', '1524562536');
INSERT INTO `bl_visited` VALUES ('744', null, '104.192.74.37', '美国', '东部', '伊利诺伊州', '', '', '2', '1524563948');
INSERT INTO `bl_visited` VALUES ('745', null, '106.11.226.202', '中国', '华东', '上海市', '上海市', '', '1', '1524566311');
INSERT INTO `bl_visited` VALUES ('746', null, '81.47.134.28', '西班牙', '', '', '', '', '1', '1524572836');
INSERT INTO `bl_visited` VALUES ('747', null, '93.100.233.74', '俄罗斯', '', '', '', '', '2', '1524594561');
INSERT INTO `bl_visited` VALUES ('748', null, '196.52.43.121', '荷兰', '', '', '', '', '1', '1524601843');
INSERT INTO `bl_visited` VALUES ('749', null, '106.11.225.185', '中国', '华东', '上海市', '上海市', '', '1', '1524603106');
INSERT INTO `bl_visited` VALUES ('750', null, '82.159.245.93', '西班牙', '', '', '', '', '1', '1524603817');
INSERT INTO `bl_visited` VALUES ('751', null, '66.175.215.173', '美国', '东部', '新泽西州', '', '', '1', '1524605407');
INSERT INTO `bl_visited` VALUES ('752', null, '114.33.161.62', '台湾', '', '台湾省', '', '', '1', '1524613791');
INSERT INTO `bl_visited` VALUES ('753', null, '85.112.29.230', '西班牙', '', '', '', '', '1', '1524626742');
INSERT INTO `bl_visited` VALUES ('754', null, '205.209.143.194', '美国', '西部', '加利福尼亚州', '', '', '1', '1524642511');
INSERT INTO `bl_visited` VALUES ('755', null, '107.170.238.228', '美国', '西部', '加利福尼亚州', '', '', '1', '1524652834');
INSERT INTO `bl_visited` VALUES ('756', null, '106.11.226.33', '中国', '华东', '上海市', '上海市', '', '1', '1524659487');
INSERT INTO `bl_visited` VALUES ('757', null, '47.52.100.119', '香港', '', '香港特别行政区', '', '', '2', '1524665717');
INSERT INTO `bl_visited` VALUES ('758', null, '165.227.236.95', '英国', '', '', '', '', '1', '1524666803');
INSERT INTO `bl_visited` VALUES ('759', null, '141.212.122.128', '美国', '东部', '密歇根州', '', '', '1', '1524676875');
INSERT INTO `bl_visited` VALUES ('760', null, '106.11.242.198', '中国', '华东', '上海市', '上海市', '', '1', '1524688271');
INSERT INTO `bl_visited` VALUES ('761', null, '111.231.74.70', '中国', '华东', '上海市', '上海市', '', '1', '1524743233');
INSERT INTO `bl_visited` VALUES ('762', null, '152.66.246.234', '匈牙利', '', '', '', '', '1', '1524747088');
INSERT INTO `bl_visited` VALUES ('763', null, '106.11.227.110', '中国', '华东', '上海市', '上海市', '', '1', '1524748412');
INSERT INTO `bl_visited` VALUES ('764', null, '189.33.91.15', '巴西', '', '', '', '', '1', '1524764649');
INSERT INTO `bl_visited` VALUES ('765', null, '52.55.177.162', '美国', '东部', '弗吉尼亚州', '', '', '1', '1524787417');
INSERT INTO `bl_visited` VALUES ('766', null, '107.170.226.9', '美国', '西部', '加利福尼亚州', '', '', '1', '1524787658');
INSERT INTO `bl_visited` VALUES ('767', null, '207.46.13.94', '美国', '', '', '', '', '1', '1524796152');
INSERT INTO `bl_visited` VALUES ('768', null, '106.11.227.187', '中国', '华东', '上海市', '上海市', '', '1', '1524833913');
INSERT INTO `bl_visited` VALUES ('769', null, '158.85.81.120', '加拿大', '', '', '', '', '1', '1524851234');
INSERT INTO `bl_visited` VALUES ('770', null, '207.46.13.130', '美国', '', '', '', '', '1', '1524858996');
INSERT INTO `bl_visited` VALUES ('771', null, '106.11.225.5', '中国', '华东', '上海市', '上海市', '', '1', '1524859233');
INSERT INTO `bl_visited` VALUES ('772', null, '212.129.17.23', '法国', '', '', '', '', '1', '1524878538');
INSERT INTO `bl_visited` VALUES ('773', null, '35.193.9.56', '美国', '', '', '', '', '1', '1524886527');
INSERT INTO `bl_visited` VALUES ('774', null, '106.11.225.147', '中国', '华东', '上海市', '上海市', '', '1', '1524920133');
INSERT INTO `bl_visited` VALUES ('775', null, '104.192.74.35', '美国', '东部', '伊利诺伊州', '', '', '2', '1524921622');
INSERT INTO `bl_visited` VALUES ('776', null, '47.52.210.105', '香港', '', '香港特别行政区', '', '', '4', '1525808540');
INSERT INTO `bl_visited` VALUES ('777', null, '212.129.50.159', '法国', '', '', '', '', '1', '1524954834');
INSERT INTO `bl_visited` VALUES ('778', null, '106.15.186.63', '中国', '华东', '上海市', '上海市', '', '1', '1524973162');
INSERT INTO `bl_visited` VALUES ('779', null, '23.247.67.130', '美国', '西部', '加利福尼亚州', '', '', '1', '1524995463');
INSERT INTO `bl_visited` VALUES ('780', null, '107.170.238.152', '美国', '西部', '加利福尼亚州', '', '', '1', '1524998735');
INSERT INTO `bl_visited` VALUES ('781', null, '207.46.13.49', '美国', '', '', '', '', '1', '1525003545');
INSERT INTO `bl_visited` VALUES ('782', null, '106.11.226.235', '中国', '华东', '上海市', '上海市', '', '1', '1525031213');
INSERT INTO `bl_visited` VALUES ('783', null, '207.46.13.132', '美国', '', '', '', '', '1', '1525057316');
INSERT INTO `bl_visited` VALUES ('784', null, '223.93.147.165', '中国', '华东', '浙江省', '杭州市', '', '1', '1525066886');
INSERT INTO `bl_visited` VALUES ('785', null, '104.192.74.38', '美国', '东部', '伊利诺伊州', '', '', '2', '1525081269');
INSERT INTO `bl_visited` VALUES ('786', null, '106.11.227.171', '中国', '华东', '上海市', '上海市', '', '1', '1525093134');
INSERT INTO `bl_visited` VALUES ('787', null, '157.55.39.83', '美国', '', '', '', '', '1', '1525110769');
INSERT INTO `bl_visited` VALUES ('788', null, '106.11.226.37', '中国', '华东', '上海市', '上海市', '', '1', '1525117439');
INSERT INTO `bl_visited` VALUES ('789', null, '216.145.5.42', '美国', '西部', '华盛顿州', '', '', '1', '1525121359');
INSERT INTO `bl_visited` VALUES ('790', null, '107.170.194.234', '美国', '西部', '加利福尼亚州', '', '', '1', '1525144793');
INSERT INTO `bl_visited` VALUES ('791', null, '163.172.4.153', '法国', '', '', '', '', '4', '1526229445');
INSERT INTO `bl_visited` VALUES ('792', null, '207.46.13.75', '美国', '', '', '', '', '3', '1525240277');
INSERT INTO `bl_visited` VALUES ('793', null, '51.38.12.21', '英国', '', '', '', '', '1', '1525161909');
INSERT INTO `bl_visited` VALUES ('794', null, '107.170.193.25', '美国', '西部', '加利福尼亚州', '', '', '2', '1525582582');
INSERT INTO `bl_visited` VALUES ('795', null, '39.105.64.146', '中国', '华北', '北京市', '北京市', '', '2', '1525173238');
INSERT INTO `bl_visited` VALUES ('796', null, '141.212.122.96', '美国', '东部', '密歇根州', '', '', '2', '1525837780');
INSERT INTO `bl_visited` VALUES ('797', null, '106.11.242.5', '中国', '华东', '上海市', '上海市', '', '1', '1525180459');
INSERT INTO `bl_visited` VALUES ('798', null, '169.53.184.5', '加拿大', '', '', '', '', '1', '1525192237');
INSERT INTO `bl_visited` VALUES ('799', null, '71.6.146.130', '美国', '西部', '加利福尼亚州', '', '', '1', '1525199005');
INSERT INTO `bl_visited` VALUES ('800', null, '106.11.225.168', '中国', '华东', '上海市', '上海市', '', '1', '1525203094');
INSERT INTO `bl_visited` VALUES ('801', null, '196.52.43.115', '荷兰', '', '', '', '', '1', '1525220821');
INSERT INTO `bl_visited` VALUES ('802', null, '211.23.154.138', '台湾', '', '台湾省', '', '', '2', '1525762892');
INSERT INTO `bl_visited` VALUES ('803', null, '106.11.227.207', '中国', '华东', '上海市', '上海市', '', '1', '1525266211');
INSERT INTO `bl_visited` VALUES ('804', null, '125.88.192.52', '中国', '华南', '广东省', '广州市', '', '1', '1525273443');
INSERT INTO `bl_visited` VALUES ('805', null, '125.88.192.28', '中国', '华南', '广东省', '广州市', '', '1', '1525273459');
INSERT INTO `bl_visited` VALUES ('806', null, '119.97.180.158', '中国', '华中', '湖北省', '武汉市', '', '2', '1525410875');
INSERT INTO `bl_visited` VALUES ('807', null, '106.11.226.78', '中国', '华东', '上海市', '上海市', '', '1', '1525289784');
INSERT INTO `bl_visited` VALUES ('808', null, '139.162.112.198', '日本', '', '', '', '', '1', '1525306551');
INSERT INTO `bl_visited` VALUES ('809', null, '92.34.11.220', '瑞典', '', '', '', '', '1', '1525310880');
INSERT INTO `bl_visited` VALUES ('810', null, '203.208.60.158', '台湾', '', '台湾省', '', '', '1', '1525347071');
INSERT INTO `bl_visited` VALUES ('811', null, '106.11.225.94', '中国', '华东', '上海市', '上海市', '', '1', '1525362663');
INSERT INTO `bl_visited` VALUES ('812', null, '106.11.226.154', '中国', '华东', '上海市', '上海市', '', '1', '1525375085');
INSERT INTO `bl_visited` VALUES ('813', null, '191.190.29.93', '巴西', '', '', '', '', '1', '1525385093');
INSERT INTO `bl_visited` VALUES ('814', null, '61.78.69.117', '韩国', '', '', '', '', '4', '1527213013');
INSERT INTO `bl_visited` VALUES ('815', null, '159.203.175.127', '美国', '东部', '纽约州', '', '', '1', '1525405414');
INSERT INTO `bl_visited` VALUES ('816', null, '204.16.194.17', '美国', '西部', '加利福尼亚州', '', '', '2', '1525416202');
INSERT INTO `bl_visited` VALUES ('817', null, '42.51.196.55', '中国', '华中', '河南省', '洛阳市', '', '1', '1525419840');
INSERT INTO `bl_visited` VALUES ('818', null, '106.11.226.155', '中国', '华东', '上海市', '上海市', '', '1', '1525448300');
INSERT INTO `bl_visited` VALUES ('819', null, '168.1.128.62', '澳大利亚', '', '', '', '', '1', '1525459985');
INSERT INTO `bl_visited` VALUES ('820', null, '106.11.242.209', '中国', '华东', '上海市', '上海市', '', '1', '1525461210');
INSERT INTO `bl_visited` VALUES ('821', null, '82.221.105.6', '冰岛', '', '', '', '', '1', '1525513064');
INSERT INTO `bl_visited` VALUES ('822', null, '107.170.192.210', '美国', '西部', '加利福尼亚州', '', '', '1', '1525517347');
INSERT INTO `bl_visited` VALUES ('823', null, '106.11.227.140', '中国', '华东', '上海市', '上海市', '', '1', '1525534328');
INSERT INTO `bl_visited` VALUES ('824', null, '88.189.106.154', '法国', '', '', '', '', '1', '1525537088');
INSERT INTO `bl_visited` VALUES ('825', null, '119.236.211.104', '香港', '', '香港特别行政区', '', '', '1', '1525538453');
INSERT INTO `bl_visited` VALUES ('826', null, '106.11.242.191', '中国', '华东', '上海市', '上海市', '', '1', '1525547424');
INSERT INTO `bl_visited` VALUES ('827', null, '95.50.199.97', '波兰', '', '', '', '', '1', '1525551053');
INSERT INTO `bl_visited` VALUES ('828', null, '89.235.57.248', '捷克', '', '', '', '', '3', '1526218054');
INSERT INTO `bl_visited` VALUES ('829', null, '60.191.0.242', '中国', '华东', '浙江省', '杭州市', '', '1', '1525597583');
INSERT INTO `bl_visited` VALUES ('830', null, '106.11.225.170', '中国', '华东', '上海市', '上海市', '', '1', '1525620291');
INSERT INTO `bl_visited` VALUES ('831', null, '139.162.106.181', '日本', '', '', '', '', '2', '1526441445');
INSERT INTO `bl_visited` VALUES ('832', null, '106.11.225.113', '中国', '华东', '上海市', '上海市', '', '1', '1525633599');
INSERT INTO `bl_visited` VALUES ('833', null, '61.151.178.180', '中国', '华东', '上海市', '上海市', '', '1', '1525701840');
INSERT INTO `bl_visited` VALUES ('834', null, '101.226.225.84', '中国', '华东', '上海市', '上海市', '', '1', '1525701841');
INSERT INTO `bl_visited` VALUES ('835', null, '101.226.225.86', '中国', '华东', '上海市', '上海市', '', '1', '1525701845');
INSERT INTO `bl_visited` VALUES ('836', null, '14.116.142.64', '中国', '华南', '广东省', '深圳市', '', '1', '1525701857');
INSERT INTO `bl_visited` VALUES ('837', null, '223.104.212.54', '中国', '华东', '上海市', '上海市', '', '6', '1525702383');
INSERT INTO `bl_visited` VALUES ('838', null, '61.151.179.27', '中国', '华东', '上海市', '上海市', '', '1', '1525702232');
INSERT INTO `bl_visited` VALUES ('839', null, '104.192.74.30', '美国', '东部', '伊利诺伊州', '', '', '2', '1525702385');
INSERT INTO `bl_visited` VALUES ('840', null, '101.227.131.207', '中国', '华东', '上海市', '上海市', '', '1', '1525702443');
INSERT INTO `bl_visited` VALUES ('841', null, '106.11.223.21', '中国', '华北', '河北省', '张家口市', '', '1', '1525704081');
INSERT INTO `bl_visited` VALUES ('842', null, '106.11.222.209', '中国', '华北', '河北省', '张家口市', '', '1', '1525704092');
INSERT INTO `bl_visited` VALUES ('843', null, '212.83.130.27', '法国', '', '', '', '', '2', '1525725038');
INSERT INTO `bl_visited` VALUES ('844', null, '106.11.222.140', '中国', '华北', '河北省', '张家口市', '', '1', '1525718677');
INSERT INTO `bl_visited` VALUES ('845', null, '106.11.222.200', '中国', '华北', '河北省', '张家口市', '', '1', '1525718688');
INSERT INTO `bl_visited` VALUES ('846', null, '106.11.242.174', '中国', '华东', '上海市', '上海市', '', '1', '1525720956');
INSERT INTO `bl_visited` VALUES ('847', null, '187.149.23.237', '墨西哥', '', '', '', '', '2', '1525735530');
INSERT INTO `bl_visited` VALUES ('848', null, '35.197.107.200', '美国', '', '', '', '', '3', '1526974063');
INSERT INTO `bl_visited` VALUES ('849', null, '5.189.175.120', '德国', '', '', '', '', '1', '1525773685');
INSERT INTO `bl_visited` VALUES ('850', null, '185.10.68.236', '罗马尼亚', '', '', '', '', '1', '1525784564');
INSERT INTO `bl_visited` VALUES ('851', null, '187.207.11.11', '墨西哥', '', '', '', '', '2', '1525788283');
INSERT INTO `bl_visited` VALUES ('852', null, '106.11.225.251', '中国', '华东', '上海市', '上海市', '', '1', '1525792697');
INSERT INTO `bl_visited` VALUES ('853', null, '52.91.224.1', '美国', '东部', '弗吉尼亚州', '', '', '1', '1525801988');
INSERT INTO `bl_visited` VALUES ('854', null, '106.11.227.98', '中国', '华东', '上海市', '上海市', '', '1', '1525808548');
INSERT INTO `bl_visited` VALUES ('855', null, '80.82.70.118', '荷兰', '', '', '', '', '2', '1526308051');
INSERT INTO `bl_visited` VALUES ('856', null, '207.46.13.74', '美国', '', '', '', '', '2', '1526235518');
INSERT INTO `bl_visited` VALUES ('857', null, '187.56.148.68', '巴西', '', '', '', '', '1', '1525817777');
INSERT INTO `bl_visited` VALUES ('858', null, '85.103.199.81', '土耳其', '', '', '', '', '1', '1525818757');
INSERT INTO `bl_visited` VALUES ('859', null, '47.52.19.102', '香港', '', '香港特别行政区', '', '', '2', '1525820360');
INSERT INTO `bl_visited` VALUES ('860', null, '187.182.182.157', '巴西', '', '', '', '', '1', '1525820564');
INSERT INTO `bl_visited` VALUES ('861', null, '41.190.69.98', '加纳', '', '', '', '', '1', '1525821953');
INSERT INTO `bl_visited` VALUES ('862', null, '188.130.250.223', '俄罗斯', '', '', '', '', '1', '1525822375');
INSERT INTO `bl_visited` VALUES ('863', null, '123.200.22.30', '孟加拉', '', '', '', '', '1', '1525822804');
INSERT INTO `bl_visited` VALUES ('864', null, '78.182.122.244', '土耳其', '', '', '', '', '1', '1525823790');
INSERT INTO `bl_visited` VALUES ('865', null, '190.42.120.192', '秘鲁', '', '', '', '', '1', '1525823821');
INSERT INTO `bl_visited` VALUES ('866', null, '191.241.51.50', '巴西', '', '', '', '', '1', '1525825895');
INSERT INTO `bl_visited` VALUES ('867', null, '189.47.37.163', '巴西', '', '', '', '', '1', '1525830042');
INSERT INTO `bl_visited` VALUES ('868', null, '201.68.242.148', '巴西', '', '', '', '', '1', '1525833671');
INSERT INTO `bl_visited` VALUES ('869', null, '190.17.219.66', '阿根廷', '', '', '', '', '1', '1525835714');
INSERT INTO `bl_visited` VALUES ('870', null, '88.251.250.143', '土耳其', '', '', '', '', '1', '1525835873');
INSERT INTO `bl_visited` VALUES ('871', null, '200.24.151.190', '厄瓜多尔', '', '', '', '', '1', '1525836709');
INSERT INTO `bl_visited` VALUES ('872', null, '201.110.106.109', '墨西哥', '', '', '', '', '1', '1525838977');
INSERT INTO `bl_visited` VALUES ('873', null, '175.184.235.90', '印度尼西亚', '', '', '', '', '1', '1525840621');
INSERT INTO `bl_visited` VALUES ('874', null, '189.175.8.238', '墨西哥', '', '', '', '', '1', '1525840805');
INSERT INTO `bl_visited` VALUES ('875', null, '189.175.8.238', '墨西哥', '', '', '', '', '1', '1525840805');
INSERT INTO `bl_visited` VALUES ('876', null, '47.100.38.9', '中国', '华东', '上海市', '上海市', '', '1', '1525841018');
INSERT INTO `bl_visited` VALUES ('877', null, '47.98.96.116', '中国', '华东', '浙江省', '杭州市', '', '1', '1525841150');
INSERT INTO `bl_visited` VALUES ('878', null, '177.75.191.22', '巴西', '', '', '', '', '1', '1525841418');
INSERT INTO `bl_visited` VALUES ('879', null, '201.127.214.203', '墨西哥', '', '', '', '', '2', '1525841438');
INSERT INTO `bl_visited` VALUES ('880', null, '201.127.214.203', '墨西哥', '', '', '', '', '1', '1525841438');
INSERT INTO `bl_visited` VALUES ('881', null, '47.92.115.203', '中国', '华北', '河北省', '张家口市', '', '1', '1525841484');
INSERT INTO `bl_visited` VALUES ('882', null, '187.138.237.57', '墨西哥', '', '', '', '', '1', '1525841660');
INSERT INTO `bl_visited` VALUES ('883', null, '187.138.237.57', '墨西哥', '', '', '', '', '1', '1525841660');
INSERT INTO `bl_visited` VALUES ('884', null, '202.148.25.22', '印度尼西亚', '', '', '', '', '1', '1525841744');
INSERT INTO `bl_visited` VALUES ('885', null, '36.89.113.251', '印度尼西亚', '', '', '', '', '1', '1525842469');
INSERT INTO `bl_visited` VALUES ('886', null, '107.170.234.140', '美国', '西部', '加利福尼亚州', '', '', '1', '1525851525');
INSERT INTO `bl_visited` VALUES ('887', null, '103.194.90.28', '印度', '', '', '', '', '1', '1525859737');
INSERT INTO `bl_visited` VALUES ('888', null, '189.236.99.178', '墨西哥', '', '', '', '', '1', '1525860943');
INSERT INTO `bl_visited` VALUES ('889', null, '107.170.236.98', '美国', '西部', '加利福尼亚州', '', '', '1', '1525862526');
INSERT INTO `bl_visited` VALUES ('890', null, '85.98.208.252', '土耳其', '', '', '', '', '1', '1525863251');
INSERT INTO `bl_visited` VALUES ('891', null, '189.250.106.92', '墨西哥', '', '', '', '', '1', '1525864161');
INSERT INTO `bl_visited` VALUES ('892', null, '189.250.106.92', '墨西哥', '', '', '', '', '1', '1525864161');
INSERT INTO `bl_visited` VALUES ('893', null, '189.145.134.49', '墨西哥', '', '', '', '', '1', '1525873265');
INSERT INTO `bl_visited` VALUES ('894', null, '80.94.118.52', '意大利', '', '', '', '', '1', '1525874261');
INSERT INTO `bl_visited` VALUES ('895', null, '189.159.146.247', '墨西哥', '', '', '', '', '1', '1525880724');
INSERT INTO `bl_visited` VALUES ('896', null, '114.35.92.17', '台湾', '', '台湾省', '', '', '1', '1525880888');
INSERT INTO `bl_visited` VALUES ('897', null, '106.11.227.28', '中国', '华东', '上海市', '上海市', '', '1', '1525881064');
INSERT INTO `bl_visited` VALUES ('898', null, '201.103.42.67', '墨西哥', '', '', '', '', '1', '1525881113');
INSERT INTO `bl_visited` VALUES ('899', null, '47.93.180.168', '中国', '华北', '北京市', '北京市', '', '3', '1526664962');
INSERT INTO `bl_visited` VALUES ('900', null, '189.159.145.49', '墨西哥', '', '', '', '', '1', '1525882562');
INSERT INTO `bl_visited` VALUES ('901', null, '40.77.167.192', '美国', '', '', '', '', '1', '1525892369');
INSERT INTO `bl_visited` VALUES ('902', null, '106.11.227.166', '中国', '华东', '上海市', '上海市', '', '1', '1525895168');
INSERT INTO `bl_visited` VALUES ('903', null, '201.110.140.114', '墨西哥', '', '', '', '', '1', '1525899906');
INSERT INTO `bl_visited` VALUES ('904', null, '195.46.106.135', '俄罗斯', '', '', '', '', '1', '1525907516');
INSERT INTO `bl_visited` VALUES ('905', null, '36.67.235.121', '印度尼西亚', '', '', '', '', '1', '1525908474');
INSERT INTO `bl_visited` VALUES ('906', null, '191.205.99.7', '巴西', '', '', '', '', '1', '1525910606');
INSERT INTO `bl_visited` VALUES ('907', null, '143.0.231.4', '巴西', '', '', '', '', '1', '1525912023');
INSERT INTO `bl_visited` VALUES ('908', null, '189.146.161.68', '墨西哥', '', '', '', '', '1', '1525912564');
INSERT INTO `bl_visited` VALUES ('909', null, '201.103.6.57', '墨西哥', '', '', '', '', '1', '1525914186');
INSERT INTO `bl_visited` VALUES ('910', null, '187.207.118.176', '墨西哥', '', '', '', '', '1', '1525914445');
INSERT INTO `bl_visited` VALUES ('911', null, '189.159.139.172', '墨西哥', '', '', '', '', '1', '1525925564');
INSERT INTO `bl_visited` VALUES ('912', null, '183.198.3.40', '中国', '华北', '河北省', '石家庄市', '', '1', '1525926048');
INSERT INTO `bl_visited` VALUES ('913', null, '118.31.15.238', '中国', '华东', '浙江省', '杭州市', '', '1', '1525927343');
INSERT INTO `bl_visited` VALUES ('914', null, '106.14.204.78', '中国', '华东', '上海市', '上海市', '', '1', '1525927719');
INSERT INTO `bl_visited` VALUES ('915', null, '49.156.39.254', '柬埔寨', '', '', '', '', '1', '1525928771');
INSERT INTO `bl_visited` VALUES ('916', null, '189.244.37.136', '墨西哥', '', '', '', '', '1', '1525929338');
INSERT INTO `bl_visited` VALUES ('917', null, '189.174.135.92', '墨西哥', '', '', '', '', '1', '1525931771');
INSERT INTO `bl_visited` VALUES ('918', null, '185.61.246.221', '俄罗斯', '', '', '', '', '1', '1525932084');
INSERT INTO `bl_visited` VALUES ('919', null, '189.79.216.22', '巴西', '', '', '', '', '1', '1525936512');
INSERT INTO `bl_visited` VALUES ('920', null, '189.163.84.222', '墨西哥', '', '', '', '', '1', '1525937687');
INSERT INTO `bl_visited` VALUES ('921', null, '187.207.88.153', '墨西哥', '', '', '', '', '1', '1525938104');
INSERT INTO `bl_visited` VALUES ('922', null, '212.154.118.119', '土耳其', '', '', '', '', '1', '1525939516');
INSERT INTO `bl_visited` VALUES ('923', null, '187.192.164.41', '墨西哥', '', '', '', '', '1', '1525940263');
INSERT INTO `bl_visited` VALUES ('924', null, '187.192.164.41', '墨西哥', '', '', '', '', '1', '1525940263');
INSERT INTO `bl_visited` VALUES ('925', null, '80.78.70.144', '阿尔巴尼亚', '', '', '', '', '1', '1525941710');
INSERT INTO `bl_visited` VALUES ('926', null, '179.100.3.139', '巴西', '', '', '', '', '1', '1525942238');
INSERT INTO `bl_visited` VALUES ('927', null, '40.77.167.79', '美国', '', '', '', '', '1', '1525945944');
INSERT INTO `bl_visited` VALUES ('928', null, '213.108.162.48', '捷克', '', '', '', '', '1', '1525959511');
INSERT INTO `bl_visited` VALUES ('929', null, '101.132.159.51', '中国', '华东', '上海市', '上海市', '', '1', '1525959669');
INSERT INTO `bl_visited` VALUES ('930', null, '189.141.239.90', '墨西哥', '', '', '', '', '1', '1525959929');
INSERT INTO `bl_visited` VALUES ('931', null, '177.9.255.125', '巴西', '', '', '', '', '1', '1525962322');
INSERT INTO `bl_visited` VALUES ('932', null, '190.11.195.29', '阿根廷', '', '', '', '', '1', '1525962328');
INSERT INTO `bl_visited` VALUES ('933', null, '189.136.215.243', '墨西哥', '', '', '', '', '1', '1525963260');
INSERT INTO `bl_visited` VALUES ('934', null, '189.131.212.162', '墨西哥', '', '', '', '', '2', '1525963898');
INSERT INTO `bl_visited` VALUES ('935', null, '187.155.135.38', '墨西哥', '', '', '', '', '1', '1525963954');
INSERT INTO `bl_visited` VALUES ('936', null, '179.113.83.132', '巴西', '', '', '', '', '1', '1525964864');
INSERT INTO `bl_visited` VALUES ('937', null, '189.235.110.215', '墨西哥', '', '', '', '', '2', '1525967264');
INSERT INTO `bl_visited` VALUES ('938', null, '106.11.225.228', '中国', '华东', '上海市', '上海市', '', '1', '1525968122');
INSERT INTO `bl_visited` VALUES ('939', null, '189.150.244.165', '墨西哥', '', '', '', '', '1', '1525968312');
INSERT INTO `bl_visited` VALUES ('940', null, '189.146.163.3', '墨西哥', '', '', '', '', '1', '1525968667');
INSERT INTO `bl_visited` VALUES ('941', null, '189.231.229.211', '墨西哥', '', '', '', '', '1', '1525969245');
INSERT INTO `bl_visited` VALUES ('942', null, '189.239.138.19', '墨西哥', '', '', '', '', '1', '1525969490');
INSERT INTO `bl_visited` VALUES ('943', null, '189.145.137.153', '墨西哥', '', '', '', '', '1', '1525969957');
INSERT INTO `bl_visited` VALUES ('944', null, '187.207.11.154', '墨西哥', '', '', '', '', '1', '1525970146');
INSERT INTO `bl_visited` VALUES ('945', null, '190.94.141.44', '厄瓜多尔', '', '', '', '', '1', '1525970303');
INSERT INTO `bl_visited` VALUES ('946', null, '187.207.26.83', '墨西哥', '', '', '', '', '1', '1525971029');
INSERT INTO `bl_visited` VALUES ('947', null, '197.221.240.6', '津巴布韦', '', '', '', '', '1', '1525971982');
INSERT INTO `bl_visited` VALUES ('948', null, '187.207.46.122', '墨西哥', '', '', '', '', '1', '1525973298');
INSERT INTO `bl_visited` VALUES ('949', null, '189.144.8.1', '墨西哥', '', '', '', '', '1', '1525974040');
INSERT INTO `bl_visited` VALUES ('950', null, '201.127.215.140', '墨西哥', '', '', '', '', '1', '1525974537');
INSERT INTO `bl_visited` VALUES ('951', null, '187.202.140.177', '墨西哥', '', '', '', '', '1', '1525974618');
INSERT INTO `bl_visited` VALUES ('952', null, '202.9.122.16', '印度', '', '', '', '', '1', '1525974757');
INSERT INTO `bl_visited` VALUES ('953', null, '187.145.98.181', '墨西哥', '', '', '', '', '1', '1525974994');
INSERT INTO `bl_visited` VALUES ('954', null, '187.136.246.74', '墨西哥', '', '', '', '', '1', '1525976410');
INSERT INTO `bl_visited` VALUES ('955', null, '187.192.84.218', '墨西哥', '', '', '', '', '1', '1525976504');
INSERT INTO `bl_visited` VALUES ('956', null, '186.248.101.162', '巴西', '', '', '', '', '1', '1525978673');
INSERT INTO `bl_visited` VALUES ('957', null, '167.250.160.236', '巴西', '', '', '', '', '1', '1525981490');
INSERT INTO `bl_visited` VALUES ('958', null, '36.67.109.227', '印度尼西亚', '', '', '', '', '1', '1525987145');
INSERT INTO `bl_visited` VALUES ('959', null, '125.24.129.166', '泰国', '', '', '', '', '1', '1525990550');
INSERT INTO `bl_visited` VALUES ('960', null, '106.11.242.156', '中国', '华东', '上海市', '上海市', '', '1', '1525991010');
INSERT INTO `bl_visited` VALUES ('961', null, '207.46.13.101', '美国', '', '', '', '', '1', '1525991357');
INSERT INTO `bl_visited` VALUES ('962', null, '204.13.36.143', '美国', '西部', '路易斯安那州', '', '', '1', '1525997331');
INSERT INTO `bl_visited` VALUES ('963', null, '170.0.69.50', '巴西', '', '', '', '', '1', '1525997443');
INSERT INTO `bl_visited` VALUES ('964', null, '177.37.165.152', '巴西', '', '', '', '', '1', '1526001481');
INSERT INTO `bl_visited` VALUES ('965', null, '189.175.194.227', '墨西哥', '', '', '', '', '1', '1526005668');
INSERT INTO `bl_visited` VALUES ('966', null, '189.175.194.227', '墨西哥', '', '', '', '', '1', '1526005668');
INSERT INTO `bl_visited` VALUES ('967', null, '177.103.155.253', '巴西', '', '', '', '', '1', '1526007237');
INSERT INTO `bl_visited` VALUES ('968', null, '177.103.155.253', '巴西', '', '', '', '', '1', '1526007237');
INSERT INTO `bl_visited` VALUES ('969', null, '187.175.44.128', '墨西哥', '', '', '', '', '1', '1526012183');
INSERT INTO `bl_visited` VALUES ('970', null, '101.132.177.30', '中国', '华东', '上海市', '上海市', '', '2', '1526182954');
INSERT INTO `bl_visited` VALUES ('971', null, '47.96.12.13', '中国', '华东', '浙江省', '杭州市', '', '1', '1526013347');
INSERT INTO `bl_visited` VALUES ('972', null, '13.56.232.243', '美国', '西部', '加利福尼亚州', '', '', '5', '1527122110');
INSERT INTO `bl_visited` VALUES ('973', null, '93.150.162.45', '意大利', '', '', '', '', '1', '1526013507');
INSERT INTO `bl_visited` VALUES ('974', null, '200.107.96.12', '阿根廷', '', '', '', '', '1', '1526015328');
INSERT INTO `bl_visited` VALUES ('975', null, '177.189.110.111', '巴西', '', '', '', '', '1', '1526016224');
INSERT INTO `bl_visited` VALUES ('976', null, '189.130.171.54', '墨西哥', '', '', '', '', '1', '1526022681');
INSERT INTO `bl_visited` VALUES ('977', null, '58.11.252.74', '泰国', '', '', '', '', '1', '1526025093');
INSERT INTO `bl_visited` VALUES ('978', null, '84.106.87.145', '荷兰', '', '', '', '', '1', '1526026633');
INSERT INTO `bl_visited` VALUES ('979', null, '178.93.16.115', '乌克兰', '', '', '', '', '1', '1526032898');
INSERT INTO `bl_visited` VALUES ('980', null, '189.131.218.109', '墨西哥', '', '', '', '', '1', '1526034324');
INSERT INTO `bl_visited` VALUES ('981', null, '41.72.214.130', '肯尼亚', '', '', '', '', '1', '1526037336');
INSERT INTO `bl_visited` VALUES ('982', null, '176.217.85.83', '土耳其', '', '', '', '', '1', '1526037615');
INSERT INTO `bl_visited` VALUES ('983', null, '114.141.93.206', '印度尼西亚', '', '', '', '', '1', '1526039263');
INSERT INTO `bl_visited` VALUES ('984', null, '187.192.128.64', '墨西哥', '', '', '', '', '1', '1526039419');
INSERT INTO `bl_visited` VALUES ('985', null, '45.115.176.67', '印度', '', '', '', '', '1', '1526040550');
INSERT INTO `bl_visited` VALUES ('986', null, '189.231.3.85', '墨西哥', '', '', '', '', '1', '1526044897');
INSERT INTO `bl_visited` VALUES ('987', null, '92.38.46.53', '俄罗斯', '', '', '', '', '1', '1526045068');
INSERT INTO `bl_visited` VALUES ('988', null, '189.78.149.11', '巴西', '', '', '', '', '2', '1526048616');
INSERT INTO `bl_visited` VALUES ('989', null, '187.149.62.199', '墨西哥', '', '', '', '', '2', '1526049921');
INSERT INTO `bl_visited` VALUES ('990', null, '201.114.159.64', '墨西哥', '', '', '', '', '2', '1526052387');
INSERT INTO `bl_visited` VALUES ('991', null, '187.207.129.150', '墨西哥', '', '', '', '', '1', '1526052780');
INSERT INTO `bl_visited` VALUES ('992', null, '189.152.27.236', '墨西哥', '', '', '', '', '1', '1526054032');
INSERT INTO `bl_visited` VALUES ('993', null, '189.166.57.238', '墨西哥', '', '', '', '', '1', '1526055030');
INSERT INTO `bl_visited` VALUES ('994', null, '212.90.8.191', '意大利', '', '', '', '', '1', '1526055200');
INSERT INTO `bl_visited` VALUES ('995', null, '189.236.140.189', '墨西哥', '', '', '', '', '1', '1526056381');
INSERT INTO `bl_visited` VALUES ('996', null, '189.153.7.161', '墨西哥', '', '', '', '', '1', '1526057560');
INSERT INTO `bl_visited` VALUES ('997', null, '197.245.245.152', '南非', '', '', '', '', '1', '1526058625');
INSERT INTO `bl_visited` VALUES ('998', null, '177.94.203.247', '巴西', '', '', '', '', '1', '1526058716');
INSERT INTO `bl_visited` VALUES ('999', null, '189.232.43.193', '墨西哥', '', '', '', '', '1', '1526061069');
INSERT INTO `bl_visited` VALUES ('1000', null, '179.113.35.157', '巴西', '', '', '', '', '1', '1526062484');
INSERT INTO `bl_visited` VALUES ('1001', null, '187.144.201.63', '墨西哥', '', '', '', '', '1', '1526064171');
INSERT INTO `bl_visited` VALUES ('1002', null, '187.207.29.11', '墨西哥', '', '', '', '', '1', '1526064386');
INSERT INTO `bl_visited` VALUES ('1003', null, '189.159.86.230', '墨西哥', '', '', '', '', '1', '1526065654');
INSERT INTO `bl_visited` VALUES ('1004', null, '191.255.95.156', '巴西', '', '', '', '', '1', '1526068412');
INSERT INTO `bl_visited` VALUES ('1005', null, '191.255.95.156', '巴西', '', '', '', '', '1', '1526068412');
INSERT INTO `bl_visited` VALUES ('1006', null, '201.67.63.206', '巴西', '', '', '', '', '1', '1526068762');
INSERT INTO `bl_visited` VALUES ('1007', null, '187.202.157.73', '墨西哥', '', '', '', '', '1', '1526068835');
INSERT INTO `bl_visited` VALUES ('1008', null, '189.68.206.16', '巴西', '', '', '', '', '1', '1526068910');
INSERT INTO `bl_visited` VALUES ('1009', null, '121.69.6.114', '中国', '华北', '北京市', '北京市', '', '3', '1526069639');
INSERT INTO `bl_visited` VALUES ('1010', null, '189.145.125.230', '墨西哥', '', '', '', '', '1', '1526070401');
INSERT INTO `bl_visited` VALUES ('1011', null, '106.11.242.33', '中国', '华东', '上海市', '上海市', '', '1', '1526070591');
INSERT INTO `bl_visited` VALUES ('1012', null, '170.244.33.36', '巴西', '', '', '', '', '1', '1526073551');
INSERT INTO `bl_visited` VALUES ('1013', null, '196.52.43.57', '荷兰', '', '', '', '', '1', '1526077041');
INSERT INTO `bl_visited` VALUES ('1014', null, '106.11.242.146', '中国', '华东', '上海市', '上海市', '', '1', '1526077398');
INSERT INTO `bl_visited` VALUES ('1015', null, '92.52.136.120', '乌克兰', '', '', '', '', '1', '1526077545');
INSERT INTO `bl_visited` VALUES ('1016', null, '177.68.191.123', '巴西', '', '', '', '', '1', '1526077581');
INSERT INTO `bl_visited` VALUES ('1017', null, '189.223.80.235', '墨西哥', '', '', '', '', '1', '1526077990');
INSERT INTO `bl_visited` VALUES ('1018', null, '189.232.105.175', '墨西哥', '', '', '', '', '1', '1526078934');
INSERT INTO `bl_visited` VALUES ('1019', null, '187.207.194.196', '墨西哥', '', '', '', '', '1', '1526079582');
INSERT INTO `bl_visited` VALUES ('1020', null, '187.207.35.43', '墨西哥', '', '', '', '', '1', '1526080330');
INSERT INTO `bl_visited` VALUES ('1021', null, '187.192.176.221', '墨西哥', '', '', '', '', '1', '1526080674');
INSERT INTO `bl_visited` VALUES ('1022', null, '178.255.172.122', '捷克', '', '', '', '', '1', '1526080869');
INSERT INTO `bl_visited` VALUES ('1023', null, '189.130.25.111', '墨西哥', '', '', '', '', '1', '1526081577');
INSERT INTO `bl_visited` VALUES ('1024', null, '177.190.195.62', '巴西', '', '', '', '', '1', '1526082721');
INSERT INTO `bl_visited` VALUES ('1025', null, '125.119.103.221', '中国', '华东', '浙江省', '杭州市', '', '1', '1526082819');
INSERT INTO `bl_visited` VALUES ('1026', null, '187.207.82.101', '墨西哥', '', '', '', '', '1', '1526084736');
INSERT INTO `bl_visited` VALUES ('1027', null, '190.94.148.237', '厄瓜多尔', '', '', '', '', '1', '1526085014');
INSERT INTO `bl_visited` VALUES ('1028', null, '187.144.223.46', '墨西哥', '', '', '', '', '1', '1526085074');
INSERT INTO `bl_visited` VALUES ('1029', null, '157.55.39.152', '美国', '', '', '', '', '1', '1526086488');
INSERT INTO `bl_visited` VALUES ('1030', null, '189.152.48.18', '墨西哥', '', '', '', '', '1', '1526087146');
INSERT INTO `bl_visited` VALUES ('1031', null, '187.202.220.253', '墨西哥', '', '', '', '', '1', '1526087403');
INSERT INTO `bl_visited` VALUES ('1032', null, '187.207.43.171', '墨西哥', '', '', '', '', '1', '1526087803');
INSERT INTO `bl_visited` VALUES ('1033', null, '189.152.32.231', '墨西哥', '', '', '', '', '1', '1526088094');
INSERT INTO `bl_visited` VALUES ('1034', null, '187.207.81.148', '墨西哥', '', '', '', '', '1', '1526088153');
INSERT INTO `bl_visited` VALUES ('1035', null, '201.92.234.201', '巴西', '', '', '', '', '1', '1526089102');
INSERT INTO `bl_visited` VALUES ('1036', null, '95.173.236.142', '土耳其', '', '', '', '', '1', '1526089390');
INSERT INTO `bl_visited` VALUES ('1037', null, '189.129.139.178', '墨西哥', '', '', '', '', '1', '1526093486');
INSERT INTO `bl_visited` VALUES ('1038', null, '201.137.253.235', '墨西哥', '', '', '', '', '1', '1526097289');
INSERT INTO `bl_visited` VALUES ('1039', null, '106.15.201.111', '中国', '华东', '上海市', '上海市', '', '1', '1526098635');
INSERT INTO `bl_visited` VALUES ('1040', null, '189.165.198.174', '墨西哥', '', '', '', '', '1', '1526100167');
INSERT INTO `bl_visited` VALUES ('1041', null, '95.51.119.19', '波兰', '', '', '', '', '1', '1526101908');
INSERT INTO `bl_visited` VALUES ('1042', null, '187.207.40.213', '墨西哥', '', '', '', '', '1', '1526102403');
INSERT INTO `bl_visited` VALUES ('1043', null, '187.250.60.96', '墨西哥', '', '', '', '', '1', '1526102480');
INSERT INTO `bl_visited` VALUES ('1044', null, '187.137.123.224', '墨西哥', '', '', '', '', '1', '1526103284');
INSERT INTO `bl_visited` VALUES ('1045', null, '189.159.21.72', '墨西哥', '', '', '', '', '1', '1526105526');
INSERT INTO `bl_visited` VALUES ('1046', null, '187.207.196.124', '墨西哥', '', '', '', '', '1', '1526105653');
INSERT INTO `bl_visited` VALUES ('1047', null, '201.152.77.21', '墨西哥', '', '', '', '', '1', '1526107354');
INSERT INTO `bl_visited` VALUES ('1048', null, '158.85.81.126', '加拿大', '', '', '', '', '1', '1526108842');
INSERT INTO `bl_visited` VALUES ('1049', null, '107.170.243.166', '美国', '西部', '加利福尼亚州', '', '', '1', '1526110585');
INSERT INTO `bl_visited` VALUES ('1050', null, '189.145.231.60', '墨西哥', '', '', '', '', '1', '1526111885');
INSERT INTO `bl_visited` VALUES ('1051', null, '189.159.106.36', '墨西哥', '', '', '', '', '1', '1526113542');
INSERT INTO `bl_visited` VALUES ('1052', null, '186.148.143.16', '阿根廷', '', '', '', '', '1', '1526116895');
INSERT INTO `bl_visited` VALUES ('1053', null, '94.101.249.67', '伊朗', '', '', '', '', '1', '1526123312');
INSERT INTO `bl_visited` VALUES ('1054', null, '187.214.11.127', '墨西哥', '', '', '', '', '1', '1526126072');
INSERT INTO `bl_visited` VALUES ('1055', null, '187.214.11.127', '墨西哥', '', '', '', '', '1', '1526126072');
INSERT INTO `bl_visited` VALUES ('1056', null, '94.232.33.98', '波兰', '', '', '', '', '1', '1526126545');
INSERT INTO `bl_visited` VALUES ('1057', null, '154.16.33.103', '美国', '东部', '伊利诺伊州', '', '', '1', '1526127340');
INSERT INTO `bl_visited` VALUES ('1058', null, '46.29.252.81', '瑞典', '', '', '', '', '1', '1526127344');
INSERT INTO `bl_visited` VALUES ('1059', null, '189.236.114.254', '墨西哥', '', '', '', '', '1', '1526127407');
INSERT INTO `bl_visited` VALUES ('1060', null, '191.100.10.1', '厄瓜多尔', '', '', '', '', '1', '1526130971');
INSERT INTO `bl_visited` VALUES ('1061', null, '191.17.58.47', '巴西', '', '', '', '', '1', '1526133964');
INSERT INTO `bl_visited` VALUES ('1062', null, '189.159.26.107', '墨西哥', '', '', '', '', '1', '1526136201');
INSERT INTO `bl_visited` VALUES ('1063', null, '187.136.228.34', '墨西哥', '', '', '', '', '1', '1526136520');
INSERT INTO `bl_visited` VALUES ('1064', null, '189.152.224.249', '墨西哥', '', '', '', '', '1', '1526137042');
INSERT INTO `bl_visited` VALUES ('1065', null, '207.46.13.163', '美国', '', '', '', '', '1', '1526139450');
INSERT INTO `bl_visited` VALUES ('1066', null, '187.151.215.198', '墨西哥', '', '', '', '', '1', '1526139923');
INSERT INTO `bl_visited` VALUES ('1067', null, '187.207.58.177', '墨西哥', '', '', '', '', '1', '1526142835');
INSERT INTO `bl_visited` VALUES ('1068', null, '201.146.243.214', '墨西哥', '', '', '', '', '1', '1526143087');
INSERT INTO `bl_visited` VALUES ('1069', null, '187.207.97.48', '墨西哥', '', '', '', '', '1', '1526144496');
INSERT INTO `bl_visited` VALUES ('1070', null, '187.155.128.207', '墨西哥', '', '', '', '', '1', '1526145301');
INSERT INTO `bl_visited` VALUES ('1071', null, '189.238.208.93', '墨西哥', '', '', '', '', '1', '1526145780');
INSERT INTO `bl_visited` VALUES ('1072', null, '189.153.179.13', '墨西哥', '', '', '', '', '1', '1526145972');
INSERT INTO `bl_visited` VALUES ('1073', null, '201.110.135.76', '墨西哥', '', '', '', '', '1', '1526146415');
INSERT INTO `bl_visited` VALUES ('1074', null, '189.231.120.103', '墨西哥', '', '', '', '', '1', '1526147101');
INSERT INTO `bl_visited` VALUES ('1075', null, '189.130.122.145', '墨西哥', '', '', '', '', '1', '1526147417');
INSERT INTO `bl_visited` VALUES ('1076', null, '189.236.60.141', '墨西哥', '', '', '', '', '1', '1526148772');
INSERT INTO `bl_visited` VALUES ('1077', null, '187.214.75.117', '墨西哥', '', '', '', '', '1', '1526149723');
INSERT INTO `bl_visited` VALUES ('1078', null, '187.144.228.44', '墨西哥', '', '', '', '', '1', '1526152404');
INSERT INTO `bl_visited` VALUES ('1079', null, '187.144.228.44', '墨西哥', '', '', '', '', '1', '1526152404');
INSERT INTO `bl_visited` VALUES ('1080', null, '191.100.9.212', '厄瓜多尔', '', '', '', '', '1', '1526152694');
INSERT INTO `bl_visited` VALUES ('1081', null, '189.163.85.31', '墨西哥', '', '', '', '', '1', '1526153594');
INSERT INTO `bl_visited` VALUES ('1082', null, '187.144.115.131', '墨西哥', '', '', '', '', '1', '1526156299');
INSERT INTO `bl_visited` VALUES ('1083', null, '201.103.78.241', '墨西哥', '', '', '', '', '1', '1526156371');
INSERT INTO `bl_visited` VALUES ('1084', null, '189.50.144.36', '巴西', '', '', '', '', '1', '1526156436');
INSERT INTO `bl_visited` VALUES ('1085', null, '92.27.196.187', '英国', '', '', '', '', '1', '1526157360');
INSERT INTO `bl_visited` VALUES ('1086', null, '189.153.78.16', '墨西哥', '', '', '', '', '1', '1526158364');
INSERT INTO `bl_visited` VALUES ('1087', null, '189.163.58.245', '墨西哥', '', '', '', '', '1', '1526159719');
INSERT INTO `bl_visited` VALUES ('1088', null, '87.27.227.172', '意大利', '', '', '', '', '1', '1526160320');
INSERT INTO `bl_visited` VALUES ('1089', null, '60.186.212.250', '中国', '华东', '浙江省', '杭州市', '', '1', '1526162149');
INSERT INTO `bl_visited` VALUES ('1090', null, '5.8.113.98', '意大利', '', '', '', '', '1', '1526162888');
INSERT INTO `bl_visited` VALUES ('1091', null, '106.11.225.233', '中国', '华东', '上海市', '上海市', '', '1', '1526163942');
INSERT INTO `bl_visited` VALUES ('1092', null, '211.48.126.15', '韩国', '', '', '', '', '1', '1526164950');
INSERT INTO `bl_visited` VALUES ('1093', null, '43.251.99.8', '印度尼西亚', '', '', '', '', '1', '1526165776');
INSERT INTO `bl_visited` VALUES ('1094', null, '118.175.176.63', '泰国', '', '', '', '', '1', '1526166506');
INSERT INTO `bl_visited` VALUES ('1095', null, '200.161.157.175', '巴西', '', '', '', '', '1', '1526171444');
INSERT INTO `bl_visited` VALUES ('1096', null, '201.238.155.104', '厄瓜多尔', '', '', '', '', '1', '1526171455');
INSERT INTO `bl_visited` VALUES ('1097', null, '189.78.30.168', '巴西', '', '', '', '', '1', '1526172116');
INSERT INTO `bl_visited` VALUES ('1098', null, '189.153.0.239', '墨西哥', '', '', '', '', '1', '1526175039');
INSERT INTO `bl_visited` VALUES ('1099', null, '187.208.63.59', '墨西哥', '', '', '', '', '1', '1526177290');
INSERT INTO `bl_visited` VALUES ('1100', null, '187.138.0.79', '墨西哥', '', '', '', '', '1', '1526178493');
INSERT INTO `bl_visited` VALUES ('1101', null, '189.79.229.187', '巴西', '', '', '', '', '1', '1526179324');
INSERT INTO `bl_visited` VALUES ('1102', null, '190.94.136.178', '厄瓜多尔', '', '', '', '', '1', '1526181277');
INSERT INTO `bl_visited` VALUES ('1103', null, '101.132.182.68', '中国', '华东', '上海市', '上海市', '', '2', '1527132452');
INSERT INTO `bl_visited` VALUES ('1104', null, '101.132.98.159', '中国', '华东', '上海市', '上海市', '', '1', '1526182657');
INSERT INTO `bl_visited` VALUES ('1105', null, '219.91.165.154', '印度', '', '', '', '', '1', '1526189188');
INSERT INTO `bl_visited` VALUES ('1106', null, '186.233.57.104', '巴西', '', '', '', '', '1', '1526189912');
INSERT INTO `bl_visited` VALUES ('1107', null, '78.85.18.218', '俄罗斯', '', '', '', '', '1', '1526193762');
INSERT INTO `bl_visited` VALUES ('1108', null, '115.236.33.146', '中国', '华东', '浙江省', '杭州市', '', '1', '1526195844');
INSERT INTO `bl_visited` VALUES ('1109', null, '208.100.26.231', '美国', '东部', '伊利诺伊州', '', '', '3', '1526198080');
INSERT INTO `bl_visited` VALUES ('1110', null, '124.204.54.60', '中国', '华北', '北京市', '北京市', '', '1', '1526200365');
INSERT INTO `bl_visited` VALUES ('1111', null, '128.201.173.237', '巴西', '', '', '', '', '1', '1526203628');
INSERT INTO `bl_visited` VALUES ('1112', null, '107.170.249.67', '美国', '西部', '加利福尼亚州', '', '', '1', '1526207671');
INSERT INTO `bl_visited` VALUES ('1113', null, '222.186.190.167', '中国', '华东', '江苏省', '镇江市', '', '1', '1526207673');
INSERT INTO `bl_visited` VALUES ('1114', null, '103.43.4.35', '印度', '', '', '', '', '1', '1526210066');
INSERT INTO `bl_visited` VALUES ('1115', null, '177.102.203.110', '巴西', '', '', '', '', '1', '1526210351');
INSERT INTO `bl_visited` VALUES ('1116', null, '191.193.142.134', '巴西', '', '', '', '', '1', '1526223660');
INSERT INTO `bl_visited` VALUES ('1117', null, '189.110.176.38', '巴西', '', '', '', '', '1', '1526227045');
INSERT INTO `bl_visited` VALUES ('1118', null, '103.212.129.35', '印度', '', '', '', '', '1', '1526228826');
INSERT INTO `bl_visited` VALUES ('1119', null, '194.44.36.50', '乌克兰', '', '', '', '', '1', '1526229225');
INSERT INTO `bl_visited` VALUES ('1120', null, '34.227.99.215', '美国', '东部', '弗吉尼亚州', '', '', '1', '1526235852');
INSERT INTO `bl_visited` VALUES ('1121', null, '36.82.27.97', '印度尼西亚', '', '', '', '', '1', '1526237302');
INSERT INTO `bl_visited` VALUES ('1122', null, '103.40.226.18', '孟加拉', '', '', '', '', '1', '1526238384');
INSERT INTO `bl_visited` VALUES ('1123', null, '143.255.242.177', '巴西', '', '', '', '', '1', '1526243739');
INSERT INTO `bl_visited` VALUES ('1124', null, '91.83.149.236', '匈牙利', '', '', '', '', '1', '1526244616');
INSERT INTO `bl_visited` VALUES ('1125', null, '151.243.9.184', '伊朗', '', '', '', '', '1', '1526245183');
INSERT INTO `bl_visited` VALUES ('1126', null, '190.94.139.141', '厄瓜多尔', '', '', '', '', '1', '1526250292');
INSERT INTO `bl_visited` VALUES ('1127', null, '106.15.191.180', '中国', '华东', '上海市', '上海市', '', '1', '1526250958');
INSERT INTO `bl_visited` VALUES ('1128', null, '106.15.191.180', '中国', '华东', '上海市', '上海市', '', '1', '1526250958');
INSERT INTO `bl_visited` VALUES ('1129', null, '187.195.149.245', '墨西哥', '', '', '', '', '1', '1526253023');
INSERT INTO `bl_visited` VALUES ('1130', null, '170.81.13.123', '巴西', '', '', '', '', '1', '1526257863');
INSERT INTO `bl_visited` VALUES ('1131', null, '187.207.92.116', '墨西哥', '', '', '', '', '1', '1526258435');
INSERT INTO `bl_visited` VALUES ('1132', null, '187.207.92.116', '墨西哥', '', '', '', '', '1', '1526258435');
INSERT INTO `bl_visited` VALUES ('1133', null, '189.78.138.135', '巴西', '', '', '', '', '1', '1526263119');
INSERT INTO `bl_visited` VALUES ('1134', null, '103.15.80.189', '印度', '', '', '', '', '1', '1526265129');
INSERT INTO `bl_visited` VALUES ('1135', null, '187.207.82.68', '墨西哥', '', '', '', '', '1', '1526273022');
INSERT INTO `bl_visited` VALUES ('1136', null, '179.217.62.185', '巴西', '', '', '', '', '1', '1526273140');
INSERT INTO `bl_visited` VALUES ('1137', null, '106.11.227.170', '中国', '华东', '上海市', '上海市', '', '2', '1526731917');
INSERT INTO `bl_visited` VALUES ('1138', null, '191.23.7.165', '巴西', '', '', '', '', '1', '1526284773');
INSERT INTO `bl_visited` VALUES ('1139', null, '37.146.220.168', '俄罗斯', '', '', '', '', '1', '1526296054');
INSERT INTO `bl_visited` VALUES ('1140', null, '217.24.252.72', '阿尔巴尼亚', '', '', '', '', '1', '1526296708');
INSERT INTO `bl_visited` VALUES ('1141', null, '187.169.231.21', '墨西哥', '', '', '', '', '1', '1526300308');
INSERT INTO `bl_visited` VALUES ('1142', null, '106.11.242.65', '中国', '华东', '上海市', '上海市', '', '1', '1526300551');
INSERT INTO `bl_visited` VALUES ('1143', null, '60.20.113.160', '中国', '东北', '辽宁省', '大连市', '', '1', '1526309845');
INSERT INTO `bl_visited` VALUES ('1144', null, '171.91.157.247', '中国', '西南', '四川省', '南充市', '', '1', '1526324653');
INSERT INTO `bl_visited` VALUES ('1145', null, '189.46.154.35', '巴西', '', '', '', '', '1', '1526325063');
INSERT INTO `bl_visited` VALUES ('1146', null, '106.14.114.244', '中国', '华东', '上海市', '上海市', '', '1', '1526327837');
INSERT INTO `bl_visited` VALUES ('1147', null, '40.77.167.78', '美国', '', '', '', '', '1', '1526330082');
INSERT INTO `bl_visited` VALUES ('1148', null, '2.183.95.93', '伊朗', '', '', '', '', '1', '1526331531');
INSERT INTO `bl_visited` VALUES ('1149', null, '154.73.182.40', '南非', '', '', '', '', '1', '1526334245');
INSERT INTO `bl_visited` VALUES ('1150', null, '191.8.81.37', '巴西', '', '', '', '', '1', '1526335892');
INSERT INTO `bl_visited` VALUES ('1151', null, '139.224.15.159', '中国', '华东', '上海市', '上海市', '', '2', '1527033824');
INSERT INTO `bl_visited` VALUES ('1152', null, '116.62.215.53', '中国', '华东', '浙江省', '杭州市', '', '1', '1526337134');
INSERT INTO `bl_visited` VALUES ('1153', null, '84.213.247.218', '挪威', '', '', '', '', '1', '1526337887');
INSERT INTO `bl_visited` VALUES ('1154', null, '189.175.240.99', '墨西哥', '', '', '', '', '1', '1526342564');
INSERT INTO `bl_visited` VALUES ('1155', null, '177.94.137.163', '巴西', '', '', '', '', '1', '1526342633');
INSERT INTO `bl_visited` VALUES ('1156', null, '5.189.190.122', '德国', '', '', '', '', '1', '1526345160');
INSERT INTO `bl_visited` VALUES ('1157', null, '177.39.83.26', '巴西', '', '', '', '', '1', '1526345180');
INSERT INTO `bl_visited` VALUES ('1158', null, '187.154.193.152', '墨西哥', '', '', '', '', '1', '1526356260');
INSERT INTO `bl_visited` VALUES ('1159', null, '187.154.193.152', '墨西哥', '', '', '', '', '1', '1526356260');
INSERT INTO `bl_visited` VALUES ('1160', null, '189.69.81.211', '巴西', '', '', '', '', '2', '1526360913');
INSERT INTO `bl_visited` VALUES ('1161', null, '185.166.24.138', '伊拉克', '', '', '', '', '1', '1526362641');
INSERT INTO `bl_visited` VALUES ('1162', null, '103.206.225.126', '印度', '', '', '', '', '1', '1526363179');
INSERT INTO `bl_visited` VALUES ('1163', null, '95.233.31.10', '意大利', '', '', '', '', '1', '1526364077');
INSERT INTO `bl_visited` VALUES ('1164', null, '189.131.3.28', '墨西哥', '', '', '', '', '1', '1526365427');
INSERT INTO `bl_visited` VALUES ('1165', null, '196.52.43.85', '荷兰', '', '', '', '', '1', '1526367991');
INSERT INTO `bl_visited` VALUES ('1166', null, '91.236.67.204', '斯洛伐克', '', '', '', '', '1', '1526368702');
INSERT INTO `bl_visited` VALUES ('1167', null, '106.11.225.211', '中国', '华东', '上海市', '上海市', '', '1', '1526371298');
INSERT INTO `bl_visited` VALUES ('1168', null, '103.239.142.73', '印度', '', '', '', '', '1', '1526379921');
INSERT INTO `bl_visited` VALUES ('1169', null, '185.26.32.80', '伊朗', '', '', '', '', '1', '1526384436');
INSERT INTO `bl_visited` VALUES ('1170', null, '104.128.144.131', '加拿大', '', '', '', '', '1', '1526385304');
INSERT INTO `bl_visited` VALUES ('1171', null, '109.105.211.87', '波黑', '', '', '', '', '1', '1526387541');
INSERT INTO `bl_visited` VALUES ('1172', null, '187.74.165.87', '巴西', '', '', '', '', '1', '1526390019');
INSERT INTO `bl_visited` VALUES ('1173', null, '187.56.249.21', '巴西', '', '', '', '', '1', '1526402870');
INSERT INTO `bl_visited` VALUES ('1174', null, '103.240.34.6', '印度', '', '', '', '', '1', '1526415346');
INSERT INTO `bl_visited` VALUES ('1175', null, '152.250.197.162', '巴西', '', '', '', '', '1', '1526418995');
INSERT INTO `bl_visited` VALUES ('1176', null, '107.170.253.246', '美国', '西部', '加利福尼亚州', '', '', '1', '1526419737');
INSERT INTO `bl_visited` VALUES ('1177', null, '176.43.128.16', '土耳其', '', '', '', '', '1', '1526422331');
INSERT INTO `bl_visited` VALUES ('1178', null, '201.92.131.51', '巴西', '', '', '', '', '1', '1526423724');
INSERT INTO `bl_visited` VALUES ('1179', null, '200.195.85.66', '巴西', '', '', '', '', '1', '1526424010');
INSERT INTO `bl_visited` VALUES ('1180', null, '54.255.151.80', '新加坡', '', '', '', '', '1', '1526430799');
INSERT INTO `bl_visited` VALUES ('1181', null, '95.237.98.20', '意大利', '', '', '', '', '1', '1526438374');
INSERT INTO `bl_visited` VALUES ('1182', null, '176.241.86.66', '伊拉克', '', '', '', '', '2', '1526790512');
INSERT INTO `bl_visited` VALUES ('1183', null, '103.76.190.38', '印度', '', '', '', '', '1', '1526443491');
INSERT INTO `bl_visited` VALUES ('1184', null, '45.70.196.197', '厄瓜多尔', '', '', '', '', '1', '1526449006');
INSERT INTO `bl_visited` VALUES ('1185', null, '115.127.68.242', '孟加拉', '', '', '', '', '1', '1526452626');
INSERT INTO `bl_visited` VALUES ('1186', null, '107.170.194.30', '美国', '西部', '加利福尼亚州', '', '', '1', '1526454683');
INSERT INTO `bl_visited` VALUES ('1187', null, '106.11.226.242', '中国', '华东', '上海市', '上海市', '', '1', '1526456043');
INSERT INTO `bl_visited` VALUES ('1188', null, '198.20.103.242', '荷兰', '', '', '', '', '1', '1526459085');
INSERT INTO `bl_visited` VALUES ('1189', null, '141.212.122.81', '美国', '东部', '密歇根州', '', '', '1', '1526462244');
INSERT INTO `bl_visited` VALUES ('1190', null, '157.119.212.42', '印度', '', '', '', '', '1', '1526465892');
INSERT INTO `bl_visited` VALUES ('1191', null, '177.188.97.131', '巴西', '', '', '', '', '1', '1526466787');
INSERT INTO `bl_visited` VALUES ('1192', null, '187.79.156.17', '巴西', '', '', '', '', '1', '1526469847');
INSERT INTO `bl_visited` VALUES ('1193', null, '106.11.225.50', '中国', '华东', '上海市', '上海市', '', '1', '1526470783');
INSERT INTO `bl_visited` VALUES ('1194', null, '177.103.238.157', '巴西', '', '', '', '', '1', '1526472864');
INSERT INTO `bl_visited` VALUES ('1195', null, '191.242.160.217', '巴西', '', '', '', '', '1', '1526473826');
INSERT INTO `bl_visited` VALUES ('1196', null, '193.28.177.146', '乌克兰', '', '', '', '', '1', '1526475126');
INSERT INTO `bl_visited` VALUES ('1197', null, '165.16.37.182', '利比亚', '', '', '', '', '1', '1526475622');
INSERT INTO `bl_visited` VALUES ('1198', null, '212.4.133.31', '捷克', '', '', '', '', '1', '1526482592');
INSERT INTO `bl_visited` VALUES ('1199', null, '177.94.253.210', '巴西', '', '', '', '', '1', '1526484364');
INSERT INTO `bl_visited` VALUES ('1200', null, '219.154.133.166', '中国', '华中', '河南省', '南阳市', '', '1', '1526485394');
INSERT INTO `bl_visited` VALUES ('1201', null, '189.146.175.38', '墨西哥', '', '', '', '', '1', '1526487710');
INSERT INTO `bl_visited` VALUES ('1202', null, '185.190.252.246', '西班牙', '', '', '', '', '1', '1526490267');
INSERT INTO `bl_visited` VALUES ('1203', null, '27.147.244.7', '孟加拉', '', '', '', '', '1', '1526494222');
INSERT INTO `bl_visited` VALUES ('1204', null, '179.110.90.135', '巴西', '', '', '', '', '1', '1526496263');
INSERT INTO `bl_visited` VALUES ('1205', null, '179.233.214.247', '巴西', '', '', '', '', '1', '1526499989');
INSERT INTO `bl_visited` VALUES ('1206', null, '177.138.39.215', '巴西', '', '', '', '', '1', '1526506842');
INSERT INTO `bl_visited` VALUES ('1207', null, '91.219.102.116', '俄罗斯', '', '', '', '', '1', '1526507579');
INSERT INTO `bl_visited` VALUES ('1208', null, '213.159.27.180', '意大利', '', '', '', '', '1', '1526513709');
INSERT INTO `bl_visited` VALUES ('1209', null, '13.250.14.101', '新加坡', '', '', '', '', '1', '1526513713');
INSERT INTO `bl_visited` VALUES ('1210', null, '178.94.50.55', '乌克兰', '', '', '', '', '1', '1526516051');
INSERT INTO `bl_visited` VALUES ('1211', null, '138.122.34.34', '巴西', '', '', '', '', '1', '1526516447');
INSERT INTO `bl_visited` VALUES ('1212', null, '177.9.254.116', '巴西', '', '', '', '', '1', '1526517559');
INSERT INTO `bl_visited` VALUES ('1213', null, '77.48.23.201', '捷克', '', '', '', '', '1', '1526523156');
INSERT INTO `bl_visited` VALUES ('1214', null, '84.43.192.37', '保加利亚', '', '', '', '', '1', '1526523264');
INSERT INTO `bl_visited` VALUES ('1215', null, '119.82.252.87', '柬埔寨', '', '', '', '', '1', '1526533120');
INSERT INTO `bl_visited` VALUES ('1216', null, '46.101.9.216', '英国', '', '', '', '', '1', '1526536481');
INSERT INTO `bl_visited` VALUES ('1217', null, '197.149.92.254', '尼日利亚', '', '', '', '', '1', '1526551224');
INSERT INTO `bl_visited` VALUES ('1218', null, '201.13.74.77', '巴西', '', '', '', '', '1', '1526552777');
INSERT INTO `bl_visited` VALUES ('1219', null, '151.8.240.34', '意大利', '', '', '', '', '1', '1526553664');
INSERT INTO `bl_visited` VALUES ('1220', null, '93.78.239.247', '乌克兰', '', '', '', '', '1', '1526554889');
INSERT INTO `bl_visited` VALUES ('1221', null, '37.57.74.248', '乌克兰', '', '', '', '', '1', '1526556792');
INSERT INTO `bl_visited` VALUES ('1222', null, '116.58.240.181', '泰国', '', '', '', '', '1', '1526557300');
INSERT INTO `bl_visited` VALUES ('1223', null, '207.46.13.50', '美国', '', '', '', '', '1', '1526577194');
INSERT INTO `bl_visited` VALUES ('1224', null, '151.232.131.181', '伊朗', '', '', '', '', '1', '1526580463');
INSERT INTO `bl_visited` VALUES ('1225', null, '151.232.131.181', '伊朗', '', '', '', '', '1', '1526580463');
INSERT INTO `bl_visited` VALUES ('1226', null, '189.183.88.193', '墨西哥', '', '', '', '', '1', '1526580747');
INSERT INTO `bl_visited` VALUES ('1227', null, '162.243.137.16', '美国', '西部', '加利福尼亚州', '', '', '1', '1526583404');
INSERT INTO `bl_visited` VALUES ('1228', null, '47.98.62.203', '中国', '华东', '浙江省', '杭州市', '', '2', '1526960188');
INSERT INTO `bl_visited` VALUES ('1229', null, '189.232.79.198', '墨西哥', '', '', '', '', '1', '1526590623');
INSERT INTO `bl_visited` VALUES ('1230', null, '47.92.137.155', '中国', '华北', '河北省', '张家口市', '', '1', '1526591952');
INSERT INTO `bl_visited` VALUES ('1231', null, '189.162.243.40', '墨西哥', '', '', '', '', '1', '1526595005');
INSERT INTO `bl_visited` VALUES ('1232', null, '201.105.217.124', '墨西哥', '', '', '', '', '1', '1526603912');
INSERT INTO `bl_visited` VALUES ('1233', null, '109.196.112.81', '波兰', '', '', '', '', '1', '1526607208');
INSERT INTO `bl_visited` VALUES ('1234', null, '197.245.212.96', '南非', '', '', '', '', '1', '1526609889');
INSERT INTO `bl_visited` VALUES ('1235', null, '177.189.163.222', '巴西', '', '', '', '', '1', '1526616366');
INSERT INTO `bl_visited` VALUES ('1236', null, '157.55.39.5', '美国', '', '', '', '', '1', '1526618192');
INSERT INTO `bl_visited` VALUES ('1237', null, '191.8.61.202', '巴西', '', '', '', '', '1', '1526620213');
INSERT INTO `bl_visited` VALUES ('1238', null, '39.107.121.196', '中国', '华北', '北京市', '北京市', '', '2', '1527132634');
INSERT INTO `bl_visited` VALUES ('1239', null, '101.70.39.230', '中国', '华东', '浙江省', '嘉兴市', '', '1', '1526624315');
INSERT INTO `bl_visited` VALUES ('1240', null, '150.107.141.235', '印度尼西亚', '', '', '', '', '1', '1526624613');
INSERT INTO `bl_visited` VALUES ('1241', null, '106.11.227.222', '中国', '华东', '上海市', '上海市', '', '1', '1526630171');
INSERT INTO `bl_visited` VALUES ('1242', null, '91.103.61.243', '亚美尼亚', '', '', '', '', '1', '1526632272');
INSERT INTO `bl_visited` VALUES ('1243', null, '195.98.92.167', '俄罗斯', '', '', '', '', '1', '1526637182');
INSERT INTO `bl_visited` VALUES ('1244', null, '201.110.40.165', '墨西哥', '', '', '', '', '1', '1526642110');
INSERT INTO `bl_visited` VALUES ('1245', null, '189.163.82.82', '墨西哥', '', '', '', '', '1', '1526644165');
INSERT INTO `bl_visited` VALUES ('1246', null, '106.11.242.71', '中国', '华东', '上海市', '上海市', '', '1', '1526644171');
INSERT INTO `bl_visited` VALUES ('1247', null, '201.137.116.229', '墨西哥', '', '', '', '', '1', '1526651597');
INSERT INTO `bl_visited` VALUES ('1248', null, '179.100.84.144', '巴西', '', '', '', '', '1', '1526655310');
INSERT INTO `bl_visited` VALUES ('1249', null, '152.249.98.63', '巴西', '', '', '', '', '1', '1526658326');
INSERT INTO `bl_visited` VALUES ('1250', null, '64.246.165.190', '美国', '西部', '华盛顿州', '', '', '1', '1526667596');
INSERT INTO `bl_visited` VALUES ('1251', null, '196.52.43.104', '荷兰', '', '', '', '', '1', '1526673174');
INSERT INTO `bl_visited` VALUES ('1252', null, '36.84.69.122', '印度尼西亚', '', '', '', '', '1', '1526673388');
INSERT INTO `bl_visited` VALUES ('1253', null, '201.43.222.157', '巴西', '', '', '', '', '1', '1526673488');
INSERT INTO `bl_visited` VALUES ('1254', null, '201.238.154.230', '厄瓜多尔', '', '', '', '', '1', '1526678777');
INSERT INTO `bl_visited` VALUES ('1255', null, '46.1.168.67', '土耳其', '', '', '', '', '1', '1526681622');
INSERT INTO `bl_visited` VALUES ('1256', null, '170.78.182.225', '巴西', '', '', '', '', '1', '1526686861');
INSERT INTO `bl_visited` VALUES ('1257', null, '78.161.205.166', '土耳其', '', '', '', '', '1', '1526691550');
INSERT INTO `bl_visited` VALUES ('1258', null, '179.98.36.12', '巴西', '', '', '', '', '1', '1526691863');
INSERT INTO `bl_visited` VALUES ('1259', null, '189.253.116.52', '墨西哥', '', '', '', '', '1', '1526691915');
INSERT INTO `bl_visited` VALUES ('1260', null, '101.132.107.246', '中国', '华东', '上海市', '上海市', '', '2', '1526777537');
INSERT INTO `bl_visited` VALUES ('1261', null, '45.115.172.219', '印度', '', '', '', '', '1', '1526702830');
INSERT INTO `bl_visited` VALUES ('1262', null, '187.57.48.73', '巴西', '', '', '', '', '1', '1526708426');
INSERT INTO `bl_visited` VALUES ('1263', null, '86.105.177.232', '意大利', '', '', '', '', '1', '1526713811');
INSERT INTO `bl_visited` VALUES ('1264', null, '122.144.14.250', '孟加拉', '', '', '', '', '1', '1526719345');
INSERT INTO `bl_visited` VALUES ('1265', null, '187.62.42.202', '巴西', '', '', '', '', '1', '1526721037');
INSERT INTO `bl_visited` VALUES ('1266', null, '86.60.156.76', '芬兰', '', '', '', '', '1', '1526722168');
INSERT INTO `bl_visited` VALUES ('1267', null, '189.159.1.28', '墨西哥', '', '', '', '', '1', '1526724337');
INSERT INTO `bl_visited` VALUES ('1268', null, '5.145.160.122', '俄罗斯', '', '', '', '', '1', '1526724870');
INSERT INTO `bl_visited` VALUES ('1269', null, '106.14.182.146', '中国', '华东', '上海市', '上海市', '', '2', '1526730382');
INSERT INTO `bl_visited` VALUES ('1270', null, '180.76.103.124', '中国', '华北', '北京市', '北京市', '', '1', '1526730383');
INSERT INTO `bl_visited` VALUES ('1271', null, '41.87.2.254', '马拉维', '', '', '', '', '1', '1526738318');
INSERT INTO `bl_visited` VALUES ('1272', null, '96.9.74.254', '柬埔寨', '', '', '', '', '1', '1526739700');
INSERT INTO `bl_visited` VALUES ('1273', null, '191.5.180.227', '巴西', '', '', '', '', '1', '1526742877');
INSERT INTO `bl_visited` VALUES ('1274', null, '119.42.113.38', '泰国', '', '', '', '', '1', '1526744487');
INSERT INTO `bl_visited` VALUES ('1275', null, '47.97.16.76', '中国', '华东', '浙江省', '杭州市', '', '1', '1526746288');
INSERT INTO `bl_visited` VALUES ('1276', null, '109.188.74.31', '俄罗斯', '', '', '', '', '1', '1526746804');
INSERT INTO `bl_visited` VALUES ('1277', null, '201.95.2.20', '巴西', '', '', '', '', '1', '1526747179');
INSERT INTO `bl_visited` VALUES ('1278', null, '201.137.241.103', '墨西哥', '', '', '', '', '1', '1526750520');
INSERT INTO `bl_visited` VALUES ('1279', null, '36.73.94.87', '印度尼西亚', '', '', '', '', '1', '1526751020');
INSERT INTO `bl_visited` VALUES ('1280', null, '92.242.220.168', '伊朗', '', '', '', '', '1', '1526752763');
INSERT INTO `bl_visited` VALUES ('1281', null, '45.6.193.113', '巴西', '', '', '', '', '1', '1526770593');
INSERT INTO `bl_visited` VALUES ('1282', null, '101.132.97.53', '中国', '华东', '上海市', '上海市', '', '1', '1526776812');
INSERT INTO `bl_visited` VALUES ('1283', null, '187.34.206.36', '巴西', '', '', '', '', '1', '1526782190');
INSERT INTO `bl_visited` VALUES ('1284', null, '130.255.27.26', '英国', '', '', '', '', '1', '1526783662');
INSERT INTO `bl_visited` VALUES ('1285', null, '177.95.231.45', '巴西', '', '', '', '', '1', '1526783937');
INSERT INTO `bl_visited` VALUES ('1286', null, '40.77.167.44', '美国', '', '', '', '', '1', '1526786176');
INSERT INTO `bl_visited` VALUES ('1287', null, '38.99.116.92', '圣马丁', '', '', '', '', '1', '1526787702');
INSERT INTO `bl_visited` VALUES ('1288', null, '186.211.11.112', '巴西', '', '', '', '', '1', '1526788629');
INSERT INTO `bl_visited` VALUES ('1289', null, '169.255.189.249', '刚果金', '', '', '', '', '1', '1526789384');
INSERT INTO `bl_visited` VALUES ('1290', null, '187.144.231.155', '墨西哥', '', '', '', '', '1', '1526791290');
INSERT INTO `bl_visited` VALUES ('1291', null, '189.130.12.134', '墨西哥', '', '', '', '', '1', '1526793991');
INSERT INTO `bl_visited` VALUES ('1292', null, '187.53.60.226', '巴西', '', '', '', '', '1', '1526794514');
INSERT INTO `bl_visited` VALUES ('1293', null, '107.170.229.146', '美国', '西部', '加利福尼亚州', '', '', '1', '1526800915');
INSERT INTO `bl_visited` VALUES ('1294', null, '23.247.64.122', '美国', '西部', '加利福尼亚州', '', '', '1', '1526815223');
INSERT INTO `bl_visited` VALUES ('1295', null, '187.79.69.22', '巴西', '', '', '', '', '1', '1526816316');
INSERT INTO `bl_visited` VALUES ('1296', null, '212.152.44.183', '俄罗斯', '', '', '', '', '1', '1526817112');
INSERT INTO `bl_visited` VALUES ('1297', null, '202.62.58.53', '柬埔寨', '', '', '', '', '1', '1526824814');
INSERT INTO `bl_visited` VALUES ('1298', null, '217.11.179.169', '塔吉克斯坦', '', '', '', '', '1', '1526827944');
INSERT INTO `bl_visited` VALUES ('1299', null, '177.130.244.70', '巴西', '', '', '', '', '1', '1526829609');
INSERT INTO `bl_visited` VALUES ('1300', null, '23.247.17.214', '美国', '西部', '加利福尼亚州', '', '', '2', '1527101055');
INSERT INTO `bl_visited` VALUES ('1301', null, '89.144.187.38', '伊朗', '', '', '', '', '1', '1526831020');
INSERT INTO `bl_visited` VALUES ('1302', null, '189.69.197.163', '巴西', '', '', '', '', '1', '1526831200');
INSERT INTO `bl_visited` VALUES ('1303', null, '77.45.74.13', '波兰', '', '', '', '', '1', '1526834369');
INSERT INTO `bl_visited` VALUES ('1304', null, '189.172.88.200', '墨西哥', '', '', '', '', '1', '1526840383');
INSERT INTO `bl_visited` VALUES ('1305', null, '187.155.86.162', '墨西哥', '', '', '', '', '1', '1526842949');
INSERT INTO `bl_visited` VALUES ('1306', null, '106.11.242.183', '中国', '华东', '上海市', '上海市', '', '1', '1526843198');
INSERT INTO `bl_visited` VALUES ('1307', null, '131.108.53.42', '巴西', '', '', '', '', '1', '1526849593');
INSERT INTO `bl_visited` VALUES ('1308', null, '211.199.195.207', '韩国', '', '', '', '', '1', '1526850443');
INSERT INTO `bl_visited` VALUES ('1309', null, '187.16.129.246', '巴西', '', '', '', '', '1', '1526850876');
INSERT INTO `bl_visited` VALUES ('1310', null, '91.210.147.46', '乌克兰', '', '', '', '', '1', '1526853565');
INSERT INTO `bl_visited` VALUES ('1311', null, '187.120.141.174', '巴西', '', '', '', '', '1', '1526856869');
INSERT INTO `bl_visited` VALUES ('1312', null, '183.136.190.37', '中国', '华东', '浙江省', '杭州市', '', '5', '1526951677');
INSERT INTO `bl_visited` VALUES ('1313', null, '189.152.180.86', '墨西哥', '', '', '', '', '1', '1526868387');
INSERT INTO `bl_visited` VALUES ('1314', null, '106.14.190.222', '中国', '华东', '上海市', '上海市', '', '1', '1526875519');
INSERT INTO `bl_visited` VALUES ('1315', null, '47.92.103.177', '中国', '华北', '河北省', '张家口市', '', '1', '1526876227');
INSERT INTO `bl_visited` VALUES ('1316', null, '157.55.39.204', '美国', '', '', '', '', '2', '1526937725');
INSERT INTO `bl_visited` VALUES ('1317', null, '23.247.67.146', '美国', '西部', '加利福尼亚州', '', '', '1', '1526883412');
INSERT INTO `bl_visited` VALUES ('1318', null, '45.33.69.84', '美国', '东部', '新泽西州', '', '', '1', '1526885981');
INSERT INTO `bl_visited` VALUES ('1319', null, '107.170.226.16', '美国', '西部', '加利福尼亚州', '', '', '1', '1526899578');
INSERT INTO `bl_visited` VALUES ('1320', null, '23.228.88.34', '美国', '西部', '加利福尼亚州', '', '', '1', '1526903182');
INSERT INTO `bl_visited` VALUES ('1321', null, '116.212.155.190', '柬埔寨', '', '', '', '', '1', '1526909783');
INSERT INTO `bl_visited` VALUES ('1322', null, '138.219.110.58', '巴西', '', '', '', '', '1', '1526910462');
INSERT INTO `bl_visited` VALUES ('1323', null, '187.147.177.217', '墨西哥', '', '', '', '', '1', '1526912560');
INSERT INTO `bl_visited` VALUES ('1324', null, '189.78.25.168', '巴西', '', '', '', '', '1', '1526918521');
INSERT INTO `bl_visited` VALUES ('1325', null, '201.184.231.250', '哥伦比亚', '', '', '', '', '1', '1526920580');
INSERT INTO `bl_visited` VALUES ('1326', null, '83.172.110.168', '瑞典', '', '', '', '', '1', '1526923321');
INSERT INTO `bl_visited` VALUES ('1327', null, '180.175.89.151', '中国', '华东', '上海市', '上海市', '', '1', '1526926936');
INSERT INTO `bl_visited` VALUES ('1328', null, '170.239.186.89', '巴西', '', '', '', '', '1', '1526930152');
INSERT INTO `bl_visited` VALUES ('1329', null, '179.98.12.252', '巴西', '', '', '', '', '1', '1526930535');
INSERT INTO `bl_visited` VALUES ('1330', null, '179.98.12.252', '巴西', '', '', '', '', '1', '1526930535');
INSERT INTO `bl_visited` VALUES ('1331', null, '91.122.100.79', '俄罗斯', '', '', '', '', '1', '1526931364');
INSERT INTO `bl_visited` VALUES ('1332', null, '212.3.183.24', '意大利', '', '', '', '', '1', '1526931828');
INSERT INTO `bl_visited` VALUES ('1333', null, '101.108.197.245', '泰国', '', '', '', '', '1', '1526932664');
INSERT INTO `bl_visited` VALUES ('1334', null, '189.153.2.103', '墨西哥', '', '', '', '', '1', '1526935024');
INSERT INTO `bl_visited` VALUES ('1335', null, '54.226.109.154', '美国', '东部', '弗吉尼亚州', '', '', '1', '1526935792');
INSERT INTO `bl_visited` VALUES ('1336', null, '177.45.25.140', '巴西', '', '', '', '', '1', '1526937001');
INSERT INTO `bl_visited` VALUES ('1337', null, '187.110.208.3', '巴西', '', '', '', '', '1', '1526937306');
INSERT INTO `bl_visited` VALUES ('1338', null, '194.135.12.10', '俄罗斯', '', '', '', '', '1', '1526939213');
INSERT INTO `bl_visited` VALUES ('1339', null, '189.225.206.124', '墨西哥', '', '', '', '', '1', '1526940137');
INSERT INTO `bl_visited` VALUES ('1340', null, '168.196.182.152', '巴西', '', '', '', '', '1', '1526941680');
INSERT INTO `bl_visited` VALUES ('1341', null, '46.128.127.52', '德国', '', '', '', '', '1', '1526943098');
INSERT INTO `bl_visited` VALUES ('1342', null, '218.212.146.232', '新加坡', '', '', '', '', '1', '1526944969');
INSERT INTO `bl_visited` VALUES ('1343', null, '110.172.157.36', '印度', '', '', '', '', '1', '1526946844');
INSERT INTO `bl_visited` VALUES ('1344', null, '187.175.53.202', '墨西哥', '', '', '', '', '1', '1526955285');
INSERT INTO `bl_visited` VALUES ('1345', null, '187.175.53.202', '墨西哥', '', '', '', '', '1', '1526955285');
INSERT INTO `bl_visited` VALUES ('1346', null, '223.204.25.6', '泰国', '', '', '', '', '1', '1526964037');
INSERT INTO `bl_visited` VALUES ('1347', null, '200.196.46.92', '巴西', '', '', '', '', '1', '1526966047');
INSERT INTO `bl_visited` VALUES ('1348', null, '36.78.248.183', '印度尼西亚', '', '', '', '', '1', '1526975477');
INSERT INTO `bl_visited` VALUES ('1349', null, '181.196.147.130', '厄瓜多尔', '', '', '', '', '1', '1526984114');
INSERT INTO `bl_visited` VALUES ('1350', null, '177.68.75.130', '巴西', '', '', '', '', '1', '1526986894');
INSERT INTO `bl_visited` VALUES ('1351', null, '179.145.63.27', '巴西', '', '', '', '', '1', '1526993535');
INSERT INTO `bl_visited` VALUES ('1352', null, '195.154.242.191', '法国', '', '', '', '', '1', '1526998444');
INSERT INTO `bl_visited` VALUES ('1353', null, '201.123.68.73', '墨西哥', '', '', '', '', '1', '1527004064');
INSERT INTO `bl_visited` VALUES ('1354', null, '94.183.183.139', '伊朗', '', '', '', '', '1', '1527005302');
INSERT INTO `bl_visited` VALUES ('1355', null, '110.232.249.50', '印度', '', '', '', '', '1', '1527006271');
INSERT INTO `bl_visited` VALUES ('1356', null, '106.11.226.68', '中国', '华东', '上海市', '上海市', '', '1', '1527006674');
INSERT INTO `bl_visited` VALUES ('1357', null, '201.238.155.77', '厄瓜多尔', '', '', '', '', '1', '1527007909');
INSERT INTO `bl_visited` VALUES ('1358', null, '88.250.68.170', '土耳其', '', '', '', '', '1', '1527011331');
INSERT INTO `bl_visited` VALUES ('1359', null, '191.255.202.176', '巴西', '', '', '', '', '1', '1527014820');
INSERT INTO `bl_visited` VALUES ('1360', null, '197.149.66.250', '尼日利亚', '', '', '', '', '1', '1527018106');
INSERT INTO `bl_visited` VALUES ('1361', null, '189.152.162.17', '墨西哥', '', '', '', '', '1', '1527018110');
INSERT INTO `bl_visited` VALUES ('1362', null, '213.207.226.103', '伊朗', '', '', '', '', '1', '1527021044');
INSERT INTO `bl_visited` VALUES ('1363', null, '114.223.200.174', '中国', '华东', '江苏省', '无锡市', '', '1', '1527021427');
INSERT INTO `bl_visited` VALUES ('1364', null, '191.17.146.124', '巴西', '', '', '', '', '1', '1527021610');
INSERT INTO `bl_visited` VALUES ('1365', null, '177.47.207.118', '巴西', '', '', '', '', '1', '1527024645');
INSERT INTO `bl_visited` VALUES ('1366', null, '88.148.41.11', '西班牙', '', '', '', '', '1', '1527027829');
INSERT INTO `bl_visited` VALUES ('1367', null, '169.53.184.23', '加拿大', '', '', '', '', '1', '1527029255');
INSERT INTO `bl_visited` VALUES ('1368', null, '179.228.116.252', '巴西', '', '', '', '', '1', '1527030450');
INSERT INTO `bl_visited` VALUES ('1369', null, '179.228.116.252', '巴西', '', '', '', '', '1', '1527030450');
INSERT INTO `bl_visited` VALUES ('1370', null, '189.163.103.99', '墨西哥', '', '', '', '', '2', '1527033245');
INSERT INTO `bl_visited` VALUES ('1371', null, '157.55.39.220', '美国', '', '', '', '', '1', '1527040222');
INSERT INTO `bl_visited` VALUES ('1372', null, '218.75.37.18', '中国', '华东', '浙江省', '杭州市', '', '1', '1527043660');
INSERT INTO `bl_visited` VALUES ('1373', null, '213.197.136.198', '立陶宛', '', '', '', '', '1', '1527045983');
INSERT INTO `bl_visited` VALUES ('1374', null, '197.167.66.29', '埃及', '', '', '', '', '1', '1527047661');
INSERT INTO `bl_visited` VALUES ('1375', null, '39.107.116.226', '中国', '华北', '北京市', '北京市', '', '1', '1527047789');
INSERT INTO `bl_visited` VALUES ('1376', null, '118.122.38.81', '中国', '西南', '四川省', '南充市', '', '1', '1527055147');
INSERT INTO `bl_visited` VALUES ('1377', null, '196.52.43.130', '荷兰', '', '', '', '', '1', '1527056140');
INSERT INTO `bl_visited` VALUES ('1378', null, '49.0.36.248', '孟加拉', '', '', '', '', '1', '1527058262');
INSERT INTO `bl_visited` VALUES ('1379', null, '189.68.193.62', '巴西', '', '', '', '', '1', '1527059342');
INSERT INTO `bl_visited` VALUES ('1380', null, '23.236.77.30', '美国', '西部', '加利福尼亚州', '', '', '1', '1527062426');
INSERT INTO `bl_visited` VALUES ('1381', null, '23.247.64.90', '美国', '西部', '加利福尼亚州', '', '', '1', '1527063511');
INSERT INTO `bl_visited` VALUES ('1382', null, '187.155.36.93', '墨西哥', '', '', '', '', '1', '1527063827');
INSERT INTO `bl_visited` VALUES ('1383', null, '106.11.225.69', '中国', '华东', '上海市', '上海市', '', '1', '1527063867');
INSERT INTO `bl_visited` VALUES ('1384', null, '40.77.167.189', '美国', '', '', '', '', '2', '1527115021');
INSERT INTO `bl_visited` VALUES ('1385', null, '157.52.157.170', '美国', '西部', '加利福尼亚州', '', '', '1', '1527072259');
INSERT INTO `bl_visited` VALUES ('1386', null, '109.73.181.101', '意大利', '', '', '', '', '1', '1527083801');
INSERT INTO `bl_visited` VALUES ('1387', null, '106.11.242.221', '中国', '华东', '上海市', '上海市', '', '1', '1527085560');
INSERT INTO `bl_visited` VALUES ('1388', null, '202.6.237.54', '印度尼西亚', '', '', '', '', '1', '1527086704');
INSERT INTO `bl_visited` VALUES ('1389', null, '71.6.146.186', '美国', '西部', '加利福尼亚州', '', '', '1', '1527088182');
INSERT INTO `bl_visited` VALUES ('1390', null, '201.13.94.98', '巴西', '', '', '', '', '1', '1527091680');
INSERT INTO `bl_visited` VALUES ('1391', null, '46.47.254.142', '俄罗斯', '', '', '', '', '1', '1527098782');
INSERT INTO `bl_visited` VALUES ('1392', null, '201.238.154.182', '厄瓜多尔', '', '', '', '', '1', '1527106660');
INSERT INTO `bl_visited` VALUES ('1393', null, '109.225.158.8', '伊朗', '', '', '', '', '1', '1527112243');
INSERT INTO `bl_visited` VALUES ('1394', null, '157.55.39.239', '美国', '', '', '', '', '1', '1527118185');
INSERT INTO `bl_visited` VALUES ('1395', null, '179.218.80.211', '巴西', '', '', '', '', '2', '1527119904');
INSERT INTO `bl_visited` VALUES ('1396', null, '187.207.42.213', '墨西哥', '', '', '', '', '1', '1527122213');
INSERT INTO `bl_visited` VALUES ('1397', null, '192.241.205.222', '美国', '西部', '加利福尼亚州', '', '', '1', '1527124935');
INSERT INTO `bl_visited` VALUES ('1398', null, '110.5.102.214', '印度尼西亚', '', '', '', '', '1', '1527128725');
INSERT INTO `bl_visited` VALUES ('1399', null, '179.228.70.85', '巴西', '', '', '', '', '1', '1527128801');
INSERT INTO `bl_visited` VALUES ('1400', null, '186.10.67.150', '智利', '', '', '', '', '1', '1527131424');
INSERT INTO `bl_visited` VALUES ('1401', null, '101.132.100.6', '中国', '华东', '上海市', '上海市', '', '1', '1527131678');
INSERT INTO `bl_visited` VALUES ('1402', null, '212.253.89.5', '土耳其', '', '', '', '', '1', '1527133394');
INSERT INTO `bl_visited` VALUES ('1403', null, '212.69.137.227', '意大利', '', '', '', '', '1', '1527145263');
INSERT INTO `bl_visited` VALUES ('1404', null, '189.0.127.125', '巴西', '', '', '', '', '1', '1527145992');
INSERT INTO `bl_visited` VALUES ('1405', null, '106.11.226.195', '中国', '华东', '上海市', '上海市', '', '1', '1527148957');
INSERT INTO `bl_visited` VALUES ('1406', null, '189.46.238.125', '巴西', '', '', '', '', '1', '1527149131');
INSERT INTO `bl_visited` VALUES ('1407', null, '110.78.152.144', '泰国', '', '', '', '', '1', '1527152969');
INSERT INTO `bl_visited` VALUES ('1408', null, '141.212.122.16', '美国', '东部', '密歇根州', '', '', '1', '1527153565');
INSERT INTO `bl_visited` VALUES ('1409', null, '185.49.97.62', '伊朗', '', '', '', '', '1', '1527157312');
INSERT INTO `bl_visited` VALUES ('1410', null, '95.134.113.50', '乌克兰', '', '', '', '', '1', '1527158984');
INSERT INTO `bl_visited` VALUES ('1411', null, '106.75.92.187', '中国', '华北', '北京市', '北京市', '', '1', '1527159727');
INSERT INTO `bl_visited` VALUES ('1412', null, '106.11.226.201', '中国', '华东', '上海市', '上海市', '', '1', '1527169360');
INSERT INTO `bl_visited` VALUES ('1413', null, '45.4.255.83', '阿根廷', '', '', '', '', '1', '1527173227');
INSERT INTO `bl_visited` VALUES ('1414', null, '37.235.237.115', '俄罗斯', '', '', '', '', '1', '1527179904');
INSERT INTO `bl_visited` VALUES ('1415', null, '211.20.153.39', '台湾', '', '台湾省', '', '', '1', '1527183785');
INSERT INTO `bl_visited` VALUES ('1416', null, '189.68.247.131', '巴西', '', '', '', '', '1', '1527185623');
INSERT INTO `bl_visited` VALUES ('1417', null, '171.100.221.164', '泰国', '', '', '', '', '1', '1527189000');
INSERT INTO `bl_visited` VALUES ('1418', null, '104.223.203.218', '美国', '西部', '加利福尼亚州', '', '', '1', '1527189597');
INSERT INTO `bl_visited` VALUES ('1419', null, '93.110.234.122', '伊朗', '', '', '', '', '1', '1527189603');
INSERT INTO `bl_visited` VALUES ('1420', null, '189.152.108.99', '墨西哥', '', '', '', '', '1', '1527191993');
INSERT INTO `bl_visited` VALUES ('1421', null, '196.52.43.88', '荷兰', '', '', '', '', '1', '1527193202');
INSERT INTO `bl_visited` VALUES ('1422', null, '110.228.166.184', '中国', '华北', '河北省', '石家庄市', '', '1', '1527194269');
INSERT INTO `bl_visited` VALUES ('1423', null, '189.131.203.133', '墨西哥', '', '', '', '', '1', '1527197419');
INSERT INTO `bl_visited` VALUES ('1424', null, '92.242.214.173', '伊朗', '', '', '', '', '1', '1527197471');
INSERT INTO `bl_visited` VALUES ('1425', null, '213.98.44.8', '西班牙', '', '', '', '', '1', '1527199081');
INSERT INTO `bl_visited` VALUES ('1426', null, '189.186.99.1', '墨西哥', '', '', '', '', '1', '1527199249');
INSERT INTO `bl_visited` VALUES ('1427', null, '40.77.167.171', '美国', '', '', '', '', '1', '1527207527');
INSERT INTO `bl_visited` VALUES ('1428', null, '185.10.68.241', '罗马尼亚', '', '', '', '', '1', '1527212680');
INSERT INTO `bl_visited` VALUES ('1429', null, '187.202.193.4', '墨西哥', '', '', '', '', '1', '1527214669');
INSERT INTO `bl_visited` VALUES ('1430', null, '185.84.207.42', '西班牙', '', '', '', '', '1', '1527215160');
INSERT INTO `bl_visited` VALUES ('1431', null, '187.149.19.228', '墨西哥', '', '', '', '', '1', '1527215445');
INSERT INTO `bl_visited` VALUES ('1432', null, '187.149.19.228', '墨西哥', '', '', '', '', '1', '1527215445');
INSERT INTO `bl_visited` VALUES ('1433', null, '12.7.109.81', '美国', '', '', '', '', '1', '1527216563');
INSERT INTO `bl_visited` VALUES ('1434', null, '47.92.98.236', '中国', '华北', '河北省', '张家口市', '', '1', '1527218846');
INSERT INTO `bl_visited` VALUES ('1435', null, '47.92.101.29', '中国', '华北', '河北省', '张家口市', '', '1', '1527220039');
INSERT INTO `bl_visited` VALUES ('1436', null, '47.97.204.168', '中国', '华东', '浙江省', '杭州市', '', '1', '1527220226');
INSERT INTO `bl_visited` VALUES ('1437', null, '85.187.169.80', '保加利亚', '', '', '', '', '1', '1527226101');
INSERT INTO `bl_visited` VALUES ('1438', null, '201.43.56.28', '巴西', '', '', '', '', '2', '1527228304');
INSERT INTO `bl_visited` VALUES ('1439', null, '201.43.56.28', '巴西', '', '', '', '', '1', '1527228304');
INSERT INTO `bl_visited` VALUES ('1440', null, '127.0.0.1', '', '', '', '内网IP', '内网IP', '11', '1532431773');
