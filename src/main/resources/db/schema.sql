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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl_comments
-- ----------------------------
INSERT INTO `bl_comments` VALUES ('4', '7', '1514514413', '杨光鸿', '0', '0', '1819500@123.com', null, '120.79.30.96', null, '什么鬼啊？那里来的服务器 ', null, null, '0');
INSERT INTO `bl_comments` VALUES ('5', '7', '1515311572', 'yangxs', '3', '4', 'yanghbwork@163.com', null, '120.79.30.96', null, '当然买的咯~~~', null, null, '4');
INSERT INTO `bl_comments` VALUES ('6', '7', '1515482754', 'VeraJing', '0', '4', '13108901481@163.COM', null, '120.79.30.96', null, '你是个傻逼吗?', null, null, '4');
INSERT INTO `bl_comments` VALUES ('7', '7', '1515482843', 'VeraJing', '0', '0', '13108901481@163.COM', 'https://www.baidu.com', '120.79.30.96', null, 'eeeeeee', null, null, '0');
INSERT INTO `bl_comments` VALUES ('13', '7', '1516260908', 'yangxs', '3', '7', 'yanghbwork@163.com', null, '180.169.128.212', null, '你可不可以不要乱留', null, null, '7');
INSERT INTO `bl_comments` VALUES ('16', '8', '1524820776', 'jon', '0', '0', 'yanghbwork@163.com', null, '120.79.30.96', null, '顶顶~~~~', null, null, '0');
INSERT INTO `bl_comments` VALUES ('18', '8', '1524821243', 'yangxs', '3', '16', 'yanghbwork@163.com', null, '180.169.128.212', null, 'thanks', null, null, '16');
INSERT INTO `bl_comments` VALUES ('26', '7', '1533545174', 'yanghb', '0', '0', 'yanghbwork@163.com', '', '127.0.0.1', null, '1111sdadsadsa', null, null, '0');

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
