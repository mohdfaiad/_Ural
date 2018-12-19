object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 233
  Top = 28
  Height = 612
  Width = 873
  object rsCA: TSocketConnection
    ServerGUID = '{7E775A58-2B9E-4860-9369-4B56C6816258}'
    ServerName = 'svc_Snez.Snez'
    Address = '127.0.0.1'
    Left = 40
    Top = 40
  end
  object cdsBusinessData: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'Id'
        ParamType = ptUnknown
      end>
    ProviderName = 'dsGetBusiness'
    Left = 128
    Top = 80
  end
  object cdsBsnByFunc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@id_User'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@UID'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dsBsnByFunc'
    RemoteServer = rsCA
    Left = 368
    Top = 56
    object cdsBsnByFuncid_business: TIntegerField
      FieldName = 'id_business'
      ReadOnly = True
    end
    object cdsBsnByFuncName: TStringField
      FieldName = 'Name'
      ReadOnly = True
      Size = 50
    end
  end
  object cdsLCBuff: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 48
    Top = 328
    object cdsLCBuffid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object cdsLCBuffid_OperParent: TIntegerField
      FieldName = 'id_OperParent'
    end
    object cdsLCBuffid_old_Oper: TIntegerField
      FieldName = 'id_old_Oper'
    end
    object cdsLCBuffDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object cdsLCBuffid_LC_Oper: TIntegerField
      FieldName = 'id_LC_Oper'
    end
    object cdsLCBuffOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object cdsLCBuffid_Replicator: TIntegerField
      FieldName = 'id_Replicator'
    end
    object cdsLCBuffReplicatorShortName: TStringField
      FieldName = 'ReplicatorShortName'
      Size = 5
    end
    object cdsLCBuffid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object cdsLCBuffCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      Size = 152
    end
    object cdsLCBuffid_business: TIntegerField
      FieldName = 'id_business'
    end
    object cdsLCBuffId_CurrencyBsn: TIntegerField
      FieldName = 'Id_CurrencyBsn'
    end
    object cdsLCBuffBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object cdsLCBuffBusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object cdsLCBuffDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object cdsLCBuffCorrect: TBooleanField
      FieldName = 'Correct'
    end
    object cdsLCBuffOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object cdsLCBuffId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object cdsLCBuffCurrencyOperName: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object cdsLCBuffCurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object cdsLCBuffAmountOper: TFloatField
      FieldName = 'AmountOper'
    end
    object cdsLCBuffAmountOper2: TFloatField
      FieldName = 'AmountOper2'
    end
    object cdsLCBuffPriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object cdsLCBuffRateOper: TFloatField
      FieldName = 'RateOper'
    end
    object cdsLCBuffid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object cdsLCBuffMeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 10
    end
    object cdsLCBuffRealKoef: TFloatField
      FieldName = 'RealKoef'
    end
    object cdsLCBuffAmountOperBaseMS: TFloatField
      FieldName = 'AmountOperBaseMS'
    end
    object cdsLCBuffId_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object cdsLCBuffCurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object cdsLCBuffCurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object cdsLCBuffSummSys: TFloatField
      FieldName = 'SummSys'
    end
    object cdsLCBuffRateSys: TFloatField
      FieldName = 'RateSys'
    end
    object cdsLCBuffid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object cdsLCBuffid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object cdsLCBuffid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object cdsLCBuffSrcName: TStringField
      FieldName = 'SrcName'
      Size = 50
    end
    object cdsLCBuffSrcID_Main: TIntegerField
      FieldName = 'SrcID_Main'
    end
    object cdsLCBuffid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object cdsLCBuffid_CAWhouse: TIntegerField
      FieldName = 'id_CAWhouse'
    end
    object cdsLCBuffid_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object cdsLCBuffid_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object cdsLCBuffid_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object cdsLCBuffid_Equipment: TIntegerField
      FieldName = 'id_Equipment'
    end
    object cdsLCBuffReprName: TStringField
      FieldName = 'ReprName'
      Size = 255
    end
    object cdsLCBuffReprID_Main: TIntegerField
      FieldName = 'ReprID_Main'
    end
    object cdsLCBuffReprWHName: TStringField
      FieldName = 'ReprWHName'
      Size = 50
    end
    object cdsLCBuffReprWHID_Main: TIntegerField
      FieldName = 'ReprWHID_Main'
    end
    object cdsLCBuffId_CurrencyInv: TIntegerField
      FieldName = 'Id_CurrencyInv'
    end
    object cdsLCBuffPriceInv: TFloatField
      FieldName = 'PriceInv'
    end
    object cdsLCBuffRateInv: TFloatField
      FieldName = 'RateInv'
    end
    object cdsLCBuffCurrencyInvName: TStringField
      FieldName = 'CurrencyInvName'
      Size = 30
    end
    object cdsLCBuffCurrencyInvShortName: TStringField
      FieldName = 'CurrencyInvShortName'
      Size = 10
    end
    object cdsLCBuffid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object cdsLCBuffWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object cdsLCBuffWareID_Main: TIntegerField
      FieldName = 'WareID_Main'
    end
    object cdsLCBuffKoeff: TIntegerField
      FieldName = 'Koeff'
    end
    object cdsLCBuffKoeffName: TStringField
      FieldName = 'KoeffName'
      Size = 50
    end
    object cdsLCBuffCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object cdsLCBuffid_UserChecker: TIntegerField
      FieldName = 'id_UserChecker'
    end
    object cdsLCBuffCheckerFIO: TStringField
      FieldName = 'CheckerFIO'
      Size = 152
    end
    object cdsLCBuffid_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object cdsLCBuffFormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object cdsLCBuffid_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object cdsLCBuffFuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object cdsLCBuffDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object cdsLCBuffid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object cdsLCBuffContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      Size = 50
    end
    object cdsLCBuffid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object cdsLCBuffSummOper: TFloatField
      FieldName = 'SummOper'
    end
    object cdsLCBuffTypeName: TStringField
      FieldName = 'TypeName'
      Size = 30
    end
    object cdsLCBuffOperNum: TStringField
      FieldName = 'OperNum'
      Size = 255
    end
    object cdsLCBuffOperDelta: TFloatField
      FieldName = 'OperDelta'
    end
    object cdsLCBuffOperRateDelta: TFloatField
      FieldName = 'OperRateDelta'
    end
    object cdsLCBuffOperTotalDelta: TFloatField
      FieldName = 'OperTotalDelta'
    end
    object cdsLCBuffDTDiff: TIntegerField
      FieldName = 'DTDiff'
    end
    object cdsLCBuffHasViza: TBooleanField
      FieldName = 'HasViza'
    end
    object cdsLCBuffOperState: TIntegerField
      FieldName = 'OperState'
    end
    object cdsLCBuffHidedOper: TBooleanField
      FieldName = 'HidedOper'
    end
    object cdsLCBuffOperSummSys: TFloatField
      FieldName = 'OperSummSys'
    end
    object cdsLCBuffRateMain: TFloatField
      FieldName = 'RateMain'
    end
    object cdsLCBuffid_Repr_Ex: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object cdsLCBuffid_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object cdsLCBuffImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object cdsLCBuffAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object cdsLCBuffContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object cdsLCBuffOperDeltaCrn: TFloatField
      FieldName = 'OperDeltaCrn'
    end
    object cdsLCBuffOperRateDeltaCrn: TFloatField
      FieldName = 'OperRateDeltaCrn'
    end
    object cdsLCBuffOperTotalDeltaCrn: TFloatField
      FieldName = 'OperTotalDeltaCrn'
    end
    object cdsLCBuffOperCrnName: TStringField
      FieldName = 'OperCrnName'
      Size = 10
    end
    object cdsLCBuffOperSum_Offer: TFloatField
      FieldName = 'OperSum_Offer'
    end
    object cdsLCBuffOperSum_Inv: TFloatField
      FieldName = 'OperSum_Inv'
    end
    object cdsLCBuffCRN_OLD_OperSum: TFloatField
      FieldName = 'CRN_OLD_OperSum'
    end
    object cdsLCBuffCRN_OLD_OperSum_Offer: TFloatField
      FieldName = 'CRN_OLD_OperSum_Offer'
    end
    object cdsLCBuffCRN_OperSum_Inv: TFloatField
      FieldName = 'CRN_OperSum_Inv'
    end
    object cdsLCBuffOperSumCalced: TFloatField
      FieldName = 'OperSumCalced'
    end
    object cdsLCBuffOperSum_OfferCalced: TFloatField
      FieldName = 'OperSum_OfferCalced'
    end
    object cdsLCBuffBlocked: TBooleanField
      FieldName = 'Blocked'
    end
    object cdsLCBuffCurrencyBsnName: TStringField
      FieldName = 'CurrencyBsnName'
      Size = 30
    end
    object cdsLCBuffOperTypeSIGN: TIntegerField
      FieldName = 'OperTypeSIGN'
    end
    object cdsLCBuffHasChild: TIntegerField
      FieldName = 'HasChild'
    end
    object cdsLCBuffDig1: TFloatField
      FieldName = 'Dig1'
    end
    object cdsLCBuffDig2: TFloatField
      FieldName = 'Dig2'
    end
    object cdsLCBuffDig3: TFloatField
      FieldName = 'Dig3'
    end
    object cdsLCBuffDig4: TFloatField
      FieldName = 'Dig4'
    end
    object cdsLCBuffDig5: TFloatField
      FieldName = 'Dig5'
    end
    object cdsLCBuffDig6: TFloatField
      FieldName = 'Dig6'
    end
    object cdsLCBuffDig7: TFloatField
      FieldName = 'Dig7'
    end
    object cdsLCBuffDig8: TFloatField
      FieldName = 'Dig8'
    end
    object cdsLCBuffDig9: TFloatField
      FieldName = 'Dig9'
    end
    object cdsLCBuffDig10: TFloatField
      FieldName = 'Dig10'
    end
    object cdsLCBuffDig11: TFloatField
      FieldName = 'Dig11'
    end
    object cdsLCBuffDig12: TFloatField
      FieldName = 'Dig12'
    end
    object cdsLCBuffDig13: TFloatField
      FieldName = 'Dig13'
    end
    object cdsLCBuffDig14: TFloatField
      FieldName = 'Dig14'
    end
    object cdsLCBuffDig15: TFloatField
      FieldName = 'Dig15'
    end
    object cdsLCBuffStr1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object cdsLCBuffStr2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object cdsLCBuffStr3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object cdsLCBuffStr4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object cdsLCBuffStr5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object cdsLCBuffStr6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object cdsLCBuffStr7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object cdsLCBuffStr8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object cdsLCBuffStr9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object cdsLCBuffStr10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object cdsLCBuffStr11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object cdsLCBuffStr12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object cdsLCBuffStr13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object cdsLCBuffStr14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object cdsLCBuffStr15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object cdsLCBuffOperVidName: TStringField
      FieldName = 'OperVidName'
      Size = 255
    end
    object cdsLCBuffis_MIrr: TBooleanField
      FieldName = 'is_MIrr'
    end
    object cdsLCBuffAutoGen: TBooleanField
      FieldName = 'AutoGen'
    end
    object cdsLCBuffVatIn: TBooleanField
      FieldName = 'VatIn'
    end
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <
      item
        Name = 'id_Oper'
        DataType = ftInteger
      end
      item
        Name = 'id_OperParent'
        DataType = ftInteger
      end
      item
        Name = 'id_old_Oper'
        DataType = ftInteger
      end
      item
        Name = 'DateCreate'
        DataType = ftDateTime
      end
      item
        Name = 'id_LC_Oper'
        DataType = ftInteger
      end
      item
        Name = 'OperVid'
        DataType = ftInteger
      end
      item
        Name = 'id_Replicator'
        DataType = ftInteger
      end
      item
        Name = 'ReplicatorShortName'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'id_UserCreator'
        DataType = ftInteger
      end
      item
        Name = 'CreatorFIO'
        DataType = ftString
        Size = 152
      end
      item
        Name = 'id_business'
        DataType = ftInteger
      end
      item
        Name = 'Id_CurrencyBsn'
        DataType = ftInteger
      end
      item
        Name = 'BusinessName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'BusinessNum'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'DateLocal'
        DataType = ftDateTime
      end
      item
        Name = 'Correct'
        DataType = ftBoolean
      end
      item
        Name = 'OperTypeIn'
        DataType = ftBoolean
      end
      item
        Name = 'Id_CurrencyOper'
        DataType = ftInteger
      end
      item
        Name = 'CurrencyOperName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CurrencyOperShortName'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'AmountOper'
        DataType = ftFloat
      end
      item
        Name = 'AmountOper2'
        DataType = ftFloat
      end
      item
        Name = 'PriceOper'
        DataType = ftFloat
      end
      item
        Name = 'RateOper'
        DataType = ftFloat
      end
      item
        Name = 'id_Measure'
        DataType = ftInteger
      end
      item
        Name = 'MeasureName'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RealKoef'
        DataType = ftFloat
      end
      item
        Name = 'AmountOperBaseMS'
        DataType = ftFloat
      end
      item
        Name = 'Id_CurrencySys'
        DataType = ftInteger
      end
      item
        Name = 'CurrencySysName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CurrencySysShortName'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SummSys'
        DataType = ftFloat
      end
      item
        Name = 'RateSys'
        DataType = ftFloat
      end
      item
        Name = 'id_Acc'
        DataType = ftInteger
      end
      item
        Name = 'id_Warehouse'
        DataType = ftInteger
      end
      item
        Name = 'id_Manufact'
        DataType = ftInteger
      end
      item
        Name = 'SrcName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SrcID_Main'
        DataType = ftInteger
      end
      item
        Name = 'id_Repr'
        DataType = ftInteger
      end
      item
        Name = 'id_CAWhouse'
        DataType = ftInteger
      end
      item
        Name = 'id_Acc_Ext'
        DataType = ftInteger
      end
      item
        Name = 'id_Warehouse_Ext'
        DataType = ftInteger
      end
      item
        Name = 'id_Manufact_Ext'
        DataType = ftInteger
      end
      item
        Name = 'id_Equipment'
        DataType = ftInteger
      end
      item
        Name = 'ReprName'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'ReprID_Main'
        DataType = ftInteger
      end
      item
        Name = 'ReprWHName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ReprWHID_Main'
        DataType = ftInteger
      end
      item
        Name = 'Id_CurrencyInv'
        DataType = ftInteger
      end
      item
        Name = 'PriceInv'
        DataType = ftFloat
      end
      item
        Name = 'RateInv'
        DataType = ftFloat
      end
      item
        Name = 'CurrencyInvName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CurrencyInvShortName'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'id_Goods'
        DataType = ftInteger
      end
      item
        Name = 'WareName'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'WareID_Main'
        DataType = ftInteger
      end
      item
        Name = 'Koeff'
        DataType = ftInteger
      end
      item
        Name = 'KoeffName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CheckDate'
        DataType = ftDateTime
      end
      item
        Name = 'id_UserChecker'
        DataType = ftInteger
      end
      item
        Name = 'CheckerFIO'
        DataType = ftString
        Size = 152
      end
      item
        Name = 'id_FormalDistrib'
        DataType = ftInteger
      end
      item
        Name = 'FormalDistribName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'id_FuncDistrib'
        DataType = ftInteger
      end
      item
        Name = 'FuncDistribName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Deleted'
        DataType = ftBoolean
      end
      item
        Name = 'id_ContrAgent'
        DataType = ftInteger
      end
      item
        Name = 'ContrAgentName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'id_CAGroup'
        DataType = ftInteger
      end
      item
        Name = 'SummOper'
        DataType = ftFloat
      end
      item
        Name = 'TypeName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'OperNum'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'OperDelta'
        DataType = ftFloat
      end
      item
        Name = 'OperRateDelta'
        DataType = ftFloat
      end
      item
        Name = 'OperTotalDelta'
        DataType = ftFloat
      end
      item
        Name = 'DTDiff'
        DataType = ftInteger
      end
      item
        Name = 'HasViza'
        DataType = ftBoolean
      end
      item
        Name = 'OperState'
        DataType = ftInteger
      end
      item
        Name = 'HidedOper'
        DataType = ftBoolean
      end
      item
        Name = 'OperSummSys'
        DataType = ftFloat
      end
      item
        Name = 'RateMain'
        DataType = ftFloat
      end
      item
        Name = 'id_Repr_Ex'
        DataType = ftInteger
      end
      item
        Name = 'id_DocType'
        DataType = ftInteger
      end
      item
        Name = 'Imp_PayBasic'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'AccInv_PayAssignment'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'Contract'
        DataType = ftString
        Size = 1000
      end
      item
        Name = 'OperDeltaCrn'
        DataType = ftFloat
      end
      item
        Name = 'OperRateDeltaCrn'
        DataType = ftFloat
      end
      item
        Name = 'OperTotalDeltaCrn'
        DataType = ftFloat
      end
      item
        Name = 'OperCrnName'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'OperSum_Offer'
        DataType = ftFloat
      end
      item
        Name = 'OperSum_Inv'
        DataType = ftFloat
      end
      item
        Name = 'CRN_OLD_OperSum'
        DataType = ftFloat
      end
      item
        Name = 'CRN_OLD_OperSum_Offer'
        DataType = ftFloat
      end
      item
        Name = 'CRN_OperSum_Inv'
        DataType = ftFloat
      end
      item
        Name = 'OperSumCalced'
        DataType = ftFloat
      end
      item
        Name = 'OperSum_OfferCalced'
        DataType = ftFloat
      end
      item
        Name = 'Blocked'
        DataType = ftBoolean
      end
      item
        Name = 'CurrencyBsnName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'OperTypeSIGN'
        DataType = ftInteger
      end
      item
        Name = 'HasChild'
        DataType = ftInteger
      end
      item
        Name = 'Dig1'
        DataType = ftFloat
      end
      item
        Name = 'Dig2'
        DataType = ftFloat
      end
      item
        Name = 'Dig3'
        DataType = ftFloat
      end
      item
        Name = 'Dig4'
        DataType = ftFloat
      end
      item
        Name = 'Dig5'
        DataType = ftFloat
      end
      item
        Name = 'Dig6'
        DataType = ftFloat
      end
      item
        Name = 'Dig7'
        DataType = ftFloat
      end
      item
        Name = 'Dig8'
        DataType = ftFloat
      end
      item
        Name = 'Dig9'
        DataType = ftFloat
      end
      item
        Name = 'Dig10'
        DataType = ftFloat
      end
      item
        Name = 'Dig11'
        DataType = ftFloat
      end
      item
        Name = 'Dig12'
        DataType = ftFloat
      end
      item
        Name = 'Dig13'
        DataType = ftFloat
      end
      item
        Name = 'Dig14'
        DataType = ftFloat
      end
      item
        Name = 'Dig15'
        DataType = ftFloat
      end
      item
        Name = 'Str1'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str2'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str3'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str4'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str5'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str6'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str7'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str8'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str9'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str10'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str11'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str12'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str13'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str14'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Str15'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'OperVidName'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'is_MIrr'
        DataType = ftBoolean
      end
      item
        Name = 'AutoGen'
        DataType = ftBoolean
      end
      item
        Name = 'VatIn'
        DataType = ftBoolean
      end>
    Left = 120
    Top = 328
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = RxMemoryData1
    Constraints = True
    Left = 88
    Top = 288
  end
  object cdsOPBuff: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@id_Buff'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dsOPBuff'
    RemoteServer = rsCA
    Left = 224
    Top = 329
    object cdsOPBuffid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object cdsOPBuffid_OperParent: TIntegerField
      FieldName = 'id_OperParent'
    end
    object cdsOPBuffid_old_Oper: TIntegerField
      FieldName = 'id_old_Oper'
    end
    object cdsOPBuffDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object cdsOPBuffid_LC_Oper: TIntegerField
      FieldName = 'id_LC_Oper'
    end
    object cdsOPBuffOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object cdsOPBuffid_Replicator: TIntegerField
      FieldName = 'id_Replicator'
    end
    object cdsOPBuffReplicatorShortName: TStringField
      FieldName = 'ReplicatorShortName'
      Size = 5
    end
    object cdsOPBuffid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object cdsOPBuffid_business: TIntegerField
      FieldName = 'id_business'
    end
    object cdsOPBuffId_CurrencyBsn: TIntegerField
      FieldName = 'Id_CurrencyBsn'
    end
    object cdsOPBuffBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object cdsOPBuffBusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object cdsOPBuffDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object cdsOPBuffCorrect: TBooleanField
      FieldName = 'Correct'
    end
    object cdsOPBuffOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object cdsOPBuffId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object cdsOPBuffCurrencyOperName: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object cdsOPBuffCurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object cdsOPBuffAmountOper: TFloatField
      FieldName = 'AmountOper'
    end
    object cdsOPBuffAmountOper2: TFloatField
      FieldName = 'AmountOper2'
    end
    object cdsOPBuffPriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object cdsOPBuffRateOper: TFloatField
      FieldName = 'RateOper'
    end
    object cdsOPBuffid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object cdsOPBuffMeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 10
    end
    object cdsOPBuffRealKoef: TFloatField
      FieldName = 'RealKoef'
    end
    object cdsOPBuffAmountOperBaseMS: TFloatField
      FieldName = 'AmountOperBaseMS'
    end
    object cdsOPBuffId_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object cdsOPBuffCurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object cdsOPBuffCurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object cdsOPBuffSummSys: TFloatField
      FieldName = 'SummSys'
    end
    object cdsOPBuffRateSys: TFloatField
      FieldName = 'RateSys'
    end
    object cdsOPBuffid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object cdsOPBuffid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object cdsOPBuffid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object cdsOPBuffSrcName: TStringField
      FieldName = 'SrcName'
      Size = 50
    end
    object cdsOPBuffSrcID_Main: TIntegerField
      FieldName = 'SrcID_Main'
    end
    object cdsOPBuffid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object cdsOPBuffid_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object cdsOPBuffid_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object cdsOPBuffid_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object cdsOPBuffReprName: TStringField
      FieldName = 'ReprName'
      Size = 255
    end
    object cdsOPBuffReprID_Main: TIntegerField
      FieldName = 'ReprID_Main'
    end
    object cdsOPBuffId_CurrencyInv: TIntegerField
      FieldName = 'Id_CurrencyInv'
    end
    object cdsOPBuffPriceInv: TFloatField
      FieldName = 'PriceInv'
    end
    object cdsOPBuffRateInv: TFloatField
      FieldName = 'RateInv'
    end
    object cdsOPBuffCurrencyInvName: TStringField
      FieldName = 'CurrencyInvName'
      Size = 30
    end
    object cdsOPBuffCurrencyInvShortName: TStringField
      FieldName = 'CurrencyInvShortName'
      Size = 30
    end
    object cdsOPBuffid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object cdsOPBuffWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object cdsOPBuffWareID_Main: TIntegerField
      FieldName = 'WareID_Main'
    end
    object cdsOPBuffKoeff: TIntegerField
      FieldName = 'Koeff'
    end
    object cdsOPBuffKoeffName: TStringField
      FieldName = 'KoeffName'
      Size = 50
    end
    object cdsOPBuffCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object cdsOPBuffid_UserChecker: TIntegerField
      FieldName = 'id_UserChecker'
    end
    object cdsOPBuffid_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object cdsOPBuffFormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object cdsOPBuffid_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object cdsOPBuffFuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object cdsOPBuffDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object cdsOPBuffid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object cdsOPBuffContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      Size = 50
    end
    object cdsOPBuffid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object cdsOPBuffSummOper: TFloatField
      FieldName = 'SummOper'
    end
    object cdsOPBuffTypeName: TStringField
      FieldName = 'TypeName'
      Size = 30
    end
    object cdsOPBuffOperNum: TStringField
      FieldName = 'OperNum'
      Size = 255
    end
    object cdsOPBuffOperDelta: TFloatField
      FieldName = 'OperDelta'
    end
    object cdsOPBuffOperRateDelta: TFloatField
      FieldName = 'OperRateDelta'
    end
    object cdsOPBuffOperTotalDelta: TFloatField
      FieldName = 'OperTotalDelta'
    end
    object cdsOPBuffDTDiff: TIntegerField
      FieldName = 'DTDiff'
    end
    object cdsOPBuffHasViza: TBooleanField
      FieldName = 'HasViza'
    end
    object cdsOPBuffOperState: TIntegerField
      FieldName = 'OperState'
    end
    object cdsOPBuffHidedOper: TBooleanField
      FieldName = 'HidedOper'
    end
    object cdsOPBuffOperSummSys: TFloatField
      FieldName = 'OperSummSys'
    end
    object cdsOPBuffRateMain: TFloatField
      FieldName = 'RateMain'
    end
    object cdsOPBuffid_Repr_Ex: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object cdsOPBuffid_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object cdsOPBuffImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object cdsOPBuffAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object cdsOPBuffContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object cdsOPBuffOperDeltaCrn: TFloatField
      FieldName = 'OperDeltaCrn'
    end
    object cdsOPBuffOperRateDeltaCrn: TFloatField
      FieldName = 'OperRateDeltaCrn'
    end
    object cdsOPBuffOperTotalDeltaCrn: TFloatField
      FieldName = 'OperTotalDeltaCrn'
    end
    object cdsOPBuffOperCrnName: TStringField
      FieldName = 'OperCrnName'
      Size = 10
    end
    object cdsOPBuffOperSum_Offer: TFloatField
      FieldName = 'OperSum_Offer'
    end
    object cdsOPBuffCRN_OLD_OperSum: TFloatField
      FieldName = 'CRN_OLD_OperSum'
    end
    object cdsOPBuffCRN_OLD_OperSum_Offer: TFloatField
      FieldName = 'CRN_OLD_OperSum_Offer'
    end
    object cdsOPBuffCRN_OperSum_Inv: TFloatField
      FieldName = 'CRN_OperSum_Inv'
    end
    object cdsOPBuffOperSumCalced: TFloatField
      FieldName = 'OperSumCalced'
    end
    object cdsOPBuffOperSum_OfferCalced: TFloatField
      FieldName = 'OperSum_OfferCalced'
    end
    object cdsOPBuffBlocked: TBooleanField
      FieldName = 'Blocked'
    end
    object cdsOPBuffCurrencyBsnName: TStringField
      FieldName = 'CurrencyBsnName'
      Size = 10
    end
    object cdsOPBuffid_Ctg_Goods_2: TIntegerField
      FieldName = 'id_Ctg_Goods_2'
    end
    object cdsOPBuffOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object cdsOPBuffRealDataCreate: TDateTimeField
      FieldName = 'RealDataCreate'
    end
    object cdsOPBuffOperTypeSIGN: TIntegerField
      FieldName = 'OperTypeSIGN'
    end
    object cdsOPBuffHasChild: TIntegerField
      FieldName = 'HasChild'
    end
    object cdsOPBuffDig1: TFloatField
      FieldName = 'Dig1'
    end
    object cdsOPBuffDig2: TFloatField
      FieldName = 'Dig2'
    end
    object cdsOPBuffDig3: TFloatField
      FieldName = 'Dig3'
    end
    object cdsOPBuffDig4: TFloatField
      FieldName = 'Dig4'
    end
    object cdsOPBuffDig5: TFloatField
      FieldName = 'Dig5'
    end
    object cdsOPBuffDig6: TFloatField
      FieldName = 'Dig6'
    end
    object cdsOPBuffDig7: TFloatField
      FieldName = 'Dig7'
    end
    object cdsOPBuffDig8: TFloatField
      FieldName = 'Dig8'
    end
    object cdsOPBuffDig9: TFloatField
      FieldName = 'Dig9'
    end
    object cdsOPBuffDig10: TFloatField
      FieldName = 'Dig10'
    end
    object cdsOPBuffDig11: TFloatField
      FieldName = 'Dig11'
    end
    object cdsOPBuffDig12: TFloatField
      FieldName = 'Dig12'
    end
    object cdsOPBuffDig13: TFloatField
      FieldName = 'Dig13'
    end
    object cdsOPBuffDig14: TFloatField
      FieldName = 'Dig14'
    end
    object cdsOPBuffDig15: TFloatField
      FieldName = 'Dig15'
    end
    object cdsOPBuffStr1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object cdsOPBuffStr2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object cdsOPBuffStr3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object cdsOPBuffStr4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object cdsOPBuffStr5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object cdsOPBuffStr6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object cdsOPBuffStr7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object cdsOPBuffStr8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object cdsOPBuffStr9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object cdsOPBuffStr10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object cdsOPBuffStr11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object cdsOPBuffStr12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object cdsOPBuffStr13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object cdsOPBuffStr14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object cdsOPBuffStr15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object cdsOPBuffid_OperWare: TIntegerField
      FieldName = 'id_OperWare'
    end
    object cdsOPBuffOperVidName: TStringField
      FieldName = 'OperVidName'
      Size = 50
    end
    object cdsOPBuffCRN_OperSumRez: TFloatField
      FieldName = 'CRN_OperSumRez'
    end
    object cdsOPBuffOnlyDate: TDateTimeField
      FieldName = 'OnlyDate'
    end
    object cdsOPBuffis_Mirr: TBooleanField
      FieldName = 'is_Mirr'
    end
    object cdsOPBuffid_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
    end
    object cdsOPBuffid_Warehouse_Group: TIntegerField
      FieldName = 'id_Warehouse_Group'
    end
    object cdsOPBuffid_Manufact_Group: TIntegerField
      FieldName = 'id_Manufact_Group'
    end
    object cdsOPBuffCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      Size = 152
    end
    object cdsOPBuffCheckerFIO: TStringField
      FieldName = 'CheckerFIO'
      Size = 152
    end
    object cdsOPBuffid_BuffItem: TIntegerField
      FieldName = 'id_BuffItem'
    end
    object cdsOPBuffid_Buff: TIntegerField
      FieldName = 'id_Buff'
    end
    object cdsOPBuffid_Oper2: TIntegerField
      FieldName = 'id_Oper2'
    end
  end
  object rsFlt: TSocketConnection
    ServerGUID = '{1955E435-8CCB-47D9-840E-7E95C08B28F8}'
    ServerName = 'UNFilterApp.UnFilter'
    Address = '127.0.0.1'
    Left = 387
    Top = 169
  end
  object cdsBufImp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@LDList'
        ParamType = ptInput
      end>
    ProviderName = 'dsBufImp'
    RemoteServer = rsCA
    Left = 224
    Top = 273
    object cdsBufImpid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object cdsBufImpid_OperParent: TIntegerField
      FieldName = 'id_OperParent'
    end
    object cdsBufImpid_old_Oper: TIntegerField
      FieldName = 'id_old_Oper'
    end
    object cdsBufImpDateCreate: TDateTimeField
      FieldName = 'DateCreate'
      ReadOnly = True
    end
    object cdsBufImpid_LC_Oper: TIntegerField
      FieldName = 'id_LC_Oper'
    end
    object cdsBufImpOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object cdsBufImpid_Replicator: TIntegerField
      FieldName = 'id_Replicator'
    end
    object cdsBufImpReplicatorShortName: TStringField
      FieldName = 'ReplicatorShortName'
      Size = 5
    end
    object cdsBufImpid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object cdsBufImpid_business: TIntegerField
      FieldName = 'id_business'
    end
    object cdsBufImpId_CurrencyBsn: TIntegerField
      FieldName = 'Id_CurrencyBsn'
    end
    object cdsBufImpBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object cdsBufImpBusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object cdsBufImpDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object cdsBufImpCorrect: TBooleanField
      FieldName = 'Correct'
    end
    object cdsBufImpOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object cdsBufImpId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object cdsBufImpCurrencyOperName: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object cdsBufImpCurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object cdsBufImpAmountOper: TFloatField
      FieldName = 'AmountOper'
      ReadOnly = True
    end
    object cdsBufImpAmountOper2: TFloatField
      FieldName = 'AmountOper2'
      ReadOnly = True
    end
    object cdsBufImpPriceOper: TFloatField
      FieldName = 'PriceOper'
      ReadOnly = True
    end
    object cdsBufImpRateOper: TFloatField
      FieldName = 'RateOper'
    end
    object cdsBufImpid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object cdsBufImpMeasureName: TStringField
      FieldName = 'MeasureName'
      ReadOnly = True
      Size = 10
    end
    object cdsBufImpRealKoef: TFloatField
      FieldName = 'RealKoef'
    end
    object cdsBufImpAmountOperBaseMS: TFloatField
      FieldName = 'AmountOperBaseMS'
      ReadOnly = True
    end
    object cdsBufImpId_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object cdsBufImpCurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object cdsBufImpCurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object cdsBufImpSummSys: TFloatField
      FieldName = 'SummSys'
      ReadOnly = True
    end
    object cdsBufImpRateSys: TFloatField
      FieldName = 'RateSys'
    end
    object cdsBufImpid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object cdsBufImpid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object cdsBufImpid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object cdsBufImpSrcName: TStringField
      FieldName = 'SrcName'
      ReadOnly = True
      Size = 50
    end
    object cdsBufImpSrcID_Main: TIntegerField
      FieldName = 'SrcID_Main'
      ReadOnly = True
    end
    object cdsBufImpid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object cdsBufImpid_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object cdsBufImpid_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object cdsBufImpid_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object cdsBufImpReprName: TStringField
      FieldName = 'ReprName'
      ReadOnly = True
      Size = 255
    end
    object cdsBufImpReprID_Main: TIntegerField
      FieldName = 'ReprID_Main'
      ReadOnly = True
    end
    object cdsBufImpId_CurrencyInv: TIntegerField
      FieldName = 'Id_CurrencyInv'
    end
    object cdsBufImpPriceInv: TFloatField
      FieldName = 'PriceInv'
    end
    object cdsBufImpRateInv: TFloatField
      FieldName = 'RateInv'
    end
    object cdsBufImpCurrencyInvName: TStringField
      FieldName = 'CurrencyInvName'
      ReadOnly = True
      Size = 30
    end
    object cdsBufImpCurrencyInvShortName: TStringField
      FieldName = 'CurrencyInvShortName'
      ReadOnly = True
      Size = 30
    end
    object cdsBufImpid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object cdsBufImpWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object cdsBufImpWareID_Main: TIntegerField
      FieldName = 'WareID_Main'
    end
    object cdsBufImpKoeff: TIntegerField
      FieldName = 'Koeff'
    end
    object cdsBufImpKoeffName: TStringField
      FieldName = 'KoeffName'
      ReadOnly = True
      Size = 50
    end
    object cdsBufImpCheckDate: TDateTimeField
      FieldName = 'CheckDate'
      ReadOnly = True
    end
    object cdsBufImpid_UserChecker: TIntegerField
      FieldName = 'id_UserChecker'
      ReadOnly = True
    end
    object cdsBufImpid_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object cdsBufImpFormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object cdsBufImpid_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object cdsBufImpFuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object cdsBufImpDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object cdsBufImpid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
      ReadOnly = True
    end
    object cdsBufImpContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      ReadOnly = True
      Size = 50
    end
    object cdsBufImpid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object cdsBufImpSummOper: TFloatField
      FieldName = 'SummOper'
      ReadOnly = True
    end
    object cdsBufImpTypeName: TStringField
      FieldName = 'TypeName'
      ReadOnly = True
      Size = 30
    end
    object cdsBufImpOperNum: TStringField
      FieldName = 'OperNum'
      ReadOnly = True
      Size = 255
    end
    object cdsBufImpOperDelta: TFloatField
      FieldName = 'OperDelta'
      ReadOnly = True
    end
    object cdsBufImpOperRateDelta: TFloatField
      FieldName = 'OperRateDelta'
      ReadOnly = True
    end
    object cdsBufImpOperTotalDelta: TFloatField
      FieldName = 'OperTotalDelta'
      ReadOnly = True
    end
    object cdsBufImpDTDiff: TIntegerField
      FieldName = 'DTDiff'
      ReadOnly = True
    end
    object cdsBufImpHasViza: TBooleanField
      FieldName = 'HasViza'
      ReadOnly = True
    end
    object cdsBufImpOperState: TIntegerField
      FieldName = 'OperState'
    end
    object cdsBufImpHidedOper: TBooleanField
      FieldName = 'HidedOper'
    end
    object cdsBufImpOperSummSys: TFloatField
      FieldName = 'OperSummSys'
      ReadOnly = True
    end
    object cdsBufImpRateMain: TFloatField
      FieldName = 'RateMain'
    end
    object cdsBufImpid_Repr_Ex: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object cdsBufImpid_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object cdsBufImpImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object cdsBufImpAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object cdsBufImpContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object cdsBufImpOperDeltaCrn: TFloatField
      FieldName = 'OperDeltaCrn'
      ReadOnly = True
    end
    object cdsBufImpOperRateDeltaCrn: TFloatField
      FieldName = 'OperRateDeltaCrn'
      ReadOnly = True
    end
    object cdsBufImpOperTotalDeltaCrn: TFloatField
      FieldName = 'OperTotalDeltaCrn'
      ReadOnly = True
    end
    object cdsBufImpOperCrnName: TStringField
      FieldName = 'OperCrnName'
      ReadOnly = True
      Size = 10
    end
    object cdsBufImpOperSum_Offer: TFloatField
      FieldName = 'OperSum_Offer'
      ReadOnly = True
    end
    object cdsBufImpCRN_OLD_OperSum: TFloatField
      FieldName = 'CRN_OLD_OperSum'
      ReadOnly = True
    end
    object cdsBufImpCRN_OLD_OperSum_Offer: TFloatField
      FieldName = 'CRN_OLD_OperSum_Offer'
      ReadOnly = True
    end
    object cdsBufImpCRN_OperSum_Inv: TFloatField
      FieldName = 'CRN_OperSum_Inv'
      ReadOnly = True
    end
    object cdsBufImpOperSumCalced: TFloatField
      FieldName = 'OperSumCalced'
      ReadOnly = True
    end
    object cdsBufImpOperSum_OfferCalced: TFloatField
      FieldName = 'OperSum_OfferCalced'
      ReadOnly = True
    end
    object cdsBufImpBlocked: TBooleanField
      FieldName = 'Blocked'
    end
    object cdsBufImpCurrencyBsnName: TStringField
      FieldName = 'CurrencyBsnName'
      ReadOnly = True
      Size = 10
    end
    object cdsBufImpid_Ctg_Goods_2: TIntegerField
      FieldName = 'id_Ctg_Goods_2'
    end
    object cdsBufImpOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object cdsBufImpRealDataCreate: TDateTimeField
      FieldName = 'RealDataCreate'
    end
    object cdsBufImpOperTypeSIGN: TIntegerField
      FieldName = 'OperTypeSIGN'
      ReadOnly = True
    end
    object cdsBufImpHasChild: TIntegerField
      FieldName = 'HasChild'
      ReadOnly = True
    end
    object cdsBufImpDig1: TFloatField
      FieldName = 'Dig1'
    end
    object cdsBufImpDig2: TFloatField
      FieldName = 'Dig2'
    end
    object cdsBufImpDig3: TFloatField
      FieldName = 'Dig3'
    end
    object cdsBufImpDig4: TFloatField
      FieldName = 'Dig4'
    end
    object cdsBufImpDig5: TFloatField
      FieldName = 'Dig5'
    end
    object cdsBufImpDig6: TFloatField
      FieldName = 'Dig6'
    end
    object cdsBufImpDig7: TFloatField
      FieldName = 'Dig7'
    end
    object cdsBufImpDig8: TFloatField
      FieldName = 'Dig8'
    end
    object cdsBufImpDig9: TFloatField
      FieldName = 'Dig9'
    end
    object cdsBufImpDig10: TFloatField
      FieldName = 'Dig10'
    end
    object cdsBufImpDig11: TFloatField
      FieldName = 'Dig11'
    end
    object cdsBufImpDig12: TFloatField
      FieldName = 'Dig12'
    end
    object cdsBufImpDig13: TFloatField
      FieldName = 'Dig13'
    end
    object cdsBufImpDig14: TFloatField
      FieldName = 'Dig14'
    end
    object cdsBufImpDig15: TFloatField
      FieldName = 'Dig15'
    end
    object cdsBufImpStr1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object cdsBufImpStr2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object cdsBufImpStr3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object cdsBufImpStr4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object cdsBufImpStr5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object cdsBufImpStr6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object cdsBufImpStr7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object cdsBufImpStr8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object cdsBufImpStr9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object cdsBufImpStr10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object cdsBufImpStr11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object cdsBufImpStr12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object cdsBufImpStr13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object cdsBufImpStr14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object cdsBufImpStr15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object cdsBufImpid_OperWare: TAutoIncField
      FieldName = 'id_OperWare'
      ReadOnly = True
    end
    object cdsBufImpOperVidName: TStringField
      FieldName = 'OperVidName'
      ReadOnly = True
      Size = 50
    end
    object cdsBufImpCRN_OperSumRez: TFloatField
      FieldName = 'CRN_OperSumRez'
      ReadOnly = True
    end
    object cdsBufImpOnlyDate: TDateTimeField
      FieldName = 'OnlyDate'
      ReadOnly = True
    end
    object cdsBufImpis_Mirr: TBooleanField
      FieldName = 'is_Mirr'
    end
    object cdsBufImpid_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
      ReadOnly = True
    end
    object cdsBufImpid_Warehouse_Group: TIntegerField
      FieldName = 'id_Warehouse_Group'
      ReadOnly = True
    end
    object cdsBufImpid_Manufact_Group: TIntegerField
      FieldName = 'id_Manufact_Group'
      ReadOnly = True
    end
    object cdsBufImpCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      ReadOnly = True
      Size = 152
    end
    object cdsBufImpCheckerFIO: TStringField
      FieldName = 'CheckerFIO'
      ReadOnly = True
      Size = 152
    end
    object cdsBufImpid_BuffItem: TIntegerField
      FieldName = 'id_BuffItem'
      ReadOnly = True
    end
    object cdsBufImpid_Buff: TIntegerField
      FieldName = 'id_Buff'
      ReadOnly = True
    end
    object cdsBufImpid_Oper2: TIntegerField
      FieldName = 'id_Oper2'
      ReadOnly = True
    end
  end
  object cdsClsdDayList: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@id_User'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dsClsdDayList'
    RemoteServer = rsCA
    Left = 56
    Top = 160
    object cdsClsdDayListName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object cdsOperFin: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@id_Oper'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@is_Mirr'
        ParamType = ptInput
      end>
    ProviderName = 'dsOperProp_v2'
    RemoteServer = rsCA
    Left = 248
    Top = 30
    object cdsOperFinid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object cdsOperFinid_OperParent: TIntegerField
      FieldName = 'id_OperParent'
    end
    object cdsOperFinid_old_Oper: TIntegerField
      FieldName = 'id_old_Oper'
    end
    object cdsOperFinDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object cdsOperFinid_LC_Oper: TIntegerField
      FieldName = 'id_LC_Oper'
    end
    object cdsOperFinOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object cdsOperFinid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object cdsOperFinCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      Size = 152
    end
    object cdsOperFinid_business: TIntegerField
      FieldName = 'id_business'
    end
    object cdsOperFinId_CurrencyBsn: TIntegerField
      FieldName = 'Id_CurrencyBsn'
    end
    object cdsOperFinBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object cdsOperFinBusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object cdsOperFinDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object cdsOperFinCorrect: TBooleanField
      FieldName = 'Correct'
    end
    object cdsOperFinOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object cdsOperFinId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object cdsOperFinCurrencyOperName: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object cdsOperFinCurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object cdsOperFinPriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object cdsOperFinRateOper: TFloatField
      FieldName = 'RateOper'
    end
    object cdsOperFinId_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object cdsOperFinCurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object cdsOperFinCurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object cdsOperFinSummSys: TFloatField
      FieldName = 'SummSys'
    end
    object cdsOperFinRateSys: TFloatField
      FieldName = 'RateSys'
    end
    object cdsOperFinid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object cdsOperFinid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object cdsOperFinid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object cdsOperFinSrcName: TStringField
      FieldName = 'SrcName'
      Size = 50
    end
    object cdsOperFinSrcID_Main: TIntegerField
      FieldName = 'SrcID_Main'
    end
    object cdsOperFinid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object cdsOperFinid_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object cdsOperFinid_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object cdsOperFinid_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object cdsOperFinReprName: TStringField
      FieldName = 'ReprName'
      Size = 255
    end
    object cdsOperFinReprID_Main: TIntegerField
      FieldName = 'ReprID_Main'
    end
    object cdsOperFinId_CurrencyInv: TIntegerField
      FieldName = 'Id_CurrencyInv'
    end
    object cdsOperFinRateInv: TFloatField
      FieldName = 'RateInv'
    end
    object cdsOperFinCurrencyInvName: TStringField
      FieldName = 'CurrencyInvName'
      Size = 30
    end
    object cdsOperFinCurrencyInvShortName: TStringField
      FieldName = 'CurrencyInvShortName'
      Size = 10
    end
    object cdsOperFinKoeff: TIntegerField
      FieldName = 'Koeff'
    end
    object cdsOperFinKoeffName: TStringField
      FieldName = 'KoeffName'
      Size = 50
    end
    object cdsOperFinCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object cdsOperFinCheckerFIO: TStringField
      FieldName = 'CheckerFIO'
      Size = 152
    end
    object cdsOperFinid_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object cdsOperFinFormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object cdsOperFinid_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object cdsOperFinFuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object cdsOperFinDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object cdsOperFinid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object cdsOperFinContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      Size = 50
    end
    object cdsOperFinid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object cdsOperFinSummOper: TFloatField
      FieldName = 'SummOper'
    end
    object cdsOperFinTypeName: TStringField
      FieldName = 'TypeName'
      Size = 30
    end
    object cdsOperFinHasViza: TBooleanField
      FieldName = 'HasViza'
    end
    object cdsOperFinOperState: TIntegerField
      FieldName = 'OperState'
    end
    object cdsOperFinHidedOper: TBooleanField
      FieldName = 'HidedOper'
    end
    object cdsOperFinRateMain: TFloatField
      FieldName = 'RateMain'
    end
    object cdsOperFinid_Repr_Ex: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object cdsOperFinid_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object cdsOperFinImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object cdsOperFinAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object cdsOperFinContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object cdsOperFinOperCrnName: TStringField
      FieldName = 'OperCrnName'
      Size = 10
    end
    object cdsOperFinBlocked: TBooleanField
      FieldName = 'Blocked'
    end
    object cdsOperFinCurrencyBsnName: TStringField
      FieldName = 'CurrencyBsnName'
      Size = 10
    end
    object cdsOperFinOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object cdsOperFinRealDataCreate: TDateTimeField
      FieldName = 'RealDataCreate'
    end
    object cdsOperFinOperTypeSIGN: TIntegerField
      FieldName = 'OperTypeSIGN'
    end
    object cdsOperFinHasChild: TIntegerField
      FieldName = 'HasChild'
    end
    object cdsOperFinDig1: TFloatField
      FieldName = 'Dig1'
    end
    object cdsOperFinDig2: TFloatField
      FieldName = 'Dig2'
    end
    object cdsOperFinDig3: TFloatField
      FieldName = 'Dig3'
    end
    object cdsOperFinDig4: TFloatField
      FieldName = 'Dig4'
    end
    object cdsOperFinDig5: TFloatField
      FieldName = 'Dig5'
    end
    object cdsOperFinDig6: TFloatField
      FieldName = 'Dig6'
    end
    object cdsOperFinDig7: TFloatField
      FieldName = 'Dig7'
    end
    object cdsOperFinDig8: TFloatField
      FieldName = 'Dig8'
    end
    object cdsOperFinDig9: TFloatField
      FieldName = 'Dig9'
    end
    object cdsOperFinDig10: TFloatField
      FieldName = 'Dig10'
    end
    object cdsOperFinDig11: TFloatField
      FieldName = 'Dig11'
    end
    object cdsOperFinDig12: TFloatField
      FieldName = 'Dig12'
    end
    object cdsOperFinDig13: TFloatField
      FieldName = 'Dig13'
    end
    object cdsOperFinDig14: TFloatField
      FieldName = 'Dig14'
    end
    object cdsOperFinDig15: TFloatField
      FieldName = 'Dig15'
    end
    object cdsOperFinStr1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object cdsOperFinStr2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object cdsOperFinStr3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object cdsOperFinStr4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object cdsOperFinStr5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object cdsOperFinStr6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object cdsOperFinStr7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object cdsOperFinStr8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object cdsOperFinStr9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object cdsOperFinStr10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object cdsOperFinStr11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object cdsOperFinStr12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object cdsOperFinStr13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object cdsOperFinStr14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object cdsOperFinStr15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object cdsOperFinOperVidName: TStringField
      FieldName = 'OperVidName'
      Size = 50
    end
    object cdsOperFinis_Mirr: TBooleanField
      FieldName = 'is_Mirr'
    end
    object cdsOperFinid_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
    end
    object cdsOperFinid_Warehouse_Group: TIntegerField
      FieldName = 'id_Warehouse_Group'
    end
    object cdsOperFinid_Manufact_Group: TIntegerField
      FieldName = 'id_Manufact_Group'
    end
    object cdsOperFinOperNum: TStringField
      FieldName = 'OperNum'
      Size = 255
    end
    object cdsOperFinid_Replicator: TIntegerField
      FieldName = 'id_Replicator'
    end
    object cdsOperFinVatIn: TBooleanField
      FieldName = 'VatIn'
    end
  end
  object cdsOperWare: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@id_Oper'
        ParamType = ptInput
        Value = '31298'
      end>
    ProviderName = 'dsOperWare'
    RemoteServer = rsCA
    OnCalcFields = cdsOperWareCalcFields
    Left = 256
    Top = 74
    object cdsOperWareid_OperWare: TAutoIncField
      FieldName = 'id_OperWare'
    end
    object cdsOperWareid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object cdsOperWareid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object cdsOperWareid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object cdsOperWareMeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 10
    end
    object cdsOperWareRealKoef: TFloatField
      FieldName = 'RealKoef'
    end
    object cdsOperWareAmountOperBaseMS: TFloatField
      FieldName = 'AmountOperBaseMS'
    end
    object cdsOperWareWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object cdsOperWareWareID_Main: TIntegerField
      FieldName = 'WareID_Main'
    end
    object cdsOperWareSummOper2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SummOper2'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsOperWareNumb: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'Numb'
    end
    object cdsOperWareAmountOper: TFloatField
      FieldName = 'AmountOper'
    end
    object cdsOperWarePriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object cdsOperWareSummSys: TFloatField
      FieldName = 'SummSys'
    end
    object cdsOperWarePriceInv: TFloatField
      FieldName = 'PriceInv'
    end
    object cdsOperWareSS: TAggregateField
      FieldName = 'SS'
      Active = True
      Expression = 'Sum(SummOper2)'
    end
  end
  object cdsDList: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@id_Doc_Org'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@DT'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dsOrgDet'
    RemoteServer = rsCA
    Left = 256
    Top = 173
    object cdsDListid_OrgDet: TAutoIncField
      FieldName = 'id_OrgDet'
      ReadOnly = True
    end
    object cdsDListid_Doc_Org: TIntegerField
      FieldName = 'id_Doc_Org'
    end
    object cdsDListVal: TStringField
      FieldName = 'Val'
      Size = 255
    end
    object cdsDListDT: TIntegerField
      FieldName = 'DT'
    end
    object cdsDListDefDet: TBooleanField
      FieldName = 'DefDet'
    end
  end
  object cdsOperWare201: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@id_Oper'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@Mode'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dsOperWare201'
    RemoteServer = rsCA
    OnCalcFields = cdsOperWareCalcFields
    Left = 256
    Top = 125
    object cdsOperWare201id_OperWare: TAutoIncField
      FieldName = 'id_OperWare'
    end
    object cdsOperWare201id_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object cdsOperWare201AmountOper: TFloatField
      FieldName = 'AmountOper'
      DisplayFormat = '0.00'
    end
    object cdsOperWare201id_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object cdsOperWare201PriceOper: TFloatField
      FieldName = 'PriceOper'
      DisplayFormat = '0.00'
    end
    object cdsOperWare201SummSys: TFloatField
      FieldName = 'SummSys'
      DisplayFormat = '0.00'
    end
    object cdsOperWare201PriceInv: TFloatField
      FieldName = 'PriceInv'
      DisplayFormat = '0.00'
    end
    object cdsOperWare201id_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object cdsOperWare201MeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 10
    end
    object cdsOperWare201RealKoef: TFloatField
      FieldName = 'RealKoef'
    end
    object cdsOperWare201AmountOperBaseMS: TFloatField
      FieldName = 'AmountOperBaseMS'
    end
    object cdsOperWare201WareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object cdsOperWare201WareID_Main: TIntegerField
      FieldName = 'WareID_Main'
    end
    object cdsOperWare201AmountOperBaseMS_2: TFloatField
      FieldName = 'AmountOperBaseMS_2'
    end
    object cdsOperWare201AmountOperBaseMS_1: TFloatField
      FieldName = 'AmountOperBaseMS_1'
    end
    object cdsOperWare201id_Raw: TIntegerField
      FieldName = 'id_Raw'
    end
    object cdsOperWare201id_ExtRaw: TIntegerField
      FieldName = 'id_ExtRaw'
    end
    object cdsOperWare201id_Service: TIntegerField
      FieldName = 'id_Service'
    end
    object cdsOperWare201SummOper_2: TFloatField
      FieldName = 'SummOper_2'
    end
    object cdsOperWare201SummSys_2: TFloatField
      FieldName = 'SummSys_2'
    end
    object cdsOperWare201PriceInv_2: TFloatField
      FieldName = 'PriceInv_2'
    end
    object cdsOperWare201DMName: TStringField
      FieldName = 'DMName'
      Size = 10
    end
    object cdsOperWare201SummOper_1: TFloatField
      FieldName = 'SummOper_1'
    end
    object cdsOperWare201SummSys_1: TFloatField
      FieldName = 'SummSys_1'
    end
    object cdsOperWare201PriceInv_1: TFloatField
      FieldName = 'PriceInv_1'
    end
    object cdsOperWare201delta: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'delta'
    end
    object cdsOperWare201SummOper2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SummOper2'
    end
    object cdsOperWare201Numb: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'Numb'
    end
    object AggregateField1: TAggregateField
      FieldName = 'SS'
      Active = True
      Expression = 'Sum(SummOper2)'
    end
  end
  object cdsCur: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftBoolean
        Name = '@FastAccess'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@AvForPay'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@id_Bsn'
        ParamType = ptInput
      end>
    ProviderName = 'dsCur2'
    RemoteServer = rsCA
    Left = 392
    Top = 296
    object cdsCurId_Currency: TAutoIncField
      FieldName = 'Id_Currency'
      ReadOnly = True
    end
    object cdsCurName: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object cdsCurShortName: TStringField
      FieldName = 'ShortName'
      Size = 10
    end
    object cdsCurISOCode: TStringField
      FieldName = 'ISOCode'
      FixedChar = True
      Size = 3
    end
    object cdsCurNumberCode: TStringField
      FieldName = 'NumberCode'
      FixedChar = True
      Size = 3
    end
    object cdsCurFastAccess: TBooleanField
      FieldName = 'FastAccess'
    end
    object cdsCurValue: TIntegerField
      FieldName = 'Value'
    end
    object cdsCurRate: TFloatField
      FieldName = 'Rate'
    end
    object cdsCurAvForPay: TBooleanField
      FieldName = 'AvForPay'
    end
    object cdsCurBase: TBooleanField
      FieldName = 'Base'
    end
    object cdsCurLastUpdated: TBytesField
      FieldName = 'LastUpdated'
      ReadOnly = True
      Size = 8
    end
    object cdsCurId_URL: TIntegerField
      FieldName = 'Id_URL'
    end
  end
  object cdsAPNGen: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@id_business'
        ParamType = ptInput
        Value = 11
      end
      item
        DataType = ftInteger
        Name = '@id_APN_Obj'
        ParamType = ptInput
        Value = 11
      end>
    ProviderName = 'dsAPNGen'
    RemoteServer = rsCA
    OnCalcFields = cdsAPNGenCalcFields
    Left = 336
    Top = 293
    object cdsAPNGenNAme: TStringField
      FieldName = 'NAme'
      Size = 255
    end
    object cdsAPNGenid_APN_AccList: TAutoIncField
      FieldName = 'id_APN_AccList'
      ReadOnly = True
    end
    object cdsAPNGenid_APN_Obj: TIntegerField
      FieldName = 'id_APN_Obj'
    end
    object cdsAPNGenid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object cdsAPNGenASumm: TFloatField
      FieldName = 'ASumm'
      DisplayFormat = '0.00'
    end
    object cdsAPNGenId_Currency: TIntegerField
      FieldName = 'Id_Currency'
    end
    object cdsAPNGenAPrc: TFloatField
      FieldName = 'APrc'
      DisplayFormat = '0.00'
    end
    object cdsAPNGenAccName: TStringField
      FieldName = 'AccName'
      Size = 50
    end
    object cdsAPNGenCRNName: TStringField
      FieldName = 'CRNName'
      Size = 10
    end
    object cdsAPNGenDestName: TStringField
      FieldName = 'DestName'
      ReadOnly = True
      Size = 255
    end
    object cdsAPNGenid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object cdsAPNGenOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object cdsAPNGenid_business: TIntegerField
      FieldName = 'id_business'
    end
    object cdsAPNGenid_AccDest: TIntegerField
      FieldName = 'id_AccDest'
    end
    object cdsAPNGenId_Currency2: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'Id_Currency2'
    end
    object cdsAPNGenCName2: TStringField
      FieldKind = fkLookup
      FieldName = 'CName2'
      LookupDataSet = cdsCur
      LookupKeyFields = 'Id_Currency'
      LookupResultField = 'ShortName'
      KeyFields = 'Id_Currency2'
      Size = 255
      Lookup = True
    end
    object cdsAPNGenAPPP: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'APPP'
      DisplayFormat = '0.00'
    end
    object cdsAPNGenAR: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'AR'
    end
    object cdsAPNGenARC: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ARC'
      Size = 255
    end
    object cdsAPNGenOperVid: TIntegerField
      FieldName = 'OperVid'
      ReadOnly = True
    end
    object cdsAPNGenid_Cur: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'id_Cur'
    end
  end
  object mdCash: TRxMemoryData
    FieldDefs = <
      item
        Name = 'Type'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end>
    Left = 456
    Top = 24
    object mdCashType: TStringField
      FieldName = 'Type'
      Size = 255
    end
    object mdCashName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object mdCashID: TIntegerField
      FieldName = 'ID'
    end
  end
  object ilMenu: TImageList
    Left = 152
    Top = 8
    Bitmap = {
      494C010111001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FF000000FF000000FF000000FF00
      0000FF000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00840000008400
      0000840000008400000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FF000000FF000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00840000008400
      0000840000008400000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00840000008400
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      00008000000080000000800000008000000080000000FFFFFF000000FF000000
      FF000000FF000000FF000000FF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      0000808000008080000080800000000000000000000000000000000000000000
      00007F7F7F007F7F7F00BFBFBF007F7F7F00000000007F7F7F00BFBFBF007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080000000FFFFFF00FFFFFF00C0C0
      C000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000080808000808080008080
      800080808000808080008080800080808000808080000000000080800000FFFF
      0000FFFF0000FFFFFF000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF007F7F7F00000000007F7F7F00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000000000000000000000000080000000FFFFFF00FFFFFF00C0C0
      C000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000FFFF00008080
      0000808000008080000080800000808000000000000080800000FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F00BFBFBF00BFBFBF0000000000BFBFBF00BFBFBF007F7F
      7F007F7F7F007F7F7F000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF00000000000000000080000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080000000FFFFFF000000
      FF000000FF00FFFFFF000000FF000000FF00000000000000000000000000FFFF
      00008080000080800000808000000000000080800000FFFF0000FFFF0000FFFF
      FF0000000000808000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF000000000000000000000000000080800000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF00008080000000000080000000FFFFFF00FFFFFF00C0C0
      C000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF0080000000FFFFFF00FFFF
      FF000000FF00FFFFFF00FFFFFF000000FF000000000000000000000000000000
      0000FFFF0000808000000000000080800000FFFF0000FFFF0000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F000000000000000000000000007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000080800000000000000000000080800000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000080000000FFFFFF00FFFFFF00C0C0
      C000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF0080000000800000008000
      0000FFFFFF00FFFFFF000000FF000000FF000000000000000000000000000000
      0000000000000000000080800000FFFF0000FFFF0000FFFFFF00000000000000
      00000000000000000000000000000000000000FFFF000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000FFFFFF00FFFF
      FF00800000000000FF000000FF000000FF000000000000000000000000000000
      00000000000080800000FFFF0000FFFF0000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      00008000000080000000FFFF000080000000FFFF000080000000FFFFFF00FFFF
      FF00800000000000FF000000FF000000FF000000000000000000000000000000
      000080800000FFFF0000FFFF0000FFFFFF000000000080800000808080000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000C0C0C000C0C0
      C000800000000000FF000000FF00FFFFFF000000000000000000000000008080
      0000FFFF0000FFFF0000FFFFFF0000000000FFFF000080800000808000008080
      80000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF007F7F7F00000000007F7F7F0000FFFF0000FFFF000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF008000
      0000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFF
      FF0080000000FFFFFF00FFFFFF00FFFFFF00000000000000000080800000FFFF
      0000FFFF0000FFFFFF00000000000000000000000000FFFF0000808000008080
      000080808000000000000000000000000000000000000000000000FFFF0000FF
      FF0000000000BFBFBF000000000000000000000000000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000080800000FFFF0000FFFF0000808000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF008000
      0000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFF
      FF0080000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000FFFF000000000000FF
      FF0000000000BFBFBF000000000000000000000000000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF008000
      0000800000008000000080000000800000008000000080000000800000008000
      000080000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00000000000000000000FF
      FF007F7F7F007F7F7F00BFBFBF00000000000000000000000000BFBFBF007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF008000
      00008000000080000000800000008000000080000000FFFF000080000000FFFF
      000080000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000FFFF0000FFFF0000FFFF0000FFFF00008080000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF008000
      0000800000008000000080000000800000008000000080000000800000008000
      000080000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000C6C6C6000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000C0C0C0000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000000000FFFF0000FFFF0000FFFFFF00FFFF0000FF000000000000000000
      0000848484000000000000000000000000000000000000000000808080000000
      000000000000FFFF0000FFFF000000000000FFFF0000FF000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000C8D0D400FFFFFF0000000000000000000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484000000000000000000FFFF
      00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000FF00FFFF
      000000000000000000008484840000000000000000000000000000000000FFFF
      00000000FF00FFFF0000FFFF0000C0C0C000FF000000FFFF00000000FF00FFFF
      0000000000000000000080808000000000000000000000000000000000000084
      8400000000000084840080808000C8D0D4000000000000848400000000000084
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000FFFFFF00FFFF0000FF0000000000FF00FF00
      0000FFFF0000FF000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF000000000000FFFF0000FF0000000000FF00FF00
      0000FFFF0000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000848400000000000000000000848400008484000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000FF00FFFF
      0000FF000000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000C0C0C000FF000000FFFF00000000FF00FFFF
      0000FF000000FFFF00000000000000000000C6C6C60000848400008484000084
      8400C8D0D400FFFFFF0000848400008484000084840000000000008400000084
      84000084840000000000000000000000000000000000FFFFFF00FFFFFF008400
      00008400000084000000840000008400000084000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000FFFFFF00FFFF0000FF0000000000FF00FF00
      0000FFFF0000FF000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF000000000000FFFF0000FF0000000000FF00FF00
      0000FFFF0000FF0000000000000000000000FFFFFF0000848400008484000084
      8400008484000084840080808000C8D0D400008484000084840000FFFF000000
      00000084840000FFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000C6C6C600FF000000FFFF00000000FF00FFFF
      0000FF000000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF00FFFF0000FFFF0000C0C0C000FF000000FFFF00000000FF00FFFF
      0000FF000000FFFF00000000000000000000FFFFFF0000848400008484000084
      840000848400008484000084840000FFFF0000FFFF00000000000084840000FF
      FF0000FFFF0000000000000000000000000000000000FFFFFF00FFFFFF008400
      00008400000084000000840000008400000084000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF008484840084848400FFFFFF0084848400848484000000FF00FF00
      0000FFFF0000FF000000000000000000000000000000FFFF0000FFFF0000FFFF
      00000000FF008080800080808000000000008080800080808000000000000000
      000000000000FF0000000000000000000000FFFFFF00FFFFFF00008484000084
      8400C8D0D400FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000848400FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFF0000FFFF00008484
      84000000FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00000000FF008484
      8400FF000000FFFF0000000000000000000000000000FFFF0000FFFF00008080
      80000000FF00FFFF000000000000FFFF000000000000808080000000FF000000
      FF0000000000FFFF0000000000000000000084000000FFFFFF00C6C6C60000FF
      FF00000000000000000080808000C8D0D40000FFFF0000848400000000000084
      84000084840000000000FFFFFF008400000000000000FFFFFF00FFFFFF008400
      00008400000084000000840000008400000084000000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000008484840084848400FFFF
      FF00FFFF00000000FF00FFFF0000FFFFFF00FFFF00000000FF00FFFF0000FFFF
      FF00848484008484840000000000000000000000000080808000808080000000
      0000FFFF00000000FF00FFFF00000000000080808000808080000000FF000000
      FF000000000000000000000000000000000084000000FFFFFF00C6C6C60000FF
      FF0000FFFF0000FFFF0000000000000000000000000000848400008484000084
      840000848400FFFFFF00FFFFFF008400000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF00000000FF000000FF000000FF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000000000000000000000000000FFFF000000000000FFFF
      000000000000FFFF00000000FF00808080000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000008400000084000000FFFFFF000000
      0000C8D0D400FFFFFF0000848400008484000084840000FFFF0000FFFF0000FF
      FF0000848400FFFFFF00840000008400000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000848484000000000000000000FFFF
      FF00FFFF00000000FF00FFFFFF00FFFF0000FFFFFF000000FF00FFFF0000FFFF
      FF00000000000000000084848400000000000000000000000000000000000000
      0000FFFF00000000FF0000000000808080000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000008400000084000000000000000000
      0000000000000084840080808000C8D0D4000084840000000000000000000000
      0000FFFFFF0084000000840000008400000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000000000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00000000000000
      0000848484000000000000000000000000000000000000000000808080000000
      00000000000000000000FFFF00008080800080808000808080000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000840000008400000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000FFFF00000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000FFFF000000000000808080000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF00000000000000FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C8D0D4000000000000000000000000000000
      0000000000000000000000000000000000008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF00848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FFFFFF0000000000FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000000000000000000000000000000000008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF008484840000FF
      FF0084848400000000000000000000000000000000000000000000000000FF00
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000FFFF00000000000084
      8400C8D0D400FFFFFF0000848400008484000084840000848400008484000084
      8400000000000000000000000000000000008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF008484840000FF
      FF0000FFFF0084848400000000000000000000000000FF000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008484000084840080808000C8D0D4000084840000848400008484000084
      8400008484000000000000000000000000008484840084848400848484008484
      84008484840084848400848484008484840084848400848484008484840000FF
      FF0000FFFF00848484008484840000000000FF0000000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF00000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF00848484008484
      840000FFFF008484840000FFFF00848484000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FF000000000000000000000000000000FFFF
      FF00000000000000000000000000C6DEC6000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF00C8D0D400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF008484840000FF
      FF00848484008484840000FFFF008484840000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00000000000000000000000000C6DEC6000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0080808000C8D0D400FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000008484840000FFFF0000FFFF0000FF
      FF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF008484840000FF
      FF0000FFFF008484840000FFFF00848484000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      84008484840084848400848484008484840084848400848484008484840000FF
      FF0000FFFF00848484008484840084848400000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00C8D0D400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FFFF008484
      840000FFFF008484840000FFFF00848484000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF008484840000FFFF0000FFFF0000FFFF0000FF
      FF00848484008484840000FFFF00848484000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000FFFF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484840000FFFF0000FF
      FF0000FFFF0000FFFF0084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CED6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000CED6D60084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CED6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF009CFFFF00FFFFFF009CFFFF00009C31009CFFFF00FFFFFF009CFFFF00FFFF
      FF000000000000000000CED6D600000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00C8D0D4000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000000000000000CED6D60084848400FFFFFF009CFF
      FF00FFFFFF009CFFFF00009C3100009C3100FFFFFF009CFFFF00FFFFFF009CFF
      FF000000000000000000CED6D600000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF009CFFFF00009C3100009C3100009C3100009C3100009C31009CFFFF00FFFF
      FF000000000000000000CED6D600000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000084848400FFFFFF009CFF
      FF00FFFFFF009CFFFF00009C3100009C3100FFFFFF00639C0000636300009CFF
      FF000000000000000000CED6D600000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C8D0D400FFFFFF000000FF0000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF009CFFFF00FFFFFF009CFFFF00009C31009CFFFF00FFFFFF0063630000FFFF
      FF000000000000000000CED6D600000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0080808000C8D0D4000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF009CFF
      FF00636300009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00636300009CFF
      FF000000000000000000CED6D600000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF0063630000FFFFFF009CFFFF00009C31009CFFFF00FFFFFF009CFFFF00FFFF
      FF000000000000000000CED6D600000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF009CFF
      FF0063630000639C0000FFFFFF00009C3100009C31009CFFFF00FFFFFF009CFF
      FF000000000000000000CED6D600000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      00000000FF000000FF008080800000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF009CFFFF00009C3100009C3100009C3100009C3100009C31009CFFFF00FFFF
      FF000000000000000000CED6D600000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000840000008400000000000000000000000000FF000000
      FF000000FF000000FF00000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00009C3100009C31009CFFFF00FFFFFF000000
      00000000000000000000CED6D600000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008400000084000000000000000000FF000000FF000000
      FF00C8D0D4000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00009C31009CFFFF00FFFFFF00000000000000
      00000000000000000000CED6D600000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008400000084000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF0084848400FFFF
      FF0000000000CED6D600CED6D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00CED6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000
      000000000000CED6D60000000000CED6D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      840084848400848484008484840084848400848484008484840084848400CED6
      D600CED6D60000000000CED6D60000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FC01000000000000
      FC01000000000000FC0100000000000000010000000000000001000000000000
      0001000000000000000100000000000000030000000000000007000000000000
      000F00000000000000FF00000000000001FF00000000000003FF000000000000
      FFFF000000000000FFFF0000000000000000FFFFFC1FF81F0000FFE0F007E007
      00000000E003C00300000001C001800100008003C00180010000C001C0010000
      0000E001C00100000000F01F400100000000F01FA00300000000E00FC3C70000
      0000C0070047000000008103C1C7800100000381A1C78001000007C16007C003
      0000FFFFE80FE0070000FFFFEC1FF81FFC7FFC7FFFFFFFFFF01FF01FFF7FFFFF
      C007C107E00F000F00018001C00F000F000101010007000F000100010003000F
      000101010003000F000100010000000F000101010000000F000102810000000F
      000111010000000F0001280100001E0F000192010800001FC007C4037FF0003F
      F01FF007FFFC007FFC7FFC4FFFFEFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFF001F
      F81F83E0001F000FF40F83E0000F0007E00783E0000700038003808000030001
      4001800000010000000080000000000000008000001F00008001C001001F0000
      C003E083001F0000E00FE0838FF18000F07FF1C7FFF9C000F8FFF1C7FF75E000
      FFFFF1C7FF8FF000FFFFFFFFFFFFFFFFFFFFFFFFFFFF8001FFFF000FDFFB3FF9
      E003000F8FFF8009E003000F87F70009E003000FC7EF8009E003000FE3CF8009
      E003000FF19F8009E003000FF83F8009E003008FFC7F8009E0031144F83F8009
      E0030AB8F19F8009E003057CC3CF8019E007FAFC87E78001E00FFDF88FFB8001
      E01FFE04FFFF800AFFFFFFFFFFFF800500000000000000000000000000000000
      000000000000}
  end
  object cdsAccs: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@ID_Business'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@id_Group'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@id_User'
        ParamType = ptInput
      end>
    ProviderName = 'dsGetAccs'
    RemoteServer = rsCA
    Left = 520
    Top = 120
    object cdsAccsid_Acc: TAutoIncField
      FieldName = 'id_Acc'
      ReadOnly = True
    end
    object cdsAccsid_business: TIntegerField
      FieldName = 'id_business'
    end
    object cdsAccsName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object cdsAccsBank: TStringField
      FieldName = 'Bank'
      Size = 50
    end
    object cdsAccsPrsnAccName: TStringField
      FieldName = 'PrsnAccName'
    end
    object cdsAccsCorrAccName: TStringField
      FieldName = 'CorrAccName'
    end
    object cdsAccsINN: TStringField
      FieldName = 'INN'
    end
    object cdsAccsBIK: TStringField
      FieldName = 'BIK'
    end
    object cdsAccsDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object cdsAccsLastUpdated: TBytesField
      FieldName = 'LastUpdated'
      ReadOnly = True
      Size = 8
    end
    object cdsAccsID_Main: TIntegerField
      FieldName = 'ID_Main'
    end
    object cdsAccsBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object cdsAccsNeedSend: TBooleanField
      FieldName = 'NeedSend'
    end
    object cdsAccsid_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
    end
    object cdsAccsGroupName: TStringField
      FieldName = 'GroupName'
      Size = 255
    end
  end
  object cdsBJ_ByOper: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@id_Oper'
        ParamType = ptInput
        Value = 255
      end
      item
        DataType = ftInteger
        Name = '@id_business'
        ParamType = ptInput
        Value = 255
      end
      item
        DataType = ftInteger
        Name = '@id_Oper_OLD'
        ParamType = ptInput
        Value = 255
      end>
    ProviderName = 'dsBJ_ByOper'
    RemoteServer = rsCA
    Left = 576
    Top = 24
    object cdsBJ_ByOperid_OperRel: TAutoIncField
      FieldName = 'id_OperRel'
      ReadOnly = True
    end
    object cdsBJ_ByOperid_BJ_Obj: TAutoIncField
      FieldName = 'id_BJ_Obj'
      ReadOnly = True
    end
    object cdsBJ_ByOperNotUse: TBooleanField
      FieldName = 'NotUse'
    end
    object cdsBJ_ByOperid_BJ_Item: TIntegerField
      FieldName = 'id_BJ_Item'
    end
    object cdsBJ_ByOperName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object cdsBJ_ByOperBJ_Name: TStringField
      FieldName = 'BJ_Name'
      Size = 255
    end
    object cdsBJ_ByOperid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
  end
  object mdBuff: TRxMemoryData
    FieldDefs = <
      item
        Name = 'aText'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'aFieldName'
        DataType = ftString
        Size = 255
      end>
    Left = 88
    Top = 432
    object mdBuffaText: TStringField
      FieldName = 'aText'
      Size = 255
    end
    object mdBuffaFieldName: TStringField
      FieldName = 'aFieldName'
      Size = 255
    end
  end
  object cdsGoodsProp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@id_Goods'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dsGoodsProp'
    RemoteServer = rsCA
    Left = 472
    Top = 200
    object cdsGoodsPropid_Goods: TAutoIncField
      FieldName = 'id_Goods'
      ReadOnly = True
    end
    object cdsGoodsPropid_Ctg_Goods: TIntegerField
      FieldName = 'id_Ctg_Goods'
    end
    object cdsGoodsPropName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object cdsGoodsPropShortName: TStringField
      FieldName = 'ShortName'
      Size = 100
    end
    object cdsGoodsPropBarCode: TStringField
      FieldName = 'BarCode'
    end
    object cdsGoodsPropDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object cdsGoodsPropLastUpdated: TBytesField
      FieldName = 'LastUpdated'
      ReadOnly = True
      Size = 8
    end
    object cdsGoodsPropid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object cdsGoodsPropMeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 50
    end
    object cdsGoodsPropGTD: TStringField
      FieldName = 'GTD'
      Size = 50
    end
    object cdsGoodsPropCountry: TStringField
      FieldName = 'Country'
      Size = 255
    end
    object cdsGoodsPropDocNomCode: TStringField
      FieldName = 'DocNomCode'
      Size = 50
    end
    object cdsGoodsPropDocPriceCode: TStringField
      FieldName = 'DocPriceCode'
      Size = 50
    end
    object cdsGoodsPropDocArt: TStringField
      FieldName = 'DocArt'
      Size = 50
    end
    object cdsGoodsPropDocNumber: TStringField
      FieldName = 'DocNumber'
      Size = 50
    end
    object cdsGoodsPropPrice: TFloatField
      FieldName = 'Price'
    end
  end
  object cdsDBO: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftDateTime
        Name = '@DateFrom'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@DateTo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@id_Oper'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Doc_Account'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Doc_ActCL'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Doc_AF'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Doc_FinalAct'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Doc_Invoice'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Doc_Pay_In'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Doc_Warrant'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Doc_WBill'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Doc_WHOrd'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@id_business'
        ParamType = ptInput
      end>
    ProviderName = 'dsDocByOper'
    RemoteServer = rsCA
    Left = 560
    Top = 402
  end
end