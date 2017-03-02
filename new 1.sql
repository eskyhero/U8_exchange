INSERT INTO [UFDATA_998_2015].[dbo].[DispatchList]
           ([DLID]
           ,[cDLCode]
           ,[cVouchType]
           ,[cSTCode]
           ,[dDate]
           ,[cRdCode]
           ,[cDepCode]
           ,[cPersonCode]
           ,[SBVID]
           ,[cSBVCode]
           ,[cSOCode]
           ,[cCusCode]
           ,[cPayCode]
           ,[cSCCode]
           ,[cShipAddress]
           ,[cexch_name]
           ,[iExchRate]
           ,[iTaxRate]
           ,[bFirst]
           ,[bReturnFlag]
           ,[bSettleAll]
           ,[cMemo]
           ,[cSaleOut]
           ,[cDefine1]
           ,[cDefine2]
           ,[cDefine3]
           ,[cDefine4]
           ,[cDefine5]
           ,[cDefine6]
           ,[cDefine7]
           ,[cDefine8]
           ,[cDefine9]
           ,[cDefine10]
           ,[cVerifier]
           ,[cMaker]
           ,[iNetLock]
           ,[iSale]
           ,[cCusName]
           ,[iVTid]
           ,[cBusType]
           ,[cCloser]
           ,[cAccounter]
           ,[cCreChpName]
           ,[cDefine11]
           ,[cDefine12]
           ,[cDefine13]
           ,[cDefine14]
           ,[cDefine15]
           ,[cDefine16]
           ,[bIAFirst]
           ,[ioutgolden]
           ,[cgatheringplan]
           ,[dCreditStart]
           ,[dGatheringDate]
           ,[icreditdays]
           ,[bCredit]
           ,[caddcode]
           ,[iverifystate]
           ,[ireturncount]
           ,[iswfcontrolled]
           ,[icreditstate]
           ,[bARFirst]
           ,[cmodifier]
           ,[dmoddate]
           ,[dverifydate]
           ,[ccusperson]
           ,[dcreatesystime]
           ,[dverifysystime]
           ,[dmodifysystime]
           ,[csvouchtype]
           ,[iflowid]
           ,[bsigncreate]
           ,[bcashsale]
           ,[cgathingcode]
           ,[cChanger]
           ,[cChangeMemo]
           ,[outid]
           ,[bmustbook]
           ,[cBookDepcode]
           ,[cBookType]
           ,[bSaUsed]
           ,[bneedbill]
           ,[baccswitchflag]
           ,[iPrintCount]
           ,[ccuspersoncode]
           ,[cSourceCode]
           ,[bsaleoutcreatebill]
           ,[cSysBarCode]
           ,[cCurrentAuditor]
           ,[csscode]
           ,[cinvoicecompany]
           ,[fEBweight]
           ,[cEBweightUnit]
           ,[cEBExpressCode]
           ,[iEBExpressCoID]
           ,[SeparateID]
           ,[bNotToGoldTax]
           ,[cEBTrnumber]
           ,[cEBBuyer]
           ,[cEBBuyerNote]
           ,[ccontactname]
           ,[cEBprovince]
           ,[cEBcity]
           ,[cEBdistrict]
           ,[cmobilephone]
           ,[cInvoiceCusName]
           ,[cweighter]
           ,[dweighttime]
           ,[cPickVouchCode])
     VALUES
           (select top 1 max(maxorderid) from YDH_Max_OrderID where TableName = 'DISPATCH')
           ,#orderNum#
           ,'05'
           ,'01'
           ,CONVERT(char,#createTime#,23)
           ,NULL
           ,'24'
           ,'0211'
           ,0
           ,NULL
           ,'SX15090148F'
           ,<cCusCode, nvarchar(20),>
           ,<cPayCode, nvarchar(3),>
           ,<cSCCode, nvarchar(2),>
           ,<cShipAddress, nvarchar(255),>
           ,<cexch_name, nvarchar(8),>
           ,<iExchRate, float,>
           ,<iTaxRate, float,>
           ,<bFirst, bit,>
           ,<bReturnFlag, bit,>
           ,<bSettleAll, bit,>
           ,<cMemo, nvarchar(255),>
           ,<cSaleOut, nvarchar(255),>
           ,<cDefine1, nvarchar(20),>
           ,<cDefine2, nvarchar(20),>
           ,<cDefine3, nvarchar(20),>
           ,<cDefine4, datetime,>
           ,<cDefine5, int,>
           ,<cDefine6, datetime,>
           ,<cDefine7, float,>
           ,<cDefine8, nvarchar(4),>
           ,<cDefine9, nvarchar(8),>
           ,<cDefine10, nvarchar(60),>
           ,<cVerifier, nvarchar(20),>
           ,<cMaker, nvarchar(20),>
           ,<iNetLock, real,>
           ,<iSale, smallint,>
           ,<cCusName, nvarchar(120),>
           ,<iVTid, int,>
           ,<cBusType, nvarchar(8),>
           ,<cCloser, nvarchar(20),>
           ,<cAccounter, nvarchar(20),>
           ,<cCreChpName, nvarchar(20),>
           ,<cDefine11, nvarchar(120),>
           ,<cDefine12, nvarchar(120),>
           ,<cDefine13, nvarchar(120),>
           ,<cDefine14, nvarchar(120),>
           ,<cDefine15, int,>
           ,<cDefine16, float,>
           ,<bIAFirst, bit,>
           ,<ioutgolden, int,>
           ,<cgatheringplan, nvarchar(20),>
           ,<dCreditStart, datetime,>
           ,<dGatheringDate, datetime,>
           ,<icreditdays, int,>
           ,<bCredit, bit,>
           ,<caddcode, nvarchar(30),>
           ,<iverifystate, int,>
           ,<ireturncount, tinyint,>
           ,<iswfcontrolled, tinyint,>
           ,<icreditstate, varchar(20),>
           ,<bARFirst, bit,>
           ,<cmodifier, nvarchar(20),>
           ,<dmoddate, datetime,>
           ,<dverifydate, datetime,>
           ,<ccusperson, nvarchar(100),>
           ,<dcreatesystime, datetime,>
           ,<dverifysystime, datetime,>
           ,<dmodifysystime, datetime,>
           ,<csvouchtype, nvarchar(10),>
           ,<iflowid, int,>
           ,<bsigncreate, bit,>
           ,<bcashsale, bit,>
           ,<cgathingcode, nvarchar(255),>
           ,<cChanger, nvarchar(20),>
           ,<cChangeMemo, nvarchar(255),>
           ,<outid, uniqueidentifier,>
           ,<bmustbook, bit,>
           ,<cBookDepcode, nvarchar(12),>
           ,<cBookType, nvarchar(10),>
           ,<bSaUsed, bit,>
           ,<bneedbill, bit,>
           ,<baccswitchflag, bit,>
           ,<iPrintCount, int,>
           ,<ccuspersoncode, nvarchar(30),>
           ,<cSourceCode, nvarchar(60),>
           ,<bsaleoutcreatebill, bit,>
           ,<cSysBarCode, nvarchar(60),>
           ,<cCurrentAuditor, nvarchar(200),>
           ,<csscode, nvarchar(3),>
           ,<cinvoicecompany, nvarchar(20),>
           ,<fEBweight, decimal(30,9),>
           ,<cEBweightUnit, nvarchar(50),>
           ,<cEBExpressCode, nvarchar(50),>
           ,<iEBExpressCoID, bigint,>
           ,<SeparateID, int,>
           ,<bNotToGoldTax, tinyint,>
           ,<cEBTrnumber, nvarchar(80),>
           ,<cEBBuyer, nvarchar(2000),>
           ,<cEBBuyerNote, nvarchar(4000),>
           ,<ccontactname, nvarchar(255),>
           ,<cEBprovince, nvarchar(20),>
           ,<cEBcity, nvarchar(20),>
           ,<cEBdistrict, nvarchar(60),>
           ,<cmobilephone, nvarchar(50),>
           ,<cInvoiceCusName, nvarchar(255),>
           ,<cweighter, nvarchar(40),>
           ,<dweighttime, datetime,>
           ,<cPickVouchCode, nvarchar(255),>)
GO


