/*
 Navicat Premium Data Transfer

 Source Server         : mac_SQLServer2017
 Source Server Type    : SQL Server
 Source Server Version : 14003223
 Source Host           : 192.168.0.199:1433
 Source Catalog        : jeecgboot
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14003223
 File Encoding         : 65001

 Date: 12/03/2020 18:44:52
*/


-- ----------------------------
-- Table structure for demo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[demo]') AND type IN ('U'))
	DROP TABLE [dbo].[demo]
GO

CREATE TABLE [dbo].[demo] (
  [id] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [name] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [key_word] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [punch_time] datetime2(7)  NULL,
  [salary_money] decimal(10,3)  NULL,
  [bonus_money] float(53)  NULL,
  [sex] nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [age] int  NULL,
  [birthday] date  NULL,
  [email] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [content] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [sys_org_code] nvarchar(64) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[demo] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键ID',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'姓名',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'关键词',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'key_word'
GO

EXEC sp_addextendedproperty
'MS_Description', N'打卡时间',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'punch_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工资',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'salary_money'
GO

EXEC sp_addextendedproperty
'MS_Description', N'奖金',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'bonus_money'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别 {男:1,女:2}',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'sex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'年龄',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'age'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生日',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'birthday'
GO

EXEC sp_addextendedproperty
'MS_Description', N'邮箱',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'个人简介',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属部门编码',
'SCHEMA', N'dbo',
'TABLE', N'demo',
'COLUMN', N'sys_org_code'
GO


-- ----------------------------
-- Records of demo
-- ----------------------------
INSERT INTO [dbo].[demo]  VALUES (N'08375a2dff80e821d5a158dd98302b23', N'导入小虎', NULL, NULL, NULL, NULL, N'2', N'28', NULL, NULL, NULL, N'jeecg-boot', N'2019-04-10 11:42:57.0000000', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'1c2ba51b29a42d9de02bbd708ea8121a', N'777777', N'777', N'2018-12-07 19:43:17.0000000', NULL, NULL, NULL, N'7', N'2018-12-07', NULL, NULL, NULL, NULL, N'admin', N'2019-02-21 18:26:04.0000000', NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'1dc29e80be14d1400f165b5c6b30c707', N'zhang daihao', NULL, NULL, NULL, NULL, N'2', NULL, NULL, N'zhangdaiscott@163.com', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'304e651dc769d5c9b6e08fb30457a602', N'小白兔', NULL, NULL, NULL, NULL, N'2', N'28', NULL, NULL, NULL, N'scott', N'2019-01-19 13:12:53.0000000', N'qinfeng', N'2019-01-19 13:13:12.0000000', NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'4', N'Sandy', N'开源，很好', N'2018-12-15 00:00:00.0000000', NULL, NULL, N'2', N'21', N'2018-12-15', N'test4@baomidou.com', N'聪明00', NULL, NULL, N'admin', N'2019-02-25 16:29:27.0000000', NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'42c08b1a2e5b2a96ffa4cc88383d4b11', N'秦50090', NULL, N'2019-01-05 20:33:31.0000000', NULL, NULL, NULL, N'28', N'2019-01-05', NULL, NULL, N'admin', N'2019-01-19 20:33:54.0000000', N'admin', N'2019-01-19 20:34:29.0000000', NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'4436302a0de50bb83025286bc414d6a9', N'zhang daihao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'zhangdaiscott@163.com', NULL, N'admin', N'2019-01-19 15:39:04.0000000', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'4981637bf71b0c1ed1365241dfcfa0ea', N'小虎', NULL, NULL, NULL, NULL, N'2', N'28', NULL, NULL, NULL, N'scott', N'2019-01-19 13:12:53.0000000', N'qinfeng', N'2019-01-19 13:13:12.0000000', NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'5c16e6a5c31296bcd3f1053d5d118815', N'导入zhangdaiscott', NULL, NULL, NULL, NULL, N'1', NULL, N'2019-01-03', NULL, NULL, N'jeecg-boot', N'2019-04-10 11:42:57.0000000', N'admin', N'2019-05-19 18:35:51.0000000', NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'7', N'zhangdaiscott', NULL, NULL, NULL, NULL, N'1', NULL, N'2019-01-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'73bc58611012617ca446d8999379e4ac', N'郭靖11a', N'777', N'2018-12-07 00:00:00.0000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-28 18:16:39.0000000', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'917e240eaa0b1b2d198ae869b64a81c3', N'zhang daihao', NULL, NULL, NULL, NULL, N'2', N'0', N'2018-11-29', N'zhangdaiscott@163.com', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'94420c5d8fc4420dde1e7196154b3a24', N'秦111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'scott', N'2019-01-19 12:54:58.0000000', N'qinfeng', N'2019-01-19 13:12:10.0000000', NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'95740656751c5f22e5932ab0ae33b1e4', N'杨康22a', N'奸臣', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-28 18:16:39.0000000', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'b86897900c770503771c7bb88e5d1e9b', N'scott1', N'开源、很好、hello', NULL, NULL, NULL, N'1', NULL, NULL, N'zhangdaiscott@163.com', NULL, N'scott', N'2019-01-19 12:22:34.0000000', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'c0b7c3de7c62a295ab715943de8a315d', N'秦风555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-01-19 13:18:30.0000000', N'admin', N'2019-01-19 13:18:50.0000000', NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'c28fa8391ef81d6fabd8bd894a7615aa', N'小麦', NULL, NULL, NULL, NULL, N'2', NULL, NULL, N'zhangdaiscott@163.com', NULL, N'jeecg-boot', N'2019-04-04 17:18:09.0000000', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'c2c0d49e3c01913067cf8d1fb3c971d2', N'zhang daihao', NULL, NULL, NULL, NULL, N'2', NULL, NULL, N'zhangdaiscott@163.com', NULL, N'admin', N'2019-01-19 23:37:18.0000000', N'admin', N'2019-01-21 16:49:06.0000000', NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'c96279c666b4b82e3ef1e4e2978701ce', N'报名时间', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-28 18:00:52.0000000', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'd24668721446e8478eeeafe4db66dcff', N'zhang daihao999', NULL, NULL, NULL, NULL, N'1', NULL, NULL, N'zhangdaiscott@163.com', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'eaa6c1116b41dc10a94eae34cf990133', N'zhang daihao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'zhangdaiscott@163.com', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[demo]  VALUES (N'ffa9da1ad40632dfcabac51d766865bd', N'秦999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-01-19 23:36:34.0000000', N'admin', N'2019-02-14 17:30:43.0000000', NULL)
GO


-- ----------------------------
-- Table structure for jeecg_monthly_growth_analysis
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[jeecg_monthly_growth_analysis]') AND type IN ('U'))
	DROP TABLE [dbo].[jeecg_monthly_growth_analysis]
GO

CREATE TABLE [dbo].[jeecg_monthly_growth_analysis] (
  [id] int  NOT NULL,
  [year] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [month] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [main_income] decimal(18,2)  NULL,
  [other_income] decimal(18,2)  NULL
)
GO

ALTER TABLE [dbo].[jeecg_monthly_growth_analysis] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'月份',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_monthly_growth_analysis',
'COLUMN', N'month'
GO

EXEC sp_addextendedproperty
'MS_Description', N'佣金/主营收入',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_monthly_growth_analysis',
'COLUMN', N'main_income'
GO

EXEC sp_addextendedproperty
'MS_Description', N'其他收入',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_monthly_growth_analysis',
'COLUMN', N'other_income'
GO


-- ----------------------------
-- Records of jeecg_monthly_growth_analysis
-- ----------------------------
INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'1', N'2018', N'1月', N'114758.90', N'4426054.19')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'2', N'2018', N'2月', N'8970734.12', N'1230188.67')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'3', N'2018', N'3月', N'26755421.23', N'2048836.84')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'4', N'2018', N'4月', N'2404990.63', N'374171.44')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'5', N'2018', N'5月', N'5450793.02', N'502306.10')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'6', N'2018', N'6月', N'17186212.11', N'1375154.97')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'7', N'2018', N'7月', N'579975.67', N'461483.99')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'8', N'2018', N'8月', N'1393590.06', N'330403.76')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'9', N'2018', N'9月', N'735761.21', N'1647474.92')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'10', N'2018', N'10月', N'1670442.44', N'3423368.33')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'11', N'2018', N'11月', N'2993130.34', N'3552024.00')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'12', N'2018', N'12月', N'4206227.26', N'3645614.92')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'13', N'2019', N'1月', N'483834.66', N'418046.77')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'14', N'2019', N'2月', N'11666578.65', N'731352.20')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'15', N'2019', N'3月', N'27080982.08', N'1878538.81')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'16', N'2019', N'4月', N'.00', N'.00')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'17', N'2019', N'5月', N'.00', N'.00')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'18', N'2019', N'6月', N'.00', N'.00')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'19', N'2019', N'7月', N'.00', N'.00')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'20', N'2019', N'8月', N'.00', N'.00')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'21', N'2019', N'9月', N'.00', N'.00')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'22', N'2019', N'10月', N'.00', N'.00')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'23', N'2019', N'11月', N'.00', N'.00')
GO

INSERT INTO [dbo].[jeecg_monthly_growth_analysis]  VALUES (N'24', N'2019', N'12月', N'.00', N'.00')
GO


-- ----------------------------
-- Table structure for jeecg_order_customer
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[jeecg_order_customer]') AND type IN ('U'))
	DROP TABLE [dbo].[jeecg_order_customer]
GO

CREATE TABLE [dbo].[jeecg_order_customer] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [sex] nvarchar(4) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [idcard] nvarchar(18) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [idcard_pic] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [telphone] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [order_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[jeecg_order_customer] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_customer',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'客户名',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_customer',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_customer',
'COLUMN', N'sex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'身份证号码',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_customer',
'COLUMN', N'idcard'
GO

EXEC sp_addextendedproperty
'MS_Description', N'身份证扫描件',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_customer',
'COLUMN', N'idcard_pic'
GO

EXEC sp_addextendedproperty
'MS_Description', N'电话1',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_customer',
'COLUMN', N'telphone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'外键',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_customer',
'COLUMN', N'order_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_customer',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_customer',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_customer',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_customer',
'COLUMN', N'update_time'
GO


-- ----------------------------
-- Records of jeecg_order_customer
-- ----------------------------
INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'15538561502720', N'3333', N'1', N'', NULL, N'', N'0d4a2e67b538ee1bc881e5ed34f670f0', N'jeecg-boot', N'2019-03-29 18:42:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'15538561512681', N'3332333', N'2', N'', NULL, N'', N'0d4a2e67b538ee1bc881e5ed34f670f0', N'jeecg-boot', N'2019-03-29 18:42:55.0000000', N'admin', N'2019-03-29 18:43:12.0000000')
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'15538561550142', N'4442', N'2', N'', NULL, N'', N'0d4a2e67b538ee1bc881e5ed34f670f0', N'jeecg-boot', N'2019-03-29 18:42:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'15541168497342', N'444', N'', N'', N'', N'', N'f71f7f8930b5b6b1703d9948d189982b', N'admin', N'2019-04-01 19:08:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'15541168499553', N'5555', N'', N'', N'', N'', N'f71f7f8930b5b6b1703d9948d189982b', N'admin', N'2019-04-01 19:08:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'15541169272690', N'小王1', N'1', N'', N'', N'18611788525', N'f618a85b17e2c4dd58d268220c8dd9a1', N'admin', N'2019-04-01 19:10:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'15541169288141', N'效力1', N'1', N'', N'', N'18611788525', N'f618a85b17e2c4dd58d268220c8dd9a1', N'admin', N'2019-04-01 19:10:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'15541169441372', N'小红1', N'1', N'', N'', N'18611788525', N'f618a85b17e2c4dd58d268220c8dd9a1', N'admin', N'2019-04-01 19:10:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'15543695362380', N'1111', N'', N'', N'', N'', N'5d6e2b9e44037526270b6206196f6689', N'admin', N'2019-04-04 17:19:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'15543695397221', N'222', N'', N'', N'', N'', N'5d6e2b9e44037526270b6206196f6689', N'admin', N'2019-04-04 17:19:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'15543695398992', N'333', N'', N'', N'', N'', N'5d6e2b9e44037526270b6206196f6689', N'admin', N'2019-04-04 17:19:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'18dc5eb1068ccdfe90e358951ca1a3d6', N'dr2', N'', N'', N'', N'', N'8ab1186410a65118c4d746eb085d3bed', N'admin', N'2019-04-04 17:25:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'195d280490fe88ca1475512ddcaf2af9', N'12', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'217a2bf83709775d2cd85bf598392327', N'2', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'22bc052ae53ed09913b946abba93fa89', N'1', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'23bafeae88126c3bf3322a29a04f0d5e', N'x秦风', NULL, NULL, NULL, NULL, N'163e2efcbc6d7d54eb3f8a137da8a75a', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'25c4a552c6843f36fad6303bfa99a382', N'1', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'2d32144e2bee63264f3f16215c258381', N'33333', N'2', NULL, NULL, NULL, N'd908bfee3377e946e59220c4a4eb414a', N'admin', N'2019-04-01 16:27:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'2d43170d6327f941bd1a017999495e25', N'1', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'2e5f62a8b6e0a0ce19b52a6feae23d48', N'3', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'313abf99558ac5f13ecca3b87e562ad1', N'scott', N'2', NULL, NULL, NULL, N'b190737bd04cca8360e6f87c9ef9ec4e', N'admin', N'2019-02-25 16:29:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'34a1c5cf6cee360ed610ed0bed70e0f9', N'导入秦风', NULL, NULL, NULL, NULL, N'a2cce75872cc8fcc47f78de9ffd378c2', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'3c87400f8109b4cf43c5598f0d40e34d', N'2', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'40964bcbbecb38e5ac15e6d08cf3cd43', N'233', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'41e3dee0b0b6e6530eccb7fbb22fd7a3', N'4555', N'1', N'370285198602058823', NULL, N'18611788674', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'4808ae8344c7679a4a2f461db5dc3a70', N'44', N'1', N'370285198602058823', NULL, N'18611788674', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'4b6cef12f195fad94d57279b2241770d', N'dr12', N'', N'', N'', N'', N'8ab1186410a65118c4d746eb085d3bed', N'admin', N'2019-04-04 17:25:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'524e695283f8e8c256cc24f39d6d8542', N'小王', N'2', N'370285198604033222', NULL, N'18611788674', N'eb13ab35d2946a2b0cfe3452bca1e73f', N'admin', N'2019-02-25 16:29:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'57c2a8367db34016114cbc9fa368dba0', N'2', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'5df36a1608b8c7ac99ad9bc408fe54bf', N'4', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'6b694e9ba54bb289ae9cc499e40031e7', N'x秦风', N'1', NULL, NULL, NULL, N'b190737bd04cca8360e6f87c9ef9ec4e', N'admin', N'2019-02-25 16:29:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'6c6fd2716c2dcd044ed03c2c95d261f8', N'李四', N'2', N'370285198602058833', N'', N'18611788676', N'f71f7f8930b5b6b1703d9948d189982b', N'admin', N'2019-04-01 19:08:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'742d008214dee0afff2145555692973e', N'秦风', N'1', N'370285198602058822', NULL, N'18611788676', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'7469c3e5d371767ff90a739d297689b5', N'导入秦风', N'2', NULL, NULL, NULL, N'3a867ebf2cebce9bae3f79676d8d86f3', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', N'admin', N'2019-04-08 17:35:02.0000000')
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'7a96e2c7b24847d4a29940dbc0eda6e5', N'drscott', NULL, NULL, NULL, NULL, N'e73434dad84ebdce2d4e0c2a2f06d8ea', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'7f5a40818e225ee18bda6da7932ac5f9', N'2', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'8011575abfd7c8085e71ff66df1124b9', N'1', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'8404f31d7196221a573c9bd6c8f15003', N'小张', N'1', N'370285198602058211', NULL, N'18611788676', N'eb13ab35d2946a2b0cfe3452bca1e73f', N'admin', N'2019-02-25 16:29:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'859020e10a2f721f201cdbff78cf7b9f', N'scott', NULL, NULL, NULL, NULL, N'163e2efcbc6d7d54eb3f8a137da8a75a', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'8cc3c4d26e3060975df3a2adb781eeb4', N'dr33', NULL, NULL, NULL, NULL, N'b2feb454e43c46b2038768899061e464', N'jeecg-boot', N'2019-04-04 17:23:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'8d1725c23a6a50685ff0dedfd437030d', N'4', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'933cae3a79f60a93922d59aace5346ce', N'小王', NULL, N'370285198604033222', NULL, N'18611788674', N'6a719071a29927a14f19482f8693d69a', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'9bdb5400b709ba4eaf3444de475880d7', N'dr22', NULL, NULL, NULL, NULL, N'22c17790dcd04b296c4a2a089f71895f', N'jeecg-boot', N'2019-04-04 17:23:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'9f87677f70e5f864679314389443a3eb', N'33', N'2', N'370285198602058823', NULL, N'18611788674', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'a2c2b7101f75c02deb328ba777137897', N'44', N'2', N'370285198602058823', NULL, N'18611788674', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'ab4d002dc552c326147e318c87d3bed4', N'ddddd', N'1', N'370285198604033222', NULL, N'18611755848', N'9a57c850e4f68cf94ef7d8585dbaf7e6', N'admin', N'2019-04-04 17:30:47.0000000', N'admin', N'2019-04-04 17:31:17.0000000')
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'ad116f722a438e5f23095a0b5fcc8e89', N'dr秦风', NULL, NULL, NULL, NULL, N'e73434dad84ebdce2d4e0c2a2f06d8ea', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'b1ba147b75f5eaa48212586097fc3fd1', N'2', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'b43bf432c251f0e6b206e403b8ec29bc', N'lisi', NULL, NULL, NULL, NULL, N'f8889aaef6d1bccffd98d2889c0aafb5', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'bcdd300a7d44c45a66bdaac14903c801', N'33', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'beb983293e47e2dc1a9b3d649aa3eb34', N'ddd3', NULL, NULL, NULL, NULL, N'd908bfee3377e946e59220c4a4eb414a', N'admin', N'2019-04-01 16:27:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'c219808196406f1b8c7f1062589de4b5', N'44', N'1', N'370285198602058823', NULL, N'18611788674', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'c8ed061d4b27c0c7a64e100f2b1c8ab5', N'张经理', N'2', N'370285198602058823', NULL, N'18611788674', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'cc5de4af7f06cd6d250965ebe92a0395', N'1', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'cf8817bd703bf7c7c77a2118edc26cc7', N'1', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'd72b26fae42e71270fce2097a88da58a', N'导入scott', NULL, N'www', NULL, NULL, N'3a867ebf2cebce9bae3f79676d8d86f3', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', N'admin', N'2019-04-08 17:35:05.0000000')
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'dbdc60a6ac1a8c43f24afee384039b68', N'xiaowang', NULL, NULL, NULL, NULL, N'f8889aaef6d1bccffd98d2889c0aafb5', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'dc5883b50466de94d900919ed96d97af', N'33', N'1', N'370285198602058823', NULL, N'18611788674', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'deeb73e553ad8dc0a0b3cfd5a338de8e', N'3333', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'e2570278bf189ac05df3673231326f47', N'1', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'e39cb23bb950b2bdedfc284686c6128a', N'1', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'e46fe9111a9100844af582a18a2aa402', N'1', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'ee7af0acb9beb9bf8d8b3819a8a7fdc3', N'2', NULL, NULL, NULL, NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'f5d2605e844192d9e548f9bd240ac908', N'小张', NULL, N'370285198602058211', NULL, N'18611788676', N'6a719071a29927a14f19482f8693d69a', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_customer]  VALUES (N'f6db6547382126613a3e46e7cd58a5f2', N'导入scott', NULL, NULL, NULL, NULL, N'a2cce75872cc8fcc47f78de9ffd378c2', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO


-- ----------------------------
-- Table structure for jeecg_order_main
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[jeecg_order_main]') AND type IN ('U'))
	DROP TABLE [dbo].[jeecg_order_main]
GO

CREATE TABLE [dbo].[jeecg_order_main] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [order_code] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ctype] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [order_date] datetime2(7)  NULL,
  [order_money] float(53)  NULL,
  [content] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[jeecg_order_main] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_main',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单号',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_main',
'COLUMN', N'order_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单类型',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_main',
'COLUMN', N'ctype'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单日期',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_main',
'COLUMN', N'order_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单金额',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_main',
'COLUMN', N'order_money'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单备注',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_main',
'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_main',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_main',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_main',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_main',
'COLUMN', N'update_time'
GO


-- ----------------------------
-- Records of jeecg_order_main
-- ----------------------------
INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'163e2efcbc6d7d54eb3f8a137da8a75a', N'B100', NULL, NULL, N'3000', NULL, N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'3a867ebf2cebce9bae3f79676d8d86f3', N'导入B100', N'2222', NULL, N'3000', NULL, N'jeecg-boot', N'2019-03-29 18:43:59.0000000', N'admin', N'2019-04-08 17:35:13.0000000')
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'4bca3ea6881d39dbf67ef1e42c649766', N'1212', NULL, NULL, NULL, NULL, N'admin', N'2019-04-03 10:55:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'4cba137333127e8e31df7ad168cc3732', N'青岛订单A0001', N'2', N'2019-04-03 10:56:07.0000000', NULL, NULL, N'admin', N'2019-04-03 10:56:11.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'54e739bef5b67569c963c38da52581ec', N'NC911', N'1', N'2019-02-18 09:58:51.0000000', N'40', NULL, N'admin', N'2019-02-18 09:58:47.0000000', N'admin', N'2019-02-18 09:58:59.0000000')
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'5d6e2b9e44037526270b6206196f6689', N'N333', NULL, N'2019-04-04 17:19:11.0000000', NULL, N'聪明00', N'admin', N'2019-04-04 17:19:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'6a719071a29927a14f19482f8693d69a', N'c100', NULL, NULL, N'5000', NULL, N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'8ab1186410a65118c4d746eb085d3bed', N'导入400', N'1', N'2019-02-18 09:58:51.0000000', N'40', NULL, N'admin', N'2019-02-18 09:58:47.0000000', N'admin', N'2019-02-18 09:58:59.0000000')
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'9a57c850e4f68cf94ef7d8585dbaf7e6', N'halou100dd', NULL, N'2019-04-04 17:30:32.0000000', NULL, NULL, N'admin', N'2019-04-04 17:30:41.0000000', N'admin', N'2019-04-04 17:31:08.0000000')
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'a2cce75872cc8fcc47f78de9ffd378c2', N'导入B100', NULL, NULL, N'3000', NULL, N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'b190737bd04cca8360e6f87c9ef9ec4e', N'B0018888', N'1', NULL, NULL, NULL, N'admin', N'2019-02-15 18:39:29.0000000', N'admin', N'2019-02-15 18:39:37.0000000')
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'd908bfee3377e946e59220c4a4eb414a', N'SSSS001', NULL, NULL, N'599', NULL, N'admin', N'2019-04-01 15:43:03.0000000', N'admin', N'2019-04-01 16:26:52.0000000')
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'e73434dad84ebdce2d4e0c2a2f06d8ea', N'导入200', NULL, NULL, N'3000', NULL, N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'eb13ab35d2946a2b0cfe3452bca1e73f', N'BJ9980', N'1', NULL, N'90', NULL, N'admin', N'2019-02-16 17:36:42.0000000', N'admin', N'2019-02-16 17:46:16.0000000')
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'f618a85b17e2c4dd58d268220c8dd9a1', N'N001', NULL, N'2019-04-01 19:09:02.0000000', N'2222', NULL, N'admin', N'2019-04-01 19:09:47.0000000', N'admin', N'2019-04-01 19:10:00.0000000')
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'f71f7f8930b5b6b1703d9948d189982b', N'BY911', NULL, N'2019-04-06 19:08:39.0000000', NULL, NULL, N'admin', N'2019-04-01 16:36:02.0000000', N'admin', N'2019-04-01 16:36:08.0000000')
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'f8889aaef6d1bccffd98d2889c0aafb5', N'A100', NULL, N'2018-10-10 00:00:00.0000000', N'6000', NULL, N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_main]  VALUES (N'fe81ee5d19bbf9eef2066d4f29dfbe0f', N'uuuu', NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-03 11:00:39.0000000', NULL, NULL)
GO


-- ----------------------------
-- Table structure for jeecg_order_ticket
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[jeecg_order_ticket]') AND type IN ('U'))
	DROP TABLE [dbo].[jeecg_order_ticket]
GO

CREATE TABLE [dbo].[jeecg_order_ticket] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ticket_code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [tickect_date] datetime2(7)  NULL,
  [order_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[jeecg_order_ticket] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_ticket',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'航班号',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_ticket',
'COLUMN', N'ticket_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'航班时间',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_ticket',
'COLUMN', N'tickect_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'外键',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_ticket',
'COLUMN', N'order_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_ticket',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_ticket',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_ticket',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_order_ticket',
'COLUMN', N'update_time'
GO


-- ----------------------------
-- Records of jeecg_order_ticket
-- ----------------------------
INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'0f0e3a40a215958f807eea08a6e1ac0a', N'88', NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'0fa3bd0bbcf53650c0bb3c0cac6d8cb7', N'ffff', N'2019-02-21 00:00:00.0000000', N'eb13ab35d2946a2b0cfe3452bca1e73f', N'admin', N'2019-02-25 16:29:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'14221afb4f5f749c1deef26ac56fdac3', N'33', N'2019-03-09 00:00:00.0000000', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'15538561502730', N'222', NULL, N'0d4a2e67b538ee1bc881e5ed34f670f0', N'jeecg-boot', N'2019-03-29 18:42:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'15538561526461', N'2244', N'2019-03-29 00:00:00.0000000', N'0d4a2e67b538ee1bc881e5ed34f670f0', N'jeecg-boot', N'2019-03-29 18:42:55.0000000', N'admin', N'2019-03-29 18:43:26.0000000')
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'15541168478913', N'hhhhh', NULL, N'f71f7f8930b5b6b1703d9948d189982b', N'admin', N'2019-04-01 19:08:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'15541169272810', N'22211', N'2019-04-01 19:09:40.0000000', N'f618a85b17e2c4dd58d268220c8dd9a1', N'admin', N'2019-04-01 19:10:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'15541169302331', N'333311', N'2019-04-01 19:09:40.0000000', N'f618a85b17e2c4dd58d268220c8dd9a1', N'admin', N'2019-04-01 19:10:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'15541169713092', N'333311', N'2019-04-01 19:09:47.0000000', N'f618a85b17e2c4dd58d268220c8dd9a1', N'admin', N'2019-04-01 19:10:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'15542604293170', N'c', NULL, N'fe81ee5d19bbf9eef2066d4f29dfbe0f', N'jeecg-boot', N'2019-04-03 11:00:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'15542604374431', N'd', NULL, N'fe81ee5d19bbf9eef2066d4f29dfbe0f', N'jeecg-boot', N'2019-04-03 11:00:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'15543695362380', N'ccc2', NULL, N'5d6e2b9e44037526270b6206196f6689', N'admin', N'2019-04-04 17:19:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'15543695381291', N'cccc1', NULL, N'5d6e2b9e44037526270b6206196f6689', N'admin', N'2019-04-04 17:19:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'15543695740352', N'dddd', NULL, N'5d6e2b9e44037526270b6206196f6689', N'admin', N'2019-04-04 17:19:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'18905bc89ee3851805aab38ed3b505ec', N'44', NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'1f809cbd26f4e574697e1c10de575d72', N'A100', NULL, N'e73434dad84ebdce2d4e0c2a2f06d8ea', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'21051adb51529bdaa8798b5a3dd7f7f7', N'C10029', N'2019-02-20 00:00:00.0000000', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'269576e766b917f8b6509a2bb0c4d4bd', N'A100', NULL, N'163e2efcbc6d7d54eb3f8a137da8a75a', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'2d473ffc79e5b38a17919e15f8b7078e', N'66', N'2019-03-29 00:00:00.0000000', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'3655b66fca5fef9c6aac6d70182ffda2', N'AA123', N'2019-04-01 00:00:00.0000000', N'd908bfee3377e946e59220c4a4eb414a', N'admin', N'2019-04-01 16:27:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'365d5919155473ade45840fd626c51a9', N'dddd', N'2019-04-04 17:25:29.0000000', N'8ab1186410a65118c4d746eb085d3bed', N'admin', N'2019-04-04 17:25:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'4889a782e78706ab4306a925cfb163a5', N'C34', N'2019-04-01 00:00:00.0000000', N'd908bfee3377e946e59220c4a4eb414a', N'admin', N'2019-04-01 16:35:00.0000000', N'admin', N'2019-04-01 16:35:07.0000000')
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'48d385796382cf87fa4bdf13b42d9a28', N'导入A100', NULL, N'3a867ebf2cebce9bae3f79676d8d86f3', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'541faed56efbeb4be9df581bd8264d3a', N'88', NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'57a27a7dfd6a48e7d981f300c181b355', N'6', N'2019-03-30 00:00:00.0000000', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'5ce4dc439c874266e42e6c0ff8dc8b5c', N'导入A100', NULL, N'a2cce75872cc8fcc47f78de9ffd378c2', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'5f16e6a64ab22a161bd94cc205f2c662', N'222', N'2019-02-23 00:00:00.0000000', N'b190737bd04cca8360e6f87c9ef9ec4e', N'admin', N'2019-02-25 16:29:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'645a06152998a576c051474157625c41', N'88', N'2019-04-04 17:25:31.0000000', N'8ab1186410a65118c4d746eb085d3bed', N'admin', N'2019-04-04 17:25:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'6e3562f2571ea9e96b2d24497b5f5eec', N'55', N'2019-03-23 00:00:00.0000000', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'8fd2b389151568738b1cc4d8e27a6110', N'导入A100', NULL, N'a2cce75872cc8fcc47f78de9ffd378c2', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'93f1a84053e546f59137432ff5564cac', N'55', NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'969ddc5d2e198d50903686917f996470', N'A10029', N'2019-04-01 00:00:00.0000000', N'f71f7f8930b5b6b1703d9948d189982b', N'admin', N'2019-04-01 19:08:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'96e7303a8d22a5c384e08d7bcf7ac2bf', N'A100', NULL, N'e73434dad84ebdce2d4e0c2a2f06d8ea', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'9e8a3336f6c63f558f2b68ce2e1e666e', N'dddd', NULL, N'9a57c850e4f68cf94ef7d8585dbaf7e6', N'admin', N'2019-04-04 17:30:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'a28db02c810c65660015095cb81ed434', N'A100', NULL, N'f8889aaef6d1bccffd98d2889c0aafb5', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'b217bb0e4ec6a45b6cbf6db880060c0f', N'A100', NULL, N'6a719071a29927a14f19482f8693d69a', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'ba708df70bb2652ed1051a394cfa0bb3', N'333', NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'beabbfcb195d39bedeeafe8318794562', N'A1345', N'2019-04-01 00:00:00.0000000', N'd908bfee3377e946e59220c4a4eb414a', N'admin', N'2019-04-01 16:27:04.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'bf450223cb505f89078a311ef7b6ed16', N'777', N'2019-03-30 00:00:00.0000000', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'c06165b6603e3e1335db187b3c841eef', N'fff', NULL, N'9a57c850e4f68cf94ef7d8585dbaf7e6', N'admin', N'2019-04-04 17:30:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'c113136abc26ace3a6da4e41d7dc1c7e', N'44', N'2019-03-15 00:00:00.0000000', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'c1abdc2e30aeb25de13ad6ee3488ac24', N'77', N'2019-03-22 00:00:00.0000000', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'c23751a7deb44f553ce50a94948c042a', N'33', N'2019-03-09 00:00:00.0000000', N'8ab1186410a65118c4d746eb085d3bed', N'admin', N'2019-04-04 17:25:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'c64547666b634b3d6a0feedcf05f25ce', N'C10019', N'2019-04-01 00:00:00.0000000', N'f71f7f8930b5b6b1703d9948d189982b', N'admin', N'2019-04-01 19:08:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'c8b8d3217f37da78dddf711a1f7da485', N'A100', NULL, N'163e2efcbc6d7d54eb3f8a137da8a75a', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'cab691c1c1ff7a6dfd7248421917fd3c', N'A100', NULL, N'f8889aaef6d1bccffd98d2889c0aafb5', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'cca10a9a850b456d9b72be87da7b0883', N'77', NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'd2fbba11f4814d9b1d3cb1a3f342234a', N'C10019', N'2019-02-18 00:00:00.0000000', N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'd746c1ed956a562e97eef9c6faf94efa', N'111', N'2019-02-01 00:00:00.0000000', N'b190737bd04cca8360e6f87c9ef9ec4e', N'admin', N'2019-02-25 16:29:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'dbdb07a16826808e4276e84b2aa4731a', N'导入A100', NULL, N'3a867ebf2cebce9bae3f79676d8d86f3', N'jeecg-boot', N'2019-03-29 18:43:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'e7075639c37513afc0bbc4bf7b5d98b9', N'88', NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'fa759dc104d0371f8aa28665b323dab6', N'888', NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[jeecg_order_ticket]  VALUES (N'ff197da84a9a3af53878eddc91afbb2e', N'33', NULL, N'54e739bef5b67569c963c38da52581ec', N'admin', N'2019-03-15 16:50:15.0000000', NULL, NULL)
GO


-- ----------------------------
-- Table structure for jeecg_project_nature_income
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[jeecg_project_nature_income]') AND type IN ('U'))
	DROP TABLE [dbo].[jeecg_project_nature_income]
GO

CREATE TABLE [dbo].[jeecg_project_nature_income] (
  [id] int  NOT NULL,
  [nature] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [insurance_fee] decimal(18,2)  NULL,
  [risk_consulting_fee] decimal(18,2)  NULL,
  [evaluation_fee] decimal(18,2)  NULL,
  [insurance_evaluation_fee] decimal(18,2)  NULL,
  [bidding_consulting_fee] decimal(18,2)  NULL,
  [interol_consulting_fee] decimal(18,2)  NULL
)
GO

ALTER TABLE [dbo].[jeecg_project_nature_income] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'项目性质',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_project_nature_income',
'COLUMN', N'nature'
GO

EXEC sp_addextendedproperty
'MS_Description', N'保险经纪佣金费',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_project_nature_income',
'COLUMN', N'insurance_fee'
GO

EXEC sp_addextendedproperty
'MS_Description', N'风险咨询费',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_project_nature_income',
'COLUMN', N'risk_consulting_fee'
GO

EXEC sp_addextendedproperty
'MS_Description', N'承保公估评估费',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_project_nature_income',
'COLUMN', N'evaluation_fee'
GO

EXEC sp_addextendedproperty
'MS_Description', N'保险公估费',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_project_nature_income',
'COLUMN', N'insurance_evaluation_fee'
GO

EXEC sp_addextendedproperty
'MS_Description', N'投标咨询费',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_project_nature_income',
'COLUMN', N'bidding_consulting_fee'
GO

EXEC sp_addextendedproperty
'MS_Description', N'内控咨询费',
'SCHEMA', N'dbo',
'TABLE', N'jeecg_project_nature_income',
'COLUMN', N'interol_consulting_fee'
GO


-- ----------------------------
-- Records of jeecg_project_nature_income
-- ----------------------------
INSERT INTO [dbo].[jeecg_project_nature_income]  VALUES (N'1', N'市场化-电商业务', N'4865.41', N'.00', N'.00', N'.00', N'.00', N'.00')
GO

INSERT INTO [dbo].[jeecg_project_nature_income]  VALUES (N'2', N'统筹型', N'35767081.88', N'.00', N'.00', N'.00', N'.00', N'.00')
GO

INSERT INTO [dbo].[jeecg_project_nature_income]  VALUES (N'3', N'市场化-非股东', N'1487045.35', N'.00', N'.00', N'.00', N'.00', N'.00')
GO

INSERT INTO [dbo].[jeecg_project_nature_income]  VALUES (N'4', N'市场化-参控股', N'382690.56', N'.00', N'.00', N'.00', N'.00', N'.00')
GO

INSERT INTO [dbo].[jeecg_project_nature_income]  VALUES (N'5', N'市场化-员工福利', N'256684.91', N'.00', N'.00', N'.00', N'.00', N'.00')
GO

INSERT INTO [dbo].[jeecg_project_nature_income]  VALUES (N'6', N'市场化-再保险', N'563451.03', N'.00', N'.00', N'.00', N'.00', N'.00')
GO

INSERT INTO [dbo].[jeecg_project_nature_income]  VALUES (N'7', N'市场化-海外业务', N'760576.25', N'770458.75', N'.00', N'.00', N'.00', N'.00')
GO

INSERT INTO [dbo].[jeecg_project_nature_income]  VALUES (N'8', N'市场化-风险咨询', N'910183.93', N'.00', N'.00', N'.00', N'.00', N'226415.09')
GO


-- ----------------------------
-- Table structure for joa_demo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[joa_demo]') AND type IN ('U'))
	DROP TABLE [dbo].[joa_demo]
GO

CREATE TABLE [dbo].[joa_demo] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [days] int  NULL,
  [begin_date] datetime2(7)  NULL,
  [end_date] datetime2(7)  NULL,
  [reason] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [bpm_status] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[joa_demo] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'joa_demo',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请假人',
'SCHEMA', N'dbo',
'TABLE', N'joa_demo',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请假天数',
'SCHEMA', N'dbo',
'TABLE', N'joa_demo',
'COLUMN', N'days'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开始时间',
'SCHEMA', N'dbo',
'TABLE', N'joa_demo',
'COLUMN', N'begin_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请假结束时间',
'SCHEMA', N'dbo',
'TABLE', N'joa_demo',
'COLUMN', N'end_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请假原因',
'SCHEMA', N'dbo',
'TABLE', N'joa_demo',
'COLUMN', N'reason'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程状态',
'SCHEMA', N'dbo',
'TABLE', N'joa_demo',
'COLUMN', N'bpm_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人id',
'SCHEMA', N'dbo',
'TABLE', N'joa_demo',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'joa_demo',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'joa_demo',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人id',
'SCHEMA', N'dbo',
'TABLE', N'joa_demo',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程测试',
'SCHEMA', N'dbo',
'TABLE', N'joa_demo'
GO


-- ----------------------------
-- Table structure for onl_cgform_button
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[onl_cgform_button]') AND type IN ('U'))
	DROP TABLE [dbo].[onl_cgform_button]
GO

CREATE TABLE [dbo].[onl_cgform_button] (
  [ID] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [BUTTON_CODE] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BUTTON_ICON] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BUTTON_NAME] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BUTTON_STATUS] nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BUTTON_STYLE] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EXP] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CGFORM_HEAD_ID] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [OPT_TYPE] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ORDER_NUM] int  NULL
)
GO

ALTER TABLE [dbo].[onl_cgform_button] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键ID',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_button',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'按钮编码',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_button',
'COLUMN', N'BUTTON_CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'按钮图标',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_button',
'COLUMN', N'BUTTON_ICON'
GO

EXEC sp_addextendedproperty
'MS_Description', N'按钮名称',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_button',
'COLUMN', N'BUTTON_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'按钮状态',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_button',
'COLUMN', N'BUTTON_STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'按钮样式',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_button',
'COLUMN', N'BUTTON_STYLE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表达式',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_button',
'COLUMN', N'EXP'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单ID',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_button',
'COLUMN', N'CGFORM_HEAD_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'按钮类型',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_button',
'COLUMN', N'OPT_TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_button',
'COLUMN', N'ORDER_NUM'
GO


-- ----------------------------
-- Records of onl_cgform_button
-- ----------------------------
INSERT INTO [dbo].[onl_cgform_button]  VALUES (N'a45bc1c6fba96be6b0c91ffcdd6b54aa', N'genereate_person_config', N'icon-edit', N'生成配置', N'1', N'link', NULL, N'e2faf977fdaf4b25a524f58c2441a51c', N'js', NULL)
GO

INSERT INTO [dbo].[onl_cgform_button]  VALUES (N'cc1d12de57a1a41d3986ed6d13e3ac11', N'链接按钮测试', N'icon-edit', N'自定义link', N'1', N'link', NULL, N'd35109c3632c4952a19ecc094943dd71', N'js', NULL)
GO

INSERT INTO [dbo].[onl_cgform_button]  VALUES (N'ebcc48ef0bde4433a6faf940a5e170c1', N'button按钮测试', N'icon-edit', N'自定义button', N'1', N'button', NULL, N'd35109c3632c4952a19ecc094943dd71', N'js', NULL)
GO


-- ----------------------------
-- Table structure for onl_cgform_enhance_java
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[onl_cgform_enhance_java]') AND type IN ('U'))
	DROP TABLE [dbo].[onl_cgform_enhance_java]
GO

CREATE TABLE [dbo].[onl_cgform_enhance_java] (
  [ID] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [BUTTON_CODE] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CG_JAVA_TYPE] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CG_JAVA_VALUE] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CGFORM_HEAD_ID] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ACTIVE_STATUS] nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EVENT] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[onl_cgform_enhance_java] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'按钮编码',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_java',
'COLUMN', N'BUTTON_CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_java',
'COLUMN', N'CG_JAVA_TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数值',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_java',
'COLUMN', N'CG_JAVA_VALUE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单ID',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_java',
'COLUMN', N'CGFORM_HEAD_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生效状态',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_java',
'COLUMN', N'ACTIVE_STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'事件状态(end:结束，start:开始)',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_java',
'COLUMN', N'EVENT'
GO


-- ----------------------------
-- Table structure for onl_cgform_enhance_js
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[onl_cgform_enhance_js]') AND type IN ('U'))
	DROP TABLE [dbo].[onl_cgform_enhance_js]
GO

CREATE TABLE [dbo].[onl_cgform_enhance_js] (
  [ID] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CG_JS] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CG_JS_TYPE] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CONTENT] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CGFORM_HEAD_ID] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[onl_cgform_enhance_js] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键ID',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_js',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'JS增强内容',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_js',
'COLUMN', N'CG_JS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_js',
'COLUMN', N'CG_JS_TYPE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_js',
'COLUMN', N'CONTENT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单ID',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_js',
'COLUMN', N'CGFORM_HEAD_ID'
GO


-- ----------------------------
-- Records of onl_cgform_enhance_js
-- ----------------------------
INSERT INTO [dbo].[onl_cgform_enhance_js]  VALUES (N'274b5d741a0262d3411958f0c465c5f0', N'genereate_person_config(row){
console.log(''选择'',row)
alert(row.name + ''，个人积分配置生成成功！'');
}', N'list', NULL, N'e2faf977fdaf4b25a524f58c2441a51c')
GO

INSERT INTO [dbo].[onl_cgform_enhance_js]  VALUES (N'2cbaf25f1edb620bea2d8de07f8233a1', N'air_china_post_materiel_item_onlChange(){
    return {
        wl_name(){
           
            let id = event.row.id
            let cnum = event.row.num
            let value = event.value
            let targrt = event.target
            let columnKey = event.column.key
           let nval = 200*cnum
           console.log(''row'',event.row);
           console.log(''cnum'',cnum);
           let otherValues = {''jifen'': nval}
              
                that.triggleChangeValues(targrt,id,otherValues)

        }
    }
}', N'form', NULL, N'e67d26b610dd414c884c4dbb24e71ce3')
GO

INSERT INTO [dbo].[onl_cgform_enhance_js]  VALUES (N'35d4ef464e5e8c87c9aa82ea89215fc1', N'', N'list', NULL, N'e67d26b610dd414c884c4dbb24e71ce3')
GO

INSERT INTO [dbo].[onl_cgform_enhance_js]  VALUES (N'90394fbc3d48978cc0937bc56f2d5370', N'', N'list', NULL, N'deea5a8ec619460c9245ba85dbc59e80')
GO


-- ----------------------------
-- Table structure for onl_cgform_enhance_sql
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[onl_cgform_enhance_sql]') AND type IN ('U'))
	DROP TABLE [dbo].[onl_cgform_enhance_sql]
GO

CREATE TABLE [dbo].[onl_cgform_enhance_sql] (
  [ID] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [BUTTON_CODE] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CGB_SQL] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CGB_SQL_NAME] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CONTENT] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CGFORM_HEAD_ID] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[onl_cgform_enhance_sql] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键ID',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_sql',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'按钮编码',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_sql',
'COLUMN', N'BUTTON_CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'SQL内容',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_sql',
'COLUMN', N'CGB_SQL'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Sql名称',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_sql',
'COLUMN', N'CGB_SQL_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_sql',
'COLUMN', N'CONTENT'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单ID',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_enhance_sql',
'COLUMN', N'CGFORM_HEAD_ID'
GO


-- ----------------------------
-- Table structure for onl_cgform_field
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[onl_cgform_field]') AND type IN ('U'))
	DROP TABLE [dbo].[onl_cgform_field]
GO

CREATE TABLE [dbo].[onl_cgform_field] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [cgform_head_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [db_field_name] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [db_field_txt] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_field_name_old] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_is_key] tinyint  NULL,
  [db_is_null] tinyint  NULL,
  [db_type] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [db_length] int  NOT NULL,
  [db_point_length] int  NULL,
  [db_default_val] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [dict_field] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [dict_table] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [dict_text] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [field_show_type] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [field_href] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [field_length] int  NULL,
  [field_valid_type] nvarchar(300) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [field_must_input] nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [field_extend_json] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [field_value_rule_code] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [is_query] tinyint  NULL,
  [is_show_form] tinyint  NULL,
  [is_show_list] tinyint  NULL,
  [is_read_only] tinyint  NULL,
  [query_mode] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [main_table] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [main_field] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [order_num] int  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [create_time] datetime2(7)  NULL,
  [create_by] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[onl_cgform_field] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键ID',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表ID',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'cgform_head_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段名字',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'db_field_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段备注',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'db_field_txt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'原字段名',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'db_field_name_old'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否主键 0否 1是',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'db_is_key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否允许为空0否 1是',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'db_is_null'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库字段类型',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'db_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库字段长度',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'db_length'
GO

EXEC sp_addextendedproperty
'MS_Description', N'小数点',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'db_point_length'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表字段默认值',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'db_default_val'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典code',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'dict_field'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典表',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'dict_table'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典Text',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'dict_text'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单控件类型',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'field_show_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'跳转URL',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'field_href'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单控件长度',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'field_length'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单字段校验规则',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'field_valid_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段是否必填',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'field_must_input'
GO

EXEC sp_addextendedproperty
'MS_Description', N'扩展参数JSON',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'field_extend_json'
GO

EXEC sp_addextendedproperty
'MS_Description', N'填值规则code',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'field_value_rule_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否查询条件0否 1是',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'is_query'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单是否显示0否 1是',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'is_show_form'
GO

EXEC sp_addextendedproperty
'MS_Description', N'列表是否显示0否 1是',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'is_show_list'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否是只读（1是 0否）',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'is_read_only'
GO

EXEC sp_addextendedproperty
'MS_Description', N'查询模式',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'query_mode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'外键主表名',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'main_table'
GO

EXEC sp_addextendedproperty
'MS_Description', N'外键主键字段',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'main_field'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'order_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_field',
'COLUMN', N'create_by'
GO


-- ----------------------------
-- Records of onl_cgform_field
-- ----------------------------
INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'0021c969dc23a9150d6f70a13b52e73e', N'402860816aa5921f016aa5921f480000', N'begin_date', N'开始时间', N'begin_date', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'4', N'admin', N'2019-05-11 15:31:54.0000000', N'2019-05-11 14:26:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'020c1622c3df0aef30185f57874f6959', N'79091e8277c744158530321513119c68', N'bpm_status', N'流程状态', NULL, N'0', N'1', N'String', N'32', N'0', N'1', N'bpm_status', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'1', N'0', N'single', N'', N'', N'8', N'admin', N'2019-05-11 15:29:47.0000000', N'2019-05-11 15:29:26.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'02b20e692456403e2fed1a89a06833b4', N'402860816bff91c0016bff91d2810005', N'phone', N'联系方式', N'phone', N'0', N'1', N'string', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'8', N'admin', N'2019-07-19 18:05:55.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'03668009f0ad92b20abb1a377197ee47', N'deea5a8ec619460c9245ba85dbc59e80', N'order_fk_id', N'订单外键ID', NULL, N'0', N'0', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'test_order_main', N'id', N'10', N'admin', N'2020-02-24 02:32:21.0000000', N'2019-04-20 11:42:53.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'03709092184fdf4a66b0cdb4dd10a159', N'402860816bff91c0016bffa220a9000b', N'bpm_status', N'流程状态', NULL, N'0', N'1', N'String', N'32', N'0', N'1', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'46', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-19 15:34:44.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'03c105d2706c8286416833684de67406', N'79091e8277c744158530321513119c68', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2019-05-11 15:29:47.0000000', N'2019-05-11 15:27:17.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'03fd5ab69f331ff760c3f7d86b4a93f8', N'4028318169e81b970169e81b97650000', N'log_content', N'日志内容', N'log_content', N'0', N'1', N'string', N'1000', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'3', NULL, NULL, N'2019-04-04 19:28:36.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'045eb432c418b2b103b1e1b8e8a8a75d', N'fb7125a344a649b990c12949945cb6c1', N'age', N'年龄', NULL, N'0', N'1', N'int', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', NULL, NULL, NULL, N'2019-03-26 19:24:11.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'04e4185a503e6aaaa31c243829ff4ac7', N'd35109c3632c4952a19ecc094943dd71', N'birthday', N'生日', NULL, N'0', N'1', N'Date', N'32', N'0', N'', N'', N'', N'', N'date', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'9', N'admin', N'2020-02-24 17:29:16.0000000', N'2019-03-15 14:24:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'04ff134cb4aae845059e10b3b85f1451', N'7ea60a25fa27470e9080d6a921aabbd1', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', NULL, NULL, N'2019-04-17 00:22:21.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'051dd70c504c97a028daab2af261ea35', N'1acb6f81a1d9439da6cc4e868617b565', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-04-23 22:58:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'052dcc6f34976b66754fd99415bd22ce', N'79091e8277c744158530321513119c68', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', N'admin', N'2019-05-11 15:29:47.0000000', N'2019-05-11 15:27:17.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'054db05394e83b318f097a60bc044134', N'402860816bff91c0016bffa220a9000b', N'residence_address', N'户籍地址', N'residence_address', N'0', N'1', N'string', N'200', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'28', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'0604945c206e867644e9a44b4c9b20c6', N'fb19fb067cd841f9ae93d4eb3b883dc0', N'2', N'4', NULL, N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'5', NULL, NULL, N'2019-03-23 11:39:48.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'0617de6d735b37a3f80f2f35ad5d1511', N'4028839a6de2ebd3016de2ebd3870000', N'size_type', N'尺码类型', N'size_type', N'0', N'1', N'string', N'2', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'13', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'0619dfc3fbf9e193534bb3460a1a9d92', N'cb2d8534a2f544bc9c618dd49da66336', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'1', N'single', N'', N'', N'1', N'admin', N'2020-02-24 17:22:42.0000000', N'2020-02-24 15:15:13.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'06a1badae6119abf4ec48858a3e94e1c', N'402860816bff91c0016bffa220a9000b', N'sys_org_code', N'组织机构编码', N'sys_org_code', N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'43', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'06f1cfff58395ff62526b894f6182641', N'e67d26b610dd414c884c4dbb24e71ce3', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2019-04-24 11:03:32.0000000', N'2019-04-24 11:02:57.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'07a307972076a392ffc61b11437f89dd', N'402860816bff91c0016bff91c0cb0000', N'create_time', N'创建时间', N'create_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'13', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'07f4776fd641389a8c98a85713990dce', N'402860816bff91c0016bff91c0cb0000', N'update_by', N'更新人', N'update_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'14', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'09450359eb90b40d224ec43588a62f9e', N'402860816bff91c0016bff91c0cb0000', N'user_id', N'用户ID', N'user_id', N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'3', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'0a4cdcb7e54f614ab952024f6c72bb6d', N'beee191324fd40c1afec4fda18bd9d47', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', N'admin', N'2019-04-13 13:41:13.0000000', N'2019-04-13 13:40:56.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'0adc06d9b497684bcbb5a781e044517c', N'1acb6f81a1d9439da6cc4e868617b565', N'supplier', N'供应商', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'air_china_ supplier', N'', N'', N'list', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'15', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-04-24 16:52:00.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'0b3e833ac4aae3a13ec2f8ae460708f8', N'4028839a6de2ebd3016de2ebd3870000', N'no', N'预算表序号', N'no', N'0', N'1', N'string', N'50', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'8', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'0ba1bf74e2a6a94a7a63010ec7230706', N'402860816bff91c0016bffa220a9000b', N'update_time', N'更新时间', N'update_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'42', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'0c34ebfe2e2a619d42db13f93d2a2d40', N'b81de38db24047b497d476516f8a0865', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', NULL, NULL, N'2020-02-24 14:56:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'0cba94f0497d4d3d829fc573f58eff9f', N'402860816bff91c0016bffa220a9000b', N'graduation_time', N'毕业时间', N'graduation_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'16', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'0d00c51a4ddad2598a587fadc968a8b2', N'402860816bff91c0016bff91cfea0004', N'sys_org_code', N'组织机构编码', N'sys_org_code', N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'13', N'admin', N'2019-07-19 18:05:13.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'0ddd0c0afc967a9ab6050401ca62a4be', N'e67d26b610dd414c884c4dbb24e71ce3', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2019-04-24 11:03:32.0000000', N'2019-04-24 11:02:57.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'0fb6fa76c5c78a1e957dbb411e110738', N'402860816bff91c0016bff91d8830007', N'politically_status', N'政治面貌', N'politically_status', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'7', N'admin', N'2019-07-19 18:04:41.0000000', N'2019-07-17 18:54:37.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'105c8e44ad13026b641f0363601f30f3', N'e5464aa8fa7b47c580e91593cf9b46dc', N'num', N'循环数量', NULL, N'0', N'1', N'int', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'9', N'admin', N'2019-04-24 17:09:49.0000000', N'2019-04-24 11:05:10.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'10b78ee7954f230117689a226c44c0db', N'402880e570a5d7000170a5d700f50000', N'descc', N'描述', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', NULL, NULL, N'11', NULL, NULL, N'2020-03-04 21:58:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'1130f1e252533529bb1167b896dffe32', N'deea5a8ec619460c9245ba85dbc59e80', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', N'admin', N'2020-02-24 02:32:21.0000000', N'2019-04-20 11:41:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'117fc4ba649d6690a3ac482ad5e4ad38', N'56870166aba54ebfacb20ba6c770bd73', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2020-02-24 02:31:34.0000000', N'2019-04-20 11:38:39.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'13246645b7650491b70205d99703ca06', N'402860816aa5921f016aa5dedcb90009', N'bpm_status', N'流程状态', N'bpm_status', N'0', N'1', N'string', N'32', N'0', N'1', N'bpm_status', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'1', N'0', N'group', N'', N'', N'8', N'admin', N'2019-05-11 15:56:47.0000000', N'2019-05-11 15:50:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'135dd0ee50712722db65b8762bd487ea', N'8994f2817b5a45d9890aa04497a317c5', N'update_time', N'更新日期', NULL, N'0', N'1', N'date', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'4', NULL, NULL, N'2019-03-23 11:39:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'14ec4c83c29966ab42b6b718c5a3e774', N'7ea60a25fa27470e9080d6a921aabbd1', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', NULL, NULL, N'2019-04-17 00:22:21.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'16363d0bc125125e395772278d0cf22e', N'4b556f0168f64976a3d20bfb932bc798', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', NULL, NULL, N'2019-04-12 23:38:28.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'179c290e383009810fb738f07bd5af8d', N'402860816bff91c0016bff91d2810005', N'id', N'id', N'id', N'1', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'1', N'admin', N'2019-07-19 18:05:55.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'17cbda69da9dd3632625a0647c259070', N'73162c3b8161413e8ecdca7eb288d0c9', N'wl_name', N'物料名字', NULL, N'0', N'1', N'String', N'200', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'1', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', N'admin', N'2019-07-01 14:23:32.0000000', N'2019-06-10 15:18:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'18fefb2257901f05508f8ec13ada78a3', N'e5464aa8fa7b47c580e91593cf9b46dc', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', N'admin', N'2019-04-24 17:09:48.0000000', N'2019-04-24 11:05:10.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'1973ef1d3728fbff2db6a352e001f5f7', N'fb7125a344a649b990c12949945cb6c1', N'name', N'用户名', NULL, N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'5', N'admin', N'2019-03-26 19:24:11.0000000', N'2019-03-26 19:01:52.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'1ab5be1f937f393b3e5cc214ef1b855c', N'7ea60a25fa27470e9080d6a921aabbd1', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', NULL, NULL, N'2019-04-17 00:22:21.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'1b6c7b95028bed9ff656d65557dd2bdf', N'402860816bff91c0016bffa220a9000b', N'user_id', N'用户id', N'user_id', N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'3', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'1c2f307e315bac77a6d3f02e88387a43', N'deea5a8ec619460c9245ba85dbc59e80', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', N'admin', N'2020-02-24 02:32:21.0000000', N'2019-04-20 11:41:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'1c3b2ad0a52ecb47fa7fd53f25875beb', N'deea5a8ec619460c9245ba85dbc59e80', N'price', N'价格', NULL, N'0', N'1', N'double', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'n', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', N'admin', N'2020-02-24 02:32:21.0000000', N'2019-04-20 11:41:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'1c4d25a12388c80d397bb4f4664fe4e6', N'4b556f0168f64976a3d20bfb932bc798', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', NULL, NULL, N'2019-04-12 23:38:28.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'1cfe967bb457cbaa6e041e45d019b583', N'402860816bff91c0016bff91c7010001', N'update_time', N'更新时间', N'update_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'10', N'admin', N'2019-07-19 18:07:47.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'1e3d8cfbf12155559666a23ee2c6c5ca', N'e5464aa8fa7b47c580e91593cf9b46dc', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', N'admin', N'2019-04-24 17:09:49.0000000', N'2019-04-24 11:05:10.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'1ed46fdeb289bd7805c9b83332ccd3b4', N'402860816bff91c0016bff91d2810005', N'relation', N'关系', N'relation', N'0', N'1', N'string', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'4', N'admin', N'2019-07-19 18:05:55.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'1f0c6d33b79713fe79fb30373c81f6f7', N'758334cb1e7445e2822b60e807aec4a3', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', NULL, NULL, N'2019-10-18 18:02:09.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'1fa5f07b3e70d4925b69b2bf51309421', N'56870166aba54ebfacb20ba6c770bd73', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', N'admin', N'2020-02-24 02:31:34.0000000', N'2019-04-20 11:38:39.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'20ff34fb0466089cb633d73d5a6f08d6', N'd35109c3632c4952a19ecc094943dd71', N'update_time', N'更新日期', NULL, N'0', N'1', N'date', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2020-02-24 17:29:16.0000000', N'2019-03-15 14:24:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'2113a4ec7b88b4820dcbbdf96e46bbb7', N'fbc35f067da94a70adb622ddba259352', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', NULL, NULL, N'2019-07-03 19:44:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'2150e48b2cb6072d2d8ecd79a7daf7cc', N'402860816bff91c0016bff91ca7e0002', N'create_time', N'创建时间', N'create_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'10', N'admin', N'2019-07-19 18:07:13.0000000', N'2019-07-17 18:54:33.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'2323239efb5a40b73034411868dfc41d', N'fb19fb067cd841f9ae93d4eb3b883dc0', N'update_by', N'更新人登录名称', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'3', NULL, NULL, N'2019-03-23 11:39:48.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'23f42061ed218bdbc1262913c071e1cd', N'e5464aa8fa7b47c580e91593cf9b46dc', N'iz_valid', N'启动状态', NULL, N'0', N'1', N'int', N'2', N'0', N'', N'air_china_valid', N'', N'', N'list', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'12', N'admin', N'2019-04-24 17:09:49.0000000', N'2019-04-24 14:09:06.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'242cc59b23965a92161eca69ffdbf018', N'd35109c3632c4952a19ecc094943dd71', N'age', N'年龄', NULL, N'0', N'1', N'int', N'32', N'0', N'', N'', N'', N'', N'text', N'http://www.baidu.com', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', N'admin', N'2020-02-24 17:29:16.0000000', N'2019-03-15 14:24:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'265702edb8872e322fe72d3640e34ac5', N'402860816bff91c0016bff91cfea0004', N'from_time', N'开始日期', N'from_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'3', N'admin', N'2019-07-19 18:05:13.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'2739ab1ece4d6053ba931bb6572f4ed8', N'4028839a6de2ebd3016de2ebd3870000', N'iz_valid', N'启用状态', N'iz_valid', N'0', N'1', N'string', N'2', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'9', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'281ce0b5343cd42b28825d7df16422f1', N'b81de38db24047b497d476516f8a0865', N'vv', N'vv', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'8', NULL, NULL, N'2020-02-24 14:56:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'283f42283b9d0bf3b95ba3384ab2d255', N'758334cb1e7445e2822b60e807aec4a3', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', NULL, NULL, N'2019-10-18 18:02:09.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'284864d99fddfdcb00e188e3a512cb28', N'1acb6f81a1d9439da6cc4e868617b565', N'no', N'预算表序号', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'10', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-04-23 22:58:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'2889d3cef706f91e092d76a56b8055be', N'402860816bff91c0016bff91cda80003', N'order_no', N'序号', N'order_no', N'0', N'1', N'int', N'10', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'8', N'admin', N'2019-07-19 18:06:36.0000000', N'2019-07-17 18:54:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'29e4abea55d9fa7dbbd0c8dbbb2b3756', N'402860816bff91c0016bff91cda80003', N'update_time', N'更新时间', N'update_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'12', N'admin', N'2019-07-19 18:06:36.0000000', N'2019-07-17 18:54:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'2c9be627e7cab7f5a2ae9c7ca7ce94a2', N'cb2d8534a2f544bc9c618dd49da66336', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2020-02-24 17:22:42.0000000', N'2020-02-24 15:15:14.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'2d53a66f0b72d820b86ff445e2181d76', N'beee191324fd40c1afec4fda18bd9d47', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', N'admin', N'2019-04-13 13:41:13.0000000', N'2019-04-13 13:40:56.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'2dfc4c81926f678c5f8d5ffd27858201', N'e2faf977fdaf4b25a524f58c2441a51c', N'account', N'用户编码', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', N'admin', N'2019-06-10 17:27:00.0000000', N'2019-04-24 17:12:11.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'2e5275b6407e1b4265af8519077fa4a5', N'd3ae1c692b9640e0a091f8c46e17bb01', N'sys_org_code', N'所属部门', NULL, N'0', N'1', N'string', N'64', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'6', NULL, NULL, N'2019-07-24 14:47:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'2e66b9db37648389e0846e2204111732', N'73162c3b8161413e8ecdca7eb288d0c9', N'has_child', N'是否有子节点', NULL, N'0', N'1', N'string', N'3', N'0', N'', N'valid_status', N'', N'', N'list', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'10', N'admin', N'2019-07-01 14:23:32.0000000', N'2019-06-10 15:18:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'2ee58d8e4844dfe1fa6b1b841ae0b312', N'402860816bff91c0016bff91d2810005', N'politically_status', N'政治面貌', N'politically_status', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'7', N'admin', N'2019-07-19 18:05:55.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'2f111722eb3a994450e67e3211fd69a8', N'402860816bff91c0016bff91ca7e0002', N'id', N'id', N'id', N'1', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'1', N'admin', N'2019-07-19 18:07:13.0000000', N'2019-07-17 18:54:33.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'30143cc3de69c413828f9fba20662026', N'402860816bff91c0016bffa220a9000b', N'healthy', N'健康状况', N'healthy', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'12', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'31193dc8ceacf979e4042e784ea8278a', N'402880e570a5d7000170a5d700f50000', N'order_fk_id', N'订单外键ID', NULL, N'0', N'0', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', NULL, NULL, N'10', NULL, NULL, N'2020-03-04 21:58:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'31fd90306c3942f09cb79deabbf2f541', N'402860816bff91c0016bff91d2810005', N'employee_id', N'员工ID', N'employee_id', N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'oa_employee_info', N'id', N'2', N'admin', N'2019-07-19 18:05:55.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'336495117e3a31351fed6963b950dddb', N'402860816bff91c0016bffa220a9000b', N'inside_transfer', N'内部工作调动情况', N'inside_transfer', N'0', N'1', N'string', N'255', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'37', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'345c8b48e1e128e77c4c6e2b36512804', N'402860816aa5921f016aa5dedcb90009', N'create_by', N'创建人', N'create_by', N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'2', N'admin', N'2019-05-11 15:56:47.0000000', N'2019-05-11 15:50:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'34625a911b39e0596690c1a15f784448', N'402880e570a5d7000170a5d700f50000', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', NULL, NULL, N'5', NULL, NULL, N'2020-03-04 21:58:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'351faaeb2dd8105e9c66f678211c9d4f', N'dbf4675875e14676a3f9a8b2b8941140', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', NULL, NULL, N'2019-05-27 18:02:07.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'354b2ce39c5e8ec3f0bbb01bf8ff0fb7', N'32f75e4043ef4070919dbd4337186a3d', N'content', N'描述', NULL, N'0', N'1', N'String', N'300', N'0', N'', N'', N'', N'', N'textarea', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'9', N'admin', N'2019-04-11 10:15:31.0000000', N'2019-03-28 15:24:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'35ca1c8aa1501bc8a79c880928841f18', N'402860816aa5921f016aa5921f480000', N'update_by', N'修改人id', N'update_by', N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'11', N'admin', N'2019-05-11 15:31:55.0000000', N'2019-05-11 14:26:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'3635793767371c6db9f76b4b79f9d321', N'402860816bff91c0016bff91d8830007', N'create_time', N'创建时间', N'create_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'11', N'admin', N'2019-07-19 18:04:41.0000000', N'2019-07-17 18:54:37.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'370a6eebc2d732eaf121fe0830d853a6', N'e5464aa8fa7b47c580e91593cf9b46dc', N'wl_code', N'物料编码', NULL, N'0', N'1', N'String', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'7', N'admin', N'2019-04-24 17:09:49.0000000', N'2019-04-24 11:05:10.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'37e2548874f09ef7d08642a30bc918fa', N'fbc35f067da94a70adb622ddba259352', N'group_name', N'小组名', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', NULL, NULL, N'2019-07-03 19:44:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'391e7cbd9f29743b11bb555c50547b1f', N'32f75e4043ef4070919dbd4337186a3d', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2019-04-11 10:15:32.0000000', N'2019-03-27 15:54:49.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'396c36fa5320975851d06772d10ea7b1', N'cb2d8534a2f544bc9c618dd49da66336', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2020-02-24 17:22:42.0000000', N'2020-02-24 15:15:14.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'3b439859f98e30e34d25e983eb22e408', N'402860816bff91c0016bff91c7010001', N'award_time', N'获奖时间', N'award_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'3', N'admin', N'2019-07-19 18:07:47.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'3bf44e68de518f3ddf72b87671d0ff90', N'8994f2817b5a45d9890aa04497a317c5', N'update_by', N'更新人登录名称', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'3', NULL, NULL, N'2019-03-23 11:39:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'3cd2061ea15ce9eeb4b7cf2e544ccb6b', N'd35109c3632c4952a19ecc094943dd71', N'file_kk', N'附件', NULL, N'0', N'1', N'String', N'500', N'0', N'', N'', N'', N'', N'file', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'12', N'admin', N'2020-02-24 17:29:16.0000000', N'2019-06-10 20:06:57.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'3cfd4d60c7d8409ae716a579bcb0910d', N'402860816bff91c0016bff91c0cb0000', N'sys_org_code', N'组织机构编码', N'sys_org_code', N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'16', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'3e32f6c30c9028872388f70743c5d6a5', N'402860816bff91c0016bff91c0cb0000', N'reason', N'申请理由', N'reason', N'0', N'1', N'string', N'200', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'9', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'3e70d1c516c3533c6698300665c669e1', N'402860816bff91c0016bff91c0cb0000', N'id', N'id', N'id', N'1', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'1', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 18:54:31.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'3f2ace8f968a0e5b91d1340ee2957cda', N'402860816bff91c0016bff91d8830007', N'real_name', N'姓名', N'real_name', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'3', N'admin', N'2019-07-19 18:04:41.0000000', N'2019-07-17 18:54:37.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'40471eb4560bf0bbd2ffef17d48a269d', N'dbf4675875e14676a3f9a8b2b8941140', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', NULL, NULL, N'2019-05-27 18:02:07.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'404b516d4f2229f292783db595b02ba1', N'402860816bff91c0016bff91d8830007', N'update_time', N'更新时间', N'update_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'13', N'admin', N'2019-07-19 18:04:41.0000000', N'2019-07-17 18:54:37.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'405de5ea82e54138a0613dd41b006dfb', N'56870166aba54ebfacb20ba6c770bd73', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2020-02-24 02:31:34.0000000', N'2019-04-20 11:38:39.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'40675bb9f053aabf8823ddf4b5389141', N'b81de38db24047b497d476516f8a0865', N'aa', N'aa', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', NULL, NULL, N'2020-02-24 14:56:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'4164314d6a51d100169a29872b7504d8', N'402860816bff91c0016bff91ca7e0002', N'cert_time', N'发证时间', N'cert_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'3', N'admin', N'2019-07-19 18:07:13.0000000', N'2019-07-17 18:54:33.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'41d4215c01b0d26871f2cb83d3e532ae', N'402860816bff91c0016bff91c0cb0000', N'bpm_status', N'流程状态', NULL, N'0', N'1', N'String', N'32', N'0', N'1', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'17', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-19 15:35:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'422a44a15fa39fd57c3c23eb601f7c03', N'56870166aba54ebfacb20ba6c770bd73', N'descc', N'描述', NULL, N'0', N'1', N'String', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'8', N'admin', N'2020-02-24 02:31:34.0000000', N'2019-04-20 11:38:39.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'42cccfa014c9e131a0a1b23f563d3688', N'402860816bff91c0016bffa220a9000b', N'sex', N'性别', N'sex', N'0', N'1', N'string', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'6', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'4312f618c83e07db82e468b81a1eaa45', N'402860816bff91c0016bffa220a9000b', N'photo', N'照片', N'photo', N'0', N'1', N'string', N'255', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'20', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'435b57180fc995e3c4ec42516963bca3', N'4028839a6de2ebd3016de2ebd3870000', N'wl_code', N'物料编码', N'wl_code', N'0', N'1', N'string', N'60', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'6', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'44bdc595f1e565fc053e01134b92bb47', N'd3ae1c692b9640e0a091f8c46e17bb01', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', NULL, NULL, N'2019-07-24 14:47:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'44e81e24d2384b0f187e8f69eda55390', N'402860816bff91c0016bff91cda80003', N'create_time', N'创建时间', N'create_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'10', N'admin', N'2019-07-19 18:06:36.0000000', N'2019-07-17 18:54:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'45c0a1a89a1e2a72533b9af894be1011', N'27fc5f91274344afa7673a732b279939', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2019-07-01 16:28:20.0000000', N'2019-07-01 16:26:42.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'45d59eb647257fcbcb9d143ff1ba2080', N'deea5a8ec619460c9245ba85dbc59e80', N'pro_type', N'产品类型', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'sex', N'', N'', N'radio', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'9', N'admin', N'2020-02-24 02:32:21.0000000', N'2019-04-23 20:54:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'469b250595f15dfebe69991d72e4bfb2', N'e9faf717024b4aae95cff224ae9b6d97', N'name', N'员工姓名', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', N'admin', N'2019-07-03 18:23:49.0000000', N'2019-07-03 18:22:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'46be01bef342519e268902d0d36a7473', N'deea5a8ec619460c9245ba85dbc59e80', N'descc', N'描述', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'11', N'admin', N'2020-02-24 02:32:21.0000000', N'2019-04-20 11:41:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'46f1a875f86a4f48d0540ad0d5e667d7', N'56870166aba54ebfacb20ba6c770bd73', N'order_date', N'下单时间', NULL, N'0', N'1', N'Date', N'32', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', N'admin', N'2020-02-24 02:31:34.0000000', N'2019-04-20 11:38:39.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'47c21a6b45e59a6b70bb9c0cc4510a68', N'1acb6f81a1d9439da6cc4e868617b565', N'integral_val', N'积分值', NULL, N'0', N'1', N'int', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'13', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-04-23 22:58:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'47fa05530f3537a1be8f9e7a9e98be82', N'd35109c3632c4952a19ecc094943dd71', N'sex', N'性别', NULL, N'0', N'1', N'string', N'32', N'0', N'', N'sex', N'', N'', N'list', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', N'admin', N'2020-02-24 17:29:16.0000000', N'2019-03-15 14:24:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'4851697fdf63709d2bc7451b7415f4af', N'32f75e4043ef4070919dbd4337186a3d', N'sex', N'性别', NULL, N'0', N'1', N'String', N'32', N'0', N'1', N'sex', N'', N'', N'list', N'', N'120', NULL, N'0', N'', N'', N'1', N'1', N'1', N'0', N'single', N'', N'', N'6', N'admin', N'2019-04-11 10:15:32.0000000', N'2019-03-27 15:54:49.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'485a8ddce2c033f88af674ec98b68e32', N'402860816bff91c0016bffa220a9000b', N'create_time', N'创建时间', N'create_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'40', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'492a462b212fc34b0ee70e872684ed7e', N'7ea60a25fa27470e9080d6a921aabbd1', N'name', N'用户名', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', NULL, NULL, N'2019-04-17 00:22:21.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'499a5dac033a01ce58009e4c5b786697', N'e9faf717024b4aae95cff224ae9b6d97', N'age', N'员工年龄', NULL, N'0', N'1', N'int', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', N'admin', N'2019-07-03 18:23:49.0000000', N'2019-07-03 18:22:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'49cd3dbd4f7f7cf0d19b1ee1045cfa69', N'e67d26b610dd414c884c4dbb24e71ce3', N'post_code', N'岗位编码', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', N'admin', N'2019-04-24 11:03:32.0000000', N'2019-04-24 11:02:57.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'4ba7c553ca4babcec75273c531cd65e1', N'402860816bff91c0016bff91cfea0004', N'workplace', N'工作单位', N'workplace', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'5', N'admin', N'2019-07-19 18:05:13.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'4c2cba9fc950333421c4193576b8384d', N'32f75e4043ef4070919dbd4337186a3d', N'salary', N'工资', NULL, N'0', N'1', N'double', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'10', N'admin', N'2019-04-11 10:15:32.0000000', N'2019-03-28 15:24:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'4c570c5cf05590348e12621ca62773cf', N'402860816aa5921f016aa5921f480000', N'name', N'请假人', N'name', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'2', N'admin', N'2019-05-11 15:31:54.0000000', N'2019-05-11 14:26:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'4cacfa054e96791ab938b5c8f8e02cd1', N'27fc5f91274344afa7673a732b279939', N'bpm_status', N'流程状态', NULL, N'0', N'1', N'String', N'2', N'0', N'', N'bpm_status', N'', N'', N'list', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'9', NULL, NULL, N'2019-07-01 16:28:20.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'4f718d95ad9de33eac18fd0663e4c1f1', N'32f75e4043ef4070919dbd4337186a3d', N'birthday', N'生日', NULL, N'0', N'1', N'Date', N'32', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'1', N'1', N'1', N'0', N'single', N'', N'', N'8', N'admin', N'2019-04-11 10:15:32.0000000', N'2019-03-27 15:54:49.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'4f7cba71de7afe6efbd024f5f9935521', N'402860816bff91c0016bff91cda80003', N'to_time', N'截止时间', N'to_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'4', N'admin', N'2019-07-19 18:06:36.0000000', N'2019-07-17 18:54:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'4faa7848b92f05bcb3cf03de34af9ff2', N'cb2d8534a2f544bc9c618dd49da66336', N'ddd', N'dd', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'9', N'admin', N'2020-02-24 17:22:42.0000000', N'2020-02-24 15:15:14.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'506c9b0b2331a24e5c284274d28fe569', N'27fc5f91274344afa7673a732b279939', N'kkk', N'描述', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'8', N'admin', N'2019-07-01 16:28:20.0000000', N'2019-07-01 16:26:42.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'508eb28e1409a2a9501cdf6fd7eb24c7', N'dbf4675875e14676a3f9a8b2b8941140', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', NULL, NULL, N'2019-05-27 18:02:07.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'509a4f63f02e784bc04499a6a9be8528', N'd35109c3632c4952a19ecc094943dd71', N'update_by', N'更新人登录名称', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2020-02-24 17:29:16.0000000', N'2019-03-15 14:24:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'519f68557b953fc2d38400182b187366', N'402860816bff91c0016bffa220a9000b', N'residence_type', N'户籍类别', N'residence_type', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'13', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'52ee861bc1b62cd8e4f10632b3d9d1b2', N'79091e8277c744158530321513119c68', N'name', N'顺序会签标题', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', N'admin', N'2019-05-11 15:29:47.0000000', N'2019-05-11 15:27:17.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'56a7800e4e476812c74217c2aad781aa', N'32feeb502544416c9bf41329c10a88f4', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', N'admin', N'2019-08-23 20:03:40.0000000', N'2019-07-02 18:23:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'56cd0a76f922bf76d982b24a509e4782', N'4028839a6de2ebd3016de2ebd3870000', N'create_time', N'创建日期', N'create_time', N'0', N'1', N'Date', N'0', N'0', NULL, NULL, NULL, NULL, N'date', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'3', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'56e247f12d62b49cd9bd537e3efecf16', N'402860816bff91c0016bff91c0cb0000', N'create_by', N'创建人', N'create_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'12', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'57552a4f0b7b5c096ab8985ced57cc7d', N'cb2d8534a2f544bc9c618dd49da66336', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', N'admin', N'2020-02-24 17:22:42.0000000', N'2020-02-24 15:15:14.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'588400f6ebcdd0bc9bb560dd36636af9', N'e2faf977fdaf4b25a524f58c2441a51c', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2019-06-10 17:27:00.0000000', N'2019-04-24 17:12:11.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'58a96f945912d33b64ebf5dee98156dc', N'402860816bff91c0016bffa220a9000b', N'mobile', N'手机号', N'mobile', N'0', N'1', N'string', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'19', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'58eea85add4788b83c893092434bc413', N'fb19fb067cd841f9ae93d4eb3b883dc0', N'update_time', N'更新日期', NULL, N'0', N'1', N'date', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'4', NULL, NULL, N'2019-03-23 11:39:48.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'59ae1e853668c676e85329aa029c68a6', N'402860816bff91c0016bff91c0cb0000', N'status', N'状态（1：申请中 2：通过）', N'status', N'0', N'1', N'string', N'2', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'11', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'5a1ab458d88bb766f92c3d791495cdcd', N'402860816bff91c0016bff91d2810005', N'age', N'年龄', N'age', N'0', N'1', N'int', N'10', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'5', N'admin', N'2019-07-19 18:05:55.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'5a4ef083dd572114aeb581b6828de545', N'402860816bff91c0016bff91c7010001', N'award_name', N'获奖名称', N'award_name', N'0', N'1', N'string', N'255', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'5', N'admin', N'2019-07-19 18:07:47.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'5a621f27aa443fe9eccc73717e4fa172', N'4028318169e81b970169e81b97650000', N'method', N'请求java方法', N'method', N'0', N'1', N'string', N'500', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'8', NULL, NULL, N'2019-04-04 19:28:36.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'5a655b208d6318ed02f236f15a319b5f', N'fbc35f067da94a70adb622ddba259352', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', NULL, NULL, N'2019-07-03 19:44:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'5a6f88710c49bbe8e2e0ca58e149abad', N'402860816bff91c0016bff91cda80003', N'create_by', N'创建人', N'create_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'9', N'admin', N'2019-07-19 18:06:36.0000000', N'2019-07-17 18:54:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'5b17ba693745c258f6b66380ac851e5f', N'd35109c3632c4952a19ecc094943dd71', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'0', N'admin', N'2020-02-24 17:29:16.0000000', N'2019-03-15 14:24:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'5c76f5ecc774d7339eb0c2199c0052bc', N'402860816bff91c0016bff91c0cb0000', N'biz_no', N'编号', N'biz_no', N'0', N'1', N'string', N'64', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'2', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'5c8c8d573e01e4f40b5a7c451515e1d2', N'32feeb502544416c9bf41329c10a88f4', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2019-08-23 20:03:40.0000000', N'2019-07-02 18:23:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'5dfbea516ee2390d712eace5405c5219', N'402860816bff91c0016bff91ca7e0002', N'create_by', N'创建人', N'create_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'9', N'admin', N'2019-07-19 18:07:13.0000000', N'2019-07-17 18:54:33.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'5e4484b7348dc3e59a0c58bdc3828cc0', N'27fc5f91274344afa7673a732b279939', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2019-07-01 16:28:20.0000000', N'2019-07-01 16:26:42.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'5e4ac29ac2007ceabf93368330290a42', N'402860816bff91c0016bff91d8830007', N'order_no', N'序号', N'order_no', N'0', N'1', N'int', N'10', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'9', N'admin', N'2019-07-19 18:04:41.0000000', N'2019-07-17 18:54:37.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'6130dbb6d36bab8ee9154e7ab58af34c', N'402880e570a5d7000170a5d700f50000', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', NULL, NULL, N'1', NULL, NULL, N'2020-03-04 21:58:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'617349b18dab429009ccd304fd7d459c', N'4028839a6de2ebd3016de2ebd3870000', N'update_by', N'更新人', N'update_by', N'0', N'1', N'string', N'50', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'4', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'61c7a0058c264dd746eb35e6f50fc15b', N'402860816aa5921f016aa5dedcb90009', N'update_time', N'更新日期', N'update_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'5', N'admin', N'2019-05-11 15:56:47.0000000', N'2019-05-11 15:50:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'6232ade7e2a0c1e97e2c0945b32e61b6', N'402860816bff91c0016bffa220a9000b', N'paying_social_insurance', N'是否上社保', N'paying_social_insurance', N'0', N'1', N'string', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'32', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'635e09afc01aad757faacf1321465c23', N'b81de38db24047b497d476516f8a0865', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', NULL, NULL, N'2020-02-24 14:56:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'6490a98dccb6df218feaeb4ce11bc03b', N'402860816aa5921f016aa5921f480000', N'update_time', N'修改时间', N'update_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'10', N'admin', N'2019-05-11 15:31:54.0000000', N'2019-05-11 14:26:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'654362725195829005036b3db47ec826', N'402860816bff91c0016bffa220a9000b', N'post', N'职务', N'post', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'4', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'66a7ef842bc34e105a90186e48167ef2', N'dbf4675875e14676a3f9a8b2b8941140', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', NULL, NULL, N'2019-05-27 18:02:07.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'68769fa7e4696e3a28f4cecf63076b7b', N'402860816bff91c0016bff91ca7e0002', N'order_no', N'序号', N'order_no', N'0', N'1', N'int', N'10', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'8', N'admin', N'2019-07-19 18:07:13.0000000', N'2019-07-17 18:54:33.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'69666f21896136af16a6303aff440156', N'402860816bff91c0016bffa220a9000b', N'nation', N'民族', N'nation', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'11', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'69d11490788fecfc9fb7d74bf449ba86', N'32f75e4043ef4070919dbd4337186a3d', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2019-04-11 10:15:32.0000000', N'2019-03-27 15:54:49.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'6a30c2e6f01ddd24349da55a37025cc0', N'd35109c3632c4952a19ecc094943dd71', N'top_pic', N'头像', NULL, N'0', N'1', N'String', N'500', N'0', N'', N'', N'', N'', N'image', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'11', N'admin', N'2020-02-24 17:29:16.0000000', N'2019-06-10 20:06:56.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'6b6f3aa00b8e73fb785154e795189739', N'402860816aa5921f016aa5dedcb90009', N'start_time', N'会签发起时间', N'start_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'7', N'admin', N'2019-05-11 15:56:47.0000000', N'2019-05-11 15:50:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'6cfb5acbbb69782bf0c7043b53f595b2', N'402860816bff91c0016bff91cda80003', N'update_by', N'更新人', N'update_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'11', N'admin', N'2019-07-19 18:06:36.0000000', N'2019-07-17 18:54:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'6f73e96a659c200c083006b6fce1f043', N'402860816bff91c0016bff91ca7e0002', N'cert_name', N'证书名称', N'cert_name', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'4', N'admin', N'2019-07-19 18:07:13.0000000', N'2019-07-17 18:54:33.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'7154c75d754a5f88bef2b68829baf576', N'4028318169e81b970169e81b97650000', N'operate_type', N'操作类型', N'operate_type', N'0', N'1', N'string', N'10', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'4', NULL, NULL, N'2019-04-04 19:28:36.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'71afb00a1971125ecfa13b4dfa49665e', N'402860816bff91c0016bff91cfea0004', N'order_no', N'序号', N'order_no', N'0', N'1', N'int', N'10', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'8', N'admin', N'2019-07-19 18:05:13.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'71d5b0675df5aba71688c9d7d75cccee', N'4028318169e81b970169e81b97650000', N'log_type', N'日志类型（1登录日志，2操作日志）', N'log_type', N'0', N'1', N'string', N'10', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'2', NULL, NULL, N'2019-04-04 19:28:36.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'71e9ab74dae687837365e50eed090591', N'1acb6f81a1d9439da6cc4e868617b565', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-04-23 22:58:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'7280c56a210e6a47794fda855d0c6abb', N'fbc35f067da94a70adb622ddba259352', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', NULL, NULL, N'2019-07-03 19:44:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'72e784af5c47bbbc0534b29bf656bd61', N'4028839a6de2ebd3016de2ebd3870000', N'id', N'主键', N'id', N'1', N'0', N'string', N'36', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'0', N'0', N'0', N'group', NULL, NULL, N'1', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'7365f05f551092716223d5d449efd8c7', N'beee191324fd40c1afec4fda18bd9d47', N'name', N'ss', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', N'admin', N'2019-04-13 13:41:13.0000000', N'2019-04-13 13:40:56.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'73dc6089556f3446e39d42df3dedb2db', N'402880e570a5d7000170a5d700f50000', N'num', N'数量', NULL, N'0', N'1', N'int', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'n', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', NULL, NULL, N'8', NULL, NULL, N'2020-03-04 21:58:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'742329ccdb185cf5d3e0b5b0c05dcffa', N'402860816bff91c0016bffa220a9000b', N'interest', N'兴趣爱好', N'interest', N'0', N'1', N'string', N'255', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'34', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'744444a7ada3bbb05c6b114b5ba0d477', N'402860816aa5921f016aa5dedcb90009', N'id', N'id', N'id', N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'1', N'admin', N'2019-05-11 15:56:47.0000000', N'2019-05-11 15:50:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'74af99545de724a4abd2022581a36026', N'fb7125a344a649b990c12949945cb6c1', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2019-03-26 19:24:11.0000000', N'2019-03-26 19:01:52.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'756b07656386dbd91245f7ffda32ae61', N'402860816bff91c0016bff91d8830007', N'id', N'id', N'id', N'1', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'1', N'admin', N'2019-07-19 18:04:41.0000000', N'2019-07-17 18:54:37.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'75841fa7c75ebdc94655bd5e44fbc9f6', N'402860816bff91c0016bffa220a9000b', N'native_place', N'籍贯', N'native_place', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'10', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'75ba781c67711bed71bba1c3e3c68e11', N'8994f2817b5a45d9890aa04497a317c5', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'0', NULL, NULL, N'2019-03-23 11:39:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'75e82f151e8cc12455f7f0d25bf4dac0', N'4028839a6de2ebd3016de2ebd3870000', N'wl_name', N'物料名称', N'wl_name', N'0', N'1', N'string', N'100', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'7', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'7639c1bc4327f1f674ffeab2ca261134', N'32f75e4043ef4070919dbd4337186a3d', N'update_by', N'更新人登录名称', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2019-04-11 10:15:32.0000000', N'2019-03-27 15:54:49.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'766ca866b72d118f5d8883de46a8c043', N'4028839a6de2ebd3016de2ebd3870000', N'supplier', N'供应商', N'supplier', N'0', N'1', N'string', N'32', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'15', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'78a40344207c791b8d7ac7de721ce1c4', N'79091e8277c744158530321513119c68', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2019-05-11 15:29:47.0000000', N'2019-05-11 15:27:17.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'78eb7e3b77cd49f9acb9b024cfe834e1', N'402860816aa5921f016aa5dedcb90009', N'create_time', N'创建日期', N'create_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'3', N'admin', N'2019-05-11 15:56:47.0000000', N'2019-05-11 15:50:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'78fd804d93dc716fd8c2ccc45f788565', N'fb7125a344a649b990c12949945cb6c1', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', N'admin', N'2019-03-26 19:24:11.0000000', N'2019-03-26 19:01:52.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'790c9f3dba773ed9a6ea3ad627393f57', N'402860816bff91c0016bffa220a9000b', N'archives_location', N'档案所在地', N'archives_location', N'0', N'1', N'string', N'255', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'36', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'7a665ed90ef64b4d65632c941e5795b2', N'4b556f0168f64976a3d20bfb932bc798', N'sex', N'性别', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', NULL, NULL, N'2019-04-12 23:38:29.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'7b642d983ac06bfef91edde2c932dbe7', N'1acb6f81a1d9439da6cc4e868617b565', N'xg_shangxian', N'选购上限', NULL, N'0', N'1', N'int', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'14', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-04-23 22:58:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'7b849e57debfb889caea5e0fef09062b', N'beee191324fd40c1afec4fda18bd9d47', N'sex2', N'dd', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', N'admin', N'2019-04-13 13:41:13.0000000', N'2019-04-13 13:40:56.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'7beb639aa9ffda07edb5ce1e49c2287f', N'402860816bff91c0016bff91d2810005', N'update_time', N'更新时间', N'update_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'13', N'admin', N'2019-07-19 18:05:55.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'7bf091da401b74d55b107fe9f930ea54', N'4028839a6de2ebd3016de2ebd3870000', N'create_by', N'创建人', N'create_by', N'0', N'1', N'string', N'50', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'2', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'7c6aecc377816c69147f1193b17dfcc5', N'e9faf717024b4aae95cff224ae9b6d97', N'sex', N'员工性别', NULL, N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'8', N'admin', N'2019-07-03 18:23:49.0000000', N'2019-07-03 18:22:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'7cadf4e0be0b173bb5b8d39613e25190', N'402860816bff91c0016bffa220a9000b', N'residence_postcode', N'户籍邮编', N'residence_postcode', N'0', N'1', N'string', N'10', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'29', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'7d107728408c21ece332406a21f2d692', N'402860816bff91c0016bff91cfea0004', N'update_by', N'更新人', N'update_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'11', N'admin', N'2019-07-19 18:05:13.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'7e066f60680158d47b328ef519d80e49', N'beee191324fd40c1afec4fda18bd9d47', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2019-04-13 13:41:13.0000000', N'2019-04-13 13:40:56.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'7f10901c6ade3aa9d9ff46ed7039c70f', N'1acb6f81a1d9439da6cc4e868617b565', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-04-23 22:58:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'813a5ebf7335309c7edb3803f7e4b204', N'402880e570a5d7000170a5d700f50000', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', NULL, NULL, N'2', NULL, NULL, N'2020-03-04 21:58:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'81ed9556c9fda1bbb46d94a53a6c90c7', N'402860816bff91c0016bff91c0cb0000', N'depart_name', N'部门名称', N'depart', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'7', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'840343a59a8e705821d393506c2bc1fe', N'402880e570a5d7000170a5d700f50000', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', NULL, NULL, N'3', NULL, NULL, N'2020-03-04 21:58:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'8422485e1cbf4455f9ded7d0af59379c', N'402860816bff91c0016bff91cfea0004', N'to_time', N'截止时间', N'to_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'4', N'admin', N'2019-07-19 18:05:13.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'845c70568d44a074f067d6d277950525', N'402860816bff91c0016bffa220a9000b', N'entrytime', N'入职时间', N'entrytime', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'23', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'8529ddaed8d5f3d9084e873203d55cac', N'402860816bff91c0016bffa220a9000b', N'marital_status', N'婚姻状况', N'marital_status', N'0', N'1', N'string', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'24', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'857a0daa9cd8a058f2f15fc7c5fb3571', N'402860816bff91c0016bffa220a9000b', N'email', N'邮箱', N'email', N'0', N'1', N'string', N'255', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'17', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'85e43fa87074845f86cf52606a23a57c', N'b81de38db24047b497d476516f8a0865', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', NULL, NULL, N'2020-02-24 14:56:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'8652ca69a947fd4c961a3ac7c0fa252a', N'fb19fb067cd841f9ae93d4eb3b883dc0', N'create_by', N'创建人登录名称', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'1', NULL, NULL, N'2019-03-23 11:39:48.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'86bbafef5683674a736cf7241c458d44', N'27fc5f91274344afa7673a732b279939', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2019-07-01 16:28:20.0000000', N'2019-07-01 16:26:42.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'86e0f3a8f31c60698157f139ed993954', N'402860816bff91c0016bffa220a9000b', N'having_reserve_funds', N'是否有公积金', N'having_reserve_funds', N'0', N'1', N'string', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'33', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'873e2bb041b17bff77d3aca72900ea1b', N'56870166aba54ebfacb20ba6c770bd73', N'order_code', N'订单编码', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', N'admin', N'2020-02-24 02:31:34.0000000', N'2019-04-20 11:38:39.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'877391ae770a4ce2c95181ef410982ce', N'4028318169e81b970169e81b97650000', N'request_param', N'请求参数', N'request_param', N'0', N'1', N'string', N'255', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'10', NULL, NULL, N'2019-04-04 19:28:36.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'87e82e3c723a6abb020122babdac6bd1', N'8994f2817b5a45d9890aa04497a317c5', N'create_by', N'创建人登录名称', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'1', NULL, NULL, N'2019-03-23 11:39:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'87f7a2703c5850f0b063dd866d0e2917', N'402860816bff91c0016bffa220a9000b', N'birthday', N'出生日期', N'birthday', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'7', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'87fafe1a4a8a626e3875697574c19f15', N'402860816bff91c0016bff91d2810005', N'sys_org_code', N'组织机构编码', N'sys_org_code', N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'14', N'admin', N'2019-07-19 18:05:55.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'88a12570e14c9f6f442e731ae5ad0eb1', N'beee191324fd40c1afec4fda18bd9d47', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2019-04-13 13:41:13.0000000', N'2019-04-13 13:40:56.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'89ab9eedbac6141e7a0df6d37a3655d0', N'e67d26b610dd414c884c4dbb24e71ce3', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2019-04-24 11:03:32.0000000', N'2019-04-24 11:02:57.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'8a24fb45e2af120c253c8b61c0085f7a', N'402860816bff91c0016bff91cda80003', N'sys_org_code', N'组织机构编码', N'sys_org_code', N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'13', N'admin', N'2019-07-19 18:06:36.0000000', N'2019-07-17 18:54:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'8ac8a0c0087469a4e7579229ff17f273', N'e5464aa8fa7b47c580e91593cf9b46dc', N'jifen', N'合计积分', NULL, N'0', N'1', N'int', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'10', N'admin', N'2019-04-24 17:09:49.0000000', N'2019-04-24 11:05:10.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'8bd4deadc9e96c1a6d7abd77033105f6', N'e67d26b610dd414c884c4dbb24e71ce3', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', N'admin', N'2019-04-24 11:03:32.0000000', N'2019-04-24 11:02:57.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'8c6518fec11fc4769ba4eb770c9e00f7', N'4028839a6de2ebd3016de2ebd3870000', N'integral_val', N'积分值', N'integral_val', N'0', N'1', N'int', N'10', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'11', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'8ca56210938fbe649f840e505eb9fd41', N'56870166aba54ebfacb20ba6c770bd73', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2020-02-24 02:31:34.0000000', N'2019-04-20 11:38:39.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'8ea43fd1e4ce82becee61b2f1e2e843f', N'32feeb502544416c9bf41329c10a88f4', N'sex', N'性别', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'sex', N'', N'', N'list', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'8', N'admin', N'2019-08-23 20:03:40.0000000', N'2019-07-02 18:23:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'8f1d302868640b72cef52171a023a203', N'e9faf717024b4aae95cff224ae9b6d97', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2019-07-03 18:23:49.0000000', N'2019-07-03 18:22:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'8f3e6fb68179c690f748f3c541fb50f1', N'7ea60a25fa27470e9080d6a921aabbd1', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', NULL, NULL, N'2019-04-17 00:22:21.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'8fc0be84bed1216635c69af918e097ff', N'402860816aa5921f016aa5dedcb90009', N'name', N'并行会签标题', N'name', N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'6', N'admin', N'2019-05-11 15:56:47.0000000', N'2019-05-11 15:50:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'90a822b8a63bbbc1e9575c9f4e21e021', N'd35109c3632c4952a19ecc094943dd71', N'descc', N'描述', NULL, N'0', N'1', N'string', N'500', N'0', N'', N'', N'', N'', N'textarea', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'8', N'admin', N'2020-02-24 17:29:16.0000000', N'2019-03-15 14:24:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'90f39a6e29dae2e1fbb59d7d605f7c09', N'1acb6f81a1d9439da6cc4e868617b565', N'iz_valid', N'启用状态', NULL, N'0', N'1', N'String', N'2', N'0', N'', N'air_china_valid', N'', N'', N'list', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'11', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-04-23 22:58:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'91be98b96dea1528abc943f9f131fd16', N'402880e570a5d7000170a5d700f50000', N'price', N'价格', NULL, N'0', N'1', N'double', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'n', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', NULL, NULL, N'7', NULL, NULL, N'2020-03-04 21:58:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'9370c9304af30b8d29defe0a5ada6e5b', N'62e29cdb81ac44d1a2d8ff89851b853d', N'DC_DDSA', N'DD', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', NULL, NULL, N'2019-05-11 14:01:14.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'9371f61d39c5d57ddb0a2db96b2e2412', N'402860816bff91c0016bffa220a9000b', N'speciality', N'专业', N'speciality', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'15', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'947174892512ea97fafde899d427ea7e', N'402860816bff91c0016bff91c0cb0000', N'real_name', N'姓名', N'real_name', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'4', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'94b8bf435175cc545366e11992280757', N'32f75e4043ef4070919dbd4337186a3d', N'age', N'年龄', NULL, N'0', N'1', N'int', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'1', N'1', N'1', N'0', N'group', N'', N'', N'7', N'admin', N'2019-04-11 10:15:32.0000000', N'2019-03-27 15:54:49.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'94e682cb802777fe4205536888f69353', N'402860816bff91c0016bff91d2810005', N'create_by', N'创建人', N'create_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'10', N'admin', N'2019-07-19 18:05:55.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'957386b500be42a200d6a56d54345392', N'deea5a8ec619460c9245ba85dbc59e80', N'num', N'数量', NULL, N'0', N'1', N'int', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'n', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'8', N'admin', N'2020-02-24 02:32:21.0000000', N'2019-04-20 11:41:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'960d2847922b61dadeb3518ef55fb0c1', N'1acb6f81a1d9439da6cc4e868617b565', N'wl_name', N'物料名称', NULL, N'0', N'1', N'String', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-04-23 22:58:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'9665f02764774fdd77c19923d3ff3c3e', N'4028318169e81b970169e81b97650000', N'cost_time', N'耗时', N'cost_time', N'0', N'1', N'string', N'19', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'12', NULL, NULL, N'2019-04-04 19:28:36.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'966a4988298d5cb0be47848735ce8cb7', N'4028839a6de2ebd3016de2ebd3870000', N'xg_shangxian', N'选购上限', N'xg_shangxian', N'0', N'1', N'int', N'10', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'12', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'96c585a4f71e5c38ed25b9741366365b', N'402860816bff91c0016bff91c7010001', N'sys_org_code', N'组织机构编码', N'sys_org_code', N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'11', N'admin', N'2019-07-19 18:07:47.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'9765efa2cafde6d0ede2215848c9e80b', N'32f75e4043ef4070919dbd4337186a3d', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'0', N'admin', N'2019-04-11 10:15:32.0000000', N'2019-03-27 15:54:49.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'98e82cb1595609a3b42fa75c60ac1229', N'402860816bff91c0016bff91d2810005', N'update_by', N'更新人', N'update_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'12', N'admin', N'2019-07-19 18:05:55.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'9914a0c84805e72c4b6075e36edb13f9', N'402860816aa5921f016aa5921f480000', N'create_time', N'创建时间', N'create_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'9', N'admin', N'2019-05-11 15:31:54.0000000', N'2019-05-11 14:26:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'9920ecec9c9109fc6b93e86f8fdfa03b', N'402860816bff91c0016bffa220a9000b', N'depart_name', N'所在部门', N'depart_name', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'1', N'1', N'1', N'0', N'group', N'', N'', N'2', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'99b43bbb23237815ebb74b12b4d7ea2f', N'62e29cdb81ac44d1a2d8ff89851b853d', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', NULL, NULL, N'2019-05-11 14:01:14.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'9a579c506f75f75baf88352a5eb2c249', N'1acb6f81a1d9439da6cc4e868617b565', N'bpm_status', N'流程状态', NULL, N'0', N'1', N'String', N'2', N'0', N'1', N'bpm_status', N'', N'', N'list', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'1', N'0', N'single', N'', N'', N'16', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-05-07 16:54:43.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'9a9516645cbc8147b23333fea76aa2bb', N'b81de38db24047b497d476516f8a0865', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', NULL, NULL, N'2020-02-24 14:56:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'9aa6738443d3d8a67cf50506199d15ad', N'cb2d8534a2f544bc9c618dd49da66336', N'aaae', N'aae', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'8', NULL, NULL, N'2020-02-24 17:22:43.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'9c40fb4db8afed3c682c6b8a732fd69d', N'e2faf977fdaf4b25a524f58c2441a51c', N'post', N'用户岗位', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'post_code', N'air_china_post_materiel_main', N'post_name', N'sel_search', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'8', N'admin', N'2019-06-10 17:27:00.0000000', N'2019-04-24 17:12:11.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'9cc60be30026301b9eafb8c310387f54', N'402880e570a5d7000170a5d700f50000', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', NULL, NULL, N'4', NULL, NULL, N'2020-03-04 21:58:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'9d85bafa399f28a40e1de1eeef747223', N'4028318169e81b970169e81b97650000', N'ip', N'IP', N'ip', N'0', N'1', N'string', N'100', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'7', NULL, NULL, N'2019-04-04 19:28:36.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'9d89ff1a019f41d80307652041490944', N'32feeb502544416c9bf41329c10a88f4', N'name', N'请假人', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', N'admin', N'2019-08-23 20:03:40.0000000', N'2019-07-02 18:23:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'9e50680eb4e79b3af352a5933d239dff', N'dbf4675875e14676a3f9a8b2b8941140', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', NULL, NULL, N'2019-05-27 18:02:07.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'a01a7fe5660206e6f407ed98b6c732d6', N'402860816bff91c0016bff91cfea0004', N'phone', N'联系方式', N'phone', N'0', N'1', N'string', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'7', N'admin', N'2019-07-19 18:05:13.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'a1f5daba36f536e7acf6a939826183b0', N'fb19fb067cd841f9ae93d4eb3b883dc0', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'0', NULL, NULL, N'2019-03-23 11:39:48.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'a45eba33810c485b9d8e6f70818a1dfa', N'402860816aa5921f016aa5921f480000', N'bpm_status', N'流程状态', N'bpm_status', N'0', N'1', N'string', N'50', N'0', N'1', N'bpm_status', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'1', N'0', N'group', N'', N'', N'7', N'admin', N'2019-05-11 15:31:54.0000000', N'2019-05-11 14:26:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'a6471d4fb3dbffef01dab1f7d452bb30', N'27fc5f91274344afa7673a732b279939', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', N'admin', N'2019-07-01 16:28:20.0000000', N'2019-07-01 16:26:42.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'a6722b498602d7d7b5177b16789d8cc1', N'e5464aa8fa7b47c580e91593cf9b46dc', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2019-04-24 17:09:48.0000000', N'2019-04-24 11:05:10.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'a76f561057ac9e43a8ca09e478a1eab8', N'402860816bff91c0016bff91ca7e0002', N'update_time', N'更新时间', N'update_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'12', N'admin', N'2019-07-19 18:07:13.0000000', N'2019-07-17 18:54:33.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'a7822f6e4cffb37fc0729cbd4cfd8655', N'32f75e4043ef4070919dbd4337186a3d', N'name', N'用户名', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'1', N'1', N'1', N'0', N'single', N'', N'', N'5', N'admin', N'2019-04-11 10:15:32.0000000', N'2019-03-27 15:54:49.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'a82ca42a76e9d2b8dae6d57dbb5edb54', N'deea5a8ec619460c9245ba85dbc59e80', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2020-02-24 02:32:21.0000000', N'2019-04-20 11:41:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'a940adc4585fa3b5bd2114ea9abe8491', N'402860816bff91c0016bff91ca7e0002', N'cert_level', N'证书级别', N'cert_level', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'5', N'admin', N'2019-07-19 18:07:13.0000000', N'2019-07-17 18:54:33.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'a94f1d7da64f3aa35c32155ea00ccb2f', N'402860816bff91c0016bffa220a9000b', N'id', N'id', N'id', N'1', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'1', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'a9780eace237a15f26931dd6a9ec02e9', N'758334cb1e7445e2822b60e807aec4a3', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', NULL, NULL, N'2019-10-18 18:02:09.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'aa07931514727913413880b7a2b76dcb', N'd3ae1c692b9640e0a091f8c46e17bb01', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', NULL, NULL, N'2019-07-24 14:47:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'aa4780601419c21dabb6c42fc511e71c', N'402860816bff91c0016bffa220a9000b', N'have_children', N'有无子女', N'have_children', N'0', N'1', N'string', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'25', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ab10e0aa029ded2f4420a33420de225d', N'1acb6f81a1d9439da6cc4e868617b565', N'wl_code', N'物料编码', NULL, N'0', N'1', N'String', N'60', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-04-23 22:58:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ab1f880ba593f3757dac70e003945aa2', N'402860816bff91c0016bff91c0cb0000', N'depart_id', N'部门ID', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 19:38:45.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ab58f43f853fd1f65f83c22966883afb', N'beee191324fd40c1afec4fda18bd9d47', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2019-04-13 13:41:13.0000000', N'2019-04-13 13:40:56.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ab8e6f1cca421c5ce395a2c1fdfd2100', N'32feeb502544416c9bf41329c10a88f4', N'sys_org_code', N'所属部门', NULL, N'0', N'1', N'string', N'64', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'6', N'admin', N'2019-08-23 20:03:40.0000000', N'2019-07-02 18:23:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'abe61a8ddf966a979457b763329a537b', N'e5464aa8fa7b47c580e91593cf9b46dc', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2019-04-24 17:09:49.0000000', N'2019-04-24 11:05:10.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ac91565da5fb8fe43a4da3dec660b25f', N'402860816bff91c0016bff91c7010001', N'award_place', N'获奖地点', N'award_place', N'0', N'1', N'string', N'255', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'4', N'admin', N'2019-07-19 18:07:47.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'acff5c8aef3b6288b87fd91215012206', N'e5464aa8fa7b47c580e91593cf9b46dc', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2019-04-24 17:09:49.0000000', N'2019-04-24 11:05:10.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ad061417d5b53c67975eb83657505218', N'73162c3b8161413e8ecdca7eb288d0c9', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2019-07-01 14:23:32.0000000', N'2019-06-10 15:18:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ad93762c6c4a1dd8331e5fa11215b568', N'e2faf977fdaf4b25a524f58c2441a51c', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', N'admin', N'2019-06-10 17:27:00.0000000', N'2019-04-24 17:12:11.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ae31da96f38fc2941cb93d1bb1ab9431', N'deea5a8ec619460c9245ba85dbc59e80', N'product_name', N'产品名字', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', N'admin', N'2020-02-24 02:32:21.0000000', N'2019-04-20 11:41:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ae77bb317366622698c8ab9bf2325833', N'deea5a8ec619460c9245ba85dbc59e80', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2020-02-24 02:32:21.0000000', N'2019-04-20 11:41:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'af0fe0df8b626129de62e22212732517', N'402860816bff91c0016bff91cda80003', N'speciality', N'专业', N'speciality', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'6', N'admin', N'2019-07-19 18:06:36.0000000', N'2019-07-17 18:54:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'af6c582b902e2f2bf9930eba61ae7938', N'73162c3b8161413e8ecdca7eb288d0c9', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', N'admin', N'2019-07-01 14:23:32.0000000', N'2019-06-10 15:18:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'afd3ef1d494a9b69d2c7a3cdde937f6f', N'402860816bff91c0016bffa220a9000b', N'create_by', N'创建人', N'create_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'39', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b01304904babd7479de2acfe8a77157f', N'402860816aa5921f016aa5921f480000', N'id', N'ID', N'id', N'1', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'1', N'admin', N'2019-05-11 15:31:54.0000000', N'2019-05-11 14:26:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b05b4cbb74f389a7376f51ed9fd97030', N'402860816bff91c0016bff91d8830007', N'create_by', N'创建人', N'create_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'10', N'admin', N'2019-07-19 18:04:41.0000000', N'2019-07-17 18:54:37.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b0a06bdbefd304d81a1838d8d94deda9', N'4b556f0168f64976a3d20bfb932bc798', N'name', N'用户名', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', NULL, NULL, N'2019-04-12 23:38:28.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b0b1cf271dd6b221a902da2d2f8f889a', N'e9faf717024b4aae95cff224ae9b6d97', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', N'admin', N'2019-07-03 18:23:49.0000000', N'2019-07-03 18:22:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b18f96f96d979daa7336e81086ea2bc1', N'cb2d8534a2f544bc9c618dd49da66336', N'sys_org_code', N'所属部门', NULL, N'0', N'1', N'string', N'64', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'6', N'admin', N'2020-02-24 17:22:42.0000000', N'2020-02-24 15:15:14.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b1fc6e2ca671b19e57b08a4f57fc2454', N'fb7125a344a649b990c12949945cb6c1', N'update_time', N'更新日期', NULL, N'0', N'1', N'date', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2019-03-26 19:24:11.0000000', N'2019-03-26 19:01:52.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b22694cf34ffb967b8717647816ad5df', N'e5464aa8fa7b47c580e91593cf9b46dc', N'fk_id', N'外键', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'air_china_post_materiel_main', N'id', N'15', N'admin', N'2019-04-24 17:09:49.0000000', N'2019-04-24 11:05:10.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b276facab025f9750b0aff391693cc4b', N'402860816bff91c0016bff91c7010001', N'id', N'id', N'id', N'1', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'1', N'admin', N'2019-07-19 18:07:47.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b2b0cb30159639bb1190e150322b7541', N'4028839a6de2ebd3016de2ebd3870000', N'wl_unit', N'计量单位', N'wl_unit', N'0', N'1', N'string', N'100', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'14', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b3542d3e7908ed885ecc4ba9e7300705', N'4b556f0168f64976a3d20bfb932bc798', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', NULL, NULL, N'2019-04-12 23:38:28.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b47af4d937e55c6208939bac5378bfad', N'62e29cdb81ac44d1a2d8ff89851b853d', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', NULL, NULL, N'2019-05-11 14:01:14.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b53203fc52d067bb4730dbcb7e496bd3', N'56870166aba54ebfacb20ba6c770bd73', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', N'admin', N'2020-02-24 02:31:34.0000000', N'2019-04-20 11:38:39.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b5cfd3c9691a884430f3d9cd5ecb211f', N'e2faf977fdaf4b25a524f58c2441a51c', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2019-06-10 17:27:00.0000000', N'2019-04-24 17:12:11.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b6874a05734cad8bd96ffd2f31f1ebca', N'402860816bff91c0016bff91c7010001', N'create_by', N'创建人', N'create_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'7', N'admin', N'2019-07-19 18:07:47.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b733fa73519603b22d401fabbf9e9781', N'402860816bff91c0016bff91c0cb0000', N'hiredate', N'入职时间', N'hiredate', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'5', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b7938e4518f9062ce62702cf45986e06', N'e2faf977fdaf4b25a524f58c2441a51c', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2019-06-10 17:27:00.0000000', N'2019-04-24 17:12:11.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b7a1243aaa712e2c152c0c7a46f88683', N'402860816bff91c0016bff91d8830007', N'age', N'年龄', N'age', N'0', N'1', N'int', N'10', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'5', N'admin', N'2019-07-19 18:04:41.0000000', N'2019-07-17 18:54:37.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b91258e3dc15b28c2e3f0d934e6e27e8', N'fb7125a344a649b990c12949945cb6c1', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'0', NULL, NULL, N'2019-03-26 19:01:52.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b92572ae142f8dd5f2ac02fb45e6b2c1', N'e2faf977fdaf4b25a524f58c2441a51c', N'name', N'用户名', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'realname,username', N'report_user', N'name,account', N'sel_search', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', N'admin', N'2019-06-10 17:27:00.0000000', N'2019-04-24 17:12:11.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'b9fbace24688c9c9a8c9be72c1d014e7', N'402860816bff91c0016bffa220a9000b', N'phone', N'电话', N'phone', N'0', N'1', N'string', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'18', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ba5f4b2affa94f36eda7f6f133db7ae3', N'402860816bff91c0016bff91d2810005', N'workplace', N'工作单位', N'workplace', N'0', N'1', N'string', N'255', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'6', N'admin', N'2019-07-19 18:05:55.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'bad02e68ea37bf387337516af84a1ddb', N'73162c3b8161413e8ecdca7eb288d0c9', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', N'admin', N'2019-07-01 14:23:32.0000000', N'2019-06-10 15:18:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'bb44475e1d1738a19745bf9f3ebf9e40', N'402860816bff91c0016bff91cfea0004', N'update_time', N'更新时间', N'update_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'12', N'admin', N'2019-07-19 18:05:13.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'bbbb38347b1a5340a1d293e455c632ce', N'fb19fb067cd841f9ae93d4eb3b883dc0', N'3', N'4', NULL, N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', NULL, NULL, N'2019-03-23 11:39:48.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'bc648624ad14c826bbc6e9b23a2b9858', N'402860816bff91c0016bff91ca7e0002', N'employee_id', N'员工ID', N'employee_id', N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'oa_employee_info', N'id', N'2', N'admin', N'2019-07-19 18:07:13.0000000', N'2019-07-17 18:54:33.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'bc793fdbef9f6474425456c4eb9d197a', N'402860816bff91c0016bff91cfea0004', N'witness', N'证明人', N'references', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'6', N'admin', N'2019-07-19 18:05:13.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'bc7df6f3cf49f670c36a3de25e25e715', N'402860816bff91c0016bff91d2810005', N'order_no', N'序号', N'order_no', N'0', N'1', N'int', N'10', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'9', N'admin', N'2019-07-19 18:05:55.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'bd39cb237049ac60218b3f4dd844f30c', N'402860816bff91c0016bffa220a9000b', N'current_address', N'现居住地', N'current_address', N'0', N'1', N'string', N'200', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'30', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'bde81809057b1a4c974fa0f090501fdd', N'402860816aa5921f016aa5dedcb90009', N'update_by', N'更新人', N'update_by', N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'4', N'admin', N'2019-05-11 15:56:47.0000000', N'2019-05-11 15:50:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'be3f8c157d8a1b40e6f7b836552a8095', N'8994f2817b5a45d9890aa04497a317c5', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'2', NULL, NULL, N'2019-03-23 11:39:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'be5eeda7d51dace73d3818bd8467b53b', N'402860816bff91c0016bff91c0cb0000', N'update_time', N'更新时间', N'update_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'15', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'be868eed386da3cfcf49ea9afcdadf11', N'd35109c3632c4952a19ecc094943dd71', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2020-02-24 17:29:16.0000000', N'2019-03-15 14:24:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'bec3082fc5f0f194be5cd72cc2866ff4', N'e5464aa8fa7b47c580e91593cf9b46dc', N'wl_name', N'物料名字', NULL, N'0', N'1', N'String', N'200', N'0', N'', N'wl_code', N'air_china_materiel', N'wl_name', N'list', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', N'admin', N'2019-04-24 17:09:49.0000000', N'2019-04-24 11:05:10.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'bed0bc67f570613eaa6a1bd8bcaaddcc', N'4b556f0168f64976a3d20bfb932bc798', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', NULL, NULL, N'2019-04-12 23:38:28.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'bed95ca6dd6bb4b4f7cfd787313a0a4b', N'402880e570a5d7000170a5d700f50000', N'product_name', N'产品名字', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', NULL, NULL, N'6', NULL, NULL, N'2020-03-04 21:58:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'bf61aa04c5ca77ad54c764f8f8b2bdec', N'402860816bff91c0016bff91d8830007', N'update_by', N'更新人', N'update_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'12', N'admin', N'2019-07-19 18:04:41.0000000', N'2019-07-17 18:54:37.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'bfc2f19fae367f885adb8bd82a344391', N'4028318169e81b970169e81b97650000', N'userid', N'操作用户账号', N'userid', N'0', N'1', N'string', N'32', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'5', NULL, NULL, N'2019-04-04 19:28:36.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'c0d66c95773774e7ac1f2a88df307e7a', N'402860816aa5921f016aa5921f480000', N'reason', N'请假原因', N'reason', N'0', N'1', N'string', N'500', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'6', N'admin', N'2019-05-11 15:31:54.0000000', N'2019-05-11 14:26:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'c29216d975fee50af175bca8c664a475', N'e67d26b610dd414c884c4dbb24e71ce3', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', N'admin', N'2019-04-24 11:03:32.0000000', N'2019-04-24 11:02:56.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'c43d87b6340c29c0c354aa9c579f387f', N'32feeb502544416c9bf41329c10a88f4', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2019-08-23 20:03:40.0000000', N'2019-07-02 18:23:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'c52711856d2e81ad1074265833f44328', N'b81de38db24047b497d476516f8a0865', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'1', N'single', N'', N'', N'1', NULL, NULL, N'2020-02-24 14:56:07.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'c5dd2fc34ae825ebfced2ec74948654c', N'402860816aa5921f016aa5921f480000', N'end_date', N'请假结束时间', N'end_date', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'5', N'admin', N'2019-05-11 15:31:54.0000000', N'2019-05-11 14:26:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'c5f6ea01a6523a60df153cc61dc92f4d', N'fbc35f067da94a70adb622ddba259352', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', NULL, NULL, N'2019-07-03 19:44:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'c6730e00df5efd77fedf181df29102de', N'402860816bff91c0016bff91c7010001', N'update_by', N'更新人', N'update_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'9', N'admin', N'2019-07-19 18:07:47.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'c75a7cb0a21958aa7ca5442f66019669', N'e9faf717024b4aae95cff224ae9b6d97', N'depart', N'所属部门', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'9', N'admin', N'2019-07-03 18:23:49.0000000', N'2019-07-03 18:22:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'c772ed9cbe2d1dc69e9ffa73d3487021', N'4b556f0168f64976a3d20bfb932bc798', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', NULL, NULL, N'2019-04-12 23:38:28.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'c91b697b1bcd2be943fc746e2660bc9e', N'402860816bff91c0016bff91d2810005', N'real_name', N'姓名', N'real_name', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'3', N'admin', N'2019-07-19 18:05:55.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'c9b698d3f75aa780ee1eb67ef090b15b', N'73162c3b8161413e8ecdca7eb288d0c9', N'wl_code', N'物料编码', NULL, N'0', N'1', N'String', N'200', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'8', N'admin', N'2019-07-01 14:23:32.0000000', N'2019-06-10 15:18:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'caf5a071f2299c0f9ff2f3038d6d0fc6', N'402860816bff91c0016bff91ca7e0002', N'update_by', N'更新人', N'update_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'11', N'admin', N'2019-07-19 18:07:13.0000000', N'2019-07-17 18:54:33.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'cb33a708b95e19085f8c9001d2d5c64c', N'e9faf717024b4aae95cff224ae9b6d97', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2019-07-03 18:23:49.0000000', N'2019-07-03 18:22:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'cb7da49a981a1b0acc5f7e8a0130bdcd', N'd35109c3632c4952a19ecc094943dd71', N'user_code', N'用户编码', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'0', N'0', N'single', N'', N'', N'10', N'admin', N'2020-02-24 17:29:16.0000000', N'2019-05-11 16:26:37.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'cb871284e845e26e88242a96fac9c576', N'402860816bff91c0016bff91c7010001', N'order_no', N'序号', N'order_no', N'0', N'1', N'int', N'10', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'6', N'admin', N'2019-07-19 18:07:47.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'cc1ddc1304d3eb5d9a189da0a509ccd0', N'32f75e4043ef4070919dbd4337186a3d', N'create_by', N'创建人登录名称', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', N'admin', N'2019-04-11 10:15:32.0000000', N'2019-03-27 15:54:49.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ccf2f331af46ddc411b8039dd187621b', N'4028839a6de2ebd3016de2ebd3870000', N'price', N'单价', N'price', N'0', N'1', N'double', N'10', N'2', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'10', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'cee3c1dbf67b4a7d9626b8032897a4c7', N'402860816bff91c0016bff91d8830007', N'employee_id', N'员工ID', N'employee_id', N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'oa_employee_info', N'id', N'2', N'admin', N'2019-07-19 18:04:41.0000000', N'2019-07-17 18:54:37.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'cf4c5a4c06ae6bac701edfeedfcd16aa', N'd3ae1c692b9640e0a091f8c46e17bb01', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', NULL, NULL, N'2019-07-24 14:47:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'cfeb6491427aec2b4db9694af867da23', N'e9faf717024b4aae95cff224ae9b6d97', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2019-07-03 18:23:49.0000000', N'2019-07-03 18:22:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd0559db07f05c870860f98313eb0f857', N'cb2d8534a2f544bc9c618dd49da66336', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2020-02-24 17:22:42.0000000', N'2020-02-24 15:15:14.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd2551b70dc96a45a73b304bf755a996f', N'402860816bff91c0016bff91d8830007', N'workplace', N'工作单位', N'workplace', N'0', N'1', N'string', N'255', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'6', N'admin', N'2019-07-19 18:04:41.0000000', N'2019-07-17 18:54:37.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd29dcdba14ea61808391fff2d927efea', N'402860816bff91c0016bff91c0cb0000', N'work_summary', N'工作总结', N'work_summary', N'0', N'1', N'Text', N'65535', N'0', N'', N'', N'', N'', N'textarea', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'10', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd3a701472d27ca8435d6a781a597038d', N'deea5a8ec619460c9245ba85dbc59e80', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2020-02-24 02:32:21.0000000', N'2019-04-20 11:41:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd48bfd2a840f9b1d00bd3b5599dca0f0', N'402860816bff91c0016bff91cda80003', N'post', N'职务', N'post', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'7', N'admin', N'2019-07-19 18:06:36.0000000', N'2019-07-17 18:54:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd4d8cae3cd9ea93e378fc14303eee105', N'd35109c3632c4952a19ecc094943dd71', N'create_by', N'创建人登录名称', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', N'admin', N'2020-02-24 17:29:16.0000000', N'2019-03-15 14:24:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd4dea775487aef5a7aea41791d3a65db', N'e5464aa8fa7b47c580e91593cf9b46dc', N'cycle_time', N'发放周期(年)', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'11', N'admin', N'2019-04-24 17:09:49.0000000', N'2019-04-24 14:09:06.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd52c79620e21128fb69b4e8628cf25cc', N'dbf4675875e14676a3f9a8b2b8941140', N'sys_org_code', N'所属部门', NULL, N'0', N'1', N'string', N'64', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'6', NULL, NULL, N'2019-05-27 18:02:07.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd530ab1bc3c51e8249a506a25d1003c7', N'79091e8277c744158530321513119c68', N'start_time', N'会签发起时间', NULL, N'0', N'1', N'Date', N'32', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', N'admin', N'2019-05-11 15:29:47.0000000', N'2019-05-11 15:27:17.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd53e70411c206efecb8dcd00174e907c', N'62e29cdb81ac44d1a2d8ff89851b853d', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', NULL, NULL, N'2019-05-11 14:01:14.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd5df0a35352ee960053686e959e9084b', N'1acb6f81a1d9439da6cc4e868617b565', N'wl_unit', N'计量单位', NULL, N'0', N'1', N'String', N'100', N'0', N'', N'air_china_unit', N'', N'', N'list_multi', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'8', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-04-23 22:58:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd6fad89f4f26d733291863c2dfbc5945', N'27fc5f91274344afa7673a732b279939', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', N'admin', N'2019-07-01 16:28:20.0000000', N'2019-07-01 16:26:42.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd766ea5809e2ec9ff2cdbcb18f610ab3', N'7ea60a25fa27470e9080d6a921aabbd1', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', NULL, NULL, N'2019-04-17 00:22:21.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd7c3b107f004cbc99dfe1fe6c79894d8', N'402860816bff91c0016bffa220a9000b', N'social_insurance_type', N'参加社保类型', N'social_insurance_type', N'0', N'1', N'string', N'255', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'35', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd8234b56acea1a752271a6c911dd91a0', N'7ea60a25fa27470e9080d6a921aabbd1', N'age', N'年龄', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', NULL, NULL, N'2019-04-17 00:22:21.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd86909d794b01ad7fbb5e61d28b6603b', N'73162c3b8161413e8ecdca7eb288d0c9', N'sys_org_code', N'所属部门', NULL, N'0', N'1', N'string', N'64', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'6', N'admin', N'2019-07-01 14:23:32.0000000', N'2019-06-10 15:18:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd949d9157831c2fb7ba9f175081fe036', N'402860816bff91c0016bff91cda80003', N'school', N'学校', N'school', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'5', N'admin', N'2019-07-19 18:06:36.0000000', N'2019-07-17 18:54:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd9d308feb95968dbb322c9bff0c18452', N'32feeb502544416c9bf41329c10a88f4', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2019-08-23 20:03:40.0000000', N'2019-07-02 18:23:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd9dde2f59bb148c6b7e95256acad8972', N'e67d26b610dd414c884c4dbb24e71ce3', N'post_name', N'岗位名字', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', N'admin', N'2019-04-24 11:03:32.0000000', N'2019-04-24 11:02:57.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'd9f9ae6986cb85019a3a4030f62f4d1a', N'402860816bff91c0016bff91cfea0004', N'employee_id', N'员工ID', N'employee_id', N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'oa_employee_info', N'id', N'2', N'admin', N'2019-07-19 18:05:13.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'db1fb3e12385cb967b63420cfe97cde6', N'402860816bff91c0016bff91cda80003', N'employee_id', N'员工ID', N'employee_id', N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'oa_employee_info', N'id', N'2', N'admin', N'2019-07-19 18:06:36.0000000', N'2019-07-17 18:54:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'dc2bec862a4f0d600751c632d246f0ed', N'4028839a6de2ebd3016de2ebd3870000', N'update_time', N'更新日期', N'update_time', N'0', N'1', N'Date', N'0', N'0', NULL, NULL, NULL, NULL, N'date', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'5', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'dd3e1e13d7429807b83a00a090e060b7', N'402860816bff91c0016bffa220a9000b', N'join_party_info', N'入党（团）时间地点', N'join_party_info', N'0', N'1', N'string', N'255', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'26', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ddc302f84c75a5f056855c664b82202a', N'402860816aa5921f016aa5921f480000', N'days', N'请假天数', N'days', N'0', N'1', N'int', N'10', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'3', N'admin', N'2019-05-11 15:31:54.0000000', N'2019-05-11 14:26:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ddcc14a2105588982b4ae657f2893d81', N'32feeb502544416c9bf41329c10a88f4', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', N'admin', N'2019-08-23 20:03:40.0000000', N'2019-07-02 18:23:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'de34e46a66def956437635585db427b7', N'cb2d8534a2f544bc9c618dd49da66336', N'dde', N'ee', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'10', NULL, NULL, N'2020-02-24 17:22:43.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'dedb920a5e876e27eb144464209ebe1e', N'27fc5f91274344afa7673a732b279939', N'sys_org_code', N'所属部门', NULL, N'0', N'1', N'string', N'64', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'6', N'admin', N'2019-07-01 16:28:20.0000000', N'2019-07-01 16:26:42.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'df489194c6008f3bd21b2c1c11fde337', N'fb19fb067cd841f9ae93d4eb3b883dc0', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'2', NULL, NULL, N'2019-03-23 11:39:48.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'e09b191e3c37f9c89ae2192c75220b89', N'b81de38db24047b497d476516f8a0865', N'sys_org_code', N'所属部门', NULL, N'0', N'1', N'string', N'64', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'6', NULL, NULL, N'2020-02-24 14:56:08.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'e0c5d6e483897d5c4e7894dc66dd1aff', N'32feeb502544416c9bf41329c10a88f4', N'bpm_status', N'流程状态', NULL, N'0', N'1', N'String', N'2', N'0', N'', N'bpm_status', N'', N'', N'list', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'9', N'admin', N'2019-08-23 20:03:40.0000000', N'2019-07-02 18:23:58.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'e24de426223dc0271a55eccc1d5457d0', N'73162c3b8161413e8ecdca7eb288d0c9', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2019-07-01 14:23:32.0000000', N'2019-06-10 15:18:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'e2d73ccda7f10f5a1ccce3c48b1e699e', N'402860816bff91c0016bffa220a9000b', N'residence_street', N'户口所在街道', N'residence_street', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'27', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'e4914fdff68ac72486ada105e6e9fa36', N'e9faf717024b4aae95cff224ae9b6d97', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', N'admin', N'2019-07-03 18:23:49.0000000', N'2019-07-03 18:22:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'e4a4c1d50b7b46678bc14fd5b90ee082', N'73162c3b8161413e8ecdca7eb288d0c9', N'create_time', N'创建日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2019-07-01 14:23:32.0000000', N'2019-06-10 15:18:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'e50b4398731e06572c247993a0dcc38d', N'd35109c3632c4952a19ecc094943dd71', N'name', N'用户名', NULL, N'0', N'1', N'string', N'200', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'*', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'5', N'admin', N'2020-02-24 17:29:16.0000000', N'2019-03-15 14:24:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'e53f53766d1f7718b3ee5eabe105b969', N'402860816bff91c0016bffa220a9000b', N'social_insurance_time', N'五险一金日期', N'social_insurance_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'38', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'e672d5974a06d5c37b3b4c94a6f29f96', N'4028318169e81b970169e81b97650000', N'request_url', N'请求路径', N'request_url', N'0', N'1', N'string', N'255', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'9', NULL, NULL, N'2019-04-04 19:28:36.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'e7aade12ca722b59c1ec681d14247ff8', N'402860816bff91c0016bff91d8830007', N'sys_org_code', N'组织机构编码', N'sys_org_code', N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'14', N'admin', N'2019-07-19 18:04:41.0000000', N'2019-07-17 18:54:37.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'e845925368919482df6dac58e6ed708d', N'402860816bff91c0016bff91d8830007', N'phone', N'联系方式', N'phone', N'0', N'1', N'string', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'8', N'admin', N'2019-07-19 18:04:41.0000000', N'2019-07-17 18:54:37.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'e88d328af34dd8a17f51437c52b68a2d', N'402860816bff91c0016bff91cfea0004', N'create_by', N'创建人', N'create_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'9', N'admin', N'2019-07-19 18:05:13.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'e99cc08f4d88dd8f788399db8d448ee8', N'62e29cdb81ac44d1a2d8ff89851b853d', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', NULL, NULL, N'2019-05-11 14:01:14.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ea644c4c208739640933ba6e568045c1', N'e2faf977fdaf4b25a524f58c2441a51c', N'ruz_date', N'入职时间', NULL, N'0', N'1', N'Date', N'32', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'9', N'admin', N'2019-06-10 17:27:00.0000000', N'2019-04-24 17:12:11.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ea96d1c33f0f0d7245045e70a5793257', N'402860816bff91c0016bffa220a9000b', N'current_postcode', N'现居住地邮编', N'current_postcode', N'0', N'1', N'string', N'10', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'31', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ebc41362681919cc680fcc58bf87fdcb', N'1acb6f81a1d9439da6cc4e868617b565', N'price', N'单价', NULL, N'0', N'1', N'double', N'10', N'2', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'12', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-04-23 22:58:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ec20e66d5eb9b8b7f58de9edc0f7630b', N'1acb6f81a1d9439da6cc4e868617b565', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-04-23 22:58:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ec5e9cb5809b2f8ce1446df4a27693f0', N'27fc5f91274344afa7673a732b279939', N'name', N'用户名', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', N'admin', N'2019-07-01 16:28:20.0000000', N'2019-07-01 16:26:42.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ed16f23d08e7bcda11a1383fda68057e', N'402860816bff91c0016bff91c7010001', N'employee_id', N'员工ID', N'employee_id', N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'oa_employee_info', N'id', N'2', N'admin', N'2019-07-19 18:07:47.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'edda30c64e1dccee510d40b77a8ca094', N'fb7125a344a649b990c12949945cb6c1', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'3', N'admin', N'2019-03-26 19:24:11.0000000', N'2019-03-26 19:01:52.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ee09e0e21fa350b9346b70292dcfca00', N'79091e8277c744158530321513119c68', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', N'admin', N'2019-05-11 15:29:47.0000000', N'2019-05-11 15:27:17.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ee4ffe04a25fcf556e78183f1f521546', N'402860816aa5921f016aa5921f480000', N'create_by', N'创建人id', N'create_by', N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'8', N'admin', N'2019-05-11 15:31:54.0000000', N'2019-05-11 14:26:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ee5803611f63643059b6375166d71567', N'402860816bff91c0016bff91c7010001', N'create_time', N'创建时间', N'create_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'8', N'admin', N'2019-07-19 18:07:47.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ef81373c5fd7130d7e23859d90c9eb3e', N'402860816bff91c0016bff91cda80003', N'from_time', N'开始日期', N'from_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'3', N'admin', N'2019-07-19 18:06:36.0000000', N'2019-07-17 18:54:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'efd1b955a75b5046e9857e00fe94ae2c', N'fbc35f067da94a70adb622ddba259352', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', NULL, NULL, N'2019-07-03 19:44:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f015cc2ffdcc2c4be1e9b3622eb69b52', N'fbc35f067da94a70adb622ddba259352', N'sys_org_code', N'所属部门', NULL, N'0', N'1', N'string', N'64', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'6', NULL, NULL, N'2019-07-03 19:44:23.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f06b2bb01ea1fae487b7e3c3eb521d5b', N'd3ae1c692b9640e0a091f8c46e17bb01', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', NULL, NULL, N'2019-07-24 14:47:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f0967fd139b440f79f21248bf4e4a209', N'd3ae1c692b9640e0a091f8c46e17bb01', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', NULL, NULL, N'2019-07-24 14:47:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f0a453930aa16ca32f2e3be860bfe542', N'402860816bff91c0016bffa220a9000b', N'education', N'学历', N'education', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'14', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f12753b4a3815697a72017a7436fe733', N'e2faf977fdaf4b25a524f58c2441a51c', N'update_time', N'更新日期', NULL, N'0', N'1', N'Date', N'20', N'0', N'', N'', N'', N'', N'datetime', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'5', N'admin', N'2019-06-10 17:27:00.0000000', N'2019-04-24 17:12:11.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f1ab7d3b55ade57eeac6c55b32ce813a', N'1acb6f81a1d9439da6cc4e868617b565', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-04-23 22:58:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f1c7fde21f26c7ed64a0ef1095900c52', N'4028318169e81b970169e81b97650000', N'request_type', N'请求类型', N'request_type', N'0', N'1', N'string', N'10', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'11', NULL, NULL, N'2019-04-04 19:28:36.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f3284a1ce6da9b887dce89091eaa0f6b', N'402880e570a5d7000170a5d700f50000', N'pro_type', N'产品类型', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'sex', N'', N'', N'radio', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', NULL, NULL, N'9', NULL, NULL, N'2020-03-04 21:58:16.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f4647a91a4ac5d6d32bb0692b800bffe', N'402860816bff91c0016bff91c0cb0000', N'probation_post', N'试用期职位', N'probation_post', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'8', N'admin', N'2019-07-19 18:09:01.0000000', N'2019-07-17 18:54:32.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f4b0bc7f3d6562e28d7c5e2d56510ecd', N'e5464aa8fa7b47c580e91593cf9b46dc', N'first_num', N'首次数量', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'8', N'admin', N'2019-04-24 17:09:49.0000000', N'2019-04-24 14:31:31.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f558359b06aea79a992c102ce3563a4d', N'4028318169e81b970169e81b97650000', N'username', N'操作用户名称', N'username', N'0', N'1', N'string', N'100', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'6', NULL, NULL, N'2019-04-04 19:28:36.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f6afcb7d8ea81879593ff737b55ddcc0', N'402860816bff91c0016bff91cda80003', N'id', N'id', N'id', N'1', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'1', N'admin', N'2019-07-19 18:06:36.0000000', N'2019-07-17 18:54:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f6f8aed87ec73994f6a12abbc079dbb1', N'402860816bff91c0016bffa220a9000b', N'update_by', N'更新人', N'update_by', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'41', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f7332af7586c83c87f7b9ea144a5292d', N'62e29cdb81ac44d1a2d8ff89851b853d', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', NULL, NULL, N'2019-05-11 14:01:14.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f76719783433487f4710232e2ae0e521', N'402860816bff91c0016bff91cfea0004', N'id', N'id', N'id', N'1', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'group', N'', N'', N'1', N'admin', N'2019-07-19 18:05:13.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f7e7eb84ddc34d7e09d10af213ac6667', N'402860816bff91c0016bff91d2810005', N'create_time', N'创建时间', N'create_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'11', N'admin', N'2019-07-19 18:05:55.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f81d7103c0c857e5c744cda2bc4c000a', N'402860816bff91c0016bff91ca7e0002', N'cert_organizations', N'发证机关', N'cert_organizations', N'0', N'1', N'string', N'255', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'6', N'admin', N'2019-07-19 18:07:13.0000000', N'2019-07-17 18:54:33.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f82db8edef5babf741914b0fa221329b', N'4028839a6de2ebd3016de2ebd3870000', N'bpm_status', N'流程状态', N'bpm_status', N'0', N'1', N'string', N'2', N'0', NULL, NULL, NULL, NULL, N'text', NULL, N'120', NULL, N'0', NULL, NULL, N'0', N'1', N'1', N'0', N'group', NULL, NULL, N'16', NULL, NULL, N'2019-10-19 15:29:30.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f8a0fd20a1173270afdfed1129d5c669', N'402860816bff91c0016bffa220a9000b', N'depart_id', N'所在部门id', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'44', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-19 15:33:44.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f8cc6be747fec10802eb625ac529c16f', N'402860816bff91c0016bff91cfea0004', N'create_time', N'创建时间', N'create_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'10', N'admin', N'2019-07-19 18:05:13.0000000', N'2019-07-17 18:54:35.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f90bcb38fb89988bd40d1618aa75cea0', N'758334cb1e7445e2822b60e807aec4a3', N'id', N'主键', NULL, N'1', N'0', N'string', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'1', NULL, NULL, N'2019-10-18 18:02:09.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f94db83e41c69f407d3c9a81c5892269', N'402860816bff91c0016bffa220a9000b', N'first_job_time', N'首次工作时间', N'first_job_time', N'0', N'1', N'Date', N'0', N'0', N'', N'', N'', N'', N'date', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'22', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'f95d2cbefd25444909c83aaf8c4f72fb', N'402860816bff91c0016bff91ca7e0002', N'memo', N'备注', N'memo', N'0', N'1', N'string', N'255', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'7', N'admin', N'2019-07-19 18:07:13.0000000', N'2019-07-17 18:54:33.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'fa3a12d7abf72b23afe425f8dbd57f86', N'1acb6f81a1d9439da6cc4e868617b565', N'size_type', N'尺码类型', NULL, N'0', N'1', N'String', N'2', N'0', N'', N'air_china_size', N'', N'', N'list', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'9', N'admin', N'2019-06-10 14:47:14.0000000', N'2019-04-23 22:58:19.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'fa8f5a0ba673e0208934567462844eab', N'402860816bff91c0016bff91ca7e0002', N'sys_org_code', N'组织机构编码', N'sys_org_code', N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'13', N'admin', N'2019-07-19 18:07:13.0000000', N'2019-07-17 18:54:33.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'fafb32cf7e63bca93bbd70b0a0ea11fc', N'758334cb1e7445e2822b60e807aec4a3', N'sys_org_code', N'所属部门', NULL, N'0', N'1', N'string', N'64', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'6', NULL, NULL, N'2019-10-18 18:02:09.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'fc55d467102c2c782286f546d7820c3d', N'73162c3b8161413e8ecdca7eb288d0c9', N'pid', N'父物料', NULL, N'0', N'1', N'String', N'36', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'9', N'admin', N'2019-07-01 14:23:32.0000000', N'2019-06-10 15:18:34.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'fc76a3832d232829852cae6c66e44f67', N'402860816bff91c0016bffa220a9000b', N'identity_no', N'身份证号', N'identity_no', N'0', N'1', N'string', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'21', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'fcd519058d68fa4dab192335602b5d24', N'402860816bff91c0016bffa220a9000b', N'real_name', N'姓名', N'real_name', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'5', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'fd0586cae06685959415d9017b2bdf49', N'758334cb1e7445e2822b60e807aec4a3', N'create_by', N'创建人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'2', NULL, NULL, N'2019-10-18 18:02:09.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'fde00160a5d664effaa4b5552e814e74', N'fb7125a344a649b990c12949945cb6c1', N'sex', N'性别', NULL, N'0', N'1', N'string', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', N'', N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'6', N'admin', N'2019-03-26 19:24:11.0000000', N'2019-03-26 19:01:52.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'fef2add806c5e1ddd01c79c7e84f5a65', N'cb2d8534a2f544bc9c618dd49da66336', N'cc', N'cc', NULL, N'0', N'1', N'String', N'32', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'single', N'', N'', N'7', NULL, NULL, N'2020-02-24 17:22:42.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ff49b468e54e137032f7e4d976b83b5a', N'402860816bff91c0016bffa220a9000b', N'politically_status', N'政治面貌', N'politically_status', N'0', N'1', N'string', N'20', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'8', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ff601f75d0e7ced226748eb8fba2c896', N'402860816bff91c0016bff91d8830007', N'relation', N'关系', N'relation', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'4', N'admin', N'2019-07-19 18:04:41.0000000', N'2019-07-17 18:54:37.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ffacafee9fa46eb297ca3252f95acef9', N'402860816bff91c0016bffa220a9000b', N'school', N'毕业学校', N'school', N'0', N'1', N'string', N'100', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'1', N'1', N'0', N'group', N'', N'', N'9', N'admin', N'2019-07-22 16:15:32.0000000', N'2019-07-17 19:12:24.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgform_field]  VALUES (N'ffcbf379fffabbd13aa2c22ce565ec12', N'79091e8277c744158530321513119c68', N'update_by', N'更新人', NULL, N'0', N'1', N'string', N'50', N'0', N'', N'', N'', N'', N'text', N'', N'120', NULL, N'0', N'', N'', N'0', N'0', N'0', N'0', N'single', N'', N'', N'4', N'admin', N'2019-05-11 15:29:47.0000000', N'2019-05-11 15:27:17.0000000', N'admin')
GO


-- ----------------------------
-- Table structure for onl_cgform_head
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[onl_cgform_head]') AND type IN ('U'))
	DROP TABLE [dbo].[onl_cgform_head]
GO

CREATE TABLE [dbo].[onl_cgform_head] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [table_name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [table_type] int  NOT NULL,
  [table_version] int  NULL,
  [table_txt] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [is_checkbox] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [is_db_synch] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [is_page] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [is_tree] nvarchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [id_sequence] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [id_type] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [query_mode] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [relation_type] int  NULL,
  [sub_table_str] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [tab_order_num] int  NULL,
  [tree_parent_id_field] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [tree_id_field] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [tree_fieldname] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [form_category] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [form_template] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [form_template_mobile] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [scroll] int  NULL,
  [copy_version] int  NULL,
  [copy_type] int  NULL,
  [physic_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [theme_template] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[onl_cgform_head] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键ID',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表名',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'table_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表类型: 0单表、1主表、2附表',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'table_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表版本',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'table_version'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表说明',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'table_txt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否带checkbox',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'is_checkbox'
GO

EXEC sp_addextendedproperty
'MS_Description', N'同步数据库状态',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'is_db_synch'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否分页',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'is_page'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否是树',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'is_tree'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键生成序列',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'id_sequence'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键类型',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'id_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'查询模式',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'query_mode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'映射关系 0一对多  1一对一',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'relation_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'子表',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'sub_table_str'
GO

EXEC sp_addextendedproperty
'MS_Description', N'附表排序序号',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'tab_order_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'树形表单父id',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'tree_parent_id_field'
GO

EXEC sp_addextendedproperty
'MS_Description', N'树表主键字段',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'tree_id_field'
GO

EXEC sp_addextendedproperty
'MS_Description', N'树开表单列字段',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'tree_fieldname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单分类',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'form_category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'PC表单模板',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'form_template'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单模板样式(移动端)',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'form_template_mobile'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否有横向滚动条',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'scroll'
GO

EXEC sp_addextendedproperty
'MS_Description', N'复制版本号',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'copy_version'
GO

EXEC sp_addextendedproperty
'MS_Description', N'复制表类型1为复制表 0为原始表',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'copy_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'原始表ID',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'physic_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主题模板',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_head',
'COLUMN', N'theme_template'
GO


-- ----------------------------
-- Records of onl_cgform_head
-- ----------------------------
INSERT INTO [dbo].[onl_cgform_head]  VALUES (N'402880e570a5d7000170a5d700f50000', N'test_order_product$1', N'1', N'11', N'订单产品明细', N'N', N'N', N'Y', N'N', NULL, N'UUID', N'single', NULL, NULL, NULL, NULL, NULL, NULL, N'bdfl_include', N'1', NULL, N'0', N'1', N'1', N'deea5a8ec619460c9245ba85dbc59e80', NULL, NULL, N'admin', N'2020-03-04 21:58:16.0000000', NULL)
GO

INSERT INTO [dbo].[onl_cgform_head]  VALUES (N'56870166aba54ebfacb20ba6c770bd73', N'test_order_main', N'2', N'8', N'测试订单主表', N'N', N'Y', N'Y', N'N', NULL, N'UUID', N'single', NULL, N'test_order_product', NULL, NULL, NULL, NULL, N'bdfl_include', N'2', NULL, N'0', NULL, N'0', NULL, N'admin', N'2020-02-24 02:32:21.0000000', N'admin', N'2019-04-20 11:38:39.0000000', N'normal')
GO

INSERT INTO [dbo].[onl_cgform_head]  VALUES (N'd35109c3632c4952a19ecc094943dd71', N'test_demo', N'1', N'18', N'测试用户表', N'N', N'Y', N'Y', N'N', NULL, N'UUID', N'single', NULL, NULL, NULL, NULL, NULL, NULL, N'bdfl_include', N'1', NULL, N'0', NULL, N'0', NULL, N'admin', N'2020-02-24 17:29:16.0000000', N'admin', N'2019-03-15 14:24:35.0000000', N'normal')
GO

INSERT INTO [dbo].[onl_cgform_head]  VALUES (N'deea5a8ec619460c9245ba85dbc59e80', N'test_order_product', N'3', N'11', N'订单产品明细', N'N', N'Y', N'Y', N'N', NULL, N'UUID', N'single', N'0', NULL, N'1', NULL, NULL, NULL, N'bdfl_include', N'1', NULL, N'0', NULL, N'0', NULL, N'admin', N'2020-02-24 02:32:21.0000000', N'admin', N'2019-04-20 11:41:19.0000000', N'erp')
GO


-- ----------------------------
-- Table structure for onl_cgform_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[onl_cgform_index]') AND type IN ('U'))
	DROP TABLE [dbo].[onl_cgform_index]
GO

CREATE TABLE [dbo].[onl_cgform_index] (
  [id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [cgform_head_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [index_name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [index_field] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [index_type] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[onl_cgform_index] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_index',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主表id',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_index',
'COLUMN', N'cgform_head_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'索引名称',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_index',
'COLUMN', N'index_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'索引栏位',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_index',
'COLUMN', N'index_field'
GO

EXEC sp_addextendedproperty
'MS_Description', N'索引类型',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_index',
'COLUMN', N'index_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_index',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_index',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_index',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgform_index',
'COLUMN', N'update_time'
GO


-- ----------------------------
-- Table structure for onl_cgreport_head
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[onl_cgreport_head]') AND type IN ('U'))
	DROP TABLE [dbo].[onl_cgreport_head]
GO

CREATE TABLE [dbo].[onl_cgreport_head] (
  [id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [cgr_sql] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [return_val_field] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [return_txt_field] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [return_type] nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_source] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [content] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[onl_cgreport_head] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'报表编码',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_head',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'报表名字',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_head',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'报表SQL',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_head',
'COLUMN', N'cgr_sql'
GO

EXEC sp_addextendedproperty
'MS_Description', N'返回值字段',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_head',
'COLUMN', N'return_val_field'
GO

EXEC sp_addextendedproperty
'MS_Description', N'返回文本字段',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_head',
'COLUMN', N'return_txt_field'
GO

EXEC sp_addextendedproperty
'MS_Description', N'返回类型，单选或多选',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_head',
'COLUMN', N'return_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'动态数据源',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_head',
'COLUMN', N'db_source'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_head',
'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_head',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人id',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_head',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_head',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人id',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_head',
'COLUMN', N'create_by'
GO


-- ----------------------------
-- Records of onl_cgreport_head
-- ----------------------------
INSERT INTO [dbo].[onl_cgreport_head]  VALUES (N'6c7f59741c814347905a938f06ee003c', N'report_user', N'统计在线用户', N'select * from sys_user', NULL, NULL, N'1', N'', NULL, N'2020-02-24 03:22:51.0000000', N'admin', N'2019-03-25 11:20:45.0000000', N'admin')
GO

INSERT INTO [dbo].[onl_cgreport_head]  VALUES (N'87b55a515d3441b6b98e48e5b35474a6', N'demo', N'Report Demo', N'select * from demo', NULL, NULL, N'1', N'', NULL, N'2020-02-24 02:33:25.0000000', N'admin', N'2019-03-12 11:25:16.0000000', N'admin')
GO


-- ----------------------------
-- Table structure for onl_cgreport_item
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[onl_cgreport_item]') AND type IN ('U'))
	DROP TABLE [dbo].[onl_cgreport_item]
GO

CREATE TABLE [dbo].[onl_cgreport_item] (
  [id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [cgrhead_id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [field_name] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [field_txt] nvarchar(300) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [field_width] int  NULL,
  [field_type] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [search_mode] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [is_order] int  NULL,
  [is_search] int  NULL,
  [dict_code] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [field_href] nvarchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [is_show] int  NULL,
  [order_num] int  NULL,
  [replace_val] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[onl_cgreport_item] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'报表ID',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'cgrhead_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段名字',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'field_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段文本',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'field_txt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段类型',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'field_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'查询模式',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'search_mode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否排序  0否,1是',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'is_order'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否查询  0否,1是',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'is_search'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典CODE',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'dict_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段跳转URL',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'field_href'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否显示  0否,1显示',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'is_show'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'order_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'取值表达式',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'replace_val'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_item',
'COLUMN', N'update_time'
GO


-- ----------------------------
-- Records of onl_cgreport_item
-- ----------------------------
INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'0ba0dc69589a85a96be30f59451c81df', N'b32a3fdd008f4506b2bac4ac00f0bd4f', N'222', N'222', NULL, N'String', NULL, N'0', N'0', N'', N'', N'1', N'0', N'', N'admin', N'2019-05-31 14:37:25.0000000', N'admin', N'2019-05-31 14:37:30.0000000')
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'1740bb02519db90c44cb2cba8b755136', N'6c7f59741c814347905a938f06ee003c', N'realname', N'用户名称', NULL, N'String', NULL, N'0', N'0', N'', N'', N'1', N'3', N'', N'admin', N'2020-02-24 03:22:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'1b181e6d2813bcb263adc39737f9df46', N'87b55a515d3441b6b98e48e5b35474a6', N'name', N'用户名', NULL, N'String', N'single', N'0', N'1', N'', N'', N'1', N'4', N'', N'admin', N'2020-02-24 02:33:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'1fb45af29af4e792bdc5a4a2c06a4d4d', N'402880ec5d872157015d87f2dd940010', N'data_table', N'表名', NULL, N'String', NULL, N'0', N'0', NULL, NULL, N'1', N'0', NULL, N'admin', N'2019-03-20 13:24:21.0000000', N'admin', N'2019-03-20 13:25:08.0000000')
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f167cf82600167cfa154ec0003', N'402880e64e1ef94d014e1efefc2a0001', N'id', N'id', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'0', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f167cf82600167cfa154ed0004', N'402880e64e1ef94d014e1efefc2a0001', N'accountname', N'accountname', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'1', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f167cf82600167cfa154ed0005', N'402880e64e1ef94d014e1efefc2a0001', N'accounttoken', N'accounttoken', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'2', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f167cf82600167cfa154ed0006', N'402880e64e1ef94d014e1efefc2a0001', N'accountnumber', N'accountnumber', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'3', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f167cf82600167cfa154ed0007', N'402880e64e1ef94d014e1efefc2a0001', N'accounttype', N'accounttype', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'4', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f167cf82600167cfa154ed0008', N'402880e64e1ef94d014e1efefc2a0001', N'accountemail', N'accountemail', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'5', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f167cf82600167cfa154ed0009', N'402880e64e1ef94d014e1efefc2a0001', N'accountdesc', N'accountdesc', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'6', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f167cf82600167cfa154ee000b', N'402880e64e1ef94d014e1efefc2a0001', N'accountappid', N'accountappid', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'8', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f167cf82600167cfa154ee000c', N'402880e64e1ef94d014e1efefc2a0001', N'accountappsecret', N'accountappsecret', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'9', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f167cf82600167cfa154ee000d', N'402880e64e1ef94d014e1efefc2a0001', N'ADDTOEKNTIME', N'ADDTOEKNTIME', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'10', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f167cf82600167cfa154ee000e', N'402880e64e1ef94d014e1efefc2a0001', N'USERNAME', N'USERNAME', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'11', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f167cf82600167cfa154ee0010', N'402880e64e1ef94d014e1efefc2a0001', N'jsapiticket', N'jsapiticket', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'13', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f167cf82600167cfa154ee0011', N'402880e64e1ef94d014e1efefc2a0001', N'jsapitickettime', N'jsapitickettime', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'14', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f167cf82600167cfa154ef0012', N'402880e64e1ef94d014e1efefc2a0001', N'init_data_flag', N'init_data_flag', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'15', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f363aa9a380163aa9ebe490002', N'402881f363aa9a380163aa9ebe480001', N'id', N'id', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'0', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f363aa9a380163aa9ebe490003', N'402881f363aa9a380163aa9ebe480001', N'name', N'name', N'0', N'String', N'single', NULL, N'0', N'', N'', N'0', N'10', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f363aa9a380163aa9ebe490004', N'402881f363aa9a380163aa9ebe480001', N'sex', N'sex', N'0', N'String', N'single', NULL, N'0', N'sex', N'', N'0', N'11', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f363aa9a380163aa9ebe490005', N'402881f363aa9a380163aa9ebe480001', N'age', N'age', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'12', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f363aa9a380163aa9ebe490006', N'402881f363aa9a380163aa9ebe480001', N'address', N'address', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'13', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f363aa9a380163aa9ebe490007', N'402881f363aa9a380163aa9ebe480001', N'phone', N'phone', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'14', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f363aa9a380163aa9ebe4a0008', N'402881f363aa9a380163aa9ebe480001', N'memo', N'memo', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'15', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f36402f3de016403035d2c0004', N'402880e64eb9a22c014eb9a4d5890001', N'ID', N'ID', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'0', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f36402f3de016403035d2c0005', N'402880e64eb9a22c014eb9a4d5890001', N'activitiSync', N'activitiSync', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'1', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f36402f3de016403035d2d0006', N'402880e64eb9a22c014eb9a4d5890001', N'browser', N'browser', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'2', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f36402f3de016403035d2d0007', N'402880e64eb9a22c014eb9a4d5890001', N'password', N'password', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'3', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f36402f3de016403035d2e0008', N'402880e64eb9a22c014eb9a4d5890001', N'realname', N'realname', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'4', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f36402f3de016403035d2e0009', N'402880e64eb9a22c014eb9a4d5890001', N'signature', N'signature', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'5', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f36402f3de016403035d2f000a', N'402880e64eb9a22c014eb9a4d5890001', N'status', N'status', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'6', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f36402f3de016403035d30000b', N'402880e64eb9a22c014eb9a4d5890001', N'userkey', N'userkey', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'7', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f36402f3de016403035d30000c', N'402880e64eb9a22c014eb9a4d5890001', N'username', N'username', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'8', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f36402f3de016403035d31000d', N'402880e64eb9a22c014eb9a4d5890001', N'departid', N'departid', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'9', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f36402f3de016403035d31000e', N'402880e64eb9a22c014eb9a4d5890001', N'user_name_en', N'user_name_en', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'10', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f36402f3de016403035d32000f', N'402880e64eb9a22c014eb9a4d5890001', N'delete_flag', N'delete_flag', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'11', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f3647e95be01647eb88c400003', N'402880e74d76e784014d76f9e783001e', N'account', N'account', N'0', N'String', N'single', NULL, N'0', N'', N'', N'0', N'0', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'402881f3647e95be01647eb88c410004', N'402880e74d76e784014d76f9e783001e', N'realname', N'realname', N'0', N'String', N'', NULL, N'0', N'', N'', N'0', N'1', N'', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'61ef5b323134938fdd07ad5e3ea16cd3', N'87b55a515d3441b6b98e48e5b35474a6', N'key_word', N'关键词', NULL, N'String', N'single', N'0', N'1', N'', N'', N'1', N'5', N'', N'admin', N'2020-02-24 02:33:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'627768efd9ba2c41e905579048f21000', N'6c7f59741c814347905a938f06ee003c', N'username', N'用户账号', NULL, N'String', N'single', N'0', N'1', N'', N'', N'1', N'2', N'', N'admin', N'2020-02-24 03:22:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'8a2dfe672f3c0d391ace4a9f9bf564ff', N'402880ec5d872157015d87f2dd940010', N'data_id', N'数据ID', NULL, N'String', NULL, N'0', N'0', NULL, NULL, N'1', N'0', NULL, N'admin', N'2019-03-20 13:24:21.0000000', N'admin', N'2019-03-20 13:25:08.0000000')
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'8bb087a9aa2000bcae17a1b3f5768435', N'6c7f59741c814347905a938f06ee003c', N'sex', N'性别', NULL, N'String', N'single', N'0', N'1', N'sex', N'', N'1', N'5', N'', N'admin', N'2020-02-24 03:22:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'90d4fa57d301801abb26a9b86b6b94c4', N'6c7f59741c814347905a938f06ee003c', N'birthday', N'生日', NULL, N'Date', N'single', N'0', N'0', N'', N'', N'1', N'4', N'', N'admin', N'2020-02-24 03:22:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'9a0a7375479b7657e16c6a228354b495', N'402880ec5d872157015d87f2dd940010', N'data_version', N'数据版本', NULL, N'String', NULL, N'0', N'0', NULL, NULL, N'1', N'0', NULL, N'admin', N'2019-03-20 13:24:21.0000000', N'admin', N'2019-03-20 13:25:08.0000000')
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'a4ac355f07a05218854e5f23e2930163', N'6c7f59741c814347905a938f06ee003c', N'avatar', N'头像', NULL, N'String', NULL, N'0', N'0', N'', N'', N'0', N'6', N'', N'admin', N'2020-02-24 03:22:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'ae4d621e391a1392779175cf5a65134c', N'87b55a515d3441b6b98e48e5b35474a6', N'update_by', N'修改人', NULL, N'String', NULL, N'0', N'0', N'', N'', N'1', N'7', N'', N'admin', N'2020-02-24 02:33:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'b27bea35b1264003c79d38cb86d6929e', N'6c7f59741c814347905a938f06ee003c', N'id', N'id', NULL, N'String', NULL, N'0', N'0', N'', N'', N'0', N'1', N'', N'admin', N'2020-02-24 03:22:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'ce5168755a734ea09dd190e28bf8d9f4', N'87b55a515d3441b6b98e48e5b35474a6', N'update_time', N'修改时间', NULL, N'String', NULL, N'0', N'0', N'', N'', N'1', N'2', N'', N'admin', N'2020-02-24 02:33:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'd6e86b5ffd096ddcc445c0f320a45004', N'6c7f59741c814347905a938f06ee003c', N'phone', N'手机号', NULL, N'String', NULL, N'0', N'0', N'', N'', N'1', N'11', N'', N'admin', N'2020-02-24 03:22:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'df365cd357699eea96c29763d1dd7f9d', N'6c7f59741c814347905a938f06ee003c', N'email', N'邮箱', NULL, N'String', NULL, N'0', N'0', N'', N'', N'1', N'14', N'', N'admin', N'2020-02-24 03:22:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'edf9932912b81ad01dd557d3d593a559', N'87b55a515d3441b6b98e48e5b35474a6', N'age', N'年龄', NULL, N'String', NULL, N'0', N'0', N'', N'', N'1', N'8', N'', N'admin', N'2020-02-24 02:33:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'f985883e509a6faaaf62ca07fd24a73c', N'87b55a515d3441b6b98e48e5b35474a6', N'birthday', N'生日', NULL, N'Date', N'single', N'0', N'1', N'', N'', N'1', N'1', N'', N'admin', N'2020-02-24 02:33:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[onl_cgreport_item]  VALUES (N'fce83e4258de3e2f114ab3116397670c', N'87b55a515d3441b6b98e48e5b35474a6', N'punch_time', N'发布时间', NULL, N'String', NULL, N'0', N'0', N'', N'', N'1', N'3', N'', N'admin', N'2020-02-24 02:33:25.0000000', NULL, NULL)
GO


-- ----------------------------
-- Table structure for onl_cgreport_param
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[onl_cgreport_param]') AND type IN ('U'))
	DROP TABLE [dbo].[onl_cgreport_param]
GO

CREATE TABLE [dbo].[onl_cgreport_param] (
  [id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [cgrhead_id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [param_name] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [param_txt] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [param_value] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [order_num] int  NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[onl_cgreport_param] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'动态报表ID',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_param',
'COLUMN', N'cgrhead_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参数字段',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_param',
'COLUMN', N'param_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参数文本',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_param',
'COLUMN', N'param_txt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参数默认值',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_param',
'COLUMN', N'param_value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_param',
'COLUMN', N'order_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_param',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_param',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_param',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'onl_cgreport_param',
'COLUMN', N'update_time'
GO


-- ----------------------------
-- Records of onl_cgreport_param
-- ----------------------------
INSERT INTO [dbo].[onl_cgreport_param]  VALUES (N'402881f36402f3de016403035d350010', N'402880e64eb9a22c014eb9a4d5890001', N'usekey', N'usekey', N'', N'0', N'admin', N'2018-06-15 18:35:09.0000000', NULL, NULL)
GO


-- ----------------------------
-- Table structure for oss_file
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[oss_file]') AND type IN ('U'))
	DROP TABLE [dbo].[oss_file]
GO

CREATE TABLE [dbo].[oss_file] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [file_name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [url] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[oss_file] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'oss_file',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件名称',
'SCHEMA', N'dbo',
'TABLE', N'oss_file',
'COLUMN', N'file_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'文件地址',
'SCHEMA', N'dbo',
'TABLE', N'oss_file',
'COLUMN', N'url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'oss_file',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'oss_file',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'oss_file',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'oss_file',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Oss File',
'SCHEMA', N'dbo',
'TABLE', N'oss_file'
GO


-- ----------------------------
-- Table structure for QRTZ_BLOB_TRIGGERS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[QRTZ_BLOB_TRIGGERS]') AND type IN ('U'))
	DROP TABLE [dbo].[QRTZ_BLOB_TRIGGERS]
GO

CREATE TABLE [dbo].[QRTZ_BLOB_TRIGGERS] (
  [SCHED_NAME] varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TRIGGER_NAME] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TRIGGER_GROUP] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [BLOB_DATA] image  NULL
)
GO

ALTER TABLE [dbo].[QRTZ_BLOB_TRIGGERS] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for QRTZ_CALENDARS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[QRTZ_CALENDARS]') AND type IN ('U'))
	DROP TABLE [dbo].[QRTZ_CALENDARS]
GO

CREATE TABLE [dbo].[QRTZ_CALENDARS] (
  [SCHED_NAME] varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CALENDAR_NAME] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CALENDAR] image  NOT NULL
)
GO

ALTER TABLE [dbo].[QRTZ_CALENDARS] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for QRTZ_CRON_TRIGGERS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[QRTZ_CRON_TRIGGERS]') AND type IN ('U'))
	DROP TABLE [dbo].[QRTZ_CRON_TRIGGERS]
GO

CREATE TABLE [dbo].[QRTZ_CRON_TRIGGERS] (
  [SCHED_NAME] varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TRIGGER_NAME] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TRIGGER_GROUP] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CRON_EXPRESSION] varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TIME_ZONE_ID] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[QRTZ_CRON_TRIGGERS] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for QRTZ_FIRED_TRIGGERS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[QRTZ_FIRED_TRIGGERS]') AND type IN ('U'))
	DROP TABLE [dbo].[QRTZ_FIRED_TRIGGERS]
GO

CREATE TABLE [dbo].[QRTZ_FIRED_TRIGGERS] (
  [SCHED_NAME] varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ENTRY_ID] varchar(95) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TRIGGER_NAME] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TRIGGER_GROUP] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [INSTANCE_NAME] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FIRED_TIME] bigint  NOT NULL,
  [SCHED_TIME] bigint  NOT NULL,
  [PRIORITY] int  NOT NULL,
  [STATE] varchar(16) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [JOB_NAME] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JOB_GROUP] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IS_NONCONCURRENT] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [REQUESTS_RECOVERY] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[QRTZ_FIRED_TRIGGERS] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for QRTZ_JOB_DETAILS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[QRTZ_JOB_DETAILS]') AND type IN ('U'))
	DROP TABLE [dbo].[QRTZ_JOB_DETAILS]
GO

CREATE TABLE [dbo].[QRTZ_JOB_DETAILS] (
  [SCHED_NAME] varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [JOB_NAME] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [JOB_GROUP] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DESCRIPTION] varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JOB_CLASS_NAME] varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IS_DURABLE] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IS_NONCONCURRENT] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IS_UPDATE_DATA] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [REQUESTS_RECOVERY] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [JOB_DATA] image  NULL
)
GO

ALTER TABLE [dbo].[QRTZ_JOB_DETAILS] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for QRTZ_LOCKS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[QRTZ_LOCKS]') AND type IN ('U'))
	DROP TABLE [dbo].[QRTZ_LOCKS]
GO

CREATE TABLE [dbo].[QRTZ_LOCKS] (
  [SCHED_NAME] varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LOCK_NAME] varchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[QRTZ_LOCKS] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[QRTZ_PAUSED_TRIGGER_GRPS]') AND type IN ('U'))
	DROP TABLE [dbo].[QRTZ_PAUSED_TRIGGER_GRPS]
GO

CREATE TABLE [dbo].[QRTZ_PAUSED_TRIGGER_GRPS] (
  [SCHED_NAME] varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TRIGGER_GROUP] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[QRTZ_PAUSED_TRIGGER_GRPS] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for QRTZ_SCHEDULER_STATE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[QRTZ_SCHEDULER_STATE]') AND type IN ('U'))
	DROP TABLE [dbo].[QRTZ_SCHEDULER_STATE]
GO

CREATE TABLE [dbo].[QRTZ_SCHEDULER_STATE] (
  [SCHED_NAME] varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [INSTANCE_NAME] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LAST_CHECKIN_TIME] bigint  NOT NULL,
  [CHECKIN_INTERVAL] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[QRTZ_SCHEDULER_STATE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[QRTZ_SIMPLE_TRIGGERS]') AND type IN ('U'))
	DROP TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS]
GO

CREATE TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS] (
  [SCHED_NAME] varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TRIGGER_NAME] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TRIGGER_GROUP] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [REPEAT_COUNT] bigint  NOT NULL,
  [REPEAT_INTERVAL] bigint  NOT NULL,
  [TIMES_TRIGGERED] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[QRTZ_SIMPROP_TRIGGERS]') AND type IN ('U'))
	DROP TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS]
GO

CREATE TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS] (
  [SCHED_NAME] varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TRIGGER_NAME] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TRIGGER_GROUP] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [STR_PROP_1] varchar(512) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [STR_PROP_2] varchar(512) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [STR_PROP_3] varchar(512) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [INT_PROP_1] int  NULL,
  [INT_PROP_2] int  NULL,
  [LONG_PROP_1] bigint  NULL,
  [LONG_PROP_2] bigint  NULL,
  [DEC_PROP_1] numeric(13,4)  NULL,
  [DEC_PROP_2] numeric(13,4)  NULL,
  [BOOL_PROP_1] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [BOOL_PROP_2] varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for QRTZ_TRIGGERS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[QRTZ_TRIGGERS]') AND type IN ('U'))
	DROP TABLE [dbo].[QRTZ_TRIGGERS]
GO

CREATE TABLE [dbo].[QRTZ_TRIGGERS] (
  [SCHED_NAME] varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TRIGGER_NAME] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TRIGGER_GROUP] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [JOB_NAME] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [JOB_GROUP] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DESCRIPTION] varchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NEXT_FIRE_TIME] bigint  NULL,
  [PREV_FIRE_TIME] bigint  NULL,
  [PRIORITY] int  NULL,
  [TRIGGER_STATE] varchar(16) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TRIGGER_TYPE] varchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [START_TIME] bigint  NOT NULL,
  [END_TIME] bigint  NULL,
  [CALENDAR_NAME] varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MISFIRE_INSTR] smallint  NULL,
  [JOB_DATA] image  NULL
)
GO

ALTER TABLE [dbo].[QRTZ_TRIGGERS] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for sys_announcement
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_announcement]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_announcement]
GO

CREATE TABLE [dbo].[sys_announcement] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [titile] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [msg_content] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [start_time] datetime2(7)  NULL,
  [end_time] datetime2(7)  NULL,
  [sender] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [priority] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [msg_category] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [msg_type] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [send_status] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [send_time] datetime2(7)  NULL,
  [cancel_time] datetime2(7)  NULL,
  [del_flag] nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [bus_type] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [bus_id] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [open_type] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [open_page] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [user_ids] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_announcement] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'标题',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'titile'
GO

EXEC sp_addextendedproperty
'MS_Description', N'内容',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'msg_content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开始时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'start_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'结束时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'end_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布人',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'sender'
GO

EXEC sp_addextendedproperty
'MS_Description', N'优先级（L低，M中，H高）',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'priority'
GO

EXEC sp_addextendedproperty
'MS_Description', N'消息类型1:通知公告2:系统消息',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'msg_category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'通告对象类型（USER:指定用户，ALL:全体用户）',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'msg_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布状态（0未发布，1已发布，2已撤销）',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'send_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发布时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'send_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'撤销时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'cancel_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除状态（0，正常，1已删除）',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'业务类型(email:邮件 bpm:流程)',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'bus_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'业务id',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'bus_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'打开方式(组件：component 路由：url)',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'open_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组件/路由 地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'open_page'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'指定用户',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement',
'COLUMN', N'user_ids'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统通告表',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement'
GO


-- ----------------------------
-- Records of sys_announcement
-- ----------------------------
INSERT INTO [dbo].[sys_announcement]  VALUES (N'1b714f8ebc3cc33f8b4f906103b6a18d', N'5467567', NULL, NULL, NULL, N'admin', NULL, N'2', NULL, N'1', N'2019-03-30 12:40:38.0000000', NULL, N'0', NULL, NULL, NULL, NULL, N'admin', N'2019-02-26 17:23:26.0000000', N'admin', N'2019-02-26 17:35:10.0000000', NULL)
GO

INSERT INTO [dbo].[sys_announcement]  VALUES (N'3d11237ccdf62450d20bb8abdb331178', N'111222', NULL, NULL, NULL, NULL, NULL, N'2', NULL, N'0', NULL, NULL, N'1', NULL, NULL, NULL, NULL, N'admin', N'2019-03-29 17:19:47.0000000', N'admin', N'2019-03-29 17:19:50.0000000', NULL)
GO

INSERT INTO [dbo].[sys_announcement]  VALUES (N'7ef04e95f8de030b1d5f7a9144090dc6', N'111', NULL, N'2019-02-06 17:28:10.0000000', N'2019-03-08 17:28:11.0000000', NULL, NULL, N'2', NULL, N'0', NULL, NULL, N'1', NULL, NULL, NULL, NULL, N'admin', N'2019-02-26 17:28:17.0000000', N'admin', N'2019-03-26 19:59:49.0000000', NULL)
GO

INSERT INTO [dbo].[sys_announcement]  VALUES (N'93a9060a1c20e4bf98b3f768a02c2ff9', N'111', N'111', N'2019-02-06 17:20:17.0000000', N'2019-02-21 17:20:20.0000000', N'admin', N'M', N'2', N'ALL', N'1', N'2019-02-26 17:24:29.0000000', NULL, N'0', NULL, NULL, NULL, NULL, N'admin', N'2019-02-26 17:16:26.0000000', N'admin', N'2019-02-26 17:19:35.0000000', NULL)
GO

INSERT INTO [dbo].[sys_announcement]  VALUES (N'de1dc57f31037079e1e55c8347fe6ef7', N'222', N'2222', N'2019-02-06 17:28:26.0000000', N'2019-02-23 17:28:28.0000000', N'admin', N'M', N'2', N'ALL', N'1', N'2019-03-29 17:19:56.0000000', NULL, N'1', NULL, NULL, NULL, NULL, N'admin', N'2019-02-26 17:28:36.0000000', N'admin', N'2019-02-26 17:28:40.0000000', NULL)
GO

INSERT INTO [dbo].[sys_announcement]  VALUES (N'e52f3eb6215f139cb2224c52517af3bd', N'334', N'334', NULL, NULL, NULL, NULL, N'2', NULL, N'0', NULL, NULL, N'1', NULL, NULL, NULL, NULL, N'admin', N'2019-03-30 12:40:28.0000000', N'admin', N'2019-03-30 12:40:32.0000000', NULL)
GO


-- ----------------------------
-- Table structure for sys_announcement_send
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_announcement_send]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_announcement_send]
GO

CREATE TABLE [dbo].[sys_announcement_send] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [annt_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [user_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [read_flag] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [read_time] datetime2(7)  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_announcement_send] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'通告ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement_send',
'COLUMN', N'annt_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户id',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement_send',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'阅读状态（0未读，1已读）',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement_send',
'COLUMN', N'read_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'阅读时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement_send',
'COLUMN', N'read_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement_send',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement_send',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement_send',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement_send',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户通告阅读标记表',
'SCHEMA', N'dbo',
'TABLE', N'sys_announcement_send'
GO


-- ----------------------------
-- Records of sys_announcement_send
-- ----------------------------
INSERT INTO [dbo].[sys_announcement_send]  VALUES (N'646c0c405ec643d4dc4160db2446f8ff', N'93a9060a1c20e4bf98b3f768a02c2ff9', N'e9ca23d68d884d4ebb19d07889727dae', N'1', N'2019-11-21 16:30:01.0000000', N'admin', N'2019-05-17 11:50:56.0000000', N'admin', N'2019-11-21 16:30:01.0000000')
GO

INSERT INTO [dbo].[sys_announcement_send]  VALUES (N'1197434450981543938', N'93a9060a1c20e4bf98b3f768a02c2ff9', N'a75d45a015c44384a04449ee80dc3503', N'0', NULL, N'jeecg', N'2019-11-21 16:39:55.0000000', NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_category]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_category]
GO

CREATE TABLE [dbo].[sys_category] (
  [id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [pid] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [sys_org_code] nvarchar(64) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [has_child] nvarchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_category] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'父级节点',
'SCHEMA', N'dbo',
'TABLE', N'sys_category',
'COLUMN', N'pid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_category',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_category',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_category',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_category',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_category',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_category',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属部门',
'SCHEMA', N'dbo',
'TABLE', N'sys_category',
'COLUMN', N'sys_org_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否有子节点',
'SCHEMA', N'dbo',
'TABLE', N'sys_category',
'COLUMN', N'has_child'
GO


-- ----------------------------
-- Records of sys_category
-- ----------------------------
INSERT INTO [dbo].[sys_category]  VALUES (N'1183693424827564034', N'0', N'物料树', N'B02', N'admin', N'2019-10-14 18:37:59.0000000', N'admin', N'2019-10-14 18:38:15.0000000', N'A01', N'1')
GO

INSERT INTO [dbo].[sys_category]  VALUES (N'1183693491043041282', N'1183693424827564034', N'上衣', N'B02A01', N'admin', N'2019-10-14 18:38:15.0000000', N'admin', N'2019-10-14 18:38:43.0000000', N'A01', N'1')
GO

INSERT INTO [dbo].[sys_category]  VALUES (N'1183693534173069314', N'1183693424827564034', N'裤子', N'B02A02', N'admin', N'2019-10-14 18:38:25.0000000', NULL, NULL, N'A01', NULL)
GO

INSERT INTO [dbo].[sys_category]  VALUES (N'1183693610534567937', N'1183693491043041282', N'秋衣', N'B02A01A01', N'admin', N'2019-10-14 18:38:43.0000000', NULL, NULL, N'A01', NULL)
GO

INSERT INTO [dbo].[sys_category]  VALUES (N'1183693700254924802', N'1183693491043041282', N'兵装', N'B02A01A02', N'admin', N'2019-10-14 18:39:05.0000000', NULL, NULL, N'A01', NULL)
GO

INSERT INTO [dbo].[sys_category]  VALUES (N'1183693773974011906', N'1183693491043041282', N'女装', N'B02A01A03', N'admin', N'2019-10-14 18:39:22.0000000', NULL, NULL, N'A01', NULL)
GO

INSERT INTO [dbo].[sys_category]  VALUES (N'1185039122143719425', N'0', N'电脑产品', N'A01', N'admin', N'2019-10-18 11:45:18.0000000', N'admin', N'2019-10-18 11:45:31.0000000', N'A01', N'1')
GO

INSERT INTO [dbo].[sys_category]  VALUES (N'1185039176799694850', N'1185039122143719425', N'thinkpad', N'A01A01', N'admin', N'2019-10-18 11:45:31.0000000', NULL, NULL, N'A01', NULL)
GO

INSERT INTO [dbo].[sys_category]  VALUES (N'1185039255115739138', N'1185039122143719425', N'mackbook', N'A01A02', N'admin', N'2019-10-18 11:45:50.0000000', NULL, NULL, N'A01', NULL)
GO

INSERT INTO [dbo].[sys_category]  VALUES (N'1185039299051073537', N'1185039122143719425', N'华为电脑', N'A01A03', N'admin', N'2019-10-18 11:46:01.0000000', NULL, NULL, N'A01', NULL)
GO

INSERT INTO [dbo].[sys_category]  VALUES (N'22a50b413c5e1ef661fb8aea9469cf52', N'e9ded10fd33e5753face506f4f1564b5', N'MacBook', N'B01-2-1', N'admin', N'2019-06-10 15:43:13.0000000', NULL, NULL, N'A01', NULL)
GO

INSERT INTO [dbo].[sys_category]  VALUES (N'5c8f68845e57f68ab93a2c8d82d26ae1', N'0', N'笔记本', N'B01', N'admin', N'2019-06-10 15:34:11.0000000', N'admin', N'2019-06-10 15:34:24.0000000', N'A01', N'1')
GO

INSERT INTO [dbo].[sys_category]  VALUES (N'937fd2e9aa13b8bab1da1ca36d3fd344', N'e9ded10fd33e5753face506f4f1564b5', N'台式机', N'B02-2-2', N'admin', N'2019-06-10 15:43:32.0000000', N'admin', N'2019-08-21 12:01:59.0000000', N'A01', NULL)
GO

INSERT INTO [dbo].[sys_category]  VALUES (N'e9ded10fd33e5753face506f4f1564b5', N'5c8f68845e57f68ab93a2c8d82d26ae1', N'苹果电脑', N'B01-2', N'admin', N'2019-06-10 15:41:14.0000000', N'admin', N'2019-06-10 15:43:13.0000000', N'A01', N'1')
GO

INSERT INTO [dbo].[sys_category]  VALUES (N'f39a06bf9f390ba4a53d11bc4e0018d7', N'5c8f68845e57f68ab93a2c8d82d26ae1', N'华为', N'B01-1', N'admin', N'2019-06-10 15:34:24.0000000', N'admin', N'2019-08-21 12:01:56.0000000', N'A01', NULL)
GO


-- ----------------------------
-- Table structure for sys_check_rule
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_check_rule]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_check_rule]
GO

CREATE TABLE [dbo].[sys_check_rule] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [rule_name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [rule_code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [rule_json] nvarchar(1024) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [rule_description] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_check_rule] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_check_rule',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'规则名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_check_rule',
'COLUMN', N'rule_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'规则Code',
'SCHEMA', N'dbo',
'TABLE', N'sys_check_rule',
'COLUMN', N'rule_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'规则JSON',
'SCHEMA', N'dbo',
'TABLE', N'sys_check_rule',
'COLUMN', N'rule_json'
GO

EXEC sp_addextendedproperty
'MS_Description', N'规则描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_check_rule',
'COLUMN', N'rule_description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_check_rule',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_check_rule',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_check_rule',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_check_rule',
'COLUMN', N'create_time'
GO


-- ----------------------------
-- Records of sys_check_rule
-- ----------------------------
INSERT INTO [dbo].[sys_check_rule]  VALUES (N'1224980593992388610', N'通用编码规则', N'common', N'[{"digits":"1","pattern":"^[a-z|A-Z]$","message":"第一位只能是字母"},{"digits":"*","pattern":"^[0-9|a-z|A-Z|_]{0,}$","message":"只能填写数字、大小写字母、下划线"},{"digits":"*","pattern":"^.{3,}$","message":"最少输入3位数"},{"digits":"*","pattern":"^.{3,12}$","message":"最多输入12位数"}]', N'规则：1、首位只能是字母；2、只能填写数字、大小写字母、下划线；3、最少3位数，最多12位数。', N'admin', N'2020-02-07 11:25:48.0000000', N'admin', N'2020-02-05 16:58:27.0000000')
GO

INSERT INTO [dbo].[sys_check_rule]  VALUES (N'1225001845524004866', N'负责的功能测试', N'test', N'[{"digits":"*","pattern":"^.{3,12}$","message":"只能输入3-12位字符"},{"digits":"3","pattern":"^\\d{3}$","message":"前3位必须是数字"},{"digits":"*","pattern":"^[^pP]*$","message":"不能输入P"},{"digits":"4","pattern":"^@{4}$","message":"第4-7位必须都为 @"},{"digits":"2","pattern":"^#=$","message":"第8-9位必须是 #="},{"digits":"1","pattern":"^O$","message":"第10位必须为大写的O"},{"digits":"*","pattern":"^.*。$","message":"必须以。结尾"}]', N'包含长度校验、特殊字符校验等', N'admin', N'2020-02-07 11:57:31.0000000', N'admin', N'2020-02-05 18:22:54.0000000')
GO


-- ----------------------------
-- Table structure for sys_data_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_data_log]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_data_log]
GO

CREATE TABLE [dbo].[sys_data_log] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [data_table] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [data_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [data_content] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [data_version] int  NULL
)
GO

ALTER TABLE [dbo].[sys_data_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_log',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_log',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_log',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_log',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_log',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表名',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_log',
'COLUMN', N'data_table'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_log',
'COLUMN', N'data_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据内容',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_log',
'COLUMN', N'data_content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'版本号',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_log',
'COLUMN', N'data_version'
GO


-- ----------------------------
-- Records of sys_data_log
-- ----------------------------
INSERT INTO [dbo].[sys_data_log]  VALUES (N'402880f05ab0d198015ab12274bf0006', N'admin', N'2017-03-09 11:35:09.0000000', NULL, NULL, N'jeecg_demo', N'4028ef81550c1a7901550c1cd6e70001', N'{"mobilePhone":"","officePhone":"","email":"","createDate":"Jun 23, 2016 12:00:00 PM","sex":"1","depId":"402880e447e99cf10147e9a03b320003","userName":"9001","status":"1","content":"111","id":"4028ef81550c1a7901550c1cd6e70001"}', N'3')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'402880f05ab6d12b015ab700bead0009', N'admin', N'2017-03-10 14:56:03.0000000', NULL, NULL, N'jeecg_demo', N'402880f05ab6d12b015ab700be8d0008', N'{"mobilePhone":"","officePhone":"","email":"","createDate":"Mar 10, 2017 2:56:03 PM","sex":"0","depId":"402880e447e99cf10147e9a03b320003","userName":"111","status":"0","id":"402880f05ab6d12b015ab700be8d0008"}', N'1')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'402880f05ab6d12b015ab705a23f000d', N'admin', N'2017-03-10 15:01:24.0000000', NULL, NULL, N'jeecg_demo', N'402880f05ab6d12b015ab705a233000c', N'{"mobilePhone":"","officePhone":"11","email":"","createDate":"Mar 10, 2017 3:01:24 PM","sex":"0","depId":"402880e447e99cf10147e9a03b320003","userName":"11","status":"0","id":"402880f05ab6d12b015ab705a233000c"}', N'1')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'402880f05ab6d12b015ab712a6420013', N'admin', N'2017-03-10 15:15:37.0000000', NULL, NULL, N'jeecg_demo', N'402880f05ab6d12b015ab712a6360012', N'{"mobilePhone":"","officePhone":"","email":"","createDate":"Mar 10, 2017 3:15:37 PM","sex":"0","depId":"402880e447e99cf10147e9a03b320003","userName":"小王","status":"0","id":"402880f05ab6d12b015ab712a6360012"}', N'1')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'402880f05ab6d12b015ab712d0510015', N'admin', N'2017-03-10 15:15:47.0000000', NULL, NULL, N'jeecg_demo', N'402880f05ab6d12b015ab712a6360012', N'{"mobilePhone":"18611788525","officePhone":"","email":"","createDate":"Mar 10, 2017 3:15:37 AM","sex":"0","depId":"402880e447e99cf10147e9a03b320003","userName":"小王","status":"0","id":"402880f05ab6d12b015ab712a6360012"}', N'2')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'402880f05ab6d12b015ab71308240018', N'admin', N'2017-03-10 15:16:02.0000000', NULL, NULL, N'jeecg_demo', N'8a8ab0b246dc81120146dc81860f016f', N'{"mobilePhone":"13111111111","officePhone":"66666666","email":"demo@jeecg.com","age":12,"salary":10.00,"birthday":"Feb 14, 2014 12:00:00 AM","sex":"1","depId":"402880e447e99cf10147e9a03b320003","userName":"小明","status":"","content":"","id":"8a8ab0b246dc81120146dc81860f016f"}', N'1')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'402880f05ab6d12b015ab72806c3001b', N'admin', N'2017-03-10 15:38:58.0000000', NULL, NULL, N'jeecg_demo', N'8a8ab0b246dc81120146dc81860f016f', N'{"mobilePhone":"18611788888","officePhone":"66666666","email":"demo@jeecg.com","age":12,"salary":10.00,"birthday":"Feb 14, 2014 12:00:00 AM","sex":"1","depId":"402880e447e99cf10147e9a03b320003","userName":"小明","status":"","content":"","id":"8a8ab0b246dc81120146dc81860f016f"}', N'2')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'4028ef815318148a0153181567690001', N'admin', N'2016-02-25 18:59:29.0000000', NULL, NULL, N'jeecg_demo', N'4028ef815318148a0153181566270000', N'{"mobilePhone":"13423423423","officePhone":"1","email":"","age":1,"salary":1,"birthday":"Feb 25, 2016 12:00:00 AM","createDate":"Feb 25, 2016 6:59:24 PM","depId":"402880e447e9a9570147e9b6a3be0005","userName":"1","status":"0","id":"4028ef815318148a0153181566270000"}', N'1')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'4028ef815318148a01531815ec5c0003', N'admin', N'2016-02-25 19:00:03.0000000', NULL, NULL, N'jeecg_demo', N'4028ef815318148a0153181566270000', N'{"mobilePhone":"13426498659","officePhone":"1","email":"","age":1,"salary":1.00,"birthday":"Feb 25, 2016 12:00:00 AM","createDate":"Feb 25, 2016 6:59:24 AM","depId":"402880e447e9a9570147e9b6a3be0005","userName":"1","status":"0","id":"4028ef815318148a0153181566270000"}', N'2')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'4028ef8153c028db0153c0502e6b0003', N'admin', N'2016-03-29 10:59:53.0000000', NULL, NULL, N'jeecg_demo', N'4028ef8153c028db0153c0502d420002', N'{"mobilePhone":"18455477548","officePhone":"123","email":"","createDate":"Mar 29, 2016 10:59:53 AM","depId":"402880e447e99cf10147e9a03b320003","userName":"123","status":"0","id":"4028ef8153c028db0153c0502d420002"}', N'1')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'4028ef8153c028db0153c0509aa40006', N'admin', N'2016-03-29 11:00:21.0000000', NULL, NULL, N'jeecg_demo', N'4028ef8153c028db0153c0509a3e0005', N'{"mobilePhone":"13565486458","officePhone":"","email":"","createDate":"Mar 29, 2016 11:00:21 AM","depId":"402880e447e99cf10147e9a03b320003","userName":"22","status":"0","id":"4028ef8153c028db0153c0509a3e0005"}', N'1')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'4028ef8153c028db0153c051c4a70008', N'admin', N'2016-03-29 11:01:37.0000000', NULL, NULL, N'jeecg_demo', N'4028ef8153c028db0153c0509a3e0005', N'{"mobilePhone":"13565486458","officePhone":"","email":"","createDate":"Mar 29, 2016 11:00:21 AM","depId":"402880e447e99cf10147e9a03b320003","userName":"22","status":"0","id":"4028ef8153c028db0153c0509a3e0005"}', N'2')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'4028ef8153c028db0153c051d4b5000a', N'admin', N'2016-03-29 11:01:41.0000000', NULL, NULL, N'jeecg_demo', N'4028ef8153c028db0153c0502d420002', N'{"mobilePhone":"13565486458","officePhone":"123","email":"","createDate":"Mar 29, 2016 10:59:53 AM","depId":"402880e447e99cf10147e9a03b320003","userName":"123","status":"0","id":"4028ef8153c028db0153c0502d420002"}', N'2')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'4028ef8153c028db0153c07033d8000d', N'admin', N'2016-03-29 11:34:52.0000000', NULL, NULL, N'jeecg_demo', N'4028ef8153c028db0153c0502d420002', N'{"mobilePhone":"13565486458","officePhone":"123","email":"","age":23,"createDate":"Mar 29, 2016 10:59:53 AM","depId":"402880e447e99cf10147e9a03b320003","userName":"123","status":"0","id":"4028ef8153c028db0153c0502d420002"}', N'3')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'4028ef8153c028db0153c070492e000f', N'admin', N'2016-03-29 11:34:57.0000000', NULL, NULL, N'jeecg_demo', N'4028ef8153c028db0153c0509a3e0005', N'{"mobilePhone":"13565486458","officePhone":"","email":"","age":22,"createDate":"Mar 29, 2016 11:00:21 AM","depId":"402880e447e99cf10147e9a03b320003","userName":"22","status":"0","id":"4028ef8153c028db0153c0509a3e0005"}', N'3')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'4028ef81550c1a7901550c1cd7850002', N'admin', N'2016-06-01 21:17:44.0000000', NULL, NULL, N'jeecg_demo', N'4028ef81550c1a7901550c1cd6e70001', N'{"mobilePhone":"","officePhone":"","email":"","createDate":"Jun 1, 2016 9:17:44 PM","sex":"1","depId":"402880e447e99cf10147e9a03b320003","userName":"121221","status":"0","id":"4028ef81550c1a7901550c1cd6e70001"}', N'1')
GO

INSERT INTO [dbo].[sys_data_log]  VALUES (N'4028ef81568c31ec01568c3307080004', N'admin', N'2016-08-15 11:16:09.0000000', NULL, NULL, N'jeecg_demo', N'4028ef81550c1a7901550c1cd6e70001', N'{"mobilePhone":"","officePhone":"","email":"","createDate":"Jun 23, 2016 12:00:00 PM","sex":"1","depId":"402880e447e99cf10147e9a03b320003","userName":"9001","status":"1","content":"111","id":"4028ef81550c1a7901550c1cd6e70001"}', N'2')
GO


-- ----------------------------
-- Table structure for sys_data_source
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_data_source]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_data_source]
GO

CREATE TABLE [dbo].[sys_data_source] (
  [id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [remark] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_type] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_driver] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_url] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_username] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [db_password] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [sys_org_code] nvarchar(64) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_data_source] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据源编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据源名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'db_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'驱动类',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'db_driver'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据源地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'db_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'db_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'db_username'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'db_password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属部门',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_source',
'COLUMN', N'sys_org_code'
GO


-- ----------------------------
-- Records of sys_data_source
-- ----------------------------
INSERT INTO [dbo].[sys_data_source]  VALUES (N'1209779538310004737', NULL, N'MySQL5.7', N'本地数据库MySQL5.7', N'1', N'com.mysql.jdbc.Driver', N'jdbc:mysql://127.0.0.1:3306/jeecg-boot?characterEncoding=UTF-8&useUnicode=true&useSSL=false', N'jeecg-boot', N'root', N'root', N'admin', N'2019-12-25 18:14:53.0000000', NULL, NULL, N'A01')
GO


-- ----------------------------
-- Table structure for sys_depart
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_depart]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_depart]
GO

CREATE TABLE [dbo].[sys_depart] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [parent_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [depart_name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [depart_name_en] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [depart_name_abbr] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [depart_order] int  NULL,
  [description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [org_category] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [org_type] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [org_code] nvarchar(64) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [mobile] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [fax] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [address] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [memo] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [del_flag] nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_depart] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父机构ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构/部门名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'depart_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'英文名',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'depart_name_en'
GO

EXEC sp_addextendedproperty
'MS_Description', N'缩写',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'depart_name_abbr'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'depart_order'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构类别 1组织机构，2岗位',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'org_category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构类型 1一级部门 2子部门',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'org_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'org_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'手机号',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'mobile'
GO

EXEC sp_addextendedproperty
'MS_Description', N'传真',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'fax'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'address'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'memo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（1启用，0不启用）',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除状态（0，正常，1已删除）',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组织机构表',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart'
GO


-- ----------------------------
-- Records of sys_depart
-- ----------------------------
INSERT INTO [dbo].[sys_depart]  VALUES (N'4f1765520d6346f9bd9c79e2479e5b12', N'c6d7cb4deeac411cb3384b1b31278596', N'市场部', NULL, NULL, N'0', NULL, N'1', N'2', N'A01A03', NULL, NULL, NULL, NULL, NULL, N'0', N'admin', N'2019-02-20 17:15:34.0000000', N'admin', N'2019-02-26 16:36:18.0000000')
GO

INSERT INTO [dbo].[sys_depart]  VALUES (N'5159cde220114246b045e574adceafe9', N'6d35e179cd814e3299bd588ea7daed3f', N'研发部', NULL, NULL, N'0', NULL, N'1', N'2', N'A02A02', NULL, NULL, NULL, NULL, NULL, N'0', N'admin', N'2019-02-26 16:44:38.0000000', N'admin', N'2019-03-07 09:36:53.0000000')
GO

INSERT INTO [dbo].[sys_depart]  VALUES (N'57197590443c44f083d42ae24ef26a2c', N'c6d7cb4deeac411cb3384b1b31278596', N'研发部', NULL, NULL, N'0', NULL, N'1', N'2', N'A01A05', NULL, NULL, NULL, NULL, NULL, N'0', N'admin', N'2019-02-21 16:14:41.0000000', N'admin', N'2019-03-27 19:05:49.0000000')
GO

INSERT INTO [dbo].[sys_depart]  VALUES (N'67fc001af12a4f9b8458005d3f19934a', N'c6d7cb4deeac411cb3384b1b31278596', N'财务部', NULL, NULL, N'0', NULL, N'1', N'2', N'A01A04', NULL, NULL, NULL, NULL, NULL, N'0', N'admin', N'2019-02-21 16:14:35.0000000', N'admin', N'2019-02-25 12:49:41.0000000')
GO

INSERT INTO [dbo].[sys_depart]  VALUES (N'6d35e179cd814e3299bd588ea7daed3f', N'', N'卓尔互动公司', NULL, NULL, N'0', NULL, N'1', N'1', N'A02', NULL, NULL, NULL, NULL, NULL, N'0', N'admin', N'2019-02-26 16:36:39.0000000', N'admin', N'2019-03-22 16:47:25.0000000')
GO

INSERT INTO [dbo].[sys_depart]  VALUES (N'743ba9dbdc114af8953a11022ef3096a', N'f28c6f53abd841ac87ead43afc483433', N'财务部', NULL, NULL, N'0', NULL, N'1', N'2', N'A03A01', NULL, NULL, NULL, NULL, NULL, N'0', N'admin', N'2019-03-22 16:45:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_depart]  VALUES (N'a7d7e77e06c84325a40932163adcdaa6', N'6d35e179cd814e3299bd588ea7daed3f', N'财务部', NULL, NULL, N'0', NULL, N'1', N'2', N'A02A01', NULL, NULL, NULL, NULL, NULL, N'0', N'admin', N'2019-02-26 16:36:47.0000000', N'admin', N'2019-02-26 16:37:25.0000000')
GO

INSERT INTO [dbo].[sys_depart]  VALUES (N'c6d7cb4deeac411cb3384b1b31278596', N'', N'北京国炬公司', NULL, NULL, N'0', NULL, N'1', N'1', N'A01', NULL, NULL, NULL, NULL, NULL, N'0', N'admin', N'2019-02-11 14:21:51.0000000', N'admin', N'2019-03-22 16:47:19.0000000')
GO


-- ----------------------------
-- Table structure for sys_depart_permission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_depart_permission]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_depart_permission]
GO

CREATE TABLE [dbo].[sys_depart_permission] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [depart_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [permission_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [data_rule_ids] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_depart_permission] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门id',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_permission',
'COLUMN', N'depart_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限id',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_permission',
'COLUMN', N'permission_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据规则id',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_permission',
'COLUMN', N'data_rule_ids'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门权限表',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_permission'
GO


-- ----------------------------
-- Table structure for sys_depart_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_depart_role]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_depart_role]
GO

CREATE TABLE [dbo].[sys_depart_role] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [depart_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [role_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [role_code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_depart_role] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门id',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role',
'COLUMN', N'depart_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门角色名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role',
'COLUMN', N'role_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门角色编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role',
'COLUMN', N'role_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门角色表',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role'
GO


-- ----------------------------
-- Table structure for sys_depart_role_permission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_depart_role_permission]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_depart_role_permission]
GO

CREATE TABLE [dbo].[sys_depart_role_permission] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [depart_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [role_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [permission_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [data_rule_ids] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_depart_role_permission] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门id',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role_permission',
'COLUMN', N'depart_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role_permission',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限id',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role_permission',
'COLUMN', N'permission_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门角色权限表',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role_permission'
GO


-- ----------------------------
-- Table structure for sys_depart_role_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_depart_role_user]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_depart_role_user]
GO

CREATE TABLE [dbo].[sys_depart_role_user] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [user_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [drole_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_depart_role_user] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role_user',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户id',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role_user',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role_user',
'COLUMN', N'drole_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门角色用户表',
'SCHEMA', N'dbo',
'TABLE', N'sys_depart_role_user'
GO


-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dict]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dict]
GO

CREATE TABLE [dbo].[sys_dict] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [dict_name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [dict_code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [del_flag] int  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [type] int  NULL
)
GO

ALTER TABLE [dbo].[sys_dict] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'dict_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'dict_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除状态',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典类型0为string,1为number',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict',
'COLUMN', N'type'
GO


-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO [dbo].[sys_dict]  VALUES (N'0b5d19e1fce4b2e6647e6b4a17760c14', N'通告类型', N'msg_category', N'消息类型1:通知公告2:系统消息', N'0', N'admin', N'2019-04-22 18:01:35.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1174509082208395266', N'职务职级', N'position_rank', N'职务表职级字典', N'0', N'admin', N'2019-09-19 10:22:41.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1174511106530525185', N'机构类型', N'org_category', N'机构类型 1组织机构，2岗位', N'0', N'admin', N'2019-09-19 10:30:43.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1178295274528845826', N'表单权限策略', N'form_perms_type', N'', N'0', N'admin', N'2019-09-29 21:07:39.0000000', N'admin', N'2019-09-29 21:08:26.0000000', NULL)
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1199517671259906049', N'紧急程度', N'urgent_level', N'日程计划紧急程度', N'0', N'admin', N'2019-11-27 10:37:53.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1199518099888414722', N'日程计划类型', N'eoa_plan_type', N'', N'0', N'admin', N'2019-11-27 10:39:36.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1199520177767587841', N'分类栏目类型', N'eoa_cms_menu_type', N'', N'0', N'admin', N'2019-11-27 10:47:51.0000000', N'admin', N'2019-11-27 10:49:35.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1199525215290306561', N'日程计划状态', N'eoa_plan_status', N'', N'0', N'admin', N'2019-11-27 11:07:52.0000000', N'admin', N'2019-11-27 11:10:11.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1209733563293962241', N'数据库类型', N'database_type', N'', N'0', N'admin', N'2019-12-25 15:12:12.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'236e8a4baff0db8c62c00dd95632834f', N'同步工作流引擎', N'activiti_sync', N'同步工作流引擎', N'0', N'admin', N'2019-05-15 15:27:33.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'2e02df51611a4b9632828ab7e5338f00', N'权限策略', N'perms_type', N'权限策略', N'0', N'admin', N'2019-04-26 18:26:55.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'2f0320997ade5dd147c90130f7218c3e', N'推送类别', N'msg_type', N'', N'0', N'admin', N'2019-03-17 21:21:32.0000000', N'admin', N'2019-03-26 19:57:45.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'3486f32803bb953e7155dab3513dc68b', N'删除状态', N'del_flag', NULL, N'0', N'admin', N'2019-01-18 21:46:26.0000000', N'admin', N'2019-03-30 11:17:11.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'3d9a351be3436fbefb1307d4cfb49bf2', N'性别', N'sex', NULL, N'0', NULL, N'2019-01-04 14:56:32.0000000', N'admin', N'2019-03-30 11:28:27.0000000', N'1')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'404a04a15f371566c658ee9ef9fc392a', N'cehis2', N'22', NULL, N'1', N'admin', N'2019-01-30 11:17:21.0000000', N'admin', N'2019-03-30 11:18:12.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'4274efc2292239b6f000b153f50823ff', N'全局权限策略', N'global_perms_type', N'全局权限策略', N'0', N'admin', N'2019-05-10 17:54:05.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'4c03fca6bf1f0299c381213961566349', N'Online图表展示模板', N'online_graph_display_template', N'Online图表展示模板', N'0', N'admin', N'2019-04-12 17:28:50.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'4c753b5293304e7a445fd2741b46529d', N'字典状态', N'dict_item_status', NULL, N'0', N'admin', N'2020-06-18 23:18:42.0000000', N'admin', N'2019-03-30 19:33:52.0000000', N'1')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'4d7fec1a7799a436d26d02325eff295e', N'优先级', N'priority', N'优先级', N'0', N'admin', N'2019-03-16 17:03:34.0000000', N'admin', N'2019-04-16 17:39:23.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'4e4602b3e3686f0911384e188dc7efb4', N'条件规则', N'rule_conditions', N'', N'0', N'admin', N'2019-04-01 10:15:03.0000000', N'admin', N'2019-04-01 10:30:47.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'4f69be5f507accea8d5df5f11346181a', N'发送消息类型', N'msgType', NULL, N'0', N'admin', N'2019-04-11 14:27:09.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'68168534ff5065a152bfab275c2136f8', N'有效无效状态', N'valid_status', N'有效无效状态', N'0', N'admin', N'2020-09-26 19:21:14.0000000', N'admin', N'2019-04-26 19:21:23.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'6b78e3f59faec1a4750acff08030a79b', N'用户类型', N'user_type', NULL, N'1', NULL, N'2019-01-04 14:59:01.0000000', N'admin', N'2019-03-18 23:28:18.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'72cce0989df68887546746d8f09811aa', N'Online表单类型', N'cgform_table_type', N'', N'0', N'admin', N'2019-01-27 10:13:02.0000000', N'admin', N'2019-03-30 11:37:36.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'78bda155fe380b1b3f175f1e88c284c6', N'流程状态', N'bpm_status', N'流程状态', N'0', N'admin', N'2019-05-09 16:31:52.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'83bfb33147013cc81640d5fd9eda030c', N'日志类型', N'log_type', NULL, N'0', N'admin', N'2019-03-18 23:22:19.0000000', NULL, NULL, N'1')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'845da5006c97754728bf48b6a10f79cc', N'状态', N'status', NULL, N'1', N'admin', N'2019-03-18 21:45:25.0000000', N'admin', N'2019-03-18 21:58:25.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'880a895c98afeca9d9ac39f29e67c13e', N'操作类型', N'operate_type', N'操作类型', N'0', N'admin', N'2019-07-22 10:54:29.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'8dfe32e2d29ea9430a988b3b558bf233', N'发布状态', N'send_status', N'发布状态', N'0', N'admin', N'2019-04-16 17:40:42.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'a7adbcd86c37f7dbc9b66945c82ef9e6', N'1是0否', N'yn', N'', N'1', N'admin', N'2019-05-22 19:29:29.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'a9d9942bd0eccb6e89de92d130ec4c4a', N'消息发送状态', N'msgSendStatus', NULL, N'0', N'admin', N'2019-04-12 18:18:17.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'ac2f7c0c5c5775fcea7e2387bcb22f01', N'菜单类型', N'menu_type', NULL, N'0', N'admin', N'2020-12-18 23:24:32.0000000', N'admin', N'2019-04-01 15:27:06.0000000', N'1')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'ad7c65ba97c20a6805d5dcdf13cdaf36', N'onlineT类型', N'ceshi_online', NULL, N'1', N'admin', N'2019-03-22 16:31:49.0000000', N'admin', N'2019-03-22 16:34:16.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'bd1b8bc28e65d6feefefb6f3c79f42fd', N'Online图表数据类型', N'online_graph_data_type', N'Online图表数据类型', N'0', N'admin', N'2019-04-12 17:24:24.0000000', N'admin', N'2019-04-12 17:24:57.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'c36169beb12de8a71c8683ee7c28a503', N'部门状态', N'depart_status', NULL, N'0', N'admin', N'2019-03-18 21:59:51.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'c5a14c75172783d72cbee6ee7f5df5d1', N'Online图表类型', N'online_graph_type', N'Online图表类型', N'0', N'admin', N'2019-04-12 17:04:06.0000000', NULL, NULL, N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'd6e1152968b02d69ff358c75b48a6ee1', N'流程类型', N'bpm_process_type', NULL, N'0', N'admin', N'2021-02-22 19:26:54.0000000', N'admin', N'2019-03-30 18:14:44.0000000', N'0')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'fc6cd58fde2e8481db10d3a1e68ce70c', N'用户状态', N'user_status', NULL, N'0', N'admin', N'2019-03-18 21:57:25.0000000', N'admin', N'2019-03-18 23:11:58.0000000', N'1')
GO


-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dict_item]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dict_item]
GO

CREATE TABLE [dbo].[sys_dict_item] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [dict_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [item_text] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [item_value] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sort_order] int  NULL,
  [status] int  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_dict_item] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典id',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'dict_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典项文本',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'item_text'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典项值',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'item_value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'sort_order'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态（1启用 0不启用）',
'SCHEMA', N'dbo',
'TABLE', N'sys_dict_item',
'COLUMN', N'status'
GO


-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO [dbo].[sys_dict_item]  VALUES (N'0072d115e07c875d76c9b022e2179128', N'4d7fec1a7799a436d26d02325eff295e', N'低', N'L', N'低', N'3', N'1', N'admin', N'2019-04-16 17:04:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'05a2e732ce7b00aa52141ecc3e330b4e', N'3486f32803bb953e7155dab3513dc68b', N'已删除', N'1', NULL, NULL, N'1', N'admin', N'2025-10-18 21:46:56.0000000', N'admin', N'2019-03-28 22:23:20.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'096c2e758d823def3855f6376bc736fb', N'bd1b8bc28e65d6feefefb6f3c79f42fd', N'SQL', N'sql', NULL, N'1', N'1', N'admin', N'2019-04-12 17:26:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'0c9532916f5cd722017b46bc4d953e41', N'2f0320997ade5dd147c90130f7218c3e', N'指定用户', N'USER', NULL, NULL, N'1', N'admin', N'2019-03-17 21:22:19.0000000', N'admin', N'2019-03-17 21:22:28.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'0ca4beba9efc4f9dd54af0911a946d5c', N'72cce0989df68887546746d8f09811aa', N'附表', N'3', NULL, N'3', N'1', N'admin', N'2019-03-27 10:13:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1030a2652608f5eac3b49d70458b8532', N'2e02df51611a4b9632828ab7e5338f00', N'禁用', N'2', N'禁用', N'2', N'1', N'admin', N'2021-03-26 18:27:28.0000000', N'admin', N'2019-04-26 18:39:11.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1174509601047994369', N'1174509082208395266', N'员级', N'1', N'', N'1', N'1', N'admin', N'2019-09-19 10:24:45.0000000', N'admin', N'2019-09-23 11:46:39.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1174509667297026049', N'1174509082208395266', N'助级', N'2', N'', N'2', N'1', N'admin', N'2019-09-19 10:25:01.0000000', N'admin', N'2019-09-23 11:46:47.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1174509713568587777', N'1174509082208395266', N'中级', N'3', N'', N'3', N'1', N'admin', N'2019-09-19 10:25:12.0000000', N'admin', N'2019-09-23 11:46:56.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1174509788361416705', N'1174509082208395266', N'副高级', N'4', N'', N'4', N'1', N'admin', N'2019-09-19 10:25:30.0000000', N'admin', N'2019-09-23 11:47:06.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1174509835803189250', N'1174509082208395266', N'正高级', N'5', N'', N'5', N'1', N'admin', N'2019-09-19 10:25:41.0000000', N'admin', N'2019-09-23 11:47:12.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1174511197735665665', N'1174511106530525185', N'组织机构', N'1', N'组织机构', N'1', N'1', N'admin', N'2019-09-19 10:31:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1174511244036587521', N'1174511106530525185', N'岗位', N'2', N'岗位', N'1', N'1', N'admin', N'2019-09-19 10:31:16.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1178295553450061826', N'1178295274528845826', N'可编辑(未授权禁用)', N'2', N'', N'2', N'1', N'admin', N'2019-09-29 21:08:46.0000000', N'admin', N'2019-09-29 21:09:18.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1178295639554928641', N'1178295274528845826', N'可见(未授权不可见)', N'1', N'', N'1', N'1', N'admin', N'2019-09-29 21:09:06.0000000', N'admin', N'2019-09-29 21:09:24.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1199517884758368257', N'1199517671259906049', N'一般', N'1', N'', N'1', N'1', N'admin', N'2019-11-27 10:38:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1199517914017832962', N'1199517671259906049', N'重要', N'2', N'', N'1', N'1', N'admin', N'2019-11-27 10:38:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1199517941339529217', N'1199517671259906049', N'紧急', N'3', N'', N'1', N'1', N'admin', N'2019-11-27 10:38:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1199518186144276482', N'1199518099888414722', N'日常记录', N'1', N'', N'1', N'1', N'admin', N'2019-11-27 10:39:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1199518214858481666', N'1199518099888414722', N'本周工作', N'2', N'', N'1', N'1', N'admin', N'2019-11-27 10:40:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1199518235943247874', N'1199518099888414722', N'下周计划', N'3', N'', N'1', N'1', N'admin', N'2019-11-27 10:40:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1199520817285701634', N'1199520177767587841', N'列表', N'1', N'', N'1', N'1', N'admin', N'2019-11-27 10:50:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1199520835035996161', N'1199520177767587841', N'链接', N'2', N'', N'1', N'1', N'admin', N'2019-11-27 10:50:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1199525468672405505', N'1199525215290306561', N'未开始', N'0', N'', N'1', N'1', N'admin', N'2019-11-27 11:08:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1199525490575060993', N'1199525215290306561', N'进行中', N'1', N'', N'1', N'1', N'admin', N'2019-11-27 11:08:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1199525506429530114', N'1199525215290306561', N'已完成', N'2', N'', N'1', N'1', N'admin', N'2019-11-27 11:09:02.0000000', N'admin', N'2019-11-27 11:10:02.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1199607547704647681', N'4f69be5f507accea8d5df5f11346181a', N'系统', N'4', N'', N'1', N'1', N'admin', N'2019-11-27 16:35:02.0000000', N'admin', N'2019-11-27 19:37:46.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1209733775114702850', N'1209733563293962241', N'MySQL', N'1', N'', N'1', N'1', N'admin', N'2019-12-25 15:13:02.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1209733839933476865', N'1209733563293962241', N'Oracle', N'2', N'', N'1', N'1', N'admin', N'2019-12-25 15:13:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1209733903020003330', N'1209733563293962241', N'SQLServer', N'3', N'', N'1', N'1', N'admin', N'2019-12-25 15:13:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'147c48ff4b51545032a9119d13f3222a', N'd6e1152968b02d69ff358c75b48a6ee1', N'测试流程', N'test', NULL, N'1', N'1', N'admin', N'2019-03-22 19:27:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1543fe7e5e26fb97cdafe4981bedc0c8', N'4c03fca6bf1f0299c381213961566349', N'单排布局', N'single', NULL, N'2', N'1', N'admin', N'2022-07-12 17:43:39.0000000', N'admin', N'2019-04-12 17:43:57.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1b8a6341163062dad8cb2fddd34e0c3b', N'404a04a15f371566c658ee9ef9fc392a', N'22', N'222', NULL, N'1', N'1', N'admin', N'2019-03-30 11:17:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1ce390c52453891f93514c1bd2795d44', N'ad7c65ba97c20a6805d5dcdf13cdaf36', N'000', N'00', NULL, N'1', N'1', N'admin', N'2019-03-22 16:34:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'1db531bcff19649fa82a644c8a939dc4', N'4c03fca6bf1f0299c381213961566349', N'组合布局', N'combination', N'', N'4', N'1', N'admin', N'2019-05-11 16:07:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'222705e11ef0264d4214affff1fb4ff9', N'4f69be5f507accea8d5df5f11346181a', N'短信', N'1', N'', N'1', N'1', N'admin', N'2023-02-28 10:50:36.0000000', N'admin', N'2019-04-28 10:58:11.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'23a5bb76004ed0e39414e928c4cde155', N'4e4602b3e3686f0911384e188dc7efb4', N'不等于', N'!=', N'不等于', N'3', N'1', N'admin', N'2019-04-01 16:46:15.0000000', N'admin', N'2019-04-01 17:48:40.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'25847e9cb661a7c711f9998452dc09e6', N'4e4602b3e3686f0911384e188dc7efb4', N'小于等于', N'<=', N'小于等于', N'6', N'1', N'admin', N'2019-04-01 16:44:34.0000000', N'admin', N'2019-04-01 17:49:10.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'2d51376643f220afdeb6d216a8ac2c01', N'68168534ff5065a152bfab275c2136f8', N'有效', N'1', N'有效', N'2', N'1', N'admin', N'2019-04-26 19:22:01.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'308c8aadf0c37ecdde188b97ca9833f5', N'8dfe32e2d29ea9430a988b3b558bf233', N'已发布', N'1', N'已发布', N'2', N'1', N'admin', N'2019-04-16 17:41:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'333e6b2196e01ef9a5f76d74e86a6e33', N'8dfe32e2d29ea9430a988b3b558bf233', N'未发布', N'0', N'未发布', N'1', N'1', N'admin', N'2019-04-16 17:41:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'337ea1e401bda7233f6258c284ce4f50', N'bd1b8bc28e65d6feefefb6f3c79f42fd', N'JSON', N'json', NULL, N'1', N'1', N'admin', N'2019-04-12 17:26:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'33bc9d9f753cf7dc40e70461e50fdc54', N'a9d9942bd0eccb6e89de92d130ec4c4a', N'发送失败', N'2', NULL, N'3', N'1', N'admin', N'2019-04-12 18:20:02.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'3fbc03d6c994ae06d083751248037c0e', N'78bda155fe380b1b3f175f1e88c284c6', N'已完成', N'3', N'已完成', N'3', N'1', N'admin', N'2019-05-09 16:33:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'41d7aaa40c9b61756ffb1f28da5ead8e', N'0b5d19e1fce4b2e6647e6b4a17760c14', N'通知公告', N'1', NULL, N'1', N'1', N'admin', N'2019-04-22 18:01:57.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'41fa1e9571505d643aea87aeb83d4d76', N'4e4602b3e3686f0911384e188dc7efb4', N'等于', N'=', N'等于', N'4', N'1', N'admin', N'2019-04-01 16:45:24.0000000', N'admin', N'2019-04-01 17:49:00.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'43d2295b8610adce9510ff196a49c6e9', N'845da5006c97754728bf48b6a10f79cc', N'正常', N'1', NULL, NULL, N'1', N'admin', N'2019-03-18 21:45:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'4f05fb5376f4c61502c5105f52e4dd2b', N'83bfb33147013cc81640d5fd9eda030c', N'操作日志', N'2', NULL, NULL, N'1', N'admin', N'2019-03-18 23:22:49.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'50223341bfb5ba30bf6319789d8d17fe', N'd6e1152968b02d69ff358c75b48a6ee1', N'业务办理', N'business', NULL, N'3', N'1', N'admin', N'2023-04-22 19:28:05.0000000', N'admin', N'2019-03-22 23:24:39.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'51222413e5906cdaf160bb5c86fb827c', N'a7adbcd86c37f7dbc9b66945c82ef9e6', N'是', N'1', N'', N'1', N'1', N'admin', N'2019-05-22 19:29:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'538fca35afe004972c5f3947c039e766', N'2e02df51611a4b9632828ab7e5338f00', N'显示', N'1', N'显示', N'1', N'1', N'admin', N'2025-03-26 18:27:13.0000000', N'admin', N'2019-04-26 18:39:07.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'5584c21993bde231bbde2b966f2633ac', N'4e4602b3e3686f0911384e188dc7efb4', N'自定义SQL表达式', N'USE_SQL_RULES', N'自定义SQL表达式', N'9', N'1', N'admin', N'2019-04-01 10:45:24.0000000', N'admin', N'2019-04-01 17:49:27.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'58b73b344305c99b9d8db0fc056bbc0a', N'72cce0989df68887546746d8f09811aa', N'主表', N'2', NULL, N'2', N'1', N'admin', N'2019-03-27 10:13:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'5b65a88f076b32e8e69d19bbaadb52d5', N'2f0320997ade5dd147c90130f7218c3e', N'全体用户', N'ALL', NULL, NULL, N'1', N'admin', N'2020-10-17 21:22:43.0000000', N'admin', N'2019-03-28 22:17:09.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'5d833f69296f691843ccdd0c91212b6b', N'880a895c98afeca9d9ac39f29e67c13e', N'修改', N'3', N'', N'3', N'1', N'admin', N'2019-07-22 10:55:07.0000000', N'admin', N'2019-07-22 10:55:41.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'5d84a8634c8fdfe96275385075b105c9', N'3d9a351be3436fbefb1307d4cfb49bf2', N'女', N'2', NULL, N'2', N'1', NULL, N'2019-01-04 14:56:56.0000000', NULL, N'2019-01-04 17:38:12.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'66c952ae2c3701a993e7db58f3baf55e', N'4e4602b3e3686f0911384e188dc7efb4', N'大于', N'>', N'大于', N'1', N'1', N'admin', N'2019-04-01 10:45:46.0000000', N'admin', N'2019-04-01 17:48:29.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'6937c5dde8f92e9a00d4e2ded9198694', N'ad7c65ba97c20a6805d5dcdf13cdaf36', N'easyui', N'3', NULL, N'1', N'1', N'admin', N'2019-03-22 16:32:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'69cacf64e244100289ddd4aa9fa3b915', N'a9d9942bd0eccb6e89de92d130ec4c4a', N'未发送', N'0', NULL, N'1', N'1', N'admin', N'2019-04-12 18:19:23.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'6a7a9e1403a7943aba69e54ebeff9762', N'4f69be5f507accea8d5df5f11346181a', N'邮件', N'2', N'', N'2', N'1', N'admin', N'2031-02-28 10:50:44.0000000', N'admin', N'2019-04-28 10:59:03.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'6c682d78ddf1715baf79a1d52d2aa8c2', N'72cce0989df68887546746d8f09811aa', N'单表', N'1', NULL, N'1', N'1', N'admin', N'2019-03-27 10:13:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'6d404fd2d82311fbc87722cd302a28bc', N'4e4602b3e3686f0911384e188dc7efb4', N'模糊', N'LIKE', N'模糊', N'7', N'1', N'admin', N'2019-04-01 16:46:02.0000000', N'admin', N'2019-04-01 17:49:20.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'6d4e26e78e1a09699182e08516c49fc4', N'4d7fec1a7799a436d26d02325eff295e', N'高', N'H', N'高', N'1', N'1', N'admin', N'2019-04-16 17:04:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'700e9f030654f3f90e9ba76ab0713551', N'6b78e3f59faec1a4750acff08030a79b', N'333', N'333', NULL, NULL, N'1', N'admin', N'2019-02-21 19:59:47.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'7050c1522702bac3be40e3b7d2e1dfd8', N'c5a14c75172783d72cbee6ee7f5df5d1', N'柱状图', N'bar', NULL, N'1', N'1', N'admin', N'2019-04-12 17:05:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'71b924faa93805c5c1579f12e001c809', N'd6e1152968b02d69ff358c75b48a6ee1', N'OA办公', N'oa', NULL, N'2', N'1', N'admin', N'2021-03-22 19:27:17.0000000', N'admin', N'2019-03-22 23:24:36.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'75b260d7db45a39fc7f21badeabdb0ed', N'c36169beb12de8a71c8683ee7c28a503', N'不启用', N'0', NULL, NULL, N'1', N'admin', N'2019-03-18 23:29:41.0000000', N'admin', N'2019-03-18 23:29:54.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'7688469db4a3eba61e6e35578dc7c2e5', N'c36169beb12de8a71c8683ee7c28a503', N'启用', N'1', NULL, NULL, N'1', N'admin', N'2019-03-18 23:29:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'78ea6cadac457967a4b1c4eb7aaa418c', N'fc6cd58fde2e8481db10d3a1e68ce70c', N'正常', N'1', NULL, NULL, N'1', N'admin', N'2019-03-18 23:30:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'7ccf7b80c70ee002eceb3116854b75cb', N'ac2f7c0c5c5775fcea7e2387bcb22f01', N'按钮权限', N'2', NULL, NULL, N'1', N'admin', N'2019-03-18 23:25:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'81fb2bb0e838dc68b43f96cc309f8257', N'fc6cd58fde2e8481db10d3a1e68ce70c', N'冻结', N'2', NULL, NULL, N'1', N'admin', N'2019-03-18 23:30:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'83250269359855501ec4e9c0b7e21596', N'4274efc2292239b6f000b153f50823ff', N'可见/可访问(授权后可见/可访问)', N'1', N'', N'1', N'1', N'admin', N'2019-05-10 17:54:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'84778d7e928bc843ad4756db1322301f', N'4e4602b3e3686f0911384e188dc7efb4', N'大于等于', N'>=', N'大于等于', N'5', N'1', N'admin', N'2019-04-01 10:46:02.0000000', N'admin', N'2019-04-01 17:49:05.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'848d4da35ebd93782029c57b103e5b36', N'c5a14c75172783d72cbee6ee7f5df5d1', N'饼图', N'pie', NULL, N'3', N'1', N'admin', N'2019-04-12 17:05:49.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'84dfc178dd61b95a72900fcdd624c471', N'78bda155fe380b1b3f175f1e88c284c6', N'处理中', N'2', N'处理中', N'2', N'1', N'admin', N'2019-05-09 16:33:01.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'86f19c7e0a73a0bae451021ac05b99dd', N'ac2f7c0c5c5775fcea7e2387bcb22f01', N'子菜单', N'1', NULL, NULL, N'1', N'admin', N'2019-03-18 23:25:27.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'8bccb963e1cd9e8d42482c54cc609ca2', N'4f69be5f507accea8d5df5f11346181a', N'微信', N'3', NULL, N'3', N'1', N'admin', N'2021-05-11 14:29:12.0000000', N'admin', N'2019-04-11 14:29:31.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'8c618902365ca681ebbbe1e28f11a548', N'4c753b5293304e7a445fd2741b46529d', N'启用', N'1', N'', N'0', N'1', N'admin', N'2020-07-18 23:19:27.0000000', N'admin', N'2019-05-17 14:51:18.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'8cdf08045056671efd10677b8456c999', N'4274efc2292239b6f000b153f50823ff', N'可编辑(未授权时禁用)', N'2', N'', N'2', N'1', N'admin', N'2019-05-10 17:55:38.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'8ff48e657a7c5090d4f2a59b37d1b878', N'4d7fec1a7799a436d26d02325eff295e', N'中', N'M', N'中', N'2', N'1', N'admin', N'2019-04-16 17:04:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'948923658baa330319e59b2213cda97c', N'880a895c98afeca9d9ac39f29e67c13e', N'添加', N'2', N'', N'2', N'1', N'admin', N'2019-07-22 10:54:59.0000000', N'admin', N'2019-07-22 10:55:36.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'9a96c4a4e4c5c9b4e4d0cbf6eb3243cc', N'4c753b5293304e7a445fd2741b46529d', N'不启用', N'0', NULL, N'1', N'1', N'admin', N'2019-03-18 23:19:53.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'a1e7d1ca507cff4a480c8caba7c1339e', N'880a895c98afeca9d9ac39f29e67c13e', N'导出', N'6', N'', N'6', N'1', N'admin', N'2019-07-22 12:06:50.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'a2321496db6febc956a6c70fab94cb0c', N'404a04a15f371566c658ee9ef9fc392a', N'3', N'3', NULL, N'1', N'1', N'admin', N'2019-03-30 11:18:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'a2be752dd4ec980afaec1efd1fb589af', N'8dfe32e2d29ea9430a988b3b558bf233', N'已撤销', N'2', N'已撤销', N'3', N'1', N'admin', N'2019-04-16 17:41:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'aa0d8a8042a18715a17f0a888d360aa4', N'ac2f7c0c5c5775fcea7e2387bcb22f01', N'一级菜单', N'0', NULL, NULL, N'1', N'admin', N'2019-03-18 23:24:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'adcf2a1fe93bb99a84833043f475fe0b', N'4e4602b3e3686f0911384e188dc7efb4', N'包含', N'IN', N'包含', N'8', N'1', N'admin', N'2019-04-01 16:45:47.0000000', N'admin', N'2019-04-01 17:49:24.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'b029a41a851465332ee4ee69dcf0a4c2', N'0b5d19e1fce4b2e6647e6b4a17760c14', N'系统消息', N'2', NULL, N'1', N'1', N'admin', N'2019-02-22 18:02:08.0000000', N'admin', N'2019-04-22 18:02:13.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'b2a8b4bb2c8e66c2c4b1bb086337f393', N'3486f32803bb953e7155dab3513dc68b', N'正常', N'0', NULL, NULL, N'1', N'admin', N'2022-10-18 21:46:48.0000000', N'admin', N'2019-03-28 22:22:20.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'b57f98b88363188daf38d42f25991956', N'6b78e3f59faec1a4750acff08030a79b', N'22', N'222', NULL, NULL, N'0', N'admin', N'2019-02-21 19:59:43.0000000', N'admin', N'2019-03-11 21:23:27.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'b5f3bd5f66bb9a83fecd89228c0d93d1', N'68168534ff5065a152bfab275c2136f8', N'无效', N'0', N'无效', N'1', N'1', N'admin', N'2019-04-26 19:21:49.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'b9fbe2a3602d4a27b45c100ac5328484', N'78bda155fe380b1b3f175f1e88c284c6', N'待提交', N'1', N'待提交', N'1', N'1', N'admin', N'2019-05-09 16:32:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'ba27737829c6e0e582e334832703d75e', N'236e8a4baff0db8c62c00dd95632834f', N'同步', N'1', N'同步', N'1', N'1', N'admin', N'2019-05-15 15:28:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'bcec04526b04307e24a005d6dcd27fd6', N'880a895c98afeca9d9ac39f29e67c13e', N'导入', N'5', N'', N'5', N'1', N'admin', N'2019-07-22 12:06:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'c53da022b9912e0aed691bbec3c78473', N'880a895c98afeca9d9ac39f29e67c13e', N'查询', N'1', N'', N'1', N'1', N'admin', N'2019-07-22 10:54:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'c5700a71ad08994d18ad1dacc37a71a9', N'a7adbcd86c37f7dbc9b66945c82ef9e6', N'否', N'0', N'', N'1', N'1', N'admin', N'2019-05-22 19:29:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'cbfcc5b88fc3a90975df23ffc8cbe29c', N'c5a14c75172783d72cbee6ee7f5df5d1', N'曲线图', N'line', NULL, N'2', N'1', N'admin', N'2019-05-12 17:05:30.0000000', N'admin', N'2019-04-12 17:06:06.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'd217592908ea3e00ff986ce97f24fb98', N'c5a14c75172783d72cbee6ee7f5df5d1', N'数据列表', N'table', NULL, N'4', N'1', N'admin', N'2019-04-12 17:05:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'df168368dcef46cade2aadd80100d8aa', N'3d9a351be3436fbefb1307d4cfb49bf2', N'男', N'1', NULL, N'1', N'1', NULL, N'2027-08-04 14:56:49.0000000', N'admin', N'2019-03-23 22:44:44.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'e6329e3a66a003819e2eb830b0ca2ea0', N'4e4602b3e3686f0911384e188dc7efb4', N'小于', N'<', N'小于', N'2', N'1', N'admin', N'2019-04-01 16:44:15.0000000', N'admin', N'2019-04-01 17:48:34.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'e94eb7af89f1dbfa0d823580a7a6e66a', N'236e8a4baff0db8c62c00dd95632834f', N'不同步', N'0', N'不同步', N'2', N'1', N'admin', N'2019-05-15 15:28:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'f0162f4cc572c9273f3e26b2b4d8c082', N'ad7c65ba97c20a6805d5dcdf13cdaf36', N'booostrap', N'1', NULL, N'1', N'1', N'admin', N'2021-08-22 16:32:04.0000000', N'admin', N'2019-03-22 16:33:57.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'f16c5706f3ae05c57a53850c64ce7c45', N'a9d9942bd0eccb6e89de92d130ec4c4a', N'发送成功', N'1', NULL, N'2', N'1', N'admin', N'2019-04-12 18:19:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'f2a7920421f3335afdf6ad2b342f6b5d', N'845da5006c97754728bf48b6a10f79cc', N'冻结', N'2', NULL, NULL, N'1', N'admin', N'2019-03-18 21:46:02.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'f37f90c496ec9841c4c326b065e00bb2', N'83bfb33147013cc81640d5fd9eda030c', N'登录日志', N'1', NULL, NULL, N'1', N'admin', N'2019-03-18 23:22:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'f753aff60ff3931c0ecb4812d8b5e643', N'4c03fca6bf1f0299c381213961566349', N'双排布局', N'double', NULL, N'3', N'1', N'admin', N'2019-04-12 17:43:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'f80a8f6838215753b05e1a5ba3346d22', N'880a895c98afeca9d9ac39f29e67c13e', N'删除', N'4', N'', N'4', N'1', N'admin', N'2019-07-22 10:55:14.0000000', N'admin', N'2019-07-22 10:55:30.0000000')
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'fcec03570f68a175e1964808dc3f1c91', N'4c03fca6bf1f0299c381213961566349', N'Tab风格', N'tab', NULL, N'1', N'1', N'admin', N'2019-04-12 17:43:31.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_item]  VALUES (N'fe50b23ae5e68434def76f67cef35d2d', N'78bda155fe380b1b3f175f1e88c284c6', N'已作废', N'4', N'已作废', N'4', N'1', N'admin', N'2021-09-09 16:33:43.0000000', N'admin', N'2019-05-09 16:34:40.0000000')
GO


-- ----------------------------
-- Table structure for sys_fill_rule
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_fill_rule]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_fill_rule]
GO

CREATE TABLE [dbo].[sys_fill_rule] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [rule_name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [rule_code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [rule_class] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [rule_params] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_fill_rule] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_fill_rule',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'规则名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_fill_rule',
'COLUMN', N'rule_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'规则Code',
'SCHEMA', N'dbo',
'TABLE', N'sys_fill_rule',
'COLUMN', N'rule_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'规则实现类',
'SCHEMA', N'dbo',
'TABLE', N'sys_fill_rule',
'COLUMN', N'rule_class'
GO

EXEC sp_addextendedproperty
'MS_Description', N'规则参数',
'SCHEMA', N'dbo',
'TABLE', N'sys_fill_rule',
'COLUMN', N'rule_params'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_fill_rule',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_fill_rule',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_fill_rule',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_fill_rule',
'COLUMN', N'create_time'
GO


-- ----------------------------
-- Records of sys_fill_rule
-- ----------------------------
INSERT INTO [dbo].[sys_fill_rule]  VALUES (N'1202551334738382850', N'机构编码生成', N'org_num_role', N'org.jeecg.modules.system.rule.OrgCodeRule', N'{"parentId":"c6d7cb4deeac411cb3384b1b31278596"}', N'admin', N'2019-12-09 10:37:06.0000000', N'admin', N'2019-12-05 19:32:35.0000000')
GO

INSERT INTO [dbo].[sys_fill_rule]  VALUES (N'1202787623203065858', N'分类字典编码生成', N'category_code_rule', N'org.jeecg.modules.system.rule.CategoryCodeRule', N'{"pid":""}', N'admin', N'2019-12-09 10:36:54.0000000', N'admin', N'2019-12-06 11:11:31.0000000')
GO


-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_log]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_log]
GO

CREATE TABLE [dbo].[sys_log] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [log_type] int  NULL,
  [log_content] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [operate_type] int  NULL,
  [userid] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [username] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ip] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [method] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [request_url] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [request_param] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [request_type] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [cost_time] bigint  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志类型（1登录日志，2操作日志）',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'log_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'日志内容',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'log_content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'operate_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作用户账号',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'userid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作用户名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
'MS_Description', N'IP',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求java方法',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'method'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求路径',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'request_url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求参数',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'request_param'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'request_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'耗时',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'cost_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_log',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统日志表',
'SCHEMA', N'dbo',
'TABLE', N'sys_log'
GO


-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO [dbo].[sys_log]  VALUES (N'002b7112a147edeb6149a891494577d0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 22:52:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'00f763e007e5a6bddf4cb8e562a53005', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 15:41:31.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'01075aa535274735e0df0a8bc44f62f9', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-09 16:56:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'016510fc662d9bb24d0186c5478df268', N'1', N'用户名: admin,登录成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-02-26 20:27:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0169622dcd4e89b177a0917778ac7f9c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-23 11:17:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'017e9596f489951f1cc7d978085adc00', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-08 10:58:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'018fe8d3f049a32fb8b541c893058713', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 15:17:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'01ebe1cbeae916a9228770f63130fdac', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-09 16:56:50.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'02026841bf8a9204db2c500c86a4a9be', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.1.104', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 20:44:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'024a4c5ba78538d05373dac650b227d1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-22 15:59:50.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0251bbee51c28f83459f4a57eeb61777', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-23 22:14:27.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'02d4447c9d97ac4fc1c3a9a4c789c2a8', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-28 18:24:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'03c0ab177bd7d840b778713b37daf86f', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-02 10:04:57.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'03ec66b6b6d17c007ec2f918efe5b898', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:16:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0473dedf4aa653b253b008dacff2937c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 13:04:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0475b4445d5f58f29212258c1644f339', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-01 20:20:23.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'04f97d7f906c1e97384a94f3728606a4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-11 12:08:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'055cf35c8865761b479c7f289dc36616', N'2', N'添加测试DEMO', NULL, N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, N'[{"createBy":"admin","createTime":1547912238787,"email":"zhangdaiscott@163.com","id":"c2c0d49e3c01913067cf8d1fb3c971d2","name":"zhang daihao"}]', NULL, N'16', N'admin', N'2019-01-19 23:37:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'056dd4466f4ed51de26c535fd9864828', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-11 19:47:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0571e5730ee624d0dd1b095ad7101738', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-18 16:10:50.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'059bac84373e9dae94363ea18802d70f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-23 10:06:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'060d541a9571ca2b0d24790a98d170a6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-04 19:28:04.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'063baad688535096d2ed906ae6f3a128', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-18 22:09:21.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0643f3ad4394de9fb3c491080c6a7a03', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-19 10:18:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'06fbb85b34f518cd211b948552de72f8', N'1', N'登录失败，用户名:null不存在！', NULL, NULL, NULL, N'192.168.1.104', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 20:08:38.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'07132c1228b1c165f62ea35f4ff1cbe9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-19 18:15:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'07a0b3f8b4140a7a586305c2f40a2310', N'2', N'删除测试DEMO', NULL, N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, N'["7eac655877842eb39dc2f0469f3964ec"]', NULL, N'14', N'admin', N'2019-01-19 15:38:11.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0819ea9729ddf70f64ace59370a62cf1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 18:59:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0913bb0e92715892c470cf538726dfbc', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-19 16:17:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'097be3e8fdf77a245f5c85884e97b88c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-05 22:52:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0a24b1f04f79a2bcb83c4cd12d077cbc', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 17:34:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0a634ed086442afa7a5fc9aa000b898a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:10:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0a6eb1fa998b749012216542a2447ae7', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 11:29:30.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0aa792eadeae39a1ed2a98ea5d2f6d27', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-16 09:11:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0aa9272c0581e1d7f62b1293375b4574', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-16 17:26:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0ad51ba59da2c8763a4e6ed6e0a292b2', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-18 17:37:53.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0b42292a532c796495a34d8d9c633afa', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-08 12:58:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0b9940fc5487026a3f16cade73efead5', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:28:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0ba24c5f61ff53f93134cf932dd486db', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-31 21:06:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0bc44e2d682c9f28525d203589a90b43', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 20:31:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0d4582c6b7719b0bfc0260939d97274f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-10 21:48:47.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0d6cd835072c83f46d1d2a3cf13225d3', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-01 12:04:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0d85728028ed67da696137c0e82ab2f6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-16 12:58:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0dc22e52c9173e4e880728bc7734ff65', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 11:14:47.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0dc6d04b99e76ad400eef1ded2d3d97c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 09:59:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0e365a21c60e4460813bdc4e3cb320a3', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 23:01:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0e41fe3a34d5715bf4c88e220663583a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 17:04:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0e754ee377033067f7b2f10b56b8784c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-01 17:17:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0e9c0d0d26ddc652a7277912e0784d11', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-23 12:27:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0ef3e7ae8c073a7e3bdd736068f86c84', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:02:27.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0efc9df0d52c65ec318e7b46db21655f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:42:47.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'0f173ec7e8819358819aa14aafc724c0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 11:15:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'10922e0d030960e6b026c67c6179247b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 20:07:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'10a434c326e39b1d046defddc8c57f4a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-03 21:18:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'111156480d4d18ebf40427083f25830f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.1.104', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 19:48:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'11695a9dcf44859cda97a4226bebe21b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-05-17 18:30:57.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'11802c7a3644af411bc4e085553cfd4f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-23 14:46:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1185035214331654145', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-10-18 11:29:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1185035238713143298', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-10-18 11:29:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1185035239463923713', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-10-18 11:29:53.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1185037047527714817', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-10-18 11:37:04.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1185037216109375490', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'133', N'admin', N'2019-10-18 11:37:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1185037734533738497', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'24', N'admin', N'2019-10-18 11:39:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1185037756142792705', N'2', N'编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', N'2', N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-10-18 11:39:53.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1185037829144653825', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'12', N'admin', N'2019-10-18 11:40:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1185039907581669377', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'6', N'admin', N'2019-10-18 11:48:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1185039947956039681', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'5', N'admin', N'2019-10-18 11:48:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1185040064834514945', N'2', N'职务表-添加', N'2', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.add()', NULL, N'[{"code":"devleader","createBy":"admin","createTime":1571370543072,"id":"1185040064792571906","name":"研发部经理","rank":"3","sysOrgCode":"A01"}]', NULL, N'22', N'admin', N'2019-10-18 11:49:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1185040066562568193', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'26', N'admin', N'2019-10-18 11:49:04.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1185129808478158850', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-10-18 17:45:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1185452151318528001', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-10-19 15:06:32.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1185452231589117953', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-10-19 15:06:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197430985244905474', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-11-21 16:26:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197431068325679105', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-11-21 16:26:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197431850395602945', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'41', N'admin', N'2019-11-21 16:29:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197431872520556545', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'65', N'admin', N'2019-11-21 16:29:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197431893076840450', N'2', N'职务表-编辑', N'3', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.edit()', NULL, N'[{"code":"devleader","createBy":"admin","createTime":1571370543000,"id":"1185040064792571906","name":"研发部经理","postRank":"2","sysOrgCode":"A01","updateBy":"admin","updateTime":1574324985161}]', NULL, N'19', N'admin', N'2019-11-21 16:29:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197431893756317697', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'42', N'admin', N'2019-11-21 16:29:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197433172830294018', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'22', N'admin', N'2019-11-21 16:34:50.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197433546278539266', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'16', N'admin', N'2019-11-21 16:36:19.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197433566151151618', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-11-21 16:36:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197434320656130049', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-11-21 16:39:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197434360204222466', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'240', N'admin', N'2019-11-21 16:39:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197434364826345474', N'2', N'编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', N'2', N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-11-21 16:39:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197434403829178369', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-11-21 16:39:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197434443708620802', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-11-21 16:39:53.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197434470036267009', N'2', N'职务表-分页列表查询', N'1', N'jeecg', N'jeecg', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'45', N'jeecg', N'2019-11-21 16:40:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197434579583098881', N'2', N'职务表-分页列表查询', N'1', N'jeecg', N'jeecg', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'46', N'jeecg', N'2019-11-21 16:40:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197448449475338242', N'1', N'用户名: jeecg,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-11-21 17:35:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197448475219976193', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-11-21 17:35:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197448491221245953', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'98', N'admin', N'2019-11-21 17:35:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197449269478547458', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'43', N'admin', N'2019-11-21 17:38:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197450304582443009', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'27', N'admin', N'2019-11-21 17:42:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197453216322797569', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'526', N'admin', N'2019-11-21 17:54:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197454357987155969', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'329', N'admin', N'2019-11-21 17:59:01.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197792320302452738', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-11-22 16:21:57.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197792369866543106', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-11-22 16:22:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1197793164787802113', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'381', N'admin', N'2019-11-22 16:25:19.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'11f511eeeb2e91af86b9d5e05132fc89', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 15:13:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209402348671193089', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2019-12-24 17:16:04.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209402408473579521', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2019-12-24 17:16:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209402471128092673', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'472', N'admin', N'2019-12-24 17:16:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209417003212853250', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'42', N'admin', N'2019-12-24 18:14:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209646296664756226', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2019-12-25 09:25:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209646643298816001', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2019-12-25 09:26:49.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209648067323744257', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'28', N'admin', N'2019-12-25 09:32:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209648217823760385', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'21', N'admin', N'2019-12-25 09:33:04.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209648344894394369', N'2', N'填值规则-批量删除', N'4', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.deleteBatch()', NULL, N'["1192350056519323649,1192349918153428994,"]', NULL, N'23', N'admin', N'2019-12-25 09:33:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209648345854889985', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'17', N'admin', N'2019-12-25 09:33:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209648456588709890', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'122', N'admin', N'2019-12-25 09:34:01.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209648997351936002', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'24', N'admin', N'2019-12-25 09:36:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209649005795069954', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'25', N'admin', N'2019-12-25 09:36:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209649012203966466', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'17', N'admin', N'2019-12-25 09:36:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209653324963500034', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'19', N'admin', N'2019-12-25 09:53:22.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209653453917376513', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'15', N'admin', N'2019-12-25 09:53:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209660332378755073', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'126', N'admin', N'2019-12-25 10:21:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209660342411530241', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'26', N'admin', N'2019-12-25 10:21:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209672160353783810', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'170', N'admin', N'2019-12-25 11:08:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209672431796555778', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'42', N'admin', N'2019-12-25 11:09:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1209847153045913602', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2019-12-25 22:43:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'122edcafd54dd06e12838f41123d9d5d', N'2', N'添加测试DEMO', NULL, N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, N'[{"age":28,"birthday":1546617600000,"createBy":"admin","createTime":1547901234989,"id":"42c08b1a2e5b2a96ffa4cc88383d4b11","name":"秦500","punchTime":1546691611000}]', NULL, N'21387', N'admin', N'2019-01-19 20:34:11.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231582569151074306', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-23 22:12:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231582603032662018', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-23 22:12:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231582605322752002', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-23 22:12:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231586195961556994', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-23 22:26:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231586370448797697', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'540', N'admin', N'2020-02-23 22:27:27.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231589034586804226', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'37', N'admin', N'2020-02-23 22:38:02.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231589059643576321', N'2', N'编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', N'2', N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2020-02-23 22:38:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231590342991548417', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'26', N'admin', N'2020-02-23 22:43:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231590348280565761', N'2', N'编码校验规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, NULL, NULL, N'27', N'admin', N'2020-02-23 22:43:16.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231590455747022850', N'2', N'部门角色-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, N'6', N'admin', N'2020-02-23 22:43:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231590510293946370', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'15', N'admin', N'2020-02-23 22:43:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231590533404561410', N'2', N'编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', N'2', N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2020-02-23 22:44:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231590588148617218', N'2', N'部门角色-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, N'45', N'admin', N'2020-02-23 22:44:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231590598588239874', N'2', N'部门角色-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, N'8', N'admin', N'2020-02-23 22:44:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231590600106577921', N'2', N'部门角色-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, N'11', N'admin', N'2020-02-23 22:44:16.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231590978101448705', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'17', N'admin', N'2020-02-23 22:45:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231591017582432257', N'2', N'多数据源管理-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, NULL, NULL, N'41', N'admin', N'2020-02-23 22:45:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231593459988566017', N'2', N'部门角色-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, N'22', N'admin', N'2020-02-23 22:55:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231593466594594817', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'13', N'admin', N'2020-02-23 22:55:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231593479697600513', N'2', N'职务表-编辑', N'3', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.edit()', NULL, N'[{"code":"devleader","createBy":"admin","createTime":1571370543000,"id":"1185040064792571906","name":"研发部经理","postRank":"2","sysOrgCode":"A01","updateBy":"admin","updateTime":1582469742105}]', NULL, N'16', N'admin', N'2020-02-23 22:55:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231593480725204994', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'16', N'admin', N'2020-02-23 22:55:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231596465543032834', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-23 23:07:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231596468936224769', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-23 23:07:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231596595327381506', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-23 23:08:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231596596799582209', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-23 23:08:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231596742199324674', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-23 23:08:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231596743692496897', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-23 23:08:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231597287962157057', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-23 23:10:49.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231597290327744513', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-23 23:10:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231598580457857025', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-23 23:15:57.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231599446049009666', N'2', N'部门角色-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, N'62', N'admin', N'2020-02-23 23:19:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231599453611339778', N'2', N'部门角色-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, N'17', N'admin', N'2020-02-23 23:19:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231599534171336706', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'25', N'admin', N'2020-02-23 23:19:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231599542991958018', N'2', N'部门角色-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, N'23', N'admin', N'2020-02-23 23:19:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231615277050998786', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-24 00:22:19.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231615300820119553', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-24 00:22:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231645918777962498', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-24 02:24:04.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231660660535951362', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-24 03:22:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231772559046967297', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-24 10:47:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231772634972258306', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-24 10:47:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231872139147202561', N'2', N'填值规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, N'294', N'admin', N'2020-02-24 17:23:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231872145841311746', N'2', N'编码校验规则-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, NULL, NULL, N'98', N'admin', N'2020-02-24 17:23:01.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231872154540298242', N'2', N'多数据源管理-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, NULL, NULL, N'334', N'admin', N'2020-02-24 17:23:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1231888100260655106', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-24 18:26:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232120592192311297', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 09:50:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232121930921873409', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 09:55:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232123986592206850', N'2', N'职务表-分页列表查询', N'1', N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, N'48', N'admin', N'2020-02-25 10:03:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232124039033589761', N'2', N'编辑用户，id： a75d45a015c44384a04449ee80dc3503', N'2', N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2020-02-25 10:03:57.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232124050710532098', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 10:04:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232124114992435202', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 10:04:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232124523609919489', N'1', N'用户名: jeecg,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 10:05:53.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232124588416110593', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 10:06:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232125009155133442', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 10:07:49.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232125087760584706', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 10:08:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232125284058206209', N'1', N'用户名: jeecg,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 10:08:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232125346289094658', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 10:09:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232125555614224385', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 10:09:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232125615475331073', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 10:10:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232125831045779457', N'1', N'用户名: jeecg,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 10:11:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232230001392308226', N'1', N'用户名: jeecg测试,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 17:05:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232230077393096705', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 17:05:19.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232231182843883522', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 17:09:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1232231223797067777', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-02-25 17:09:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1235143593301209090', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-03-04 18:02:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1235170990046130178', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-03-04 19:51:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1235202803376402433', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-03-04 21:57:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1235202873094123522', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, N'2020-03-04 21:58:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1241cf8e9fd0e28478a07bf755f528c5', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:51:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'12709e62742056aa4a57fa8c2c82d84a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 09:13:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'130de55edac71aab730786307cc65936', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 20:22:57.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'131ccd390401b6e3894a37e4d1d195d3', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 22:26:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'13c1e763e9d624a69727a38b85411352', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-15 18:39:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'13c83c56a0de8a702aeb2aa0c330e42c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-30 14:53:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1487d69ff97888f3a899e2ababb5ae48', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 14:21:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'14f447d9b60725cc86b3100a5cb20b75', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-28 19:46:30.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'151a9f1b01e4e749124d274313cd138c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 11:59:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1534f0c50e67c5682e91af5160a67a80', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-04 22:47:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'155d2991204d541388d837d1457e56ab', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 11:32:57.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'15b9599cb02b49a62fb4a1a71ccebc18', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:02:50.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'189842bf681338dc99dfa66d366a0e6f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-12 15:55:01.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'189e3428e35e27dfe92ece2848b10ba8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-27 15:52:21.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'18a51a5f04eeaad6530665f6b0883f0c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 14:34:11.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'18b16a451fec0fe7bf491ab348c65e30', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-16 11:55:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'18eafaeec588403245269a41732d1a74', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:45:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'190eb7b4d493eb01b13c5b97916eeb13', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:09:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1912a44dd4a6ffa1636d2dde9c2f1ab7', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-11 11:01:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1a570aac0c30ac2955b59e2dc7a6204c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 20:58:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1a5b71c9458c17f9bcb19a5747fd47dd', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-25 11:56:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1aa593c64062f0137c0691eabac07521', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-14 10:45:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1ab7c74d217152081f4fa59e4a56cc7b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-22 12:03:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1b05434820cbcb038028da9f5cda31bb', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-22 17:45:16.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1bf5c5603b79f749d4ee75965b3698db', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-05-20 14:54:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1d970c0e396ffc869e3a723d51f88b46', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 13:01:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1db82f78233c120c6ec7648ca1177986', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 23:07:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1e4533a02fb9c739a3555fa7be6e7899', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 10:04:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1f0b36f7e021aa5d059ffb0a74ef6de4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 23:11:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1f33d11e1833ae497e3ef65a3f02dd5b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-21 19:51:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'1f8f46118336b2cacf854c1abf8ae144', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-01 11:02:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'202344b08b69ad70754e6adaa777eae0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 22:54:22.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'20751803c1e5b2d758b981ba22f61fcd', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-22 18:11:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'20e5887d0c9c7981159fe91a51961141', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-03 20:12:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'20fc3263762c80ab9268ddd3d4b06500', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:36:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'20fea778f4e1ac5c01b5a5a58e3805be', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 19:01:49.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'210a01dcb34302eaed0d1e95820655d0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 18:30:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'21510ebaa4eca640852420ed6f6cbe01', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-10 11:41:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'217aa2f713b0903e6be699136e374012', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-27 20:07:32.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2186244ae450e83d1487aa01fbeae664', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-29 14:47:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'21910e350c9083e107d39ff4278f51d6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-30 18:14:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'21b8493a05050584d9bb06cfc2a05a6b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-05 17:29:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'21bad1470a40da8336294ca7330f443d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-18 17:35:32.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'21fed0f2d080e04cf0901436721a77a6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-28 21:53:31.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2255d6f5e2a3d0839b8b9cfc67816c5c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-05-20 15:01:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'22735c059b01949a87cb918f5ef3be76', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-14 22:41:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'22ad9f87788506456c774801389d6a01', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 17:20:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'22d8a2fbd53eafb21f6f62ae073c0fc1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-17 22:28:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2312c2693d6b50ca06799fee0ad2554a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 12:11:32.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'23176e4b29c3d2f3abadd99ebeffa347', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 16:37:50.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'233e39d8b7aa90459ebef23587c25448', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-22 17:38:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'23a314588249752842447e4f98783be4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-05-19 18:28:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'25f8b1b345b1c8a070fe81d715540c85', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-23 15:39:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'260bb025d91b59d0135d635ef85eeb82', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-25 11:40:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'26529d5753ceebbd0d774542ec83a43e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-22 20:17:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2659c59136fb1a284ab0642361b10cdd', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-29 18:40:22.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2676be4ffc66f83221fd95e23d494827', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.1.104', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 21:31:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'26975f09c66025d1c8d87a6894a3c262', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 18:29:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'273081678d85acebaa6615973bff31db', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 15:02:50.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2746af3dd0309cdeeff7d27999fbcda1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 12:52:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'279e519d647f1a4e1f85f9b90ab370b9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 17:01:30.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'27d23027dc320175d22391d06f50082f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 15:50:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'27e8812c9a16889f14935eecacf188eb', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-19 18:52:19.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2811e224e4e8d70f2946c815988b9b7c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 12:08:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'286af82485388bfcd3bb9821ff1a4727', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 18:34:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'28dbc8d16f98fb4b1f481462fcaba48b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-14 20:56:57.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'28e8a7ed786eaced3182c70f68c7ea78', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 12:18:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2919d2f18db064978a619707bde4d613', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-02 09:58:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2942a12521ac8e3d441429e6c4b04207', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-04 14:12:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2966ed2bdf67c9f3306b058d13bef301', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-30 21:25:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'29fb5d4297748af3cd1c7f2611b7a2d6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 17:38:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2a383edf5445dc8493f5240144ca72f5', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 12:56:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2ab9cf95ac35fdbb8fe976e13c404c41', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:49:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2b3be3da6ba9d1ee49f378d729d69c50', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 13:24:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2b433e88db411bef115bc9357ba6a78b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.1.105', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-11 12:09:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2b4d33d9be98e1e4cdd408a55f731050', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-19 10:32:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2b5a76869a7d1900487cd220de378dba', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-05 16:32:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2b801129457c05d23653ecaca88f1711', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-03 21:44:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2bca2d6666c1f6630225252c7b31326c', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-05-17 18:30:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2c6822927334eb0810b71465fd9c4945', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 16:02:47.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2c6ede513b83fbc23aaedb89dbfa868a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-15 18:03:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2d5af41d2df82b316ba31fcdf6168d6a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-05-17 14:43:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2de252a92b59ebfbf16860cc563e3865', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-14 22:04:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2e44c368eda5a7f7a23305b61d82cddb', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 18:14:23.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2e63fd1b3b6a6145bc04b2a1df18d2f5', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-30 19:01:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2eb75cb6ca5bc60241e01fa7471c0ccf', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 18:34:04.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2eb964935df6f3a4d2f3af6ac5f2ded1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.1.200', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-11 13:27:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2ebe7f0432f01788d69d39bc6df04a1a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-17 18:05:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'2fecb508d344c5b3a40f471d7b110f14', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-17 17:36:53.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3087ac4988a961fa1ec0b4713615c719', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-01 22:54:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'30da94dd068a5a57f3cece2ca5ac1a25', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-17 18:01:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'30ec2dc50347240f131c1004ee9b3a40', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-11 10:19:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'310bb368795f4985ed4eada030a435a0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-04 23:22:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'317e3ae1b6ccdfb5db6940789e12d300', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-03 21:44:31.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'32464c6f7f772ddda0a963b19ad2fd70', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-23 11:30:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3267222d9387284b864792531b450bfe', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-19 10:33:23.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'326b2df4ab05a8dbb03a0a0087e82a25', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-10 11:53:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'335956cbad23d1974138752199bf1d84', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-10 10:05:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'337b647a4085e48f61c7832e6527517d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 11:45:16.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'34a6b86424857a63159f0e8254e238c2', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 18:22:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3569ada5c43a4022d3d13ac801aff40e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 14:50:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'35fdedc363d9fe514b44095da40f170b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:51:30.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3612f8d40add5a7754ea3d54de0b5f20', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 19:59:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'36358cacfc5eb3ba7e85cfe156218b71', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-25 19:14:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3683743d1936d06f3aaa03d6470e5178', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-30 22:40:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'36fd54ce8bc1ee4aac9e3ea4bfdcd5a8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-29 18:49:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'375aadb2833e57a0d5a2ce0546a65ca4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-07 20:38:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3767186b722b7fefd465e147d3170ad1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-26 21:57:19.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'378b44af9c1042c1438450b11c707fcf', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-18 16:07:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'37ca8ff7098b9d118adb0a586bdc0d13', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:46:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3836dc3f91d072e838092bc8d3143906', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 12:50:32.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'39caf3d5d308001aeb0a18e15ae480b9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 10:31:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3a0330033a8d3b51ffbfb2e0a7db9bba', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:54:27.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3a290289b4b30a1caaac2d03ad3161cd', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 11:58:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3a4a0e27d77aa8b624180e5fd5e4004e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 09:51:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3a76114e431912ff9a19a4b6eb795112', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 12:19:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3b07fda32423a5696b2097e1c23c00d4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 16:04:32.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3ba1e54aa9aa760b59dfe1d1259459bc', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-29 09:44:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3bc73699a9fd3245b87336787422729b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:41:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3d25a4cdd75b9c4c137394ce68e67154', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 09:59:31.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3d9874f248a984608ca98c36c21c5a7a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-24 13:05:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3e2574b7b723fbc9c712b8e200ea0c84', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-10 14:24:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3e6116220fa8d4808175738c6de51b12', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-03 21:04:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3e64011b4bea7cdb76953bfbf57135ce', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-10 23:09:32.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3e69108be63179550afe424330a8a9e4', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-02 18:38:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3ec2023daa4a7d6a542bf28b11acf586', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-18 16:18:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3f47afcdce94596494746ac34eebf13b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-22 13:59:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'3fd0d771bbdd34fae8b48690ddd57799', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-19 17:17:22.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'40209016cadff6b571a8150c6218cfa8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-05-18 11:33:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'404d5fb6cce1001c3553a69089a618c8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-11 12:29:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'406e79995e3340d052d85a74a5d40d1b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 16:23:16.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4084f184160940a96e47d7be1fab4ea3', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:51:11.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'40b3a9bee45b23548250936310b273f4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-30 14:42:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4114145795da30b34545e9e39b7822d9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 14:39:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4218b30015501ee966548c139c14f43f', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-02 10:11:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4234117751af62ac87343cbf8a6f1e0f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 10:17:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4261867172d0fd5c04c993638661ac0b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-23 11:24:47.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'42aef93749cc6222d5debe3fb31ba41b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-30 15:51:04.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'42bf42af90d4df949ad0a6cd1b39805e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.1.200', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-11 17:39:01.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4303dbb3e502f11a3c4078f899bb3070', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-14 17:28:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'43079866b75ee6a031835795bb681e16', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-04 22:44:16.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'432067d777447423f1ce3db11a273f6f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 09:47:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'43536edd8aa99f9b120872e2c768206c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-03 10:53:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'43848099c1e70910ba1572868ee40415', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 11:28:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'445436e800d306ec1d7763c0fe28ad38', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 11:43:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'446724ea6dd41f4a03111c42e00d80cd', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 16:56:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'45819fe1b96af820575a12e9f973014e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-07 09:19:22.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'45f0309632984f5f7c70b3d40dbafe8b', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-02 09:59:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'472c34745b8f86a46efa28f408465a63', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 17:56:31.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'477592ab95cd219a2ccad79de2f69f51', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-05 10:38:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4778fe2992fd5efd65f86cb0e00e338e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 17:53:11.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'47c5a5b799e10255c96ccd65286541ef', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 11:50:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4816854636129e31c2a5f9d38af842ef', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-25 12:45:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'484cdb8db40e3f76ef686552f57d8099', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-28 18:14:49.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'488fc8f3d040fa75c6802898ea88f7d6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-05-20 11:38:38.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'48929ec94226d9ccff9fae4ff48e95e3', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 18:32:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'48e4e10ac7e583050fd85734f0676a7c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 19:58:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'48e5faf2d21ead650422dc2eaf1bb6c5', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 22:08:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'48eac0dd1c11fe8f0cb49f1bd14529c2', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 13:01:31.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4922f2f1173a1edc11dfd11cb2a100ae', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 18:08:27.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4930e32672465979adbc592e116226a6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-28 16:53:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'49d48fda33126595f6936a5d64e47af0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-19 13:17:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'49f1ec54eb16af2001ff6809a089e940', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-17 17:59:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4a0020835a71fc6dcaefd01968d21f81', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-30 18:46:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4aa770f37a7de0039ba0f720c5246486', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-17 17:26:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4ab79469ba556fa890258a532623d1dc', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:54:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4acfbc327681d89dab861c77401f8992', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-28 10:54:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4b1341863a8fffeccda8bbe413bd815f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 15:59:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4ba055970859a6f1afcc01227cb82a2d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-29 09:43:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4d1be4b4991a5c2d4d17d0275e4209cf', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-05 20:47:21.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4d9299e2daac1f49eac0cec75a90c32e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 11:28:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4de1ed55165f7086f1a425a26a2f56ec', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 16:26:27.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4f31f3ebaf5d1a159d2bb11dd9984909', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-15 11:14:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'4f7f587bec68ed5bf9f68b0ccd76d62b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-19 21:01:47.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5034aec34f0b79da510e66008dbf2fcc', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-19 16:18:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'506ce2d73a038b6e491a35a6c74a7343', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-14 13:44:04.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'507b55d3b5ddc487fb40ca1f716a1253', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 15:43:02.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'50e8de3e6b45f8625b8fd5590c9fd834', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-22 18:23:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'515c28df59f07478339b61ca5b1b54a8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-24 10:34:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'51aeabed335ab4e238640a4d17dd51a3', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-12 10:12:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'523a54948d5edaf421566014b66f9465', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 19:50:27.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'52673feae24ea5bc3ca111f19c9a85d4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 15:16:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'528baecc596a66eaadc8887bff911f55', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-19 10:08:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'52e36d72cd04bea2604747e006b038ec', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 19:47:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'52fde989fb8bb78d03fb9c14242f5613', N'1', N'用户名: admin,登录成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-20 17:04:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5323f848cddbb80ba4f0d19c0580eba9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-22 22:58:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5358b182eab53a79eec236a9cee1e0fc', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 13:01:21.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'543970eba4d1c522e3cb597b0fd4ad13', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 22:53:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'54c2bad38dafd9e636ce992aa93b26af', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-07 11:57:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5554869b3475770046602061775e0e57', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-28 14:38:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'557b3c346d9bc8f7a83fac9f5b12dc1b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 12:20:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'55d649432efa7eaecd750b4b6b883f83', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-04 22:44:19.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'55e906361eeabb6ec16d66c7196a06f0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 12:50:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'562092eb81561ee0f63be5dd9367d298', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 22:20:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'57264fff74c4f857bddf5d766951f3c9', N'2', N'添加测试DEMO', NULL, N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, N'[{"createBy":"admin","createTime":1558262155067,"id":"dcb45a2fc661e5cdc341b806e5914873","name":"111","sysOrgCode":"A01"}]', NULL, N'5', N'admin', N'2019-05-19 18:35:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'580256f7c7ea658786dba919009451b6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 17:39:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'583d3aa445d408f4ecd19ee0a85514af', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:18:04.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5858f2f8436460a94a517904c0bfcacb', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-22 23:42:21.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'586002e1fb4e60902735070bab48afe3', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-27 16:18:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'586e8244eff6d6761077ef15ab9a82d9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-18 23:03:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5902fb4ba61ccf7ff4d2dd97072b7e5b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:48:30.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'59558082e1b1d754fa3def125ed4db3c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-28 18:24:19.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5bca377b50c362009738d612cac82006', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-05-20 14:54:38.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5c04e3d9429e3bcff4d55f6205c4aa83', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-30 18:14:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5c35117cbeb39428fcc2ddd90ce96a2b', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 17:18:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5c48703e3a2d4f81ee5227f0e2245990', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-04 23:12:04.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5c675eeb69795180eee2c1069efc114b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-15 12:59:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5c7e834e089ef86555d8c2627b1b29b5', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 11:25:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5cf2431447eab30fd3623e831033eea0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-12 19:17:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5d8ed15778aa7d99224ee62c606589fb', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-30 15:51:02.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5dee273feb8dd12989b40c2c92ce8c4a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-15 13:42:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5e8bac7831de49146d568c9a8477ddad', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:16:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5ea258e1f478d27e0879e2f4bcb89ecd', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 14:01:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5ee6d5fe1e6adcc4ad441b230fae802d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-11 15:56:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5f00b5514a11cd2fe240c131e9ddd136', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-22 16:30:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5f0a5e85efbe9c79645ffc0c15fcee1a', N'2', N'添加测试DEMO', NULL, N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, N'[{"createBy":"admin","createTime":1558261833637,"id":"94f78b1c9753dfb1202d731f540666e1","keyWord":"1","name":"1","sysOrgCode":"A01"}]', NULL, N'30', N'admin', N'2019-05-19 18:30:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'5f314fc45492d7f90b74d1ca74d1d392', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-22 17:45:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'606cb4f81f9bb412e2b2bdaa0f3e5dda', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 16:27:23.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'60886d5de8a18935824faf8b0bed489e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 10:11:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'60a975067f02cf05e74fa7b71e8e862a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-31 14:31:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'60d4f59974170c67826e64480533d793', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-12 13:25:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'611fa74c70bd5a7a8af376464a2133e8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-27 17:48:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'61445cc950f5d04d91339089b18edef9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 14:13:22.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'615625178b01fc20c60184cd28e64a70', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 09:47:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'61aac4cfe67ec6437cd901f95fbd6f45', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-17 17:40:21.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'61d2d2fd3e9e23f67c23b893a1ae1e72', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-18 22:44:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'623e4bc7c098f368abcc368227235caf', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-01 09:48:57.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'62d197757e2cb40f9e8cb57fa6a207f7', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 10:54:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'62e208389a400e37250cfa51c204bdc8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-17 17:44:49.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'636309eec5e750bc94ce06fb98526fb2', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-30 18:15:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'636d37d423199e15b4030f35c60859fe', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-08 10:07:21.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'63c998d68b4d0d1529d86b4c0628e072', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-07-05 14:45:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'63ccf8dda5d9bf825ecdbfb9ff9f456c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.1.105', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-11 12:14:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'642e48f2e5ac8fe64f1bfacf4d234dc8', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-25 12:51:21.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'64711edfb8c4eb24517d86baca005c96', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:41:11.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'64c00f27ddc93fda22f91b38d2b828b5', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-18 17:34:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'65771bce3f5786dfb4d84570df61a47a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-01 22:07:57.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'65ace1ae98891f48ab4121d9258e4f1e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-12 10:45:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'65be8e015c9f2c493bd0a4e405dd8221', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 11:40:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'661c4792f00b0814e486c3d623d7259f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 18:06:11.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'66493cd0347eeb6ee2ef5ee923604683', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 18:29:47.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6664dc299f547f6702f93e2358810cc1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.3.22', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-05 21:04:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'67181c36b55b06047a16a031fd1262c1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-05-17 13:55:22.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'671a44fd91bf267549d407e0c2a680ee', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-18 22:45:16.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'672b527c49dc349689288ebf2c43ed4d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-10 11:26:47.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6737424e01b38f2273e9728bf39f3e37', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-22 19:43:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'675153568c479d8b7c6fe63327066c9f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-28 15:29:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'679e12ba247575749e03aa8f67347ac6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 17:14:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'680b3e6e4768d80d6ea0ce8ba71bdd0e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 09:14:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6836a652dc96246c028577e510695c6f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-15 20:47:02.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'687810e7fea7e480962c58db515a5e1c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 18:42:30.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'689b8f2110f99c52e18268cbaf05bbb6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 09:58:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'68df65639e82cc6a889282fbef53afbb', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-08 15:01:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'68e90e08a866de748e9901e923406959', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-04 12:37:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'68f7394ca53c59438b2b41e7bb9f3094', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-28 14:09:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'69a7a5b960d6aedda5c4bd8b877be0a8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:50:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'69a9dfb2fb02e4537b86c9c5c05184ae', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.1.104', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-11 15:22:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'69baa4f883fe881f401ea063ddfd0079', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-12 20:51:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'69e3164d007be2b9834e4fb398186f39', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 23:38:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'69e6fd7891d4b42b0cccdc0874a43752', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:45:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'69ea2322f72b41bcdc7f235889132703', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 10:54:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'69fc2407b46abad64fa44482c0dca59f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-01 12:04:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6a4231540c73ad67128d5a24e6a877ff', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 12:54:30.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6a67bf2ff924548dee04aa97e1d64d38', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:52:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6b4cdd499885ccba43b40f10abf64a78', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-01 13:04:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6b876be6e384337b36ad28a4a5868be8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 21:22:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6baccd034e970c6f109791cff43bc327', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:46:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6bc98b7dc91a3924f794202867367aca', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 22:50:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6c558d70dc5794f9f473d8826485727a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 18:38:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6c99cfe2774c15ad030b83723f81d70d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-05-20 14:07:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6cbd2a9257fae1cb7ff7bc2eb264b3ab', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 19:08:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6cf638853ef5384bf81ed84572a6445d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 19:25:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6cfeaf6a6be5bb993b9578667999c354', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-24 11:43:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6d45672f99bbfd01d6385153e9c3ad91', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 13:49:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6d93d5667245ef8e5d6eafdbc9113f51', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 14:34:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6ee846271a3d4b9e576b5a0749c49d12', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-08-23 20:02:16.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'6fb7db45b11bc22347b234fda07700c8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 12:00:22.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'703fbcb7e198e8e64978ec0518971420', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 17:53:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'70849167f54fd50d8906647176d90fdf', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-04 23:12:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'709b0f2bf8cb8f785f883509e54ace28', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 14:37:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7126b35521cd0dba932e6f04b0dac88f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:52:22.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7148b3d58f121ef04bcbea5dd2e5fe3b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 14:35:23.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'716f9f5f066a6f75a58b7b05f2f7f861', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 11:59:01.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7225200c3cec4789af4f1da2c46b129d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 17:19:23.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7268539fbe77c5cc572fb46d71d838f1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-03 13:22:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7285730e2644f49def0937dc99bfbe3d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 18:07:01.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7289cf420ac87ea0538bde81435b1aaa', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 16:03:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'72ee87d0637fb3365fdff9ccbf286c4a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-18 17:36:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7313b43ff53015d79a58b4dc7c660721', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 15:03:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'732a1015057fde25d81ee12a7fbf66b2', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-01 10:05:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7351132f4f5f65e5bf157dd7ad5344a4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 15:51:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7374f3a2ccb20216cf8eecb26037ce0a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 18:08:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'74209dfc97285eb7919868545fc2c649', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-19 11:23:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'74c991568d8bcb2049a0dbff53f72875', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-23 22:12:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'75c7fa1a7d3639be1b112e263561e43a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-14 17:07:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'76bea561f662ec0ccf05bc370f1ffe35', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 11:08:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'772f238d46531a75fff31bae5841057c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 11:31:16.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'77579d78a903635cc4942882f568e9e5', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 17:13:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'775e987a2ca37edc4f21e022b265a84a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-12 13:36:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'776c2e546c9ab0375d97590b048b8a9d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 14:13:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'77a329e5eb85754075165b06b7d877fd', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-01 13:25:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'78caf9e97aedfb8c7feef0fc8fdb4fb5', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-10 17:04:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'78f519b618f82a39adad391fbf6b9c7a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 13:49:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'790b722fa99a8f3a0bc38f61e13c1cf4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-03 18:34:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'79a1737fcc199c8262f344e48afb000d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-23 23:25:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'79e76353faffd0beb0544c0aede8564f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-08 17:28:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7a511b225189342b778647db3db385cd', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 20:50:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7a99cf653439ca82ac3b0d189ddaad4a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-04 10:41:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7a9d307d22fb2301d6a9396094afc82f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-14 18:45:04.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7ae9cad197aee3d50e93bc3a242d68ec', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-10 13:12:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7b2b322a47e1ce131d71c50b46d7d29e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-06 15:55:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7b44138c1b80b67da13b89db756a22b0', N'2', N'添加测试DEMO', NULL, NULL, NULL, N'127.0.0.1', N'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, N'[{"createBy":"jeecg-boot","createTime":1553824172062,"id":"5fce01cb7f0457746c97d8ca05628f81","name":"1212"}]', NULL, N'25', N'jeecg-boot', N'2019-03-29 09:49:32.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7b85fba62bc001773fff1a54e1609aef', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 16:28:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7ba3df5d2612ac3dd724e07a55411386', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 14:35:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7bc7b1ff923dbb19fb0ecd800cd690bd', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-18 09:34:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7c310b99a84411798a2aaf4074a28e7e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 12:42:57.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7c88e9cf6018a1b97b420b8cb6122815', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-28 19:46:30.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7ce1934fb542a406e92867aec5b7254d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-11 14:53:23.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7d11535270734de80bd52ec0daa4fc1f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.1.105', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-01 12:20:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7d8539ff876aad698fba235a1c467fb8', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-02 09:47:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7da063020a42db99e0f3bb9500498828', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-11 13:45:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7dc448f04edf4b9655362ad1a1c58753', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 23:10:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7dc498b45fbf25c59686d9dda0d3eb66', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:12:38.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7e2edea80050d2e46aa2e8faef8e29ce', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:01:38.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7e41208e29d412d586fc39375628b0d0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-21 15:34:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7e92abdc0c1f54596df499a5a2d11683', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:59:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7f31435ca2f5a4ef998a4152b2433dec', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-01 18:36:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7f9c3d539030049a39756208670be394', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 11:44:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'7feae2fb5001ca0095c05a8b08270317', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 12:17:31.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'802cec0efbe9d862b7cea29fefc5448b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-23 18:58:50.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'810deb9fd39fa2f0a8e30e3db42f7c2b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 18:51:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8143ce0b35bfe6e7b8113e1ecc066acd', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-05-17 14:48:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'81c9056ac38e6f881d60f3d41df1845e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-17 11:44:47.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'81c95e1c8805fa191753fc99ba54c3e9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 18:01:21.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'81f7a606359aff9f97f95c15ce8e7c69', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-11 11:33:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'82cee1c403025fc1db514c60fc7d8d29', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-22 16:41:50.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8300e85a2c2f16c2358d31e8b364edf7', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-24 11:55:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8317a81bce60a10afeb44af6ef6c807a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 11:27:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8327cced60486bad4009276e14403502', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-24 09:56:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8447099784da63b3b2cd2fbbc5eabcea', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 16:04:49.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'845f732f6a0f0d575debc4103e92bea2', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-02 10:17:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'85949de2d54078e6b8f3df0a3c79c43d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 17:08:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'85b3106d757d136b48172a9ab1f35bb6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-01 18:34:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'862aa0e6e101a794715174eef96f7847', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:41:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'873f425879ef9ca7ced982acda19ea58', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-22 16:35:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8742a458bf166fd5f134ac65fa8903f9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-24 13:09:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'87885bc889d23c7c208614da8e021fb0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-07 10:23:22.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8802209912ca66d56f2ea241ffd0cc13', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 17:52:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'88bab180edf685549c7344ec8db7d954', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-19 19:07:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'88bfc5b77b4be0d6d0f7c8661cf24853', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 10:25:53.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'88d7136ed5c7630057451816dbaff183', N'1', N'用户名: jeecg,退出成功！', NULL, N'jeecg', N'jeecg', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-03-25 13:01:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'88d8b4b50bdab58c52fe25fa711fbbef', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 21:21:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'89bfd8b9d6fa57a8e7017a2345ec1534', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-12 09:27:32.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'89d2bc84e056f327291c53821d421034', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-08 16:57:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'89fbc93e77defb34c609c84a7fe83039', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-02 09:47:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8a13971104d70e35111d10dd99de392e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 14:34:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8ab131214232450ca202103ef81f0a2d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 15:46:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8b2ad448021fbb5509ea04c9a780b165', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.1.104', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-11 14:35:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8b66ec251e3107765768dbd0590eeb29', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-28 14:25:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8d105ea6c89691bc8ee7d4fd568aa690', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 11:39:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8d9ce65020320d46882be43b22b12a62', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-23 10:56:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8e03def9e0283005161d062d4c0a5a80', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:46:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8ec3a287a37d155047e80a80769d5226', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 18:37:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8f616500d666a5a67bc98e7ccd73c2e2', N'2', N'添加测试DEMO', NULL, N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, N'[{"createBy":"admin","createTime":1547912194199,"id":"ffa9da1ad40632dfcabac51d766865bd","name":"秦999"}]', NULL, N'386', N'admin', N'2019-01-19 23:36:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8fde5f89e8ad30cf3811b8683a9a77b1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-17 18:02:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8fe913a5b037943c6667ee4908f88bea', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-16 11:18:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'8ff27392165c8c707ee10ec0010c7bb8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 11:44:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'90555a39c0b02180df74752e4d33f253', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-27 18:26:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'905d2cf4308f70a3a2121a3476e38ed0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 14:00:30.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'90711ddb861e28bd8774631c98f3edb9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 11:57:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'90b4bad7939233a1e0d7935f079ea0fa', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-25 12:45:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9174fe77fe8ba69243f72d5577b391d3', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:48:38.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'917dbb5db85d1a6f142135827e259bbf', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-18 20:21:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'92e514fee917a1a459c4ffdb0ca42516', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 10:20:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'939b3ff4733247a47efe1352157b1f27', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 19:01:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'93b4d26f60d7fb45a60524760bf053e4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-01 22:20:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'93bb98ba996dacebfb4f61503067352e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-04 22:47:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9410b7974fbc9df415867095b210e572', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-16 11:18:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'94fe4465d779e0438cfe6f0cb1a1aa7e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 22:57:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'95063e0bdfa5c9817cc0f66e96baad93', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-17 17:59:16.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'952947331f8f3379494c4742be797fc3', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 18:42:11.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'954f1ccb8b230d2d7d4858eec3aba0a4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 17:08:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'95d906e6f048c3e71ddbcc0c9448cf49', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-26 19:23:30.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'961992e05772bc7ad2ca927cf7649440', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 15:55:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'965c74ffe09d8a06bb817efa6d62254b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-23 10:01:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'968d434c45aae64c9ad0e86d18238065', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-01 10:02:22.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'96ada57ac17c4477f4e4c8d596d4cc1a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-28 10:54:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'96d7fe922f46123e0497e22dedf89328', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-07 23:10:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'98b7fc431e4654f403e27ec9af845c7b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-11 17:31:38.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'98d4b573769af6d9c10cd5c509bfb7af', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-16 11:21:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'993010965223b8e3a7a784409f7e377e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-30 15:50:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'99357d793f2507cfb7b270677b4fe56c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:46:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'994efef0ebca19292e14a39b385b0e21', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-15 16:22:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'997bb4cb1ad24439b6f7656222af0710', N'2', N'添加测试DEMO', NULL, NULL, NULL, N'127.0.0.1', N'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, N'[{"createBy":"jeecg-boot","createTime":1553824768819,"id":"ee84471f0dff5ae88c45e852bfa0280f","keyWord":"22","name":"222"}]', NULL, N'5', N'jeecg-boot', N'2019-03-29 09:59:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9a1456ef58a2b1fb63cdc54b723f2539', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-28 17:26:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9a5c1fbf3543880af6461182e24b75db', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-15 13:51:27.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9acebd2d37c9078f9568125fb9696976', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 16:07:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9b23981621d5265a55681883ec19fa91', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:46:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9b568a868e57f24c5ba146848061613f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.1.104', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 20:09:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9b7a830914668881335da1b0ce2274b1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-01 17:19:02.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9bd6e11c5a2f0bb70215cfa097a4b29c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:57:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9be945480d69038865279f02df5cee45', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:49:47.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9bfe7312f2951503082a28c2cc966ce4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 10:24:02.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9c32ec437d8f8d407b1bd1165fc0305d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-08 15:01:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9c64406daa2b6e7ad1f6776789d61e43', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-11 10:56:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9cea908c7a78dc77fdaed975819983bd', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:20:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9d0416e09fae7aeeeefc8511a61650c2', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-30 18:15:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9db7e7d214dbe9fe8fff5ff20634e282', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-19 11:19:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9df97c1b3213aa64eda81c6bf818b02b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-04 22:42:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9e1da5d8758f2681543971ee43ee14e2', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-08-23 22:43:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9e9d01c430b72703ce3a94589be54bbe', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 18:26:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9eb3fb6d9d45e3847a88f65ed47da935', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'192.168.3.22', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-05 20:52:47.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9ed114408a130e69c0de4c91b2d6bf7e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-11 13:03:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9ef3f1ed07003e3abec3445920b062f1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-23 11:17:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9f2db1ffaf89518a25cc6701da0c5858', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 17:05:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9f31eedbe3f3c5c431b490d5fec0094c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-01 09:56:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'9f4960f89a10d7fdcf22d1ea46143fff', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:51:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a052befb699ee69b3197b139fd9263f0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-15 17:34:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a1b870eee811cfa4960f577b667b0973', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-01 18:23:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a22ddd4b5b0b84bd7794edd24b25fc64', N'2', N'添加测试DEMO', NULL, N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, N'[{"createBy":"admin","createTime":1547883299809,"email":"zhangdaiscott@163.com","id":"7eac655877842eb39dc2f0469f3964ec","name":"zhang daihao"}]', NULL, N'25', N'admin', N'2019-01-19 15:34:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a28de45f52c027a3348a557efab6f430', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-19 10:34:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a2950ae3b86f786a6a6c1ce996823b53', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-02 09:47:11.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a2e0435673b17f4fb848eecdf8ecacd6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-22 21:32:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a34ed4c6fef2b9f07a20e54ef4501b99', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-15 10:48:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a35a476c303983701045507c9af3fa03', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 18:44:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a42e5cd05566ea226c2e2fc201860f2c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-30 11:15:50.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a521d9f2a0087daa37923fa704dea85b', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-25 12:45:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a56661bbc72b8586778513c71f4764f5', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:53:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a5848ab4e8d0fb6ecf71ee1d99165468', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-23 22:14:50.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a5daa58b078cb8b3653af869aeecebd0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-29 17:14:31.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a61d9db83888d42b0d24621de48a880d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-05 22:49:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a6209166e1e9b224cca09de1e9ea1ed7', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:41:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a6261bbbf8e964324935722ea1384a5d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-28 19:46:27.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a63147887c6ca54ce31f6c9e6279a714', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 09:19:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a68160f37cace166fedd299c4ca0be10', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 15:40:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a6971e63e3d9158020e0186cda81467d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 14:59:23.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a69f4ff4e48754de96ae6fa4fabc1579', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 09:18:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a6c3b28530416dace21371abe8cae00b', N'2', N'删除测试DEMO', NULL, NULL, NULL, N'127.0.0.1', N'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, N'["ee84471f0dff5ae88c45e852bfa0280f"]', NULL, N'9', N'jeecg-boot', N'2019-03-29 09:59:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a6e323785535592ee208aa7e53554644', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 09:15:27.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a710ed2de7e31fd72b1efb1b54ba5a87', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-03 15:30:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a77d29673cfe97c9e03cfb879b934f62', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-22 12:41:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a7d1f4a774eb8644e2b1d37ca5f93641', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-08 10:16:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a7ee4b4c236bc0e8f56db5fdf1e5ac38', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 13:21:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a83e37b55a07fe48272b0005a193dee6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-11 09:17:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a867c282a8d97f7758235f881804bb48', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-13 18:28:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a8c7ba2d11315b171940def2cbeb0e8f', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-25 13:01:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a95192071de908f37f4998af4c269bcb', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 14:26:53.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a9b34565c6460dc9cede00ad150393f9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-28 14:17:53.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'a9bd713f975bfbff87638432a104b715', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.1.104', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 20:04:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'aa47c8cf2a4f2de16f415b9d9d3dbf05', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-30 16:14:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'aa49341b29865b45588ad2f9b89c47ea', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-11 19:42:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'aaf10eab9c2b6ed6af1d7a9ce844d146', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 13:08:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ab1d707bbfdf44aa17307d30ca872403', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-30 15:50:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ab550d09101a88bc999ea57cbb05aa5a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-07 17:59:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ab8a71b7565d356d12e12c6730b0ceb0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:51:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ac8cf22c2f10a38c7a631fc590551c40', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-01 12:04:16.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ad97829fe7fefcd38c80d1eb1328e40f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 09:28:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'add13f513772a63f8ca8bf85634bb72c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 13:09:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ae61be664d2f30d4f2248347c5998a45', N'1', N'用户名: jeecg,退出成功！', NULL, N'jeecg', N'jeecg', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-03-25 12:53:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'aeb738ab880c262772453d35fc98f2f2', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-07 18:50:30.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'aec0817ecc0063bde76c1f6b6889d117', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:47:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'aeca30df24ce26f008a7e2101f7c513c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 12:27:53.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'af5869701738a6f4c2c58fe8dfe02726', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-22 16:42:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'af8fe96a9f0b325e4833fc0d9c4721bf', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-30 18:14:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b01c3f89bcfd263de7cb1a9b0210a7af', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-03 17:53:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b096a9e76395f1a52d8c260c4eb811fd', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-08-23 18:51:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b09ccd219a1ce5c7270bb659748b8330', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 15:34:38.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b0cebd174565a88bb850a2475ce14625', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-22 18:19:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b0d11dfec52e02f504c63e2f8224b00d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-25 19:27:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b0e6b3a0ec5d8c73166fb8129d21a834', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-09 16:56:16.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b1e9797721dbfcc51bbe7182142cbdcd', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-25 12:52:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b20ff98a10af3c25c1991741fd59ea64', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 16:07:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b23293288a84ba965509f466ed0e7e2f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 12:43:11.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b26369680b41d581649cf865e88331e9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 15:03:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b3127e34f395e1f1790450da5689a4a1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 16:28:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b3474fc5aad9ec2f36ccbbf7bf864a69', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-25 11:17:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b38f42f4e15ee72e494bdf6f6feb0ae7', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:49:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b3adf055f54878657611ef430f85803e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 11:33:57.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b3cceb535fa5577cc21b12502535ad29', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 14:29:01.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b428718441be738cf8b5ce92109068c3', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-08 16:21:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b4c3c7af9899b9af3f42f730cfabc9b2', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 12:17:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b4ccdfc1280e73439eb1ad183076675b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 14:10:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b53c9e8ce1e129a09a3cda8c01fe644c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 11:38:49.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b55cc05e8dd4279c0fa145833db19ba8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-15 11:37:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b5df1807f08af5db640da11affec24d3', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 12:49:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b5f6636c6e24e559ddf1feb3e1a77fd5', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 12:14:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b605a83a9b5f3cdaaa1b3f4f41a5f12d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 17:04:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b6ee157afd006ceddc8c7558c251192e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-11 14:20:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b7085f003b4336af4d4ba18147f8e5ae', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 22:29:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b7478d917ab6f663e03d458f0bb022a3', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:50:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b7f33b5a514045878447fc64636ac3e6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-23 22:00:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b86958d773b2c2bd79baa2e8c3c84050', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-15 16:49:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b8bd2a9de3fb917dfb6b435e58389901', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-23 20:13:31.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b945fe8b63e0fc26d02c85466f36ebd9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-01 09:57:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b954f7c34dfbe9f6a1fc12244e0a7d59', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:41:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b972484d206b36420efac466fae1c53f', N'1', N'用户名: jeecg,退出成功！', NULL, N'jeecg', N'jeecg', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-03-25 12:54:38.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b98b7ac9e890657aa86a900763afbe2a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 11:49:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b99f5b6975350d86db4c5dd91de9f608', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-08-23 23:40:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b99fc7c53d4e3edc0c618edc11d3a073', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-22 15:58:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'b9bf472a12fc25a9d4b500421b08b025', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 10:53:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'baa53d6a534e669f6150ea47565fa5b9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-09 17:27:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'baaf37e5937f938ac92856bc74cc2b86', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-22 13:48:53.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'bbd3e1f27e025502a67cf54945b0b269', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-31 22:13:16.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'bbe2e637bafa0d7f465dc9e1266cff3d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-25 11:16:50.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'bbf4fb593d6918cc767bb50c9b6c16c5', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-14 10:44:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'bc28d4275c7c7fcd067e1aef40ec1dd4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-03 10:53:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'bc594b8921a0bcdb26d4a93916316092', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 14:42:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'bd6d7d720b9dd803f8ad26e2d40870f3', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-10 11:04:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'bd9167a87aee4574a30d67825acaad0a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-17 17:51:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'bdeae62057ae9858b6a546c1bdb6efc7', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 11:49:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'bdfd95b4d4c271d7d8d38f89f4a55da9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-17 17:59:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'beb9ef68b586f05bd7cf43058e01ad4a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-17 22:29:02.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'befbcf5a27ef8d2ca8e6234077f9413d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-18 16:01:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'bfa0766f53dbd3a0fe4043f57bd9bbee', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:35:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'bfe758860662ae07a15598396a12cfaa', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:50:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'bfec8c8c88868391041667d924e3af7f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-28 14:38:27.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c03985d6e038b5d8ebdeec27fce249ba', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:43:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c12e3d7655a5a8b192bb9964a2a66946', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 22:35:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c1842fc83cdf0b0cc0264bf093e9c55d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 21:56:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c18db091677ec01d55e913662b9028a9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 21:19:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c1a68605bee6b3d1264390c1cfe7a9fa', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 20:49:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c21422fa08f8480a53367fda7ddddf12', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-02 10:02:30.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c2bfe3b92e6bfb7016cc82e95419a602', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:54:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c33b4e0bbf998330e44fad65e9d0029e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-12 15:54:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c434dc5172dc993ee7cd96187ca58653', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-28 19:46:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c5954beca75d6a0c014e2de3b621275a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-14 22:41:31.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c5d4597b38275dcb890c6568a7c113f2', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-24 12:18:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c5e541648bab341230c93377b4d4e262', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 16:05:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c665d704539483630cc9ed5715ed57a8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:10:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c66e22782dd3916d1361c76b0cc4ec8a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 22:44:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c6c0316b6989bf1eea0a3803f593bf69', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 15:47:19.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c6cbe54fcb194d025a081e5f91a7e3f0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-22 10:26:38.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c72bb25acd132303788699834ae039b4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 12:06:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c7384ed6a6b09ff6704a6b1c1e378cee', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-07-05 14:45:30.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c7b6156c4f42b70c562b507766f4546c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 15:14:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c98a6367b152cf5311d0eec98fab390c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-01 22:13:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'c9be887c9292153e39861c91243b7432', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-30 15:12:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ca737885d9034f71f70c4ae7986fafa8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-04 22:47:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'caee69e55ec929f7ba904280cac971e6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 11:49:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'cb6b52fbbdd4c5698c17edaf9960e11e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 21:22:23.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'cb7c6178101ef049d3f1820ee41df539', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-28 19:59:19.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'cbd720f20fc090c7350a98be0738816a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.1.104', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 20:55:19.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'cbf83d11486a8d57814ae38c9822b022', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:05:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'cc39057ae0a8a996fb0b3a8ad5b8f341', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 10:20:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'cc7fa5567e7833a3475b29b7441a2976', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 14:21:31.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'cc8ab347f332c55570830c5fc39bbf9f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-24 13:08:38.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ccad29843623a6c3ca59548b1d533b15', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 10:56:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'cd064a2f6cb6c640cb97a74aaa6041d7', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:17:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'cd5af66a87bb40026c72a748155b47e8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:47:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'cd7a7c49e02ca9613b6879fda4e563cf', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 12:29:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ce6aa822166b97a78b0bbea62366f8e0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-03 20:14:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ce9893f4d0dd163e900fcd537f2c292d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 11:55:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'cedf399271592c27dcb6f6ce3312e77d', N'2', N'删除测试DEMO', NULL, N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, N'["7501"]', NULL, N'24', N'admin', N'2019-03-06 16:03:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'cf590576a5f6a42b347e6b5bf5ebf5bd', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 12:43:31.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'cfba34db2d7fbb15a2971212f09b59ec', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 11:51:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd00964eee24c6f9a8609a42eeebef957', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-10 17:04:48.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd01d658731dac4b580a879d986b03456', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-07 15:00:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd03aaee882d13b796db860cb95f27724', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 22:59:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd0ce9bfc790a573d48d49d3bbbf1a1cb', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-23 22:09:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd1111594fef195980370c5f91ccf9212', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:48:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd1746c5c937fcb650bd835ff74dabdff', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 18:06:32.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd18bff297a5c2fa54d708f25a7d790d6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 12:13:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd19b6e77ab1b6d6aa58996a93918754c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-11 11:33:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd1eb2a8ebed28d34199c5fc4a1579c4c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 12:55:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd23e6766cecf911fb2e593eeee354e18', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 18:42:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd2910961a0ff046cc3ef6cf8d33a8094', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 15:38:47.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd29cf7aae44523bf2f3d187e91356fe8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-23 12:20:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd2ac19a709ea08f7259286df28efd635', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 18:35:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd2b516c5d834bd0fca91cda416fe499e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:46:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd2fe98d661f1651b639bf74499f124db', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-29 10:16:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd3b54be0510db6a6da27bf30becb5335', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-11 19:42:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd3c4f120d8a23b62ec9e24b431a58496', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-07 14:17:24.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd3df1a4057b6d7fb4dab073a727ba21f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 23:14:02.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd3f08843a9b2b3284711e376fb785beb', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 10:58:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd4ef00700436645680657f72445d38db', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-11 18:05:29.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd5b9e5d9bfbbd8e6d651087ead76d9f7', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 20:17:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd68957c067fb27e80a23babebdb1591f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 17:55:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd6aaf0f8e2428bf3c957becbf4bcedb4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:38:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd70329497664391dabc25effe7406c50', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:25:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd70c2847d8d0936a2a761f745a84aa48', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 16:39:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd762a1cba3dc23068f352323d98909e0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 22:26:49.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd7902eeab2c34611fad046a79bff1c1b', N'2', N'添加测试DEMO', NULL, N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, N'[{"createBy":"admin","createTime":1547883544104,"email":"zhangdaiscott@163.com","id":"4436302a0de50bb83025286bc414d6a9","name":"zhang daihao"}]', NULL, N'1682', N'admin', N'2019-01-19 15:39:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd7e7cb4c21372e48b8e0ec7e679466e3', N'1', N'用户名: null,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:02:34.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd7e8a7f14967c70d68f5569cb4d11d0a', N'2', N'删除测试DEMO', NULL, NULL, NULL, N'127.0.0.1', N'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, N'["5fce01cb7f0457746c97d8ca05628f81"]', NULL, N'9', N'jeecg-boot', N'2019-03-29 09:49:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd82b170459d99fc05eb8aa1774e1a1c9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-26 18:45:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd869534109332e770c70fad65ef37998', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 10:02:30.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd8c43edd685431ab3ef7b867efc29214', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-18 17:37:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd8eed69045aae6cedbff402b4e35f495', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 18:22:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd8fd478e6ceb03a575719e1a54342333', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 18:43:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd916bd1d956418e569549ee1c7220576', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-18 19:18:42.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd92d9e003666c6b020f079eaee721f9f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-28 12:08:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd98115c02c0ac478a16d6c35de35053d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 12:50:09.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd9a0bb9fe6d2c675aa84f9441c0bd8bb', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-11 10:56:23.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'd9e0150666b69cced93eb4defb19788b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 23:11:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'da3fda67aea2e565574ec2bcfab5b750', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-08 22:36:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'da7d2236f6f9e0f61897e5ea9b968d4d', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-08-23 20:02:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'da9a15efcf4e1e4f24647db7e2143238', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 11:19:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'dabdcb8e15ea9215a1af22f7567ff73d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 16:48:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'dae0658783324c81fa6909b6e4a25a65', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-22 11:46:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'db2b518e7086a0561f936d327a0ab522', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-18 22:39:23.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'db8adca4aa7972fdc283be96d877efe0', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 16:04:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'db8c89112bf4706fb558664dd741aa46', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-15 09:33:23.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'dbbcfb7f59311637a613ec9a6c63f04a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 10:53:57.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'dcec1957987abbe6658f1f2c96980366', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 15:05:21.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'dcfe23b155d5c6fa9a302c063b19451e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-23 18:47:21.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'dd4e1ab492e59719173d8ae0f5dbc9a2', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-11 19:47:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'dd6fbb9b6224c927c0923c16b9285525', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-12 13:37:01.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'dd9b2cfffb798a22d90dada4fdbbbc61', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-08-23 23:39:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'de37620b6921abcfe642606a0358d30f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-09 15:42:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'de938485a45097d1bf3fa311d0216ed4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-02 10:15:22.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'de978382f59685babf3684d1c090d136', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-14 12:55:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'dee4d42c439b51b228ab5db5d0723fc0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 20:02:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'dfacaa7c01ccf0bade680044cced3f11', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-04 15:25:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e01ed1516e8ae3a2180acbd4e4508fa5', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-23 20:28:12.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e088a2607864d3e6aadf239874d51756', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-26 18:46:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e09bb0a74c268a9aaf1f94edcc2eb65a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-08 18:26:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e0da357be27d66de1c9e9b8ecb22f9f9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:51:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e14cd21cf5eaad9ea3689730a824a50c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-12 16:12:32.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e169938510c9320cb1495ddb9aabb9d1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:47:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e1d0b1fd3be59e465b740e32346e85b0', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-02 10:16:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e1d1fc464cf48ec26b7412585bdded1a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:49:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e1fa52ecbcc0970622cc5a0c06de9317', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-03 18:33:04.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e232f89df26cc9e5eced10476c4e4a2b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-10 10:05:11.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e234abc35a52f0dd2512b0ce2ea0e4f2', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-11 20:05:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e261674e2640fe6d0a3cd86df631537d', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 16:05:51.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e2af7674bb716a7c0b703c7c7e20b906', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-12 11:38:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e2b6d0e751f130d35c0c3b8c6bd2a77e', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-27 16:18:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e2f703771f64b1bcd709204669ae3d93', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-05-17 14:48:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e3031f999984909f9048d8ec15543ad0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-23 18:43:02.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e37cce529d0c98c47b4977d7ddf963c0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 18:17:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e39f051ba6fdb7447f975421f3b090a7', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-05 12:49:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e3b531fa12e47ac19a2ab0c883dee595', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 10:40:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e40823376fa8c0e74a4e760de695e824', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-30 15:36:38.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e42a38382fce916909d6d09f66147006', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-28 14:28:44.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e48a6bd82c92a8005c80c5ef36746117', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 19:32:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e4a166fcd0fc4037cb26e35cc1fb87b2', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 18:32:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e4afd66ac249dde9c3bd9da50f9c2469', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-19 17:41:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e4c06405615399d6b1ebea45c8112b4d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 12:07:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e4c330b381e2fbfde49f1d4dd43e68b7', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-14 22:22:01.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e4e40e21437b23b74324e0402cceb71a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-28 11:34:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e540ca989819c54baefffbc3d05e8b58', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-19 10:10:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e5a9b045449136719d4c19c429c2dd56', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 13:08:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e713a89e753cbecf1e10247b2112c3f8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 23:14:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e720278084b0d4316448ec59d4e3399d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-25 15:52:45.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e78f8832d61c1603c17767ee2b78ef07', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-01 19:50:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e7f2b0a7493e7858c5db1f1595fa54b1', N'2', N'添加测试DEMO', NULL, NULL, NULL, N'127.0.0.1', N'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, N'[{"createBy":"jeecg-boot","createTime":1553824376817,"id":"e771211b77cd3b326d3e61edfd9a5a19","keyWord":"222","name":"222"}]', NULL, N'7', N'jeecg-boot', N'2019-03-29 09:52:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e864c0007983211026d6987bd0cd4dc8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.1.114', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-11 13:37:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e8b37ad67ef15925352a4ac3342cef07', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:38:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e8cde8dcd6253b249d67a05aaf10f968', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-22 12:30:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e92544c6102243e7908e0cbb217f5198', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 12:48:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e93f1a170e3cd33f90dd132540c7a39b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:12:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e9a31bfc128b3f5ae01656916c605ddb', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:44:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e9ce2b3f7ac1fa3f5f7fd247207ca5c0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 22:53:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'e9d3202c14f7f2812346fb4c2b781c67', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'192.168.1.104', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 21:38:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ea268ad02db29012b2f1bd3d4aea1419', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:10:22.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ea5f9191b0f593a1d6cb585538caa815', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:46:08.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ea66ed22fde49640cee5d73c6ef69718', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 11:50:04.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'eaf74cd1489b02d39c470eed131fc918', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 18:37:39.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'eb0b8a7cdf77df133566d7bd5a5f1fc0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-19 11:02:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'eb4536aa50a58985baf0a763a1ce2ebf', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-17 19:48:49.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'eb6f5196de91dd2e8316696bddd61345', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 22:26:36.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'eb9a522fd947c7a706c5a106ca32b8c9', N'1', N'用户名: jeecg,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-17 17:50:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ecfee5b948602a274093b8890e5e7f3f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:05:11.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ed0bbe9047a7471ae1cdc1c2941eccb1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-29 17:52:38.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ed2740de487c684be9fa3cf72113ae30', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:51:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ed50b1fbc80c3b953f4551081b10335e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 16:19:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ed9b4ffc8afab10732aac2d0f84c567b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-19 19:10:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ee2bb63c47c868d59a45503b3d2f34ea', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-25 19:16:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'eeb1f2e2c1b480e0bb62533848cbb176', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 22:55:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'eef5b90eea8e7394193443cfd7476529', N'2', N'删除测试DEMO', NULL, N'admin', N'管理员', N'127.0.0.1', N'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, N'["dcb45a2fc661e5cdc341b806e5914873"]', NULL, N'9', N'admin', N'2019-05-19 18:36:02.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ef54197116da89bf091c0ed58321eea4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-09 19:22:06.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ef7219725c4b84cc71f56f97a8eab01a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 12:08:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ef7669ac0350730d198f59b8411b19d1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 14:28:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'efa591832b375b4609a5890b0c6f3250', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 16:00:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'efe77038e00cfff98d6931c3e7a4c3d6', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-06 16:20:19.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f0409312093beb563ac4016f2b2c6dfd', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-03 13:24:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f04910792a74c563d057c4fcb345f963', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-20 18:30:00.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f06048c147c5bcdbed672e32b2c86b1c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-30 14:07:28.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f06e8fa83b408be905b4dc7caeaf9a80', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 19:40:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f0748a25728348591c7b73a66f273457', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-28 19:46:27.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f1186792c6584729a0f6da4432d951f9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-14 21:45:52.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f20cf3fe228ba6196a48015b98d0d354', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-01 19:25:22.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f21e30d73c337ea913849ed65808525c', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-27 10:23:22.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f21f9f700bf4f5bd9edda7a16ed338f8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:30:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f29f3b7b7e14b1389a0c53d263c0b26b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-29 17:44:25.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f2ce8024e62740f63c134c3cfb3cae23', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:07:41.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f3aab8f9dff7bf705aa29c6dcce49011', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-13 15:18:27.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f3cafb545e5693e446f641fa0b5ac8cd', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-04-04 17:07:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f3d371d6f71409ea2fe52405b725db4a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-12 13:38:15.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f3e1f7fb81004ccd64df12d94ef1e695', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-22 21:30:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f43e38800d779422c75075448af738d1', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-23 18:47:11.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f540eff3f6e86c1e0beccd300efd357f', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-19 15:15:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f543c25bdd741055aeb4f77c5b5acf58', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 14:40:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f58e160e97d13a851f59b70bf54e0d06', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-23 20:11:58.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f5c08b45885d248c422a5d406cd5f223', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:41:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f6646950c8465da1d1219b7a7a209fc2', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-25 19:14:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f6b0f562257bf02c983b9e3998ff864e', N'1', N'用户名: 管理员,退出成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg', N'2019-08-23 22:43:40.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f74f759b43afa639fd1c4f215c984ae0', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 22:08:18.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f78e24f5e841acac2a720f46f6c554bc', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:47:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f79af48e6aeb150432640483f3bb7f2a', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:09:11.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f84e86c9a21149134b1f2599a424164b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 20:12:27.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f8960d64e93606fa52220cc9c4ae35a2', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-23 11:21:02.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f9062582881b42f6b139c313d8ab0463', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-17 20:47:26.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f93279c6899dc5e6cec975906f8bf811', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 13:47:20.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f95d517f43ba2229c80c14c1883a4ee9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 12:11:59.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f99912c5ff252594f14d31b768f8ad15', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-21 15:03:10.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'f9abb524e0dc3571571dc6e50ec6db75', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 11:47:13.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'fa0612372b332b6c3ce787d9ca6dd2cc', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-24 11:48:21.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'fa0ce422c12a565461eca56006052891', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-15 10:13:21.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'fa427f74dc6bd9cca3db478b5842f7f7', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-28 14:19:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'fa9b4d7d42bc9d1ba058455b4afedbfb', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-25 12:59:46.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'fa9cebbb6af23d2830584b3aacd51e46', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-31 13:59:17.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'faad055dd212ed9506b444f8f1a920b9', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-26 12:00:38.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'fadb32d678346ee4bab02997988ff3bc', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-15 22:55:16.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'faea0dbfb7f86b571fed0dd270623831', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-18 14:12:14.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'fb2871cda1421b766f8e68cb36a22bf3', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-25 17:35:01.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'fb73d58bf6503270025972f99e50335d', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 11:57:56.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'fbb8834e9736bdd4b6d3baee895c4ca4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-31 18:05:03.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'fc22aaf9660e66558689a58dfa443074', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-15 16:30:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'fc69a1640a4772c8edf2548d053fa6de', N'1', N'用户名: admin,登录成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-03-23 14:55:33.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'fce1553149aea9bfd93e089f387199c8', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-02-24 23:11:35.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'fded8eb5d78d13791baec769019fee54', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-25 12:15:07.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'fe0dc06eaef69047131f39052fcce5c4', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-19 13:56:05.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'fea8e1e2d229557185be0d9a10ebce17', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-01-19 21:55:55.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'feaf7c377abc5824c1757d280dd3c164', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-20 11:58:54.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ff3f7dbda20cd2734b1238fa5ba17fcf', N'1', N'用户名: 管理员,退出成功！', NULL, N'admin', N'管理员', N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'admin', N'2019-04-10 11:26:43.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ffac84fff3c65bb17aa1bda3a0d2029e', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-06 20:10:50.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_log]  VALUES (N'ffc6178ffa099bb90b9a4d0a64dae42b', N'1', N'用户名: admin,登录成功！', NULL, NULL, NULL, N'127.0.0.1', NULL, NULL, NULL, NULL, NULL, N'jeecg-boot', N'2019-03-21 18:28:32.0000000', NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_permission]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_permission]
GO

CREATE TABLE [dbo].[sys_permission] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [parent_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [url] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [component] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [component_name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [redirect] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [menu_type] int  NULL,
  [perms] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [perms_type] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sort_no] float(53)  NULL,
  [always_show] tinyint  NULL,
  [icon] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [is_route] tinyint  NULL,
  [is_leaf] tinyint  NULL,
  [keep_alive] tinyint  NULL,
  [hidden] int  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [del_flag] int  NULL,
  [rule_flag] int  NULL,
  [status] nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [internal_or_external] tinyint  NULL
)
GO

ALTER TABLE [dbo].[sys_permission] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父id',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'parent_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单标题',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'路径',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组件',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'component'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组件名字',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'component_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'一级菜单跳转地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'redirect'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'menu_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单权限编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'perms'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限策略1显示2禁用',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'perms_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'sort_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'聚合子路由: 1是0否',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'always_show'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单图标',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'icon'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否路由菜单: 0:不是  1:是（默认值1）',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'is_route'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否叶子节点:    1:是   0:不是',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'is_leaf'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否缓存该页面:    1:是   0:不是',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'keep_alive'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否隐藏路由: 0否,1是',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'hidden'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除状态 0正常 1已删除',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否添加数据权限1是0否',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'rule_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'按钮权限状态(0无效1有效)',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'外链菜单打开方式 0/内部打开 1/外部打开',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'internal_or_external'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单权限表',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission'
GO


-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO [dbo].[sys_permission]  VALUES (N'00a2a0ae65cdca5e93209cdbde97cbe6', N'2e42e3835c2b44ec9f7bc26c146ee531', N'成功', N'/result/success', N'result/Success', NULL, NULL, N'1', NULL, NULL, N'1', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'020b06793e4de2eee0007f603000c769', N'f0675b52d89100ee88472b6800754a08', N'ViserChartDemo', N'/report/ViserChartDemo', N'jeecg/report/ViserChartDemo', NULL, NULL, N'1', NULL, NULL, N'3', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-03 19:08:53.0000000', N'admin', N'2019-04-03 19:08:53.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'024f1fd1283dc632458976463d8984e1', N'700b7f95165c46cc7a78bf227aa8fed3', N'Tomcat信息', N'/monitor/TomcatInfo', N'modules/monitor/TomcatInfo', NULL, NULL, N'1', NULL, NULL, N'4', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-02 09:44:29.0000000', N'admin', N'2019-05-07 15:19:10.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'043780fa095ff1b2bec4dc406d76f023', N'2a470fc0c3954d9dbb61de6d80846549', N'表格合计', N'/jeecg/tableTotal', N'jeecg/TableTotal', NULL, NULL, N'1', NULL, N'1', N'3', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-08-14 10:28:46.0000000', NULL, NULL, N'0', N'0', N'1', NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'05b3c82ddb2536a4a5ee1a4c46b5abef', N'540a2936940846cb98114ffb0d145cb8', N'用户列表', N'/list/user-list', N'list/UserList', NULL, NULL, N'1', NULL, NULL, N'3', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'0620e402857b8c5b605e1ad9f4b89350', N'2a470fc0c3954d9dbb61de6d80846549', N'异步树列表Demo', N'/jeecg/JeecgTreeTable', N'jeecg/JeecgTreeTable', NULL, NULL, N'1', NULL, N'0', N'3', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-05-13 17:30:30.0000000', N'admin', N'2019-05-13 17:32:17.0000000', N'0', N'0', N'1', NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'078f9558cdeab239aecb2bda1a8ed0d1', N'fb07ca05a3e13674dbf6d3245956da2e', N'搜索列表（文章）', N'/list/search/article', N'list/TableList', NULL, NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-02-12 14:00:34.0000000', N'admin', N'2019-02-12 14:17:54.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'08e6b9dc3c04489c8e1ff2ce6f105aa4', N'', N'系统监控', N'/dashboard3', N'layouts/RouteView', NULL, NULL, N'0', NULL, NULL, N'6', N'0', N'dashboard', N'1', N'0', NULL, N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2019-03-31 22:19:58.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'0ac2ad938963b6c6d1af25477d5b8b51', N'8d4683aacaa997ab86b966b464360338', N'代码生成按钮', NULL, NULL, NULL, NULL, N'2', N'online:goGenerateCode', N'1', N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-06-11 14:20:09.0000000', NULL, NULL, N'0', N'0', N'1', NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'109c78a583d4693ce2f16551b7786786', N'e41b69c57a941a3bbcce45032fe57605', N'Online报表配置', N'/online/cgreport', N'modules/online/cgreport/OnlCgreportHeadList', NULL, NULL, N'1', NULL, NULL, N'2', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-03-08 10:51:07.0000000', N'admin', N'2019-03-30 19:04:28.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'1166535831146504193', N'2a470fc0c3954d9dbb61de6d80846549', N'对象存储', N'/oss/file', N'modules/oss/OSSFileList', NULL, NULL, N'1', NULL, N'1', N'1', N'0', N'', N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-08-28 02:19:50.0000000', N'admin', N'2019-08-28 02:20:57.0000000', N'0', N'0', N'1', NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'1170592628746878978', N'd7d6e2e4e2934f2c9385a623fd98c6f3', N'菜单管理2', N'/isystem/newPermissionList', N'system/NewPermissionList', NULL, NULL, N'1', NULL, N'1', N'100', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-09-08 15:00:05.0000000', N'admin', N'2019-12-25 09:58:18.0000000', N'0', N'0', N'1', N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'1174506953255182338', N'd7d6e2e4e2934f2c9385a623fd98c6f3', N'职务管理', N'/isystem/position', N'system/SysPositionList', NULL, NULL, N'1', NULL, N'1', N'2', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-09-19 10:14:13.0000000', N'admin', N'2019-09-19 10:15:22.0000000', N'0', N'0', N'1', N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'1174590283938041857', N'd7d6e2e4e2934f2c9385a623fd98c6f3', N'通讯录', N'/isystem/addressList', N'system/AddressList', NULL, NULL, N'1', NULL, N'1', N'3', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-09-19 15:45:21.0000000', NULL, NULL, N'0', N'0', N'1', N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'1192318987661234177', N'e41b69c57a941a3bbcce45032fe57605', N'系统编码生成规则', N'/isystem/fillRule', N'system/SysFillRuleList', NULL, NULL, N'1', NULL, N'1', N'3', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-11-07 13:52:53.0000000', N'admin', N'2020-02-23 22:42:30.0000000', N'0', N'0', N'1', N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'1205097455226462210', N'', N'大屏设计', N'/big/screen', N'layouts/RouteView', NULL, NULL, N'0', NULL, N'1', N'1.1', N'0', N'area-chart', N'1', N'0', N'0', N'0', NULL, N'admin', N'2019-12-12 20:09:58.0000000', N'admin', N'2020-02-23 23:17:59.0000000', N'0', N'0', N'1', N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'1205098241075453953', N'1205097455226462210', N'生产销售监控', N'{{ window._CONFIG[''domianURL''] }}/big/screen/templat/index1', N'layouts/IframePageView', NULL, NULL, N'1', NULL, N'1', N'1', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-12-12 20:13:05.0000000', N'admin', N'2019-12-12 20:15:27.0000000', N'0', N'0', N'1', N'1')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'1205306106780364802', N'1205097455226462210', N'智慧物流监控', N'{{ window._CONFIG[''domianURL''] }}/big/screen/templat/index2', N'layouts/IframePageView', NULL, NULL, N'1', NULL, N'1', N'2', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-12-13 09:59:04.0000000', N'admin', N'2019-12-25 09:28:03.0000000', N'0', N'0', N'1', N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'1209731624921534465', N'e41b69c57a941a3bbcce45032fe57605', N'多数据源管理', N'/isystem/dataSource', N'system/SysDataSourceList', NULL, NULL, N'1', NULL, N'1', N'6', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-12-25 15:04:30.0000000', N'admin', N'2020-02-23 22:43:37.0000000', N'0', N'0', N'1', N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'1224641973866467330', N'e41b69c57a941a3bbcce45032fe57605', N'系统编码校验规则', N'/isystem/checkRule', N'system/SysCheckRuleList', NULL, NULL, N'1', NULL, N'1', N'5', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-11-07 13:52:53.0000000', N'admin', N'2020-02-23 22:43:05.0000000', N'0', N'0', N'1', N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'1229674163694841857', N'e41b69c57a941a3bbcce45032fe57605', N'AUTO在线表单ERP', N'/online/cgformErpList/:code', N'modules/online/cgform/auto/erp/OnlCgformErpList', NULL, NULL, N'1', NULL, N'1', N'5', N'0', NULL, N'1', N'1', N'0', N'1', NULL, N'admin', N'2020-02-18 15:49:00.0000000', N'admin', N'2020-02-18 15:52:25.0000000', N'0', N'0', N'1', N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'1232123780958064642', N'f0675b52d89100ee88472b6800754a08', N'Online报表—用户统计', N'/online/cgreport/6c7f59741c814347905a938f06ee003c', N'modules/online/cgreport/auto/OnlCgreportAutoList', NULL, NULL, N'1', NULL, N'1', N'4', N'0', NULL, N'0', N'1', N'0', N'0', NULL, N'admin', N'2020-02-25 10:02:56.0000000', N'admin', N'2020-02-25 10:03:14.0000000', N'0', N'0', N'1', N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'13212d3416eb690c2e1d5033166ff47a', N'2e42e3835c2b44ec9f7bc26c146ee531', N'失败', N'/result/fail', N'result/Error', NULL, NULL, N'1', NULL, NULL, N'2', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'1367a93f2c410b169faa7abcbad2f77c', N'6e73eb3c26099c191bf03852ee1310a1', N'基本设置', N'/account/settings/base', N'account/settings/BaseSetting', NULL, NULL, N'1', N'BaseSettings', NULL, NULL, N'0', NULL, N'1', N'1', NULL, N'1', NULL, NULL, N'2018-12-26 18:58:35.0000000', N'admin', N'2019-03-20 12:57:31.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'190c2b43bec6a5f7a4194a85db67d96a', N'd7d6e2e4e2934f2c9385a623fd98c6f3', N'角色管理', N'/isystem/roleUserList', N'system/RoleUserList', NULL, NULL, N'1', NULL, NULL, N'1.2', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-04-17 15:13:56.0000000', N'admin', N'2019-12-25 09:36:31.0000000', N'0', N'0', NULL, N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'1a0811914300741f4e11838ff37a1d3a', N'3f915b2769fc80648e92d04e84ca059d', N'手机号禁用', NULL, NULL, NULL, NULL, N'2', N'user:form:phone', N'2', N'1', N'0', NULL, N'0', N'1', NULL, N'0', NULL, N'admin', N'2019-05-11 17:19:30.0000000', N'admin', N'2019-05-11 18:00:22.0000000', N'0', N'0', N'1', NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'200006f0edf145a2b50eacca07585451', N'fb07ca05a3e13674dbf6d3245956da2e', N'搜索列表（应用）', N'/list/search/application', N'list/TableList', NULL, NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-02-12 14:02:51.0000000', N'admin', N'2019-02-12 14:14:01.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'22d6a3d39a59dd7ea9a30acfa6bfb0a5', N'e41b69c57a941a3bbcce45032fe57605', N'AUTO动态表单', N'/online/df/:table/:id', N'modules/online/cgform/auto/OnlineDynamicForm', NULL, NULL, N'1', NULL, NULL, N'9', N'0', NULL, N'0', N'1', NULL, N'1', NULL, N'admin', N'2019-04-22 15:15:43.0000000', N'admin', N'2019-04-30 18:18:26.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'265de841c58907954b8877fb85212622', N'2a470fc0c3954d9dbb61de6d80846549', N'图片拖拽排序', N'/jeecg/imgDragSort', N'jeecg/ImgDragSort', NULL, NULL, N'1', NULL, NULL, N'4', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-25 10:43:08.0000000', N'admin', N'2019-04-25 10:46:26.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'277bfabef7d76e89b33062b16a9a5020', N'e3c13679c73a4f829bcff2aba8fd68b1', N'基础表单', N'/form/base-form', N'form/BasicForm', NULL, NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'0', NULL, N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2019-02-26 17:02:08.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'2a470fc0c3954d9dbb61de6d80846549', N'', N'常见案例', N'/jeecg', N'layouts/RouteView', NULL, NULL, N'0', NULL, NULL, N'7', N'0', N'qrcode', N'1', N'0', NULL, N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2019-04-02 11:46:42.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'2aeddae571695cd6380f6d6d334d6e7d', N'f0675b52d89100ee88472b6800754a08', N'布局统计报表', N'/report/ArchivesStatisticst', N'jeecg/report/ArchivesStatisticst', NULL, NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-03 18:32:48.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'2dbbafa22cda07fa5d169d741b81fe12', N'08e6b9dc3c04489c8e1ff2ce6f105aa4', N'在线文档', N'{{ window._CONFIG[''domianURL''] }}/doc.html', N'layouts/IframePageView', NULL, NULL, N'1', NULL, NULL, N'3', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-01-30 10:00:01.0000000', N'admin', N'2019-03-23 19:44:43.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'2e42e3835c2b44ec9f7bc26c146ee531', N'', N'结果页', N'/result', N'layouts/PageView', NULL, NULL, N'0', NULL, NULL, N'8', N'0', N'check-circle-o', N'1', N'0', NULL, N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2019-04-02 11:46:56.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'339329ed54cf255e1f9392e84f136901', N'2a470fc0c3954d9dbb61de6d80846549', N'helloworld', N'/jeecg/helloworld', N'jeecg/helloworld', NULL, NULL, N'1', NULL, NULL, N'4', N'0', NULL, N'1', N'1', NULL, N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2019-02-15 16:24:56.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'3f915b2769fc80648e92d04e84ca059d', N'd7d6e2e4e2934f2c9385a623fd98c6f3', N'用户管理', N'/isystem/user', N'system/UserList', NULL, NULL, N'1', NULL, NULL, N'1.1', N'0', NULL, N'1', N'0', N'0', N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2019-12-25 09:36:24.0000000', N'0', N'0', NULL, N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'3fac0d3c9cd40fa53ab70d4c583821f8', N'2a470fc0c3954d9dbb61de6d80846549', N'分屏', N'/jeecg/splitPanel', N'jeecg/SplitPanel', NULL, NULL, N'1', NULL, NULL, N'6', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-25 16:27:06.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'4148ec82b6acd69f470bea75fe41c357', N'2a470fc0c3954d9dbb61de6d80846549', N'单表模型示例', N'/jeecg/jeecgDemoList', N'jeecg/JeecgDemoList', N'DemoList', NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, NULL, N'2018-12-28 15:57:30.0000000', N'admin', N'2019-02-15 16:24:37.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'418964ba087b90a84897b62474496b93', N'540a2936940846cb98114ffb0d145cb8', N'查询表格', N'/list/query-list', N'list/TableList', NULL, NULL, N'1', NULL, NULL, N'1', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'4356a1a67b564f0988a484f5531fd4d9', N'2a470fc0c3954d9dbb61de6d80846549', N'内嵌Table', N'/jeecg/TableExpandeSub', N'jeecg/TableExpandeSub', NULL, NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-04 22:48:13.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'45c966826eeff4c99b8f8ebfe74511fc', N'd7d6e2e4e2934f2c9385a623fd98c6f3', N'部门管理', N'/isystem/depart', N'system/DepartList', NULL, NULL, N'1', NULL, NULL, N'1.4', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-01-29 18:47:40.0000000', N'admin', N'2019-12-25 09:36:47.0000000', N'0', N'0', NULL, N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'4875ebe289344e14844d8e3ea1edd73f', N'', N'详情页', N'/profile', N'layouts/RouteView', NULL, NULL, N'0', NULL, NULL, N'8', N'0', N'profile', N'1', N'0', NULL, N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2019-04-02 11:46:48.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'4f66409ef3bbd69c1d80469d6e2a885e', N'6e73eb3c26099c191bf03852ee1310a1', N'账户绑定', N'/account/settings/binding', N'account/settings/Binding', NULL, NULL, N'1', N'BindingSettings', NULL, NULL, NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-26 19:01:20.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'4f84f9400e5e92c95f05b554724c2b58', N'540a2936940846cb98114ffb0d145cb8', N'角色列表', N'/list/role-list', N'list/RoleList', NULL, NULL, N'1', NULL, NULL, N'4', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'53a9230444d33de28aa11cc108fb1dba', N'5c8042bd6c601270b2bbd9b20bccc68b', N'我的消息', N'/isps/userAnnouncement', N'system/UserAnnouncementList', NULL, NULL, N'1', NULL, NULL, N'3', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-04-19 10:16:00.0000000', N'admin', N'2019-12-25 09:54:34.0000000', N'0', N'0', NULL, N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'54097c6a3cf50fad0793a34beff1efdf', N'e41b69c57a941a3bbcce45032fe57605', N'AUTO在线表单', N'/online/cgformList/:code', N'modules/online/cgform/auto/OnlCgformAutoList', NULL, NULL, N'1', NULL, NULL, N'9', N'0', NULL, N'1', N'1', NULL, N'1', NULL, N'admin', N'2019-03-19 16:03:06.0000000', N'admin', N'2019-04-30 18:19:03.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'540a2936940846cb98114ffb0d145cb8', N'', N'列表页', N'/list', N'layouts/PageView', NULL, N'/list/query-list', N'0', NULL, NULL, N'9', N'0', N'table', N'1', N'0', NULL, N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2019-03-31 22:20:20.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'54dd5457a3190740005c1bfec55b1c34', N'd7d6e2e4e2934f2c9385a623fd98c6f3', N'菜单管理', N'/isystem/permission', N'system/PermissionList', NULL, NULL, N'1', NULL, NULL, N'1.3', N'0', NULL, N'1', N'1', N'0', N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2019-12-25 09:36:39.0000000', N'0', N'0', NULL, N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'58857ff846e61794c69208e9d3a85466', N'08e6b9dc3c04489c8e1ff2ce6f105aa4', N'日志管理', N'/isystem/log', N'system/LogList', NULL, NULL, N'1', NULL, NULL, N'1', N'0', N'', N'1', N'1', NULL, N'0', NULL, NULL, N'2018-12-26 10:11:18.0000000', N'admin', N'2019-04-02 11:38:17.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'58b9204feaf07e47284ddb36cd2d8468', N'2a470fc0c3954d9dbb61de6d80846549', N'图片翻页', N'/jeecg/imgTurnPage', N'jeecg/ImgTurnPage', NULL, NULL, N'1', NULL, NULL, N'4', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-25 11:36:42.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'5c2f42277948043026b7a14692456828', N'd7d6e2e4e2934f2c9385a623fd98c6f3', N'我的部门', N'/isystem/departUserList', N'system/DepartUserList', NULL, NULL, N'1', NULL, NULL, N'2', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-04-17 15:12:24.0000000', N'admin', N'2019-12-25 09:35:26.0000000', N'0', N'0', NULL, N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'5c8042bd6c601270b2bbd9b20bccc68b', N'', N'消息中心', N'/message', N'layouts/RouteView', NULL, NULL, N'0', NULL, NULL, N'6', N'0', N'message', N'1', N'0', NULL, N'0', NULL, N'admin', N'2019-04-09 11:05:04.0000000', N'admin', N'2019-04-11 19:47:54.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'6531cf3421b1265aeeeabaab5e176e6d', N'e3c13679c73a4f829bcff2aba8fd68b1', N'分步表单', N'/form/step-form', N'form/stepForm/StepForm', NULL, NULL, N'1', NULL, NULL, N'2', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'655563cd64b75dcf52ef7bcdd4836953', N'2a470fc0c3954d9dbb61de6d80846549', N'图片预览', N'/jeecg/ImagPreview', N'jeecg/ImagPreview', NULL, NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-17 11:18:45.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'65a8f489f25a345836b7f44b1181197a', N'c65321e57b7949b7a975313220de0422', N'403', N'/exception/403', N'exception/403', NULL, NULL, N'1', NULL, NULL, N'1', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'6ad53fd1b220989a8b71ff482d683a5a', N'2a470fc0c3954d9dbb61de6d80846549', N'一对多Tab示例', N'/jeecg/tablist/JeecgOrderDMainList', N'jeecg/tablist/JeecgOrderDMainList', NULL, NULL, N'1', NULL, NULL, N'2', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-02-20 14:45:09.0000000', N'admin', N'2019-02-21 16:26:21.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'6e73eb3c26099c191bf03852ee1310a1', N'717f6bee46f44a3897eca9abd6e2ec44', N'个人设置', N'/account/settings/base', N'account/settings/Index', NULL, NULL, N'1', NULL, NULL, N'2', N'1', NULL, N'1', N'0', NULL, N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2019-04-19 09:41:05.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'700b7f95165c46cc7a78bf227aa8fed3', N'08e6b9dc3c04489c8e1ff2ce6f105aa4', N'性能监控', N'/monitor', N'layouts/RouteView', NULL, NULL, N'1', NULL, NULL, N'0', N'0', NULL, N'1', N'0', NULL, N'0', NULL, N'admin', N'2019-04-02 11:34:34.0000000', N'admin', N'2019-05-05 17:49:47.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'717f6bee46f44a3897eca9abd6e2ec44', N'', N'个人页', N'/account', N'layouts/RouteView', NULL, NULL, N'0', NULL, NULL, N'9', N'0', N'user', N'1', N'0', N'0', N'1', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2020-02-23 22:41:37.0000000', N'0', N'0', NULL, N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'73678f9daa45ed17a3674131b03432fb', N'540a2936940846cb98114ffb0d145cb8', N'权限列表', N'/list/permission-list', N'list/PermissionList', NULL, NULL, N'1', NULL, NULL, N'5', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'7593c9e3523a17bca83b8d7fe8a34e58', N'3f915b2769fc80648e92d04e84ca059d', N'添加用户按钮', N'', NULL, NULL, NULL, N'2', N'user:add', N'1', N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-03-16 11:20:33.0000000', N'admin', N'2019-05-17 18:31:25.0000000', N'0', N'0', N'1', NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'7960961b0063228937da5fa8dd73d371', N'2a470fc0c3954d9dbb61de6d80846549', N'JEditableTable示例', N'/jeecg/JEditableTable', N'jeecg/JeecgEditableTableExample', NULL, NULL, N'1', NULL, NULL, N'2.1', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-03-22 15:22:18.0000000', N'admin', N'2019-12-25 09:48:16.0000000', N'0', N'0', NULL, N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'7ac9eb9ccbde2f7a033cd4944272bf1e', N'540a2936940846cb98114ffb0d145cb8', N'卡片列表', N'/list/card', N'list/CardList', NULL, NULL, N'1', NULL, NULL, N'7', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'841057b8a1bef8f6b4b20f9a618a7fa6', N'08e6b9dc3c04489c8e1ff2ce6f105aa4', N'数据日志', N'/sys/dataLog-list', N'system/DataLogList', NULL, NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-03-11 19:26:49.0000000', N'admin', N'2019-03-12 11:40:47.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'882a73768cfd7f78f3a37584f7299656', N'6e73eb3c26099c191bf03852ee1310a1', N'个性化设置', N'/account/settings/custom', N'account/settings/Custom', NULL, NULL, N'1', N'CustomSettings', NULL, NULL, NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-26 19:00:46.0000000', NULL, N'2018-12-26 21:13:25.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'8b3bff2eee6f1939147f5c68292a1642', N'700b7f95165c46cc7a78bf227aa8fed3', N'服务器信息', N'/monitor/SystemInfo', N'modules/monitor/SystemInfo', NULL, NULL, N'1', NULL, NULL, N'4', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-02 11:39:19.0000000', N'admin', N'2019-04-02 15:40:02.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'8d1ebd663688965f1fd86a2f0ead3416', N'700b7f95165c46cc7a78bf227aa8fed3', N'Redis监控', N'/monitor/redis/info', N'modules/monitor/RedisInfo', NULL, NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-02 13:11:33.0000000', N'admin', N'2019-05-07 15:18:54.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'8d4683aacaa997ab86b966b464360338', N'e41b69c57a941a3bbcce45032fe57605', N'Online表单开发', N'/online/cgform', N'modules/online/cgform/OnlCgformHeadList', NULL, NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'0', NULL, N'0', NULL, N'admin', N'2019-03-12 15:48:14.0000000', N'admin', N'2019-06-11 14:19:17.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'8fb8172747a78756c11916216b8b8066', N'717f6bee46f44a3897eca9abd6e2ec44', N'工作台', N'/dashboard/workplace', N'dashboard/Workplace', NULL, NULL, N'1', NULL, NULL, N'3', N'0', NULL, N'1', N'1', NULL, N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2019-04-02 11:45:02.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'944abf0a8fc22fe1f1154a389a574154', N'5c8042bd6c601270b2bbd9b20bccc68b', N'消息管理', N'/modules/message/sysMessageList', N'modules/message/SysMessageList', NULL, NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-09 11:27:53.0000000', N'admin', N'2019-04-09 19:31:23.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'9502685863ab87f0ad1134142788a385', N'', N'首页', N'/dashboard/analysis', N'dashboard/Analysis', NULL, NULL, N'0', NULL, NULL, N'0', N'0', N'home', N'1', N'1', NULL, N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2019-03-29 11:04:13.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'97c8629abc7848eccdb6d77c24bb3ebb', N'700b7f95165c46cc7a78bf227aa8fed3', N'磁盘监控', N'/monitor/Disk', N'modules/monitor/DiskMonitoring', NULL, NULL, N'1', NULL, NULL, N'6', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-25 14:30:06.0000000', N'admin', N'2019-05-05 14:37:14.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'9a90363f216a6a08f32eecb3f0bf12a3', N'2a470fc0c3954d9dbb61de6d80846549', N'自定义组件', N'/jeecg/SelectDemo', N'jeecg/SelectDemo', NULL, NULL, N'1', NULL, NULL, N'0', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-03-19 11:19:05.0000000', N'admin', N'2019-12-25 09:47:04.0000000', N'0', N'0', NULL, N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'9cb91b8851db0cf7b19d7ecc2a8193dd', N'1939e035e803a99ceecb6f5563570fb2', N'我的任务表单', N'/modules/bpm/task/form/FormModule', N'modules/bpm/task/form/FormModule', NULL, NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-03-08 16:49:05.0000000', N'admin', N'2019-03-08 18:37:56.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'9fe26464838de2ea5e90f2367e35efa0', N'e41b69c57a941a3bbcce45032fe57605', N'AUTO在线报表', N'/online/cgreport/:code', N'modules/online/cgreport/auto/OnlCgreportAutoList', N'onlineAutoList', NULL, N'1', NULL, NULL, N'9', N'0', NULL, N'1', N'1', NULL, N'1', NULL, N'admin', N'2019-03-12 11:06:48.0000000', N'admin', N'2019-04-30 18:19:10.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'a400e4f4d54f79bf5ce160ae432231af', N'2a470fc0c3954d9dbb61de6d80846549', N'百度', N'http://www.baidu.com', N'layouts/IframePageView', NULL, NULL, N'1', NULL, NULL, N'4', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-01-29 19:44:06.0000000', N'admin', N'2019-02-15 16:25:02.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'ae4fed059f67086fd52a73d913cf473d', N'540a2936940846cb98114ffb0d145cb8', N'内联编辑表格', N'/list/edit-table', N'list/TableInnerEditList', NULL, NULL, N'1', NULL, NULL, N'2', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'aedbf679b5773c1f25e9f7b10111da73', N'08e6b9dc3c04489c8e1ff2ce6f105aa4', N'SQL监控', N'{{ window._CONFIG[''domianURL''] }}/druid/', N'layouts/IframePageView', NULL, NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-01-30 09:43:22.0000000', N'admin', N'2019-03-23 19:00:46.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'b1cb0a3fedf7ed0e4653cb5a229837ee', N'08e6b9dc3c04489c8e1ff2ce6f105aa4', N'定时任务', N'/isystem/QuartzJobList', N'system/QuartzJobList', NULL, NULL, N'1', NULL, NULL, N'3', N'0', NULL, N'1', N'1', NULL, N'0', NULL, NULL, N'2019-01-03 09:38:52.0000000', N'admin', N'2019-04-02 10:24:13.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'b3c824fc22bd953e2eb16ae6914ac8f9', N'4875ebe289344e14844d8e3ea1edd73f', N'高级详情页', N'/profile/advanced', N'profile/advanced/Advanced', NULL, NULL, N'1', NULL, NULL, N'2', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'b4dfc7d5dd9e8d5b6dd6d4579b1aa559', N'c65321e57b7949b7a975313220de0422', N'500', N'/exception/500', N'exception/500', NULL, NULL, N'1', NULL, NULL, N'3', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'b6bcee2ccc854052d3cc3e9c96d90197', N'71102b3b87fb07e5527bbd2c530dd90a', N'加班申请', N'/modules/extbpm/joa/JoaOvertimeList', N'modules/extbpm/joa/JoaOvertimeList', NULL, NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-03 15:33:10.0000000', N'admin', N'2019-04-03 15:34:48.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'c431130c0bc0ec71b0a5be37747bb36a', N'2a470fc0c3954d9dbb61de6d80846549', N'一对多JEditable', N'/jeecg/JeecgOrderMainListForJEditableTable', N'jeecg/JeecgOrderMainListForJEditableTable', NULL, NULL, N'1', NULL, NULL, N'3', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-03-29 10:51:59.0000000', N'admin', N'2019-04-04 20:09:39.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'c65321e57b7949b7a975313220de0422', NULL, N'异常页', N'/exception', N'layouts/RouteView', NULL, NULL, N'0', NULL, NULL, N'8', NULL, N'warning', N'1', N'0', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'c6cf95444d80435eb37b2f9db3971ae6', N'2a470fc0c3954d9dbb61de6d80846549', N'数据回执模拟', N'/jeecg/InterfaceTest', N'jeecg/InterfaceTest', NULL, NULL, N'1', NULL, NULL, N'6', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-02-19 16:02:23.0000000', N'admin', N'2019-02-21 16:25:45.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'cc50656cf9ca528e6f2150eba4714ad2', N'4875ebe289344e14844d8e3ea1edd73f', N'基础详情页', N'/profile/basic', N'profile/basic/Index', NULL, NULL, N'1', NULL, NULL, N'1', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'd07a2c87a451434c99ab06296727ec4f', N'700b7f95165c46cc7a78bf227aa8fed3', N'JVM信息', N'/monitor/JvmInfo', N'modules/monitor/JvmInfo', NULL, NULL, N'1', NULL, NULL, N'4', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-01 23:07:48.0000000', N'admin', N'2019-04-02 11:37:16.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'd2bbf9ebca5a8fa2e227af97d2da7548', N'c65321e57b7949b7a975313220de0422', N'404', N'/exception/404', N'exception/404', NULL, NULL, N'1', NULL, NULL, N'2', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'd7d6e2e4e2934f2c9385a623fd98c6f3', N'', N'系统管理', N'/isystem', N'layouts/RouteView', NULL, NULL, N'0', NULL, NULL, N'4', N'0', N'setting', N'1', N'0', NULL, N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2019-03-31 22:19:52.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'd86f58e7ab516d3bc6bfb1fe10585f97', N'717f6bee46f44a3897eca9abd6e2ec44', N'个人中心', N'/account/center', N'account/center/Index', NULL, NULL, N'1', NULL, NULL, N'1', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'de13e0f6328c069748de7399fcc1dbbd', N'fb07ca05a3e13674dbf6d3245956da2e', N'搜索列表（项目）', N'/list/search/project', N'list/TableList', NULL, NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-02-12 14:01:40.0000000', N'admin', N'2019-02-12 14:14:18.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'e08cb190ef230d5d4f03824198773950', N'd7d6e2e4e2934f2c9385a623fd98c6f3', N'系统通告', N'/isystem/annountCement', N'system/SysAnnouncementList', NULL, NULL, N'1', N'annountCement', NULL, N'6', NULL, N'', N'1', N'1', NULL, NULL, NULL, NULL, N'2019-01-02 17:23:01.0000000', NULL, N'2019-01-02 17:31:23.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'e1979bb53e9ea51cecc74d86fd9d2f64', N'2a470fc0c3954d9dbb61de6d80846549', N'PDF预览', N'/jeecg/jeecgPdfView', N'jeecg/JeecgPdfView', NULL, NULL, N'1', NULL, NULL, N'3', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-25 10:39:35.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'e3c13679c73a4f829bcff2aba8fd68b1', N'', N'表单页', N'/form', N'layouts/PageView', NULL, NULL, N'0', NULL, NULL, N'9', N'0', N'form', N'1', N'0', NULL, N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2019-03-31 22:20:14.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'e41b69c57a941a3bbcce45032fe57605', N'', N'在线开发', N'/online', N'layouts/RouteView', NULL, NULL, N'0', NULL, NULL, N'5', N'0', N'cloud', N'1', N'0', NULL, N'0', NULL, N'admin', N'2019-03-08 10:43:10.0000000', N'admin', N'2019-05-11 10:36:01.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'e5973686ed495c379d829ea8b2881fc6', N'e3c13679c73a4f829bcff2aba8fd68b1', N'高级表单', N'/form/advanced-form', N'form/advancedForm/AdvancedForm', NULL, NULL, N'1', NULL, NULL, N'3', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'e6bfd1fcabfd7942fdd05f076d1dad38', N'2a470fc0c3954d9dbb61de6d80846549', N'打印测试', N'/jeecg/PrintDemo', N'jeecg/PrintDemo', NULL, NULL, N'1', NULL, NULL, N'3', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-02-19 15:58:48.0000000', N'admin', N'2019-05-07 20:14:39.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'ebb9d82ea16ad864071158e0c449d186', N'd7d6e2e4e2934f2c9385a623fd98c6f3', N'分类字典', N'/isys/category', N'system/SysCategoryList', NULL, NULL, N'1', NULL, N'1', N'5.2', N'0', NULL, N'1', N'1', N'0', N'0', NULL, N'admin', N'2019-05-29 18:48:07.0000000', N'admin', N'2020-02-23 22:45:33.0000000', N'0', N'0', N'1', N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'ec8d607d0156e198b11853760319c646', N'6e73eb3c26099c191bf03852ee1310a1', N'安全设置', N'/account/settings/security', N'account/settings/Security', NULL, NULL, N'1', N'SecuritySettings', NULL, NULL, NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-26 18:59:52.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'f0675b52d89100ee88472b6800754a08', N'', N'统计报表', N'/report', N'layouts/RouteView', NULL, NULL, N'0', NULL, NULL, N'1', N'0', N'bar-chart', N'1', N'0', NULL, N'0', NULL, N'admin', N'2019-04-03 18:32:02.0000000', N'admin', N'2019-05-19 18:34:13.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'f1cb187abf927c88b89470d08615f5ac', N'd7d6e2e4e2934f2c9385a623fd98c6f3', N'数据字典', N'/isystem/dict', N'system/DictList', NULL, NULL, N'1', NULL, NULL, N'5', N'0', NULL, N'1', N'1', N'0', N'0', NULL, NULL, N'2018-12-28 13:54:43.0000000', N'admin', N'2020-02-23 22:45:25.0000000', N'0', N'0', NULL, N'0')
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'f23d9bfff4d9aa6b68569ba2cff38415', N'540a2936940846cb98114ffb0d145cb8', N'标准列表', N'/list/basic-list', N'list/StandardList', NULL, NULL, N'1', NULL, NULL, N'6', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-25 20:34:38.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'f2849d3814fc97993bfc519ae6bbf049', N'e41b69c57a941a3bbcce45032fe57605', N'AUTO复制表单', N'/online/copyform/:code', N'modules/online/cgform/OnlCgformCopyList', NULL, NULL, N'1', NULL, N'1', N'1', N'0', NULL, N'1', N'1', N'0', N'1', NULL, N'admin', N'2019-08-29 16:05:37.0000000', NULL, NULL, N'0', N'0', N'1', NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'f780d0d3083d849ccbdb1b1baee4911d', N'5c8042bd6c601270b2bbd9b20bccc68b', N'模板管理', N'/modules/message/sysMessageTemplateList', N'modules/message/SysMessageTemplateList', NULL, NULL, N'1', NULL, NULL, N'1', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-09 11:50:31.0000000', N'admin', N'2019-04-12 10:16:34.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'fb07ca05a3e13674dbf6d3245956da2e', N'540a2936940846cb98114ffb0d145cb8', N'搜索列表', N'/list/search', N'list/search/SearchLayout', NULL, N'/list/search/article', N'1', NULL, NULL, N'8', N'0', NULL, N'1', N'0', NULL, N'0', NULL, NULL, N'2018-12-25 20:34:38.0000000', N'admin', N'2019-02-12 15:09:13.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'fb367426764077dcf94640c843733985', N'2a470fc0c3954d9dbb61de6d80846549', N'一对多示例', N'/jeecg/JeecgOrderMainList', N'jeecg/JeecgOrderMainList', NULL, NULL, N'1', NULL, NULL, N'2', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-02-15 16:24:11.0000000', N'admin', N'2019-02-18 10:50:14.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'fba41089766888023411a978d13c0aa4', N'e41b69c57a941a3bbcce45032fe57605', N'AUTO树表单列表', N'/online/cgformTreeList/:code', N'modules/online/cgform/auto/OnlCgformTreeList', NULL, NULL, N'1', NULL, N'1', N'9', N'0', NULL, N'1', N'1', NULL, N'1', NULL, N'admin', N'2019-05-21 14:46:50.0000000', N'admin', N'2019-06-11 13:52:52.0000000', N'0', N'0', N'1', NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'fc810a2267dd183e4ef7c71cc60f4670', N'700b7f95165c46cc7a78bf227aa8fed3', N'请求追踪', N'/monitor/HttpTrace', N'modules/monitor/HttpTrace', NULL, NULL, N'1', NULL, NULL, N'4', N'0', NULL, N'1', N'1', NULL, N'0', NULL, N'admin', N'2019-04-02 09:46:19.0000000', N'admin', N'2019-04-02 11:37:27.0000000', N'0', N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission]  VALUES (N'fedfbf4420536cacc0218557d263dfea', N'6e73eb3c26099c191bf03852ee1310a1', N'新消息通知', N'/account/settings/notification', N'account/settings/Notification', NULL, NULL, N'1', N'NotificationSettings', NULL, NULL, NULL, N'', N'1', N'1', NULL, NULL, NULL, NULL, N'2018-12-26 19:02:05.0000000', NULL, NULL, N'0', N'0', NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_permission_data_rule
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_permission_data_rule]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_permission_data_rule]
GO

CREATE TABLE [dbo].[sys_permission_data_rule] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [permission_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [rule_name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [rule_column] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [rule_conditions] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [rule_value] nvarchar(300) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] nvarchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_permission_data_rule] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission_data_rule',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission_data_rule',
'COLUMN', N'permission_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'规则名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission_data_rule',
'COLUMN', N'rule_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission_data_rule',
'COLUMN', N'rule_column'
GO

EXEC sp_addextendedproperty
'MS_Description', N'条件',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission_data_rule',
'COLUMN', N'rule_conditions'
GO

EXEC sp_addextendedproperty
'MS_Description', N'规则值',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission_data_rule',
'COLUMN', N'rule_value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限有效状态1有0否',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission_data_rule',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission_data_rule',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission_data_rule',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission_data_rule',
'COLUMN', N'update_by'
GO


-- ----------------------------
-- Records of sys_permission_data_rule
-- ----------------------------
INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'32b62cb04d6c788d9d92e3ff5e66854e', N'8d4683aacaa997ab86b966b464360338', N'000', N'00', N'!=', N'00', N'1', N'2019-04-02 18:36:08.0000000', N'admin', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'40283181614231d401614234fe670003', N'40283181614231d401614232cd1c0001', N'createBy', N'createBy', N'=', N'#{sys_user_code}', N'1', N'2018-01-29 21:57:04.0000000', N'admin', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'4028318161424e730161424fca6f0004', N'4028318161424e730161424f61510002', N'createBy', N'createBy', N'=', N'#{sys_user_code}', N'1', N'2018-01-29 22:26:20.0000000', N'admin', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'402880e6487e661a01487e732c020005', N'402889fb486e848101486e93a7c80014', N'SYS_ORG_CODE', N'SYS_ORG_CODE', N'LIKE', N'010201%', N'1', N'2014-09-16 20:32:30.0000000', N'admin', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'402880e6487e661a01487e8153ee0007', N'402889fb486e848101486e93a7c80014', N'create_by', N'create_by', N'', N'#{SYS_USER_CODE}', N'1', N'2014-09-16 20:47:57.0000000', N'admin', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'402880ec5ddec439015ddf9225060038', N'40288088481d019401481d2fcebf000d', N'复杂关系', N'', N'USE_SQL_RULES', N'name like ''%张%'' or age > 10', N'1', NULL, NULL, N'2017-08-14 15:10:25.0000000', N'demo')
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'402880ec5ddfdd26015ddfe3e0570011', N'4028ab775dca0d1b015dca3fccb60016', N'复杂sql配置', N'', N'USE_SQL_RULES', N'table_name like ''%test%'' or is_tree = ''Y''', N'1', NULL, NULL, N'2017-08-14 16:38:55.0000000', N'demo')
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'402880f25b1e2ac7015b1e5fdebc0012', N'402880f25b1e2ac7015b1e5cdc340010', N'只能看自己数据', N'create_by', N'=', N'#{sys_user_code}', N'1', N'2017-03-30 16:40:51.0000000', N'admin', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'402881875b19f141015b19f8125e0014', N'40288088481d019401481d2fcebf000d', N'可看下属业务数据', N'sys_org_code', N'LIKE', N'#{sys_org_code}', N'1', NULL, NULL, N'2017-08-14 15:04:32.0000000', N'demo')
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'402881e45394d66901539500a4450001', N'402881e54df73c73014df75ab670000f', N'sysCompanyCode', N'sysCompanyCode', N'=', N'#{SYS_COMPANY_CODE}', N'1', N'2016-03-21 01:09:21.0000000', N'admin', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'402881e45394d6690153950177cb0003', N'402881e54df73c73014df75ab670000f', N'sysOrgCode', N'sysOrgCode', N'=', N'#{SYS_ORG_CODE}', N'1', N'2016-03-21 01:10:15.0000000', N'admin', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'402881e56266f43101626727aff60067', N'402881e56266f43101626724eb730065', N'销售自己看自己的数据', N'createBy', N'=', N'#{sys_user_code}', N'1', N'2018-03-27 19:11:16.0000000', N'admin', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'402881e56266f4310162672fb1a70082', N'402881e56266f43101626724eb730065', N'销售经理看所有下级数据', N'sysOrgCode', N'LIKE', N'#{sys_org_code}', N'1', N'2018-03-27 19:20:01.0000000', N'admin', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'402881e56266f431016267387c9f0088', N'402881e56266f43101626724eb730065', N'只看金额大于1000的数据', N'money', N'>=', N'1000', N'1', N'2018-03-27 19:29:37.0000000', N'admin', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'402881f3650de25101650dfb5a3a0010', N'402881e56266f4310162671d62050044', N'22', N'', N'USE_SQL_RULES', N'22', N'1', N'2018-08-06 14:45:01.0000000', N'admin', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'402889fb486e848101486e913cd6000b', N'402889fb486e848101486e8e2e8b0007', N'userName', N'userName', N'=', N'admin', N'1', N'2014-09-13 18:31:25.0000000', N'admin', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'402889fb486e848101486e98d20d0016', N'402889fb486e848101486e93a7c80014', N'title', N'title', N'=', N'12', N'1', NULL, NULL, N'2014-09-13 22:18:22.0000000', N'scott')
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'402889fe47fcb29c0147fcb6b6220001', N'8a8ab0b246dc81120146dc8180fe002b', N'12', N'12', N'>', N'12', N'1', N'2014-08-22 15:55:38.0000000', N'8a8ab0b246dc81120146dc8181950052', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'4028ab775dca0d1b015dca4183530018', N'4028ab775dca0d1b015dca3fccb60016', N'表名限制', N'isDbSynch', N'=', N'Y', N'1', NULL, NULL, N'2017-08-14 16:43:45.0000000', N'demo')
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'4028ef815595a881015595b0ccb60001', N'40288088481d019401481d2fcebf000d', N'限只能看自己', N'create_by', N'=', N'#{sys_user_code}', N'1', NULL, NULL, N'2017-08-14 15:03:56.0000000', N'demo')
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'4028ef81574ae99701574aed26530005', N'4028ef81574ae99701574aeb97bd0003', N'用户名', N'userName', N'!=', N'admin', N'1', N'2016-09-21 12:07:18.0000000', N'admin', NULL, NULL)
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'53609e1854f4a87eb23ed23a18a1042c', N'4148ec82b6acd69f470bea75fe41c357', N'只看当前部门数据', N'sysOrgCode', N'=', N'#{sys_org_code}', N'1', N'2019-05-11 19:40:39.0000000', N'admin', N'2019-05-11 19:40:50.0000000', N'admin')
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'a7d661ef5ac168b2b162420c6804dac5', N'4148ec82b6acd69f470bea75fe41c357', N'只看自己的数据', N'createBy', N'=', N'#{sys_user_code}', N'1', N'2019-05-11 19:19:05.0000000', N'admin', N'2019-05-11 19:24:58.0000000', N'admin')
GO

INSERT INTO [dbo].[sys_permission_data_rule]  VALUES (N'f852d85d47f224990147f2284c0c0005', NULL, N'小于', N'test', N'<=', N'11', N'1', N'2014-08-20 14:43:52.0000000', N'8a8ab0b246dc81120146dc8181950052', NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_position]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_position]
GO

CREATE TABLE [dbo].[sys_position] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [post_rank] nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [company_id] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [sys_org_code] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_position] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'职务编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_position',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'职务名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_position',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'职级',
'SCHEMA', N'dbo',
'TABLE', N'sys_position',
'COLUMN', N'post_rank'
GO

EXEC sp_addextendedproperty
'MS_Description', N'公司id',
'SCHEMA', N'dbo',
'TABLE', N'sys_position',
'COLUMN', N'company_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_position',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_position',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_position',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_position',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组织机构编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_position',
'COLUMN', N'sys_org_code'
GO


-- ----------------------------
-- Records of sys_position
-- ----------------------------
INSERT INTO [dbo].[sys_position]  VALUES (N'1185040064792571906', N'devleader', N'研发部经理', N'2', NULL, N'admin', N'2019-10-18 11:49:03.0000000', N'admin', N'2020-02-23 22:55:42.0000000', N'A01')
GO


-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_quartz_job]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_quartz_job]
GO

CREATE TABLE [dbo].[sys_quartz_job] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [del_flag] int  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [job_class_name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [cron_expression] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [parameter] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] int  NULL
)
GO

ALTER TABLE [dbo].[sys_quartz_job] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除状态',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'任务类名',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'job_class_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'cron表达式',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'cron_expression'
GO

EXEC sp_addextendedproperty
'MS_Description', N'参数',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'parameter'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态 0正常 -1停止',
'SCHEMA', N'dbo',
'TABLE', N'sys_quartz_job',
'COLUMN', N'status'
GO


-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------
INSERT INTO [dbo].[sys_quartz_job]  VALUES (N'5b3d2c087ad41aa755fc4f89697b01e7', N'admin', N'2019-04-11 19:04:21.0000000', N'0', N'admin', N'2019-04-11 19:49:49.0000000', N'org.jeecg.modules.message.job.SendMsgJob', N'0/60 * * * * ?', NULL, NULL, N'-1')
GO

INSERT INTO [dbo].[sys_quartz_job]  VALUES (N'a253cdfc811d69fa0efc70d052bc8128', N'admin', N'2019-03-30 12:44:48.0000000', N'0', N'admin', N'2019-03-30 12:44:52.0000000', N'org.jeecg.modules.quartz.job.SampleJob', N'0/1 * * * * ?', NULL, NULL, N'-1')
GO

INSERT INTO [dbo].[sys_quartz_job]  VALUES (N'df26ecacf0f75d219d746750fe84bbee', NULL, NULL, N'0', N'admin', N'2019-01-19 15:09:41.0000000', N'org.jeecg.modules.quartz.job.SampleParamJob', N'0/1 * * * * ?', N'scott', N'带参测试 后台将每隔1秒执行输出日志', N'-1')
GO


-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role]
GO

CREATE TABLE [dbo].[sys_role] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [role_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [role_code] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [description] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_role] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'role_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'role_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色表',
'SCHEMA', N'dbo',
'TABLE', N'sys_role'
GO


-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO [dbo].[sys_role]  VALUES (N'e51758fa916c881624b046d26bd09230', N'人力资源部', N'hr', NULL, N'admin', N'2019-01-21 18:07:24.0000000', N'admin', N'2019-10-18 11:39:43.0000000')
GO

INSERT INTO [dbo].[sys_role]  VALUES (N'ee8626f80f7c2619917b6236f3a7f02b', N'临时角色', N'test', N'这是新建的临时角色123', NULL, N'2018-12-20 10:59:04.0000000', N'admin', N'2019-02-19 15:08:37.0000000')
GO

INSERT INTO [dbo].[sys_role]  VALUES (N'f6817f48af4fb3af11b9e8bf182f618b', N'管理员', N'admin', N'管理员', NULL, N'2018-12-21 18:03:39.0000000', N'admin', N'2019-05-20 11:40:26.0000000')
GO


-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role_permission]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role_permission]
GO

CREATE TABLE [dbo].[sys_role_permission] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [role_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [permission_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [data_rule_ids] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_role_permission] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_permission',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限id',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_permission',
'COLUMN', N'permission_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色权限表',
'SCHEMA', N'dbo',
'TABLE', N'sys_role_permission'
GO


-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO [dbo].[sys_role_permission]  VALUES (N'00b0748f04d3ea52c8cfa179c1c9d384', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'00b82058779cca5106fbb84783534c9b', N'f6817f48af4fb3af11b9e8bf182f618b', N'4148ec82b6acd69f470bea75fe41c357', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'0254c0b25694ad5479e6d6935bbc176e', N'f6817f48af4fb3af11b9e8bf182f618b', N'944abf0a8fc22fe1f1154a389a574154', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'09bd4fc30ffe88c4a44ed3868f442719', N'f6817f48af4fb3af11b9e8bf182f618b', N'e6bfd1fcabfd7942fdd05f076d1dad38', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'0c2d2db76ee3aa81a4fe0925b0f31365', N'f6817f48af4fb3af11b9e8bf182f618b', N'024f1fd1283dc632458976463d8984e1', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'0c6b8facbb1cc874964c87a8cf01e4b1', N'f6817f48af4fb3af11b9e8bf182f618b', N'841057b8a1bef8f6b4b20f9a618a7fa6', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'0c6e1075e422972083c3e854d9af7851', N'f6817f48af4fb3af11b9e8bf182f618b', N'08e6b9dc3c04489c8e1ff2ce6f105aa4', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'0d9d14bc66e9d5e99b0280095fdc8587', N'ee8626f80f7c2619917b6236f3a7f02b', N'277bfabef7d76e89b33062b16a9a5020', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'0dec36b68c234767cd35466efef3b941', N'ee8626f80f7c2619917b6236f3a7f02b', N'54dd5457a3190740005c1bfec55b1c34', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'0e1469997af2d3b97fff56a59ee29eeb', N'f6817f48af4fb3af11b9e8bf182f618b', N'e41b69c57a941a3bbcce45032fe57605', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'0f861cb988fdc639bb1ab943471f3a72', N'f6817f48af4fb3af11b9e8bf182f618b', N'97c8629abc7848eccdb6d77c24bb3ebb', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'105c2ac10741e56a618a82cd58c461d7', N'e51758fa916c881624b046d26bd09230', N'1663f3faba244d16c94552f849627d84', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'115a6673ae6c0816d3f60de221520274', N'21c5a3187763729408b40afb0d0fdfa8', N'63b551e81c5956d5c861593d366d8c57', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1185039870491439105', N'f6817f48af4fb3af11b9e8bf182f618b', N'1174506953255182338', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1185039870529187841', N'f6817f48af4fb3af11b9e8bf182f618b', N'1174590283938041857', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1185039870537576450', N'f6817f48af4fb3af11b9e8bf182f618b', N'1166535831146504193', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1197431682208206850', N'f6817f48af4fb3af11b9e8bf182f618b', N'1192318987661234177', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1197795315916271617', N'f6817f48af4fb3af11b9e8bf182f618b', N'109c78a583d4693ce2f16551b7786786', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1197795316268593154', N'f6817f48af4fb3af11b9e8bf182f618b', N'9fe26464838de2ea5e90f2367e35efa0', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1209423530518761473', N'f6817f48af4fb3af11b9e8bf182f618b', N'1205097455226462210', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1209423530594258945', N'f6817f48af4fb3af11b9e8bf182f618b', N'1205098241075453953', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1209423530606841858', N'f6817f48af4fb3af11b9e8bf182f618b', N'1205306106780364802', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1209423580355481602', N'f6817f48af4fb3af11b9e8bf182f618b', N'190c2b43bec6a5f7a4194a85db67d96a', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1209654501558046722', N'f6817f48af4fb3af11b9e8bf182f618b', N'f2849d3814fc97993bfc519ae6bbf049', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1231590078632955905', N'f6817f48af4fb3af11b9e8bf182f618b', N'1224641973866467330', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1231590078658121729', N'f6817f48af4fb3af11b9e8bf182f618b', N'1209731624921534465', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1231590078662316033', N'f6817f48af4fb3af11b9e8bf182f618b', N'1229674163694841857', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1232123957949304833', N'ee8626f80f7c2619917b6236f3a7f02b', N'f0675b52d89100ee88472b6800754a08', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1232123957978664962', N'ee8626f80f7c2619917b6236f3a7f02b', N'1232123780958064642', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1232123957978664963', N'ee8626f80f7c2619917b6236f3a7f02b', N'020b06793e4de2eee0007f603000c769', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1232123957987053570', N'ee8626f80f7c2619917b6236f3a7f02b', N'2aeddae571695cd6380f6d6d334d6e7d', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1232124727411150850', N'f6817f48af4fb3af11b9e8bf182f618b', N'1232123780958064642', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1232125488694104066', N'ee8626f80f7c2619917b6236f3a7f02b', N'e41b69c57a941a3bbcce45032fe57605', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'126ea9faebeec2b914d6d9bef957afb6', N'f6817f48af4fb3af11b9e8bf182f618b', N'f1cb187abf927c88b89470d08615f5ac', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'145eac8dd88eddbd4ce0a800ab40a92c', N'e51758fa916c881624b046d26bd09230', N'08e6b9dc3c04489c8e1ff2ce6f105aa4', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'154edd0599bd1dc2c7de220b489cd1e2', N'f6817f48af4fb3af11b9e8bf182f618b', N'7ac9eb9ccbde2f7a033cd4944272bf1e', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'165acd6046a0eaf975099f46a3c898ea', N'f6817f48af4fb3af11b9e8bf182f618b', N'4f66409ef3bbd69c1d80469d6e2a885e', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1664b92dff13e1575e3a929caa2fa14d', N'f6817f48af4fb3af11b9e8bf182f618b', N'd2bbf9ebca5a8fa2e227af97d2da7548', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'16ef8ed3865ccc6f6306200760896c50', N'ee8626f80f7c2619917b6236f3a7f02b', N'e8af452d8948ea49d37c934f5100ae6a', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'17ead5b7d97ed365398ab20009a69ea3', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'e08cb190ef230d5d4f03824198773950', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1ac1688ef8456f384091a03d88a89ab1', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'693ce69af3432bd00be13c3971a57961', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1af4babaa4227c3cbb830bc5eb513abb', N'ee8626f80f7c2619917b6236f3a7f02b', N'e08cb190ef230d5d4f03824198773950', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1ba162bbc2076c25561f8622f610d5bf', N'ee8626f80f7c2619917b6236f3a7f02b', N'aedbf679b5773c1f25e9f7b10111da73', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1c1dbba68ef1817e7fb19c822d2854e8', N'f6817f48af4fb3af11b9e8bf182f618b', N'fb367426764077dcf94640c843733985', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1c55c4ced20765b8ebab383caa60f0b6', N'e51758fa916c881624b046d26bd09230', N'fb367426764077dcf94640c843733985', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1e099baeae01b747d67aca06bdfc34d1', N'e51758fa916c881624b046d26bd09230', N'6ad53fd1b220989a8b71ff482d683a5a', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1e47db875601fd97723254046b5bba90', N'f6817f48af4fb3af11b9e8bf182f618b', N'baf16b7174bd821b6bab23fa9abb200d', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'1fe4d408b85f19618c15bcb768f0ec22', N'1750a8fb3e6d90cb7957c02de1dc8e59', N'9502685863ab87f0ad1134142788a385', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'20e53c87a785688bdc0a5bb6de394ef1', N'f6817f48af4fb3af11b9e8bf182f618b', N'540a2936940846cb98114ffb0d145cb8', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'248d288586c6ff3bd14381565df84163', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'3f915b2769fc80648e92d04e84ca059d', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'25491ecbd5a9b34f09c8bc447a10ede1', N'f6817f48af4fb3af11b9e8bf182f618b', N'd07a2c87a451434c99ab06296727ec4f', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'25f5443f19c34d99718a016d5f54112e', N'ee8626f80f7c2619917b6236f3a7f02b', N'6e73eb3c26099c191bf03852ee1310a1', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'27489816708b18859768dfed5945c405', N'a799c3b1b12dd3ed4bd046bfaef5fe6e', N'9502685863ab87f0ad1134142788a385', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'2779cdea8367fff37db26a42c1a1f531', N'f6817f48af4fb3af11b9e8bf182f618b', N'fef097f3903caf3a3c3a6efa8de43fbb', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'296f9c75ca0e172ae5ce4c1022c996df', N'646c628b2b8295fbdab2d34044de0354', N'732d48f8e0abe99fe6a23d18a3171cd1', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'29fb4d37aa29b9fa400f389237cf9fe7', N'ee8626f80f7c2619917b6236f3a7f02b', N'05b3c82ddb2536a4a5ee1a4c46b5abef', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'29fb6b0ad59a7e911c8d27e0bdc42d23', N'f6817f48af4fb3af11b9e8bf182f618b', N'9a90363f216a6a08f32eecb3f0bf12a3', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'2ad37346c1b83ddeebc008f6987b2227', N'f6817f48af4fb3af11b9e8bf182f618b', N'8d1ebd663688965f1fd86a2f0ead3416', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'2c462293cbb0eab7e8ae0a3600361b5f', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'9502685863ab87f0ad1134142788a385', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'2dc1a0eb5e39aaa131ddd0082a492d76', N'ee8626f80f7c2619917b6236f3a7f02b', N'08e6b9dc3c04489c8e1ff2ce6f105aa4', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'2ea2382af618ba7d1e80491a0185fb8a', N'ee8626f80f7c2619917b6236f3a7f02b', N'f23d9bfff4d9aa6b68569ba2cff38415', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'2fcfa2ac3dcfadc7c67107dae9a0de6d', N'ee8626f80f7c2619917b6236f3a7f02b', N'73678f9daa45ed17a3674131b03432fb', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'2fdaed22dfa4c8d4629e44ef81688c6a', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'aedbf679b5773c1f25e9f7b10111da73', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'300c462b7fec09e2ff32574ef8b3f0bd', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'2a470fc0c3954d9dbb61de6d80846549', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'326181da3248a62a05e872119a462be1', N'ee8626f80f7c2619917b6236f3a7f02b', N'3f915b2769fc80648e92d04e84ca059d', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'3369650f5072b330543f8caa556b1b33', N'e51758fa916c881624b046d26bd09230', N'a400e4f4d54f79bf5ce160ae432231af', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'35a7e156c20e93aa7e825fe514bf9787', N'e51758fa916c881624b046d26bd09230', N'c6cf95444d80435eb37b2f9db3971ae6', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'35ac7cae648de39eb56213ca1b649713', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'b1cb0a3fedf7ed0e4653cb5a229837ee', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'37112f4d372541e105473f18da3dc50d', N'ee8626f80f7c2619917b6236f3a7f02b', N'a400e4f4d54f79bf5ce160ae432231af', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'37789f70cd8bd802c4a69e9e1f633eaa', N'ee8626f80f7c2619917b6236f3a7f02b', N'ae4fed059f67086fd52a73d913cf473d', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'381504a717cb3ce77dcd4070c9689a7e', N'ee8626f80f7c2619917b6236f3a7f02b', N'4f84f9400e5e92c95f05b554724c2b58', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'38a2e55db0960262800576e34b3af44c', N'f6817f48af4fb3af11b9e8bf182f618b', N'5c2f42277948043026b7a14692456828', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'38dd7a19711e7ffe864232954c06fae9', N'e51758fa916c881624b046d26bd09230', N'd2bbf9ebca5a8fa2e227af97d2da7548', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'3b1886f727ac503c93fecdd06dcb9622', N'f6817f48af4fb3af11b9e8bf182f618b', N'c431130c0bc0ec71b0a5be37747bb36a', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'3de2a60c7e42a521fecf6fcc5cb54978', N'f6817f48af4fb3af11b9e8bf182f618b', N'2d83d62bd2544b8994c8f38cf17b0ddf', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'3e4e38f748b8d87178dd62082e5b7b60', N'f6817f48af4fb3af11b9e8bf182f618b', N'7960961b0063228937da5fa8dd73d371', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'3e563751942b0879c88ca4de19757b50', N'1750a8fb3e6d90cb7957c02de1dc8e59', N'58857ff846e61794c69208e9d3a85466', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'3f1d04075e3c3254666a4138106a4e51', N'f6817f48af4fb3af11b9e8bf182f618b', N'3fac0d3c9cd40fa53ab70d4c583821f8', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'412e2de37a35b3442d68db8dd2f3c190', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'f1cb187abf927c88b89470d08615f5ac', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'4204f91fb61911ba8ce40afa7c02369f', N'f6817f48af4fb3af11b9e8bf182f618b', N'3f915b2769fc80648e92d04e84ca059d', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'439568ff7db6f329bf6dd45b3dfc9456', N'f6817f48af4fb3af11b9e8bf182f618b', N'7593c9e3523a17bca83b8d7fe8a34e58', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'444126230885d5d38b8fa6072c9f43f8', N'f6817f48af4fb3af11b9e8bf182f618b', N'f780d0d3083d849ccbdb1b1baee4911d', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'445656dd187bd8a71605f4bbab1938a3', N'f6817f48af4fb3af11b9e8bf182f618b', N'020b06793e4de2eee0007f603000c769', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'44b5a73541bcb854dd5d38c6d1fb93a1', N'ee8626f80f7c2619917b6236f3a7f02b', N'418964ba087b90a84897b62474496b93', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'455cdb482457f529b79b479a2ff74427', N'f6817f48af4fb3af11b9e8bf182f618b', N'e1979bb53e9ea51cecc74d86fd9d2f64', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'459aa2e7021b435b4d65414cfbc71c66', N'e51758fa916c881624b046d26bd09230', N'4148ec82b6acd69f470bea75fe41c357', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'45a358bb738782d1a0edbf7485e81459', N'f6817f48af4fb3af11b9e8bf182f618b', N'0ac2ad938963b6c6d1af25477d5b8b51', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'4c0940badae3ef9231ee9d042338f2a4', N'e51758fa916c881624b046d26bd09230', N'2a470fc0c3954d9dbb61de6d80846549', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'4d56ce2f67c94b74a1d3abdbea340e42', N'ee8626f80f7c2619917b6236f3a7f02b', N'd86f58e7ab516d3bc6bfb1fe10585f97', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'4dab5a06acc8ef3297889872caa74747', N'f6817f48af4fb3af11b9e8bf182f618b', N'ffb423d25cc59dcd0532213c4a518261', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'4e0a37ed49524df5f08fc6593aee875c', N'f6817f48af4fb3af11b9e8bf182f618b', N'f23d9bfff4d9aa6b68569ba2cff38415', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'4ea403fc1d19feb871c8bdd9f94a4ecc', N'f6817f48af4fb3af11b9e8bf182f618b', N'2e42e3835c2b44ec9f7bc26c146ee531', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'4f254549d9498f06f4cc9b23f3e2c070', N'f6817f48af4fb3af11b9e8bf182f618b', N'93d5cfb4448f11e9916698e7f462b4b6', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'4f2fd4a190db856e21476de2704bbd99', N'f6817f48af4fb3af11b9e8bf182f618b', N'1a0811914300741f4e11838ff37a1d3a', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'4faad8ff93cb2b5607cd3d07c1b624ee', N'a799c3b1b12dd3ed4bd046bfaef5fe6e', N'70b8f33da5f39de1981bf89cf6c99792', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'504e326de3f03562cdd186748b48a8c7', N'f6817f48af4fb3af11b9e8bf182f618b', N'027aee69baee98a0ed2e01806e89c891', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'520b5989e6fe4a302a573d4fee12a40a', N'f6817f48af4fb3af11b9e8bf182f618b', N'6531cf3421b1265aeeeabaab5e176e6d', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'54fdf85e52807bdb32ce450814abc256', N'f6817f48af4fb3af11b9e8bf182f618b', N'cc50656cf9ca528e6f2150eba4714ad2', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'57c0b3a547b815ea3ec8e509b08948b3', N'1750a8fb3e6d90cb7957c02de1dc8e59', N'3f915b2769fc80648e92d04e84ca059d', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'593ee05c4fe4645c7826b7d5e14f23ec', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'8fb8172747a78756c11916216b8b8066', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'5affc85021fcba07d81c09a6fdfa8dc6', N'ee8626f80f7c2619917b6236f3a7f02b', N'078f9558cdeab239aecb2bda1a8ed0d1', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'5d230e6cd2935c4117f6cb9a7a749e39', N'f6817f48af4fb3af11b9e8bf182f618b', N'fc810a2267dd183e4ef7c71cc60f4670', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'5de6871fadb4fe1cdd28989da0126b07', N'f6817f48af4fb3af11b9e8bf182f618b', N'a400e4f4d54f79bf5ce160a3432231af', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'5e4015a9a641cbf3fb5d28d9f885d81a', N'f6817f48af4fb3af11b9e8bf182f618b', N'2dbbafa22cda07fa5d169d741b81fe12', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'5e634a89f75b7a421c02aecfd520325f', N'e51758fa916c881624b046d26bd09230', N'339329ed54cf255e1f9392e84f136901', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'5e74637c4bec048d1880ad0bd1b00552', N'e51758fa916c881624b046d26bd09230', N'a400e4f4d54f79bf5ce160a3432231af', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'5fc194b709336d354640fe29fefd65a3', N'a799c3b1b12dd3ed4bd046bfaef5fe6e', N'9ba60e626bf2882c31c488aba62b89f0', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'60eda4b4db138bdb47edbe8e10e71675', N'f6817f48af4fb3af11b9e8bf182f618b', N'fb07ca05a3e13674dbf6d3245956da2e', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'61835e48f3e675f7d3f5c9dd3a10dcf3', N'f6817f48af4fb3af11b9e8bf182f618b', N'f0675b52d89100ee88472b6800754a08', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'6451dac67ba4acafb570fd6a03f47460', N'ee8626f80f7c2619917b6236f3a7f02b', N'e3c13679c73a4f829bcff2aba8fd68b1', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'660fbc40bcb1044738f7cabdf1708c28', N'f6817f48af4fb3af11b9e8bf182f618b', N'b3c824fc22bd953e2eb16ae6914ac8f9', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'66b202f8f84fe766176b3f51071836ef', N'f6817f48af4fb3af11b9e8bf182f618b', N'1367a93f2c410b169faa7abcbad2f77c', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'6b605c261ffbc8ac8a98ae33579c8c78', N'f6817f48af4fb3af11b9e8bf182f618b', N'fba41089766888023411a978d13c0aa4', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'6c43fd3f10fdaf2a0646434ae68709b5', N'ee8626f80f7c2619917b6236f3a7f02b', N'540a2936940846cb98114ffb0d145cb8', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'6c74518eb6bb9a353f6a6c459c77e64b', N'f6817f48af4fb3af11b9e8bf182f618b', N'b4dfc7d5dd9e8d5b6dd6d4579b1aa559', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'6daddafacd7eccb91309530c17c5855d', N'f6817f48af4fb3af11b9e8bf182f618b', N'edfa74d66e8ea63ea432c2910837b150', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'6fb4c2142498dd6d5b6c014ef985cb66', N'f6817f48af4fb3af11b9e8bf182f618b', N'6e73eb3c26099c191bf03852ee1310a1', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'71a5f54a90aa8c7a250a38b7dba39f6f', N'ee8626f80f7c2619917b6236f3a7f02b', N'8fb8172747a78756c11916216b8b8066', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'737d35f582036cd18bfd4c8e5748eaa4', N'e51758fa916c881624b046d26bd09230', N'693ce69af3432bd00be13c3971a57961', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'7413acf23b56c906aedb5a36fb75bd3a', N'f6817f48af4fb3af11b9e8bf182f618b', N'a4fc7b64b01a224da066bb16230f9c5a', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'75002588591820806', N'16457350655250432', N'5129710648430592', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'75002588604403712', N'16457350655250432', N'5129710648430593', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'75002588612792320', N'16457350655250432', N'40238597734928384', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'75002588625375232', N'16457350655250432', N'57009744761589760', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'75002588633763840', N'16457350655250432', N'16392452747300864', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'75002588637958144', N'16457350655250432', N'16392767785668608', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'75002588650541056', N'16457350655250432', N'16439068543946752', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'76a54a8cc609754360bf9f57e7dbb2db', N'f6817f48af4fb3af11b9e8bf182f618b', N'c65321e57b7949b7a975313220de0422', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277779875336192', N'496138616573952', N'5129710648430592', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780043108352', N'496138616573952', N'5129710648430593', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780055691264', N'496138616573952', N'15701400130424832', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780064079872', N'496138616573952', N'16678126574637056', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780072468480', N'496138616573952', N'15701915807518720', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780076662784', N'496138616573952', N'15708892205944832', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780085051392', N'496138616573952', N'16678447719911424', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780089245696', N'496138616573952', N'25014528525733888', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780097634304', N'496138616573952', N'56898976661639168', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780135383040', N'496138616573952', N'40238597734928384', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780139577344', N'496138616573952', N'45235621697949696', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780147965952', N'496138616573952', N'45235787867885568', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780156354560', N'496138616573952', N'45235939278065664', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780164743168', N'496138616573952', N'43117268627886080', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780168937472', N'496138616573952', N'45236734832676864', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780181520384', N'496138616573952', N'45237010692050944', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780189908992', N'496138616573952', N'45237170029465600', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780198297600', N'496138616573952', N'57009544286441472', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780206686208', N'496138616573952', N'57009744761589760', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780215074816', N'496138616573952', N'57009981228060672', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780219269120', N'496138616573952', N'56309618086776832', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780227657728', N'496138616573952', N'57212882168844288', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780236046336', N'496138616573952', N'61560041605435392', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780244434944', N'496138616573952', N'61560275261722624', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780257017856', N'496138616573952', N'61560480518377472', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780265406464', N'496138616573952', N'44986029924421632', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780324126720', N'496138616573952', N'45235228800716800', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780332515328', N'496138616573952', N'45069342940860416', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780340903937', N'496138616573952', N'5129710648430594', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780349292544', N'496138616573952', N'16687383932047360', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780357681152', N'496138616573952', N'16689632049631232', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780366069760', N'496138616573952', N'16689745006432256', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780370264064', N'496138616573952', N'16689883993083904', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780374458369', N'496138616573952', N'16690313745666048', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780387041280', N'496138616573952', N'5129710648430595', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780395429888', N'496138616573952', N'16694861252005888', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780403818496', N'496138616573952', N'16695107491205120', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780412207104', N'496138616573952', N'16695243126607872', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780420595712', N'496138616573952', N'75002207560273920', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780428984320', N'496138616573952', N'76215889006956544', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780433178624', N'496138616573952', N'76216071333351424', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780441567232', N'496138616573952', N'76216264070008832', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780449955840', N'496138616573952', N'76216459709124608', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780458344448', N'496138616573952', N'76216594207870976', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780466733056', N'496138616573952', N'76216702639017984', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780475121664', N'496138616573952', N'58480609315524608', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780483510272', N'496138616573952', N'61394706252173312', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780491898880', N'496138616573952', N'61417744146370560', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780496093184', N'496138616573952', N'76606430504816640', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780504481792', N'496138616573952', N'76914082455752704', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780508676097', N'496138616573952', N'76607201262702592', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780517064704', N'496138616573952', N'39915540965232640', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780525453312', N'496138616573952', N'41370251991977984', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780538036224', N'496138616573952', N'45264987354042368', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780546424832', N'496138616573952', N'45265487029866496', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780554813440', N'496138616573952', N'45265762415284224', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780559007744', N'496138616573952', N'45265886315024384', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780567396352', N'496138616573952', N'45266070000373760', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780571590656', N'496138616573952', N'41363147411427328', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780579979264', N'496138616573952', N'41363537456533504', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780588367872', N'496138616573952', N'41364927394353152', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780596756480', N'496138616573952', N'41371711400054784', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780605145088', N'496138616573952', N'41469219249852416', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780613533696', N'496138616573952', N'39916171171991552', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780621922304', N'496138616573952', N'39918482854252544', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780630310912', N'496138616573952', N'41373430515240960', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780718391296', N'496138616573952', N'41375330996326400', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780722585600', N'496138616573952', N'63741744973352960', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780730974208', N'496138616573952', N'42082442672082944', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780739362816', N'496138616573952', N'41376192166629376', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780747751424', N'496138616573952', N'41377034236071936', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780756140032', N'496138616573952', N'56911328312299520', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780764528640', N'496138616573952', N'41378916912336896', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780768722944', N'496138616573952', N'63482475359244288', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780772917249', N'496138616573952', N'64290663792906240', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780785500160', N'496138616573952', N'66790433014943744', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780789694464', N'496138616573952', N'42087054753927168', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780798083072', N'496138616573952', N'67027338952445952', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780806471680', N'496138616573952', N'67027909637836800', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780810665985', N'496138616573952', N'67042515441684480', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780823248896', N'496138616573952', N'67082402312228864', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780827443200', N'496138616573952', N'16392452747300864', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780835831808', N'496138616573952', N'16392767785668608', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780840026112', N'496138616573952', N'16438800255291392', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780844220417', N'496138616573952', N'16438962738434048', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277780852609024', N'496138616573952', N'16439068543946752', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860062040064', N'496138616573953', N'5129710648430592', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860070428672', N'496138616573953', N'5129710648430593', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860078817280', N'496138616573953', N'40238597734928384', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860091400192', N'496138616573953', N'43117268627886080', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860099788800', N'496138616573953', N'57009744761589760', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860112371712', N'496138616573953', N'56309618086776832', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860120760320', N'496138616573953', N'44986029924421632', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860129148928', N'496138616573953', N'5129710648430594', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860141731840', N'496138616573953', N'5129710648430595', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860150120448', N'496138616573953', N'75002207560273920', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860158509056', N'496138616573953', N'58480609315524608', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860162703360', N'496138616573953', N'76606430504816640', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860171091968', N'496138616573953', N'76914082455752704', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860179480576', N'496138616573953', N'76607201262702592', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860187869184', N'496138616573953', N'39915540965232640', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860196257792', N'496138616573953', N'41370251991977984', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860204646400', N'496138616573953', N'41363147411427328', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860208840704', N'496138616573953', N'41371711400054784', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860213035009', N'496138616573953', N'39916171171991552', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860221423616', N'496138616573953', N'39918482854252544', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860225617920', N'496138616573953', N'41373430515240960', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860234006528', N'496138616573953', N'41375330996326400', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860242395136', N'496138616573953', N'63741744973352960', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860250783744', N'496138616573953', N'42082442672082944', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860254978048', N'496138616573953', N'41376192166629376', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860263366656', N'496138616573953', N'41377034236071936', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860271755264', N'496138616573953', N'56911328312299520', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860313698304', N'496138616573953', N'41378916912336896', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860322086912', N'496138616573953', N'63482475359244288', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860326281216', N'496138616573953', N'64290663792906240', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860334669824', N'496138616573953', N'66790433014943744', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860343058432', N'496138616573953', N'42087054753927168', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860347252736', N'496138616573953', N'67027338952445952', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860351447041', N'496138616573953', N'67027909637836800', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860359835648', N'496138616573953', N'67042515441684480', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860364029952', N'496138616573953', N'67082402312228864', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860368224256', N'496138616573953', N'16392452747300864', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860372418560', N'496138616573953', N'16392767785668608', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860376612865', N'496138616573953', N'16438800255291392', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860385001472', N'496138616573953', N'16438962738434048', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'77277860389195776', N'496138616573953', N'16439068543946752', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'7750f9be48ee09cd561fce718219a3e2', N'ee8626f80f7c2619917b6236f3a7f02b', N'882a73768cfd7f78f3a37584f7299656', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'7a5d31ba48fe3fb1266bf186dc5f7ba7', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'58857ff846e61794c69208e9d3a85466', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'7a6bca9276c128309c80d21e795c66c6', N'f6817f48af4fb3af11b9e8bf182f618b', N'54097c6a3cf50fad0793a34beff1efdf', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'7ca833caa5eac837b7200d8b6de8b2e3', N'f6817f48af4fb3af11b9e8bf182f618b', N'fedfbf4420536cacc0218557d263dfea', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'7d2ea745950be3357747ec7750c31c57', N'ee8626f80f7c2619917b6236f3a7f02b', N'2a470fc0c3954d9dbb61de6d80846549', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'7de42bdc0b8c5446b7d428c66a7abc12', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'54dd5457a3190740005c1bfec55b1c34', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'7e19d90cec0dd87aaef351b9ff8f4902', N'646c628b2b8295fbdab2d34044de0354', N'f9d3f4f27653a71c52faa9fb8070fbe7', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'7f862c47003eb20e8bad05f506371f92', N'ee8626f80f7c2619917b6236f3a7f02b', N'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'812ed54661b1a24b81b58974691a73f5', N'e51758fa916c881624b046d26bd09230', N'e6bfd1fcabfd7942fdd05f076d1dad38', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'83f704524b21b6a3ae324b8736c65333', N'ee8626f80f7c2619917b6236f3a7f02b', N'7ac9eb9ccbde2f7a033cd4944272bf1e', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'84d32474316a43b01256d6644e6e7751', N'ee8626f80f7c2619917b6236f3a7f02b', N'ec8d607d0156e198b11853760319c646', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'84eac2f113c23737128fb099d1d1da89', N'f6817f48af4fb3af11b9e8bf182f618b', N'03dc3d93261dda19fc86dd7ca486c6cf', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'85755a6c0bdff78b3860b52d35310c7f', N'e51758fa916c881624b046d26bd09230', N'c65321e57b7949b7a975313220de0422', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'86060e2867a5049d8a80d9fe5d8bc28b', N'f6817f48af4fb3af11b9e8bf182f618b', N'765dd244f37b804e3d00f475fd56149b', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'8703a2410cddb713c33232ce16ec04b9', N'ee8626f80f7c2619917b6236f3a7f02b', N'1367a93f2c410b169faa7abcbad2f77c', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'884f147c20e003cc80ed5b7efa598cbe', N'f6817f48af4fb3af11b9e8bf182f618b', N'e5973686ed495c379d829ea8b2881fc6', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'885c1a827383e5b2c6c4f8ca72a7b493', N'ee8626f80f7c2619917b6236f3a7f02b', N'4148ec82b6acd69f470bea75fe41c357', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'8a60df8d8b4c9ee5fa63f48aeee3ec00', N'1750a8fb3e6d90cb7957c02de1dc8e59', N'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'8b09925bdc194ab7f3559cd3a7ea0507', N'f6817f48af4fb3af11b9e8bf182f618b', N'ebb9d82ea16ad864071158e0c449d186', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'8b1e326791375f325d3e6b797753b65e', N'ee8626f80f7c2619917b6236f3a7f02b', N'2dbbafa22cda07fa5d169d741b81fe12', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'8ce1022dac4e558ff9694600515cf510', N'1750a8fb3e6d90cb7957c02de1dc8e59', N'08e6b9dc3c04489c8e1ff2ce6f105aa4', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'8d154c2382a8ae5c8d1b84bd38df2a93', N'f6817f48af4fb3af11b9e8bf182f618b', N'd86f58e7ab516d3bc6bfb1fe10585f97', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'8d848ca7feec5b7ebb3ecb32b2c8857a', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'4148ec82b6acd69f470bea75fe41c357', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'8dd64f65a1014196078d0882f767cd85', N'f6817f48af4fb3af11b9e8bf182f618b', N'e3c13679c73a4f829bcff2aba8fd68b1', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'8e3dc1671abad4f3c83883b194d2e05a', N'f6817f48af4fb3af11b9e8bf182f618b', N'b1cb0a3fedf7ed0e4653cb5a229837ee', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'8eec2c510f1ac9c5eee26c041b1f00ca', N'ee8626f80f7c2619917b6236f3a7f02b', N'58857ff846e61794c69208e9d3a85466', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'8f762ff80253f634b08cf59a77742ba4', N'ee8626f80f7c2619917b6236f3a7f02b', N'9502685863ab87f0ad1134142788a385', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'903b790e6090414343502c6dc393b7c9', N'ee8626f80f7c2619917b6236f3a7f02b', N'de13e0f6328c069748de7399fcc1dbbd', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'905bf419332ebcb83863603b3ebe30f0', N'f6817f48af4fb3af11b9e8bf182f618b', N'8fb8172747a78756c11916216b8b8066', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'90996d56357730e173e636b99fc48bea', N'ee8626f80f7c2619917b6236f3a7f02b', N'fb07ca05a3e13674dbf6d3245956da2e', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'90e1c607a0631364eec310f3cc4acebd', N'ee8626f80f7c2619917b6236f3a7f02b', N'4f66409ef3bbd69c1d80469d6e2a885e', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'9264104cee9b10c96241d527b2d0346d', N'1750a8fb3e6d90cb7957c02de1dc8e59', N'54dd5457a3190740005c1bfec55b1c34', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'9380121ca9cfee4b372194630fce150e', N'f6817f48af4fb3af11b9e8bf182f618b', N'65a8f489f25a345836b7f44b1181197a', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'94911fef73a590f6824105ebf9b6cab3', N'f6817f48af4fb3af11b9e8bf182f618b', N'8b3bff2eee6f1939147f5c68292a1642', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'9700d20dbc1ae3cbf7de1c810b521fe6', N'f6817f48af4fb3af11b9e8bf182f618b', N'ec8d607d0156e198b11853760319c646', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'980171fda43adfe24840959b1d048d4d', N'f6817f48af4fb3af11b9e8bf182f618b', N'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'987c23b70873bd1d6dca52f30aafd8c2', N'f6817f48af4fb3af11b9e8bf182f618b', N'00a2a0ae65cdca5e93209cdbde97cbe6', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'98f02353f91dd569e3c6b8fd6b4f4034', N'ee8626f80f7c2619917b6236f3a7f02b', N'6531cf3421b1265aeeeabaab5e176e6d', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'9b2ad767f9861e64a20b097538feafd3', N'f6817f48af4fb3af11b9e8bf182f618b', N'73678f9daa45ed17a3674131b03432fb', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'9d8772c310b675ae43eacdbc6c7fa04a', N'a799c3b1b12dd3ed4bd046bfaef5fe6e', N'1663f3faba244d16c94552f849627d84', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'9d980ec0489040e631a9c24a6af42934', N'f6817f48af4fb3af11b9e8bf182f618b', N'05b3c82ddb2536a4a5ee1a4c46b5abef', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'9f8311ecccd44e079723098cf2ffe1cc', N'1750a8fb3e6d90cb7957c02de1dc8e59', N'693ce69af3432bd00be13c3971a57961', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'a034ed7c38c996b880d3e78f586fe0ae', N'f6817f48af4fb3af11b9e8bf182f618b', N'c89018ea6286e852b424466fd92a2ffc', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'a098e2acc3f90316f161f6648d085640', N'ee8626f80f7c2619917b6236f3a7f02b', N'e6bfd1fcabfd7942fdd05f076d1dad38', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'a307a9349ad64a2eff8ab69582fa9be4', N'f6817f48af4fb3af11b9e8bf182f618b', N'0620e402857b8c5b605e1ad9f4b89350', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'a5d25fdb3c62904a8474182706ce11a0', N'f6817f48af4fb3af11b9e8bf182f618b', N'418964ba087b90a84897b62474496b93', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'a66feaaf128417ad762e946abccf27ec', N'ee8626f80f7c2619917b6236f3a7f02b', N'c6cf95444d80435eb37b2f9db3971ae6', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'a72c31a3913c736d4eca11d13be99183', N'e51758fa916c881624b046d26bd09230', N'a44c30db536349e91106223957e684eb', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'a7ab87eac0f8fafa2efa4b1f9351923f', N'ee8626f80f7c2619917b6236f3a7f02b', N'fedfbf4420536cacc0218557d263dfea', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'abdc324a2df9f13ee6e73d44c6e62bc8', N'ee8626f80f7c2619917b6236f3a7f02b', N'f1cb187abf927c88b89470d08615f5ac', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'acacce4417e5d7f96a9c3be2ded5b4be', N'f6817f48af4fb3af11b9e8bf182f618b', N'f9d3f4f27653a71c52faa9fb8070fbe7', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'ae1852fb349d8513eb3fdc173da3ee56', N'f6817f48af4fb3af11b9e8bf182f618b', N'8d4683aacaa997ab86b966b464360338', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'aefc8c22e061171806e59cd222f6b7e1', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'e8af452d8948ea49d37c934f5100ae6a', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'af60ac8fafd807ed6b6b354613b9ccbc', N'f6817f48af4fb3af11b9e8bf182f618b', N'58857ff846e61794c69208e9d3a85466', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'b0c8a20800b8bf1ebdd7be473bceb44f', N'f6817f48af4fb3af11b9e8bf182f618b', N'58b9204feaf07e47284ddb36cd2d8468', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'b128ebe78fa5abb54a3a82c6689bdca3', N'f6817f48af4fb3af11b9e8bf182f618b', N'aedbf679b5773c1f25e9f7b10111da73', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'b131ebeafcfd059f3c7e542606ea9ff5', N'ee8626f80f7c2619917b6236f3a7f02b', N'e5973686ed495c379d829ea8b2881fc6', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'b21b07951bb547b09cc85624a841aea0', N'f6817f48af4fb3af11b9e8bf182f618b', N'4356a1a67b564f0988a484f5531fd4d9', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'b2b2dcfff6986d3d7f890ea62d474651', N'ee8626f80f7c2619917b6236f3a7f02b', N'200006f0edf145a2b50eacca07585451', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'b495a46fa0e0d4637abe0db7fd12fe1a', N'ee8626f80f7c2619917b6236f3a7f02b', N'717f6bee46f44a3897eca9abd6e2ec44', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'b64c4ab9cd9a2ea8ac1e9db5fb7cf522', N'f6817f48af4fb3af11b9e8bf182f618b', N'2aeddae571695cd6380f6d6d334d6e7d', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'bbec16ad016efec9ea2def38f4d3d9dc', N'f6817f48af4fb3af11b9e8bf182f618b', N'13212d3416eb690c2e1d5033166ff47a', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'bd30561f141f07827b836878137fddd8', N'e51758fa916c881624b046d26bd09230', N'65a8f489f25a345836b7f44b1181197a', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'be8e5a9080569e59863f20c4c57a8e22', N'f6817f48af4fb3af11b9e8bf182f618b', N'22d6a3d39a59dd7ea9a30acfa6bfb0a5', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'bea2986432079d89203da888d99b3f16', N'f6817f48af4fb3af11b9e8bf182f618b', N'54dd5457a3190740005c1bfec55b1c34', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'c09373ebfc73fb5740db5ff02cba4f91', N'f6817f48af4fb3af11b9e8bf182f618b', N'339329ed54cf255e1f9392e84f136901', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'c56fb1658ee5f7476380786bf5905399', N'f6817f48af4fb3af11b9e8bf182f618b', N'de13e0f6328c069748de7399fcc1dbbd', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'c689539d20a445b0896270290c58d01f', N'e51758fa916c881624b046d26bd09230', N'13212d3416eb690c2e1d5033166ff47a', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'c6fee38d293b9d0596436a0cbd205070', N'f6817f48af4fb3af11b9e8bf182f618b', N'4f84f9400e5e92c95f05b554724c2b58', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'c8571839e6b14796e661f3e2843b80b6', N'ee8626f80f7c2619917b6236f3a7f02b', N'45c966826eeff4c99b8f8ebfe74511fc', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'c90b0b01c7ca454d2a1cb7408563e696', N'f6817f48af4fb3af11b9e8bf182f618b', N'882a73768cfd7f78f3a37584f7299656', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'c9d35261cccd67ab2932107a0967a7d7', N'e51758fa916c881624b046d26bd09230', N'b4dfc7d5dd9e8d5b6dd6d4579b1aa559', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'ced80e43584ce15e97bb07298e93020d', N'e51758fa916c881624b046d26bd09230', N'45c966826eeff4c99b8f8ebfe74511fc', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'cf1feb1bf69eafc982295ad6c9c8d698', N'f6817f48af4fb3af11b9e8bf182f618b', N'a2b11669e98c5fe54a53c3e3c4f35d14', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'cf2ef620217673e4042f695743294f01', N'f6817f48af4fb3af11b9e8bf182f618b', N'717f6bee46f44a3897eca9abd6e2ec44', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'cf43895aef7fc684669483ab00ef2257', N'f6817f48af4fb3af11b9e8bf182f618b', N'700b7f95165c46cc7a78bf227aa8fed3', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'd03d792b0f312e7b490afc5cec3dd6c5', N'e51758fa916c881624b046d26bd09230', N'8fb8172747a78756c11916216b8b8066', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'd281a95b8f293d0fa2a136f46c4e0b10', N'f6817f48af4fb3af11b9e8bf182f618b', N'5c8042bd6c601270b2bbd9b20bccc68b', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'd37ad568e26f46ed0feca227aa9c2ffa', N'f6817f48af4fb3af11b9e8bf182f618b', N'9502685863ab87f0ad1134142788a385', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'd3ddcacee1acdfaa0810618b74e38ef2', N'f6817f48af4fb3af11b9e8bf182f618b', N'c6cf95444d80435eb37b2f9db3971ae6', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'd3fe195d59811531c05d31d8436f5c8b', N'1750a8fb3e6d90cb7957c02de1dc8e59', N'e8af452d8948ea49d37c934f5100ae6a', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'd5267597a4450f06d49d2fb63859641a', N'e51758fa916c881624b046d26bd09230', N'2dbbafa22cda07fa5d169d741b81fe12', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'd83282192a69514cfe6161b3087ff962', N'f6817f48af4fb3af11b9e8bf182f618b', N'53a9230444d33de28aa11cc108fb1dba', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'd8a5c9079df12090e108e21be94b4fd7', N'f6817f48af4fb3af11b9e8bf182f618b', N'078f9558cdeab239aecb2bda1a8ed0d1', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'dbc5dd836d45c5bc7bc94b22596ab956', N'f6817f48af4fb3af11b9e8bf182f618b', N'1939e035e803a99ceecb6f5563570fb2', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'dc83bb13c0e8c930e79d28b2db26f01f', N'f6817f48af4fb3af11b9e8bf182f618b', N'63b551e81c5956d5c861593d366d8c57', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'dc8fd3f79bd85bd832608b42167a1c71', N'f6817f48af4fb3af11b9e8bf182f618b', N'91c23960fab49335831cf43d820b0a61', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'de82e89b8b60a3ea99be5348f565c240', N'f6817f48af4fb3af11b9e8bf182f618b', N'56ca78fe0f22d815fabc793461af67b8', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'de8f43229e351d34af3c95b1b9f0a15d', N'f6817f48af4fb3af11b9e8bf182f618b', N'a400e4f4d54f79bf5ce160ae432231af', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'e258ca8bf7ee168b93bfee739668eb15', N'ee8626f80f7c2619917b6236f3a7f02b', N'fb367426764077dcf94640c843733985', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'e339f7db7418a4fd2bd2c113f1182186', N'ee8626f80f7c2619917b6236f3a7f02b', N'b1cb0a3fedf7ed0e4653cb5a229837ee', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'e3e922673f4289b18366bb51b6200f17', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'45c966826eeff4c99b8f8ebfe74511fc', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'e7467726ee72235baaeb47df04a35e73', N'f6817f48af4fb3af11b9e8bf182f618b', N'e08cb190ef230d5d4f03824198773950', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'eaef4486f1c9b0408580bbfa2037eb66', N'f6817f48af4fb3af11b9e8bf182f618b', N'2a470fc0c3954d9dbb61de6d80846549', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'ec4bc97829ab56afd83f428b6dc37ff6', N'f6817f48af4fb3af11b9e8bf182f618b', N'200006f0edf145a2b50eacca07585451', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'ec846a3f85fdb6813e515be71f11b331', N'f6817f48af4fb3af11b9e8bf182f618b', N'732d48f8e0abe99fe6a23d18a3171cd1', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'ec93bb06f5be4c1f19522ca78180e2ef', N'f6817f48af4fb3af11b9e8bf182f618b', N'265de841c58907954b8877fb85212622', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'ecdd72fe694e6bba9c1d9fc925ee79de', N'f6817f48af4fb3af11b9e8bf182f618b', N'45c966826eeff4c99b8f8ebfe74511fc', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'edefd8d468f5727db465cf1b860af474', N'f6817f48af4fb3af11b9e8bf182f618b', N'6ad53fd1b220989a8b71ff482d683a5a', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'ef8bdd20d29447681ec91d3603e80c7b', N'f6817f48af4fb3af11b9e8bf182f618b', N'ae4fed059f67086fd52a73d913cf473d', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'f12b6c90e8913183d7ca547c66600891', N'e51758fa916c881624b046d26bd09230', N'aedbf679b5773c1f25e9f7b10111da73', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'f177acac0276329dc66af0c9ad30558a', N'f6817f48af4fb3af11b9e8bf182f618b', N'c2c356bf4ddd29975347a7047a062440', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'f17ab8ad1e71341140857ef4914ef297', N'21c5a3187763729408b40afb0d0fdfa8', N'732d48f8e0abe99fe6a23d18a3171cd1', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'f99f99cc3bc27220cdd4f5aced33b7d7', N'f6817f48af4fb3af11b9e8bf182f618b', N'655563cd64b75dcf52ef7bcdd4836953', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'fafe73c4448b977fe42880a6750c3ee8', N'f6817f48af4fb3af11b9e8bf182f618b', N'9cb91b8851db0cf7b19d7ecc2a8193dd', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'fced905c7598973b970d42d833f73474', N'f6817f48af4fb3af11b9e8bf182f618b', N'4875ebe289344e14844d8e3ea1edd73f', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'fd86f6b08eb683720ba499f9d9421726', N'ee8626f80f7c2619917b6236f3a7f02b', N'693ce69af3432bd00be13c3971a57961', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'fd97963dc5f144d3aecfc7045a883427', N'f6817f48af4fb3af11b9e8bf182f618b', N'043780fa095ff1b2bec4dc406d76f023', NULL)
GO

INSERT INTO [dbo].[sys_role_permission]  VALUES (N'fed41a4671285efb266cd404f24dd378', N'52b0cf022ac4187b2a70dfa4f8b2d940', N'00a2a0ae65cdca5e93209cdbde97cbe6', NULL)
GO


-- ----------------------------
-- Table structure for sys_sms
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_sms]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_sms]
GO

CREATE TABLE [dbo].[sys_sms] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [es_title] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [es_type] nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [es_receiver] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [es_param] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [es_content] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [es_send_time] datetime2(7)  NULL,
  [es_send_status] nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [es_send_num] int  NULL,
  [es_result] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [remark] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[sys_sms] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'消息标题',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'es_title'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发送方式：1短信 2邮件 3微信',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'es_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接收人',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'es_receiver'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发送所需参数Json格式',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'es_param'
GO

EXEC sp_addextendedproperty
'MS_Description', N'推送内容',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'es_content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'推送时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'es_send_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'推送状态 0未推送 1推送成功 2推送失败 -1失败不再发送',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'es_send_status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发送次数 超过5次不再发送',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'es_send_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'推送失败原因',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'es_result'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms',
'COLUMN', N'update_time'
GO


-- ----------------------------
-- Records of sys_sms
-- ----------------------------
INSERT INTO [dbo].[sys_sms]  VALUES (N'402880e74dc2f361014dc2f8411e0001', N'消息推送测试333', N'2', N'411944058@qq.com', NULL, N'张三你好，你的订单4028d881436d514601436d521ae80165已付款!', N'2015-06-05 17:06:01.0000000', N'3', NULL, NULL, N'认证失败错误的用户名或者密码', N'admin', N'2015-06-05 17:05:59.0000000', N'admin', N'2015-11-19 22:30:39.0000000')
GO

INSERT INTO [dbo].[sys_sms]  VALUES (N'402880ea533647b00153364e74770001', N'发个问候', N'3', N'admin', NULL, N'你好', N'2016-03-02 00:00:00.0000000', N'2', NULL, NULL, NULL, N'admin', N'2016-03-02 15:50:24.0000000', N'admin', N'2018-07-05 19:53:01.0000000')
GO

INSERT INTO [dbo].[sys_sms]  VALUES (N'402880ee5a17e711015a17f3188e013f', N'消息推送测试333', N'2', N'411944058@qq.com', NULL, N'张三你好，你的订单4028d881436d514601436d521ae80165已付款!', NULL, N'2', NULL, NULL, NULL, N'admin', N'2017-02-07 17:41:31.0000000', N'admin', N'2017-03-10 11:37:05.0000000')
GO

INSERT INTO [dbo].[sys_sms]  VALUES (N'402880f05ab649b4015ab64b9cd80012', N'消息推送测试333', N'2', N'411944058@qq.com', NULL, N'张三你好，你的订单4028d881436d514601436d521ae80165已付款!', N'2017-11-16 15:58:15.0000000', N'3', NULL, NULL, NULL, N'admin', N'2017-03-10 11:38:13.0000000', N'admin', N'2017-07-31 17:24:54.0000000')
GO

INSERT INTO [dbo].[sys_sms]  VALUES (N'402880f05ab7b035015ab7c4462c0004', N'消息推送测试333', N'2', N'411944058@qq.com', NULL, N'张三你好，你的订单4028d881436d514601436d521ae80165已付款!', N'2017-11-16 15:58:15.0000000', N'3', NULL, NULL, NULL, N'admin', N'2017-03-10 18:29:37.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_sms]  VALUES (N'402881f3646a472b01646a4a5af00001', N'催办：HR审批', N'3', N'admin', NULL, N'admin，您好！
请前待办任务办理事项！HR审批


===========================
此消息由系统发出', N'2018-07-05 19:53:35.0000000', N'2', NULL, NULL, NULL, N'admin', N'2018-07-05 19:53:35.0000000', N'admin', N'2018-07-07 13:45:24.0000000')
GO

INSERT INTO [dbo].[sys_sms]  VALUES (N'402881f3647da06c01647da43a940014', N'催办：HR审批', N'3', N'admin', NULL, N'admin，您好！
请前待办任务办理事项！HR审批


===========================
此消息由系统发出', N'2018-07-09 14:04:32.0000000', N'2', NULL, NULL, NULL, N'admin', N'2018-07-09 14:04:32.0000000', N'admin', N'2018-07-09 18:51:30.0000000')
GO


-- ----------------------------
-- Table structure for sys_sms_template
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_sms_template]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_sms_template]
GO

CREATE TABLE [dbo].[sys_sms_template] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [template_name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [template_code] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [template_type] nvarchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [template_content] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [template_test_json] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_sms_template] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms_template',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板标题',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms_template',
'COLUMN', N'template_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板CODE',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms_template',
'COLUMN', N'template_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板类型：1短信 2邮件 3微信',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms_template',
'COLUMN', N'template_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板内容',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms_template',
'COLUMN', N'template_content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板测试json',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms_template',
'COLUMN', N'template_test_json'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms_template',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms_template',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms_template',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_sms_template',
'COLUMN', N'update_by'
GO


-- ----------------------------
-- Records of sys_sms_template
-- ----------------------------
INSERT INTO [dbo].[sys_sms_template]  VALUES (N'1199606397416775681', N'系统消息通知', N'sys_ts_note', N'4', N'<h1>&nbsp; &nbsp; 系统通知</h1>
<ul>
<li>通知时间：&nbsp; ${ts_date}</li>
<li>通知内容：&nbsp; ${ts_content}</li>
</ul>', NULL, N'2019-11-27 16:30:27.0000000', N'admin', N'2019-11-27 19:36:50.0000000', N'admin')
GO

INSERT INTO [dbo].[sys_sms_template]  VALUES (N'1199615897335095298', N'流程催办', N'bpm_cuiban', N'4', N'<h1>&nbsp; &nbsp;流程催办提醒</h1>
<ul>
<li>流程名称：&nbsp; ${bpm_name}</li>
<li>催办任务：&nbsp; ${bpm_task}</li>
<li>催办时间 :&nbsp; &nbsp; ${datetime}</li>
<li>催办内容 :&nbsp; &nbsp; ${remark}</li>
</ul>', NULL, N'2019-11-27 17:08:12.0000000', N'admin', N'2019-11-27 19:36:45.0000000', N'admin')
GO

INSERT INTO [dbo].[sys_sms_template]  VALUES (N'1199648914107625473', N'流程办理超时提醒', N'bpm_chaoshi_tip', N'4', N'<h1>&nbsp; &nbsp;流程办理超时提醒</h1>
<ul>
<li>&nbsp; &nbsp;超时提醒信息：&nbsp; &nbsp; 您有待处理的超时任务，请尽快处理！</li>
<li>&nbsp; &nbsp;超时任务标题：&nbsp; &nbsp; ${title}</li>
<li>&nbsp; &nbsp;超时任务节点：&nbsp; &nbsp; ${task}</li>
<li>&nbsp; &nbsp;任务处理人：&nbsp; &nbsp; &nbsp; &nbsp;${user}</li>
<li>&nbsp; &nbsp;任务开始时间：&nbsp; &nbsp; ${time}</li>
</ul>', NULL, N'2019-11-27 19:19:24.0000000', N'admin', N'2019-11-27 19:36:37.0000000', N'admin')
GO

INSERT INTO [dbo].[sys_sms_template]  VALUES (N'4028608164691b000164693108140003', N'催办：${taskName}', N'SYS001', N'3', N'${userName}，您好！
请前待办任务办理事项！${taskName}


===========================
此消息由系统发出', N'{
"taskName":"HR审批",
"userName":"admin"
}', N'2018-07-05 14:46:18.0000000', N'admin', N'2018-07-05 18:31:34.0000000', N'admin')
GO


-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user]
GO

CREATE TABLE [dbo].[sys_user] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [username] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [realname] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [password] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [salt] nvarchar(45) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [avatar] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [birthday] datetime2(7)  NULL,
  [sex] tinyint  NULL,
  [email] nvarchar(45) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [phone] nvarchar(45) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [org_code] nvarchar(64) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] tinyint  NULL,
  [del_flag] tinyint  NULL,
  [activiti_sync] tinyint  NULL,
  [work_no] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [post] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [telephone] nvarchar(45) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [identity] tinyint  NULL,
  [depart_ids] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_user] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'登录账号',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
'MS_Description', N'真实姓名',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'realname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'md5密码盐',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'salt'
GO

EXEC sp_addextendedproperty
'MS_Description', N'头像',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'avatar'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生日',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'birthday'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别(0-默认未知,1-男,2-女)',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'sex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'电子邮件',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'电话',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'phone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'机构编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'org_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别(1-正常,2-冻结)',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除状态(0-正常,1-已删除)',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'del_flag'
GO

EXEC sp_addextendedproperty
'MS_Description', N'同步工作流引擎(1-同步,0-不同步)',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'activiti_sync'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工号，唯一键',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'work_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'职务，关联职务表',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'post'
GO

EXEC sp_addextendedproperty
'MS_Description', N'座机号',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'telephone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'身份（1普通成员 2上级）',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'identity'
GO

EXEC sp_addextendedproperty
'MS_Description', N'负责部门',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'depart_ids'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户表',
'SCHEMA', N'dbo',
'TABLE', N'sys_user'
GO


-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO [dbo].[sys_user]  VALUES (N'42d153bffeea74f72a9c1697874fa4a7', N'test22', N'23232', N'ac52e15671a377cf', N'5FMD48RM', N'user/20190314/ly-plate-e_1552531617500.png', N'2019-02-09 00:00:00.0000000', N'1', N'zhangdaiscott@163.com', N'18611782222', NULL, N'1', N'0', N'1', NULL, NULL, NULL, N'admin', N'2019-01-26 18:01:10.0000000', N'admin', N'2019-03-23 15:05:50.0000000', NULL, NULL)
GO

INSERT INTO [dbo].[sys_user]  VALUES (N'a75d45a015c44384a04449ee80dc3503', N'jeecg', N'jeecg', N'3dd8371f3cf8240e', N'vDDkDzrK', N'user/20190220/e1fe9925bc315c60addea1b98eb1cb1349547719_1550656892940.jpg', NULL, N'2', NULL, NULL, N'A02A01', N'1', N'0', N'1', N'jg002', N'', NULL, N'admin', N'2019-02-13 16:02:36.0000000', N'admin', N'2020-02-25 10:03:57.0000000', N'1', N'')
GO

INSERT INTO [dbo].[sys_user]  VALUES (N'e9ca23d68d884d4ebb19d07889727dae', N'admin', N'管理员', N'cb362cfeefbf3d8d', N'RCGTeGiH', N'temp/11_1582468686154.jpg', N'2018-12-05 00:00:00.0000000', N'1', N'11@qq.com', N'18566666661', N'A01', N'1', N'0', N'1', N'111', N'', NULL, NULL, N'2038-06-21 17:54:10.0000000', N'admin', N'2020-02-23 22:44:00.0000000', N'2', N'c6d7cb4deeac411cb3384b1b31278596')
GO

INSERT INTO [dbo].[sys_user]  VALUES (N'f0019fdebedb443c98dcb17d88222c38', N'zhagnxiao', N'张小红', N'f898134e5e52ae11a2ffb2c3b57a4e90', N'go3jJ4zX', N'user/20190401/20180607175028Fn1Lq7zw_1554118444672.png', N'2019-04-01 00:00:00.0000000', NULL, NULL, NULL, NULL, N'1', N'0', N'1', NULL, NULL, NULL, N'admin', N'2023-10-01 19:34:10.0000000', N'admin', N'2019-04-10 22:00:22.0000000', NULL, NULL)
GO


-- ----------------------------
-- Table structure for sys_user_agent
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user_agent]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user_agent]
GO

CREATE TABLE [dbo].[sys_user_agent] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [user_name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [agent_user_name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [start_time] datetime2(7)  NULL,
  [end_time] datetime2(7)  NULL,
  [status] nvarchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [sys_org_code] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sys_company_code] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_user_agent] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'序号',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_agent',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_agent',
'COLUMN', N'user_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代理人用户名',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_agent',
'COLUMN', N'agent_user_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代理开始时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_agent',
'COLUMN', N'start_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代理结束时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_agent',
'COLUMN', N'end_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态0无效1有效',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_agent',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_agent',
'COLUMN', N'create_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_agent',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_agent',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_agent',
'COLUMN', N'update_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_agent',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_agent',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属部门',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_agent',
'COLUMN', N'sys_org_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属公司',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_agent',
'COLUMN', N'sys_company_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户代理人设置',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_agent'
GO


-- ----------------------------
-- Table structure for sys_user_depart
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user_depart]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user_depart]
GO

CREATE TABLE [dbo].[sys_user_depart] (
  [ID] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [user_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [dep_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_user_depart] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_depart',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_depart',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_depart',
'COLUMN', N'dep_id'
GO


-- ----------------------------
-- Records of sys_user_depart
-- ----------------------------
INSERT INTO [dbo].[sys_user_depart]  VALUES (N'0c42ba309c2c4cad35836ec2336676fa', N'42d153bffeea74f72a9c1697874fa4a7', N'6d35e179cd814e3299bd588ea7daed3f')
GO

INSERT INTO [dbo].[sys_user_depart]  VALUES (N'1232124039478185985', N'a75d45a015c44384a04449ee80dc3503', N'a7d7e77e06c84325a40932163adcdaa6')
GO

INSERT INTO [dbo].[sys_user_depart]  VALUES (N'1f3a0267811327b9eca86b0cc2b956f3', N'bcbe1290783a469a83ae3bd8effe15d4', N'5159cde220114246b045e574adceafe9')
GO

INSERT INTO [dbo].[sys_user_depart]  VALUES (N'1231590533597499393', N'e9ca23d68d884d4ebb19d07889727dae', N'c6d7cb4deeac411cb3384b1b31278596')
GO

INSERT INTO [dbo].[sys_user_depart]  VALUES (N'ac52f23ae625eb6560c9227170b88166', N'f0019fdebedb443c98dcb17d88222c38', N'57197590443c44f083d42ae24ef26a2c')
GO

INSERT INTO [dbo].[sys_user_depart]  VALUES (N'179660a8b9a122f66b73603799a10924', N'f0019fdebedb443c98dcb17d88222c38', N'67fc001af12a4f9b8458005d3f19934a')
GO


-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user_role]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user_role]
GO

CREATE TABLE [dbo].[sys_user_role] (
  [id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [user_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [role_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_user_role] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role',
'COLUMN', N'user_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色id',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role',
'COLUMN', N'role_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户角色表',
'SCHEMA', N'dbo',
'TABLE', N'sys_user_role'
GO


-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO [dbo].[sys_user_role]  VALUES (N'b3ffd9311a1ca296c44e2409b547384f', N'01b802058ea94b978a2c96f4807f6b48', N'1')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'0ede6d23d53bc7dc990346ff14faabee', N'3db4cf42353f4e868b7ccfeef90505d2', N'ee8626f80f7c2619917b6236f3a7f02b')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'e78d210d24aaff48e0a736e2ddff4cdc', N'3e177fede453430387a8279ced685679', N'ee8626f80f7c2619917b6236f3a7f02b')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'f2de3ae7b5efd8345581aa802a6675d6', N'41b1be8d4c52023b0798f51164ca682d', N'e51758fa916c881624b046d26bd09230')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'6f9da7310489bac1e5f95e0efe92b4ce', N'42d153bffeea74f72a9c1697874fa4a7', N'e51758fa916c881624b046d26bd09230')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'f2922a38ba24fb53749e45a0c459adb3', N'439ae3e9bcf7418583fcd429cadb1d72', N'1')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'f72c6190b0722e798147e73c776c6ac9', N'439ae3e9bcf7418583fcd429cadb1d72', N'ee8626f80f7c2619917b6236f3a7f02b')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'ee45d0343ecec894b6886effc92cb0b7', N'4d8fef4667574b24a9ccfedaf257810c', N'f6817f48af4fb3af11b9e8bf182f618b')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'be2639167ede09379937daca7fc3bb73', N'526f300ab35e44faaed54a9fb0742845', N'ee8626f80f7c2619917b6236f3a7f02b')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'31af310584bd5795f76b1fe8c38294a0', N'70f5dcf03f36471dabba81381919291f', N'e51758fa916c881624b046d26bd09230')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'8d7846ec783e157174e4ce2949231a65', N'7ee6630e89d17afbf6d12150197b578d', N'e51758fa916c881624b046d26bd09230')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'79d66ef7aa137cfa9957081a1483009d', N'9a668858c4c74cf5a2b25ad9608ba095', N'ee8626f80f7c2619917b6236f3a7f02b')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'1232124039285248001', N'a75d45a015c44384a04449ee80dc3503', N'ee8626f80f7c2619917b6236f3a7f02b')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'1231590533484253186', N'e9ca23d68d884d4ebb19d07889727dae', N'f6817f48af4fb3af11b9e8bf182f618b')
GO

INSERT INTO [dbo].[sys_user_role]  VALUES (N'd2233e5be091d39da5abb0073c766224', N'f0019fdebedb443c98dcb17d88222c38', N'ee8626f80f7c2619917b6236f3a7f02b')
GO


-- ----------------------------
-- Table structure for test_demo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[test_demo]') AND type IN ('U'))
	DROP TABLE [dbo].[test_demo]
GO

CREATE TABLE [dbo].[test_demo] (
  [id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sex] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [age] int  NULL,
  [descc] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [birthday] datetime2(7)  NULL,
  [user_code] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [file_kk] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [top_pic] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[test_demo] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'test_demo',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'test_demo',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'test_demo',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人登录名称',
'SCHEMA', N'dbo',
'TABLE', N'test_demo',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'test_demo',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'test_demo',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'test_demo',
'COLUMN', N'sex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'年龄',
'SCHEMA', N'dbo',
'TABLE', N'test_demo',
'COLUMN', N'age'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'test_demo',
'COLUMN', N'descc'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生日',
'SCHEMA', N'dbo',
'TABLE', N'test_demo',
'COLUMN', N'birthday'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户编码',
'SCHEMA', N'dbo',
'TABLE', N'test_demo',
'COLUMN', N'user_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'附件',
'SCHEMA', N'dbo',
'TABLE', N'test_demo',
'COLUMN', N'file_kk'
GO

EXEC sp_addextendedproperty
'MS_Description', N'头像',
'SCHEMA', N'dbo',
'TABLE', N'test_demo',
'COLUMN', N'top_pic'
GO


-- ----------------------------
-- Records of test_demo
-- ----------------------------
INSERT INTO [dbo].[test_demo]  VALUES (N'4028810c6aed99e1016aed9b31b40002', NULL, NULL, N'admin', N'2019-10-19 15:37:27.0000000', N'jeecg', N'2', N'55', N'5', N'2019-05-15 00:00:00.0000000', NULL, N'', N'')
GO

INSERT INTO [dbo].[test_demo]  VALUES (N'4028810c6b02cba2016b02cba21f0000', N'admin', N'2019-05-29 16:53:48.0000000', N'admin', N'2019-08-23 23:45:21.0000000', N'张小红', N'1', N'8222', N'8', N'2019-04-01 00:00:00.0000000', NULL, N'', N'')
GO

INSERT INTO [dbo].[test_demo]  VALUES (N'4028810c6b40244b016b4030a0e40001', N'admin', N'2019-06-10 15:00:57.0000000', N'admin', N'2020-02-24 02:31:12.0000000', N'小芳', N'2', N'0', NULL, N'2019-04-01 00:00:00.0000000', NULL, N'', N'11_1582482670686.jpg')
GO

INSERT INTO [dbo].[test_demo]  VALUES (N'fa1d1c249461498d90f405b94f60aae0', N'', NULL, N'admin', N'2019-05-15 12:30:28.0000000', N'战三', N'2', N'222', NULL, NULL, NULL, NULL, NULL)
GO


-- ----------------------------
-- Table structure for test_order_main
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[test_order_main]') AND type IN ('U'))
	DROP TABLE [dbo].[test_order_main]
GO

CREATE TABLE [dbo].[test_order_main] (
  [id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [order_code] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [order_date] datetime2(7)  NULL,
  [descc] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[test_order_main] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'test_order_main',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'test_order_main',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'test_order_main',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'test_order_main',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单编码',
'SCHEMA', N'dbo',
'TABLE', N'test_order_main',
'COLUMN', N'order_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'下单时间',
'SCHEMA', N'dbo',
'TABLE', N'test_order_main',
'COLUMN', N'order_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'test_order_main',
'COLUMN', N'descc'
GO


-- ----------------------------
-- Records of test_order_main
-- ----------------------------
INSERT INTO [dbo].[test_order_main]  VALUES (N'4028810c6b40244b016b40686dfb0003', N'admin', N'2019-06-10 16:01:54.0000000', N'admin', N'2020-02-24 02:31:59.0000000', N'B002', N'2019-06-10 00:00:00.0000000', N'123')
GO

INSERT INTO [dbo].[test_order_main]  VALUES (N'4028810c6b40244b016b4068ef890006', N'admin', N'2019-06-10 16:02:27.0000000', N'admin', N'2020-02-24 02:05:35.0000000', N'A001', N'2019-06-10 00:00:00.0000000', N'购买产品BOOT')
GO


-- ----------------------------
-- Table structure for test_order_product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[test_order_product]') AND type IN ('U'))
	DROP TABLE [dbo].[test_order_product]
GO

CREATE TABLE [dbo].[test_order_product] (
  [id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [product_name] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [price] float(53)  NULL,
  [num] int  NULL,
  [descc] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [order_fk_id] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [pro_type] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[test_order_product] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'test_order_product',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'test_order_product',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'test_order_product',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'test_order_product',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'test_order_product',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'产品名字',
'SCHEMA', N'dbo',
'TABLE', N'test_order_product',
'COLUMN', N'product_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'价格',
'SCHEMA', N'dbo',
'TABLE', N'test_order_product',
'COLUMN', N'price'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数量',
'SCHEMA', N'dbo',
'TABLE', N'test_order_product',
'COLUMN', N'num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'test_order_product',
'COLUMN', N'descc'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单外键ID',
'SCHEMA', N'dbo',
'TABLE', N'test_order_product',
'COLUMN', N'order_fk_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'产品类型',
'SCHEMA', N'dbo',
'TABLE', N'test_order_product',
'COLUMN', N'pro_type'
GO


-- ----------------------------
-- Records of test_order_product
-- ----------------------------
INSERT INTO [dbo].[test_order_product]  VALUES (N'15665749852471', N'admin', N'2020-02-24 02:05:35.0000000', N'admin', N'2020-02-24 02:24:34.0000000', N'222', N'222', N'22', N'', N'4028810c6b40244b016b4068ef890006', N'2')
GO

INSERT INTO [dbo].[test_order_product]  VALUES (N'15665749948861', N'admin', N'2020-02-24 02:05:38.0000000', NULL, NULL, N'333', N'33', NULL, N'', N'402831816a38e7fd016a38e825c90003', N'')
GO

INSERT INTO [dbo].[test_order_product]  VALUES (N'402831816a38e7fd016a38e7fdeb0001', N'admin', N'2019-04-20 12:01:29.0000000', NULL, NULL, N'笔记本', N'100', N'10', NULL, N'402831816a38e7fd016a38e7fddf0000', NULL)
GO

INSERT INTO [dbo].[test_order_product]  VALUES (N'402831816a38e7fd016a38e7fdf10002', N'admin', N'2019-04-20 12:01:29.0000000', NULL, NULL, N'显示器', N'300', N'1', NULL, N'402831816a38e7fd016a38e7fddf0000', NULL)
GO

INSERT INTO [dbo].[test_order_product]  VALUES (N'4028810c6b40244b016b40686e050004', N'admin', N'2020-02-24 02:31:59.0000000', NULL, NULL, N'笔记本', N'2000', N'2', N'123', N'4028810c6b40244b016b40686dfb0003', N'2')
GO

INSERT INTO [dbo].[test_order_product]  VALUES (N'4028810c6b40244b016b406884080005', N'admin', N'2020-02-24 02:05:38.0000000', NULL, NULL, N'333', NULL, N'33', N'', N'402831816a38e7fd016a38e825c90003', N'')
GO

INSERT INTO [dbo].[test_order_product]  VALUES (N'4028810c6b40244b016b4068ef8f0007', N'admin', N'2020-02-24 02:05:35.0000000', NULL, NULL, N'JEECG-BOOT开发平台', N'10000', N'1', N'', N'4028810c6b40244b016b4068ef890006', N'1')
GO


-- ----------------------------
-- Table structure for test_person
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[test_person]') AND type IN ('U'))
	DROP TABLE [dbo].[test_person]
GO

CREATE TABLE [dbo].[test_person] (
  [id] nvarchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [create_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(7)  NULL,
  [update_by] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(7)  NULL,
  [sex] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [content] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [be_date] datetime2(7)  NULL,
  [qj_days] int  NULL
)
GO

ALTER TABLE [dbo].[test_person] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'test_person',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'test_person',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新人',
'SCHEMA', N'dbo',
'TABLE', N'test_person',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新日期',
'SCHEMA', N'dbo',
'TABLE', N'test_person',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'test_person',
'COLUMN', N'sex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'test_person',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请假原因',
'SCHEMA', N'dbo',
'TABLE', N'test_person',
'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请假时间',
'SCHEMA', N'dbo',
'TABLE', N'test_person',
'COLUMN', N'be_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请假天数',
'SCHEMA', N'dbo',
'TABLE', N'test_person',
'COLUMN', N'qj_days'
GO


-- ----------------------------
-- Records of test_person
-- ----------------------------
INSERT INTO [dbo].[test_person]  VALUES (N'8ca668defdae47df8649a5477ae08b05', N'admin', N'2019-04-12 09:51:37.0000000', NULL, NULL, N'1', N'zhangdaiscott', N'dsdsd', N'2019-04-12 00:00:00.0000000', N'2')
GO


-- ----------------------------
-- Primary Key structure for table demo
-- ----------------------------
ALTER TABLE [dbo].[demo] ADD CONSTRAINT [PK__demo__3213E83F3571BA2D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table jeecg_monthly_growth_analysis
-- ----------------------------
ALTER TABLE [dbo].[jeecg_monthly_growth_analysis] ADD CONSTRAINT [PK__jeecg_mo__3213E83F83F925B4] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table jeecg_order_customer
-- ----------------------------
ALTER TABLE [dbo].[jeecg_order_customer] ADD CONSTRAINT [PK__jeecg_or__3213E83FB1FA8A84] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table jeecg_order_main
-- ----------------------------
ALTER TABLE [dbo].[jeecg_order_main] ADD CONSTRAINT [PK__jeecg_or__3213E83F1F45C5A0] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table jeecg_order_ticket
-- ----------------------------
ALTER TABLE [dbo].[jeecg_order_ticket] ADD CONSTRAINT [PK__jeecg_or__3213E83F5F8EC2C7] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table jeecg_project_nature_income
-- ----------------------------
ALTER TABLE [dbo].[jeecg_project_nature_income] ADD CONSTRAINT [PK__jeecg_pr__3213E83FFB2E5F80] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table onl_cgform_button
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_formid]
ON [dbo].[onl_cgform_button] (
  [CGFORM_HEAD_ID] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_button_code]
ON [dbo].[onl_cgform_button] (
  [BUTTON_CODE] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_button_status]
ON [dbo].[onl_cgform_button] (
  [BUTTON_STATUS] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_button_order]
ON [dbo].[onl_cgform_button] (
  [ORDER_NUM] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table onl_cgform_button
-- ----------------------------
ALTER TABLE [dbo].[onl_cgform_button] ADD CONSTRAINT [PK__onl_cgfo__3214EC27CA0A45FE] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table onl_cgform_enhance_java
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_fmid]
ON [dbo].[onl_cgform_enhance_java] (
  [CGFORM_HEAD_ID] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_buttoncode]
ON [dbo].[onl_cgform_enhance_java] (
  [BUTTON_CODE] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_status]
ON [dbo].[onl_cgform_enhance_java] (
  [ACTIVE_STATUS] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table onl_cgform_enhance_java
-- ----------------------------
ALTER TABLE [dbo].[onl_cgform_enhance_java] ADD CONSTRAINT [PK__onl_cgfo__3214EC272581679B] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table onl_cgform_enhance_js
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_fmid]
ON [dbo].[onl_cgform_enhance_js] (
  [CGFORM_HEAD_ID] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_jstype]
ON [dbo].[onl_cgform_enhance_js] (
  [CG_JS_TYPE] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table onl_cgform_enhance_js
-- ----------------------------
ALTER TABLE [dbo].[onl_cgform_enhance_js] ADD CONSTRAINT [PK__onl_cgfo__3214EC2747F28503] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table onl_cgform_enhance_sql
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_formid]
ON [dbo].[onl_cgform_enhance_sql] (
  [CGFORM_HEAD_ID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table onl_cgform_enhance_sql
-- ----------------------------
ALTER TABLE [dbo].[onl_cgform_enhance_sql] ADD CONSTRAINT [PK__onl_cgfo__3214EC27EACBC1F8] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table onl_cgform_field
-- ----------------------------
CREATE NONCLUSTERED INDEX [inex_table_id]
ON [dbo].[onl_cgform_field] (
  [cgform_head_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table onl_cgform_field
-- ----------------------------
ALTER TABLE [dbo].[onl_cgform_field] ADD CONSTRAINT [PK__onl_cgfo__3213E83F44D4E65A] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table onl_cgform_head
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_onlineform_table_name]
ON [dbo].[onl_cgform_head] (
  [table_name] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_form_templdate]
ON [dbo].[onl_cgform_head] (
  [form_template] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_templdate_mobile]
ON [dbo].[onl_cgform_head] (
  [form_template_mobile] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_onlineform_table_version]
ON [dbo].[onl_cgform_head] (
  [table_version] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table onl_cgform_head
-- ----------------------------
ALTER TABLE [dbo].[onl_cgform_head] ADD CONSTRAINT [PK__onl_cgfo__3213E83F1C5E1561] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table onl_cgform_index
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_table_id]
ON [dbo].[onl_cgform_index] (
  [cgform_head_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table onl_cgform_index
-- ----------------------------
ALTER TABLE [dbo].[onl_cgform_index] ADD CONSTRAINT [PK__onl_cgfo__3213E83FE4BB47F1] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table onl_cgreport_head
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_onlinereport_code]
ON [dbo].[onl_cgreport_head] (
  [code] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table onl_cgreport_head
-- ----------------------------
ALTER TABLE [dbo].[onl_cgreport_head] ADD CONSTRAINT [PK__onl_cgre__3213E83FB8F75059] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table onl_cgreport_item
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_CGRHEAD_ID]
ON [dbo].[onl_cgreport_item] (
  [cgrhead_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_isshow]
ON [dbo].[onl_cgreport_item] (
  [is_show] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_order_num]
ON [dbo].[onl_cgreport_item] (
  [order_num] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table onl_cgreport_item
-- ----------------------------
ALTER TABLE [dbo].[onl_cgreport_item] ADD CONSTRAINT [PK__onl_cgre__3213E83FEAB022B8] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table onl_cgreport_param
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_cgrheadid]
ON [dbo].[onl_cgreport_param] (
  [cgrhead_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table onl_cgreport_param
-- ----------------------------
ALTER TABLE [dbo].[onl_cgreport_param] ADD CONSTRAINT [PK__onl_cgre__3213E83F405A3EE1] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table oss_file
-- ----------------------------
ALTER TABLE [dbo].[oss_file] ADD CONSTRAINT [PK__oss_file__3213E83FCB6AFCA0] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table QRTZ_CALENDARS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_CALENDARS] ADD CONSTRAINT [PK_QRTZ_CALENDARS] PRIMARY KEY CLUSTERED ([SCHED_NAME], [CALENDAR_NAME])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table QRTZ_CRON_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_CRON_TRIGGERS] ADD CONSTRAINT [PK_QRTZ_CRON_TRIGGERS] PRIMARY KEY CLUSTERED ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table QRTZ_FIRED_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_FIRED_TRIGGERS] ADD CONSTRAINT [PK_QRTZ_FIRED_TRIGGERS] PRIMARY KEY CLUSTERED ([SCHED_NAME], [ENTRY_ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table QRTZ_JOB_DETAILS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_JOB_DETAILS] ADD CONSTRAINT [PK_QRTZ_JOB_DETAILS] PRIMARY KEY CLUSTERED ([SCHED_NAME], [JOB_NAME], [JOB_GROUP])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table QRTZ_LOCKS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_LOCKS] ADD CONSTRAINT [PK_QRTZ_LOCKS] PRIMARY KEY CLUSTERED ([SCHED_NAME], [LOCK_NAME])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_PAUSED_TRIGGER_GRPS] ADD CONSTRAINT [PK_QRTZ_PAUSED_TRIGGER_GRPS] PRIMARY KEY CLUSTERED ([SCHED_NAME], [TRIGGER_GROUP])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table QRTZ_SCHEDULER_STATE
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_SCHEDULER_STATE] ADD CONSTRAINT [PK_QRTZ_SCHEDULER_STATE] PRIMARY KEY CLUSTERED ([SCHED_NAME], [INSTANCE_NAME])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS] ADD CONSTRAINT [PK_QRTZ_SIMPLE_TRIGGERS] PRIMARY KEY CLUSTERED ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS] ADD CONSTRAINT [PK_QRTZ_SIMPROP_TRIGGERS] PRIMARY KEY CLUSTERED ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table QRTZ_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_TRIGGERS] ADD CONSTRAINT [PK_QRTZ_TRIGGERS] PRIMARY KEY CLUSTERED ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_announcement
-- ----------------------------
ALTER TABLE [dbo].[sys_announcement] ADD CONSTRAINT [PK__sys_anno__3213E83FB31D7795] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_category
-- ----------------------------
ALTER TABLE [dbo].[sys_category] ADD CONSTRAINT [PK__sys_cate__3213E83F2A8395B0] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_check_rule
-- ----------------------------
CREATE NONCLUSTERED INDEX [uni_sys_check_rule_code]
ON [dbo].[sys_check_rule] (
  [rule_code] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_check_rule
-- ----------------------------
ALTER TABLE [dbo].[sys_check_rule] ADD CONSTRAINT [PK__sys_chec__3213E83F36873260] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_data_log
-- ----------------------------
CREATE NONCLUSTERED INDEX [sindex]
ON [dbo].[sys_data_log] (
  [data_table] ASC,
  [data_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_data_log
-- ----------------------------
ALTER TABLE [dbo].[sys_data_log] ADD CONSTRAINT [PK__sys_data__3213E83F6AF7075E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_data_source
-- ----------------------------
CREATE NONCLUSTERED INDEX [sys_data_source_code_uni]
ON [dbo].[sys_data_source] (
  [code] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_data_source
-- ----------------------------
ALTER TABLE [dbo].[sys_data_source] ADD CONSTRAINT [PK__sys_data__3213E83F26F1ACF9] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_depart
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_depart_parent_id]
ON [dbo].[sys_depart] (
  [parent_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_depart_depart_order]
ON [dbo].[sys_depart] (
  [depart_order] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_depart_org_code]
ON [dbo].[sys_depart] (
  [org_code] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_depart
-- ----------------------------
ALTER TABLE [dbo].[sys_depart] ADD CONSTRAINT [PK__sys_depa__3213E83F0C8BD03B] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_depart_permission
-- ----------------------------
ALTER TABLE [dbo].[sys_depart_permission] ADD CONSTRAINT [PK__sys_depa__3213E83F1C1EEB7E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_depart_role
-- ----------------------------
ALTER TABLE [dbo].[sys_depart_role] ADD CONSTRAINT [PK__sys_depa__3213E83FBC39863E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_depart_role_permission
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_group_role_per_id]
ON [dbo].[sys_depart_role_permission] (
  [role_id] ASC,
  [permission_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_group_role_id]
ON [dbo].[sys_depart_role_permission] (
  [role_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_group_per_id]
ON [dbo].[sys_depart_role_permission] (
  [permission_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_depart_role_permission
-- ----------------------------
ALTER TABLE [dbo].[sys_depart_role_permission] ADD CONSTRAINT [PK__sys_depa__3213E83F8B2C309C] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_depart_role_user
-- ----------------------------
ALTER TABLE [dbo].[sys_depart_role_user] ADD CONSTRAINT [PK__sys_depa__3213E83FDA6DB1C9] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_dict
-- ----------------------------
CREATE NONCLUSTERED INDEX [indextable_dict_code]
ON [dbo].[sys_dict] (
  [dict_code] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_dict
-- ----------------------------
ALTER TABLE [dbo].[sys_dict] ADD CONSTRAINT [PK__sys_dict__3213E83F0BB2AA16] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_dict_item
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_table_dict_id]
ON [dbo].[sys_dict_item] (
  [dict_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_table_sort_order]
ON [dbo].[sys_dict_item] (
  [sort_order] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_table_dict_status]
ON [dbo].[sys_dict_item] (
  [status] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_dict_item
-- ----------------------------
ALTER TABLE [dbo].[sys_dict_item] ADD CONSTRAINT [PK__sys_dict__3213E83F4573FE28] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_fill_rule
-- ----------------------------
CREATE NONCLUSTERED INDEX [uni_sys_fill_rule_code]
ON [dbo].[sys_fill_rule] (
  [rule_code] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_fill_rule
-- ----------------------------
ALTER TABLE [dbo].[sys_fill_rule] ADD CONSTRAINT [PK__sys_fill__3213E83F3DC2F674] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_log
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_table_userid]
ON [dbo].[sys_log] (
  [userid] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_logt_ype]
ON [dbo].[sys_log] (
  [log_type] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_operate_type]
ON [dbo].[sys_log] (
  [operate_type] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_log_type]
ON [dbo].[sys_log] (
  [log_type] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_log
-- ----------------------------
ALTER TABLE [dbo].[sys_log] ADD CONSTRAINT [PK__sys_log__3213E83F75549AE7] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_permission
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_prem_pid]
ON [dbo].[sys_permission] (
  [parent_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_prem_is_route]
ON [dbo].[sys_permission] (
  [is_route] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_prem_is_leaf]
ON [dbo].[sys_permission] (
  [is_leaf] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_prem_sort_no]
ON [dbo].[sys_permission] (
  [sort_no] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_prem_del_flag]
ON [dbo].[sys_permission] (
  [del_flag] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_menu_type]
ON [dbo].[sys_permission] (
  [menu_type] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_menu_hidden]
ON [dbo].[sys_permission] (
  [hidden] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_menu_status]
ON [dbo].[sys_permission] (
  [status] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_permission
-- ----------------------------
ALTER TABLE [dbo].[sys_permission] ADD CONSTRAINT [PK__sys_perm__3213E83FC1E029E8] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_permission_data_rule
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_fucntionid]
ON [dbo].[sys_permission_data_rule] (
  [permission_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_permission_data_rule
-- ----------------------------
ALTER TABLE [dbo].[sys_permission_data_rule] ADD CONSTRAINT [PK__sys_perm__3213E83F9AE94A54] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_position
-- ----------------------------
ALTER TABLE [dbo].[sys_position] ADD CONSTRAINT [PK__sys_posi__3213E83F7B9FF278] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_quartz_job
-- ----------------------------
ALTER TABLE [dbo].[sys_quartz_job] ADD CONSTRAINT [PK__sys_quar__3213E83FA29116DE] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_role
-- ----------------------------
CREATE NONCLUSTERED INDEX [uniq_sys_role_role_code]
ON [dbo].[sys_role] (
  [role_code] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE [dbo].[sys_role] ADD CONSTRAINT [PK__sys_role__3213E83F59A7B83C] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_role_permission
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_group_role_per_id]
ON [dbo].[sys_role_permission] (
  [role_id] ASC,
  [permission_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_group_role_id]
ON [dbo].[sys_role_permission] (
  [role_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_group_per_id]
ON [dbo].[sys_role_permission] (
  [permission_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_role_permission
-- ----------------------------
ALTER TABLE [dbo].[sys_role_permission] ADD CONSTRAINT [PK__sys_role__3213E83F1B8D94E7] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_sms
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_type]
ON [dbo].[sys_sms] (
  [es_type] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_receiver]
ON [dbo].[sys_sms] (
  [es_receiver] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_sendtime]
ON [dbo].[sys_sms] (
  [es_send_time] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_status]
ON [dbo].[sys_sms] (
  [es_send_status] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_sms
-- ----------------------------
ALTER TABLE [dbo].[sys_sms] ADD CONSTRAINT [PK__sys_sms__3213E83FF42579FF] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_sms_template
-- ----------------------------
CREATE NONCLUSTERED INDEX [uniq_templatecode]
ON [dbo].[sys_sms_template] (
  [template_code] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_sms_template
-- ----------------------------
ALTER TABLE [dbo].[sys_sms_template] ADD CONSTRAINT [PK__sys_sms___3213E83F6A73A778] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_user
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_user_name]
ON [dbo].[sys_user] (
  [username] ASC
)
GO

CREATE NONCLUSTERED INDEX [uniq_sys_user_work_no]
ON [dbo].[sys_user] (
  [work_no] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_user_status]
ON [dbo].[sys_user] (
  [status] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_user_del_flag]
ON [dbo].[sys_user] (
  [del_flag] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user] ADD CONSTRAINT [PK__sys_user__3213E83F9B064EDF] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_user_agent
-- ----------------------------
CREATE NONCLUSTERED INDEX [uniq_username]
ON [dbo].[sys_user_agent] (
  [user_name] ASC
)
GO

CREATE NONCLUSTERED INDEX [statux_index]
ON [dbo].[sys_user_agent] (
  [status] ASC
)
GO

CREATE NONCLUSTERED INDEX [begintime_index]
ON [dbo].[sys_user_agent] (
  [start_time] ASC
)
GO

CREATE NONCLUSTERED INDEX [endtime_index]
ON [dbo].[sys_user_agent] (
  [end_time] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_user_agent
-- ----------------------------
ALTER TABLE [dbo].[sys_user_agent] ADD CONSTRAINT [PK__sys_user__3213E83F8EC33A82] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_user_depart
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_depart_groupk_userid]
ON [dbo].[sys_user_depart] (
  [user_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_depart_groupkorgid]
ON [dbo].[sys_user_depart] (
  [dep_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [index_depart_groupk_uidanddid]
ON [dbo].[sys_user_depart] (
  [user_id] ASC,
  [dep_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_user_depart
-- ----------------------------
ALTER TABLE [dbo].[sys_user_depart] ADD CONSTRAINT [PK__sys_user__3214EC2737CD63E3] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table sys_user_role
-- ----------------------------
CREATE NONCLUSTERED INDEX [index2_groupuu_user_id]
ON [dbo].[sys_user_role] (
  [user_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [index2_groupuu_ole_id]
ON [dbo].[sys_user_role] (
  [role_id] ASC
)
GO

CREATE NONCLUSTERED INDEX [index2_groupuu_useridandroleid]
ON [dbo].[sys_user_role] (
  [user_id] ASC,
  [role_id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE [dbo].[sys_user_role] ADD CONSTRAINT [PK__sys_user__3213E83F25388184] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table test_demo
-- ----------------------------
ALTER TABLE [dbo].[test_demo] ADD CONSTRAINT [PK__test_dem__3213E83F224975EC] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table test_order_main
-- ----------------------------
ALTER TABLE [dbo].[test_order_main] ADD CONSTRAINT [PK__test_ord__3213E83FC34CE8E3] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table test_order_product
-- ----------------------------
ALTER TABLE [dbo].[test_order_product] ADD CONSTRAINT [PK__test_ord__3213E83F2C1D41F6] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table test_person
-- ----------------------------
ALTER TABLE [dbo].[test_person] ADD CONSTRAINT [PK__test_per__3213E83F768B1F2D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table QRTZ_CRON_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_CRON_TRIGGERS] ADD CONSTRAINT [FK_QRTZ_CRON_TRIGGERS_QRTZ_TRIGGERS] FOREIGN KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) REFERENCES [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS] ADD CONSTRAINT [FK_QRTZ_SIMPLE_TRIGGERS_QRTZ_TRIGGERS] FOREIGN KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) REFERENCES [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS] ADD CONSTRAINT [FK_QRTZ_SIMPROP_TRIGGERS_QRTZ_TRIGGERS] FOREIGN KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) REFERENCES [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table QRTZ_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_TRIGGERS] ADD CONSTRAINT [FK_QRTZ_TRIGGERS_QRTZ_JOB_DETAILS] FOREIGN KEY ([SCHED_NAME], [JOB_NAME], [JOB_GROUP]) REFERENCES [dbo].[QRTZ_JOB_DETAILS] ([SCHED_NAME], [JOB_NAME], [JOB_GROUP]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

