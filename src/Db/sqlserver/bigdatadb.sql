/*
 Navicat Premium Data Transfer

 Source Server         : sqlserver
 Source Server Type    : SQL Server
 Source Server Version : 11002100
 Source Host           : 127.0.0.1:1433
 Source Catalog        : bigDataDB
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11002100
 File Encoding         : 65001

 Date: 10/10/2021 11:27:52
*/


-- ----------------------------
-- Table structure for sys_auditlog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_auditlog]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_auditlog]
GO

CREATE TABLE [dbo].[sys_auditlog] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [Key] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [IP] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Browser] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [Os] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Device] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [BrowserInfo] nvarchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [ElapsedMilliseconds] bigint  NULL,
  [TenantId] int  NULL,
  [UserId] bigint  NULL,
  [UserAccount] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [ParamsString] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [StartTime] datetime2(0)  NULL,
  [StopTime] datetime2(0)  NULL,
  [RequestMethod] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [RequestApi] nvarchar(300) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreationTime] datetime2(0)  NULL,
  [ResponseState] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [ResponseData] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_auditlog] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键Id',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'拦截Key',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'Key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'IP',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'IP'
GO

EXEC sp_addextendedproperty
'MS_Description', N'浏览器',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'Browser'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作系统',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'Os'
GO

EXEC sp_addextendedproperty
'MS_Description', N'设备',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'Device'
GO

EXEC sp_addextendedproperty
'MS_Description', N'浏览器信息',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'BrowserInfo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'耗时（毫秒）',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'ElapsedMilliseconds'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户Id',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'TenantId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户id',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'UserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户账号',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'UserAccount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求参数',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'ParamsString'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开始执行时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'StartTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'结束执行时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'StopTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求方式',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'RequestMethod'
GO

EXEC sp_addextendedproperty
'MS_Description', N'请求Api',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'RequestApi'
GO

EXEC sp_addextendedproperty
'MS_Description', N' 创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_auditlog',
'COLUMN', N'CreationTime'
GO


-- ----------------------------
-- Records of sys_auditlog
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_auditlog] ON
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'1', N'ac4d7331-da63-4ffc-8b5c-b16a3e5e0903', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'85', N'0', N'0', NULL, N'{}', N'2021-10-10 11:19:23', N'2021-10-10 11:19:23', N'post', N'api/identity/getguid', N'2021-10-10 11:19:23', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'2', N'49620026-8070-4188-8551-8b349a3b8aa1', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'82', N'0', N'0', NULL, N'{
  "guidKey": "4029e649-f08a-413f-bfb2-d4575ceb6214"
}', N'2021-10-10 11:19:23', N'2021-10-10 11:19:23', N'get', N'api/identity/getverificationcode', N'2021-10-10 11:19:23', N'0', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'3', N'f0256853-c3cf-4feb-87b7-38b8a14a2d82', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'518', N'0', N'0', NULL, N'{
  "loginUserDto": {
    "userId": "admin",
    "pwd": "123456",
    "TenantId": 1,
    "validateCode": "bqwi",
    "GuidKey": "4029e649-f08a-413f-bfb2-d4575ceb6214"
  }
}', N'2021-10-10 11:19:28', N'2021-10-10 11:19:29', N'post', N'api/identity/gettokenbylogin', N'2021-10-10 11:19:29', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'4', N'881023ac-8e15-4fb2-ac96-eb301fe22525', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'77', N'0', N'1', N'admin', N'{
  "input": {
    "CurrentPage": 1,
    "PageSize": 10,
    "Filter": {
      "QueryString": ""
    }
  }
}', N'2021-10-10 11:19:30', N'2021-10-10 11:19:30', N'post', N'api/sysuser/getpageuserlist', N'2021-10-10 11:19:30', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'5', N'ae2dd798-00d1-4018-b05a-f256eb30de0f', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'52', N'0', N'1', N'admin', N'{
  "input": {
    "QueryString": ""
  }
}', N'2021-10-10 11:19:32', N'2021-10-10 11:19:32', N'post', N'api/sysdatadictionary/getsysdatadictionarylist', N'2021-10-10 11:19:32', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'6', N'f8437997-65dc-469e-8792-bce9cb8c8e92', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'91', N'0', N'1', N'admin', N'{
  "input": {
    "QueryString": ""
  }
}', N'2021-10-10 11:19:33', N'2021-10-10 11:19:33', N'post', N'api/sysorganization/getsysorganizationlist', N'2021-10-10 11:19:33', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'7', N'e1d16891-05fd-450c-b08a-154e79ce89ca', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'57', N'0', N'1', N'admin', N'{
  "input": {
    "CurrentPage": 1,
    "PageSize": 10,
    "Filter": {
      "QueryString": ""
    }
  }
}', N'2021-10-10 11:19:35', N'2021-10-10 11:19:35', N'post', N'api/sysrole/getpagesysrolelist', N'2021-10-10 11:19:35', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'8', N'bc826ca5-0bac-4a9f-87f2-b48e4a5becb5', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'740', N'0', N'1', N'admin', N'{
  "input": {
    "CurrentPage": 1,
    "PageSize": 10,
    "Filter": {
      "QueryString": ""
    },
    "PublishDateRange": null
  }
}', N'2021-10-10 11:19:38', N'2021-10-10 11:19:39', N'post', N'api/book/getpagebooklist', N'2021-10-10 11:19:39', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'9', N'bc826ca5-0bac-4a9f-87f2-b48e4a5becb5', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'634', N'0', N'1', N'admin', N'{
  "input": {
    "CurrentPage": 1,
    "PageSize": 10,
    "Filter": {
      "QueryString": "罗斯柴尔德家族"
    },
    "PublishDateRange": null
  }
}', N'2021-10-10 11:19:43', N'2021-10-10 11:19:43', N'post', N'api/book/getpagebooklist', N'2021-10-10 11:19:43', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'10', N'bc826ca5-0bac-4a9f-87f2-b48e4a5becb5', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'721', N'0', N'1', N'admin', N'{
  "input": {
    "CurrentPage": 1,
    "PageSize": 10,
    "Filter": {
      "QueryString": "罗斯柴尔德家族"
    },
    "PublishDateRange": [
      "1900-09-30T15:54:17.000Z",
      "2021-11-22T16:00:00.000Z"
    ]
  }
}', N'2021-10-10 11:19:52', N'2021-10-10 11:19:53', N'post', N'api/book/getpagebooklist', N'2021-10-10 11:19:53', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'11', N'bc826ca5-0bac-4a9f-87f2-b48e4a5becb5', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'714', N'0', N'1', N'admin', N'{
  "input": {
    "CurrentPage": 1,
    "PageSize": 10,
    "Filter": {
      "QueryString": "罗斯柴尔德家族"
    },
    "PublishDateRange": [
      "1900-09-30T15:54:17.000Z",
      "2021-11-22T16:00:00.000Z"
    ]
  }
}', N'2021-10-10 11:19:53', N'2021-10-10 11:19:54', N'post', N'api/book/getpagebooklist', N'2021-10-10 11:19:54', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'12', N'bc826ca5-0bac-4a9f-87f2-b48e4a5becb5', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'714', N'0', N'1', N'admin', N'{
  "input": {
    "CurrentPage": 1,
    "PageSize": 10,
    "Filter": {
      "QueryString": "罗斯柴尔德家族"
    },
    "PublishDateRange": [
      "1900-09-30T15:54:17.000Z",
      "2021-11-22T16:00:00.000Z"
    ]
  }
}', N'2021-10-10 11:19:54', N'2021-10-10 11:19:55', N'post', N'api/book/getpagebooklist', N'2021-10-10 11:19:55', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'13', N'bc826ca5-0bac-4a9f-87f2-b48e4a5becb5', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'748', N'0', N'1', N'admin', N'{
  "input": {
    "CurrentPage": 1,
    "PageSize": 10,
    "Filter": {
      "QueryString": "罗斯柴尔德家族"
    },
    "PublishDateRange": [
      "1900-09-30T15:54:17.000Z",
      "2021-11-22T16:00:00.000Z"
    ]
  }
}', N'2021-10-10 11:19:55', N'2021-10-10 11:19:56', N'post', N'api/book/getpagebooklist', N'2021-10-10 11:19:56', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'14', N'ac4d7331-da63-4ffc-8b5c-b16a3e5e0903', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'32', N'0', N'0', NULL, N'{}', N'2021-10-10 11:19:59', N'2021-10-10 11:19:59', N'post', N'api/identity/getguid', N'2021-10-10 11:19:59', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'15', N'49620026-8070-4188-8551-8b349a3b8aa1', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'31', N'0', N'0', NULL, N'{
  "guidKey": "ef387683-f387-4dbb-821e-91cd84be5f55"
}', N'2021-10-10 11:19:59', N'2021-10-10 11:19:59', N'get', N'api/identity/getverificationcode', N'2021-10-10 11:19:59', N'0', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'16', N'ac4d7331-da63-4ffc-8b5c-b16a3e5e0903', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'46', N'0', N'0', NULL, N'{}', N'2021-10-10 11:20:08', N'2021-10-10 11:20:08', N'post', N'api/identity/getguid', N'2021-10-10 11:20:08', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'17', N'49620026-8070-4188-8551-8b349a3b8aa1', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'36', N'0', N'0', NULL, N'{
  "guidKey": "9f6eb912-95fc-4ced-b0da-077b785281a2"
}', N'2021-10-10 11:20:09', N'2021-10-10 11:20:09', N'get', N'api/identity/getverificationcode', N'2021-10-10 11:20:09', N'0', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'18', N'766d5f04-3082-44bd-835a-11f9e8d82e87', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'94', N'0', N'0', NULL, N'{}', N'2021-10-10 11:21:53', N'2021-10-10 11:21:53', N'post', N'api/identity/getguid', N'2021-10-10 11:21:53', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'19', N'56e982ce-f2fd-40ce-b7b3-d0b7da048682', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'97', N'0', N'0', NULL, N'{
  "guidKey": "6b1c83e2-b480-4db4-8bc7-d47fcbd597fd"
}', N'2021-10-10 11:21:53', N'2021-10-10 11:21:54', N'get', N'api/identity/getverificationcode', N'2021-10-10 11:21:54', N'0', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'20', N'8ad4c4c5-645c-42c8-a680-b434d9636280', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'462', N'0', N'0', NULL, N'{
  "loginUserDto": {
    "userId": "admin",
    "pwd": "123456",
    "TenantId": 0,
    "validateCode": "m391",
    "GuidKey": "6b1c83e2-b480-4db4-8bc7-d47fcbd597fd"
  }
}', N'2021-10-10 11:22:00', N'2021-10-10 11:22:00', N'post', N'api/identity/gettokenbylogin', N'2021-10-10 11:22:00', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'21', N'3e7b792c-f7ba-4e2e-a744-790cbb0d7399', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'795', N'0', N'1', N'admin', N'{
  "input": {
    "CurrentPage": 1,
    "PageSize": 10,
    "Filter": {
      "QueryString": ""
    },
    "PublishDateRange": null
  }
}', N'2021-10-10 11:22:02', N'2021-10-10 11:22:03', N'post', N'api/book/getpagebooklist', N'2021-10-10 11:22:03', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'22', N'f660ae61-d8a3-405d-b201-013d28ae039f', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'93', N'0', N'1', N'admin', N'{
  "input": {
    "CurrentPage": 1,
    "PageSize": 10,
    "Filter": {
      "QueryString": ""
    }
  }
}', N'2021-10-10 11:22:07', N'2021-10-10 11:22:07', N'post', N'api/sysrole/getpagesysrolelist', N'2021-10-10 11:22:07', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'23', N'd5d98aab-80d4-4a3e-8d12-34c2b3494f39', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'43', N'0', N'1', N'admin', N'{
  "input": {
    "CurrentPage": 1,
    "PageSize": 10,
    "Filter": {
      "QueryString": ""
    }
  }
}', N'2021-10-10 11:22:07', N'2021-10-10 11:22:07', N'post', N'api/sysuser/getpageuserlist', N'2021-10-10 11:22:07', N'1', NULL)
GO

INSERT INTO [dbo].[sys_auditlog] ([Id], [Key], [IP], [Browser], [Os], [Device], [BrowserInfo], [ElapsedMilliseconds], [TenantId], [UserId], [UserAccount], [ParamsString], [StartTime], [StopTime], [RequestMethod], [RequestApi], [CreationTime], [ResponseState], [ResponseData]) VALUES (N'24', N'113a3e7d-af25-4dbc-884d-17a215471a27', N'127.0.0.1', N'Chrome', N'Windows', N'', N'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', N'67', N'0', N'1', N'admin', N'{
  "input": {
    "QueryString": ""
  }
}', N'2021-10-10 11:22:08', N'2021-10-10 11:22:09', N'post', N'api/sysdatadictionary/getsysdatadictionarylist', N'2021-10-10 11:22:09', N'1', NULL)
GO

SET IDENTITY_INSERT [dbo].[sys_auditlog] OFF
GO


-- ----------------------------
-- Table structure for sys_datadictionary
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_datadictionary]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_datadictionary]
GO

CREATE TABLE [dbo].[sys_datadictionary] (
  [Key] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [ParentId] bigint  NULL,
  [Memoni] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [Sort] int  NULL,
  [Value] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [IsActive] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [IsDeleted] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreationTime] datetime2(0)  NULL,
  [CreatorUserId] bigint  NULL,
  [TenantId] int  NULL,
  [Type] int  NULL,
  [Label] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_datadictionary] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_datadictionary',
'COLUMN', N'Key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父节点',
'SCHEMA', N'dbo',
'TABLE', N'sys_datadictionary',
'COLUMN', N'ParentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'助记符',
'SCHEMA', N'dbo',
'TABLE', N'sys_datadictionary',
'COLUMN', N'Memoni'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_datadictionary',
'COLUMN', N'Sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_datadictionary',
'COLUMN', N'Value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键Id',
'SCHEMA', N'dbo',
'TABLE', N'sys_datadictionary',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否启用标识',
'SCHEMA', N'dbo',
'TABLE', N'sys_datadictionary',
'COLUMN', N'IsActive'
GO

EXEC sp_addextendedproperty
'MS_Description', N' 是否删除标识',
'SCHEMA', N'dbo',
'TABLE', N'sys_datadictionary',
'COLUMN', N'IsDeleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N' 创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_datadictionary',
'COLUMN', N'CreationTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N' 创建ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_datadictionary',
'COLUMN', N'CreatorUserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户名',
'SCHEMA', N'dbo',
'TABLE', N'sys_datadictionary',
'COLUMN', N'TenantId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类别:0 分组， 1叶子节点',
'SCHEMA', N'dbo',
'TABLE', N'sys_datadictionary',
'COLUMN', N'Type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_datadictionary',
'COLUMN', N'Label'
GO


-- ----------------------------
-- Records of sys_datadictionary
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_datadictionary] ON
GO

INSERT INTO [dbo].[sys_datadictionary] ([Key], [ParentId], [Memoni], [Sort], [Value], [Id], [IsActive], [IsDeleted], [CreationTime], [CreatorUserId], [TenantId], [Type], [Label]) VALUES (N'MenuType.Common', N'2', NULL, NULL, N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, N'公共菜单')
GO

INSERT INTO [dbo].[sys_datadictionary] ([Key], [ParentId], [Memoni], [Sort], [Value], [Id], [IsActive], [IsDeleted], [CreationTime], [CreatorUserId], [TenantId], [Type], [Label]) VALUES (N'MenuType', N'0', NULL, NULL, NULL, N'2', NULL, NULL, NULL, NULL, NULL, N'0', N'菜单类别')
GO

SET IDENTITY_INSERT [dbo].[sys_datadictionary] OFF
GO


-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_organization]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_organization]
GO

CREATE TABLE [dbo].[sys_organization] (
  [Label] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [ParentId] bigint  NULL,
  [OrganType] int  NULL,
  [Sort] int  NULL,
  [PostId] int  NULL,
  [Fax] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [Telephone] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [Address] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [Memoni] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [RangeType] int  NULL,
  [Range] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [Linkman] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreatorUserId] bigint  NULL,
  [CreationTime] datetime2(0)  NULL,
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [IsActive] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [IsDeleted] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [TenantId] int  NULL
)
GO

ALTER TABLE [dbo].[sys_organization] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'Label'
GO

EXEC sp_addextendedproperty
'MS_Description', N'所属上级',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'ParentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'节点类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'OrganType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'序号',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'Sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'岗位编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'PostId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'传真',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'Fax'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系电话',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'Telephone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'通讯地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'Address'
GO

EXEC sp_addextendedproperty
'MS_Description', N'助记符',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'Memoni'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'RangeType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限范围',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'Range'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系人',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'Linkman'
GO

EXEC sp_addextendedproperty
'MS_Description', N' 创建ID',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'CreatorUserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N' 创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'CreationTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键Id',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否启用标识',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'IsActive'
GO

EXEC sp_addextendedproperty
'MS_Description', N' 是否删除标识',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'IsDeleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户名',
'SCHEMA', N'dbo',
'TABLE', N'sys_organization',
'COLUMN', N'TenantId'
GO


-- ----------------------------
-- Records of sys_organization
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_organization] ON
GO

INSERT INTO [dbo].[sys_organization] ([Label], [ParentId], [OrganType], [Sort], [PostId], [Fax], [Telephone], [Address], [Memoni], [Remark], [RangeType], [Range], [Linkman], [CreatorUserId], [CreationTime], [Id], [IsActive], [IsDeleted], [TenantId]) VALUES (N'xxx事业部', N'0', N'0', N'2', N'0', N'', N'', N'', N'', N'', N'0', N'', N'', N'0', NULL, N'22', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[sys_organization] ([Label], [ParentId], [OrganType], [Sort], [PostId], [Fax], [Telephone], [Address], [Memoni], [Remark], [RangeType], [Range], [Linkman], [CreatorUserId], [CreationTime], [Id], [IsActive], [IsDeleted], [TenantId]) VALUES (N'研发部', N'22', N'0', N'0', N'0', N'', N'', N'', N'', N'', N'0', N'', N'', N'0', NULL, N'23', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[sys_organization] ([Label], [ParentId], [OrganType], [Sort], [PostId], [Fax], [Telephone], [Address], [Memoni], [Remark], [RangeType], [Range], [Linkman], [CreatorUserId], [CreationTime], [Id], [IsActive], [IsDeleted], [TenantId]) VALUES (N'企划部', N'22', N'0', N'0', N'0', N'', N'', N'', N'', N'', N'0', N'', N'', N'0', NULL, N'24', N'0', N'0', NULL)
GO

INSERT INTO [dbo].[sys_organization] ([Label], [ParentId], [OrganType], [Sort], [PostId], [Fax], [Telephone], [Address], [Memoni], [Remark], [RangeType], [Range], [Linkman], [CreatorUserId], [CreationTime], [Id], [IsActive], [IsDeleted], [TenantId]) VALUES (N'开发一组', N'23', N'0', N'0', N'0', N'', N'', N'', N'', N'', N'0', N'', N'', N'0', NULL, N'25', N'0', N'0', NULL)
GO

SET IDENTITY_INSERT [dbo].[sys_organization] OFF
GO


-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_permission]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_permission]
GO

CREATE TABLE [dbo].[sys_permission] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [ParentId] bigint  NOT NULL,
  [Label] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Code] nvarchar(550) COLLATE Chinese_PRC_CI_AS  NULL,
  [Type] int  NOT NULL,
  [View] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Api] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [Path] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [Icon] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Hidden] varchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [IsActive] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [Closable] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [Opened] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [NewWindow] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [External] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [Sort] int  NULL,
  [Description] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [TenantId] bigint  NULL,
  [IsDeleted] varchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreatorUserId] bigint  NULL,
  [CreationTime] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreatedTime] datetime2(0)  NULL,
  [LastModifierUserId] int  NULL,
  [LastModificationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[sys_permission] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键Id',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父级节点',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'ParentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'Label'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'Code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'Type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'视图',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'View'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接口',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'Api'
GO

EXEC sp_addextendedproperty
'MS_Description', N'菜单访问地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'Path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'图标',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'Icon'
GO

EXEC sp_addextendedproperty
'MS_Description', N'隐藏',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'Hidden'
GO

EXEC sp_addextendedproperty
'MS_Description', N'启用',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'IsActive'
GO

EXEC sp_addextendedproperty
'MS_Description', N'可关闭',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'Closable'
GO

EXEC sp_addextendedproperty
'MS_Description', N'打开组',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'Opened'
GO

EXEC sp_addextendedproperty
'MS_Description', N'打开新窗口',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'NewWindow'
GO

EXEC sp_addextendedproperty
'MS_Description', N'链接外显',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'External'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'Sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'Description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'租户Id',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'TenantId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否删除',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'IsDeleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建者Id',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'CreatorUserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建者',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'CreationTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'CreatedTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改者Id',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'LastModifierUserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission',
'COLUMN', N'LastModificationTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限',
'SCHEMA', N'dbo',
'TABLE', N'sys_permission'
GO


-- ----------------------------
-- Records of sys_permission
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_permission] ON
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'111', N'0', N'系统管理', N'systemManager', N'1', N'', N'', N'', N'el-icon-setting', N'1', N'1', N'1', N'1', N'1', N'1', N'8', N'', N'1', N'0', N'1', N'2021-05-02 18:35:03.773', NULL, N'0', N'2021-05-03 11:14:36')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'112', N'0', N'用户管理', N'userManager', N'2', N'Users', N'', N'/users', N'el-icon-user', N'1', N'1', N'1', N'1', N'1', N'1', N'3', N'', N'1', N'0', N'1', N'2021-05-02 18:37:37.656', NULL, N'0', N'2021-05-03 10:34:10')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'113', N'111', N'角色管理', N'system.roleManager', N'2', N'SysRoles', N'', N'/sysRoles', N'el-icon-share', N'1', N'1', N'1', N'1', N'1', N'1', N'4', N'', N'1', N'0', N'1', N'2021-05-02 18:39:33.200', NULL, N'0', N'2021-05-05 17:08:02')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'114', N'111', N'权限管理', N'permissionManager', N'2', N'SysPermissions', N'', N'/sysPermissions', N'el-icon-s-operation', N'1', N'1', N'1', N'1', N'1', N'1', N'5', N'', N'1', N'0', N'1', N'2021-05-02 18:40:20.539', NULL, N'0', N'2021-05-05 17:08:15')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'115', N'0', N'数据字典', N'dataDictionaryManager', N'2', N'SysDataDictionarys', N'', N'/sysDataDictionarys', N'el-icon-share', N'1', N'1', N'1', N'1', N'1', N'1', N'6', N'', N'1', N'0', N'1', N'2021-05-02 18:41:16.319', NULL, N'0', N'2021-05-03 11:11:33')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'116', N'0', N'日志管理', N'logManager', N'1', N'', N'', N'', N'el-icon-document', N'1', N'1', N'1', N'1', N'1', N'1', N'8', N'', N'1', N'0', N'1', N'2021-05-02 18:43:29.923', NULL, N'0', N'2021-05-03 11:14:49')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'117', N'116', N'审计日志', N'sysAuditLogManager', N'2', N'SysAuditLogs', N'', N'/sysAuditLogs', N'', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-02 18:44:24.935', NULL, N'0', N'2021-05-05 13:47:54')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'118', N'112', N'新增用户', N'userManager.createUser', N'3', N'', N'SysUser/CreateUser', N'', N'', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-02 18:46:06.639', NULL, N'0', N'2021-05-03 10:34:57')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'119', N'112', N'查看用户列表', N'userManager.viewUser', N'3', N'', N'SysUser/GetPageUserList', N'', N'', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-02 18:50:42.411', NULL, N'0', N'2021-05-03 10:32:26')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'120', N'112', N'编辑用户', N'userManager.editUser', N'3', N'', N'SysUser/UpdateUser', N'', N'', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 10:27:32.738', NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'121', N'112', N'删除用户', N'userManager.deleteUser', N'3', N'', N'SysUser/DeleteUserById', N'', N'', N'1', N'1', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 10:35:40.971', NULL, N'0', N'2021-05-03 10:35:52')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'122', N'114', N'新增权限', N'permissionManager.createPermission', N'3', N'', N'SysPermission/CreateSysPermission', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 10:46:41.669', NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'123', N'114', N'编辑权限', N'permissionManager.editPermission', N'3', N'', N'SysPermission/UpdateSysPermission', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 10:47:11.061', NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'124', N'114', N'删除权限', N'permissionManager.deletePermission', N'3', N'', N'SysPermission/DeleteSysPermissionById', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 10:47:39.828', NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'125', N'114', N'查看权限列表', N'permissionManager.viewPermission', N'3', N'', N'SysPermission/GetSysPermissionList,SysPermission/Get,SysPermission/GetSysPermissionFilterByPid', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 10:49:20.263', NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'126', N'113', N'查看角色列表', N'roleManager.viewRole', N'3', N'', N'SysRole/GetPageSysRoleList', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 10:52:19.301', NULL, N'0', N'2021-05-03 10:55:28')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'127', N'113', N'编辑角色', N'roleManager.editRole', N'3', N'', N'SysRole/UpdateSysRole', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 10:53:49.424', NULL, N'0', N'2021-05-03 10:54:54')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'128', N'113', N'新增角色', N'roleManager.createRole', N'3', N'', N'SysRole/CreateSysRole', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 10:54:40.920', NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'129', N'113', N'删除角色', N'roleManager.deleteRole', N'3', N'', N'SysRole/DeleteSysRoleById', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 10:56:37.772', NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'130', N'111', N'角色权限', N'rolePermissionManager', N'2', N'SysRolePermissions', N'', N'/sysRolePemissions', N'el-icon-share', N'1', N'0', N'1', N'1', N'1', N'1', N'7', N'', N'1', N'0', N'1', N'2021-05-03 10:59:13.100', NULL, N'0', N'2021-05-05 17:08:31')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'131', N'130', N'配置角色权限', N'rolePermissionManager.editRolePermission', N'3', N'', N'SysRole/UpdateSysRolePermissions', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 11:00:38.300', NULL, N'0', N'2021-05-03 11:08:25')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'132', N'115', N'新增数据字典', N'dataDictionaryManager.createDataDictionary', N'3', N'', N'SysDataDictionary/CreateSysDataDictionary', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 11:07:23.817', NULL, N'0', N'2021-05-03 11:08:44')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'133', N'115', N'编辑数据字典', N'dataDictionaryManager.editDataDictionary', N'3', N'', N'SysDataDictionary/UpdateSysDataDictionary', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 11:09:27.438', NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'134', N'115', N'删除数据字典', N'dataDictionaryManager.deleteDataDictionary', N'3', N'', N'SysDataDictionary/DeleteSysDataDictionaryById', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 11:10:11.542', NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'135', N'115', N'查看数据字典列表', N'dataDictionaryManager.viewDataDictionary', N'3', N'', N'SysDataDictionary/GetSysDataDictionaryList,SysDataDictionary/GetSysDataDictionaryFilterByPid', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 11:10:46.715', NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'136', N'0', N'首页', N'welcomePage', N'2', N'Welcome', N'', N'/welcome', N'el-icon-s-home', N'1', N'0', N'1', N'1', N'1', N'1', N'1', N'', N'1', N'0', N'1', N'2021-05-03 11:16:56.241', NULL, N'0', N'2021-05-04 15:01:24')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'137', N'130', N'查看角色权限列表', N'rolePermissionManager.viewRolePermission', N'3', N'', N'SysRole/GetSysRoleList,SysPermission/GetSysPermissionList', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-03 11:19:55.125', NULL, N'0', N'2021-05-03 11:23:45')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'138', N'117', N'查看审计日志列表', N'sysAuditLogManager.viewSysAuditLog', N'3', N'', N'SysAuditLog/GetPageSysAuditLogList,SysAuditLog/Get', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-05 12:59:33.332', NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'139', N'0', N'机构管理', N'sysOrganizationManager', N'2', N'SysOrganizations', N'', N'/sysOrganizations', N'el-icon-s-custom', N'1', N'0', N'1', N'1', N'1', N'1', N'999', N'', N'1', N'0', N'1', N'2021-05-05 17:12:30.131', NULL, N'0', N'2021-05-05 17:24:55')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'140', N'139', N'查看组织机构列表', N'sysOrganizationManager.viewSysOrganization', N'3', N'', N'SysOrganization/GetSysOrganizationList,SysOrganization/Get,SysOrganization/GetSysOrganizationFilterByPid', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-05 17:13:51.264', NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'141', N'139', N'新增组织机构', N'sysOrganizationManager.createSysOrganization', N'3', N'', N'SysOrganization/CreateSysOrganization', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-05 17:14:29.066', NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'142', N'139', N'编辑组织机构', N'sysOrganizationManager.editSysOrganization', N'3', N'', N'SysOrganization/UpdateSysOrganization', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-05 17:22:03.526', NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'143', N'139', N'删除组织机构', N'sysOrganizationManager.deleteSysOrganization', N'3', N'', N'SysOrganization/DeleteSysOrganizationById', N'', N'', N'1', N'0', N'1', N'1', N'1', N'1', N'0', N'', N'1', N'0', N'1', N'2021-05-05 17:22:51.792', NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'145', N'0', N'看板', N'Board', N'2', N'board', N'', N'/board', N'el-icon-s-marketing', N'0', N'0', N'1', N'1', N'1', N'1', N'2', N'', NULL, N'0', N'0', NULL, NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'151', N'0', N'大数据组件', N'BigData', N'1', N'', N'', N'', N'el-icon-box', N'0', N'0', N'1', N'1', N'1', N'1', N'15', N'', NULL, N'0', N'0', NULL, NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'152', N'151', N'ES 大数据检索示例', N'bookManager', N'2', N'Books', N'', N'/books', N'el-icon-search', N'0', N'0', N'1', N'1', N'1', N'1', N'0', N'', NULL, N'0', N'0', NULL, NULL, N'0', N'0001-01-01 00:00:00')
GO

INSERT INTO [dbo].[sys_permission] ([Id], [ParentId], [Label], [Code], [Type], [View], [Api], [Path], [Icon], [Hidden], [IsActive], [Closable], [Opened], [NewWindow], [External], [Sort], [Description], [TenantId], [IsDeleted], [CreatorUserId], [CreationTime], [CreatedTime], [LastModifierUserId], [LastModificationTime]) VALUES (N'153', N'152', N'查看列表', N'bookManager.viewBook', N'3', N'', N'Book/GetPageBookList', N'', N'', N'0', N'0', N'1', N'1', N'1', N'1', N'0', N'', NULL, N'0', N'0', NULL, NULL, N'0', N'0001-01-01 00:00:00')
GO

SET IDENTITY_INSERT [dbo].[sys_permission] OFF
GO


-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role]
GO

CREATE TABLE [dbo].[sys_role] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [IsActive] tinyint  NULL,
  [Memoni] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [Sort] int  NULL,
  [IsDeleted] tinyint  NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [LastModifierUserId] bigint  NULL,
  [OrgId] int  NULL,
  [TenantId] int  NULL
)
GO

ALTER TABLE [dbo].[sys_role] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'启用',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'IsActive'
GO

EXEC sp_addextendedproperty
'MS_Description', N'助记符',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'Memoni'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'Sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除标记',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'IsDeleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'LastModificationTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'LastModifierUserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组织',
'SCHEMA', N'dbo',
'TABLE', N'sys_role',
'COLUMN', N'OrgId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户角色',
'SCHEMA', N'dbo',
'TABLE', N'sys_role'
GO


-- ----------------------------
-- Records of sys_role
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_role] ON
GO

INSERT INTO [dbo].[sys_role] ([Id], [Name], [IsActive], [Memoni], [Sort], [IsDeleted], [LastModificationTime], [LastModifierUserId], [OrgId], [TenantId]) VALUES (N'1', N'超级管理员', N'0', N'superAdmin', NULL, N'0', N'2021-05-04 12:53:12', N'0', NULL, N'1')
GO

INSERT INTO [dbo].[sys_role] ([Id], [Name], [IsActive], [Memoni], [Sort], [IsDeleted], [LastModificationTime], [LastModifierUserId], [OrgId], [TenantId]) VALUES (N'2', N'运维管理员', N'0', N'222', N'2', N'0', N'2021-05-04 12:53:03', N'0', NULL, N'1')
GO

SET IDENTITY_INSERT [dbo].[sys_role] OFF
GO


-- ----------------------------
-- Table structure for sys_rolepermission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_rolepermission]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_rolepermission]
GO

CREATE TABLE [dbo].[sys_rolepermission] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [RoleId] bigint  NOT NULL,
  [PermissionId] bigint  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [CreationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[sys_rolepermission] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键Id',
'SCHEMA', N'dbo',
'TABLE', N'sys_rolepermission',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色Id',
'SCHEMA', N'dbo',
'TABLE', N'sys_rolepermission',
'COLUMN', N'RoleId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'权限Id',
'SCHEMA', N'dbo',
'TABLE', N'sys_rolepermission',
'COLUMN', N'PermissionId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建者Id',
'SCHEMA', N'dbo',
'TABLE', N'sys_rolepermission',
'COLUMN', N'CreatorUserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_rolepermission',
'COLUMN', N'CreationTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色权限',
'SCHEMA', N'dbo',
'TABLE', N'sys_rolepermission'
GO


-- ----------------------------
-- Records of sys_rolepermission
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_rolepermission] ON
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1244', N'2', N'113', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1245', N'2', N'126', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1246', N'2', N'114', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1247', N'2', N'125', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1248', N'2', N'130', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1249', N'2', N'137', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1250', N'2', N'116', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1251', N'2', N'117', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1252', N'2', N'138', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1253', N'2', N'112', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1254', N'2', N'119', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1255', N'2', N'115', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1256', N'2', N'135', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1257', N'2', N'136', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1258', N'2', N'139', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1259', N'2', N'140', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1260', N'2', N'141', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1261', N'2', N'142', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1262', N'2', N'143', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1263', N'2', N'111', N'1', N'2021-09-09 17:42:13')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1298', N'1', N'111', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1299', N'1', N'113', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1300', N'1', N'126', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1301', N'1', N'127', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1302', N'1', N'128', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1303', N'1', N'129', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1304', N'1', N'114', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1305', N'1', N'122', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1306', N'1', N'123', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1307', N'1', N'124', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1308', N'1', N'125', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1309', N'1', N'130', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1310', N'1', N'131', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1311', N'1', N'137', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1312', N'1', N'116', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1313', N'1', N'117', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1314', N'1', N'138', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1315', N'1', N'151', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1316', N'1', N'152', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1317', N'1', N'153', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1318', N'1', N'112', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1319', N'1', N'118', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1320', N'1', N'119', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1321', N'1', N'120', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1322', N'1', N'121', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1323', N'1', N'115', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1324', N'1', N'132', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1325', N'1', N'133', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1326', N'1', N'134', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1327', N'1', N'135', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1328', N'1', N'136', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1329', N'1', N'139', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1330', N'1', N'140', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1331', N'1', N'141', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1332', N'1', N'142', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1333', N'1', N'143', N'1', N'2021-10-09 19:31:41')
GO

INSERT INTO [dbo].[sys_rolepermission] ([Id], [RoleId], [PermissionId], [CreatorUserId], [CreationTime]) VALUES (N'1334', N'1', N'145', N'1', N'2021-10-09 19:31:41')
GO

SET IDENTITY_INSERT [dbo].[sys_rolepermission] OFF
GO


-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user]
GO

CREATE TABLE [dbo].[sys_user] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [NO] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [Name] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Account] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Password] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Sex] tinyint  NULL,
  [Mobile] nvarchar(16) COLLATE Chinese_PRC_CI_AS  NULL,
  [Email] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [IsActive] tinyint  NULL,
  [LoginCount] int  NULL,
  [Memoni] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [IsDeleted] tinyint  NULL,
  [OrgId] int  NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [ModifyUserId] int  NULL,
  [UserType] tinyint  NULL,
  [InterDepartmental] tinyint  NULL,
  [LastModifierUserId] bigint  NULL,
  [DeletionTime] datetime2(0)  NULL,
  [DeleterUserId] int  NULL,
  [CreationTime] datetime2(0)  NULL,
  [CreatorUserId] bigint  NULL,
  [TenantId] int  NULL
)
GO

ALTER TABLE [dbo].[sys_user] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'员工编号',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'NO'
GO

EXEC sp_addextendedproperty
'MS_Description', N'员工名称',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'登录账号',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'Account'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'Password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'Sex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'手机号码',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'Mobile'
GO

EXEC sp_addextendedproperty
'MS_Description', N'信箱',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'Email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'启用',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'IsActive'
GO

EXEC sp_addextendedproperty
'MS_Description', N'登录次数',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'LoginCount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'助记符',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'Memoni'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除标记',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'IsDeleted'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组织',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'OrgId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'LastModificationTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改人',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'ModifyUserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'跨部门数据查看',
'SCHEMA', N'dbo',
'TABLE', N'sys_user',
'COLUMN', N'InterDepartmental'
GO


-- ----------------------------
-- Records of sys_user
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_user] ON
GO

INSERT INTO [dbo].[sys_user] ([Id], [NO], [Name], [Account], [Password], [Sex], [Mobile], [Email], [Remark], [IsActive], [LoginCount], [Memoni], [IsDeleted], [OrgId], [LastModificationTime], [ModifyUserId], [UserType], [InterDepartmental], [LastModifierUserId], [DeletionTime], [DeleterUserId], [CreationTime], [CreatorUserId], [TenantId]) VALUES (N'1', N'admin', N'超级管理员', N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'1', N'13699856947', N'1@qq.con', N'abc', N'1', N'6', N'234', N'0', NULL, N'2021-05-04 13:17:00', N'1', N'0', NULL, NULL, NULL, NULL, NULL, NULL, N'1')
GO

SET IDENTITY_INSERT [dbo].[sys_user] OFF
GO


-- ----------------------------
-- Table structure for sys_usersysorganization
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_usersysorganization]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_usersysorganization]
GO

CREATE TABLE [dbo].[sys_usersysorganization] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [SysUser_ID] int  NULL,
  [SysOrganization_ID] int  NULL
)
GO

ALTER TABLE [dbo].[sys_usersysorganization] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键Id',
'SCHEMA', N'dbo',
'TABLE', N'sys_usersysorganization',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户Id',
'SCHEMA', N'dbo',
'TABLE', N'sys_usersysorganization',
'COLUMN', N'SysUser_ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组织Id',
'SCHEMA', N'dbo',
'TABLE', N'sys_usersysorganization',
'COLUMN', N'SysOrganization_ID'
GO


-- ----------------------------
-- Records of sys_usersysorganization
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_usersysorganization] ON
GO

SET IDENTITY_INSERT [dbo].[sys_usersysorganization] OFF
GO


-- ----------------------------
-- Table structure for sys_usersysrole
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_usersysrole]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_usersysrole]
GO

CREATE TABLE [dbo].[sys_usersysrole] (
  [SysRole_ID] bigint  NOT NULL,
  [SysUser_ID] bigint  NOT NULL,
  [SysRole_Type] bigint  NULL,
  [Id] bigint  IDENTITY(1,1) NOT NULL
)
GO

ALTER TABLE [dbo].[sys_usersysrole] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sys_usersysrole
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_usersysrole] ON
GO

INSERT INTO [dbo].[sys_usersysrole] ([SysRole_ID], [SysUser_ID], [SysRole_Type], [Id]) VALUES (N'1', N'1', N'0', N'5')
GO

INSERT INTO [dbo].[sys_usersysrole] ([SysRole_ID], [SysUser_ID], [SysRole_Type], [Id]) VALUES (N'2', N'1', N'0', N'6')
GO

SET IDENTITY_INSERT [dbo].[sys_usersysrole] OFF
GO


-- ----------------------------
-- Auto increment value for sys_auditlog
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_auditlog]', RESEED, 24)
GO


-- ----------------------------
-- Primary Key structure for table sys_auditlog
-- ----------------------------
ALTER TABLE [dbo].[sys_auditlog] ADD CONSTRAINT [PK__sys_audi__3214EC070AA212B2] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sys_datadictionary
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_datadictionary]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table sys_datadictionary
-- ----------------------------
ALTER TABLE [dbo].[sys_datadictionary] ADD CONSTRAINT [PK__sys_data__3214EC079289FB62] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sys_organization
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_organization]', RESEED, 25)
GO


-- ----------------------------
-- Primary Key structure for table sys_organization
-- ----------------------------
ALTER TABLE [dbo].[sys_organization] ADD CONSTRAINT [PK__sys_orga__3214EC071C64BE2E] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sys_permission
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_permission]', RESEED, 153)
GO


-- ----------------------------
-- Indexes structure for table sys_permission
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [idx_ad_permission_01]
ON [dbo].[sys_permission] (
  [ParentId] ASC,
  [Label] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_permission
-- ----------------------------
ALTER TABLE [dbo].[sys_permission] ADD CONSTRAINT [PK__sys_perm__3214EC070D57C3F8] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sys_role
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_role]', RESEED, 2)
GO


-- ----------------------------
-- Indexes structure for table sys_role
-- ----------------------------
CREATE NONCLUSTERED INDEX [Id]
ON [dbo].[sys_role] (
  [Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [Id_2]
ON [dbo].[sys_role] (
  [Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [Id_3]
ON [dbo].[sys_role] (
  [Id] ASC
)
GO

CREATE NONCLUSTERED INDEX [Id_4]
ON [dbo].[sys_role] (
  [Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE [dbo].[sys_role] ADD CONSTRAINT [PK__sys_role__3214EC077E2D3BC4] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sys_rolepermission
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_rolepermission]', RESEED, 1334)
GO


-- ----------------------------
-- Indexes structure for table sys_rolepermission
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [idx_ad_role_permission_01]
ON [dbo].[sys_rolepermission] (
  [RoleId] ASC,
  [PermissionId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_rolepermission
-- ----------------------------
ALTER TABLE [dbo].[sys_rolepermission] ADD CONSTRAINT [PK__sys_role__3214EC074852CB5B] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sys_user
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_user]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table sys_user
-- ----------------------------
CREATE NONCLUSTERED INDEX [Id]
ON [dbo].[sys_user] (
  [Id] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user] ADD CONSTRAINT [PK__sys_user__3214EC07911714CD] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sys_usersysorganization
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_usersysorganization]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table sys_usersysorganization
-- ----------------------------
ALTER TABLE [dbo].[sys_usersysorganization] ADD CONSTRAINT [PK__sys_user__3214EC077FB36851] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sys_usersysrole
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_usersysrole]', RESEED, 6)
GO


-- ----------------------------
-- Indexes structure for table sys_usersysrole
-- ----------------------------
CREATE NONCLUSTERED INDEX [FK_SYSUSERS_REFERENCE_SYSUSER]
ON [dbo].[sys_usersysrole] (
  [SysUser_ID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table sys_usersysrole
-- ----------------------------
ALTER TABLE [dbo].[sys_usersysrole] ADD CONSTRAINT [PK__sys_user__3214EC070BEBDC1F] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

