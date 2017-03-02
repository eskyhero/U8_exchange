INSERT INTO [UFDATA_998_2015].[dbo].[DispatchLists]
           ([DLID]
           ,[iCorID]
           ,[cWhCode]
           ,[cInvCode]
           ,[iQuantity]
           ,[iNum]
           ,[iQuotedPrice]
           ,[iUnitPrice]
           ,[iTaxUnitPrice]
           ,[iMoney]
           ,[iTax]
           ,[iSum]
           ,[iDisCount]
           ,[iNatUnitPrice]
           ,[iNatMoney]
           ,[iNatTax]
           ,[iNatSum]
           ,[iNatDisCount]
           ,[iSettleNum]
           ,[iSettleQuantity]
           ,[iBatch]
           ,[cBatch]
           ,[bSettleAll]
           ,[iTB]
           ,[dvDate]
           ,[TBQuantity]
           ,[TBNum]
           ,[iSOsID]
           ,[iDLsID]
           ,[KL]
           ,[KL2]
           ,[cInvName]
           ,[iTaxRate]
           ,[fOutQuantity]
           ,[fOutNum]
           ,[cItemCode]
           ,[cItem_class]
           ,[fSaleCost]
           ,[fSalePrice]
           ,[cVenAbbName]
           ,[cItemName]
           ,[cItem_CName]
           ,[bIsSTQc]
           ,[iInvExchRate]
           ,[cUnitID]
           ,[cCode]
           ,[iRetQuantity]
           ,[fEnSettleQuan]
           ,[fEnSettleSum]
           ,[iSettlePrice]
           ,[cDefine28]
           ,[cDefine29]
           ,[cDefine30]
           ,[cDefine31]
           ,[cDefine32]
           ,[cDefine33]
           ,[cDefine34]
           ,[cDefine35]
           ,[cDefine36]
           ,[cDefine37]
           ,[dMDate]
           ,[bGsp]
           ,[cGspState]
           ,[cSoCode]
           ,[cCorCode]
           ,[iPPartSeqID]
           ,[iPPartID]
           ,[iPPartQty]
           ,[cContractID]
           ,[cContractTagCode]
           ,[cContractRowGuid]
           ,[iMassDate]
           ,[cMassUnit]
           ,[bQANeedCheck]
           ,[bQAUrgency]
           ,[bQAChecking]
           ,[bQAChecked]
           ,[iQAQuantity]
           ,[iQANum]
           ,[cCusInvCode]
           ,[cCusInvName]
           ,[fsumsignquantity]
           ,[fsumsignnum]
           ,[cbaccounter]
           ,[bcosting]
           ,[cordercode]
           ,[iorderrowno]
           ,[fcusminprice]
           ,[icostquantity]
           ,[icostsum]
           ,[ispecialtype]
           ,[cvmivencode]
           ,[iexchsum]
           ,[imoneysum]
           ,[irowno]
           ,[frettbquantity]
           ,[fretsum]
           ,[iExpiratDateCalcu]
           ,[dExpirationdate]
           ,[cExpirationdate]
           ,[cbatchproperty1]
           ,[cbatchproperty2]
           ,[cbatchproperty3]
           ,[cbatchproperty4]
           ,[cbatchproperty5]
           ,[cbatchproperty6]
           ,[cbatchproperty7]
           ,[cbatchproperty8]
           ,[cbatchproperty9]
           ,[cbatchproperty10]
           ,[dblPreExchMomey]
           ,[dblPreMomey]
           ,[idemandtype]
           ,[cdemandcode]
           ,[cdemandmemo]
           ,[cdemandid]
           ,[idemandseq]
           ,[cvencode]
           ,[cReasonCode]
           ,[cInvSN]
           ,[iInvSNCount]
           ,[bneedsign]
           ,[bsignover]
           ,[bneedloss]
           ,[flossrate]
           ,[frlossqty]
           ,[fulossqty]
           ,[isettletype]
           ,[crelacuscode]
           ,[cLossMaker]
           ,[dLossDate]
           ,[dLossTime]
           ,[icoridlsid]
           ,[fretoutqty]
           ,[body_outid]
           ,[fVeriBillQty]
           ,[fVeriBillSum]
           ,[fVeriRetQty]
           ,[fVeriRetSum]
           ,[fLastSettleQty]
           ,[fLastSettleSum]
           ,[cBookWhcode]
           ,[cInVouchType]
           ,[cPosition]
           ,[fretqtywkp]
           ,[fretqtyykp]
           ,[frettbqtyykp]
           ,[fretsumykp]
           ,[dkeepdate]
           ,[cSCloser]
           ,[isaleoutid]
           ,[bsaleprice]
           ,[bgift]
           ,[bmpforderclosed]
           ,[cbSysBarCode]
           ,[fxjquantity]
           ,[fxjnum]
           ,[bIAcreatebill]
           ,[cParentCode]
           ,[cChildCode]
           ,[fchildqty]
           ,[fchildrate]
           ,[iCalcType]
           ,[fappretwkpqty]
           ,[fappretwkpsum]
           ,[fappretykpqty]
           ,[fappretykpsum]
           ,[fappretwkptbqty]
           ,[fappretykptbqty]
           ,[irtnappid]
           ,[crtnappcode]
           ,[fretailrealamount]
           ,[fretailsettleamount])
     VALUES
           ((select DLID from dispatchlist where cdlcode = #orderNum#)
           ,0
           ,'05'
           ,(select cinvcode from inventory where cinvdefine5 = #productCode#)
           ,-#count#
           ,NULL
           ,0
           ,#price#/1.17
           ,#price#
           ,-(#price#/1.17)*#count#
           ,-(0.17/1.17)*#price#*#count#
           ,-#price#*#count#
           ,0
           ,#price#/1.17
           ,-(#price#/1.17)*#count#
           ,-(0.17/1.17)*#price#*#count#
           ,-#price#*#count#
           ,0
           ,0
           ,0
           ,NULL
           ,NULL
           ,0
           ,0
           ,NULL
           ,0
           ,NULL
           ,NULL
           ,#id#
           ,100
           ,100
           ,(select cInvName from inventory where cinvdefine5 = #productCode#)
           ,17
           ,0
           ,0
           ,NULL
           ,NULL
           ,0
           ,0
           ,NULL
           ,NULL
           ,NULL
           ,0
           ,NULL
           ,<cUnitID, nvarchar(35),>
           ,<cCode, nvarchar(30),>
           ,<iRetQuantity, userdecimal,>
           ,<fEnSettleQuan, userdecimal,>
           ,<fEnSettleSum, money,>
           ,<iSettlePrice, decimal(30,10),>
           ,<cDefine28, nvarchar(120),>
           ,<cDefine29, nvarchar(120),>
           ,<cDefine30, nvarchar(120),>
           ,<cDefine31, nvarchar(120),>
           ,<cDefine32, nvarchar(120),>
           ,<cDefine33, nvarchar(120),>
           ,<cDefine34, int,>
           ,<cDefine35, int,>
           ,<cDefine36, datetime,>
           ,<cDefine37, datetime,>
           ,<dMDate, datetime,>
           ,<bGsp, bit,>
           ,<cGspState, nvarchar(20),>
           ,<cSoCode, nvarchar(30),>
           ,<cCorCode, nvarchar(30),>
           ,<iPPartSeqID, int,>
           ,<iPPartID, int,>
           ,<iPPartQty, userdecimal,>
           ,<cContractID, nvarchar(64),>
           ,<cContractTagCode, nvarchar(150),>
           ,<cContractRowGuid, uniqueidentifier,>
           ,<iMassDate, int,>
           ,<cMassUnit, smallint,>
           ,<bQANeedCheck, bit,>
           ,<bQAUrgency, bit,>
           ,<bQAChecking, bit,>
           ,<bQAChecked, bit,>
           ,<iQAQuantity, decimal(30,10),>
           ,<iQANum, decimal(30,10),>
           ,<cCusInvCode, nvarchar(60),>
           ,<cCusInvName, nvarchar(100),>
           ,<fsumsignquantity, decimal(26,9),>
           ,<fsumsignnum, decimal(26,9),>
           ,<cbaccounter, nvarchar(30),>
           ,<bcosting, bit,>
           ,<cordercode, nvarchar(30),>
           ,<iorderrowno, bigint,>
           ,<fcusminprice, decimal(26,9),>
           ,<icostquantity, decimal(26,9),>
           ,<icostsum, money,>
           ,<ispecialtype, tinyint,>
           ,<cvmivencode, nvarchar(20),>
           ,<iexchsum, money,>
           ,<imoneysum, money,>
           ,<irowno, bigint,>
           ,<frettbquantity, decimal(26,9),>
           ,<fretsum, decimal(26,9),>
           ,<iExpiratDateCalcu, smallint,>
           ,<dExpirationdate, datetime,>
           ,<cExpirationdate, nvarchar(20),>
           ,<cbatchproperty1, decimal(38,8),>
           ,<cbatchproperty2, decimal(38,8),>
           ,<cbatchproperty3, decimal(38,8),>
           ,<cbatchproperty4, decimal(38,8),>
           ,<cbatchproperty5, decimal(38,8),>
           ,<cbatchproperty6, nvarchar(120),>
           ,<cbatchproperty7, nvarchar(120),>
           ,<cbatchproperty8, nvarchar(120),>
           ,<cbatchproperty9, nvarchar(120),>
           ,<cbatchproperty10, datetime,>
           ,<dblPreExchMomey, decimal(29,6),>
           ,<dblPreMomey, decimal(29,6),>
           ,<idemandtype, smallint,>
           ,<cdemandcode, nvarchar(40),>
           ,<cdemandmemo, nvarchar(300),>
           ,<cdemandid, nvarchar(30),>
           ,<idemandseq, bigint,>
           ,<cvencode, nvarchar(20),>
           ,<cReasonCode, nvarchar(10),>
           ,<cInvSN, nvarchar(200),>
           ,<iInvSNCount, int,>
           ,<bneedsign, bit,>
           ,<bsignover, bit,>
           ,<bneedloss, bit,>
           ,<flossrate, decimal(29,6),>
           ,<frlossqty, decimal(29,6),>
           ,<fulossqty, decimal(29,6),>
           ,<isettletype, smallint,>
           ,<crelacuscode, nvarchar(20),>
           ,<cLossMaker, nvarchar(20),>
           ,<dLossDate, datetime,>
           ,<dLossTime, datetime,>
           ,<icoridlsid, bigint,>
           ,<fretoutqty, decimal(29,6),>
           ,<body_outid, uniqueidentifier,>
           ,<fVeriBillQty, decimal(26,9),>
           ,<fVeriBillSum, money,>
           ,<fVeriRetQty, decimal(26,9),>
           ,<fVeriRetSum, money,>
           ,<fLastSettleQty, decimal(26,9),>
           ,<fLastSettleSum, money,>
           ,<cBookWhcode, nvarchar(10),>
           ,<cInVouchType, nvarchar(2),>
           ,<cPosition, nvarchar(20),>
           ,<fretqtywkp, decimal(26,9),>
           ,<fretqtyykp, decimal(26,9),>
           ,<frettbqtyykp, decimal(26,9),>
           ,<fretsumykp, decimal(26,9),>
           ,<dkeepdate, datetime,>
           ,<cSCloser, nvarchar(20),>
           ,<isaleoutid, bigint,>
           ,<bsaleprice, bit,>
           ,<bgift, bit,>
           ,<bmpforderclosed, bit,>
           ,<cbSysBarCode, nvarchar(80),>
           ,<fxjquantity, float,>
           ,<fxjnum, float,>
           ,<bIAcreatebill, bit,>
           ,<cParentCode, nvarchar(50),>
           ,<cChildCode, nvarchar(50),>
           ,<fchildqty, decimal(30,9),>
           ,<fchildrate, decimal(30,9),>
           ,<iCalcType, tinyint,>
           ,<fappretwkpqty, decimal(30,9),>
           ,<fappretwkpsum, decimal(30,9),>
           ,<fappretykpqty, decimal(30,9),>
           ,<fappretykpsum, decimal(30,9),>
           ,<fappretwkptbqty, decimal(30,9),>
           ,<fappretykptbqty, decimal(30,9),>
           ,<irtnappid, bigint,>
           ,<crtnappcode, nvarchar(30),>
           ,<fretailrealamount, decimal(26,9),>
           ,<fretailsettleamount, decimal(26,9),>)
GO


