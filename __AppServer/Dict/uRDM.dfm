object Dic: TDic
  OldCreateOrder = False
  OnCreate = RemoteDataModuleCreate
  OnDestroy = RemoteDataModuleDestroy
  Left = 65532
  Height = 979
  Width = 1820
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=1;Persist Security Info=True;User I' +
      'D=sa;Initial Catalog=SNZ;Data Source=hp26\SQL2008R2;Extended Pro' +
      'perties="Use Encryption for Data=False;Tag with column collation' +
      ' when possible=False";Use Procedure for Prepare=1;Auto Translate' +
      '=True;Packet Size=4096;Workstation ID=HP;Use Encryption for Data' +
      '=False;Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 26
    Top = 12
  end
  object spBuis: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Dic_businessGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Disabled'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = True
      end>
    Left = 8
    Top = 60
    object spBuisid_business: TAutoIncField
      FieldName = 'id_business'
      ReadOnly = True
    end
    object spBuisId_Currency: TIntegerField
      FieldName = 'Id_Currency'
    end
    object spBuisName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object spBuisShortName: TStringField
      FieldName = 'ShortName'
      Size = 5
    end
    object spBuisNum: TStringField
      FieldName = 'Num'
      Size = 5
    end
    object spBuisDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spBuisLastUpdated: TBytesField
      FieldName = 'LastUpdated'
      ReadOnly = True
      Size = 8
    end
  end
  object dsBuis: TDataSetProvider
    DataSet = spBuis
    Constraints = True
    Left = 8
    Top = 105
  end
  object spCAgent: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'CA_ContrAgentGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Disabled'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@isOwn'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_CAGroup'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 8
    Top = 148
    object spCAgentid_ContrAgent: TAutoIncField
      FieldName = 'id_ContrAgent'
      ReadOnly = True
    end
    object spCAgentName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object spCAgentid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spCAgentid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spCAgentisOwn: TBooleanField
      FieldName = 'isOwn'
    end
    object spCAgentDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spCAgentBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spCAgentCAGroupName: TStringField
      FieldName = 'CAGroupName'
      Size = 50
    end
    object spCAgentId_Currency: TIntegerField
      FieldName = 'Id_Currency'
    end
    object spCAgentCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 30
    end
    object spCAgentAddr: TStringField
      FieldName = 'Addr'
      Size = 2000
    end
    object spCAgentDescr: TStringField
      FieldName = 'Descr'
      Size = 2000
    end
    object spCAgentShowInRoot: TBooleanField
      FieldName = 'ShowInRoot'
    end
  end
  object dsCAgent: TDataSetProvider
    DataSet = spCAgent
    Constraints = True
    Left = 8
    Top = 193
  end
  object spCAGroup: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'CA_CAGroupGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@isOwn'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 16
    Top = 236
    object spCAGroupid_CAGroup: TAutoIncField
      FieldName = 'id_CAGroup'
      ReadOnly = True
    end
    object spCAGroupName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object spCAGroupCnt: TIntegerField
      FieldName = 'Cnt'
      ReadOnly = True
    end
    object spCAGroupShowInRoot: TBooleanField
      FieldName = 'ShowInRoot'
    end
  end
  object dsCAGroup: TDataSetProvider
    DataSet = spCAGroup
    Constraints = True
    Left = 16
    Top = 280
  end
  object ADOStoredProc1: TADOStoredProc
    AutoCalcFields = False
    Connection = ADOConnection1
    Parameters = <>
    Left = 88
    Top = 4
  end
  object spCtg_Goods: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'PL_Ctg_GoodsGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_P'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@Disabled'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end>
    Left = 72
    Top = 53
    object spCtg_Goodsid_Ctg_Goods: TIntegerField
      FieldName = 'id_Ctg_Goods'
      ReadOnly = True
    end
    object spCtg_Goodsid_BaseCtg_Goods: TIntegerField
      FieldName = 'id_BaseCtg_Goods'
      ReadOnly = True
    end
    object spCtg_Goodsid_business: TIntegerField
      FieldName = 'id_business'
      ReadOnly = True
    end
    object spCtg_GoodsName: TStringField
      FieldName = 'Name'
      ReadOnly = True
      Size = 255
    end
    object spCtg_GoodsShortName: TStringField
      FieldName = 'ShortName'
      ReadOnly = True
      Size = 100
    end
    object spCtg_GoodsDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spCtg_GoodsId_Currency: TIntegerField
      FieldName = 'Id_Currency'
      ReadOnly = True
    end
    object spCtg_GoodsDefPrice: TFloatField
      FieldName = 'DefPrice'
      ReadOnly = True
    end
    object spCtg_GoodsCnt: TIntegerField
      FieldName = 'Cnt'
      ReadOnly = True
    end
    object spCtg_GoodsCldCnt: TIntegerField
      FieldName = 'CldCnt'
      ReadOnly = True
    end
  end
  object dsCtg_Goods: TDataSetProvider
    DataSet = spCtg_Goods
    Constraints = True
    Left = 72
    Top = 99
  end
  object spGoods: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'PL_GoodsGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Ctg_Goods'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@Disabled'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 72
    Top = 237
    object spGoodsid_Goods: TAutoIncField
      FieldName = 'id_Goods'
      ReadOnly = True
    end
    object spGoodsid_Ctg_Goods: TIntegerField
      FieldName = 'id_Ctg_Goods'
    end
    object spGoodsName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spGoodsShortName: TStringField
      FieldName = 'ShortName'
      Size = 100
    end
    object spGoodsBarCode: TStringField
      FieldName = 'BarCode'
    end
    object spGoodsPrice: TFloatField
      FieldName = 'Price'
    end
    object spGoodsDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spGoodsLastUpdated: TBytesField
      FieldName = 'LastUpdated'
      ReadOnly = True
      Size = 8
    end
    object spGoodsID_Main: TIntegerField
      FieldName = 'ID_Main'
    end
    object spGoodsid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object spGoodsMeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 50
    end
    object spGoodsGTD: TStringField
      FieldName = 'GTD'
      Size = 50
    end
    object spGoodsCountry: TStringField
      FieldName = 'Country'
      Size = 255
    end
    object spGoodsDocNomCode: TStringField
      FieldName = 'DocNomCode'
      Size = 50
    end
    object spGoodsDocPriceCode: TStringField
      FieldName = 'DocPriceCode'
      Size = 50
    end
    object spGoodsDocArt: TStringField
      FieldName = 'DocArt'
      Size = 50
    end
    object spGoodsDocNumber: TStringField
      FieldName = 'DocNumber'
      Size = 50
    end
    object spGoodsid_Currency: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Currency'
      Calculated = True
    end
  end
  object dsGoods: TDataSetProvider
    DataSet = spGoods
    Constraints = True
    Left = 72
    Top = 283
  end
  object spWhoIAm: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'USR_WhoIAm;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Login'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '0'
      end
      item
        Name = '@Password'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '0'
      end>
    Left = 517
    Top = 12
    object spWhoIAmid_user: TAutoIncField
      FieldName = 'id_user'
      ReadOnly = True
    end
    object spWhoIAmLogin: TStringField
      FieldName = 'Login'
    end
    object spWhoIAmFirstName: TStringField
      FieldName = 'FirstName'
      Size = 50
    end
    object spWhoIAmLastName: TStringField
      FieldName = 'LastName'
      Size = 50
    end
    object spWhoIAmMiddleName: TStringField
      FieldName = 'MiddleName'
      Size = 50
    end
    object spWhoIAmDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spWhoIAmisPPP: TBooleanField
      FieldName = 'isPPP'
    end
  end
  object spUserGetBsn: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'USR_UserGetBsn;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 547
    Top = 24
    object spUserGetBsnid_business: TIntegerField
      FieldName = 'id_business'
      ReadOnly = True
    end
    object spUserGetBsnName: TStringField
      FieldName = 'Name'
      ReadOnly = True
      Size = 50
    end
  end
  object dsUserGetBsn: TDataSetProvider
    DataSet = spUserGetBsn
    Constraints = True
    Left = 547
    Top = 72
  end
  object spCurByID: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Crn_CurrencyByID;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Id_Currency'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 485
    Top = 4
    object spCurByIDId_Currency: TAutoIncField
      FieldName = 'Id_Currency'
      ReadOnly = True
    end
    object spCurByIDName: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object spCurByIDShortName: TStringField
      FieldName = 'ShortName'
      Size = 10
    end
    object spCurByIDISOCode: TStringField
      FieldName = 'ISOCode'
      FixedChar = True
      Size = 3
    end
    object spCurByIDNumberCode: TStringField
      FieldName = 'NumberCode'
      FixedChar = True
      Size = 3
    end
    object spCurByIDFastAccess: TBooleanField
      FieldName = 'FastAccess'
    end
    object spCurByIDValue: TIntegerField
      FieldName = 'Value'
    end
    object spCurByIDRate: TFloatField
      FieldName = 'Rate'
    end
    object spCurByIDAvForPay: TBooleanField
      FieldName = 'AvForPay'
    end
    object spCurByIDBase: TBooleanField
      FieldName = 'Base'
    end
    object spCurByIDLastUpdated: TBytesField
      FieldName = 'LastUpdated'
      ReadOnly = True
      Size = 8
    end
    object spCurByIDId_URL: TIntegerField
      FieldName = 'Id_URL'
    end
  end
  object spCAProp: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'CA_ContrAgentGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 16
    Top = 324
    object spCAPropid_ContrAgent: TAutoIncField
      FieldName = 'id_ContrAgent'
      ReadOnly = True
    end
    object spCAPropName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object spCAPropid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spCAPropid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spCAPropisOwn: TBooleanField
      FieldName = 'isOwn'
    end
    object spCAPropDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spCAPropAddr: TStringField
      FieldName = 'Addr'
      Size = 2000
    end
    object spCAPropDescr: TStringField
      FieldName = 'Descr'
      Size = 2000
    end
    object spCAPropBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spCAPropCAGroupName: TStringField
      FieldName = 'CAGroupName'
      Size = 50
    end
    object spCAPropId_Currency: TIntegerField
      FieldName = 'Id_Currency'
    end
    object spCAPropCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 30
    end
    object spCAPropShowInRoot: TBooleanField
      FieldName = 'ShowInRoot'
    end
  end
  object dsCAProp: TDataSetProvider
    DataSet = spCAProp
    Constraints = True
    Left = 16
    Top = 368
  end
  object spCAComment: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'CA_CommentGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 16
    Top = 413
    object spCACommentid_comment: TAutoIncField
      FieldName = 'id_comment'
      ReadOnly = True
    end
    object spCACommentid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spCACommentComment: TStringField
      FieldName = 'Comment'
      Size = 255
    end
    object spCACommentCommentType: TIntegerField
      FieldName = 'CommentType'
    end
    object spCACommentDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object spCACommentid_User: TIntegerField
      FieldName = 'id_User'
    end
  end
  object spCAContact: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'CA_ContactGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 16
    Top = 500
    object spCAContactid_Contact: TAutoIncField
      FieldName = 'id_Contact'
      ReadOnly = True
    end
    object spCAContactid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spCAContactFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object spCAContactPost: TStringField
      FieldName = 'Post'
      Size = 50
    end
    object spCAContactPhone: TStringField
      FieldName = 'Phone'
      Size = 50
    end
    object spCAContactemail: TStringField
      FieldName = 'email'
      Size = 50
    end
  end
  object dsCAComment: TSQLUpdateDSProvider
    DataSet = spCAComment
    Constraints = True
    ModifySQL.Strings = (
      'EXEC CA_CommentEdit'
      '  @id_comment = :id_comment,'
      '  @id_ContrAgent = :id_ContrAgent,'
      '  @Comment = :Comment,'
      '  @CommentType = :CommentType,'
      '  @id_User = :id_User')
    InsertSQL.Strings = (
      'EXEC CA_CommentAdd'
      '  @id_ContrAgent = :id_ContrAgent,'
      '  @Comment = :Comment,'
      '  @CommentType = :CommentType,'
      '  @id_User = :id_User')
    DeleteSQL.Strings = (
      'EXEC CA_CommentDel'
      '  @id_comment = :id_comment ')
    Left = 16
    Top = 458
  end
  object dsCAContact: TSQLUpdateDSProvider
    DataSet = spCAContact
    Constraints = True
    ModifySQL.Strings = (
      'EXEC CA_ContactEdit'
      '  @id_Contact = :id_Contact ,'
      '  @id_ContrAgent = :id_ContrAgent,'
      '  @FIO = :FIO,'
      '  @Post = :Post,'
      '  @Phone = :Phone,'
      '  @email = :email')
    InsertSQL.Strings = (
      'EXEC CA_ContactAdd'
      '  @id_ContrAgent = :id_ContrAgent,'
      '  @FIO = :FIO,'
      '  @Post = :Post,'
      '  @Phone = :Phone,'
      '  @email = :email ')
    DeleteSQL.Strings = (
      'EXEC CA_ContactDel'
      '  @id_Contact = :id_Contact')
    Left = 16
    Top = 547
  end
  object spRepr2: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'CA_ReprGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Disabled'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_Bsn'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Group'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 555
    Top = 227
    object spRepr2id_Repr: TAutoIncField
      FieldName = 'id_Repr'
      ReadOnly = True
    end
    object spRepr2id_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spRepr2isJur: TBooleanField
      FieldName = 'isJur'
    end
    object spRepr2Disabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spRepr2Name: TStringField
      FieldName = 'Name'
      ReadOnly = True
      Size = 255
    end
    object spRepr2CAName: TStringField
      FieldName = 'CAName'
      Size = 50
    end
    object spRepr2Id_Currency: TIntegerField
      FieldName = 'Id_Currency'
    end
    object spRepr2CurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 30
    end
    object spRepr2id_business: TIntegerField
      FieldName = 'id_business'
      ReadOnly = True
    end
    object spRepr2ID_Main: TIntegerField
      FieldName = 'ID_Main'
    end
    object spRepr2NeedSend: TBooleanField
      FieldName = 'NeedSend'
    end
    object spRepr2BusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spRepr2GroupName: TStringField
      FieldName = 'GroupName'
      Size = 255
    end
    object spRepr2id_Repr_Group: TIntegerField
      FieldName = 'id_Repr_Group'
    end
    object spRepr2BIK: TStringField
      FieldName = 'BIK'
      Size = 255
    end
    object spRepr2Bank: TStringField
      FieldName = 'Bank'
      Size = 255
    end
    object spRepr2AccName: TStringField
      FieldName = 'AccName'
      Size = 255
    end
    object spRepr2CorAccNAme: TStringField
      FieldName = 'CorAccNAme'
      Size = 255
    end
    object spRepr2OKPO: TStringField
      FieldName = 'OKPO'
      Size = 50
    end
    object spRepr2INN: TStringField
      FieldName = 'INN'
      Size = 50
    end
    object spRepr2KPP: TStringField
      FieldName = 'KPP'
      Size = 50
    end
    object spRepr2FirstName: TStringField
      FieldName = 'FirstName'
      Size = 30
    end
    object spRepr2MiddleName: TStringField
      FieldName = 'MiddleName'
      Size = 30
    end
    object spRepr2LastName: TStringField
      FieldName = 'LastName'
      Size = 30
    end
    object spRepr2Addr: TStringField
      FieldName = 'Addr'
      Size = 2000
    end
    object spRepr2Descr: TStringField
      FieldName = 'Descr'
      Size = 2000
    end
  end
  object dsPepr: TDataSetProvider
    DataSet = spRepr2
    Constraints = True
    Left = 555
    Top = 274
  end
  object spReprProp: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'CA_ReprGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Repr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 555
    Top = 331
    object spReprPropid_Repr: TAutoIncField
      FieldName = 'id_Repr'
      ReadOnly = True
    end
    object spReprPropid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spReprPropisJur: TBooleanField
      FieldName = 'isJur'
    end
    object spReprPropDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spReprPropName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spReprPropFirstName: TStringField
      FieldName = 'FirstName'
      Size = 30
    end
    object spReprPropMiddleName: TStringField
      FieldName = 'MiddleName'
      Size = 30
    end
    object spReprPropLastName: TStringField
      FieldName = 'LastName'
      Size = 30
    end
    object spReprPropAddr: TStringField
      FieldName = 'Addr'
      Size = 2000
    end
    object spReprPropDescr: TStringField
      FieldName = 'Descr'
      Size = 2000
    end
    object spReprPropCAName: TStringField
      FieldName = 'CAName'
      Size = 50
    end
    object spReprPropId_Currency: TIntegerField
      FieldName = 'Id_Currency'
    end
    object spReprPropCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 30
    end
    object spReprPropNeedSend: TBooleanField
      FieldName = 'NeedSend'
    end
    object spReprPropGroupName: TStringField
      FieldName = 'GroupName'
      Size = 255
    end
    object spReprPropid_Repr_Group: TIntegerField
      FieldName = 'id_Repr_Group'
    end
    object spReprPropid_Bsn: TIntegerField
      FieldName = 'id_Bsn'
      ReadOnly = True
    end
    object spReprPropBIK: TStringField
      FieldName = 'BIK'
      Size = 255
    end
    object spReprPropBank: TStringField
      FieldName = 'Bank'
      Size = 255
    end
    object spReprPropAccName: TStringField
      FieldName = 'AccName'
      Size = 255
    end
    object spReprPropCorAccNAme: TStringField
      FieldName = 'CorAccNAme'
      Size = 255
    end
    object spReprPropOKPO: TStringField
      FieldName = 'OKPO'
      Size = 50
    end
    object spReprPropINN: TStringField
      FieldName = 'INN'
      Size = 50
    end
    object spReprPropKPP: TStringField
      FieldName = 'KPP'
      Size = 50
    end
  end
  object dsReprProp: TDataSetProvider
    DataSet = spReprProp
    Constraints = True
    Left = 555
    Top = 376
  end
  object spReprComment: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'CA_ReprCommentGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Repr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 555
    Top = 424
    object spReprCommentid_comment: TAutoIncField
      FieldName = 'id_comment'
      ReadOnly = True
    end
    object spReprCommentid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spReprCommentComment: TStringField
      FieldName = 'Comment'
      Size = 255
    end
    object spReprCommentCommentType: TIntegerField
      FieldName = 'CommentType'
    end
    object spReprCommentDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object spReprCommentid_User: TIntegerField
      FieldName = 'id_User'
    end
  end
  object spReprContact: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'CA_ReprContactGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Repr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 555
    Top = 520
    object spReprContactid_Contact: TAutoIncField
      FieldName = 'id_Contact'
      ReadOnly = True
    end
    object spReprContactid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spReprContactFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object spReprContactPost: TStringField
      FieldName = 'Post'
      Size = 50
    end
    object spReprContactPhone: TStringField
      FieldName = 'Phone'
      Size = 50
    end
    object spReprContactemail: TStringField
      FieldName = 'email'
      Size = 50
    end
  end
  object dsReprComment: TSQLUpdateDSProvider
    DataSet = spReprComment
    Constraints = True
    ModifySQL.Strings = (
      'EXEC CA_CommentEdit'
      '  @id_comment = :id_comment,'
      '  @id_Repr = :id_Repr,'
      '  @Comment = :Comment,'
      '  @CommentType = :CommentType,'
      '  @id_User = :id_User'
      ' ')
    InsertSQL.Strings = (
      'EXEC CA_ReprCommentAdd'
      '  @id_Repr = :id_Repr,'
      '  @Comment = :Comment,'
      '  @CommentType = :CommentType,'
      '  @id_User = :id_User')
    DeleteSQL.Strings = (
      'EXEC CA_ReprCommentDel'
      '  @id_comment = :id_comment ')
    Left = 555
    Top = 470
  end
  object dsReprContact: TSQLUpdateDSProvider
    DataSet = spReprContact
    Constraints = True
    ModifySQL.Strings = (
      'EXEC CA_ReprContactEdit'
      '  @id_Contact = :id_Contact ,'
      '  @id_Repr = :id_Repr,'
      '  @FIO = :FIO,'
      '  @Post = :Post,'
      '  @Phone = :Phone,'
      '  @email = :email'
      ' ')
    InsertSQL.Strings = (
      'EXEC CA_ReprContactAdd'
      '  @id_Repr = :id_Repr,'
      '  @FIO = :FIO,'
      '  @Post = :Post,'
      '  @Phone = :Phone,'
      '  @email = :email '
      ' ')
    DeleteSQL.Strings = (
      'EXEC CA_ReprContactDel'
      '  @id_Contact = :id_Contact'
      ' ')
    Left = 555
    Top = 566
  end
  object spCtgGoodsProp: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'PL_Ctg_GoodsGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Ctg_Goods'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 72
    Top = 145
    object spCtgGoodsPropid_Ctg_Goods: TAutoIncField
      FieldName = 'id_Ctg_Goods'
    end
    object spCtgGoodsPropid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spCtgGoodsPropid_BaseCtg_Goods: TIntegerField
      FieldName = 'id_BaseCtg_Goods'
    end
    object spCtgGoodsPropName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spCtgGoodsPropShortName: TStringField
      FieldName = 'ShortName'
      Size = 100
    end
    object spCtgGoodsPropDefPrice: TFloatField
      FieldName = 'DefPrice'
    end
    object spCtgGoodsPropId_Currency: TIntegerField
      FieldName = 'Id_Currency'
    end
    object spCtgGoodsPropDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spCtgGoodsPropID_Main: TIntegerField
      FieldName = 'ID_Main'
    end
    object spCtgGoodsPropLastUpdated: TBytesField
      FieldName = 'LastUpdated'
      Size = 8
    end
    object spCtgGoodsPropBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spCtgGoodsPropCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 30
    end
    object spCtgGoodsPropParentName: TStringField
      FieldName = 'ParentName'
      Size = 255
    end
  end
  object dsCtgGoodsProp: TDataSetProvider
    DataSet = spCtgGoodsProp
    Constraints = True
    Left = 72
    Top = 189
  end
  object spMeasureGetList: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Dic_MeasureGetListBase;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 612
    Top = 148
    object spMeasureGetListid_Measure: TAutoIncField
      FieldName = 'id_Measure'
      ReadOnly = True
    end
    object spMeasureGetListName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object spMeasureGetListShortName: TStringField
      FieldName = 'ShortName'
      Size = 10
    end
  end
  object dsMeasureGetList: TDataSetProvider
    DataSet = spMeasureGetList
    Constraints = True
    Left = 612
    Top = 196
  end
  object spFunc: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'OP_FuncDistribGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Bsn'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 612
    Top = 356
    object spFuncid_FuncDistrib: TAutoIncField
      FieldName = 'id_FuncDistrib'
      ReadOnly = True
    end
    object spFuncName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dsFunc: TDataSetProvider
    DataSet = spFunc
    Constraints = True
    Left = 612
    Top = 404
  end
  object spFormal: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'OP_FormalDistribGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Bsn'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 612
    Top = 252
    object spFormalid_FormalDistrib: TAutoIncField
      FieldName = 'id_FormalDistrib'
      ReadOnly = True
    end
    object spFormalName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dsFormal: TDataSetProvider
    DataSet = spFormal
    Constraints = True
    Left = 612
    Top = 300
  end
  object spBsnByFunc: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'USR_UserGetBsnByFunc;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@UID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 491
    Top = 5
  end
  object dsBsnByFunc: TDataSetProvider
    DataSet = spBsnByFunc
    Constraints = True
    Left = 491
    Top = 53
  end
  object spLcList: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'LC_OP_OperGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@id_user'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 288
    Top = 396
    object spLcListid_LC_Oper: TIntegerField
      FieldName = 'id_LC_Oper'
    end
    object spLcListOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object spLcListid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spLcListCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      Size = 152
    end
    object spLcListid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spLcListBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spLcListBusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object spLcListDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object spLcListCorrect: TBooleanField
      FieldName = 'Correct'
    end
    object spLcListOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spLcListId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object spLcListCurrencyOperName: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object spLcListCurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object spLcListAmountOper: TFloatField
      FieldName = 'AmountOper'
    end
    object spLcListAmountOper2: TFloatField
      FieldName = 'AmountOper2'
    end
    object spLcListPriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object spLcListid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object spLcListMeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 50
    end
    object spLcListId_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object spLcListCurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object spLcListCurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object spLcListSummSys: TFloatField
      FieldName = 'SummSys'
    end
    object spLcListid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spLcListid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object spLcListid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object spLcListSrcName: TStringField
      FieldName = 'SrcName'
      Size = 50
    end
    object spLcListid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spLcListid_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object spLcListid_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object spLcListid_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object spLcListReprName: TStringField
      FieldName = 'ReprName'
      Size = 255
    end
    object spLcListReprWHName: TStringField
      FieldName = 'ReprWHName'
      Size = 10
    end
    object spLcListid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spLcListWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object spLcListid_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object spLcListImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object spLcListAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object spLcListContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object spLcListCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object spLcListID_Main: TIntegerField
      FieldName = 'ID_Main'
    end
    object spLcListDateVized: TDateTimeField
      FieldName = 'DateVized'
    end
    object spLcListVized: TBooleanField
      FieldName = 'Vized'
    end
    object spLcListOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spLcListDig1: TFloatField
      FieldName = 'Dig1'
    end
    object spLcListDig2: TFloatField
      FieldName = 'Dig2'
    end
    object spLcListDig3: TFloatField
      FieldName = 'Dig3'
    end
    object spLcListDig4: TFloatField
      FieldName = 'Dig4'
    end
    object spLcListDig5: TFloatField
      FieldName = 'Dig5'
    end
    object spLcListDig6: TFloatField
      FieldName = 'Dig6'
    end
    object spLcListDig7: TFloatField
      FieldName = 'Dig7'
    end
    object spLcListDig8: TFloatField
      FieldName = 'Dig8'
    end
    object spLcListDig9: TFloatField
      FieldName = 'Dig9'
    end
    object spLcListDig10: TFloatField
      FieldName = 'Dig10'
    end
    object spLcListDig11: TFloatField
      FieldName = 'Dig11'
    end
    object spLcListDig12: TFloatField
      FieldName = 'Dig12'
    end
    object spLcListDig13: TFloatField
      FieldName = 'Dig13'
    end
    object spLcListDig14: TFloatField
      FieldName = 'Dig14'
    end
    object spLcListDig15: TFloatField
      FieldName = 'Dig15'
    end
    object spLcListStr1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object spLcListStr2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object spLcListStr3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object spLcListStr4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object spLcListStr5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object spLcListStr6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object spLcListStr7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object spLcListStr8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object spLcListStr9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object spLcListStr10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object spLcListStr11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object spLcListStr12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object spLcListStr13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object spLcListStr14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object spLcListStr15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object spLcListKoeff: TIntegerField
      FieldName = 'Koeff'
    end
    object spLcListKoeffName: TStringField
      FieldName = 'KoeffName'
      Size = 50
    end
    object spLcListis_Mirr: TBooleanField
      FieldName = 'is_Mirr'
    end
    object spLcListid_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object spLcListFormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object spLcListid_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object spLcListFuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object spLcListid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spLcListContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      Size = 50
    end
    object spLcListid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spLcListSended: TBooleanField
      FieldName = 'Sended'
    end
    object spLcListSummOper: TFloatField
      FieldName = 'SummOper'
    end
    object spLcListTypeName: TStringField
      FieldName = 'TypeName'
      Size = 30
    end
  end
  object dsLcList: TDataSetProvider
    DataSet = spLcList
    Constraints = True
    Left = 288
    Top = 442
  end
  object spLcProp: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'LC_OP_OperGetProp_v2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_LC_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@is_Mirr'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 288
    Top = 484
    object spLcPropid_LC_Oper: TAutoIncField
      FieldName = 'id_LC_Oper'
    end
    object spLcPropDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object spLcPropOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object spLcPropid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spLcPropCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      Size = 152
    end
    object spLcPropid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spLcPropId_CurrencyBsn: TIntegerField
      FieldName = 'Id_CurrencyBsn'
    end
    object spLcPropBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spLcPropBusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object spLcPropCorrect: TBooleanField
      FieldName = 'Correct'
    end
    object spLcPropOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spLcPropId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object spLcPropCurrencyOperName: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object spLcPropCurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object spLcPropPriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object spLcPropId_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object spLcPropCurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object spLcPropCurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object spLcPropSummSys: TFloatField
      FieldName = 'SummSys'
    end
    object spLcPropid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spLcPropid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object spLcPropid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object spLcPropSrcName: TStringField
      FieldName = 'SrcName'
      Size = 50
    end
    object spLcPropSrcID_Main: TIntegerField
      FieldName = 'SrcID_Main'
    end
    object spLcPropid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spLcPropid_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object spLcPropid_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object spLcPropid_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object spLcPropReprName: TStringField
      FieldName = 'ReprName'
      Size = 255
    end
    object spLcPropReprID_Main: TIntegerField
      FieldName = 'ReprID_Main'
    end
    object spLcPropKoeff: TIntegerField
      FieldName = 'Koeff'
    end
    object spLcPropKoeffName: TStringField
      FieldName = 'KoeffName'
      Size = 50
    end
    object spLcPropCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object spLcPropid_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object spLcPropFormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object spLcPropid_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object spLcPropFuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object spLcPropSummOper: TFloatField
      FieldName = 'SummOper'
    end
    object spLcPropTypeName: TStringField
      FieldName = 'TypeName'
      Size = 30
    end
    object spLcPropHasViza: TBooleanField
      FieldName = 'HasViza'
    end
    object spLcPropid_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object spLcPropImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object spLcPropAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object spLcPropContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object spLcPropOperCrnName: TStringField
      FieldName = 'OperCrnName'
      Size = 10
    end
    object spLcPropCurrencyBsnName: TStringField
      FieldName = 'CurrencyBsnName'
      Size = 10
    end
    object spLcPropOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spLcPropOperTypeSIGN: TIntegerField
      FieldName = 'OperTypeSIGN'
    end
    object spLcPropHasChild: TIntegerField
      FieldName = 'HasChild'
    end
    object spLcPropDig1: TFloatField
      FieldName = 'Dig1'
    end
    object spLcPropDig2: TFloatField
      FieldName = 'Dig2'
    end
    object spLcPropDig3: TFloatField
      FieldName = 'Dig3'
    end
    object spLcPropDig4: TFloatField
      FieldName = 'Dig4'
    end
    object spLcPropDig5: TFloatField
      FieldName = 'Dig5'
    end
    object spLcPropDig6: TFloatField
      FieldName = 'Dig6'
    end
    object spLcPropDig7: TFloatField
      FieldName = 'Dig7'
    end
    object spLcPropDig8: TFloatField
      FieldName = 'Dig8'
    end
    object spLcPropDig9: TFloatField
      FieldName = 'Dig9'
    end
    object spLcPropDig10: TFloatField
      FieldName = 'Dig10'
    end
    object spLcPropDig11: TFloatField
      FieldName = 'Dig11'
    end
    object spLcPropDig12: TFloatField
      FieldName = 'Dig12'
    end
    object spLcPropDig13: TFloatField
      FieldName = 'Dig13'
    end
    object spLcPropDig14: TFloatField
      FieldName = 'Dig14'
    end
    object spLcPropDig15: TFloatField
      FieldName = 'Dig15'
    end
    object spLcPropStr1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object spLcPropStr2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object spLcPropStr3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object spLcPropStr4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object spLcPropStr5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object spLcPropStr6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object spLcPropStr7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object spLcPropStr8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object spLcPropStr9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object spLcPropStr10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object spLcPropStr11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object spLcPropStr12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object spLcPropStr13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object spLcPropStr14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object spLcPropStr15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object spLcPropOperVidName: TStringField
      FieldName = 'OperVidName'
      Size = 50
    end
    object spLcPropis_Mirr: TBooleanField
      FieldName = 'is_Mirr'
    end
    object spLcPropid_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
    end
    object spLcPropid_Warehouse_Group: TIntegerField
      FieldName = 'id_Warehouse_Group'
    end
    object spLcPropid_Manufact_Group: TIntegerField
      FieldName = 'id_Manufact_Group'
    end
    object spLcPropid_LC_Oper_Ext: TIntegerField
      FieldName = 'id_LC_Oper_Ext'
    end
    object spLcPropid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spLcPropContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      Size = 50
    end
  end
  object dsLcProp: TDataSetProvider
    DataSet = spLcProp
    Constraints = True
    Left = 288
    Top = 530
  end
  object spLcWare: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'LC_OP_OperWareGet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_LC_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 272
    Top = 572
    object spLcWareid_LC_OperWare: TAutoIncField
      FieldName = 'id_LC_OperWare'
    end
    object spLcWareid_LC_Oper: TIntegerField
      FieldName = 'id_LC_Oper'
    end
    object spLcWareAmountOper: TFloatField
      FieldName = 'AmountOper'
    end
    object spLcWareid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object spLcWarePriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object spLcWareSummSys: TFloatField
      FieldName = 'SummSys'
    end
    object spLcWareid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spLcWareMeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 10
    end
    object spLcWareRealKoef: TFloatField
      FieldName = 'RealKoef'
    end
    object spLcWareAmountOperBaseMS: TFloatField
      FieldName = 'AmountOperBaseMS'
    end
    object spLcWareWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object spLcWareWareID_Main: TIntegerField
      FieldName = 'WareID_Main'
    end
  end
  object spEmptyOper: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'LC_OP_EmptyOperGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_LC_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 336
    Top = 468
    object spEmptyOperid_LC_Oper: TAutoIncField
      FieldName = 'id_LC_Oper'
      ReadOnly = True
    end
    object spEmptyOperOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object spEmptyOperid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spEmptyOperCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      ReadOnly = True
      Size = 152
    end
    object spEmptyOperOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spEmptyOperDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object spEmptyOperid_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object spEmptyOperDocTypeName: TStringField
      FieldName = 'DocTypeName'
      Size = 255
    end
    object spEmptyOperContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object spEmptyOperOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spEmptyOperid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spEmptyOperBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spEmptyOperImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object spEmptyOperAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
  end
  object dsEmptyOper: TDataSetProvider
    DataSet = spEmptyOper
    Constraints = True
    Left = 336
    Top = 514
  end
  object dsWMes: TSQLUpdateDSProvider
    DataSet = spWMes
    Constraints = True
    ModifySQL.Strings = (
      '')
    Left = 323
    Top = 617
  end
  object spWMes: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'PL_WareMeasureGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Goods'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Raw'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_ExtRaw'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 323
    Top = 572
    object spWMesid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object spWMesName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object spWMesShortName: TStringField
      FieldName = 'ShortName'
      Size = 10
    end
    object spWMesid_BaseMeasure: TIntegerField
      FieldName = 'id_BaseMeasure'
    end
    object spWMesKoef: TFloatField
      FieldName = 'Koef'
    end
    object spWMesDisabled: TBooleanField
      FieldName = 'Disabled'
    end
  end
  object spAccList: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'LC_ACC_AccGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_Business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@UID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Group'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 443
    Top = 20
  end
  object dsAccList: TDataSetProvider
    DataSet = spAccList
    Constraints = True
    Left = 443
    Top = 64
  end
  object spWHList: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'LC_WH_WHGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ID_Business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@UID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Group'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 443
    Top = 116
  end
  object dsWHList: TDataSetProvider
    DataSet = spWHList
    Constraints = True
    Left = 443
    Top = 160
  end
  object spMNList: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'LC_MN_ManufactGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ID_Business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@UID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Group'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 441
    Top = 292
  end
  object dsMNList: TDataSetProvider
    DataSet = spMNList
    Constraints = True
    Left = 441
    Top = 336
  end
  object spUserList: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'LC_GetUserList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ID_Business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 441
    Top = 388
    object spUserListid_User: TAutoIncField
      FieldName = 'id_User'
      ReadOnly = True
    end
    object spUserListFirstName: TStringField
      FieldName = 'FirstName'
      Size = 50
    end
    object spUserListMiddleName: TStringField
      FieldName = 'MiddleName'
      Size = 50
    end
    object spUserListLastName: TStringField
      FieldName = 'LastName'
      Size = 50
    end
    object spUserListLogin: TStringField
      FieldName = 'Login'
    end
    object spUserListPassword: TStringField
      FieldName = 'Password'
    end
    object spUserListDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spUserListPspSeries: TStringField
      FieldName = 'PspSeries'
      Size = 10
    end
    object spUserListPspNumber: TStringField
      FieldName = 'PspNumber'
      Size = 10
    end
    object spUserListPspPlace: TStringField
      FieldName = 'PspPlace'
      Size = 255
    end
    object spUserListPspDate: TDateTimeField
      FieldName = 'PspDate'
    end
    object spUserListPspAddr: TStringField
      FieldName = 'PspAddr'
      Size = 255
    end
    object spUserListAddrReal: TStringField
      FieldName = 'AddrReal'
      Size = 255
    end
    object spUserListPhones: TStringField
      FieldName = 'Phones'
      Size = 255
    end
    object spUserListEmails: TStringField
      FieldName = 'Emails'
      Size = 255
    end
    object spUserListLastUpdated: TBytesField
      FieldName = 'LastUpdated'
      ReadOnly = True
      Size = 8
    end
    object spUserListOrgPost: TStringField
      FieldName = 'OrgPost'
      Size = 255
    end
  end
  object dsUserList: TDataSetProvider
    DataSet = spUserList
    Constraints = True
    Left = 441
    Top = 432
  end
  object spEmptyProp: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'OP_old_EmptyOperGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 131
    Top = 303
    object spEmptyPropid_Oper: TAutoIncField
      FieldName = 'id_Oper'
      ReadOnly = True
    end
    object spEmptyPropid_OperParent: TIntegerField
      FieldName = 'id_OperParent'
    end
    object spEmptyPropOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object spEmptyPropOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spEmptyPropid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spEmptyPropCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      ReadOnly = True
      Size = 152
    end
    object spEmptyPropDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object spEmptyPropBody: TStringField
      FieldName = 'Body'
      Size = 5000
    end
    object spEmptyPropOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
  end
  object dsEmptyProp: TDataSetProvider
    DataSet = spEmptyProp
    Constraints = True
    Left = 131
    Top = 349
  end
  object dsOPBuff: TSQLUpdateDSProvider
    DataSet = spOPBuff
    Constraints = True
    InsertSQL.Strings = (
      'EXEC OP_BuffAddItem'
      '  @id_Buff = :id_Buff,'
      '  @id_Oper = :id_Oper'
      ''
      ' '
      ' '
      ' '
      ' ')
    DeleteSQL.Strings = (
      'EXEC OP_BuffDelItem'
      '  @id_Buff = :id_Buff,'
      '  @id_Oper = :id_Oper'
      ''
      '  ')
    Left = 499
    Top = 514
  end
  object spOPBuff: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'OP_BuffOperGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Buff'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 499
    Top = 469
    object spOPBuffid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spOPBuffid_OperParent: TIntegerField
      FieldName = 'id_OperParent'
    end
    object spOPBuffid_old_Oper: TIntegerField
      FieldName = 'id_old_Oper'
    end
    object spOPBuffDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object spOPBuffid_LC_Oper: TIntegerField
      FieldName = 'id_LC_Oper'
    end
    object spOPBuffOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object spOPBuffid_Replicator: TIntegerField
      FieldName = 'id_Replicator'
    end
    object spOPBuffReplicatorShortName: TStringField
      FieldName = 'ReplicatorShortName'
      Size = 5
    end
    object spOPBuffid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spOPBuffid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spOPBuffId_CurrencyBsn: TIntegerField
      FieldName = 'Id_CurrencyBsn'
    end
    object spOPBuffBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spOPBuffBusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object spOPBuffDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object spOPBuffCorrect: TBooleanField
      FieldName = 'Correct'
    end
    object spOPBuffOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spOPBuffId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object spOPBuffCurrencyOperName: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object spOPBuffCurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object spOPBuffAmountOper: TFloatField
      FieldName = 'AmountOper'
    end
    object spOPBuffAmountOper2: TFloatField
      FieldName = 'AmountOper2'
    end
    object spOPBuffPriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object spOPBuffRateOper: TFloatField
      FieldName = 'RateOper'
    end
    object spOPBuffid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object spOPBuffMeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 10
    end
    object spOPBuffRealKoef: TFloatField
      FieldName = 'RealKoef'
    end
    object spOPBuffAmountOperBaseMS: TFloatField
      FieldName = 'AmountOperBaseMS'
    end
    object spOPBuffId_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object spOPBuffCurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object spOPBuffCurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object spOPBuffSummSys: TFloatField
      FieldName = 'SummSys'
    end
    object spOPBuffRateSys: TFloatField
      FieldName = 'RateSys'
    end
    object spOPBuffid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spOPBuffid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object spOPBuffid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object spOPBuffSrcName: TStringField
      FieldName = 'SrcName'
      Size = 50
    end
    object spOPBuffSrcID_Main: TIntegerField
      FieldName = 'SrcID_Main'
    end
    object spOPBuffid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spOPBuffid_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object spOPBuffid_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object spOPBuffid_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object spOPBuffReprName: TStringField
      FieldName = 'ReprName'
      Size = 255
    end
    object spOPBuffReprID_Main: TIntegerField
      FieldName = 'ReprID_Main'
    end
    object spOPBuffId_CurrencyInv: TIntegerField
      FieldName = 'Id_CurrencyInv'
    end
    object spOPBuffPriceInv: TFloatField
      FieldName = 'PriceInv'
    end
    object spOPBuffRateInv: TFloatField
      FieldName = 'RateInv'
    end
    object spOPBuffCurrencyInvName: TStringField
      FieldName = 'CurrencyInvName'
      Size = 30
    end
    object spOPBuffCurrencyInvShortName: TStringField
      FieldName = 'CurrencyInvShortName'
      Size = 30
    end
    object spOPBuffid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spOPBuffWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object spOPBuffWareID_Main: TIntegerField
      FieldName = 'WareID_Main'
    end
    object spOPBuffKoeff: TIntegerField
      FieldName = 'Koeff'
    end
    object spOPBuffKoeffName: TStringField
      FieldName = 'KoeffName'
      Size = 50
    end
    object spOPBuffCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object spOPBuffid_UserChecker: TIntegerField
      FieldName = 'id_UserChecker'
    end
    object spOPBuffid_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object spOPBuffFormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object spOPBuffid_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object spOPBuffFuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object spOPBuffDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object spOPBuffid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spOPBuffContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      Size = 50
    end
    object spOPBuffid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spOPBuffSummOper: TFloatField
      FieldName = 'SummOper'
    end
    object spOPBuffTypeName: TStringField
      FieldName = 'TypeName'
      Size = 30
    end
    object spOPBuffOperNum: TStringField
      FieldName = 'OperNum'
      Size = 255
    end
    object spOPBuffOperDelta: TFloatField
      FieldName = 'OperDelta'
    end
    object spOPBuffOperRateDelta: TFloatField
      FieldName = 'OperRateDelta'
    end
    object spOPBuffOperTotalDelta: TFloatField
      FieldName = 'OperTotalDelta'
    end
    object spOPBuffDTDiff: TIntegerField
      FieldName = 'DTDiff'
    end
    object spOPBuffHasViza: TBooleanField
      FieldName = 'HasViza'
    end
    object spOPBuffOperState: TIntegerField
      FieldName = 'OperState'
    end
    object spOPBuffHidedOper: TBooleanField
      FieldName = 'HidedOper'
    end
    object spOPBuffOperSummSys: TFloatField
      FieldName = 'OperSummSys'
    end
    object spOPBuffRateMain: TFloatField
      FieldName = 'RateMain'
    end
    object spOPBuffid_Repr_Ex: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object spOPBuffid_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object spOPBuffImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object spOPBuffAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object spOPBuffContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object spOPBuffOperDeltaCrn: TFloatField
      FieldName = 'OperDeltaCrn'
    end
    object spOPBuffOperRateDeltaCrn: TFloatField
      FieldName = 'OperRateDeltaCrn'
    end
    object spOPBuffOperTotalDeltaCrn: TFloatField
      FieldName = 'OperTotalDeltaCrn'
    end
    object spOPBuffOperCrnName: TStringField
      FieldName = 'OperCrnName'
      Size = 10
    end
    object spOPBuffOperSum_Offer: TFloatField
      FieldName = 'OperSum_Offer'
    end
    object spOPBuffCRN_OLD_OperSum: TFloatField
      FieldName = 'CRN_OLD_OperSum'
    end
    object spOPBuffCRN_OLD_OperSum_Offer: TFloatField
      FieldName = 'CRN_OLD_OperSum_Offer'
    end
    object spOPBuffCRN_OperSum_Inv: TFloatField
      FieldName = 'CRN_OperSum_Inv'
    end
    object spOPBuffOperSumCalced: TFloatField
      FieldName = 'OperSumCalced'
    end
    object spOPBuffOperSum_OfferCalced: TFloatField
      FieldName = 'OperSum_OfferCalced'
    end
    object spOPBuffBlocked: TBooleanField
      FieldName = 'Blocked'
    end
    object spOPBuffCurrencyBsnName: TStringField
      FieldName = 'CurrencyBsnName'
      Size = 10
    end
    object spOPBuffid_Ctg_Goods_2: TIntegerField
      FieldName = 'id_Ctg_Goods_2'
    end
    object spOPBuffOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spOPBuffRealDataCreate: TDateTimeField
      FieldName = 'RealDataCreate'
    end
    object spOPBuffOperTypeSIGN: TIntegerField
      FieldName = 'OperTypeSIGN'
    end
    object spOPBuffHasChild: TIntegerField
      FieldName = 'HasChild'
    end
    object spOPBuffDig1: TFloatField
      FieldName = 'Dig1'
    end
    object spOPBuffDig2: TFloatField
      FieldName = 'Dig2'
    end
    object spOPBuffDig3: TFloatField
      FieldName = 'Dig3'
    end
    object spOPBuffDig4: TFloatField
      FieldName = 'Dig4'
    end
    object spOPBuffDig5: TFloatField
      FieldName = 'Dig5'
    end
    object spOPBuffDig6: TFloatField
      FieldName = 'Dig6'
    end
    object spOPBuffDig7: TFloatField
      FieldName = 'Dig7'
    end
    object spOPBuffDig8: TFloatField
      FieldName = 'Dig8'
    end
    object spOPBuffDig9: TFloatField
      FieldName = 'Dig9'
    end
    object spOPBuffDig10: TFloatField
      FieldName = 'Dig10'
    end
    object spOPBuffDig11: TFloatField
      FieldName = 'Dig11'
    end
    object spOPBuffDig12: TFloatField
      FieldName = 'Dig12'
    end
    object spOPBuffDig13: TFloatField
      FieldName = 'Dig13'
    end
    object spOPBuffDig14: TFloatField
      FieldName = 'Dig14'
    end
    object spOPBuffDig15: TFloatField
      FieldName = 'Dig15'
    end
    object spOPBuffStr1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object spOPBuffStr2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object spOPBuffStr3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object spOPBuffStr4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object spOPBuffStr5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object spOPBuffStr6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object spOPBuffStr7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object spOPBuffStr8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object spOPBuffStr9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object spOPBuffStr10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object spOPBuffStr11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object spOPBuffStr12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object spOPBuffStr13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object spOPBuffStr14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object spOPBuffStr15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object spOPBuffid_OperWare: TIntegerField
      FieldName = 'id_OperWare'
    end
    object spOPBuffOperVidName: TStringField
      FieldName = 'OperVidName'
      Size = 50
    end
    object spOPBuffCRN_OperSumRez: TFloatField
      FieldName = 'CRN_OperSumRez'
    end
    object spOPBuffOnlyDate: TDateTimeField
      FieldName = 'OnlyDate'
    end
    object spOPBuffis_Mirr: TBooleanField
      FieldName = 'is_Mirr'
    end
    object spOPBuffid_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
    end
    object spOPBuffid_Warehouse_Group: TIntegerField
      FieldName = 'id_Warehouse_Group'
    end
    object spOPBuffid_Manufact_Group: TIntegerField
      FieldName = 'id_Manufact_Group'
    end
    object spOPBuffCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      Size = 152
    end
    object spOPBuffCheckerFIO: TStringField
      FieldName = 'CheckerFIO'
      Size = 152
    end
    object spOPBuffid_BuffItem: TIntegerField
      FieldName = 'id_BuffItem'
    end
    object spOPBuffid_Buff: TIntegerField
      FieldName = 'id_Buff'
    end
    object spOPBuffid_Oper2: TIntegerField
      FieldName = 'id_Oper2'
    end
  end
  object spEOpArc: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'OP_OperGetListFromEmpty;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_OperParent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 499
    Top = 365
  end
  object dsEOpArc: TDataSetProvider
    DataSet = spEOpArc
    Constraints = True
    Left = 499
    Top = 411
  end
  object spNewObj: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'CH_NewObj;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 491
    Top = 101
  end
  object dsNewObj: TDataSetProvider
    DataSet = spNewObj
    Constraints = True
    Left = 491
    Top = 149
  end
  object spUnGoods: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'UN_Sel_PL_Ctg_GoodsBsn;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 546
    Top = 156
  end
  object dsUnGoods: TDataSetProvider
    DataSet = spUnGoods
    Constraints = True
    Left = 549
    Top = 113
  end
  object spGoodsProp: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'PL_GoodsGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Goods'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 670
    Top = 7
    object spGoodsPropid_Goods: TAutoIncField
      FieldName = 'id_Goods'
    end
    object spGoodsPropid_Ctg_Goods: TIntegerField
      FieldName = 'id_Ctg_Goods'
    end
    object spGoodsPropName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spGoodsPropShortName: TStringField
      FieldName = 'ShortName'
      Size = 100
    end
    object spGoodsPropBarCode: TStringField
      FieldName = 'BarCode'
    end
    object spGoodsPropPrice: TFloatField
      FieldName = 'Price'
    end
    object spGoodsPropDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spGoodsPropLastUpdated: TBytesField
      FieldName = 'LastUpdated'
      Size = 8
    end
    object spGoodsPropid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object spGoodsPropMeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 50
    end
    object spGoodsPropGTD: TStringField
      FieldName = 'GTD'
      Size = 50
    end
    object spGoodsPropCountry: TStringField
      FieldName = 'Country'
      Size = 255
    end
    object spGoodsPropDocNomCode: TStringField
      FieldName = 'DocNomCode'
      Size = 50
    end
    object spGoodsPropDocPriceCode: TStringField
      FieldName = 'DocPriceCode'
      Size = 50
    end
    object spGoodsPropDocArt: TStringField
      FieldName = 'DocArt'
      Size = 50
    end
    object spGoodsPropDocNumber: TStringField
      FieldName = 'DocNumber'
      Size = 50
    end
  end
  object dsGoodsProp: TDataSetProvider
    DataSet = spGoodsProp
    Constraints = True
    Left = 670
    Top = 53
  end
  object dsBuffList: TSQLUpdateDSProvider
    DataSet = spBuffList
    Constraints = True
    InsertSQL.Strings = (
      'EXEC OP_BuffAdd'
      '  @id_User = :id_User,'
      '  @id_Oper = :id_Oper'
      ' '
      ' '
      ' ')
    DeleteSQL.Strings = (
      'EXEC OP_BuffDel'
      '  @id_Buff = :id_Buff '
      ' '
      ' '
      ' ')
    Left = 499
    Top = 602
  end
  object spBuffList: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'OP_BuffGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 499
    Top = 557
    object spBuffListid_Buff: TAutoIncField
      FieldName = 'id_Buff'
      ReadOnly = True
    end
    object spBuffListid_User: TIntegerField
      FieldName = 'id_User'
    end
    object spBuffListName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spBuffListDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
  end
  object spDocType: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'OP_DocTypeGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 435
    Top = 540
    object spDocTypeid_DocType: TAutoIncField
      FieldName = 'id_DocType'
      ReadOnly = True
    end
    object spDocTypeName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spDocTypeLastUpdated: TBytesField
      FieldName = 'LastUpdated'
      ReadOnly = True
      Size = 8
    end
    object spDocTypeID_Main: TIntegerField
      FieldName = 'ID_Main'
    end
  end
  object dsDocType: TDataSetProvider
    DataSet = spDocType
    Constraints = True
    Left = 435
    Top = 501
  end
  object spReprSelector: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'CA_ReprSelector;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Repr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 188
    Top = 492
    object spReprSelectorid_Repr: TAutoIncField
      FieldName = 'id_Repr'
      ReadOnly = True
    end
    object spReprSelectorid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spReprSelectorisJur: TBooleanField
      FieldName = 'isJur'
    end
    object spReprSelectorDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spReprSelectorName: TStringField
      FieldName = 'Name'
      ReadOnly = True
      Size = 255
    end
    object spReprSelectorCAName: TStringField
      FieldName = 'CAName'
      Size = 50
    end
    object spReprSelectorid_Bsn: TIntegerField
      FieldName = 'id_Bsn'
      ReadOnly = True
    end
    object spReprSelectorBsnName: TStringField
      FieldName = 'BsnName'
      ReadOnly = True
      Size = 255
    end
  end
  object dsReprSelector: TDataSetProvider
    DataSet = spReprSelector
    Constraints = True
    Left = 188
    Top = 538
  end
  object spBsn: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ADM_GetBusinesses;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 402
    Top = 92
    object spBsnid_business: TAutoIncField
      FieldName = 'id_business'
      ReadOnly = True
    end
    object spBsnId_Currency: TIntegerField
      FieldName = 'Id_Currency'
    end
    object spBsnName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object spBsnShortName: TStringField
      FieldName = 'ShortName'
      Size = 5
    end
    object spBsnNum: TStringField
      FieldName = 'Num'
      Size = 5
    end
    object spBsnDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spBsnLastUpdated: TBytesField
      FieldName = 'LastUpdated'
      ReadOnly = True
      Size = 8
    end
    object spBsnID_Main: TIntegerField
      FieldName = 'ID_Main'
    end
    object spBsnCurrencyName: TStringField
      FieldName = 'CurrencyName'
      Size = 30
    end
  end
  object dsBsn: TDataSetProvider
    DataSet = spBsn
    Constraints = True
    Left = 402
    Top = 130
  end
  object spBsnData: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'UN_BalanceForm_BsnData_v2;1'
    Parameters = <>
    Left = 372
    Top = 662
  end
  object dsBsnData: TDataSetProvider
    DataSet = spBsnData
    Constraints = True
    Left = 372
    Top = 708
  end
  object dsERWHState: TDataSetProvider
    DataSet = spERWHState
    Constraints = True
    Left = 908
    Top = 601
  end
  object spERWHState: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'RPT_PriceExtRawWHState;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 797
    Top = 564
  end
  object dsACard: TDataSetProvider
    DataSet = spACard
    Constraints = True
    Left = 280
    Top = 620
  end
  object spCalcGDet: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'PL_Calc_CtgGoodsSumDetail;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Ctg'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ShowNull'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_Business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 328
    Top = 284
  end
  object dsCalcGDet: TDataSetProvider
    DataSet = spCalcGDet
    Constraints = True
    Left = 328
    Top = 330
  end
  object spMovGoods: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'PL_Mov_CtgGoods;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_Warehouse'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ShowNull'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 794
    Top = 556
  end
  object dsMovGoods: TDataSetProvider
    DataSet = spMovGoods
    Constraints = True
    Left = 834
    Top = 312
  end
  object spArcWare: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'UN_ArcWare;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ID_Warehouse'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@HasViza'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Goods'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 842
    Top = 12
    object spArcWareid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spArcWareid_OperParent: TIntegerField
      FieldName = 'id_OperParent'
    end
    object spArcWareid_old_Oper: TIntegerField
      FieldName = 'id_old_Oper'
    end
    object spArcWareDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object spArcWareid_LC_Oper: TIntegerField
      FieldName = 'id_LC_Oper'
    end
    object spArcWareOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object spArcWareid_Replicator: TIntegerField
      FieldName = 'id_Replicator'
    end
    object spArcWareReplicatorShortName: TStringField
      FieldName = 'ReplicatorShortName'
      Size = 5
    end
    object spArcWareid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spArcWareid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spArcWareId_CurrencyBsn: TIntegerField
      FieldName = 'Id_CurrencyBsn'
    end
    object spArcWareBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spArcWareBusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object spArcWareDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object spArcWareCorrect: TBooleanField
      FieldName = 'Correct'
    end
    object spArcWareOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spArcWareId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object spArcWareCurrencyOperName: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object spArcWareCurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object spArcWareAmountOper: TFloatField
      FieldName = 'AmountOper'
    end
    object spArcWareAmountOper2: TFloatField
      FieldName = 'AmountOper2'
    end
    object spArcWarePriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object spArcWareRateOper: TFloatField
      FieldName = 'RateOper'
    end
    object spArcWareid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object spArcWareMeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 10
    end
    object spArcWareRealKoef: TFloatField
      FieldName = 'RealKoef'
    end
    object spArcWareAmountOperBaseMS: TFloatField
      FieldName = 'AmountOperBaseMS'
    end
    object spArcWareId_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object spArcWareCurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object spArcWareCurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object spArcWareSummSys: TFloatField
      FieldName = 'SummSys'
    end
    object spArcWareRateSys: TFloatField
      FieldName = 'RateSys'
    end
    object spArcWareid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spArcWareid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object spArcWareid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object spArcWareSrcName: TStringField
      FieldName = 'SrcName'
      Size = 50
    end
    object spArcWareSrcID_Main: TIntegerField
      FieldName = 'SrcID_Main'
    end
    object spArcWareid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spArcWareid_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object spArcWareid_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object spArcWareid_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object spArcWareReprName: TStringField
      FieldName = 'ReprName'
      Size = 255
    end
    object spArcWareReprID_Main: TIntegerField
      FieldName = 'ReprID_Main'
    end
    object spArcWareId_CurrencyInv: TIntegerField
      FieldName = 'Id_CurrencyInv'
    end
    object spArcWarePriceInv: TFloatField
      FieldName = 'PriceInv'
    end
    object spArcWareRateInv: TFloatField
      FieldName = 'RateInv'
    end
    object spArcWareCurrencyInvName: TStringField
      FieldName = 'CurrencyInvName'
      Size = 30
    end
    object spArcWareCurrencyInvShortName: TStringField
      FieldName = 'CurrencyInvShortName'
      Size = 30
    end
    object spArcWareid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spArcWareWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object spArcWareWareID_Main: TIntegerField
      FieldName = 'WareID_Main'
    end
    object spArcWareKoeff: TIntegerField
      FieldName = 'Koeff'
    end
    object spArcWareKoeffName: TStringField
      FieldName = 'KoeffName'
      Size = 50
    end
    object spArcWareCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object spArcWareid_UserChecker: TIntegerField
      FieldName = 'id_UserChecker'
    end
    object spArcWareid_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object spArcWareFormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object spArcWareid_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object spArcWareFuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object spArcWareDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object spArcWareid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spArcWareContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      Size = 50
    end
    object spArcWareid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spArcWareSummOper: TFloatField
      FieldName = 'SummOper'
    end
    object spArcWareTypeName: TStringField
      FieldName = 'TypeName'
      Size = 30
    end
    object spArcWareOperNum: TStringField
      FieldName = 'OperNum'
      Size = 255
    end
    object spArcWareOperDelta: TFloatField
      FieldName = 'OperDelta'
    end
    object spArcWareOperRateDelta: TFloatField
      FieldName = 'OperRateDelta'
    end
    object spArcWareOperTotalDelta: TFloatField
      FieldName = 'OperTotalDelta'
    end
    object spArcWareDTDiff: TIntegerField
      FieldName = 'DTDiff'
    end
    object spArcWareHasViza: TBooleanField
      FieldName = 'HasViza'
    end
    object spArcWareOperState: TIntegerField
      FieldName = 'OperState'
    end
    object spArcWareHidedOper: TBooleanField
      FieldName = 'HidedOper'
    end
    object spArcWareOperSummSys: TFloatField
      FieldName = 'OperSummSys'
    end
    object spArcWareRateMain: TFloatField
      FieldName = 'RateMain'
    end
    object spArcWareid_Repr_Ex: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object spArcWareid_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object spArcWareImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object spArcWareAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object spArcWareContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object spArcWareOperDeltaCrn: TFloatField
      FieldName = 'OperDeltaCrn'
    end
    object spArcWareOperRateDeltaCrn: TFloatField
      FieldName = 'OperRateDeltaCrn'
    end
    object spArcWareOperTotalDeltaCrn: TFloatField
      FieldName = 'OperTotalDeltaCrn'
    end
    object spArcWareOperCrnName: TStringField
      FieldName = 'OperCrnName'
      Size = 10
    end
    object spArcWareOperSum_Offer: TFloatField
      FieldName = 'OperSum_Offer'
    end
    object spArcWareCRN_OLD_OperSum: TFloatField
      FieldName = 'CRN_OLD_OperSum'
    end
    object spArcWareCRN_OLD_OperSum_Offer: TFloatField
      FieldName = 'CRN_OLD_OperSum_Offer'
    end
    object spArcWareCRN_OperSum_Inv: TFloatField
      FieldName = 'CRN_OperSum_Inv'
    end
    object spArcWareOperSumCalced: TFloatField
      FieldName = 'OperSumCalced'
    end
    object spArcWareOperSum_OfferCalced: TFloatField
      FieldName = 'OperSum_OfferCalced'
    end
    object spArcWareBlocked: TBooleanField
      FieldName = 'Blocked'
    end
    object spArcWareCurrencyBsnName: TStringField
      FieldName = 'CurrencyBsnName'
      Size = 10
    end
    object spArcWareid_Ctg_Goods_2: TIntegerField
      FieldName = 'id_Ctg_Goods_2'
    end
    object spArcWareOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spArcWareRealDataCreate: TDateTimeField
      FieldName = 'RealDataCreate'
    end
    object spArcWareOperTypeSIGN: TIntegerField
      FieldName = 'OperTypeSIGN'
    end
    object spArcWareHasChild: TIntegerField
      FieldName = 'HasChild'
    end
    object spArcWareDig1: TFloatField
      FieldName = 'Dig1'
    end
    object spArcWareDig2: TFloatField
      FieldName = 'Dig2'
    end
    object spArcWareDig3: TFloatField
      FieldName = 'Dig3'
    end
    object spArcWareDig4: TFloatField
      FieldName = 'Dig4'
    end
    object spArcWareDig5: TFloatField
      FieldName = 'Dig5'
    end
    object spArcWareDig6: TFloatField
      FieldName = 'Dig6'
    end
    object spArcWareDig7: TFloatField
      FieldName = 'Dig7'
    end
    object spArcWareDig8: TFloatField
      FieldName = 'Dig8'
    end
    object spArcWareDig9: TFloatField
      FieldName = 'Dig9'
    end
    object spArcWareDig10: TFloatField
      FieldName = 'Dig10'
    end
    object spArcWareDig11: TFloatField
      FieldName = 'Dig11'
    end
    object spArcWareDig12: TFloatField
      FieldName = 'Dig12'
    end
    object spArcWareDig13: TFloatField
      FieldName = 'Dig13'
    end
    object spArcWareDig14: TFloatField
      FieldName = 'Dig14'
    end
    object spArcWareDig15: TFloatField
      FieldName = 'Dig15'
    end
    object spArcWareStr1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object spArcWareStr2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object spArcWareStr3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object spArcWareStr4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object spArcWareStr5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object spArcWareStr6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object spArcWareStr7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object spArcWareStr8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object spArcWareStr9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object spArcWareStr10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object spArcWareStr11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object spArcWareStr12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object spArcWareStr13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object spArcWareStr14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object spArcWareStr15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object spArcWareid_OperWare: TAutoIncField
      FieldName = 'id_OperWare'
    end
    object spArcWareOperVidName: TStringField
      FieldName = 'OperVidName'
      Size = 50
    end
    object spArcWareCRN_OperSumRez: TFloatField
      FieldName = 'CRN_OperSumRez'
    end
    object spArcWareOnlyDate: TDateTimeField
      FieldName = 'OnlyDate'
    end
    object spArcWareis_Mirr: TBooleanField
      FieldName = 'is_Mirr'
    end
    object spArcWareid_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
    end
    object spArcWareid_Warehouse_Group: TIntegerField
      FieldName = 'id_Warehouse_Group'
    end
    object spArcWareid_Manufact_Group: TIntegerField
      FieldName = 'id_Manufact_Group'
    end
    object spArcWareVatIn: TBooleanField
      FieldName = 'VatIn'
    end
    object spArcWareAutoGen: TBooleanField
      FieldName = 'AutoGen'
    end
    object spArcWareCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      Size = 152
    end
    object spArcWareCheckerFIO: TStringField
      FieldName = 'CheckerFIO'
      Size = 152
    end
  end
  object dsArcWare: TDataSetProvider
    DataSet = spArcWare
    Constraints = True
    Left = 842
    Top = 57
  end
  object dsCur2: TDataSetProvider
    DataSet = spCur2
    Constraints = True
    Left = 320
    Top = 710
  end
  object spCur2: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Crn_2_CurrencyGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@FastAccess'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@AvForPay'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_Bsn'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 320
    Top = 662
    object AutoIncField2: TAutoIncField
      FieldName = 'Id_Currency'
      ReadOnly = True
    end
    object StringField14: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object StringField15: TStringField
      FieldName = 'ShortName'
      Size = 10
    end
    object StringField16: TStringField
      FieldName = 'ISOCode'
      FixedChar = True
      Size = 3
    end
    object StringField17: TStringField
      FieldName = 'NumberCode'
      FixedChar = True
      Size = 3
    end
    object BooleanField3: TBooleanField
      FieldName = 'FastAccess'
    end
    object IntegerField19: TIntegerField
      FieldName = 'Value'
    end
    object FloatField6: TFloatField
      FieldName = 'Rate'
    end
    object BooleanField4: TBooleanField
      FieldName = 'AvForPay'
    end
    object BooleanField5: TBooleanField
      FieldName = 'Base'
    end
    object BytesField1: TBytesField
      FieldName = 'LastUpdated'
      ReadOnly = True
      Size = 8
    end
    object IntegerField20: TIntegerField
      FieldName = 'Id_URL'
    end
  end
  object spFindGoods: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'UN_Find_PL_Goods;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Ctg'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@Name'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = '0'
      end>
    Left = 487
    Top = 652
    object spFindGoodsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object spFindGoodsName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spFindGoodsShortName: TStringField
      FieldName = 'ShortName'
      Size = 100
    end
    object spFindGoodsBarCode: TStringField
      FieldName = 'BarCode'
    end
    object spFindGoodsCatName: TStringField
      FieldName = 'CatName'
      Size = 255
    end
  end
  object dsFindGoods: TDataSetProvider
    DataSet = spFindGoods
    Constraints = True
    Left = 487
    Top = 705
  end
  object spMinus: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_ArcMinusOper;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@HasViza'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_CAGroup'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Repr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CANone'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@AllRepr'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_Warehouse'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@AllWH'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_Acc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@AllAcc'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_Manufact'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@AllMN'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_user'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 16
    Top = 637
  end
  object dsMinus: TDataSetProvider
    DataSet = spMinus
    Constraints = True
    Left = 72
    Top = 652
  end
  object spFoget: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_ArcFogetOper;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_CAGroup'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Repr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CANone'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@AllRepr'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_Warehouse'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@AllWH'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_Acc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@AllAcc'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_Manufact'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@AllMN'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_user'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 192
    Top = 580
  end
  object dsFoget: TDataSetProvider
    DataSet = spFoget
    Constraints = True
    Left = 192
    Top = 623
  end
  object spSelf: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_ArcSelfOper;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_user'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 192
    Top = 668
  end
  object dsSelf: TDataSetProvider
    DataSet = spSelf
    Constraints = True
    Left = 192
    Top = 716
  end
  object spCrnNames: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Crn_RatesHistoryCrnNames;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@FastAccess'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@AvForPay'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 436
    Top = 604
    object spCrnNamesName: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object spCrnNamesid_Currency: TIntegerField
      FieldName = 'id_Currency'
      ReadOnly = True
    end
  end
  object dsCrnNames: TDataSetProvider
    DataSet = spCrnNames
    Constraints = True
    Left = 436
    Top = 642
  end
  object spRateHist: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Crn_RatesHistory;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Id_Currency'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@Id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 500
    Top = 662
    object spRateHistId_business: TIntegerField
      FieldName = 'Id_business'
    end
    object spRateHistBsnName: TStringField
      FieldName = 'BsnName'
      Size = 255
    end
    object spRateHistId_Currency: TIntegerField
      FieldName = 'Id_Currency'
    end
    object spRateHistCrnName: TStringField
      FieldName = 'CrnName'
      Size = 255
    end
    object spRateHistDateAssign: TDateTimeField
      FieldName = 'DateAssign'
    end
    object spRateHistRealRate: TFloatField
      FieldName = 'RealRate'
    end
  end
  object dsRateHist: TDataSetProvider
    DataSet = spRateHist
    Constraints = True
    Left = 500
    Top = 708
  end
  object spExtDataDict: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'OP_OperExtDataNamez;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@Visible'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end>
    Left = 747
    Top = 566
    object spExtDataDictid_Oper_ExtDataNames: TIntegerField
      FieldName = 'id_Oper_ExtDataNames'
    end
    object spExtDataDictid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spExtDataDictType: TIntegerField
      FieldName = 'Type'
    end
    object spExtDataDictNumPrm: TIntegerField
      FieldName = 'NumPrm'
    end
    object spExtDataDictParName: TStringField
      FieldName = 'ParName'
      Size = 100
    end
    object spExtDataDictVisible: TBooleanField
      FieldName = 'Visible'
    end
    object spExtDataDictNeedSend: TBooleanField
      FieldName = 'NeedSend'
    end
    object spExtDataDictOrdNum: TIntegerField
      FieldName = 'OrdNum'
    end
  end
  object dsExtDataDict: TSQLUpdateDSProvider
    DataSet = spExtDataDict
    Constraints = True
    ModifySQL.Strings = (
      'EXEC OP_OperExtDataEdit'
      '  @id_Oper_ExtDataNames = :id_Oper_ExtDataNames,'
      '  @id_business = :id_business,'
      '  @Type = :Type,'
      '  @NumPrm = :NumPrm,'
      '  @ParName = :ParName,'
      '  @Visible = :Visible')
    InsertSQL.Strings = (
      'EXEC OP_OperExtDataAdd'
      '  @id_business = :id_business,'
      '  @Type = :Type,'
      '  @NumPrm = :NumPrm,'
      '  @ParName = :ParName,'
      '  @Visible = :Visible ')
    Left = 749
    Top = 614
  end
  object spExtData: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'LC_OperExtDataGet_v2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_LC_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 859
    Top = 672
    object spExtDataType: TIntegerField
      FieldName = 'Type'
    end
    object spExtDataNumPrm: TIntegerField
      FieldName = 'NumPrm'
    end
    object spExtDataParName: TStringField
      FieldName = 'ParName'
      Size = 100
    end
    object spExtDataVisible: TBooleanField
      FieldName = 'Visible'
    end
    object spExtDataDigVal: TFloatField
      FieldName = 'DigVal'
    end
    object spExtDataStrVal: TStringField
      FieldName = 'StrVal'
      Size = 100
    end
    object spExtDataDateVal: TDateTimeField
      FieldName = 'DateVal'
    end
    object spExtDataid_Oper_ExtData: TIntegerField
      FieldName = 'id_Oper_ExtData'
    end
    object spExtDataid_LC_Oper: TIntegerField
      FieldName = 'id_LC_Oper'
    end
  end
  object dsExtData: TSQLUpdateDSProvider
    DataSet = spExtData
    Constraints = True
    ModifySQL.Strings = (
      'EXEC LC_OperExtDataEdit_v2'
      '  @id_LC_Oper = :id_LC_Oper,'
      '  @Type = :Type,'
      '  @NumPrm = :NumPrm,'
      '  @DigVal = :DigVal,'
      '  @StrVal = :StrVal,'
      '  @DateVal = :DateVal'
      ''
      ''
      ' ')
    InsertSQL.Strings = (
      'EXEC LC_OperExtDataEdit_v2'
      '  @id_LC_Oper = :id_LC_Oper,'
      '  @Type = :Type,'
      '  @NumPrm = :NumPrm,'
      '  @DigVal = :DigVal,'
      '  @StrVal = :StrVal,'
      '  @DateVal = :DateVal'
      ''
      ''
      ' '
      ' ')
    Left = 859
    Top = 712
  end
  object spBlnDetail: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'UN_BalanceForm_Detail;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@isRawZ'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@isNotRawZ'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@isCRN'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@isUp'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@isDown'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@isInFromManuf'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_Manufact'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 806
    Top = 628
  end
  object dsBlnDetail: TDataSetProvider
    DataSet = spBlnDetail
    Constraints = True
    Left = 806
    Top = 673
  end
  object dsRelink: TDataSetProvider
    DataSet = spRelink
    Constraints = True
    Left = 328
    Top = 428
  end
  object spRelink: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'View_Relink;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 328
    Top = 383
  end
  object spFind_Ctg_Ware: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'UN_Find_Ctg_Ware;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@isGoods'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Name'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end>
    Left = 496
    Top = 276
    object spFind_Ctg_WareID: TIntegerField
      FieldName = 'ID'
    end
    object spFind_Ctg_WareName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spFind_Ctg_WareShortName: TStringField
      FieldName = 'ShortName'
      Size = 100
    end
  end
  object dsFind_Ctg_Ware: TDataSetProvider
    DataSet = spFind_Ctg_Ware
    Constraints = True
    Left = 496
    Top = 321
  end
  object spPriceList_G: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'PL_PriceList_Goods;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Goods'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 72
    Top = 330
    object spPriceList_GID_Warehouse: TIntegerField
      FieldName = 'ID_Warehouse'
    end
    object spPriceList_GMeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 50
    end
    object spPriceList_GWarehouseName: TStringField
      FieldName = 'WarehouseName'
      Size = 50
    end
    object spPriceList_GPrice: TFloatField
      FieldName = 'Price'
    end
    object spPriceList_GId_Currency: TIntegerField
      FieldName = 'Id_Currency'
    end
    object spPriceList_GTotalAmount: TBCDField
      FieldName = 'TotalAmount'
      Precision = 19
    end
    object spPriceList_GTotalSum: TBCDField
      FieldName = 'TotalSum'
      Precision = 19
    end
    object spPriceList_GTotalAmountRez: TBCDField
      FieldName = 'TotalAmountRez'
      Precision = 19
    end
    object spPriceList_GTotalAmountSend: TBCDField
      FieldName = 'TotalAmountSend'
      Precision = 19
    end
    object spPriceList_GTotalSumRez: TBCDField
      FieldName = 'TotalSumRez'
      Precision = 19
    end
  end
  object dsPriceList_G: TDataSetProvider
    DataSet = spPriceList_G
    Constraints = True
    Left = 72
    Top = 377
  end
  object spAccGroup: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'acc_Group_GetList_v2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 730
    Top = 4
  end
  object dsAccGroup: TDataSetProvider
    DataSet = spAccGroup
    Constraints = True
    Left = 730
    Top = 49
  end
  object dsReprGroup: TDataSetProvider
    DataSet = spReprGroup
    Constraints = True
    Left = 730
    Top = 152
  end
  object spReprGroup: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'CA_Repr_Group_GetList_v2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 730
    Top = 107
  end
  object spWHGroup: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'WH_Group_GetList_v2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 730
    Top = 203
  end
  object dsWHGroup: TDataSetProvider
    DataSet = spWHGroup
    Constraints = True
    Left = 730
    Top = 248
  end
  object dsMNGroup: TDataSetProvider
    DataSet = spMNGroup
    Constraints = True
    Left = 730
    Top = 344
  end
  object spMNGroup: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'MN_Group_GetList_v2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 730
    Top = 299
  end
  object spGetAccs: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Acc_GetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_Business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Group'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 784
    Top = 8
  end
  object dsGetAccs: TDataSetProvider
    DataSet = spGetAccs
    Constraints = True
    Left = 784
    Top = 53
  end
  object dsManufacts: TDataSetProvider
    DataSet = spManufacts
    Constraints = True
    Left = 784
    Top = 136
  end
  object spManufacts: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'MN_GetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_Business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Group'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 784
    Top = 96
  end
  object spGetWH: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'WH_GetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_Business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Group'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 784
    Top = 184
  end
  object dsGetWH: TDataSetProvider
    DataSet = spGetWH
    Constraints = True
    Left = 784
    Top = 224
  end
  object spGetManufact: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ADM_GetManufactInfo;1'
    Parameters = <>
    Left = 784
    Top = 280
  end
  object dsGetManufact: TDataSetProvider
    DataSet = spGetManufact
    Constraints = True
    Left = 784
    Top = 328
  end
  object spGetWareHouse: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'ADM_GetWhouseInfo'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 728
    Top = 392
  end
  object dsGetWareHouse: TDataSetProvider
    DataSet = spGetWareHouse
    Constraints = True
    Left = 728
    Top = 432
  end
  object spGetAccInfo: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ADM_GetAccInfo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@CallType'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 848
    Top = 576
  end
  object dsGetAccInfo: TDataSetProvider
    DataSet = spGetAccInfo
    Constraints = True
    Left = 848
    Top = 624
  end
  object dsReprLC: TDataSetProvider
    DataSet = spReprLC
    Constraints = True
    Left = 784
    Top = 419
  end
  object spReprLC: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'CA_ReprGetList_v2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@Disabled'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end
      item
        Name = '@id_Bsn'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Group'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 784
    Top = 375
  end
  object spACard_Adv: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_AccCard_Adv;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_AccList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@id_AccGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 131
    Top = 436
  end
  object dsACard_Adv: TDataSetProvider
    DataSet = spACard_Adv
    Constraints = True
    Left = 131
    Top = 393
  end
  object dsWareState: TDataSetProvider
    DataSet = spWareState
    Constraints = True
    Left = 499
    Top = 233
  end
  object spWareState: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'PL_RPT_WareState;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDWHList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDWHGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDGoodsList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDGoodsGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@ShowByWH'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 499
    Top = 191
  end
  object spWare_Mov: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'PL_RPT_Ware_Mov;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDWHList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDWHGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDGoodsList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDGoodsGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@ShowNull'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 443
    Top = 206
  end
  object dsWare_Mov: TDataSetProvider
    DataSet = spWare_Mov
    Constraints = True
    Left = 443
    Top = 248
  end
  object spUnArcWare: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'UN_ArcWare_Adv;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDWHList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDWHGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@HasViza'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Goods'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Raw'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_ExtRaw'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Service'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 842
    Top = 100
  end
  object dsUnArcWare: TDataSetProvider
    DataSet = spUnArcWare
    Constraints = True
    Left = 842
    Top = 145
  end
  object spRezGetList: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'BLN_RezGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 842
    Top = 188
  end
  object dsRezGetList: TDataSetProvider
    DataSet = spRezGetList
    Constraints = True
    Left = 843
    Top = 232
  end
  object dsOperProp_v2: TDataSetProvider
    DataSet = spOperProp_v2
    Constraints = True
    Left = 131
    Top = 611
  end
  object dsArc2: TDataSetProvider
    DataSet = spArc2
    Constraints = True
    Left = 65445
    Top = 623
  end
  object dsExtData_v2: TSQLUpdateDSProvider
    DataSet = spExtData_v2
    Constraints = True
    ModifySQL.Strings = (
      'EXEC OP_OperExtDataEdit_v2'
      '  @id_Oper = :id_Oper,'
      '  @Type = :Type,'
      '  @NumPrm = :NumPrm,'
      '  @DigVal = :DigVal,'
      '  @StrVal = :StrVal,'
      '  @DateVal = :DateVal'
      ''
      ' '
      ' ')
    InsertSQL.Strings = (
      'EXEC OP_OperExtDataEdit_v2'
      '  @id_Oper = :id_Oper,'
      '  @Type = :Type,'
      '  @NumPrm = :NumPrm,'
      '  @DigVal = :DigVal,'
      '  @StrVal = :StrVal,'
      '  @DateVal = :DateVal'
      ''
      ' ')
    Left = 395
    Top = 512
  end
  object spExtData_v2: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'OP_OperExtDataGet_v2;1'
    Parameters = <>
    Left = 395
    Top = 464
  end
  object spBal_v2: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'UN_BalanceForm_v2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 1
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@Date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 1d
      end
      item
        Name = '@isDeBug'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = True
      end
      item
        Name = '@ClosePeriod'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = True
      end
      item
        Name = '@CalcAll'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = True
      end
      item
        Name = '@Save'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = True
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@MinCA'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 1
      end
      item
        Name = '@TechMode'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@Deltaz'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = True
      end
      item
        Name = '@CurRez'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = True
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 16
    Top = 688
    object spBal_v2ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object spBal_v2id_Rr: TIntegerField
      FieldName = 'id_Rr'
    end
    object spBal_v2ID_Oper: TIntegerField
      FieldName = 'ID_Oper'
    end
    object spBal_v2RowLevel: TIntegerField
      FieldName = 'RowLevel'
    end
    object spBal_v2RowName: TStringField
      FieldName = 'RowName'
      Size = 255
    end
    object spBal_v2IsDeb: TBooleanField
      FieldName = 'IsDeb'
    end
    object spBal_v2OrdNum: TIntegerField
      FieldName = 'OrdNum'
    end
    object spBal_v2isTotal: TBooleanField
      FieldName = 'isTotal'
    end
    object spBal_v2OperSummSysCur: TFloatField
      FieldName = 'OperSummSysCur'
    end
    object spBal_v2id_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spBal_v2id_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
    end
    object spBal_v2id_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object spBal_v2id_Manufact_Group: TIntegerField
      FieldName = 'id_Manufact_Group'
    end
    object spBal_v2id_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object spBal_v2id_Warehouse_Group: TIntegerField
      FieldName = 'id_Warehouse_Group'
    end
    object spBal_v2id_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spBal_v2id_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spBal_v2id_repr: TIntegerField
      FieldName = 'id_repr'
    end
    object spBal_v2id_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spBal_v2HasChld: TBooleanField
      FieldName = 'HasChld'
    end
    object spBal_v2OnTop: TBooleanField
      FieldName = 'OnTop'
    end
    object spBal_v2Delta: TFloatField
      FieldName = 'Delta'
    end
    object spBal_v2OperSummSysCurOLD: TFloatField
      FieldName = 'OperSummSysCurOLD'
    end
    object spBal_v2RowOrd: TIntegerField
      FieldName = 'RowOrd'
    end
    object spBal_v2Tek: TIntegerField
      FieldName = 'Tek'
    end
    object spBal_v2Val1: TFloatField
      FieldName = 'Val1'
    end
    object spBal_v2Delta1: TFloatField
      FieldName = 'Delta1'
    end
    object spBal_v2Val2: TFloatField
      FieldName = 'Val2'
    end
    object spBal_v2Delta2: TFloatField
      FieldName = 'Delta2'
    end
    object spBal_v2Val3: TFloatField
      FieldName = 'Val3'
    end
    object spBal_v2Delta3: TFloatField
      FieldName = 'Delta3'
    end
    object spBal_v2Val4: TFloatField
      FieldName = 'Val4'
    end
    object spBal_v2Delta4: TFloatField
      FieldName = 'Delta4'
    end
    object spBal_v2Val5: TFloatField
      FieldName = 'Val5'
    end
    object spBal_v2Delta5: TFloatField
      FieldName = 'Delta5'
    end
  end
  object dsBal_v2: TDataSetProvider
    DataSet = spBal_v2
    Constraints = True
    Left = 72
    Top = 700
  end
  object spOperWare: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'OP_OperGetWare_v2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 131
    Top = 484
    object spOperWareid_OperWare: TAutoIncField
      FieldName = 'id_OperWare'
    end
    object spOperWareid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spOperWareAmountOper: TFloatField
      FieldName = 'AmountOper'
    end
    object spOperWareid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object spOperWarePriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object spOperWareSummSys: TFloatField
      FieldName = 'SummSys'
    end
    object spOperWarePriceInv: TFloatField
      FieldName = 'PriceInv'
    end
    object spOperWareid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spOperWareMeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 10
    end
    object spOperWareRealKoef: TFloatField
      FieldName = 'RealKoef'
    end
    object spOperWareAmountOperBaseMS: TFloatField
      FieldName = 'AmountOperBaseMS'
    end
    object spOperWareWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object spOperWareWareID_Main: TIntegerField
      FieldName = 'WareID_Main'
    end
    object spOperWareid_Service: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Service'
      Calculated = True
    end
    object spOperWareid_Raw: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Raw'
      Calculated = True
    end
    object spOperWareid_ExtRaw: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_ExtRaw'
      Calculated = True
    end
  end
  object dsOperWare: TSQLUpdateDSProvider
    DataSet = spOperWare
    Constraints = True
    ModifySQL.Strings = (
      'EXEC OP_OperWareEdit'
      '  @id_OperWare =:id_OperWare,'
      '  @id_Goods =:id_Goods,'
      '  @id_Measure =:id_Measure,'
      '  @AmountOper =:AmountOper,'
      '  @PriceOper =:PriceOper,'
      '  @SummSys =:SummSys,'
      '  @PriceInv =:PriceInv')
    InsertSQL.Strings = (
      'EXEC OP_OperWareAdd'
      '  @id_Oper =:id_Oper,'
      '  @id_Goods =:id_Goods,'
      '  @id_Measure =:id_Measure,'
      '  @AmountOper =:AmountOper,'
      '  @PriceOper =:PriceOper,'
      '  @SummSys =:SummSys,'
      '  @PriceInv =:PriceInv')
    DeleteSQL.Strings = (
      'EXEC OP_OperWareDel'
      '  @id_OperWare =:id_OperWare'
      ' ')
    Left = 131
    Top = 524
  end
  object spBufImp: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'OP_BuffOperGetList_Import;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@LDList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8000
        Value = Null
      end>
    Left = 410
    Top = 172
  end
  object dsBufImp: TDataSetProvider
    DataSet = spBufImp
    Constraints = True
    Left = 394
    Top = 218
  end
  object dsLcWare: TSQLUpdateDSProvider
    DataSet = spLcWare
    Constraints = True
    ModifySQL.Strings = (
      'EXEC LC_OP_OperWareEdit'
      '  @id_LC_OperWare =:id_LC_OperWare,'
      '  @id_Goods =:id_Goods,'
      '  @id_Measure =:id_Measure,'
      '  @AmountOper =:AmountOper,'
      '  @PriceOper =:PriceOper,'
      '  @SummSys =:SummSys')
    InsertSQL.Strings = (
      'EXEC LC_OP_OperWareAdd'
      '  @id_LC_Oper =:id_LC_Oper,'
      '  @id_Goods =:id_Goods,'
      '  @id_Measure =:id_Measure,'
      '  @AmountOper =:AmountOper,'
      '  @PriceOper =:PriceOper,'
      '  @SummSys =:SummSys')
    DeleteSQL.Strings = (
      'EXEC LC_OP_OperWareDel'
      '  @id_LC_OperWare =:id_LC_OperWare'
      ' '
      ' ')
    Left = 267
    Top = 616
  end
  object spRPList: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'RP_GetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 394
    Top = 276
  end
  object dsRPList: TDataSetProvider
    DataSet = spRPList
    Constraints = True
    Left = 394
    Top = 322
  end
  object dsCAWare_Mov: TDataSetProvider
    DataSet = spCAWare_Mov
    Constraints = True
    Left = 392
    Top = 416
  end
  object spCAWare_Mov: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'PL_CA_Ware_Mov;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDContrAgentList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDContrAgentGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDGoodsList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDGoodsGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@ShowNull'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 392
    Top = 374
  end
  object dsUnArcWare_CA: TDataSetProvider
    DataSet = spUnArcWare_CA
    Constraints = True
    Left = 911
    Top = 121
  end
  object spUnArcWare_CA: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'UN_ArcWare_CA;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDContrAgentList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDContrAgentGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@HasViza'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Goods'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 911
    Top = 76
  end
  object spWareCASmp: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'UN_ArcWare_CA_Smp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@HasViza'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Goods'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 911
    Top = 172
  end
  object dsWareCASmp: TDataSetProvider
    DataSet = spWareCASmp
    Constraints = True
    Left = 911
    Top = 217
  end
  object dsClsdDayList: TDataSetProvider
    DataSet = spClsdDayList
    Constraints = True
    Left = 379
    Top = 608
  end
  object spClsdDayList: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'DD_ClosedDayGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 379
    Top = 566
    object spClsdDayListName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object spEOp: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'OP_EmptyOperGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 445
    Top = 20
    object IntegerField1: TIntegerField
      FieldName = 'OperVid'
    end
    object IntegerField2: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object StringField1: TStringField
      FieldName = 'CreatorFIO'
      Size = 152
    end
    object BooleanField1: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DateLocal'
    end
    object IntegerField3: TIntegerField
      FieldName = 'id_DocType'
    end
    object StringField3: TStringField
      FieldName = 'DocTypeName'
      Size = 255
    end
    object StringField4: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object StringField5: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spEOpid_Oper: TAutoIncField
      FieldName = 'id_Oper'
    end
    object spEOpid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spEOpBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spEOpCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object spEOpImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object spEOpAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
  end
  object dsEOp: TDataSetProvider
    DataSet = spEOp
    Constraints = True
    Left = 447
    Top = 66
  end
  object spUsers: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'ADM_GetUsers;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@CallType'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Id_Group'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 976
    Top = 8
  end
  object dsUsers: TDataSetProvider
    DataSet = spUsers
    Constraints = True
    Left = 976
    Top = 48
  end
  object spMeasures: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'ADM_GetMeasures;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Id_Business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end
      item
        Name = '@ID_Base'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end>
    Left = 976
    Top = 184
  end
  object dsMeasures: TDataSetProvider
    DataSet = spMeasures
    Constraints = True
    Left = 976
    Top = 232
  end
  object spGetMeasure: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ADM_GetMeasureInfo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CallType'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 976
    Top = 88
  end
  object dsGetMeasure: TDataSetProvider
    DataSet = spGetMeasure
    Constraints = True
    Left = 976
    Top = 136
  end
  object dsGroups: TDataSetProvider
    DataSet = spGroups
    Constraints = True
    Left = 962
    Top = 712
  end
  object spGroups: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ADM_GetGroups;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 962
    Top = 672
  end
  object spGetReplicatorInfo: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ADM_GetReplicatorInfo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CallType'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 970
    Top = 480
  end
  object dsGetReplicatorInfo: TDataSetProvider
    DataSet = spGetReplicatorInfo
    Constraints = True
    Left = 970
    Top = 528
  end
  object spGroupRights: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Rights_GetGroupRights;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Group'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Has'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 970
    Top = 576
    object spGroupRightsid_Func: TAutoIncField
      FieldName = 'id_Func'
    end
    object spGroupRightsFuncName: TStringField
      FieldName = 'FuncName'
      Size = 50
    end
    object spGroupRightsHas: TIntegerField
      FieldName = 'Has'
    end
    object spGroupRightsid_Business: TIntegerField
      FieldName = 'id_Business'
    end
    object spGroupRightsid_Group: TIntegerField
      FieldName = 'id_Group'
    end
  end
  object dsGroupRights: TSQLUpdateDSProvider
    DataSet = spGroupRights
    Constraints = True
    InsertSQL.Strings = (
      'EXEC ADM_GroupFuncsAdd'
      ' @Id_Group = :Id_Group,'
      ' @Id_Business = :Id_Business,'
      ' @id_Func = :id_Func')
    DeleteSQL.Strings = (
      'EXEC ADM_GroupFuncsDel'
      ' @Id_Group = :Id_Group,'
      ' @Id_Business = :Id_Business,'
      ' @id_Func = :id_Func'
      '')
    Left = 970
    Top = 624
  end
  object dsReplicators: TDataSetProvider
    DataSet = spReplicators
    Constraints = True
    Left = 970
    Top = 432
  end
  object spReplicators: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'ADM_GetReplicators;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Id_Business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 970
    Top = 384
  end
  object dsGetUser: TDataSetProvider
    DataSet = spGetUser
    Constraints = True
    Left = 711
    Top = 320
  end
  object spGetUser: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ADM_GetUserInfo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CallType'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 711
    Top = 272
  end
  object dsGetGroup: TDataSetProvider
    DataSet = spGetGroup
    Constraints = True
    Left = 912
    Top = 696
  end
  object spGetGroup: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ADM_GetGroupInfo'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 912
    Top = 656
  end
  object dsGetBusiness: TDataSetProvider
    DataSet = spGetBusiness
    Constraints = True
    Left = 184
    Top = 453
  end
  object spGetBusiness: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'ADM_GetBusinessesInfo'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 184
    Top = 408
  end
  object spCurProp: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Crn_CurrencyByID;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Id_Currency'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 141
    Top = 9
    object spCurPropId_Currency: TAutoIncField
      FieldName = 'Id_Currency'
      ReadOnly = True
    end
    object spCurPropName: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object spCurPropShortName: TStringField
      FieldName = 'ShortName'
      Size = 10
    end
    object spCurPropISOCode: TStringField
      FieldName = 'ISOCode'
      FixedChar = True
      Size = 3
    end
    object spCurPropNumberCode: TStringField
      FieldName = 'NumberCode'
      FixedChar = True
      Size = 3
    end
    object spCurPropFastAccess: TBooleanField
      FieldName = 'FastAccess'
    end
    object spCurPropValue: TIntegerField
      FieldName = 'Value'
    end
    object spCurPropRate: TFloatField
      FieldName = 'Rate'
    end
    object spCurPropAvForPay: TBooleanField
      FieldName = 'AvForPay'
    end
    object spCurPropId_URL: TIntegerField
      FieldName = 'Id_URL'
    end
    object spCurPropBase: TBooleanField
      FieldName = 'Base'
    end
    object spCurPropLastUpdated: TBytesField
      FieldName = 'LastUpdated'
      ReadOnly = True
      Size = 8
    end
    object spCurPropURLName: TStringField
      FieldName = 'URLName'
    end
    object spCurPropURL: TStringField
      FieldName = 'URL'
      Size = 255
    end
    object spCurPropID_Main: TIntegerField
      FieldName = 'ID_Main'
    end
    object spCurPropid_Bsn: TIntegerField
      FieldName = 'id_Bsn'
    end
    object spCurPropDocCurPartName: TStringField
      FieldName = 'DocCurPartName'
      Size = 50
    end
    object spCurPropId_CurrencyUnData: TIntegerField
      FieldName = 'Id_CurrencyUnData'
    end
  end
  object dsCurProp: TDataSetProvider
    DataSet = spCurProp
    Constraints = True
    Left = 138
    Top = 57
  end
  object spURLList: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Crn_CurrencyGetUrls;1'
    Parameters = <>
    Left = 176
    Top = 33
    object spURLListId_URL: TAutoIncField
      FieldName = 'Id_URL'
      ReadOnly = True
    end
    object spURLListUseTable: TSmallintField
      FieldName = 'UseTable'
    end
    object spURLListName: TStringField
      FieldName = 'Name'
    end
    object spURLListURL: TStringField
      FieldName = 'URL'
      Size = 255
    end
  end
  object dsURLList: TDataSetProvider
    DataSet = spURLList
    Constraints = True
    Left = 176
    Top = 81
  end
  object spURLProp: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Crn_URLGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Url'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 160
    Top = 228
    object spURLPropId_URL: TAutoIncField
      FieldName = 'Id_URL'
      ReadOnly = True
    end
    object spURLPropName: TStringField
      FieldName = 'Name'
    end
    object spURLPropURL: TStringField
      FieldName = 'URL'
      Size = 255
    end
    object spURLPropUseTable: TSmallintField
      FieldName = 'UseTable'
    end
    object spURLPropColName: TIntegerField
      FieldName = 'ColName'
    end
    object spURLPropColISO: TIntegerField
      FieldName = 'ColISO'
    end
    object spURLPropColCode: TIntegerField
      FieldName = 'ColCode'
    end
    object spURLPropColRate: TIntegerField
      FieldName = 'ColRate'
    end
    object spURLPropColPieces: TIntegerField
      FieldName = 'ColPieces'
    end
  end
  object dsURLProp: TDataSetProvider
    DataSet = spURLProp
    Constraints = True
    Left = 816
    Top = 65500
  end
  object spCur: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Crn_2_CurrencyGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@FastAccess'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end
      item
        Name = '@AvForPay'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end
      item
        Name = '@id_Bsn'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 72
    Top = 513
    object AutoIncField1: TAutoIncField
      FieldName = 'Id_Currency'
      ReadOnly = True
    end
    object StringField2: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'ShortName'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'ISOCode'
      FixedChar = True
      Size = 3
    end
    object StringField8: TStringField
      FieldName = 'NumberCode'
      FixedChar = True
      Size = 3
    end
    object BooleanField2: TBooleanField
      FieldName = 'FastAccess'
    end
    object IntegerField4: TIntegerField
      FieldName = 'Value'
    end
    object FloatField1: TFloatField
      FieldName = 'Rate'
    end
    object BooleanField6: TBooleanField
      FieldName = 'AvForPay'
    end
    object BooleanField7: TBooleanField
      FieldName = 'Base'
    end
    object BytesField2: TBytesField
      FieldName = 'LastUpdated'
      ReadOnly = True
      Size = 8
    end
    object IntegerField5: TIntegerField
      FieldName = 'Id_URL'
    end
    object spCur2ID_Main: TIntegerField
      FieldName = 'ID_Main'
    end
    object spCur2id_Bsn: TIntegerField
      FieldName = 'id_Bsn'
    end
  end
  object dsCur: TDataSetProvider
    DataSet = spCur
    Constraints = True
    Left = 69
    Top = 561
  end
  object spRates2: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Crn_2_CurrencyGetRates;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Bsn'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 176
    Top = 129
    object IntegerField6: TIntegerField
      FieldName = 'Id_Currency'
    end
    object StringField9: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object StringField10: TStringField
      FieldName = 'ISOCode'
      FixedChar = True
      Size = 3
    end
    object StringField11: TStringField
      FieldName = 'NumberCode'
      FixedChar = True
      Size = 3
    end
    object IntegerField7: TIntegerField
      FieldName = 'Value'
    end
    object FloatField2: TFloatField
      FieldName = 'Rate'
    end
    object IntegerField8: TIntegerField
      FieldName = 'id_URL'
    end
    object FloatField3: TFloatField
      FieldName = 'NewRate'
    end
    object StringField12: TStringField
      FieldName = 'ShortName'
      Size = 10
    end
    object BooleanField8: TBooleanField
      FieldName = 'AvForPay'
    end
    object BooleanField9: TBooleanField
      FieldName = 'FastAccess'
    end
  end
  object dsRates2: TSQLUpdateDSProvider
    DataSet = spRates2
    Constraints = True
    Left = 176
    Top = 177
  end
  object spUrl2: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Crn_2_CurrencyGetURLList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Bsn'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 110
    Top = 153
    object AutoIncField3: TAutoIncField
      FieldName = 'Id_URL'
      ReadOnly = True
    end
    object StringField13: TStringField
      FieldName = 'Name'
    end
    object StringField18: TStringField
      FieldName = 'URL'
      Size = 255
    end
    object SmallintField1: TSmallintField
      FieldName = 'ColName'
    end
    object SmallintField2: TSmallintField
      FieldName = 'ColISO'
    end
    object SmallintField3: TSmallintField
      FieldName = 'ColCode'
    end
    object SmallintField4: TSmallintField
      FieldName = 'ColRate'
    end
    object SmallintField5: TSmallintField
      FieldName = 'ColPieces'
    end
    object SmallintField6: TSmallintField
      FieldName = 'UseTable'
    end
  end
  object dsUrl2: TDataSetProvider
    DataSet = spUrl2
    Constraints = True
    Left = 126
    Top = 209
  end
  object spGoodsRez: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'UN_ArcBy_201;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Goods'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Repr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Warehouse'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Manufact'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_user'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@HasDept'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 191
    Top = 317
    object spGoodsRezHasDept: TBooleanField
      FieldName = 'HasDept'
    end
    object spGoodsRezWareDept: TBCDField
      FieldName = 'WareDept'
      Precision = 19
    end
    object spGoodsRezId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object spGoodsRezId_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object spGoodsRezMeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 10
    end
    object spGoodsRezRealKoef: TFloatField
      FieldName = 'RealKoef'
    end
    object spGoodsRezid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spGoodsRezOrdNum: TIntegerField
      FieldName = 'OrdNum'
    end
    object spGoodsRezid_Replicator: TIntegerField
      FieldName = 'id_Replicator'
    end
    object spGoodsRezDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object spGoodsRezOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object spGoodsRezid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spGoodsRezAmountOper: TBCDField
      FieldName = 'AmountOper'
      Precision = 19
    end
    object spGoodsRezBusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object spGoodsRezid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spGoodsRezCRN_OLD_OperSum: TFloatField
      FieldName = 'CRN_OLD_OperSum'
    end
    object spGoodsRezid_OperWare: TIntegerField
      FieldName = 'id_OperWare'
    end
    object spGoodsRezAmountOperReal: TFloatField
      FieldName = 'AmountOperReal'
    end
    object spGoodsRezPriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object spGoodsRezSummSys: TFloatField
      FieldName = 'SummSys'
    end
    object spGoodsRezid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object spGoodsRezid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object spGoodsRezid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spGoodsRezid_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object spGoodsRezid_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object spGoodsRezPriceInv: TFloatField
      FieldName = 'PriceInv'
    end
    object spGoodsRezid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spGoodsRezImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object spGoodsRezAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object spGoodsRezContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object spGoodsRezOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spGoodsRezRealDataCreate: TDateTimeField
      FieldName = 'RealDataCreate'
    end
    object spGoodsRezis_Mirr: TBooleanField
      FieldName = 'is_Mirr'
    end
    object spGoodsRezVatIn: TBooleanField
      FieldName = 'VatIn'
    end
    object spGoodsRezAutoGen: TBooleanField
      FieldName = 'AutoGen'
    end
    object spGoodsRezid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spGoodsRezReprName: TStringField
      FieldName = 'ReprName'
      Size = 255
    end
    object spGoodsRezReprID_Main: TIntegerField
      FieldName = 'ReprID_Main'
    end
    object spGoodsRezCurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object spGoodsRezCurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object spGoodsRezSrcName: TStringField
      FieldName = 'SrcName'
      Size = 50
    end
    object spGoodsRezSrcID_Main: TIntegerField
      FieldName = 'SrcID_Main'
    end
    object spGoodsRezReprName_1: TStringField
      FieldName = 'ReprName_1'
      ReadOnly = True
      Size = 255
    end
    object spGoodsRezReprID_Main_1: TIntegerField
      FieldName = 'ReprID_Main_1'
      ReadOnly = True
    end
    object spGoodsRezWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object spGoodsRezWareID_Main: TIntegerField
      FieldName = 'WareID_Main'
    end
    object spGoodsRezContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      ReadOnly = True
      Size = 50
    end
    object spGoodsRezid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spGoodsRezSummOper: TFloatField
      FieldName = 'SummOper'
      ReadOnly = True
    end
    object spGoodsRezOperNum: TStringField
      FieldName = 'OperNum'
      ReadOnly = True
      Size = 255
    end
    object spGoodsRezOperVidName: TStringField
      FieldName = 'OperVidName'
      ReadOnly = True
      Size = 50
    end
  end
  object dsGoodsRez: TDataSetProvider
    DataSet = spGoodsRez
    Constraints = True
    Left = 188
    Top = 365
  end
  object spAP: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'AP_OperGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_ObjItem'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 732
    Top = 670
  end
  object dsAP: TDataSetProvider
    DataSet = spAP
    Constraints = True
    Left = 732
    Top = 718
  end
  object dsBalanceBy: TDataSetProvider
    DataSet = spBalanceBy
    Constraints = True
    Left = 312
    Top = 8
  end
  object spAPObj: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'AP_ObjGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_AP_Obj'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 580
    Top = 662
  end
  object dsAPObj: TDataSetProvider
    DataSet = spAPObj
    Constraints = True
    Left = 580
    Top = 710
  end
  object dsAPCond: TDataSetProvider
    DataSet = spAPCond
    Constraints = True
    Left = 628
    Top = 710
  end
  object spAPCond: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'AP_CondGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_AP_Obj'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 628
    Top = 662
  end
  object spAPList: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'AP_ObjGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 684
    Top = 662
  end
  object dsAPList: TDataSetProvider
    DataSet = spAPList
    Constraints = True
    Left = 684
    Top = 710
  end
  object dsArcOld: TDataSetProvider
    DataSet = spArcOld
    Constraints = True
    Left = 70
    Top = 468
  end
  object spArcOld: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_ArcBy_Old;1'
    Parameters = <>
    Left = 70
    Top = 423
    object spArcOldid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spArcOldid_OperParent: TIntegerField
      FieldName = 'id_OperParent'
    end
    object spArcOldid_old_Oper: TIntegerField
      FieldName = 'id_old_Oper'
    end
    object spArcOldDateCreate: TDateTimeField
      FieldName = 'DateCreate'
      ReadOnly = True
    end
    object spArcOldid_LC_Oper: TIntegerField
      FieldName = 'id_LC_Oper'
    end
    object spArcOldOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object spArcOldid_Replicator: TIntegerField
      FieldName = 'id_Replicator'
    end
    object spArcOldReplicatorShortName: TStringField
      FieldName = 'ReplicatorShortName'
      Size = 5
    end
    object spArcOldid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spArcOldid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spArcOldId_CurrencyBsn: TIntegerField
      FieldName = 'Id_CurrencyBsn'
    end
    object spArcOldBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spArcOldBusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object spArcOldDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object spArcOldCorrect: TBooleanField
      FieldName = 'Correct'
    end
    object spArcOldOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spArcOldId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object spArcOldCurrencyOperName: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object spArcOldCurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object spArcOldAmountOper: TFloatField
      FieldName = 'AmountOper'
      ReadOnly = True
    end
    object spArcOldAmountOper2: TFloatField
      FieldName = 'AmountOper2'
      ReadOnly = True
    end
    object spArcOldPriceOper: TFloatField
      FieldName = 'PriceOper'
      ReadOnly = True
    end
    object spArcOldRateOper: TFloatField
      FieldName = 'RateOper'
    end
    object spArcOldid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object spArcOldMeasureName: TStringField
      FieldName = 'MeasureName'
      ReadOnly = True
      Size = 10
    end
    object spArcOldRealKoef: TFloatField
      FieldName = 'RealKoef'
    end
    object spArcOldAmountOperBaseMS: TFloatField
      FieldName = 'AmountOperBaseMS'
      ReadOnly = True
    end
    object spArcOldId_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object spArcOldCurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object spArcOldCurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object spArcOldSummSys: TFloatField
      FieldName = 'SummSys'
      ReadOnly = True
    end
    object spArcOldRateSys: TFloatField
      FieldName = 'RateSys'
    end
    object spArcOldid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spArcOldid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object spArcOldid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object spArcOldSrcName: TStringField
      FieldName = 'SrcName'
      ReadOnly = True
      Size = 50
    end
    object spArcOldSrcID_Main: TIntegerField
      FieldName = 'SrcID_Main'
      ReadOnly = True
    end
    object spArcOldid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spArcOldid_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object spArcOldid_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object spArcOldid_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object spArcOldReprName: TStringField
      FieldName = 'ReprName'
      ReadOnly = True
      Size = 255
    end
    object spArcOldReprID_Main: TIntegerField
      FieldName = 'ReprID_Main'
      ReadOnly = True
    end
    object spArcOldId_CurrencyInv: TIntegerField
      FieldName = 'Id_CurrencyInv'
    end
    object spArcOldPriceInv: TFloatField
      FieldName = 'PriceInv'
    end
    object spArcOldRateInv: TFloatField
      FieldName = 'RateInv'
    end
    object spArcOldCurrencyInvName: TStringField
      FieldName = 'CurrencyInvName'
      ReadOnly = True
      Size = 30
    end
    object spArcOldCurrencyInvShortName: TStringField
      FieldName = 'CurrencyInvShortName'
      ReadOnly = True
      Size = 30
    end
    object spArcOldid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spArcOldWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object spArcOldWareID_Main: TIntegerField
      FieldName = 'WareID_Main'
    end
    object spArcOldKoeff: TIntegerField
      FieldName = 'Koeff'
    end
    object spArcOldKoeffName: TStringField
      FieldName = 'KoeffName'
      ReadOnly = True
      Size = 50
    end
    object spArcOldCheckDate: TDateTimeField
      FieldName = 'CheckDate'
      ReadOnly = True
    end
    object spArcOldid_UserChecker: TIntegerField
      FieldName = 'id_UserChecker'
      ReadOnly = True
    end
    object spArcOldid_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object spArcOldFormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object spArcOldid_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object spArcOldFuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object spArcOldDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object spArcOldid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
      ReadOnly = True
    end
    object spArcOldContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      ReadOnly = True
      Size = 50
    end
    object spArcOldid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spArcOldSummOper: TFloatField
      FieldName = 'SummOper'
      ReadOnly = True
    end
    object spArcOldTypeName: TStringField
      FieldName = 'TypeName'
      ReadOnly = True
      Size = 30
    end
    object spArcOldOperNum: TStringField
      FieldName = 'OperNum'
      ReadOnly = True
      Size = 255
    end
    object spArcOldOperDelta: TFloatField
      FieldName = 'OperDelta'
      ReadOnly = True
    end
    object spArcOldOperRateDelta: TFloatField
      FieldName = 'OperRateDelta'
      ReadOnly = True
    end
    object spArcOldOperTotalDelta: TFloatField
      FieldName = 'OperTotalDelta'
      ReadOnly = True
    end
    object spArcOldDTDiff: TIntegerField
      FieldName = 'DTDiff'
      ReadOnly = True
    end
    object spArcOldHasViza: TBooleanField
      FieldName = 'HasViza'
      ReadOnly = True
    end
    object spArcOldOperState: TIntegerField
      FieldName = 'OperState'
    end
    object spArcOldHidedOper: TBooleanField
      FieldName = 'HidedOper'
    end
    object spArcOldOperSummSys: TFloatField
      FieldName = 'OperSummSys'
      ReadOnly = True
    end
    object spArcOldRateMain: TFloatField
      FieldName = 'RateMain'
    end
    object spArcOldid_Repr_Ex: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object spArcOldid_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object spArcOldImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object spArcOldAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object spArcOldContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object spArcOldOperDeltaCrn: TFloatField
      FieldName = 'OperDeltaCrn'
      ReadOnly = True
    end
    object spArcOldOperRateDeltaCrn: TFloatField
      FieldName = 'OperRateDeltaCrn'
      ReadOnly = True
    end
    object spArcOldOperTotalDeltaCrn: TFloatField
      FieldName = 'OperTotalDeltaCrn'
      ReadOnly = True
    end
    object spArcOldOperCrnName: TStringField
      FieldName = 'OperCrnName'
      ReadOnly = True
      Size = 10
    end
    object spArcOldOperSum_Offer: TFloatField
      FieldName = 'OperSum_Offer'
      ReadOnly = True
    end
    object spArcOldCRN_OLD_OperSum: TFloatField
      FieldName = 'CRN_OLD_OperSum'
      ReadOnly = True
    end
    object spArcOldCRN_OLD_OperSum_Offer: TFloatField
      FieldName = 'CRN_OLD_OperSum_Offer'
      ReadOnly = True
    end
    object spArcOldCRN_OperSum_Inv: TFloatField
      FieldName = 'CRN_OperSum_Inv'
      ReadOnly = True
    end
    object spArcOldOperSumCalced: TFloatField
      FieldName = 'OperSumCalced'
      ReadOnly = True
    end
    object spArcOldOperSum_OfferCalced: TFloatField
      FieldName = 'OperSum_OfferCalced'
      ReadOnly = True
    end
    object spArcOldBlocked: TBooleanField
      FieldName = 'Blocked'
    end
    object spArcOldCurrencyBsnName: TStringField
      FieldName = 'CurrencyBsnName'
      ReadOnly = True
      Size = 10
    end
    object spArcOldid_Ctg_Goods_2: TIntegerField
      FieldName = 'id_Ctg_Goods_2'
    end
    object spArcOldOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spArcOldRealDataCreate: TDateTimeField
      FieldName = 'RealDataCreate'
    end
    object spArcOldOperTypeSIGN: TIntegerField
      FieldName = 'OperTypeSIGN'
      ReadOnly = True
    end
    object spArcOldHasChild: TIntegerField
      FieldName = 'HasChild'
      ReadOnly = True
    end
    object spArcOldDig1: TFloatField
      FieldName = 'Dig1'
    end
    object spArcOldDig2: TFloatField
      FieldName = 'Dig2'
    end
    object spArcOldDig3: TFloatField
      FieldName = 'Dig3'
    end
    object spArcOldDig4: TFloatField
      FieldName = 'Dig4'
    end
    object spArcOldDig5: TFloatField
      FieldName = 'Dig5'
    end
    object spArcOldDig6: TFloatField
      FieldName = 'Dig6'
    end
    object spArcOldDig7: TFloatField
      FieldName = 'Dig7'
    end
    object spArcOldDig8: TFloatField
      FieldName = 'Dig8'
    end
    object spArcOldDig9: TFloatField
      FieldName = 'Dig9'
    end
    object spArcOldDig10: TFloatField
      FieldName = 'Dig10'
    end
    object spArcOldDig11: TFloatField
      FieldName = 'Dig11'
    end
    object spArcOldDig12: TFloatField
      FieldName = 'Dig12'
    end
    object spArcOldDig13: TFloatField
      FieldName = 'Dig13'
    end
    object spArcOldDig14: TFloatField
      FieldName = 'Dig14'
    end
    object spArcOldDig15: TFloatField
      FieldName = 'Dig15'
    end
    object spArcOldStr1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object spArcOldStr2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object spArcOldStr3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object spArcOldStr4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object spArcOldStr5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object spArcOldStr6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object spArcOldStr7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object spArcOldStr8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object spArcOldStr9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object spArcOldStr10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object spArcOldStr11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object spArcOldStr12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object spArcOldStr13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object spArcOldStr14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object spArcOldStr15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object spArcOldid_OperWare: TAutoIncField
      FieldName = 'id_OperWare'
      ReadOnly = True
    end
    object spArcOldOperVidName: TStringField
      FieldName = 'OperVidName'
      ReadOnly = True
      Size = 50
    end
    object spArcOldCRN_OperSumRez: TFloatField
      FieldName = 'CRN_OperSumRez'
      ReadOnly = True
    end
    object spArcOldOnlyDate: TDateTimeField
      FieldName = 'OnlyDate'
      ReadOnly = True
    end
    object spArcOldis_Mirr: TBooleanField
      FieldName = 'is_Mirr'
    end
    object spArcOldid_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
      ReadOnly = True
    end
    object spArcOldid_Warehouse_Group: TIntegerField
      FieldName = 'id_Warehouse_Group'
      ReadOnly = True
    end
    object spArcOldid_Manufact_Group: TIntegerField
      FieldName = 'id_Manufact_Group'
      ReadOnly = True
    end
    object spArcOldCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      ReadOnly = True
      Size = 152
    end
    object spArcOldCheckerFIO: TStringField
      FieldName = 'CheckerFIO'
      ReadOnly = True
      Size = 152
    end
    object spArcOldid_business_1: TIntegerField
      FieldName = 'id_business_1'
      ReadOnly = True
    end
  end
  object dsDoc_PayIn: TSQLUpdateDSProvider
    DataSet = spDoc_PayIn
    Constraints = True
    ModifySQL.Strings = (
      '')
    Left = 675
    Top = 140
  end
  object spDoc_PayIn: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Doc_Pay_InGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Pay_In'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 675
    Top = 96
    object spDoc_PayInid_Pay_In: TAutoIncField
      FieldName = 'id_Pay_In'
    end
    object spDoc_PayInid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spDoc_PayInDoc_Num: TStringField
      FieldName = 'Doc_Num'
      Size = 50
    end
    object spDoc_PayInDoc_Date: TDateTimeField
      FieldName = 'Doc_Date'
    end
    object spDoc_PayInOKPO: TStringField
      FieldName = 'OKPO'
    end
    object spDoc_PayInSumm: TBCDField
      FieldName = 'Summ'
      Precision = 18
      Size = 2
    end
    object spDoc_PayInVAT: TBCDField
      FieldName = 'VAT'
      Precision = 18
      Size = 2
    end
    object spDoc_PayInBasePM: TStringField
      FieldName = 'BasePM'
      Size = 255
    end
    object spDoc_PayInPayer: TStringField
      FieldName = 'Payer'
      Size = 255
    end
    object spDoc_PayInBuh: TStringField
      FieldName = 'Buh'
      Size = 255
    end
    object spDoc_PayInCasser: TStringField
      FieldName = 'Casser'
      Size = 255
    end
    object spDoc_PayInDoc_DateCreate: TDateTimeField
      FieldName = 'Doc_DateCreate'
    end
    object spDoc_PayInid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spDoc_PayInOrgName: TStringField
      FieldName = 'OrgName'
      Size = 255
    end
    object spDoc_PayInExtInfo: TStringField
      FieldName = 'ExtInfo'
      Size = 255
    end
    object spDoc_PayInid_DocCur: TIntegerField
      FieldName = 'id_DocCur'
    end
    object spDoc_PayInid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spDoc_PayInDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spDoc_PayInDocCurPartName: TStringField
      FieldName = 'DocCurPartName'
      Size = 50
    end
    object spDoc_PayInDocCurName: TStringField
      FieldName = 'DocCurName'
      Size = 10
    end
    object spDoc_PayInid_DocCur_1: TAutoIncField
      FieldName = 'id_DocCur_1'
    end
    object spDoc_PayInDef: TBooleanField
      FieldName = 'Def'
    end
    object spDoc_PayInNumberCode: TStringField
      FieldName = 'NumberCode'
      FixedChar = True
      Size = 3
    end
    object spDoc_PayInid_Doc_Org: TIntegerField
      FieldName = 'id_Doc_Org'
    end
  end
  object dsDList: TDataSetProvider
    DataSet = spDList
    Constraints = True
    Left = 707
    Top = 501
  end
  object spDList: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Doc_DictGetList'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@UID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 830
    Top = 359
    object spDListName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spDListUID: TIntegerField
      FieldName = 'UID'
    end
    object spDListDef: TBooleanField
      FieldName = 'Def'
    end
    object spDListType: TIntegerField
      FieldName = 'Type'
    end
    object spDListMask: TStringField
      FieldName = 'Mask'
      Size = 50
    end
    object spDListid_DD: TAutoIncField
      FieldName = 'id_DD'
      ReadOnly = True
    end
  end
  object spDoc_ActCL: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Doc_ActCLGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_ActCl'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 675
    Top = 184
    object spDoc_ActCLid_ActCl: TAutoIncField
      FieldName = 'id_ActCl'
    end
    object spDoc_ActCLid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spDoc_ActCLDoc_Num: TStringField
      FieldName = 'Doc_Num'
      Size = 50
    end
    object spDoc_ActCLDoc_Date: TDateTimeField
      FieldName = 'Doc_Date'
    end
    object spDoc_ActCLOrgName1: TStringField
      FieldName = 'OrgName1'
      Size = 255
    end
    object spDoc_ActCLSumm1: TBCDField
      FieldName = 'Summ1'
      Precision = 18
      Size = 2
    end
    object spDoc_ActCLDoc1: TStringField
      FieldName = 'Doc1'
      Size = 1000
    end
    object spDoc_ActCLOrgName2: TStringField
      FieldName = 'OrgName2'
      Size = 255
    end
    object spDoc_ActCLSumm2: TBCDField
      FieldName = 'Summ2'
      Precision = 18
      Size = 2
    end
    object spDoc_ActCLDoc2: TStringField
      FieldName = 'Doc2'
      Size = 1000
    end
    object spDoc_ActCLSumm: TBCDField
      FieldName = 'Summ'
      Precision = 18
      Size = 2
    end
    object spDoc_ActCLName1: TStringField
      FieldName = 'Name1'
      Size = 255
    end
    object spDoc_ActCLPost1: TStringField
      FieldName = 'Post1'
      Size = 255
    end
    object spDoc_ActCLName2: TStringField
      FieldName = 'Name2'
      Size = 255
    end
    object spDoc_ActCLPost2: TStringField
      FieldName = 'Post2'
      Size = 255
    end
    object spDoc_ActCLDoc_DateCreate: TDateTimeField
      FieldName = 'Doc_DateCreate'
    end
    object spDoc_ActCLid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spDoc_ActCLid_DocCur: TIntegerField
      FieldName = 'id_DocCur'
    end
    object spDoc_ActCLid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spDoc_ActCLDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spDoc_ActCLDocCurPartName: TStringField
      FieldName = 'DocCurPartName'
      Size = 50
    end
    object spDoc_ActCLDocCurName: TStringField
      FieldName = 'DocCurName'
      Size = 10
    end
    object spDoc_ActCLid_DocCur_1: TAutoIncField
      FieldName = 'id_DocCur_1'
    end
    object spDoc_ActCLDef: TBooleanField
      FieldName = 'Def'
    end
    object spDoc_ActCLNumberCode: TStringField
      FieldName = 'NumberCode'
      FixedChar = True
      Size = 3
    end
    object spDoc_ActCLid_Doc_Org: TIntegerField
      FieldName = 'id_Doc_Org'
    end
  end
  object dsDoc_ActCL: TSQLUpdateDSProvider
    DataSet = spDoc_ActCL
    Constraints = True
    ModifySQL.Strings = (
      '')
    Left = 675
    Top = 228
  end
  object dsDoc_DAccWare: TSQLUpdateDSProvider
    DataSet = spDoc_DAccWare
    Constraints = True
    ModifySQL.Strings = (
      'EXEC Doc_AccountWareEdit'
      '  @id_AccountWare = :id_AccountWare,'
      '  @WareName = :WareName,'
      '  @MesName = :MesName,'
      '  @SummWare= :SummWare,'
      '  @Amount = :Amount,'
      '  @id_Account = :id_Account'
      ' ')
    InsertSQL.Strings = (
      'EXEC Doc_AccountWareAdd'
      '  @WareName = :WareName,'
      '  @MesName = :MesName,'
      '  @SummWare= :SummWare,'
      '  @Amount = :Amount,'
      '  @id_Account = :id_Account')
    DeleteSQL.Strings = (
      'EXEC Doc_AccountWareDel'
      '  @id_AccountWare = :id_AccountWare')
    Left = 646
    Top = 334
  end
  object dsDoc_DAcc: TDataSetProvider
    DataSet = spDoc_Acc
    Constraints = True
    Left = 637
    Top = 266
  end
  object dsDoc_FinalActWare: TSQLUpdateDSProvider
    DataSet = spDoc_FinalActWare
    Constraints = True
    ModifySQL.Strings = (
      'EXEC Doc_FinalActWareEdit'
      '  @id_FinalActWare = :id_FinalActWare,'
      '  @WareName = :WareName,'
      '  @MesName = :MesName,'
      '  @SummWare= :SummWare,'
      '  @Amount = :Amount,'
      '  @id_FinalAct = :id_FinalAct'
      ' ')
    InsertSQL.Strings = (
      'EXEC Doc_FinalActWareAdd'
      '  @WareName = :WareName,'
      '  @MesName = :MesName,'
      '  @SummWare= :SummWare,'
      '  @Amount = :Amount,'
      '  @id_FinalAct = :id_FinalAct')
    DeleteSQL.Strings = (
      'EXEC Doc_FinalActWareDel'
      '  @id_FinalActWare = :id_FinalActWare')
    Left = 619
    Top = 614
  end
  object dsDoc_FinalAct: TDataSetProvider
    DataSet = spDoc_FinalAct
    Constraints = True
    Left = 618
    Top = 522
  end
  object spDoc_FinalAct: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Doc_FinalActGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_FinalAct'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 618
    Top = 476
    object spDoc_FinalActid_FinalAct: TAutoIncField
      FieldName = 'id_FinalAct'
      ReadOnly = True
    end
    object spDoc_FinalActid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spDoc_FinalActDoc_Num: TStringField
      FieldName = 'Doc_Num'
      Size = 50
    end
    object spDoc_FinalActDoc_Date: TDateTimeField
      FieldName = 'Doc_Date'
    end
    object spDoc_FinalActDoc_DateCreate: TDateTimeField
      FieldName = 'Doc_DateCreate'
    end
    object spDoc_FinalActid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spDoc_FinalActOrgName: TStringField
      FieldName = 'OrgName'
      Size = 255
    end
    object spDoc_FinalActAddress: TStringField
      FieldName = 'Address'
      Size = 255
    end
    object spDoc_FinalActperformer: TStringField
      FieldName = 'performer'
      Size = 255
    end
    object spDoc_FinalActcustomer: TStringField
      FieldName = 'customer'
      Size = 255
    end
    object spDoc_FinalActCusPerson: TStringField
      FieldName = 'CusPerson'
      Size = 255
    end
    object spDoc_FinalActid_DocCur: TIntegerField
      FieldName = 'id_DocCur'
    end
    object spDoc_FinalActid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spDoc_FinalActid_DocCur_1: TAutoIncField
      FieldName = 'id_DocCur_1'
      ReadOnly = True
    end
    object spDoc_FinalActDocCurName: TStringField
      FieldName = 'DocCurName'
      Size = 50
    end
    object spDoc_FinalActDocCurPartName: TStringField
      FieldName = 'DocCurPartName'
      Size = 50
    end
    object spDoc_FinalActDef: TBooleanField
      FieldName = 'Def'
    end
    object spDoc_FinalActNumberCode: TStringField
      FieldName = 'NumberCode'
      FixedChar = True
      Size = 3
    end
    object spDoc_FinalActid_Doc_Org: TIntegerField
      FieldName = 'id_Doc_Org'
    end
    object spDoc_FinalActDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spDoc_FinalActVAT: TBCDField
      FieldName = 'VAT'
      Precision = 18
      Size = 2
    end
  end
  object spDoc_FinalActWare: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Doc_FinalActWareGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_FinalAct'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 618
    Top = 569
  end
  object dsDoc_WarrantWare: TSQLUpdateDSProvider
    DataSet = spDoc_WarrantWare
    Constraints = True
    ModifySQL.Strings = (
      'EXEC Doc_WarrantWareEdit'
      '  @id_WarrantWare = :id_WarrantWare,'
      '  @WareName = :WareName,'
      '  @MesName = :MesName,'
      '  @SummWare= :SummWare,'
      '  @Amount = :Amount,'
      '  @id_Warrant = :id_Warrant'
      ' ')
    InsertSQL.Strings = (
      'EXEC Doc_WarrantWareAdd'
      '  @WareName = :WareName,'
      '  @MesName = :MesName,'
      '  @SummWare= :SummWare,'
      '  @Amount = :Amount,'
      '  @id_Warrant = :id_Warrant')
    DeleteSQL.Strings = (
      'EXEC Doc_WarrantWareDel'
      '  @id_WarrantWare = :id_WarrantWare')
    Left = 667
    Top = 430
  end
  object dsDoc_Warrant: TDataSetProvider
    DataSet = spDoc_Warrant
    Constraints = True
    Left = 666
    Top = 338
  end
  object spDoc_Warrant: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Doc_WarrantGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Warrant'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 666
    Top = 292
    object spDoc_Warrantid_Warrant: TAutoIncField
      FieldName = 'id_Warrant'
    end
    object spDoc_Warrantid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spDoc_WarrantDoc_Num: TStringField
      FieldName = 'Doc_Num'
      Size = 50
    end
    object spDoc_WarrantDoc_Date: TDateTimeField
      FieldName = 'Doc_Date'
    end
    object spDoc_WarrantDoc_DateCreate: TDateTimeField
      FieldName = 'Doc_DateCreate'
    end
    object spDoc_Warrantid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spDoc_WarrantDateTo: TDateTimeField
      FieldName = 'DateTo'
    end
    object spDoc_WarrantOrgName: TStringField
      FieldName = 'OrgName'
      Size = 255
    end
    object spDoc_WarrantAddress: TStringField
      FieldName = 'Address'
      Size = 255
    end
    object spDoc_WarrantINN: TBCDField
      FieldName = 'INN'
      Precision = 12
      Size = 0
    end
    object spDoc_WarrantOrgName2: TStringField
      FieldName = 'OrgName2'
      Size = 255
    end
    object spDoc_WarrantAddress2: TStringField
      FieldName = 'Address2'
      Size = 255
    end
    object spDoc_WarrantINN2: TBCDField
      FieldName = 'INN2'
      Precision = 12
      Size = 0
    end
    object spDoc_WarrantOKPO: TStringField
      FieldName = 'OKPO'
    end
    object spDoc_WarrantPerson: TStringField
      FieldName = 'Person'
      Size = 255
    end
    object spDoc_WarrantPost: TStringField
      FieldName = 'Post'
      Size = 255
    end
    object spDoc_WarrantGarbNum: TStringField
      FieldName = 'GarbNum'
    end
    object spDoc_WarrantGarbDate: TDateTimeField
      FieldName = 'GarbDate'
    end
    object spDoc_WarrantAcc: TStringField
      FieldName = 'Acc'
      Size = 255
    end
    object spDoc_WarrantBank: TStringField
      FieldName = 'Bank'
      Size = 255
    end
    object spDoc_WarrantBIK: TBCDField
      FieldName = 'BIK'
      Precision = 10
      Size = 0
    end
    object spDoc_WarrantCorAcc: TStringField
      FieldName = 'CorAcc'
      Size = 255
    end
    object spDoc_Warrantcustomer: TStringField
      FieldName = 'customer'
      Size = 255
    end
    object spDoc_WarrantFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object spDoc_WarrantPspSer: TStringField
      FieldName = 'PspSer'
    end
    object spDoc_WarrantPspNum: TStringField
      FieldName = 'PspNum'
    end
    object spDoc_WarrantPspOwner: TStringField
      FieldName = 'PspOwner'
      Size = 255
    end
    object spDoc_WarrantPspDate: TDateTimeField
      FieldName = 'PspDate'
    end
    object spDoc_WarrantChif: TStringField
      FieldName = 'Chif'
      Size = 255
    end
    object spDoc_WarrantBuh: TStringField
      FieldName = 'Buh'
      Size = 255
    end
    object spDoc_Warrantid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spDoc_WarrantDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spDoc_Warrantid_Doc_Org: TIntegerField
      FieldName = 'id_Doc_Org'
    end
    object spDoc_WarrantVAT: TBCDField
      FieldName = 'VAT'
      Precision = 18
      Size = 2
    end
  end
  object spDoc_WarrantWare: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Doc_WarrantWareGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Warrant'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 666
    Top = 385
  end
  object dsDoc_InvWare: TSQLUpdateDSProvider
    DataSet = spDoc_InvWare
    Constraints = True
    ModifySQL.Strings = (
      'EXEC Doc_InvoiceWareEdit'
      '  @id_InvoiceWare = :id_InvoiceWare,'
      '  @Amount = :Amount,'
      '  @AmountInPalace = :AmountInPalace,'
      '  @Brutto = :Brutto,'
      '  @Code = :Code,'
      '  @id_Invoice = :id_Invoice,'
      '  @MesCode = :MesCode,'
      '  @MesName = :MesName,'
      '  @PackType = :PackType,'
      '  @PalaceCount = :PalaceCount,'
      '  @SummWare= :SummWare,'
      '  @WareName = :WareName')
    InsertSQL.Strings = (
      'EXEC Doc_InvoiceWareAdd'
      '  @Amount = :Amount,'
      '  @AmountInPalace = :AmountInPalace,'
      '  @Brutto = :Brutto,'
      '  @Code = :Code,'
      '  @id_Invoice = :id_Invoice,'
      '  @MesCode = :MesCode,'
      '  @MesName = :MesName,'
      '  @PackType = :PackType,'
      '  @PalaceCount = :PalaceCount,'
      '  @SummWare= :SummWare,'
      '  @WareName = :WareName'
      ' ')
    DeleteSQL.Strings = (
      'EXEC Doc_InvoiceWareDel'
      '  @id_InvoiceWare = :id_InvoiceWare')
    Left = 283
    Top = 186
  end
  object spDocCurGetList: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Doc_DocCurGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Bsn'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 24
      end>
    Left = 822
    Top = 463
    object spDocCurGetListid_DocCur: TAutoIncField
      FieldName = 'id_DocCur'
      ReadOnly = True
    end
    object spDocCurGetListDocCurName: TStringField
      FieldName = 'DocCurName'
      Size = 50
    end
    object spDocCurGetListDocCurPartName: TStringField
      FieldName = 'DocCurPartName'
      Size = 50
    end
    object spDocCurGetListDef: TIntegerField
      FieldName = 'Def'
      ReadOnly = True
    end
  end
  object dsDocCurGetList: TDataSetProvider
    DataSet = spDocCurGetList
    Constraints = True
    Left = 822
    Top = 509
  end
  object dsDoc_AFWare: TSQLUpdateDSProvider
    DataSet = spDoc_AFWare
    Constraints = True
    ModifySQL.Strings = (
      'EXEC Doc_AFWareEdit'
      '  @id_AFWare = :id_AFWare,'
      '  @Country = :Country,'
      '  @GTD = :GTD,'
      '  @Amount = :Amount,'
      '  @id_AF = :id_AF,'
      '  @MesName = :MesName,'
      '  @SummWare = :SummWare,'
      '  @WareName = :WareName'
      '')
    InsertSQL.Strings = (
      'EXEC Doc_AFWareAdd'
      '  @Country = :Country,'
      '  @GTD = :GTD,'
      '  @Amount = :Amount,'
      '  @id_AF = :id_AF,'
      '  @MesName = :MesName,'
      '  @SummWare = :SummWare,'
      '  @WareName = :WareName'
      ' '
      ' '
      ' ')
    DeleteSQL.Strings = (
      'EXEC Doc_AFWareDel'
      '  @id_AFWare = :id_AFWare')
    Left = 235
    Top = 218
  end
  object dsDoc_AF: TDataSetProvider
    DataSet = spDoc_AF
    Constraints = True
    Left = 234
    Top = 110
  end
  object dsDoc_WBillWare: TSQLUpdateDSProvider
    DataSet = spDoc_WBillWare
    Constraints = True
    ModifySQL.Strings = (
      'EXEC Doc_WBillWareEdit'
      '  @id_WBillWare = :id_WBillWare,'
      '  @id_WBill = :id_WBill,'
      '  @Code = :Code,'
      '  @PRCNum = :PRCNum,'
      '  @Articul = :Articul,'
      '  @Amount = :Amount,'
      '  @SummWare= :SummWare,'
      '  @WareName = :WareName,'
      '  @MesName = :MesName,'
      '  @PackType = :PackType,'
      '  @PalaceCount = :PalaceCount,'
      '  @Brutto = :Brutto,'
      '  @CardNum = :CardNum'
      '')
    InsertSQL.Strings = (
      'EXEC Doc_WBillWareAdd'
      '  @id_WBill = :id_WBill,'
      '  @Code = :Code,'
      '  @PRCNum = :PRCNum,'
      '  @Articul = :Articul,'
      '  @Amount = :Amount,'
      '  @SummWare= :SummWare,'
      '  @WareName = :WareName,'
      '  @MesName = :MesName,'
      '  @PackType = :PackType,'
      '  @PalaceCount = :PalaceCount,'
      '  @Brutto = :Brutto,'
      '  @CardNum = :CardNum'
      ''
      ' '
      ' ')
    DeleteSQL.Strings = (
      'EXEC Doc_WBillWareDel'
      '  @id_WBillWare = :id_WBillWare')
    Left = 275
    Top = 370
  end
  object dsDoc_WBill: TDataSetProvider
    DataSet = spDoc_WBill
    Constraints = True
    Left = 274
    Top = 278
  end
  object spDoc_WBillWare: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Doc_WBillWareGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_WBill'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 274
    Top = 328
  end
  object spDTList: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Doc_DicTypeGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 707
    Top = 456
    object spDTListid_DT: TAutoIncField
      FieldName = 'id_DT'
      ReadOnly = True
    end
    object spDTListName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spDTListUID: TIntegerField
      FieldName = 'UID'
    end
    object spDTListType: TIntegerField
      FieldName = 'Type'
    end
    object spDTListMask: TStringField
      FieldName = 'Mask'
      Size = 50
    end
  end
  object dsDTList: TDataSetProvider
    DataSet = spDTList
    Constraints = True
    Left = 830
    Top = 405
  end
  object spDocByOper: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Doc_DocByOper;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Doc_Account'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Doc_ActCL'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Doc_AF'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Doc_FinalAct'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Doc_Invoice'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Doc_Pay_In'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Doc_Warrant'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Doc_WBill'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Doc_WHOrd'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 702
    Top = 487
    object spDocByOperType: TIntegerField
      FieldName = 'Type'
    end
    object spDocByOperDocName: TStringField
      FieldName = 'DocName'
      Size = 255
    end
    object spDocByOperID: TIntegerField
      FieldName = 'ID'
    end
    object spDocByOperDoc_Date: TDateTimeField
      FieldName = 'Doc_Date'
    end
    object spDocByOperOrgName: TStringField
      FieldName = 'OrgName'
      Size = 255
    end
    object spDocByOperExtInfo: TStringField
      FieldName = 'ExtInfo'
      Size = 1000
    end
    object spDocByOperid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spDocByOperDoc_Num: TStringField
      FieldName = 'Doc_Num'
      Size = 50
    end
  end
  object dsDocByOper: TDataSetProvider
    DataSet = spDocByOper
    Constraints = True
    Left = 702
    Top = 533
  end
  object spGetDoc_Num: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'GetDoc_Num;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DocType'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Bsn'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 344
    Top = 236
  end
  object spAP_CondAdd: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'AP_CondAdd;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_AP_Obj'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ExtID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@APCond'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@V_Str'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@V_Str2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end>
    Left = 387
    Top = 4
  end
  object spOperAdd_v2: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'OP_OperAdd_v2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@AddOldData'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DateLocal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Replicator'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_LC_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OperVid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Correct'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperTypeIn'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Id_CurrencyOper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PriceFinOper'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@RateOper'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Id_CurrencySys'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SummSysFin'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@RateSys'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@id_Repr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Acc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Acc_Ext'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Warehouse'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Warehouse_Ext'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Manufact'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Manufact_Ext'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_FormalDistrib'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_FuncDistrib'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Koeff'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Id_CurrencyInv'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@RateInv'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@id_OperParent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OperState'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_UserCreator'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_DocType'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Imp_PayBasic'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@AccInv_PayAssignment'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@Contract'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@OpComment'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@Dig1'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig2'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig3'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig4'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig5'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig6'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig7'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig8'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig9'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig10'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig11'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig12'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig13'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig14'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig15'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Str1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str3'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str4'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str5'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str6'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str7'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str8'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str9'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str10'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str11'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str12'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str13'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str14'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str15'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Date1'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date2'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date3'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date4'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date5'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date6'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date7'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date8'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date9'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date10'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date11'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date12'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date13'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date14'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date15'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@VatIn'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@AutoGen'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 687
    Top = 581
  end
  object spOperEdit_v2: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'OP_OperEdit_v2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OperVid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Correct'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperTypeIn'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Id_CurrencyOper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PriceFinOper'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@RateOper'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Id_CurrencySys'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SummSysFin'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@RateSys'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@id_Repr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Acc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Acc_Ext'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Warehouse'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Warehouse_Ext'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Manufact'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Manufact_Ext'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_FormalDistrib'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_FuncDistrib'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Koeff'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Id_CurrencyInv'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@RateInv'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@id_OperParent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OperState'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_UserCreator'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_DocType'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Imp_PayBasic'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@AccInv_PayAssignment'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@Contract'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@OpComment'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@Dig1'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig2'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig3'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig4'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig5'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig6'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig7'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig8'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig9'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig10'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig11'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig12'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig13'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig14'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Dig15'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@Str1'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str2'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str3'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str4'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str5'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str6'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str7'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str8'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str9'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str10'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str11'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str12'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str13'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str14'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Str15'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@Date1'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date2'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date3'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date4'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date5'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date6'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date7'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date8'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date9'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date10'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date11'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date12'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date13'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date14'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date15'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@CheckDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@VatIn'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@AutoGen'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 759
    Top = 493
  end
  object spDocOrg: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Doc_OrgGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 893
    Top = 303
    object spDocOrgid_Doc_Org: TAutoIncField
      FieldName = 'id_Doc_Org'
      ReadOnly = True
    end
    object spDocOrgOrgName: TStringField
      FieldName = 'OrgName'
      Size = 255
    end
    object spDocOrgAddress: TStringField
      FieldName = 'Address'
      Size = 255
    end
    object spDocOrgChif: TStringField
      FieldName = 'Chif'
      Size = 255
    end
    object spDocOrgBuh: TStringField
      FieldName = 'Buh'
      Size = 255
    end
    object spDocOrgOKPO: TStringField
      FieldName = 'OKPO'
    end
    object spDocOrgOKPD: TStringField
      FieldName = 'OKPD'
    end
    object spDocOrgINN: TBCDField
      FieldName = 'INN'
      Precision = 12
      Size = 0
    end
    object spDocOrgid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spDocOrgKPP: TStringField
      FieldName = 'KPP'
    end
    object spDocOrgDefOrg: TBooleanField
      FieldName = 'DefOrg'
    end
    object spDocOrgVAT: TBCDField
      FieldName = 'VAT'
      Precision = 18
      Size = 2
    end
    object spDocOrgDisabledOrg: TBooleanField
      FieldName = 'DisabledOrg'
    end
  end
  object dsDocOrg: TDataSetProvider
    DataSet = spDocOrg
    Constraints = True
    Left = 885
    Top = 341
  end
  object spOrgBank: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Doc_OrgBankGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Doc_Org'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 888
    Top = 392
  end
  object dsOrgBank: TSQLUpdateDSProvider
    DataSet = spOrgBank
    Constraints = True
    ModifySQL.Strings = (
      'EXEC Doc_OrgBankEdit'
      '  @id_Doc_OrgBank = :id_Doc_OrgBank,'
      '  @Acc = :Acc,'
      '  @Bank = :Bank,'
      '  @BIK = :BIK,'
      '  @CorAcc = :CorAcc,'
      '  @id_Doc_Org = :id_Doc_Org,'
      '  @DefBank = :DefBank')
    InsertSQL.Strings = (
      'EXEC Doc_OrgBankAdd'
      '  @Acc = :Acc,'
      '  @Bank = :Bank,'
      '  @BIK = :BIK,'
      '  @CorAcc = :CorAcc,'
      '  @id_Doc_Org = :id_Doc_Org,'
      '  @DefBank = :DefBank')
    DeleteSQL.Strings = (
      'EXEC Doc_OrgBankDel'
      '  @id_Doc_OrgBank = :id_Doc_OrgBank '
      ' ')
    Left = 888
    Top = 438
  end
  object dsOrgDet: TSQLUpdateDSProvider
    DataSet = spOrgDet
    Constraints = True
    ModifySQL.Strings = (
      'EXEC Doc_OrgDetEdit'
      '  @id_OrgDet = :id_OrgDet,'
      '  @VAL = :VAL,'
      '  @id_Doc_Org = :id_Doc_Org,'
      '  @DT = :DT,'
      '  @DefDet = :DefDet'
      ''
      ' '
      ' ')
    InsertSQL.Strings = (
      'EXEC Doc_OrgDetAdd'
      '  @VAL = :VAL,'
      '  @id_Doc_Org = :id_Doc_Org,'
      '  @DT = :DT,'
      '  @DefDet = :DefDet'
      ' ')
    DeleteSQL.Strings = (
      'EXEC Doc_OrgDetDel'
      '  @id_OrgDet = :id_OrgDet '
      ' ')
    Left = 880
    Top = 534
  end
  object spOrgDet: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Doc_OrgDetGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Doc_Org'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@DT'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 880
    Top = 488
    object spOrgDetid_OrgDet: TAutoIncField
      FieldName = 'id_OrgDet'
      ReadOnly = True
    end
    object spOrgDetid_Doc_Org: TIntegerField
      FieldName = 'id_Doc_Org'
    end
    object spOrgDetVal: TStringField
      FieldName = 'Val'
      Size = 255
    end
    object spOrgDetDT: TIntegerField
      FieldName = 'DT'
    end
    object spOrgDetDefDet: TBooleanField
      FieldName = 'DefDet'
    end
  end
  object spOrgGetProp: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Doc_OrgGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Doc_Org'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 869
    Top = 247
    object AutoIncField4: TAutoIncField
      FieldName = 'id_Doc_Org'
      ReadOnly = True
    end
    object StringField19: TStringField
      FieldName = 'OrgName'
      Size = 255
    end
    object StringField20: TStringField
      FieldName = 'Address'
      Size = 255
    end
    object StringField21: TStringField
      FieldName = 'Chif'
      Size = 255
    end
    object StringField22: TStringField
      FieldName = 'Buh'
      Size = 255
    end
    object StringField23: TStringField
      FieldName = 'OKPO'
    end
    object StringField24: TStringField
      FieldName = 'OKPD'
    end
    object BCDField1: TBCDField
      FieldName = 'INN'
      Precision = 12
      Size = 0
    end
    object IntegerField9: TIntegerField
      FieldName = 'id_business'
    end
    object StringField25: TStringField
      FieldName = 'KPP'
    end
    object BooleanField11: TBooleanField
      FieldName = 'DefOrg'
    end
    object BCDField2: TBCDField
      FieldName = 'VAT'
      Precision = 18
      Size = 2
    end
    object spOrgGetPropDisabledOrg: TBooleanField
      FieldName = 'DisabledOrg'
    end
  end
  object dsOrgGetProp: TDataSetProvider
    DataSet = spOrgGetProp
    Constraints = True
    Left = 861
    Top = 285
  end
  object spDoFilter: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'AP_DoFilter_v2;1'
    Parameters = <>
    Left = 606
    Top = 23
    object spDoFilterid_ObjItem: TIntegerField
      FieldName = 'id_ObjItem'
    end
    object spDoFilterid_AP_Obj: TIntegerField
      FieldName = 'id_AP_Obj'
    end
    object spDoFilterExtId: TIntegerField
      FieldName = 'ExtId'
    end
    object spDoFilterParField: TStringField
      FieldName = 'ParField'
      Size = 255
    end
    object spDoFilterParName: TStringField
      FieldName = 'ParName'
      Size = 255
    end
    object spDoFilterOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object spDoFilterid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spDoFilterid_UserChecker: TIntegerField
      FieldName = 'id_UserChecker'
    end
    object spDoFilterid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spDoFilterCorrect: TBooleanField
      FieldName = 'Correct'
    end
    object spDoFilterOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spDoFilterid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spDoFilterid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object spDoFilterid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object spDoFilterid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spDoFilterid_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object spDoFilterid_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object spDoFilterid_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object spDoFilterKoeff: TIntegerField
      FieldName = 'Koeff'
    end
    object spDoFilterid_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object spDoFilterid_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object spDoFilterImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object spDoFilterAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object spDoFilterContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object spDoFilterOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spDoFilterDig1: TFloatField
      FieldName = 'Dig1'
    end
    object spDoFilterDig2: TFloatField
      FieldName = 'Dig2'
    end
    object spDoFilterDig3: TFloatField
      FieldName = 'Dig3'
    end
    object spDoFilterDig4: TFloatField
      FieldName = 'Dig4'
    end
    object spDoFilterDig5: TFloatField
      FieldName = 'Dig5'
    end
    object spDoFilterDig6: TFloatField
      FieldName = 'Dig6'
    end
    object spDoFilterDig7: TFloatField
      FieldName = 'Dig7'
    end
    object spDoFilterDig8: TFloatField
      FieldName = 'Dig8'
    end
    object spDoFilterDig9: TFloatField
      FieldName = 'Dig9'
    end
    object spDoFilterDig10: TFloatField
      FieldName = 'Dig10'
    end
    object spDoFilterDig11: TFloatField
      FieldName = 'Dig11'
    end
    object spDoFilterDig12: TFloatField
      FieldName = 'Dig12'
    end
    object spDoFilterDig13: TFloatField
      FieldName = 'Dig13'
    end
    object spDoFilterDig14: TFloatField
      FieldName = 'Dig14'
    end
    object spDoFilterDig15: TFloatField
      FieldName = 'Dig15'
    end
    object spDoFilterStr1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object spDoFilterStr2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object spDoFilterStr3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object spDoFilterStr4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object spDoFilterStr5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object spDoFilterStr6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object spDoFilterStr7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object spDoFilterStr8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object spDoFilterStr9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object spDoFilterStr10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object spDoFilterStr11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object spDoFilterStr12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object spDoFilterStr13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object spDoFilterStr14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object spDoFilterStr15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object spDoFilterId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object spDoFilterId_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object spDoFilterPriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object spDoFilterSummOper: TFloatField
      FieldName = 'SummOper'
    end
    object spDoFilterSummSys: TFloatField
      FieldName = 'SummSys'
    end
    object spDoFilterVatIn: TBooleanField
      FieldName = 'VatIn'
    end
    object spDoFilterid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spDoFilterid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object spDoFilterTypeName: TStringField
      FieldName = 'TypeName'
      ReadOnly = True
      Size = 30
    end
    object spDoFilterOperVidName: TStringField
      FieldName = 'OperVidName'
      ReadOnly = True
      Size = 50
    end
    object spDoFilterContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      ReadOnly = True
      Size = 50
    end
    object spDoFilterFormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object spDoFilterFuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object spDoFilterKoeffName: TStringField
      FieldName = 'KoeffName'
      ReadOnly = True
      Size = 50
    end
    object spDoFilterSrcName: TStringField
      FieldName = 'SrcName'
      ReadOnly = True
      Size = 50
    end
    object spDoFilterReprName: TStringField
      FieldName = 'ReprName'
      ReadOnly = True
      Size = 255
    end
    object spDoFilterBusinessid_Currency: TIntegerField
      FieldName = 'Businessid_Currency'
    end
    object spDoFilterBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spDoFilterBusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object spDoFilterOperCrnName: TStringField
      FieldName = 'OperCrnName'
      ReadOnly = True
      Size = 10
    end
    object spDoFilterCurrencyBsnName: TStringField
      FieldName = 'CurrencyBsnName'
      ReadOnly = True
      Size = 10
    end
    object spDoFilterCurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object spDoFilterCurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object spDoFilterWareName: TStringField
      FieldName = 'WareName'
      ReadOnly = True
      Size = 255
    end
    object spDoFilterMeasureName: TStringField
      FieldName = 'MeasureName'
      ReadOnly = True
      Size = 255
    end
    object spDoFilterAPName: TStringField
      FieldName = 'APName'
      Size = 50
    end
    object spDoFilterOpName: TStringField
      FieldName = 'OpName'
      Size = 255
    end
    object spDoFilterPriceOper_F: TFloatField
      FieldName = 'PriceOper_F'
    end
    object spDoFilterSummOper_F: TFloatField
      FieldName = 'SummOper_F'
    end
    object spDoFilterSummSys_F: TFloatField
      FieldName = 'SummSys_F'
    end
    object spDoFilterChOnRate: TBooleanField
      FieldName = 'ChOnRate'
    end
    object spDoFilterAmountOper: TBCDField
      FieldName = 'AmountOper'
      Precision = 30
      Size = 2
    end
  end
  object dsDoFilter: TDataSetProvider
    DataSet = spDoFilter
    Constraints = True
    Left = 606
    Top = 69
  end
  object dsArc201: TDataSetProvider
    DataSet = spArc201
    Constraints = True
    Left = 224
    Top = 300
  end
  object spAPOI: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'AP_ObjItemGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_ObjItem'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 766
    Top = 594
  end
  object dsAPOI: TDataSetProvider
    DataSet = spAPOI
    Constraints = True
    Left = 766
    Top = 642
  end
  object spAPOIList: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'AP_ObjItemGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_AP_Obj'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 548
    Top = 586
  end
  object dsAPOIList: TDataSetProvider
    DataSet = spAPOIList
    Constraints = True
    Left = 548
    Top = 634
  end
  object spAP_OperAdd: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'AP_OperAdd;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ExtID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_ObjItem'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ParamType'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@V_Str'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@V1'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 387
    Top = 40
  end
  object spAPSumm: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'AP_ObjItemSummGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_ObjItem'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 240
    Top = 432
  end
  object dsAPSumm: TDataSetProvider
    DataSet = spAPSumm
    Constraints = True
    Left = 240
    Top = 477
  end
  object spBlnDet2: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'UN_BalanceForm_Detail_V2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@isRawZ'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@isNotRawZ'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@isCRN'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@isUp'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@isDown'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@isInFromManuf'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_Manufact'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 630
    Top = 84
  end
  object dsBlnDet2: TDataSetProvider
    DataSet = spBlnDet2
    Constraints = True
    Left = 630
    Top = 129
  end
  object spAccSumm: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'UN_AccSumm;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Acc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Id_Currency'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 240
    Top = 536
    object spAccSummId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object spAccSummSumm: TFloatField
      FieldName = 'Summ'
      ReadOnly = True
    end
    object spAccSummCrnName: TStringField
      FieldName = 'CrnName'
      ReadOnly = True
      Size = 10
    end
  end
  object spArcBy_Ones: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_ArcBy_Ones;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_OperList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@HasViza'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_CAGroup'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Repr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Warehouse'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Acc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Manufact'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_user'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Correct'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Deleted'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperVid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Koeff'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DoUP'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DoDOWN'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperFin'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperWare'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperService'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperOffset'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperCrn'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperEmpty'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Oper201'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@is_Mirr'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_OperParent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 449
    Top = 468
    object spArcBy_Onesid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spArcBy_Onesid_OperParent: TIntegerField
      FieldName = 'id_OperParent'
    end
    object spArcBy_Onesid_old_Oper: TIntegerField
      FieldName = 'id_old_Oper'
    end
    object spArcBy_OnesDateCreate: TDateTimeField
      FieldName = 'DateCreate'
      ReadOnly = True
    end
    object spArcBy_Onesid_LC_Oper: TIntegerField
      FieldName = 'id_LC_Oper'
    end
    object spArcBy_OnesOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object spArcBy_Onesid_Replicator: TIntegerField
      FieldName = 'id_Replicator'
    end
    object spArcBy_OnesReplicatorShortName: TStringField
      FieldName = 'ReplicatorShortName'
      ReadOnly = True
      Size = 10
    end
    object spArcBy_Onesid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spArcBy_Onesid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spArcBy_OnesId_CurrencyBsn: TIntegerField
      FieldName = 'Id_CurrencyBsn'
    end
    object spArcBy_OnesBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spArcBy_OnesBusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object spArcBy_OnesDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object spArcBy_OnesCorrect: TBooleanField
      FieldName = 'Correct'
    end
    object spArcBy_OnesOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spArcBy_OnesId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object spArcBy_OnesCurrencyOperName: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object spArcBy_OnesCurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object spArcBy_OnesAmountOper: TFloatField
      FieldName = 'AmountOper'
      ReadOnly = True
    end
    object spArcBy_OnesAmountOper2: TFloatField
      FieldName = 'AmountOper2'
    end
    object spArcBy_OnesPriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object spArcBy_OnesRateOper: TFloatField
      FieldName = 'RateOper'
    end
    object spArcBy_Onesid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object spArcBy_OnesMeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 10
    end
    object spArcBy_OnesRealKoef: TFloatField
      FieldName = 'RealKoef'
    end
    object spArcBy_OnesAmountOperBaseMS: TFloatField
      FieldName = 'AmountOperBaseMS'
      ReadOnly = True
    end
    object spArcBy_OnesId_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object spArcBy_OnesCurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object spArcBy_OnesCurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object spArcBy_OnesSummSys: TFloatField
      FieldName = 'SummSys'
    end
    object spArcBy_OnesRateSys: TFloatField
      FieldName = 'RateSys'
    end
    object spArcBy_Onesid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spArcBy_Onesid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object spArcBy_Onesid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object spArcBy_OnesSrcName: TStringField
      FieldName = 'SrcName'
      ReadOnly = True
      Size = 50
    end
    object spArcBy_OnesSrcID_Main: TIntegerField
      FieldName = 'SrcID_Main'
      ReadOnly = True
    end
    object spArcBy_Onesid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spArcBy_Onesid_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object spArcBy_Onesid_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object spArcBy_Onesid_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object spArcBy_OnesReprName: TStringField
      FieldName = 'ReprName'
      ReadOnly = True
      Size = 255
    end
    object spArcBy_OnesReprID_Main: TIntegerField
      FieldName = 'ReprID_Main'
      ReadOnly = True
    end
    object spArcBy_OnesId_CurrencyInv: TIntegerField
      FieldName = 'Id_CurrencyInv'
    end
    object spArcBy_OnesPriceInv: TFloatField
      FieldName = 'PriceInv'
    end
    object spArcBy_OnesRateInv: TFloatField
      FieldName = 'RateInv'
    end
    object spArcBy_OnesCurrencyInvName: TStringField
      FieldName = 'CurrencyInvName'
      ReadOnly = True
      Size = 10
    end
    object spArcBy_OnesCurrencyInvShortName: TStringField
      FieldName = 'CurrencyInvShortName'
      ReadOnly = True
      Size = 10
    end
    object spArcBy_Onesid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spArcBy_OnesWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object spArcBy_OnesWareID_Main: TIntegerField
      FieldName = 'WareID_Main'
    end
    object spArcBy_OnesKoeff: TIntegerField
      FieldName = 'Koeff'
    end
    object spArcBy_OnesKoeffName: TStringField
      FieldName = 'KoeffName'
      ReadOnly = True
      Size = 50
    end
    object spArcBy_OnesCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object spArcBy_Onesid_UserChecker: TIntegerField
      FieldName = 'id_UserChecker'
    end
    object spArcBy_Onesid_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object spArcBy_OnesFormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object spArcBy_Onesid_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object spArcBy_OnesFuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object spArcBy_OnesDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object spArcBy_Onesid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spArcBy_OnesContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      ReadOnly = True
      Size = 50
    end
    object spArcBy_Onesid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spArcBy_OnesSummOper: TFloatField
      FieldName = 'SummOper'
      ReadOnly = True
    end
    object spArcBy_OnesTypeName: TStringField
      FieldName = 'TypeName'
      ReadOnly = True
      Size = 30
    end
    object spArcBy_OnesOperNum: TStringField
      FieldName = 'OperNum'
      ReadOnly = True
      Size = 255
    end
    object spArcBy_OnesOperDelta: TFloatField
      FieldName = 'OperDelta'
    end
    object spArcBy_OnesOperRateDelta: TFloatField
      FieldName = 'OperRateDelta'
    end
    object spArcBy_OnesOperTotalDelta: TFloatField
      FieldName = 'OperTotalDelta'
    end
    object spArcBy_OnesDTDiff: TIntegerField
      FieldName = 'DTDiff'
      ReadOnly = True
    end
    object spArcBy_OnesHasViza: TBooleanField
      FieldName = 'HasViza'
      ReadOnly = True
    end
    object spArcBy_OnesOperState: TIntegerField
      FieldName = 'OperState'
    end
    object spArcBy_OnesHidedOper: TBooleanField
      FieldName = 'HidedOper'
    end
    object spArcBy_OnesOperSummSys: TFloatField
      FieldName = 'OperSummSys'
      ReadOnly = True
    end
    object spArcBy_OnesRateMain: TFloatField
      FieldName = 'RateMain'
    end
    object spArcBy_Onesid_Repr_Ex: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object spArcBy_Onesid_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object spArcBy_OnesImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object spArcBy_OnesAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object spArcBy_OnesContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object spArcBy_OnesOperDeltaCrn: TFloatField
      FieldName = 'OperDeltaCrn'
    end
    object spArcBy_OnesOperRateDeltaCrn: TFloatField
      FieldName = 'OperRateDeltaCrn'
    end
    object spArcBy_OnesOperTotalDeltaCrn: TFloatField
      FieldName = 'OperTotalDeltaCrn'
      ReadOnly = True
    end
    object spArcBy_OnesOperCrnName: TStringField
      FieldName = 'OperCrnName'
      Size = 30
    end
    object spArcBy_OnesOperSum_Offer: TFloatField
      FieldName = 'OperSum_Offer'
    end
    object spArcBy_OnesCRN_OLD_OperSum: TFloatField
      FieldName = 'CRN_OLD_OperSum'
    end
    object spArcBy_OnesCRN_OLD_OperSum_Offer: TFloatField
      FieldName = 'CRN_OLD_OperSum_Offer'
    end
    object spArcBy_OnesCRN_OperSum_Inv: TFloatField
      FieldName = 'CRN_OperSum_Inv'
      ReadOnly = True
    end
    object spArcBy_OnesOperSumCalced: TFloatField
      FieldName = 'OperSumCalced'
      ReadOnly = True
    end
    object spArcBy_OnesOperSum_OfferCalced: TFloatField
      FieldName = 'OperSum_OfferCalced'
      ReadOnly = True
    end
    object spArcBy_OnesBlocked: TBooleanField
      FieldName = 'Blocked'
    end
    object spArcBy_OnesCOLUMN1: TStringField
      FieldName = 'COLUMN1'
      ReadOnly = True
      Size = 10
    end
    object spArcBy_Onesid_Ctg_Goods_2: TIntegerField
      FieldName = 'id_Ctg_Goods_2'
    end
    object spArcBy_OnesOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spArcBy_OnesRealDataCreate: TDateTimeField
      FieldName = 'RealDataCreate'
    end
    object spArcBy_OnesOperTypeSIGN: TIntegerField
      FieldName = 'OperTypeSIGN'
      ReadOnly = True
    end
    object spArcBy_OnesHasChild: TIntegerField
      FieldName = 'HasChild'
      ReadOnly = True
    end
    object spArcBy_OnesDig1: TFloatField
      FieldName = 'Dig1'
    end
    object spArcBy_OnesDig2: TFloatField
      FieldName = 'Dig2'
    end
    object spArcBy_OnesDig3: TFloatField
      FieldName = 'Dig3'
    end
    object spArcBy_OnesDig4: TFloatField
      FieldName = 'Dig4'
    end
    object spArcBy_OnesDig5: TFloatField
      FieldName = 'Dig5'
    end
    object spArcBy_OnesDig6: TFloatField
      FieldName = 'Dig6'
    end
    object spArcBy_OnesDig7: TFloatField
      FieldName = 'Dig7'
    end
    object spArcBy_OnesDig8: TFloatField
      FieldName = 'Dig8'
    end
    object spArcBy_OnesDig9: TFloatField
      FieldName = 'Dig9'
    end
    object spArcBy_OnesDig10: TFloatField
      FieldName = 'Dig10'
    end
    object spArcBy_OnesDig11: TFloatField
      FieldName = 'Dig11'
    end
    object spArcBy_OnesDig12: TFloatField
      FieldName = 'Dig12'
    end
    object spArcBy_OnesDig13: TFloatField
      FieldName = 'Dig13'
    end
    object spArcBy_OnesDig14: TFloatField
      FieldName = 'Dig14'
    end
    object spArcBy_OnesDig15: TFloatField
      FieldName = 'Dig15'
    end
    object spArcBy_OnesStr1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object spArcBy_OnesStr2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object spArcBy_OnesStr3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object spArcBy_OnesStr4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object spArcBy_OnesStr5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object spArcBy_OnesStr6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object spArcBy_OnesStr7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object spArcBy_OnesStr8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object spArcBy_OnesStr9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object spArcBy_OnesStr10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object spArcBy_OnesStr11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object spArcBy_OnesStr12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object spArcBy_OnesStr13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object spArcBy_OnesStr14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object spArcBy_OnesStr15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object spArcBy_Onesid_OperWare: TIntegerField
      FieldName = 'id_OperWare'
    end
    object spArcBy_OnesOperVidName: TStringField
      FieldName = 'OperVidName'
      ReadOnly = True
      Size = 50
    end
    object spArcBy_OnesCRN_OperSumRez: TFloatField
      FieldName = 'CRN_OperSumRez'
      ReadOnly = True
    end
    object spArcBy_OnesOnlyDate: TDateTimeField
      FieldName = 'OnlyDate'
      ReadOnly = True
    end
    object spArcBy_Onesis_Mirr: TBooleanField
      FieldName = 'is_Mirr'
    end
    object spArcBy_Onesid_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
      ReadOnly = True
    end
    object spArcBy_Onesid_Warehouse_Group: TIntegerField
      FieldName = 'id_Warehouse_Group'
      ReadOnly = True
    end
    object spArcBy_Onesid_Manufact_Group: TIntegerField
      FieldName = 'id_Manufact_Group'
      ReadOnly = True
    end
    object spArcBy_OnesVatIn: TBooleanField
      FieldName = 'VatIn'
    end
    object spArcBy_OnesAutoGen: TBooleanField
      FieldName = 'AutoGen'
    end
    object spArcBy_OnesCurrencyBsnName: TStringField
      FieldName = 'CurrencyBsnName'
      ReadOnly = True
      Size = 10
    end
  end
  object dsArcBy_Ones: TDataSetProvider
    DataSet = spArcBy_Ones
    Constraints = True
    Left = 449
    Top = 512
  end
  object spArc_OPList: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Arc_OPList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 104
    Top = 45
  end
  object dsArc_OPList: TDataSetProvider
    DataSet = spArc_OPList
    Constraints = True
    Left = 104
    Top = 91
  end
  object spOldOperList: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Arc_OldOperList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_OP_Arc1'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_OP_Arc2'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 112
    Top = 237
  end
  object dsOldOperList: TDataSetProvider
    DataSet = spOldOperList
    Constraints = True
    Left = 112
    Top = 283
  end
  object dsOperWare201: TSQLUpdateDSProvider
    DataSet = spOperWare201
    Constraints = True
    ModifySQL.Strings = (
      'EXEC OP_OperWareEdit'
      '  @id_OperWare =:id_OperWare,'
      '  @id_Goods =:id_Goods,'
      '  @id_Measure =:id_Measure,'
      '  @AmountOper =:AmountOper,'
      '  @PriceOper =:PriceOper,'
      '  @SummSys =:SummSys,'
      '  @PriceInv =:PriceInv')
    InsertSQL.Strings = (
      'EXEC OP_OperWareAdd'
      '  @id_Oper =:id_Oper,'
      '  @id_Goods =:id_Goods,'
      '  @id_Measure =:id_Measure,'
      '  @AmountOper =:AmountOper,'
      '  @PriceOper =:PriceOper,'
      '  @SummSys =:SummSys,'
      '  @PriceInv =:PriceInv')
    DeleteSQL.Strings = (
      'EXEC OP_OperWareDel'
      '  @id_OperWare =:id_OperWare'
      ' ')
    Left = 139
    Top = 724
  end
  object spOperWare201: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'OP_OperGetWare_v201;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Mode'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 139
    Top = 684
    object AutoIncField5: TAutoIncField
      FieldName = 'id_OperWare'
    end
    object IntegerField10: TIntegerField
      FieldName = 'id_Oper'
    end
    object FloatField4: TFloatField
      FieldName = 'AmountOper'
    end
    object IntegerField11: TIntegerField
      FieldName = 'id_Measure'
    end
    object FloatField5: TFloatField
      FieldName = 'PriceOper'
    end
    object FloatField7: TFloatField
      FieldName = 'SummSys'
    end
    object FloatField8: TFloatField
      FieldName = 'PriceInv'
    end
    object IntegerField12: TIntegerField
      FieldName = 'id_Goods'
    end
    object StringField26: TStringField
      FieldName = 'MeasureName'
      Size = 10
    end
    object FloatField9: TFloatField
      FieldName = 'RealKoef'
    end
    object FloatField10: TFloatField
      FieldName = 'AmountOperBaseMS'
    end
    object StringField27: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object IntegerField13: TIntegerField
      FieldName = 'WareID_Main'
    end
    object spOperWare201AmountOperBaseMS_2: TFloatField
      FieldName = 'AmountOperBaseMS_2'
    end
    object spOperWare201AmountOperBaseMS_1: TFloatField
      FieldName = 'AmountOperBaseMS_1'
    end
    object spOperWare201id_Raw: TIntegerField
      FieldName = 'id_Raw'
    end
    object spOperWare201id_ExtRaw: TIntegerField
      FieldName = 'id_ExtRaw'
    end
    object spOperWare201id_Service: TIntegerField
      FieldName = 'id_Service'
    end
    object spOperWare201SummOper_2: TFloatField
      FieldName = 'SummOper_2'
    end
    object spOperWare201SummSys_2: TFloatField
      FieldName = 'SummSys_2'
    end
    object spOperWare201PriceInv_2: TFloatField
      FieldName = 'PriceInv_2'
    end
    object spOperWare201DMName: TStringField
      FieldName = 'DMName'
      Size = 10
    end
    object spOperWare201SummOper_1: TFloatField
      FieldName = 'SummOper_1'
    end
    object spOperWare201SummSys_1: TFloatField
      FieldName = 'SummSys_1'
    end
    object spOperWare201PriceInv_1: TFloatField
      FieldName = 'PriceInv_1'
    end
  end
  object dsBalDet: TDataSetProvider
    DataSet = spBalDet
    Constraints = True
    Left = 72
    Top = 610
  end
  object spBalDet: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'UN_BalanceForm_Detail_V3;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@OrdNum'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Acc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Manufact'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_WareHouse'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_CA'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 16
    Top = 598
    object spBalDetWorkSum: TFloatField
      FieldName = 'WorkSum'
    end
    object spBalDetid_Oper: TAutoIncField
      FieldName = 'id_Oper'
      ReadOnly = True
    end
    object spBalDetid_OperParent: TIntegerField
      FieldName = 'id_OperParent'
    end
    object spBalDetid_old_Oper: TIntegerField
      FieldName = 'id_old_Oper'
    end
    object spBalDetDateCreate: TDateTimeField
      FieldName = 'DateCreate'
      ReadOnly = True
    end
    object spBalDetid_LC_Oper: TIntegerField
      FieldName = 'id_LC_Oper'
    end
    object spBalDetOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object spBalDetid_Replicator: TIntegerField
      FieldName = 'id_Replicator'
    end
    object spBalDetReplicatorShortName: TStringField
      FieldName = 'ReplicatorShortName'
      Size = 5
    end
    object spBalDetid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spBalDetid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spBalDetId_CurrencyBsn: TIntegerField
      FieldName = 'Id_CurrencyBsn'
    end
    object spBalDetBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spBalDetBusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object spBalDetDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object spBalDetCorrect: TBooleanField
      FieldName = 'Correct'
    end
    object spBalDetOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spBalDetId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object spBalDetCurrencyOperName: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object spBalDetCurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object spBalDetAmountOper: TFloatField
      FieldName = 'AmountOper'
      ReadOnly = True
    end
    object spBalDetAmountOper2: TFloatField
      FieldName = 'AmountOper2'
      ReadOnly = True
    end
    object spBalDetPriceOper: TFloatField
      FieldName = 'PriceOper'
      ReadOnly = True
    end
    object spBalDetRateOper: TFloatField
      FieldName = 'RateOper'
    end
    object spBalDetid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object spBalDetMeasureName: TStringField
      FieldName = 'MeasureName'
      ReadOnly = True
      Size = 10
    end
    object spBalDetRealKoef: TFloatField
      FieldName = 'RealKoef'
      ReadOnly = True
    end
    object spBalDetAmountOperBaseMS: TFloatField
      FieldName = 'AmountOperBaseMS'
      ReadOnly = True
    end
    object spBalDetId_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object spBalDetCurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object spBalDetCurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object spBalDetSummSys: TFloatField
      FieldName = 'SummSys'
      ReadOnly = True
    end
    object spBalDetRateSys: TFloatField
      FieldName = 'RateSys'
    end
    object spBalDetid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spBalDetid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object spBalDetid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object spBalDetSrcName: TStringField
      FieldName = 'SrcName'
      ReadOnly = True
      Size = 50
    end
    object spBalDetSrcID_Main: TIntegerField
      FieldName = 'SrcID_Main'
      ReadOnly = True
    end
    object spBalDetid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spBalDetid_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object spBalDetid_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object spBalDetid_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object spBalDetReprName: TStringField
      FieldName = 'ReprName'
      ReadOnly = True
      Size = 255
    end
    object spBalDetReprID_Main: TIntegerField
      FieldName = 'ReprID_Main'
      ReadOnly = True
    end
    object spBalDetId_CurrencyInv: TIntegerField
      FieldName = 'Id_CurrencyInv'
    end
    object spBalDetPriceInv: TFloatField
      FieldName = 'PriceInv'
    end
    object spBalDetRateInv: TFloatField
      FieldName = 'RateInv'
    end
    object spBalDetCurrencyInvName: TStringField
      FieldName = 'CurrencyInvName'
      ReadOnly = True
      Size = 30
    end
    object spBalDetCurrencyInvShortName: TStringField
      FieldName = 'CurrencyInvShortName'
      ReadOnly = True
      Size = 30
    end
    object spBalDetid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spBalDetWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object spBalDetWareID_Main: TIntegerField
      FieldName = 'WareID_Main'
    end
    object spBalDetKoeff: TIntegerField
      FieldName = 'Koeff'
    end
    object spBalDetKoeffName: TStringField
      FieldName = 'KoeffName'
      ReadOnly = True
      Size = 50
    end
    object spBalDetCheckDate: TDateTimeField
      FieldName = 'CheckDate'
      ReadOnly = True
    end
    object spBalDetid_UserChecker: TIntegerField
      FieldName = 'id_UserChecker'
      ReadOnly = True
    end
    object spBalDetid_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object spBalDetFormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object spBalDetid_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object spBalDetFuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object spBalDetDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object spBalDetid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
      ReadOnly = True
    end
    object spBalDetContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      ReadOnly = True
      Size = 50
    end
    object spBalDetid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spBalDetSummOper: TFloatField
      FieldName = 'SummOper'
      ReadOnly = True
    end
    object spBalDetTypeName: TStringField
      FieldName = 'TypeName'
      ReadOnly = True
      Size = 30
    end
    object spBalDetOperNum: TStringField
      FieldName = 'OperNum'
      ReadOnly = True
      Size = 255
    end
    object spBalDetOperDelta: TFloatField
      FieldName = 'OperDelta'
      ReadOnly = True
    end
    object spBalDetOperRateDelta: TFloatField
      FieldName = 'OperRateDelta'
      ReadOnly = True
    end
    object spBalDetOperTotalDelta: TFloatField
      FieldName = 'OperTotalDelta'
      ReadOnly = True
    end
    object spBalDetDTDiff: TIntegerField
      FieldName = 'DTDiff'
      ReadOnly = True
    end
    object spBalDetHasViza: TBooleanField
      FieldName = 'HasViza'
      ReadOnly = True
    end
    object spBalDetOperState: TIntegerField
      FieldName = 'OperState'
    end
    object spBalDetHidedOper: TBooleanField
      FieldName = 'HidedOper'
    end
    object spBalDetOperSummSys: TFloatField
      FieldName = 'OperSummSys'
      ReadOnly = True
    end
    object spBalDetRateMain: TFloatField
      FieldName = 'RateMain'
    end
    object spBalDetid_Repr_Ex: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object spBalDetid_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object spBalDetImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object spBalDetAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object spBalDetContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object spBalDetOperDeltaCrn: TFloatField
      FieldName = 'OperDeltaCrn'
      ReadOnly = True
    end
    object spBalDetOperRateDeltaCrn: TFloatField
      FieldName = 'OperRateDeltaCrn'
      ReadOnly = True
    end
    object spBalDetOperTotalDeltaCrn: TFloatField
      FieldName = 'OperTotalDeltaCrn'
      ReadOnly = True
    end
    object spBalDetOperCrnName: TStringField
      FieldName = 'OperCrnName'
      ReadOnly = True
      Size = 10
    end
    object spBalDetOperSum_Offer: TFloatField
      FieldName = 'OperSum_Offer'
      ReadOnly = True
    end
    object spBalDetCRN_OLD_OperSum: TFloatField
      FieldName = 'CRN_OLD_OperSum'
      ReadOnly = True
    end
    object spBalDetCRN_OLD_OperSum_Offer: TFloatField
      FieldName = 'CRN_OLD_OperSum_Offer'
      ReadOnly = True
    end
    object spBalDetCRN_OperSum_Inv: TFloatField
      FieldName = 'CRN_OperSum_Inv'
      ReadOnly = True
    end
    object spBalDetOperSumCalced: TFloatField
      FieldName = 'OperSumCalced'
      ReadOnly = True
    end
    object spBalDetOperSum_OfferCalced: TFloatField
      FieldName = 'OperSum_OfferCalced'
      ReadOnly = True
    end
    object spBalDetBlocked: TBooleanField
      FieldName = 'Blocked'
    end
    object spBalDetCurrencyBsnName: TStringField
      FieldName = 'CurrencyBsnName'
      ReadOnly = True
      Size = 10
    end
    object spBalDetid_Ctg_Goods_2: TIntegerField
      FieldName = 'id_Ctg_Goods_2'
    end
    object spBalDetOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spBalDetRealDataCreate: TDateTimeField
      FieldName = 'RealDataCreate'
    end
    object spBalDetOperTypeSIGN: TIntegerField
      FieldName = 'OperTypeSIGN'
      ReadOnly = True
    end
    object spBalDetHasChild: TIntegerField
      FieldName = 'HasChild'
      ReadOnly = True
    end
    object spBalDetDig1: TFloatField
      FieldName = 'Dig1'
    end
    object spBalDetDig2: TFloatField
      FieldName = 'Dig2'
    end
    object spBalDetDig3: TFloatField
      FieldName = 'Dig3'
    end
    object spBalDetDig4: TFloatField
      FieldName = 'Dig4'
    end
    object spBalDetDig5: TFloatField
      FieldName = 'Dig5'
    end
    object spBalDetDig6: TFloatField
      FieldName = 'Dig6'
    end
    object spBalDetDig7: TFloatField
      FieldName = 'Dig7'
    end
    object spBalDetDig8: TFloatField
      FieldName = 'Dig8'
    end
    object spBalDetDig9: TFloatField
      FieldName = 'Dig9'
    end
    object spBalDetDig10: TFloatField
      FieldName = 'Dig10'
    end
    object spBalDetDig11: TFloatField
      FieldName = 'Dig11'
    end
    object spBalDetDig12: TFloatField
      FieldName = 'Dig12'
    end
    object spBalDetDig13: TFloatField
      FieldName = 'Dig13'
    end
    object spBalDetDig14: TFloatField
      FieldName = 'Dig14'
    end
    object spBalDetDig15: TFloatField
      FieldName = 'Dig15'
    end
    object spBalDetStr1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object spBalDetStr2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object spBalDetStr3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object spBalDetStr4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object spBalDetStr5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object spBalDetStr6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object spBalDetStr7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object spBalDetStr8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object spBalDetStr9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object spBalDetStr10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object spBalDetStr11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object spBalDetStr12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object spBalDetStr13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object spBalDetStr14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object spBalDetStr15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object spBalDetid_OperWare: TAutoIncField
      FieldName = 'id_OperWare'
      ReadOnly = True
    end
    object spBalDetOperVidName: TStringField
      FieldName = 'OperVidName'
      ReadOnly = True
      Size = 50
    end
    object spBalDetCRN_OperSumRez: TFloatField
      FieldName = 'CRN_OperSumRez'
      ReadOnly = True
    end
    object spBalDetOnlyDate: TDateTimeField
      FieldName = 'OnlyDate'
      ReadOnly = True
    end
    object spBalDetis_Mirr: TBooleanField
      FieldName = 'is_Mirr'
      ReadOnly = True
    end
    object spBalDetid_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
      ReadOnly = True
    end
    object spBalDetid_Warehouse_Group: TIntegerField
      FieldName = 'id_Warehouse_Group'
      ReadOnly = True
    end
    object spBalDetid_Manufact_Group: TIntegerField
      FieldName = 'id_Manufact_Group'
      ReadOnly = True
    end
    object spBalDetVatIn: TBooleanField
      FieldName = 'VatIn'
    end
    object spBalDetAutoGen: TBooleanField
      FieldName = 'AutoGen'
    end
    object spBalDetCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      ReadOnly = True
      Size = 152
    end
    object spBalDetCheckerFIO: TStringField
      FieldName = 'CheckerFIO'
      ReadOnly = True
      Size = 152
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 192
  end
  object dsAccSumm: TDataSetProvider
    DataSet = spAccSumm
    Constraints = True
    Left = 240
    Top = 584
  end
  object spCASumm: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'UN_CASumm;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Id_Currency'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 232
    Top = 632
    object spCASummid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spCASummId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object spCASummSumm: TFloatField
      FieldName = 'Summ'
      ReadOnly = True
    end
    object spCASummOperSumm: TFloatField
      FieldName = 'OperSumm'
      ReadOnly = True
    end
    object spCASummCrnName: TStringField
      FieldName = 'CrnName'
      ReadOnly = True
      Size = 10
    end
  end
  object dsCASumm: TDataSetProvider
    DataSet = spCASumm
    Constraints = True
    Left = 240
    Top = 680
  end
  object spGetFirstRepr: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'CA_GetFirstRepr;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 40
    Top = 56
    object spGetFirstReprid_Repr: TAutoIncField
      FieldName = 'id_Repr'
      ReadOnly = True
    end
  end
  object dsCAByDateLastBay: TDataSetProvider
    DataSet = spCAByDateLastBay
    Constraints = True
    Left = 748
    Top = 336
  end
  object spCAByDateLastBay: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_CAByDateLastBay;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 748
    Top = 288
    object spCAByDateLastBayID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object spCAByDateLastBayid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spCAByDateLastBayid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spCAByDateLastBayid_CAGroup2: TIntegerField
      FieldName = 'id_CAGroup2'
    end
    object spCAByDateLastBayName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spCAByDateLastBayLastDate: TDateTimeField
      FieldName = 'LastDate'
    end
    object spCAByDateLastBayHasCH: TIntegerField
      FieldName = 'HasCH'
    end
  end
  object spCAPrfLoss: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_CAPrfLoss;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OnlyNotZerro'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 580
    Top = 248
    object spCAPrfLossID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object spCAPrfLossName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spCAPrfLossid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spCAPrfLossid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spCAPrfLossWareProff: TFloatField
      FieldName = 'WareProff'
    end
    object spCAPrfLossWareLoss: TFloatField
      FieldName = 'WareLoss'
    end
    object spCAPrfLossFinProff: TFloatField
      FieldName = 'FinProff'
    end
    object spCAPrfLossFinLoss: TFloatField
      FieldName = 'FinLoss'
    end
    object spCAPrfLossOffProff: TFloatField
      FieldName = 'OffProff'
    end
    object spCAPrfLossOffLoss: TFloatField
      FieldName = 'OffLoss'
    end
    object spCAPrfLossCurProff: TFloatField
      FieldName = 'CurProff'
    end
    object spCAPrfLossCurLoss: TFloatField
      FieldName = 'CurLoss'
    end
    object spCAPrfLossInvSumm: TFloatField
      FieldName = 'InvSumm'
    end
    object spCAPrfLossRealWareProff: TFloatField
      FieldName = 'RealWareProff'
    end
    object spCAPrfLossid_CAGroup2: TIntegerField
      FieldName = 'id_CAGroup2'
    end
    object spCAPrfLossRent: TFloatField
      FieldName = 'Rent'
      ReadOnly = True
    end
  end
  object dsCAPrfLoss: TDataSetProvider
    DataSet = spCAPrfLoss
    Constraints = True
    Left = 580
    Top = 296
  end
  object spPrfLoss: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = '__UN_PrfLoss;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Goods'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@NeedOperData'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@WareProff'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@WareLoss'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@FinProff'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@FinLoss'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OffProff'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OffLoss'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@CurProff'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@CurLoss'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 582
    Top = 100
    object spPrfLossid_Oper2: TIntegerField
      FieldName = 'id_Oper2'
    end
    object spPrfLossid_OperWare2: TIntegerField
      FieldName = 'id_OperWare2'
    end
    object spPrfLossWareProff: TFloatField
      FieldName = 'WareProff'
    end
    object spPrfLossWareLoss: TFloatField
      FieldName = 'WareLoss'
    end
    object spPrfLossFinProff: TFloatField
      FieldName = 'FinProff'
    end
    object spPrfLossFinLoss: TFloatField
      FieldName = 'FinLoss'
    end
    object spPrfLossOffProff: TFloatField
      FieldName = 'OffProff'
    end
    object spPrfLossOffLoss: TFloatField
      FieldName = 'OffLoss'
    end
    object spPrfLossCurProff: TFloatField
      FieldName = 'CurProff'
    end
    object spPrfLossCurLoss: TFloatField
      FieldName = 'CurLoss'
    end
    object spPrfLossInvSumm: TFloatField
      FieldName = 'InvSumm'
    end
    object spPrfLossRealWareProff: TFloatField
      FieldName = 'RealWareProff'
    end
    object spPrfLossid_Oper: TAutoIncField
      FieldName = 'id_Oper'
      ReadOnly = True
    end
    object spPrfLossid_OperParent: TIntegerField
      FieldName = 'id_OperParent'
    end
    object spPrfLossid_old_Oper: TIntegerField
      FieldName = 'id_old_Oper'
    end
    object spPrfLossDateCreate: TDateTimeField
      FieldName = 'DateCreate'
      ReadOnly = True
    end
    object spPrfLossid_LC_Oper: TIntegerField
      FieldName = 'id_LC_Oper'
    end
    object spPrfLossOperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object spPrfLossid_Replicator: TIntegerField
      FieldName = 'id_Replicator'
    end
    object spPrfLossReplicatorShortName: TStringField
      FieldName = 'ReplicatorShortName'
      Size = 5
    end
    object spPrfLossid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spPrfLossid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spPrfLossId_CurrencyBsn: TIntegerField
      FieldName = 'Id_CurrencyBsn'
    end
    object spPrfLossBusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spPrfLossBusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object spPrfLossDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object spPrfLossCorrect: TBooleanField
      FieldName = 'Correct'
    end
    object spPrfLossOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spPrfLossId_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object spPrfLossCurrencyOperName: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object spPrfLossCurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object spPrfLossAmountOper: TFloatField
      FieldName = 'AmountOper'
      ReadOnly = True
    end
    object spPrfLossAmountOper2: TFloatField
      FieldName = 'AmountOper2'
      ReadOnly = True
    end
    object spPrfLossPriceOper: TFloatField
      FieldName = 'PriceOper'
      ReadOnly = True
    end
    object spPrfLossRateOper: TFloatField
      FieldName = 'RateOper'
    end
    object spPrfLossid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object spPrfLossMeasureName: TStringField
      FieldName = 'MeasureName'
      ReadOnly = True
      Size = 10
    end
    object spPrfLossRealKoef: TFloatField
      FieldName = 'RealKoef'
      ReadOnly = True
    end
    object spPrfLossAmountOperBaseMS: TFloatField
      FieldName = 'AmountOperBaseMS'
      ReadOnly = True
    end
    object spPrfLossId_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object spPrfLossCurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object spPrfLossCurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object spPrfLossSummSys: TFloatField
      FieldName = 'SummSys'
      ReadOnly = True
    end
    object spPrfLossRateSys: TFloatField
      FieldName = 'RateSys'
    end
    object spPrfLossid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spPrfLossid_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object spPrfLossid_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object spPrfLossSrcName: TStringField
      FieldName = 'SrcName'
      ReadOnly = True
      Size = 50
    end
    object spPrfLossSrcID_Main: TIntegerField
      FieldName = 'SrcID_Main'
      ReadOnly = True
    end
    object spPrfLossid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spPrfLossid_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object spPrfLossid_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object spPrfLossid_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object spPrfLossReprName: TStringField
      FieldName = 'ReprName'
      ReadOnly = True
      Size = 255
    end
    object spPrfLossReprID_Main: TIntegerField
      FieldName = 'ReprID_Main'
      ReadOnly = True
    end
    object spPrfLossId_CurrencyInv: TIntegerField
      FieldName = 'Id_CurrencyInv'
    end
    object spPrfLossPriceInv: TFloatField
      FieldName = 'PriceInv'
    end
    object spPrfLossRateInv: TFloatField
      FieldName = 'RateInv'
    end
    object spPrfLossCurrencyInvName: TStringField
      FieldName = 'CurrencyInvName'
      ReadOnly = True
      Size = 30
    end
    object spPrfLossCurrencyInvShortName: TStringField
      FieldName = 'CurrencyInvShortName'
      ReadOnly = True
      Size = 30
    end
    object spPrfLossid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spPrfLossWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object spPrfLossWareID_Main: TIntegerField
      FieldName = 'WareID_Main'
    end
    object spPrfLossKoeff: TIntegerField
      FieldName = 'Koeff'
    end
    object spPrfLossKoeffName: TStringField
      FieldName = 'KoeffName'
      ReadOnly = True
      Size = 50
    end
    object spPrfLossCheckDate: TDateTimeField
      FieldName = 'CheckDate'
      ReadOnly = True
    end
    object spPrfLossid_UserChecker: TIntegerField
      FieldName = 'id_UserChecker'
      ReadOnly = True
    end
    object spPrfLossid_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object spPrfLossFormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object spPrfLossid_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object spPrfLossFuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object spPrfLossDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object spPrfLossid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
      ReadOnly = True
    end
    object spPrfLossContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      ReadOnly = True
      Size = 50
    end
    object spPrfLossid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spPrfLossSummOper: TFloatField
      FieldName = 'SummOper'
      ReadOnly = True
    end
    object spPrfLossTypeName: TStringField
      FieldName = 'TypeName'
      ReadOnly = True
      Size = 30
    end
    object spPrfLossOperNum: TStringField
      FieldName = 'OperNum'
      ReadOnly = True
      Size = 255
    end
    object spPrfLossOperDelta: TFloatField
      FieldName = 'OperDelta'
      ReadOnly = True
    end
    object spPrfLossOperRateDelta: TFloatField
      FieldName = 'OperRateDelta'
      ReadOnly = True
    end
    object spPrfLossOperTotalDelta: TFloatField
      FieldName = 'OperTotalDelta'
      ReadOnly = True
    end
    object spPrfLossDTDiff: TIntegerField
      FieldName = 'DTDiff'
      ReadOnly = True
    end
    object spPrfLossHasViza: TBooleanField
      FieldName = 'HasViza'
      ReadOnly = True
    end
    object spPrfLossOperState: TIntegerField
      FieldName = 'OperState'
    end
    object spPrfLossHidedOper: TBooleanField
      FieldName = 'HidedOper'
    end
    object spPrfLossOperSummSys: TFloatField
      FieldName = 'OperSummSys'
      ReadOnly = True
    end
    object spPrfLossRateMain: TFloatField
      FieldName = 'RateMain'
    end
    object spPrfLossid_Repr_Ex: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object spPrfLossid_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object spPrfLossImp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object spPrfLossAccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object spPrfLossContract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object spPrfLossOperDeltaCrn: TFloatField
      FieldName = 'OperDeltaCrn'
      ReadOnly = True
    end
    object spPrfLossOperRateDeltaCrn: TFloatField
      FieldName = 'OperRateDeltaCrn'
      ReadOnly = True
    end
    object spPrfLossOperTotalDeltaCrn: TFloatField
      FieldName = 'OperTotalDeltaCrn'
      ReadOnly = True
    end
    object spPrfLossOperCrnName: TStringField
      FieldName = 'OperCrnName'
      ReadOnly = True
      Size = 10
    end
    object spPrfLossOperSum_Offer: TFloatField
      FieldName = 'OperSum_Offer'
      ReadOnly = True
    end
    object spPrfLossCRN_OLD_OperSum: TFloatField
      FieldName = 'CRN_OLD_OperSum'
      ReadOnly = True
    end
    object spPrfLossCRN_OLD_OperSum_Offer: TFloatField
      FieldName = 'CRN_OLD_OperSum_Offer'
      ReadOnly = True
    end
    object spPrfLossCRN_OperSum_Inv: TFloatField
      FieldName = 'CRN_OperSum_Inv'
      ReadOnly = True
    end
    object spPrfLossOperSumCalced: TFloatField
      FieldName = 'OperSumCalced'
      ReadOnly = True
    end
    object spPrfLossOperSum_OfferCalced: TFloatField
      FieldName = 'OperSum_OfferCalced'
      ReadOnly = True
    end
    object spPrfLossBlocked: TBooleanField
      FieldName = 'Blocked'
    end
    object spPrfLossCurrencyBsnName: TStringField
      FieldName = 'CurrencyBsnName'
      ReadOnly = True
      Size = 10
    end
    object spPrfLossid_Ctg_Goods_2: TIntegerField
      FieldName = 'id_Ctg_Goods_2'
    end
    object spPrfLossOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spPrfLossRealDataCreate: TDateTimeField
      FieldName = 'RealDataCreate'
    end
    object spPrfLossOperTypeSIGN: TIntegerField
      FieldName = 'OperTypeSIGN'
      ReadOnly = True
    end
    object spPrfLossHasChild: TIntegerField
      FieldName = 'HasChild'
      ReadOnly = True
    end
    object spPrfLossDig1: TFloatField
      FieldName = 'Dig1'
    end
    object spPrfLossDig2: TFloatField
      FieldName = 'Dig2'
    end
    object spPrfLossDig3: TFloatField
      FieldName = 'Dig3'
    end
    object spPrfLossDig4: TFloatField
      FieldName = 'Dig4'
    end
    object spPrfLossDig5: TFloatField
      FieldName = 'Dig5'
    end
    object spPrfLossDig6: TFloatField
      FieldName = 'Dig6'
    end
    object spPrfLossDig7: TFloatField
      FieldName = 'Dig7'
    end
    object spPrfLossDig8: TFloatField
      FieldName = 'Dig8'
    end
    object spPrfLossDig9: TFloatField
      FieldName = 'Dig9'
    end
    object spPrfLossDig10: TFloatField
      FieldName = 'Dig10'
    end
    object spPrfLossDig11: TFloatField
      FieldName = 'Dig11'
    end
    object spPrfLossDig12: TFloatField
      FieldName = 'Dig12'
    end
    object spPrfLossDig13: TFloatField
      FieldName = 'Dig13'
    end
    object spPrfLossDig14: TFloatField
      FieldName = 'Dig14'
    end
    object spPrfLossDig15: TFloatField
      FieldName = 'Dig15'
    end
    object spPrfLossStr1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object spPrfLossStr2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object spPrfLossStr3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object spPrfLossStr4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object spPrfLossStr5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object spPrfLossStr6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object spPrfLossStr7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object spPrfLossStr8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object spPrfLossStr9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object spPrfLossStr10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object spPrfLossStr11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object spPrfLossStr12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object spPrfLossStr13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object spPrfLossStr14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object spPrfLossStr15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object spPrfLossid_OperWare: TAutoIncField
      FieldName = 'id_OperWare'
      ReadOnly = True
    end
    object spPrfLossOperVidName: TStringField
      FieldName = 'OperVidName'
      ReadOnly = True
      Size = 50
    end
    object spPrfLossCRN_OperSumRez: TFloatField
      FieldName = 'CRN_OperSumRez'
      ReadOnly = True
    end
    object spPrfLossOnlyDate: TDateTimeField
      FieldName = 'OnlyDate'
      ReadOnly = True
    end
    object spPrfLossis_Mirr: TBooleanField
      FieldName = 'is_Mirr'
      ReadOnly = True
    end
    object spPrfLossid_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
      ReadOnly = True
    end
    object spPrfLossid_Warehouse_Group: TIntegerField
      FieldName = 'id_Warehouse_Group'
      ReadOnly = True
    end
    object spPrfLossid_Manufact_Group: TIntegerField
      FieldName = 'id_Manufact_Group'
      ReadOnly = True
    end
    object spPrfLossVatIn: TBooleanField
      FieldName = 'VatIn'
    end
    object spPrfLossAutoGen: TBooleanField
      FieldName = 'AutoGen'
    end
    object spPrfLossCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      ReadOnly = True
      Size = 152
    end
    object spPrfLossCheckerFIO: TStringField
      FieldName = 'CheckerFIO'
      ReadOnly = True
      Size = 152
    end
  end
  object dsPrfLoss: TDataSetProvider
    DataSet = spPrfLoss
    Constraints = True
    Left = 582
    Top = 145
  end
  object spWarePrfLoss: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_WarePrfLoss;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@OnlyNotZerro'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end>
    Left = 596
    Top = 376
    object spWarePrfLossID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object spWarePrfLossid_Ctg_Goods: TIntegerField
      FieldName = 'id_Ctg_Goods'
    end
    object spWarePrfLossid_BaseCtg_Goods: TIntegerField
      FieldName = 'id_BaseCtg_Goods'
    end
    object spWarePrfLossid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spWarePrfLossName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spWarePrfLossWareProff: TFloatField
      FieldName = 'WareProff'
    end
    object spWarePrfLossWareLoss: TFloatField
      FieldName = 'WareLoss'
    end
    object spWarePrfLossCurProff: TFloatField
      FieldName = 'CurProff'
    end
    object spWarePrfLossCurLoss: TFloatField
      FieldName = 'CurLoss'
    end
    object spWarePrfLossInvSumm: TFloatField
      FieldName = 'InvSumm'
    end
    object spWarePrfLossRealWareProff: TFloatField
      FieldName = 'RealWareProff'
    end
    object spWarePrfLossRent: TFloatField
      FieldName = 'Rent'
      ReadOnly = True
    end
  end
  object dsWarePrfLoss: TDataSetProvider
    DataSet = spWarePrfLoss
    Constraints = True
    Left = 596
    Top = 424
  end
  object dsCtg_GetGoods: TDataSetProvider
    DataSet = spCtg_GetGoods
    Constraints = True
    Left = 360
    Top = 330
  end
  object spCtg_GetGoods: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'PL_Ctg_GetGoods;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 360
    Top = 284
    object spCtg_GetGoodsId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object spCtg_GetGoodsName: TStringField
      FieldName = 'Name'
      Size = 255
    end
  end
  object dsDoc_Inv: TDataSetProvider
    DataSet = spDoc_Inv
    Constraints = True
    Left = 282
    Top = 94
  end
  object spArc2: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_ArcBy_v3;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@HasViza'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_CAGroup'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Repr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Warehouse'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Acc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Manufact'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_user'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Correct'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Deleted'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperVid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Koeff'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DoUP'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DoDOWN'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperFin'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperWare'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperService'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperOffset'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperCrn'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperEmpty'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Oper201'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@is_Mirr'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_OperParent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 209
    Top = 142
    object spArc2id_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spArc2DateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object spArc2OperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object spArc2BusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spArc2Correct: TBooleanField
      FieldName = 'Correct'
    end
    object spArc2OperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spArc2CurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object spArc2AmountOper: TFloatField
      FieldName = 'AmountOper'
    end
    object spArc2AmountOper2: TFloatField
      FieldName = 'AmountOper2'
    end
    object spArc2PriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object spArc2MeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 10
    end
    object spArc2CurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object spArc2SummSys: TFloatField
      FieldName = 'SummSys'
    end
    object spArc2id_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spArc2id_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object spArc2id_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object spArc2SrcName: TStringField
      FieldName = 'SrcName'
      Size = 50
    end
    object spArc2SrcID_Main: TIntegerField
      FieldName = 'SrcID_Main'
    end
    object spArc2id_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spArc2id_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object spArc2id_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object spArc2id_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object spArc2ReprName: TStringField
      FieldName = 'ReprName'
      Size = 255
    end
    object spArc2ReprID_Main: TIntegerField
      FieldName = 'ReprID_Main'
    end
    object spArc2PriceInv: TFloatField
      FieldName = 'PriceInv'
    end
    object spArc2CurrencyInvShortName: TStringField
      FieldName = 'CurrencyInvShortName'
      Size = 30
    end
    object spArc2id_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spArc2WareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object spArc2WareID_Main: TIntegerField
      FieldName = 'WareID_Main'
    end
    object spArc2Koeff: TIntegerField
      FieldName = 'Koeff'
    end
    object spArc2KoeffName: TStringField
      FieldName = 'KoeffName'
      Size = 50
    end
    object spArc2CheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object spArc2id_UserChecker: TIntegerField
      FieldName = 'id_UserChecker'
    end
    object spArc2FormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object spArc2FuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object spArc2Deleted: TBooleanField
      FieldName = 'Deleted'
    end
    object spArc2id_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spArc2ContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      Size = 50
    end
    object spArc2SummOper: TFloatField
      FieldName = 'SummOper'
    end
    object spArc2TypeName: TStringField
      FieldName = 'TypeName'
      Size = 30
    end
    object spArc2OperNum: TStringField
      FieldName = 'OperNum'
      Size = 255
    end
    object spArc2OperDelta: TFloatField
      FieldName = 'OperDelta'
    end
    object spArc2OperRateDelta: TFloatField
      FieldName = 'OperRateDelta'
    end
    object spArc2OperTotalDelta: TFloatField
      FieldName = 'OperTotalDelta'
    end
    object spArc2DTDiff: TIntegerField
      FieldName = 'DTDiff'
    end
    object spArc2HasViza: TBooleanField
      FieldName = 'HasViza'
    end
    object spArc2OperState: TIntegerField
      FieldName = 'OperState'
    end
    object spArc2OperSummSys: TFloatField
      FieldName = 'OperSummSys'
    end
    object spArc2Imp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object spArc2AccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object spArc2Contract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object spArc2OperDeltaCrn: TFloatField
      FieldName = 'OperDeltaCrn'
    end
    object spArc2OperRateDeltaCrn: TFloatField
      FieldName = 'OperRateDeltaCrn'
    end
    object spArc2OperTotalDeltaCrn: TFloatField
      FieldName = 'OperTotalDeltaCrn'
    end
    object spArc2OperCrnName: TStringField
      FieldName = 'OperCrnName'
      Size = 10
    end
    object spArc2OperSum_Offer: TFloatField
      FieldName = 'OperSum_Offer'
    end
    object spArc2CRN_OLD_OperSum: TFloatField
      FieldName = 'CRN_OLD_OperSum'
    end
    object spArc2CRN_OLD_OperSum_Offer: TFloatField
      FieldName = 'CRN_OLD_OperSum_Offer'
    end
    object spArc2CRN_OperSum_Inv: TFloatField
      FieldName = 'CRN_OperSum_Inv'
    end
    object spArc2OperSumCalced: TFloatField
      FieldName = 'OperSumCalced'
    end
    object spArc2OperSum_OfferCalced: TFloatField
      FieldName = 'OperSum_OfferCalced'
    end
    object spArc2Blocked: TBooleanField
      FieldName = 'Blocked'
    end
    object spArc2CurrencyBsnName: TStringField
      FieldName = 'CurrencyBsnName'
      Size = 10
    end
    object spArc2OpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spArc2RealDataCreate: TDateTimeField
      FieldName = 'RealDataCreate'
    end
    object spArc2Dig1: TFloatField
      FieldName = 'Dig1'
    end
    object spArc2Dig2: TFloatField
      FieldName = 'Dig2'
    end
    object spArc2Dig3: TFloatField
      FieldName = 'Dig3'
    end
    object spArc2Dig4: TFloatField
      FieldName = 'Dig4'
    end
    object spArc2Dig5: TFloatField
      FieldName = 'Dig5'
    end
    object spArc2Dig6: TFloatField
      FieldName = 'Dig6'
    end
    object spArc2Dig7: TFloatField
      FieldName = 'Dig7'
    end
    object spArc2Dig8: TFloatField
      FieldName = 'Dig8'
    end
    object spArc2Dig9: TFloatField
      FieldName = 'Dig9'
    end
    object spArc2Dig10: TFloatField
      FieldName = 'Dig10'
    end
    object spArc2Dig11: TFloatField
      FieldName = 'Dig11'
    end
    object spArc2Dig12: TFloatField
      FieldName = 'Dig12'
    end
    object spArc2Dig13: TFloatField
      FieldName = 'Dig13'
    end
    object spArc2Dig14: TFloatField
      FieldName = 'Dig14'
    end
    object spArc2Dig15: TFloatField
      FieldName = 'Dig15'
    end
    object spArc2Str1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object spArc2Str2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object spArc2Str3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object spArc2Str4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object spArc2Str5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object spArc2Str6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object spArc2Str7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object spArc2Str8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object spArc2Str9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object spArc2Str10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object spArc2Str11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object spArc2Str12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object spArc2Str13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object spArc2Str14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object spArc2Str15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object spArc2OperVidName: TStringField
      FieldName = 'OperVidName'
      Size = 50
    end
    object spArc2CRN_OperSumRez: TFloatField
      FieldName = 'CRN_OperSumRez'
    end
    object spArc2OnlyDate: TDateTimeField
      FieldName = 'OnlyDate'
    end
    object spArc2is_Mirr: TBooleanField
      FieldName = 'is_Mirr'
    end
    object spArc2id_Repr_Ex: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object spArc2id_business: TIntegerField
      FieldName = 'id_business'
    end
    object spArc2OperTypeSIGN: TIntegerField
      FieldName = 'OperTypeSIGN'
    end
    object spArc2VatIn: TBooleanField
      FieldName = 'VatIn'
    end
    object spArc2AutoGen: TBooleanField
      FieldName = 'AutoGen'
    end
    object spArc2id_OperParent: TIntegerField
      FieldName = 'id_OperParent'
    end
    object spArc2id_old_Oper: TIntegerField
      FieldName = 'id_old_Oper'
    end
    object spArc2id_LC_Oper: TIntegerField
      FieldName = 'id_LC_Oper'
    end
    object spArc2id_Replicator: TIntegerField
      FieldName = 'id_Replicator'
    end
    object spArc2ReplicatorShortName: TStringField
      FieldName = 'ReplicatorShortName'
      ReadOnly = True
      Size = 10
    end
    object spArc2id_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spArc2Id_CurrencyBsn: TIntegerField
      FieldName = 'Id_CurrencyBsn'
    end
    object spArc2BusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object spArc2DateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object spArc2Id_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object spArc2CurrencyOperName: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object spArc2RateOper: TFloatField
      FieldName = 'RateOper'
    end
    object spArc2id_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object spArc2RealKoef: TFloatField
      FieldName = 'RealKoef'
    end
    object spArc2AmountOperBaseMS: TFloatField
      FieldName = 'AmountOperBaseMS'
      ReadOnly = True
    end
    object spArc2Id_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object spArc2CurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object spArc2RateSys: TFloatField
      FieldName = 'RateSys'
    end
    object spArc2Id_CurrencyInv: TIntegerField
      FieldName = 'Id_CurrencyInv'
    end
    object spArc2RateInv: TFloatField
      FieldName = 'RateInv'
    end
    object spArc2CurrencyInvName: TStringField
      FieldName = 'CurrencyInvName'
      ReadOnly = True
      Size = 10
    end
    object spArc2id_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object spArc2id_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object spArc2id_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spArc2HidedOper: TBooleanField
      FieldName = 'HidedOper'
    end
    object spArc2RateMain: TFloatField
      FieldName = 'RateMain'
    end
    object spArc2id_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object spArc2HasChild: TIntegerField
      FieldName = 'HasChild'
      ReadOnly = True
    end
    object spArc2id_OperWare: TIntegerField
      FieldName = 'id_OperWare'
    end
    object spArc2id_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
      ReadOnly = True
    end
    object spArc2id_Warehouse_Group: TIntegerField
      FieldName = 'id_Warehouse_Group'
      ReadOnly = True
    end
    object spArc2id_Manufact_Group: TIntegerField
      FieldName = 'id_Manufact_Group'
      ReadOnly = True
    end
    object spArc2COLUMN1: TStringField
      FieldName = 'COLUMN1'
      ReadOnly = True
      Size = 10
    end
    object spArc2id_Ctg_Goods_2: TIntegerField
      FieldName = 'id_Ctg_Goods_2'
    end
    object spArc2id_busines_1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_busines_1'
      Calculated = True
    end
    object spArc2id_business_1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_business_1'
      Calculated = True
    end
    object spArc2CreatorFIO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CreatorFIO'
      Size = 255
      Calculated = True
    end
    object spArc2id_Raw: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Raw'
      Calculated = True
    end
    object spArc2id_ExtRaw: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_ExtRaw'
      Calculated = True
    end
    object v: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Service'
      Calculated = True
    end
    object spArc2CheckerFIO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CheckerFIO'
      Size = 255
      Calculated = True
    end
    object spArc2OperSum_Inv: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OperSum_Inv'
      Calculated = True
    end
    object spArc2id_Ctg_Raw_2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Ctg_Raw_2'
      Calculated = True
    end
    object spArc2id_Ctg_ExtRaw_2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Ctg_ExtRaw_2'
      Calculated = True
    end
    object spArc2id_Ctg_Service_2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Ctg_Service_2'
      Calculated = True
    end
    object spArc2Date1: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date1'
      Calculated = True
    end
    object spArc2Date2: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date2'
      Calculated = True
    end
    object spArc2Date3: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date3'
      Calculated = True
    end
    object spArc2Date4: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date4'
      Calculated = True
    end
    object spArc2Date5: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date5'
      Calculated = True
    end
    object spArc2Date6: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date6'
      Calculated = True
    end
    object spArc2Date7: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date7'
      Calculated = True
    end
    object spArc2Date8: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date8'
      Calculated = True
    end
    object spArc2Date9: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date9'
      Calculated = True
    end
    object spArc2Date10: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date10'
      Calculated = True
    end
    object spArc2Date11: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date11'
      Calculated = True
    end
    object spArc2Date12: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date12'
      Calculated = True
    end
    object spArc2Date13: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date13'
      Calculated = True
    end
    object spArc2Date14: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date14'
      Calculated = True
    end
    object spArc2Date15: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date15'
      Calculated = True
    end
  end
  object spBalanceBy: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_BalanceBy;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Det'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Currency'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DOC'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 208
    Top = 100
  end
  object spACard: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_AccCard;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Acc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Currency'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DOC'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 320
    Top = 137
  end
  object spB2: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_BalanceBy_t;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Det'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Currency'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Repr'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Src'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Imp_PayBasic'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@AccInv_PayAssignment'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Contract'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OpComment'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@CalcRez'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 224
    Top = 57
    object spB2TmpID: TAutoIncField
      FieldName = 'TmpID'
      ReadOnly = True
    end
    object spB2Tmp: TIntegerField
      FieldName = 'Tmp'
    end
    object spB2IsRes: TBooleanField
      FieldName = 'IsRes'
    end
    object spB2TotalRez: TFloatField
      FieldName = 'TotalRez'
    end
    object spB2id_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spB2OperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spB2OperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object spB2id_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spB2id_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spB2DateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object spB2CurrencyShortName: TStringField
      FieldName = 'CurrencyShortName'
      Size = 255
    end
    object spB2OperSummSysCur: TFloatField
      FieldName = 'OperSummSysCur'
    end
    object spB2OperSum_Offer: TFloatField
      FieldName = 'OperSum_Offer'
    end
    object spB2Id_Currency_Offer: TIntegerField
      FieldName = 'Id_Currency_Offer'
    end
    object spB2OperNum: TStringField
      FieldName = 'OperNum'
      Size = 255
    end
    object spB2isGrpOper: TBooleanField
      FieldName = 'isGrpOper'
    end
    object spB2id_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spB2is_Mirr: TBooleanField
      FieldName = 'is_Mirr'
    end
    object spB2Docz: TStringField
      FieldName = 'Docz'
      Size = 1000
    end
    object spB2NNN: TIntegerField
      FieldName = 'NNN'
    end
    object spB2id_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spB2id_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object spB2id_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object spB2id_Repr_Ex: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object spB2S1: TBCDField
      FieldName = 'S1'
      Precision = 18
      Size = 2
    end
    object spB2S2: TBCDField
      FieldName = 'S2'
      Precision = 18
      Size = 2
    end
    object spB2SumIN: TBCDField
      FieldName = 'SumIN'
      Precision = 18
      Size = 2
    end
    object spB2SumOUT: TBCDField
      FieldName = 'SumOUT'
      Precision = 18
      Size = 2
    end
    object spB2ReprName: TStringField
      FieldName = 'ReprName'
      Size = 255
    end
    object spB2SrcName: TStringField
      FieldName = 'SrcName'
      Size = 255
    end
    object spB2Imp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object spB2AccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object spB2Contract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object spB2OpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spB2Str1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object spB2Str2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object spB2Str3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object spB2Str4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object spB2Str5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object spB2Str6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object spB2Str7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object spB2Str8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object spB2Str9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object spB2Str10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object spB2Str11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object spB2Str12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object spB2Str13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object spB2Str14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object spB2Str15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object spB2GrpOper: TIntegerField
      FieldName = 'GrpOper'
    end
    object spB2OperSum_OfferABS: TFloatField
      FieldName = 'OperSum_OfferABS'
    end
    object spB2Dig1: TFloatField
      FieldName = 'Dig1'
    end
    object spB2Dig2: TFloatField
      FieldName = 'Dig2'
    end
    object spB2Dig3: TFloatField
      FieldName = 'Dig3'
    end
    object spB2Dig4: TFloatField
      FieldName = 'Dig4'
    end
    object spB2Dig5: TFloatField
      FieldName = 'Dig5'
    end
    object spB2Dig6: TFloatField
      FieldName = 'Dig6'
    end
    object spB2Dig7: TFloatField
      FieldName = 'Dig7'
    end
    object spB2Dig8: TFloatField
      FieldName = 'Dig8'
    end
    object spB2Dig9: TFloatField
      FieldName = 'Dig9'
    end
    object spB2Dig10: TFloatField
      FieldName = 'Dig10'
    end
    object spB2Dig11: TFloatField
      FieldName = 'Dig11'
    end
    object spB2Dig12: TFloatField
      FieldName = 'Dig12'
    end
    object spB2Dig13: TFloatField
      FieldName = 'Dig13'
    end
    object spB2Dig14: TFloatField
      FieldName = 'Dig14'
    end
    object spB2Dig15: TFloatField
      FieldName = 'Dig15'
    end
  end
  object dsB2: TDataSetProvider
    DataSet = spB2
    Constraints = True
    Left = 264
    Top = 56
  end
  object spA2: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_AccCard_t;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Acc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Currency'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Repr'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Src'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Imp_PayBasic'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@AccInv_PayAssignment'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Contract'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OpComment'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@CalcRez'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 248
    Top = 145
    object AutoIncField6: TAutoIncField
      FieldName = 'TmpID'
      ReadOnly = True
    end
    object IntegerField14: TIntegerField
      FieldName = 'Tmp'
    end
    object BooleanField10: TBooleanField
      FieldName = 'IsRes'
    end
    object FloatField11: TFloatField
      FieldName = 'TotalRez'
    end
    object IntegerField15: TIntegerField
      FieldName = 'id_Oper'
    end
    object BooleanField12: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object IntegerField16: TIntegerField
      FieldName = 'OperVid'
    end
    object IntegerField17: TIntegerField
      FieldName = 'id_Repr'
    end
    object IntegerField18: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DateCreate'
    end
    object StringField28: TStringField
      FieldName = 'CurrencyShortName'
      Size = 255
    end
    object FloatField12: TFloatField
      FieldName = 'OperSummSysCur'
    end
    object FloatField13: TFloatField
      FieldName = 'OperSum_Offer'
    end
    object IntegerField21: TIntegerField
      FieldName = 'Id_Currency_Offer'
    end
    object StringField29: TStringField
      FieldName = 'OperNum'
      Size = 255
    end
    object BooleanField13: TBooleanField
      FieldName = 'isGrpOper'
    end
    object IntegerField22: TIntegerField
      FieldName = 'id_Goods'
    end
    object BooleanField14: TBooleanField
      FieldName = 'is_Mirr'
    end
    object StringField30: TStringField
      FieldName = 'Docz'
      Size = 1000
    end
    object IntegerField23: TIntegerField
      FieldName = 'NNN'
    end
    object IntegerField24: TIntegerField
      FieldName = 'id_Acc'
    end
    object IntegerField25: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object IntegerField26: TIntegerField
      FieldName = 'id_Manufact'
    end
    object IntegerField27: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object BCDField3: TBCDField
      FieldName = 'S1'
      Precision = 18
      Size = 2
    end
    object BCDField4: TBCDField
      FieldName = 'S2'
      Precision = 18
      Size = 2
    end
    object BCDField5: TBCDField
      FieldName = 'SumIN'
      Precision = 18
      Size = 2
    end
    object BCDField6: TBCDField
      FieldName = 'SumOUT'
      Precision = 18
      Size = 2
    end
    object StringField31: TStringField
      FieldName = 'ReprName'
      Size = 255
    end
    object StringField32: TStringField
      FieldName = 'SrcName'
      Size = 255
    end
    object StringField33: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object StringField34: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object StringField35: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object StringField36: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object StringField37: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object StringField38: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object StringField39: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object StringField40: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object StringField41: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object StringField42: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object StringField43: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object StringField44: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object StringField45: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object StringField46: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object StringField47: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object StringField48: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object StringField49: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object StringField50: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object StringField51: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object IntegerField28: TIntegerField
      FieldName = 'GrpOper'
    end
    object FloatField14: TFloatField
      FieldName = 'OperSum_OfferABS'
    end
    object spA2Dig1: TFloatField
      FieldName = 'Dig1'
    end
    object spA2Dig2: TFloatField
      FieldName = 'Dig2'
    end
    object spA2Dig3: TFloatField
      FieldName = 'Dig3'
    end
    object spA2Dig4: TFloatField
      FieldName = 'Dig4'
    end
    object spA2Dig5: TFloatField
      FieldName = 'Dig5'
    end
    object spA2Dig6: TFloatField
      FieldName = 'Dig6'
    end
    object spA2Dig7: TFloatField
      FieldName = 'Dig7'
    end
    object spA2Dig8: TFloatField
      FieldName = 'Dig8'
    end
    object spA2Dig9: TFloatField
      FieldName = 'Dig9'
    end
    object spA2Dig10: TFloatField
      FieldName = 'Dig10'
    end
    object spA2Dig11: TFloatField
      FieldName = 'Dig11'
    end
    object spA2Dig12: TFloatField
      FieldName = 'Dig12'
    end
    object spA2Dig13: TFloatField
      FieldName = 'Dig13'
    end
    object spA2Dig14: TFloatField
      FieldName = 'Dig14'
    end
    object spA2Dig15: TFloatField
      FieldName = 'Dig15'
    end
  end
  object dsA2: TDataSetProvider
    DataSet = spA2
    Constraints = True
    Left = 288
    Top = 152
  end
  object spBJTree: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'BJ_TreeGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_BJ_Obj'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@isDeb'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Mode'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateRep'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 216
    Top = 257
    object spBJTreeOrderNum: TIntegerField
      FieldName = 'OrderNum'
    end
    object spBJTreeisDeb: TBooleanField
      FieldName = 'isDeb'
    end
    object spBJTreeName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spBJTreeid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spBJTreeid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spBJTreeid_BJ_Tree: TIntegerField
      FieldName = 'id_BJ_Tree'
    end
    object spBJTreePID: TIntegerField
      FieldName = 'PID'
    end
    object spBJTreeid_BJ_Item: TIntegerField
      FieldName = 'id_BJ_Item'
    end
    object spBJTreeExtID: TIntegerField
      FieldName = 'ExtID'
    end
    object spBJTreePlanIn: TFloatField
      FieldName = 'PlanIn'
    end
    object spBJTreePlanDelta: TFloatField
      FieldName = 'PlanDelta'
    end
    object spBJTreePlanCorrect: TFloatField
      FieldName = 'PlanCorrect'
    end
    object spBJTreeAPlan: TFloatField
      FieldName = 'APlan'
    end
    object spBJTreeALevel: TIntegerField
      FieldName = 'ALevel'
    end
    object spBJTreeS_Pay: TFloatField
      FieldName = 'S_Pay'
    end
    object spBJTreeS_Off: TFloatField
      FieldName = 'S_Off'
    end
    object spBJTreeTrez: TFloatField
      FieldName = 'Trez'
    end
    object spBJTreeisInState: TBooleanField
      FieldName = 'isInState'
    end
  end
  object dsBJTree: TDataSetProvider
    DataSet = spBJTree
    Constraints = True
    Left = 256
    Top = 256
  end
  object spBJTProp: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'BJ_TreeGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_BJ_Tree'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 304
    Top = 57
    object AutoIncField7: TAutoIncField
      FieldName = 'id_BJ_Tree'
      ReadOnly = True
    end
    object IntegerField29: TIntegerField
      FieldName = 'id_BJ_Obj'
    end
    object StringField52: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object BooleanField15: TBooleanField
      FieldName = 'Disabled'
    end
    object IntegerField30: TIntegerField
      FieldName = 'PID'
    end
    object spBJTPropPName: TStringField
      FieldName = 'PName'
      Size = 255
    end
    object spBJTPropisDeb: TBooleanField
      FieldName = 'isDeb'
    end
    object spBJTPropExtID: TIntegerField
      FieldName = 'ExtID'
    end
  end
  object dsBJTProp: TDataSetProvider
    DataSet = spBJTProp
    Constraints = True
    Left = 344
    Top = 56
  end
  object spAPGoods: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'AP_GoodsGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_ObjItem'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 223
    Top = 341
    object spAPGoodsid_AP_Goods: TAutoIncField
      FieldName = 'id_AP_Goods'
    end
    object spAPGoodsid_ObjItem: TIntegerField
      FieldName = 'id_ObjItem'
    end
    object spAPGoodsid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spAPGoodsAmount_Koeff: TBCDField
      FieldName = 'Amount_Koeff'
      Precision = 19
    end
    object spAPGoodsAmount_Znak: TStringField
      FieldName = 'Amount_Znak'
      Size = 3
    end
    object spAPGoodsAmount_B: TBCDField
      FieldName = 'Amount_B'
      Precision = 19
    end
    object spAPGoodsDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spAPGoodsid_Measure: TIntegerField
      FieldName = 'id_Measure'
    end
    object spAPGoodsSumm_UseSys: TBooleanField
      FieldName = 'Summ_UseSys'
    end
    object spAPGoodsSumm_Type: TIntegerField
      FieldName = 'Summ_Type'
    end
    object spAPGoodsSumm_Koeff: TBCDField
      FieldName = 'Summ_Koeff'
      Precision = 19
    end
    object spAPGoodsSumm_B: TBCDField
      FieldName = 'Summ_B'
      Precision = 19
    end
    object spAPGoodsSumm_Znak: TStringField
      FieldName = 'Summ_Znak'
      FixedChar = True
      Size = 3
    end
    object spAPGoodsid_Currency: TIntegerField
      FieldName = 'id_Currency'
    end
    object spAPGoodsCurrency_Type: TIntegerField
      FieldName = 'Currency_Type'
    end
    object spAPGoodsMeasureName: TStringField
      FieldName = 'MeasureName'
      Size = 10
    end
    object spAPGoodsRealKoef: TFloatField
      FieldName = 'RealKoef'
    end
    object spAPGoodsWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
  end
  object dsAPGoods: TSQLUpdateDSProvider
    DataSet = spAPGoods
    Constraints = True
    ModifySQL.Strings = (
      'EXEC AP_GoodsEdit'
      '  @id_AP_Goods = :id_AP_Goods,'
      '  @id_ObjItem =:id_ObjItem,'
      '  @id_Goods =:id_Goods,'
      '  @Amount_Koeff =:Amount_Koeff,'
      '  @Amount_Znak =:Amount_Znak,'
      '  @Amount_B =:Amount_B,'
      '  @Disabled =:Disabled,'
      '  @id_Measure =:id_Measure,'
      '  @Summ_UseSys =:Summ_UseSys,'
      '  @Summ_Type =:Summ_Type,'
      '  @Summ_Koeff =:Summ_Koeff,'
      '  @Summ_B =:Summ_B,'
      '  @Summ_Znak =:Summ_Znak,'
      '  @id_Currency =:id_Currency,'
      '  @Currency_Type =:Currency_Type')
    InsertSQL.Strings = (
      'EXEC AP_GoodsAdd'
      '  @id_ObjItem =:id_ObjItem,'
      '  @id_Goods =:id_Goods,'
      '  @Amount_Koeff =:Amount_Koeff,'
      '  @Amount_Znak =:Amount_Znak,'
      '  @Amount_B =:Amount_B,'
      '  @Disabled =:Disabled,'
      '  @id_Measure =:id_Measure,'
      '  @Summ_UseSys =:Summ_UseSys,'
      '  @Summ_Type =:Summ_Type,'
      '  @Summ_Koeff =:Summ_Koeff,'
      '  @Summ_B =:Summ_B,'
      '  @Summ_Znak =:Summ_Znak,'
      '  @id_Currency =:id_Currency,'
      '  @Currency_Type =:Currency_Type')
    DeleteSQL.Strings = (
      'EXEC AP_GoodsDel @id_AP_Goods = :id_AP_Goods '
      ' ')
    Left = 224
    Top = 384
  end
  object spDoc_Inv: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Doc_InvoiceGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Invoice'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 923
    Top = 240
    object spDoc_Invid_invoice: TAutoIncField
      FieldName = 'id_invoice'
    end
    object spDoc_Invid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spDoc_InvDoc_Num: TStringField
      FieldName = 'Doc_Num'
      Size = 50
    end
    object spDoc_InvDoc_Date: TDateTimeField
      FieldName = 'Doc_Date'
    end
    object spDoc_InvDoc_DateCreate: TDateTimeField
      FieldName = 'Doc_DateCreate'
    end
    object spDoc_Invid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spDoc_InvOrgName: TStringField
      FieldName = 'OrgName'
      Size = 255
    end
    object spDoc_InvAddress: TStringField
      FieldName = 'Address'
      Size = 255
    end
    object spDoc_InvBank: TStringField
      FieldName = 'Bank'
      Size = 255
    end
    object spDoc_InvBIK: TBCDField
      FieldName = 'BIK'
      Precision = 10
      Size = 0
    end
    object spDoc_InvAcc: TStringField
      FieldName = 'Acc'
      Size = 255
    end
    object spDoc_InvCorAcc: TStringField
      FieldName = 'CorAcc'
      Size = 255
    end
    object spDoc_InvDept: TStringField
      FieldName = 'Dept'
      Size = 255
    end
    object spDoc_InvOKPO: TStringField
      FieldName = 'OKPO'
    end
    object spDoc_InvOKPO2: TStringField
      FieldName = 'OKPO2'
    end
    object spDoc_InvOKPO3: TStringField
      FieldName = 'OKPO3'
    end
    object spDoc_InvOKPO4: TStringField
      FieldName = 'OKPO4'
    end
    object spDoc_InvOKPD: TStringField
      FieldName = 'OKPD'
    end
    object spDoc_InvCBL_Num: TStringField
      FieldName = 'CBL_Num'
    end
    object spDoc_InvCBL_Date: TDateTimeField
      FieldName = 'CBL_Date'
    end
    object spDoc_InvRC_Name: TStringField
      FieldName = 'RC_Name'
      Size = 255
    end
    object spDoc_InvRC_Address: TStringField
      FieldName = 'RC_Address'
      Size = 255
    end
    object spDoc_InvRC_Bank: TStringField
      FieldName = 'RC_Bank'
      Size = 255
    end
    object spDoc_InvRC_BIK: TBCDField
      FieldName = 'RC_BIK'
      Precision = 12
      Size = 0
    end
    object spDoc_InvRC_Acc: TStringField
      FieldName = 'RC_Acc'
      Size = 255
    end
    object spDoc_InvRC_CorAcc: TStringField
      FieldName = 'RC_CorAcc'
      Size = 255
    end
    object spDoc_InvPayer_Name: TStringField
      FieldName = 'Payer_Name'
      Size = 255
    end
    object spDoc_InvPayer_Address: TStringField
      FieldName = 'Payer_Address'
      Size = 255
    end
    object spDoc_InvPayer_Bank: TStringField
      FieldName = 'Payer_Bank'
      Size = 255
    end
    object spDoc_InvPayer_BIK: TBCDField
      FieldName = 'Payer_BIK'
      Precision = 10
      Size = 0
    end
    object spDoc_InvPayer_Acc: TStringField
      FieldName = 'Payer_Acc'
      Size = 255
    end
    object spDoc_InvPayer_CorAcc: TStringField
      FieldName = 'Payer_CorAcc'
      Size = 255
    end
    object spDoc_InvBase: TStringField
      FieldName = 'Base'
      Size = 255
    end
    object spDoc_InvBase_Num: TStringField
      FieldName = 'Base_Num'
    end
    object spDoc_InvBase_Date: TDateTimeField
      FieldName = 'Base_Date'
    end
    object spDoc_InvExtDoc_Count: TIntegerField
      FieldName = 'ExtDoc_Count'
    end
    object spDoc_InvChif_Post: TStringField
      FieldName = 'Chif_Post'
      Size = 255
    end
    object spDoc_InvChif_FIO: TStringField
      FieldName = 'Chif_FIO'
      Size = 255
    end
    object spDoc_InvBuh: TStringField
      FieldName = 'Buh'
      Size = 255
    end
    object spDoc_InvPuter_post: TStringField
      FieldName = 'Puter_post'
      Size = 255
    end
    object spDoc_InvPuter_Name: TStringField
      FieldName = 'Puter_Name'
      Size = 255
    end
    object spDoc_InvPuter_Date: TDateTimeField
      FieldName = 'Puter_Date'
    end
    object spDoc_InvWar_Num: TStringField
      FieldName = 'War_Num'
    end
    object spDoc_InvWar_Date: TDateTimeField
      FieldName = 'War_Date'
    end
    object spDoc_InvWar_Owner: TStringField
      FieldName = 'War_Owner'
      Size = 255
    end
    object spDoc_InvWar_Name: TStringField
      FieldName = 'War_Name'
      Size = 255
    end
    object spDoc_InvGeter_Post: TStringField
      FieldName = 'Geter_Post'
      Size = 255
    end
    object spDoc_InvGeter_FIO: TStringField
      FieldName = 'Geter_FIO'
      Size = 255
    end
    object spDoc_InvRC_Post: TStringField
      FieldName = 'RC_Post'
      Size = 255
    end
    object spDoc_InvRC_FIO: TStringField
      FieldName = 'RC_FIO'
      Size = 255
    end
    object spDoc_InvRC_Date: TDateTimeField
      FieldName = 'RC_Date'
    end
    object spDoc_Invid_DocCur: TIntegerField
      FieldName = 'id_DocCur'
    end
    object spDoc_Invid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spDoc_InvDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spDoc_InvDocCurPartName: TStringField
      FieldName = 'DocCurPartName'
      Size = 50
    end
    object spDoc_InvDocCurName: TStringField
      FieldName = 'DocCurName'
      Size = 10
    end
    object spDoc_Invid_DocCur_1: TAutoIncField
      FieldName = 'id_DocCur_1'
    end
    object spDoc_InvDef: TBooleanField
      FieldName = 'Def'
    end
    object spDoc_InvNumberCode: TStringField
      FieldName = 'NumberCode'
      FixedChar = True
      Size = 3
    end
    object spDoc_Invid_Doc_Org: TIntegerField
      FieldName = 'id_Doc_Org'
    end
    object spDoc_InvVAT: TBCDField
      FieldName = 'VAT'
      Precision = 18
      Size = 2
    end
  end
  object spArc201: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_ArcBy_201;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_CAGroup'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Repr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Warehouse'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Manufact'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_user'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 790
    Top = 220
  end
  object spDoc_InvWare: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Doc_InvoiceWareGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Invoice'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 923
    Top = 285
  end
  object spDoc_WBill: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Doc_WBillGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_WBill'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 923
    Top = 336
    object spDoc_WBillid_WBill: TAutoIncField
      FieldName = 'id_WBill'
    end
    object spDoc_WBillid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spDoc_WBillDoc_Num: TStringField
      FieldName = 'Doc_Num'
      Size = 50
    end
    object spDoc_WBillDoc_Date: TDateTimeField
      FieldName = 'Doc_Date'
    end
    object spDoc_WBillDoc_DateCreate: TDateTimeField
      FieldName = 'Doc_DateCreate'
    end
    object spDoc_WBillid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spDoc_WBillid_DocCur: TIntegerField
      FieldName = 'id_DocCur'
    end
    object spDoc_WBillOrgName: TStringField
      FieldName = 'OrgName'
      Size = 255
    end
    object spDoc_WBillAddress: TStringField
      FieldName = 'Address'
      Size = 255
    end
    object spDoc_WBillBank: TStringField
      FieldName = 'Bank'
      Size = 255
    end
    object spDoc_WBillBIK: TBCDField
      FieldName = 'BIK'
      Precision = 12
      Size = 0
    end
    object spDoc_WBillAcc: TStringField
      FieldName = 'Acc'
      Size = 255
    end
    object spDoc_WBillCorAcc: TStringField
      FieldName = 'CorAcc'
      Size = 255
    end
    object spDoc_WBillOKPO: TStringField
      FieldName = 'OKPO'
    end
    object spDoc_WBillOKPO2: TStringField
      FieldName = 'OKPO2'
    end
    object spDoc_WBillOKPO3: TStringField
      FieldName = 'OKPO3'
    end
    object spDoc_WBillRC_Name: TStringField
      FieldName = 'RC_Name'
      Size = 255
    end
    object spDoc_WBillRC_Address: TStringField
      FieldName = 'RC_Address'
      Size = 255
    end
    object spDoc_WBillRC_Bank: TStringField
      FieldName = 'RC_Bank'
      Size = 255
    end
    object spDoc_WBillRC_BIK: TBCDField
      FieldName = 'RC_BIK'
      Precision = 10
      Size = 0
    end
    object spDoc_WBillRC_Acc: TStringField
      FieldName = 'RC_Acc'
      Size = 255
    end
    object spDoc_WBillRC_CorAcc: TStringField
      FieldName = 'RC_CorAcc'
      Size = 255
    end
    object spDoc_WBillPayer_Name: TStringField
      FieldName = 'Payer_Name'
      Size = 255
    end
    object spDoc_WBillPayer_Address: TStringField
      FieldName = 'Payer_Address'
      Size = 255
    end
    object spDoc_WBillPayer_Bank: TStringField
      FieldName = 'Payer_Bank'
      Size = 255
    end
    object spDoc_WBillPayer_BIK: TBCDField
      FieldName = 'Payer_BIK'
      Precision = 10
      Size = 0
    end
    object spDoc_WBillPayer_Acc: TStringField
      FieldName = 'Payer_Acc'
      Size = 255
    end
    object spDoc_WBillPayer_CorAcc: TStringField
      FieldName = 'Payer_CorAcc'
      Size = 255
    end
    object spDoc_WBillBuh: TStringField
      FieldName = 'Buh'
      Size = 255
    end
    object spDoc_WBillChecker_post: TStringField
      FieldName = 'Checker_post'
      Size = 255
    end
    object spDoc_WBillChecker_Name: TStringField
      FieldName = 'Checker_Name'
      Size = 255
    end
    object spDoc_WBillPuter_post: TStringField
      FieldName = 'Puter_post'
      Size = 255
    end
    object spDoc_WBillPuter_Name: TStringField
      FieldName = 'Puter_Name'
      Size = 255
    end
    object spDoc_WBillGeter_Post: TStringField
      FieldName = 'Geter_Post'
      Size = 255
    end
    object spDoc_WBillGeter_FIO: TStringField
      FieldName = 'Geter_FIO'
      Size = 255
    end
    object spDoc_WBillDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spDoc_WBillid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spDoc_WBillDocCurPartName: TStringField
      FieldName = 'DocCurPartName'
      Size = 50
    end
    object spDoc_WBillDocCurName: TStringField
      FieldName = 'DocCurName'
      Size = 10
    end
    object spDoc_WBillid_DocCur_1: TAutoIncField
      FieldName = 'id_DocCur_1'
    end
    object spDoc_WBillDef: TBooleanField
      FieldName = 'Def'
    end
    object spDoc_WBillNumberCode: TStringField
      FieldName = 'NumberCode'
      FixedChar = True
      Size = 3
    end
    object spDoc_WBillid_Doc_Org: TIntegerField
      FieldName = 'id_Doc_Org'
    end
    object spDoc_WBillVAT: TBCDField
      FieldName = 'VAT'
      Precision = 18
      Size = 2
    end
  end
  object spDoc_AFWare: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Doc_AFWareGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_AF'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 923
    Top = 429
  end
  object spDoc_AF: TADOStoredProc
    Connection = ADOConnection1
    AfterOpen = spDoc_AFAfterOpen
    ProcedureName = 'Doc_AFGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_AF'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 923
    Top = 384
    object spDoc_AFid_AF: TAutoIncField
      FieldName = 'id_AF'
    end
    object spDoc_AFid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spDoc_AFDoc_Num: TStringField
      FieldName = 'Doc_Num'
      Size = 50
    end
    object spDoc_AFDoc_Date: TDateTimeField
      FieldName = 'Doc_Date'
    end
    object spDoc_AFDoc_DateCreate: TDateTimeField
      FieldName = 'Doc_DateCreate'
    end
    object spDoc_AFid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spDoc_AFOrgName: TStringField
      FieldName = 'OrgName'
      Size = 255
    end
    object spDoc_AFAddress: TStringField
      FieldName = 'Address'
      Size = 255
    end
    object spDoc_AFINN: TBCDField
      FieldName = 'INN'
      Precision = 12
      Size = 0
    end
    object spDoc_AFKPP: TBCDField
      FieldName = 'KPP'
      Precision = 10
      Size = 0
    end
    object spDoc_AFSender_Name: TStringField
      FieldName = 'Sender_Name'
      Size = 255
    end
    object spDoc_AFSender_Address2: TStringField
      FieldName = 'Sender_Address2'
      Size = 255
    end
    object spDoc_AFRC_Name: TStringField
      FieldName = 'RC_Name'
      Size = 255
    end
    object spDoc_AFRC_Address2: TStringField
      FieldName = 'RC_Address2'
      Size = 255
    end
    object spDoc_AFExtDocNum: TStringField
      FieldName = 'ExtDocNum'
      Size = 255
    end
    object spDoc_AFExtDocDate: TDateTimeField
      FieldName = 'ExtDocDate'
    end
    object spDoc_AFBayer_Name: TStringField
      FieldName = 'Bayer_Name'
      Size = 255
    end
    object spDoc_AFBayer_Address: TStringField
      FieldName = 'Bayer_Address'
      Size = 255
    end
    object spDoc_AFBayer_INN: TBCDField
      FieldName = 'Bayer_INN'
      Precision = 12
      Size = 0
    end
    object spDoc_AFBayer_KPP: TBCDField
      FieldName = 'Bayer_KPP'
      Precision = 10
      Size = 0
    end
    object spDoc_AFPBUL: TStringField
      FieldName = 'PBUL'
      Size = 255
    end
    object spDoc_AFChif: TStringField
      FieldName = 'Chif'
      Size = 255
    end
    object spDoc_AFBuh: TStringField
      FieldName = 'Buh'
      Size = 255
    end
    object spDoc_AFid_DocCur: TIntegerField
      FieldName = 'id_DocCur'
    end
    object spDoc_AFid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spDoc_AFDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spDoc_AFDocCurPartName: TStringField
      FieldName = 'DocCurPartName'
      Size = 50
    end
    object spDoc_AFDocCurName: TStringField
      FieldName = 'DocCurName'
      Size = 10
    end
    object spDoc_AFid_DocCur_1: TAutoIncField
      FieldName = 'id_DocCur_1'
    end
    object spDoc_AFDef: TBooleanField
      FieldName = 'Def'
    end
    object spDoc_AFNumberCode: TStringField
      FieldName = 'NumberCode'
      FixedChar = True
      Size = 3
    end
    object spDoc_AFid_Doc_Org: TIntegerField
      FieldName = 'id_Doc_Org'
    end
    object spDoc_AFVAT: TBCDField
      FieldName = 'VAT'
      Precision = 18
      Size = 2
    end
  end
  object spDoc_Acc: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Doc_AccountGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Account'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 621
    Top = 260
    object spDoc_Accid_Account: TAutoIncField
      FieldName = 'id_Account'
    end
    object spDoc_Accid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spDoc_AccDoc_Num: TStringField
      FieldName = 'Doc_Num'
      Size = 50
    end
    object spDoc_AccDoc_Date: TDateTimeField
      FieldName = 'Doc_Date'
    end
    object spDoc_AccDoc_DateCreate: TDateTimeField
      FieldName = 'Doc_DateCreate'
    end
    object spDoc_Accid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spDoc_AccOrgName: TStringField
      FieldName = 'OrgName'
      Size = 255
    end
    object spDoc_AccAddress: TStringField
      FieldName = 'Address'
      Size = 255
    end
    object spDoc_AccINN: TBCDField
      FieldName = 'INN'
      Precision = 12
      Size = 0
    end
    object spDoc_AccKPP: TBCDField
      FieldName = 'KPP'
      Precision = 10
      Size = 0
    end
    object spDoc_AccBank: TStringField
      FieldName = 'Bank'
      Size = 255
    end
    object spDoc_AccAcc1: TStringField
      FieldName = 'Acc1'
      Size = 255
    end
    object spDoc_AccAcc2: TStringField
      FieldName = 'Acc2'
      Size = 255
    end
    object spDoc_AccChif: TStringField
      FieldName = 'Chif'
      Size = 255
    end
    object spDoc_AccBuh: TStringField
      FieldName = 'Buh'
      Size = 255
    end
    object spDoc_Acccustomer: TStringField
      FieldName = 'customer'
      Size = 255
    end
    object spDoc_AccPayer: TStringField
      FieldName = 'Payer'
      Size = 255
    end
    object spDoc_Accid_DocCur: TIntegerField
      FieldName = 'id_DocCur'
    end
    object spDoc_Accid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spDoc_AccDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spDoc_AccDocCurPartName: TStringField
      FieldName = 'DocCurPartName'
      Size = 50
    end
    object spDoc_AccDocCurName: TStringField
      FieldName = 'DocCurName'
      Size = 10
    end
    object spDoc_Accid_DocCur_1: TAutoIncField
      FieldName = 'id_DocCur_1'
    end
    object spDoc_AccDef: TBooleanField
      FieldName = 'Def'
    end
    object spDoc_AccNumberCode: TStringField
      FieldName = 'NumberCode'
      FixedChar = True
      Size = 3
    end
    object spDoc_Accid_Doc_Org: TIntegerField
      FieldName = 'id_Doc_Org'
    end
    object spDoc_AccVAT: TBCDField
      FieldName = 'VAT'
      Precision = 18
      Size = 2
    end
    object spDoc_AccBIK: TBCDField
      FieldName = 'BIK'
      Precision = 10
      Size = 0
    end
  end
  object spDoc_DAccWare: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Doc_AccountWareGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Account'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 590
    Top = 313
  end
  object spBJList: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'BJ_ObjList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 280
    Top = 225
    object spBJListid_BJ_Obj: TAutoIncField
      FieldName = 'id_BJ_Obj'
      ReadOnly = True
    end
    object spBJListid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spBJListName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spBJListDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object spBJListid_Creator: TIntegerField
      FieldName = 'id_Creator'
    end
    object spBJListDateCheck: TDateTimeField
      FieldName = 'DateCheck'
    end
    object spBJListid_Checker: TIntegerField
      FieldName = 'id_Checker'
    end
    object spBJListDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spBJListStartDate: TDateTimeField
      FieldName = 'StartDate'
    end
    object spBJListStopDate: TDateTimeField
      FieldName = 'StopDate'
    end
    object spBJListid_ClosedBy: TIntegerField
      FieldName = 'id_ClosedBy'
    end
    object spBJListCloseDate: TDateTimeField
      FieldName = 'CloseDate'
    end
    object spBJListCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      ReadOnly = True
      Size = 152
    end
    object spBJListCheckerFIO: TStringField
      FieldName = 'CheckerFIO'
      ReadOnly = True
      Size = 152
    end
    object spBJListClosedByFIO: TStringField
      FieldName = 'ClosedByFIO'
      ReadOnly = True
      Size = 152
    end
  end
  object dsBJList: TDataSetProvider
    DataSet = spBJList
    Constraints = True
    Left = 320
    Top = 224
  end
  object spBJProp: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'BJ_ObjProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_BJ_Obj'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 774
    Top = 296
    object spBJPropid_BJ_Obj: TAutoIncField
      FieldName = 'id_BJ_Obj'
      ReadOnly = True
    end
    object spBJPropid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spBJPropName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spBJPropDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object spBJPropid_Creator: TIntegerField
      FieldName = 'id_Creator'
    end
    object spBJPropDateCheck: TDateTimeField
      FieldName = 'DateCheck'
    end
    object spBJPropid_Checker: TIntegerField
      FieldName = 'id_Checker'
    end
    object spBJPropDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spBJPropStartDate: TDateTimeField
      FieldName = 'StartDate'
    end
    object spBJPropStopDate: TDateTimeField
      FieldName = 'StopDate'
    end
    object spBJPropid_ClosedBy: TIntegerField
      FieldName = 'id_ClosedBy'
    end
    object spBJPropCloseDate: TDateTimeField
      FieldName = 'CloseDate'
    end
    object spBJPropCreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      ReadOnly = True
      Size = 152
    end
    object spBJPropCheckerFIO: TStringField
      FieldName = 'CheckerFIO'
      ReadOnly = True
      Size = 152
    end
    object spBJPropClosedByFIO: TStringField
      FieldName = 'ClosedByFIO'
      ReadOnly = True
      Size = 152
    end
  end
  object dsBJProp: TDataSetProvider
    DataSet = spBJProp
    Constraints = True
    Left = 550
    Top = 312
  end
  object spBIP: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'BJ_ItemGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_BJ_Item'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 370
    Top = 124
    object spBIPisDeb: TBooleanField
      FieldName = 'isDeb'
    end
    object spBIPName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spBIPid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spBIPid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spBIPid_BJ_Tree: TIntegerField
      FieldName = 'id_BJ_Tree'
    end
    object spBIPid_BJ_Item: TAutoIncField
      FieldName = 'id_BJ_Item'
    end
    object spBIPExtID: TIntegerField
      FieldName = 'ExtID'
    end
    object spBIPPlanIn: TBCDField
      FieldName = 'PlanIn'
      Precision = 19
    end
    object spBIPPlanDelta: TBCDField
      FieldName = 'PlanDelta'
      Precision = 19
    end
    object spBIPP_Name: TStringField
      FieldName = 'P_Name'
      Size = 255
    end
    object spBIPid_BJ_Obj: TIntegerField
      FieldName = 'id_BJ_Obj'
    end
    object spBIPid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spBIPPlanCorrect: TBCDField
      FieldName = 'PlanCorrect'
      Precision = 19
    end
    object spBIPisDirect: TBooleanField
      FieldName = 'isDirect'
    end
    object spBIPisInState: TBooleanField
      FieldName = 'isInState'
    end
  end
  object dsBIP: TDataSetProvider
    DataSet = spBIP
    Constraints = True
    Left = 370
    Top = 162
  end
  object spBJTec: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'UN_BalanceForm_v2TM;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_BJ_Obj'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TechMode'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 360
    Top = 374
  end
  object dsBJTec: TDataSetProvider
    DataSet = spBJTec
    Constraints = True
    Left = 360
    Top = 416
  end
  object dsLstOrder: TDataSetProvider
    DataSet = spLstOrder
    Constraints = True
    Left = 283
    Top = 714
  end
  object spLstOrder: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'BJ_ListForOrder;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_BJ_Item'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_BJ_Tree'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 283
    Top = 668
  end
  object spBJ_ByOper: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'BJ_GetItemByOper;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end
      item
        Name = '@id_Oper_OLD'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 255
      end>
    Left = 155
    Top = 607
    object spBJ_ByOperid_OperRel: TAutoIncField
      FieldName = 'id_OperRel'
    end
    object spBJ_ByOperid_BJ_Obj: TAutoIncField
      FieldName = 'id_BJ_Obj'
    end
    object spBJ_ByOperNotUse: TBooleanField
      FieldName = 'NotUse'
    end
    object spBJ_ByOperid_BJ_Item: TIntegerField
      FieldName = 'id_BJ_Item'
    end
    object spBJ_ByOperName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spBJ_ByOperBJ_Name: TStringField
      FieldName = 'BJ_Name'
      Size = 255
    end
    object spBJ_ByOperid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
  end
  object dsBJ_ByOper: TSQLUpdateDSProvider
    DataSet = spBJ_ByOper
    Constraints = True
    ModifySQL.Strings = (
      'EXEC BJ_OperRelEDIT'
      '  @id_OperRel = :id_OperRel,'
      '  @id_BJ_Obj = :id_BJ_Obj,'
      '  @NotUse = :NotUse,'
      '  @id_BJ_Item = :id_BJ_Item,'
      '  @id_Oper = :id_Oper'
      ' ')
    InsertSQL.Strings = (
      'EXEC BJ_OperRelEDIT'
      '  @id_OperRel = :id_OperRel,'
      '  @id_BJ_Obj = :id_BJ_Obj,'
      '  @NotUse = :NotUse,'
      '  @id_BJ_Item = :id_BJ_Item,'
      '  @id_Oper = :id_Oper'
      ' ')
    Left = 155
    Top = 660
  end
  object spBJDet: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'BJ_TreeGet_Det;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@id_BJ_Obj'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@id_Acc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@id_BJ_Item'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@DateRep'
        Attributes = [paNullable]
        DataType = ftDateTime
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 1126
    Top = 284
  end
  object dsBJDet: TDataSetProvider
    DataSet = spBJDet
    Constraints = True
    Left = 1126
    Top = 329
  end
  object dsDoc_WHOrdWare: TSQLUpdateDSProvider
    DataSet = spDoc_WHOrdWare
    Constraints = True
    ModifySQL.Strings = (
      'EXEC Doc_WHOrdWareEdit'
      '  @id_WHOrdWare = :id_WHOrdWare,'
      '  @WareName = :WareName,'
      '  @MesName = :MesName,'
      '  @Amount = :Amount,'
      '  @id_WHOrd = :id_WHOrd'
      ' ')
    InsertSQL.Strings = (
      'EXEC Doc_WHOrdWareAdd'
      '  @WareName = :WareName,'
      '  @MesName = :MesName,'
      '  @Amount = :Amount,'
      '  @id_WHOrd = :id_WHOrd')
    DeleteSQL.Strings = (
      'EXEC Doc_WHOrdWareDel'
      '  @id_WHOrdWare = :id_WHOrdWare')
    Left = 683
    Top = 350
  end
  object dsDoc_WHOrd: TDataSetProvider
    DataSet = spDoc_WHOrd
    Constraints = True
    Left = 706
    Top = 242
  end
  object spDoc_WHOrd: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Doc_WHOrdGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_WHOrd'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 658
    Top = 276
    object spDoc_WHOrdid_WHOrd: TAutoIncField
      FieldName = 'id_WHOrd'
      ReadOnly = True
    end
    object spDoc_WHOrdid_Doc_Org: TIntegerField
      FieldName = 'id_Doc_Org'
    end
    object spDoc_WHOrdid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spDoc_WHOrdDoc_Num: TStringField
      FieldName = 'Doc_Num'
      Size = 50
    end
    object spDoc_WHOrdDoc_Date: TDateTimeField
      FieldName = 'Doc_Date'
    end
    object spDoc_WHOrdDoc_DateCreate: TDateTimeField
      FieldName = 'Doc_DateCreate'
    end
    object spDoc_WHOrdid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spDoc_WHOrdPayer: TStringField
      FieldName = 'Payer'
      Size = 255
    end
    object spDoc_WHOrdExpeditor: TStringField
      FieldName = 'Expeditor'
      Size = 255
    end
    object spDoc_WHOrdOpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spDoc_WHOrdid_DocCur: TIntegerField
      FieldName = 'id_DocCur'
    end
    object spDoc_WHOrdid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spDoc_WHOrdTotalAmount_Pack: TIntegerField
      FieldName = 'TotalAmount_Pack'
    end
    object spDoc_WHOrdTotalAmount_Box: TIntegerField
      FieldName = 'TotalAmount_Box'
    end
    object spDoc_WHOrdDisabled: TBooleanField
      FieldName = 'Disabled'
    end
  end
  object spDoc_WHOrdWare: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Doc_WHOrdWareGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_WHOrd'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 627
    Top = 329
    object spDoc_WHOrdWareid_WHOrdWare: TAutoIncField
      FieldName = 'id_WHOrdWare'
      ReadOnly = True
    end
    object spDoc_WHOrdWareid_WHOrd: TIntegerField
      FieldName = 'id_WHOrd'
    end
    object spDoc_WHOrdWareWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object spDoc_WHOrdWareMesName: TStringField
      FieldName = 'MesName'
      Size = 255
    end
    object spDoc_WHOrdWareAmount: TFloatField
      FieldName = 'Amount'
    end
  end
  object spInv_Rep: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Inv_Rep;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Project'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 338
    Top = 148
    object spInv_RepPrjNum: TIntegerField
      FieldName = 'PrjNum'
    end
    object spInv_RepName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spInv_RepAmount1: TFloatField
      FieldName = 'Amount1'
    end
    object spInv_RepAmount2: TFloatField
      FieldName = 'Amount2'
    end
    object spInv_RepInv1: TFloatField
      FieldName = 'Inv1'
    end
    object spInv_RepInv2: TFloatField
      FieldName = 'Inv2'
    end
    object spInv_RepPrice: TFloatField
      FieldName = 'Price'
    end
    object spInv_RepKlishe_Inv1: TFloatField
      FieldName = 'Klishe_Inv1'
    end
    object spInv_RepKlishe_Inv2: TFloatField
      FieldName = 'Klishe_Inv2'
    end
    object spInv_RepKlishe_Price: TFloatField
      FieldName = 'Klishe_Price'
    end
    object spInv_RepTime_Form1: TDateTimeField
      FieldName = 'Time_Form1'
    end
    object spInv_RepTime_Form2: TDateTimeField
      FieldName = 'Time_Form2'
    end
    object spInv_RepTime_FormDelta: TDateTimeField
      FieldName = 'Time_FormDelta'
    end
    object spInv_RepTime_Print1: TDateTimeField
      FieldName = 'Time_Print1'
    end
    object spInv_RepTime_Print2: TDateTimeField
      FieldName = 'Time_Print2'
    end
    object spInv_RepTime_PrintDelta: TDateTimeField
      FieldName = 'Time_PrintDelta'
    end
    object spInv_RepTime_Lam1: TDateTimeField
      FieldName = 'Time_Lam1'
    end
    object spInv_RepTime_Lam2: TDateTimeField
      FieldName = 'Time_Lam2'
    end
    object spInv_RepTime_LamDelta: TDateTimeField
      FieldName = 'Time_LamDelta'
    end
    object spInv_RepTime_Rez1: TDateTimeField
      FieldName = 'Time_Rez1'
    end
    object spInv_RepTime_Rez2: TDateTimeField
      FieldName = 'Time_Rez2'
    end
    object spInv_RepTime_RezDelta: TDateTimeField
      FieldName = 'Time_RezDelta'
    end
    object spInv_RepRaw_Form1: TFloatField
      FieldName = 'Raw_Form1'
    end
    object spInv_RepRaw_Form2: TFloatField
      FieldName = 'Raw_Form2'
    end
    object spInv_RepRaw_FormDelta: TFloatField
      FieldName = 'Raw_FormDelta'
    end
    object spInv_RepRaw_Print1: TFloatField
      FieldName = 'Raw_Print1'
    end
    object spInv_RepRaw_Print2: TFloatField
      FieldName = 'Raw_Print2'
    end
    object spInv_RepRaw_PrintDelta: TFloatField
      FieldName = 'Raw_PrintDelta'
    end
    object spInv_RepRaw_Lam1: TFloatField
      FieldName = 'Raw_Lam1'
    end
    object spInv_RepRaw_Lam2: TFloatField
      FieldName = 'Raw_Lam2'
    end
    object spInv_RepRaw_LamDelta: TFloatField
      FieldName = 'Raw_LamDelta'
    end
    object spInv_RepRaw_Rez1: TFloatField
      FieldName = 'Raw_Rez1'
    end
    object spInv_RepRaw_Rez2: TFloatField
      FieldName = 'Raw_Rez2'
    end
    object spInv_RepRaw_RezDelta: TFloatField
      FieldName = 'Raw_RezDelta'
    end
    object spInv_Repxxx: TIntegerField
      FieldName = 'xxx'
    end
    object spInv_RepCalcDate: TDateTimeField
      FieldName = 'CalcDate'
    end
    object spInv_RepCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object spInv_RepID_Main: TIntegerField
      FieldName = 'ID_Main'
    end
    object spInv_Repid_Project: TIntegerField
      FieldName = 'id_Project'
    end
    object spInv_RepKomposit: TStringField
      FieldName = 'Komposit'
      Size = 255
    end
    object spInv_RepOwnName: TStringField
      FieldName = 'OwnName'
      Size = 255
    end
    object spInv_RepFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object spInv_RepFIOFFF: TStringField
      FieldName = 'FIOFFF'
      Size = 255
    end
  end
  object dsInv_Rep: TDataSetProvider
    DataSet = spInv_Rep
    Constraints = True
    Left = 338
    Top = 186
  end
  object dsPrjList: TDataSetProvider
    DataSet = spPrjList
    Constraints = True
    Left = 360
    Top = 88
  end
  object spPrjList: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Inv_ProjectGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 320
    Top = 89
    object spPrjListid_Project: TAutoIncField
      FieldName = 'id_Project'
      ReadOnly = True
    end
    object spPrjListName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spPrjListid_User: TIntegerField
      FieldName = 'id_User'
    end
    object spPrjListPrjNum: TIntegerField
      FieldName = 'PrjNum'
    end
    object spPrjListPrjDate: TDateTimeField
      FieldName = 'PrjDate'
    end
    object spPrjListDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object spPrjListid_Inv: TIntegerField
      FieldName = 'id_Inv'
    end
    object spPrjListDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spPrjListCalcDate: TDateTimeField
      FieldName = 'CalcDate'
    end
    object spPrjListCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object spPrjListID_Main: TIntegerField
      FieldName = 'ID_Main'
    end
    object spPrjListKomposit: TStringField
      FieldName = 'Komposit'
      Size = 255
    end
    object spPrjListOwnName: TStringField
      FieldName = 'OwnName'
      Size = 255
    end
    object spPrjListCheckDateFact: TDateTimeField
      FieldName = 'CheckDateFact'
    end
    object spPrjListSendFact: TDateTimeField
      FieldName = 'SendFact'
    end
    object spPrjListxxxDate: TDateTimeField
      FieldName = 'xxxDate'
    end
    object spPrjListAmount1: TFloatField
      FieldName = 'Amount1'
    end
    object spPrjListAmount2: TFloatField
      FieldName = 'Amount2'
    end
    object spPrjListInv1: TFloatField
      FieldName = 'Inv1'
    end
    object spPrjListInv2: TFloatField
      FieldName = 'Inv2'
    end
    object spPrjListPrice: TFloatField
      FieldName = 'Price'
    end
    object spPrjListKlishe_Inv1: TFloatField
      FieldName = 'Klishe_Inv1'
    end
    object spPrjListKlishe_Inv2: TFloatField
      FieldName = 'Klishe_Inv2'
    end
    object spPrjListKlishe_Price: TFloatField
      FieldName = 'Klishe_Price'
    end
    object spPrjListKlishe_Price2: TFloatField
      FieldName = 'Klishe_Price2'
    end
    object spPrjListKlishe_Amount: TFloatField
      FieldName = 'Klishe_Amount'
    end
    object spPrjListKlishe_Amount2: TFloatField
      FieldName = 'Klishe_Amount2'
    end
    object spPrjListTime_FormPrice: TFloatField
      FieldName = 'Time_FormPrice'
    end
    object spPrjListTime_Form1: TDateTimeField
      FieldName = 'Time_Form1'
    end
    object spPrjListTime_Form2: TDateTimeField
      FieldName = 'Time_Form2'
    end
    object spPrjListTime_Form_Time: TDateTimeField
      FieldName = 'Time_Form_Time'
    end
    object spPrjListTime_Form_Tuning: TDateTimeField
      FieldName = 'Time_Form_Tuning'
    end
    object spPrjListTime_FormDelta: TDateTimeField
      FieldName = 'Time_FormDelta'
    end
    object spPrjListTime_PrintPrice: TFloatField
      FieldName = 'Time_PrintPrice'
    end
    object spPrjListTime_Print1: TDateTimeField
      FieldName = 'Time_Print1'
    end
    object spPrjListTime_Print2: TDateTimeField
      FieldName = 'Time_Print2'
    end
    object spPrjListTime_Print_Time: TDateTimeField
      FieldName = 'Time_Print_Time'
    end
    object spPrjListTime_Print_Tuning: TDateTimeField
      FieldName = 'Time_Print_Tuning'
    end
    object spPrjListTime_PrintDelta: TDateTimeField
      FieldName = 'Time_PrintDelta'
    end
    object spPrjListTime_LamPrice: TFloatField
      FieldName = 'Time_LamPrice'
    end
    object spPrjListTime_Lam1: TDateTimeField
      FieldName = 'Time_Lam1'
    end
    object spPrjListTime_Lam2: TDateTimeField
      FieldName = 'Time_Lam2'
    end
    object spPrjListTime_Lam_Time: TDateTimeField
      FieldName = 'Time_Lam_Time'
    end
    object spPrjListTime_Lam_Tuning: TDateTimeField
      FieldName = 'Time_Lam_Tuning'
    end
    object spPrjListTime_LamDelta: TDateTimeField
      FieldName = 'Time_LamDelta'
    end
    object spPrjListTime_RezPrice: TFloatField
      FieldName = 'Time_RezPrice'
    end
    object spPrjListTime_Rez1: TDateTimeField
      FieldName = 'Time_Rez1'
    end
    object spPrjListTime_Rez2: TDateTimeField
      FieldName = 'Time_Rez2'
    end
    object spPrjListTime_Rez_Time: TDateTimeField
      FieldName = 'Time_Rez_Time'
    end
    object spPrjListTime_Rez_Tuning: TDateTimeField
      FieldName = 'Time_Rez_Tuning'
    end
    object spPrjListTime_RezDelta: TDateTimeField
      FieldName = 'Time_RezDelta'
    end
    object spPrjListRaw_FormAmount: TFloatField
      FieldName = 'Raw_FormAmount'
    end
    object spPrjListRaw_Form1: TFloatField
      FieldName = 'Raw_Form1'
    end
    object spPrjListRaw_Form2: TFloatField
      FieldName = 'Raw_Form2'
    end
    object spPrjListRaw_FormPriceStat: TFloatField
      FieldName = 'Raw_FormPriceStat'
    end
    object spPrjListRaw_FormDelta: TFloatField
      FieldName = 'Raw_FormDelta'
    end
    object spPrjListRaw_PrintAmount: TFloatField
      FieldName = 'Raw_PrintAmount'
    end
    object spPrjListRaw_Print1: TFloatField
      FieldName = 'Raw_Print1'
    end
    object spPrjListRaw_Print2: TFloatField
      FieldName = 'Raw_Print2'
    end
    object spPrjListRaw_PrintPriceStat: TFloatField
      FieldName = 'Raw_PrintPriceStat'
    end
    object spPrjListRaw_PrintDelta: TFloatField
      FieldName = 'Raw_PrintDelta'
    end
    object spPrjListRaw_LamAmount: TFloatField
      FieldName = 'Raw_LamAmount'
    end
    object spPrjListRaw_Lam1: TFloatField
      FieldName = 'Raw_Lam1'
    end
    object spPrjListRaw_Lam2: TFloatField
      FieldName = 'Raw_Lam2'
    end
    object spPrjListRaw_LamPriceStat: TFloatField
      FieldName = 'Raw_LamPriceStat'
    end
    object spPrjListRaw_LamDelta: TFloatField
      FieldName = 'Raw_LamDelta'
    end
    object spPrjListRaw_RezAmount: TFloatField
      FieldName = 'Raw_RezAmount'
    end
    object spPrjListRaw_Rez1: TFloatField
      FieldName = 'Raw_Rez1'
    end
    object spPrjListRaw_Rez2: TFloatField
      FieldName = 'Raw_Rez2'
    end
    object spPrjListRaw_RezPriceStat: TFloatField
      FieldName = 'Raw_RezPriceStat'
    end
    object spPrjListRaw_RezDelta: TFloatField
      FieldName = 'Raw_RezDelta'
    end
    object spPrjListid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spPrjListLastUpdated: TBytesField
      FieldName = 'LastUpdated'
      ReadOnly = True
      Size = 8
    end
    object spPrjListid_lc: TIntegerField
      FieldName = 'id_lc'
    end
    object spPrjListComment: TStringField
      FieldName = 'Comment'
      Size = 1000
    end
    object spPrjListInv_Prev: TFloatField
      FieldName = 'Inv_Prev'
    end
    object spPrjListInv_Real: TFloatField
      FieldName = 'Inv_Real'
    end
    object spPrjListPrice_Real: TFloatField
      FieldName = 'Price_Real'
    end
    object spPrjListKL_PRev: TFloatField
      FieldName = 'KL_PRev'
    end
    object spPrjListKL_Real: TFloatField
      FieldName = 'KL_Real'
    end
    object spPrjListKL_Price: TFloatField
      FieldName = 'KL_Price'
    end
    object spPrjListid_Checker: TIntegerField
      FieldName = 'id_Checker'
    end
    object spPrjListid_CheckerFFF: TIntegerField
      FieldName = 'id_CheckerFFF'
    end
    object spPrjListFIO: TStringField
      FieldName = 'FIO'
      ReadOnly = True
      Size = 152
    end
    object spPrjListFIOFFF: TStringField
      FieldName = 'FIOFFF'
      ReadOnly = True
      Size = 152
    end
  end
  object spPP: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Inv_ProjectGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Size = -1
        Value = 0
      end
      item
        Name = '@id_Project'
        DataType = ftSmallint
        Value = 2
      end>
    Left = 240
    Top = 9
    object spPPid_Project: TAutoIncField
      FieldName = 'id_Project'
    end
    object spPPName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spPPid_User: TIntegerField
      FieldName = 'id_User'
    end
    object spPPPrjNum: TIntegerField
      FieldName = 'PrjNum'
    end
    object spPPPrjDate: TDateTimeField
      FieldName = 'PrjDate'
    end
    object spPPDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object spPPid_Inv: TIntegerField
      FieldName = 'id_Inv'
    end
    object spPPDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spPPAmount1: TFloatField
      FieldName = 'Amount1'
    end
    object spPPAmount2: TFloatField
      FieldName = 'Amount2'
    end
    object spPPInv1: TFloatField
      FieldName = 'Inv1'
    end
    object spPPInv2: TFloatField
      FieldName = 'Inv2'
    end
    object spPPPrice: TFloatField
      FieldName = 'Price'
    end
    object spPPKlishe_Inv1: TFloatField
      FieldName = 'Klishe_Inv1'
    end
    object spPPKlishe_Inv2: TFloatField
      FieldName = 'Klishe_Inv2'
    end
    object spPPKlishe_Price: TFloatField
      FieldName = 'Klishe_Price'
    end
    object spPPKlishe_Amount: TFloatField
      FieldName = 'Klishe_Amount'
    end
    object spPPTime_FormPrice: TFloatField
      FieldName = 'Time_FormPrice'
    end
    object spPPTime_Form1: TDateTimeField
      FieldName = 'Time_Form1'
    end
    object spPPTime_Form2: TDateTimeField
      FieldName = 'Time_Form2'
    end
    object spPPTime_Form_Time: TDateTimeField
      FieldName = 'Time_Form_Time'
    end
    object spPPTime_Form_Tuning: TDateTimeField
      FieldName = 'Time_Form_Tuning'
    end
    object spPPTime_FormDelta: TDateTimeField
      FieldName = 'Time_FormDelta'
    end
    object spPPTime_PrintPrice: TFloatField
      FieldName = 'Time_PrintPrice'
    end
    object spPPTime_Print1: TDateTimeField
      FieldName = 'Time_Print1'
    end
    object spPPTime_Print2: TDateTimeField
      FieldName = 'Time_Print2'
    end
    object spPPTime_Print_Time: TDateTimeField
      FieldName = 'Time_Print_Time'
    end
    object spPPTime_Print_Tuning: TDateTimeField
      FieldName = 'Time_Print_Tuning'
    end
    object spPPTime_PrintDelta: TDateTimeField
      FieldName = 'Time_PrintDelta'
    end
    object spPPTime_LamPrice: TFloatField
      FieldName = 'Time_LamPrice'
    end
    object spPPTime_Lam1: TDateTimeField
      FieldName = 'Time_Lam1'
    end
    object spPPTime_Lam2: TDateTimeField
      FieldName = 'Time_Lam2'
    end
    object spPPTime_Lam_Time: TDateTimeField
      FieldName = 'Time_Lam_Time'
    end
    object spPPTime_Lam_Tuning: TDateTimeField
      FieldName = 'Time_Lam_Tuning'
    end
    object spPPTime_LamDelta: TDateTimeField
      FieldName = 'Time_LamDelta'
    end
    object spPPTime_RezPrice: TFloatField
      FieldName = 'Time_RezPrice'
    end
    object spPPTime_Rez1: TDateTimeField
      FieldName = 'Time_Rez1'
    end
    object spPPTime_Rez2: TDateTimeField
      FieldName = 'Time_Rez2'
    end
    object spPPTime_Rez_Time: TDateTimeField
      FieldName = 'Time_Rez_Time'
    end
    object spPPTime_Rez_Tuning: TDateTimeField
      FieldName = 'Time_Rez_Tuning'
    end
    object spPPTime_RezDelta: TDateTimeField
      FieldName = 'Time_RezDelta'
    end
    object spPPRaw_FormAmount: TFloatField
      FieldName = 'Raw_FormAmount'
    end
    object spPPRaw_Form1: TFloatField
      FieldName = 'Raw_Form1'
    end
    object spPPRaw_Form2: TFloatField
      FieldName = 'Raw_Form2'
    end
    object spPPRaw_FormPriceStat: TFloatField
      FieldName = 'Raw_FormPriceStat'
    end
    object spPPRaw_FormDelta: TFloatField
      FieldName = 'Raw_FormDelta'
    end
    object spPPRaw_PrintAmount: TFloatField
      FieldName = 'Raw_PrintAmount'
    end
    object spPPRaw_Print1: TFloatField
      FieldName = 'Raw_Print1'
    end
    object spPPRaw_Print2: TFloatField
      FieldName = 'Raw_Print2'
    end
    object spPPRaw_PrintPriceStat: TFloatField
      FieldName = 'Raw_PrintPriceStat'
    end
    object spPPRaw_PrintDelta: TFloatField
      FieldName = 'Raw_PrintDelta'
    end
    object spPPRaw_LamAmount: TFloatField
      FieldName = 'Raw_LamAmount'
    end
    object spPPRaw_Lam1: TFloatField
      FieldName = 'Raw_Lam1'
    end
    object spPPRaw_Lam2: TFloatField
      FieldName = 'Raw_Lam2'
    end
    object spPPRaw_LamPriceStat: TFloatField
      FieldName = 'Raw_LamPriceStat'
    end
    object spPPRaw_LamDelta: TFloatField
      FieldName = 'Raw_LamDelta'
    end
    object spPPRaw_RezAmount: TFloatField
      FieldName = 'Raw_RezAmount'
    end
    object spPPRaw_Rez1: TFloatField
      FieldName = 'Raw_Rez1'
    end
    object spPPRaw_Rez2: TFloatField
      FieldName = 'Raw_Rez2'
    end
    object spPPRaw_RezPriceStat: TFloatField
      FieldName = 'Raw_RezPriceStat'
    end
    object spPPRaw_RezDelta: TFloatField
      FieldName = 'Raw_RezDelta'
    end
    object spPPid_Goods: TIntegerField
      FieldName = 'id_Goods'
    end
    object spPPWNAme: TStringField
      FieldName = 'WNAme'
      Size = 255
    end
    object spPPCalcDate: TDateTimeField
      FieldName = 'CalcDate'
    end
    object spPPCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object spPPID_Main: TIntegerField
      FieldName = 'ID_Main'
    end
    object spPPKlishe_Price2: TFloatField
      FieldName = 'Klishe_Price2'
    end
    object spPPKlishe_Amount2: TFloatField
      FieldName = 'Klishe_Amount2'
    end
    object spPPLastUpdated: TBytesField
      FieldName = 'LastUpdated'
      ReadOnly = True
      Size = 8
    end
    object spPPid_lc: TIntegerField
      FieldName = 'id_lc'
    end
    object spPPComment: TStringField
      FieldName = 'Comment'
      Size = 1000
    end
    object spPPInv_Prev: TFloatField
      FieldName = 'Inv_Prev'
    end
    object spPPInv_Real: TFloatField
      FieldName = 'Inv_Real'
    end
    object spPPKL_PRev: TFloatField
      FieldName = 'KL_PRev'
    end
    object spPPKL_Real: TFloatField
      FieldName = 'KL_Real'
    end
    object spPPKL_Price: TFloatField
      FieldName = 'KL_Price'
    end
    object spPPPrice_Real: TFloatField
      FieldName = 'Price_Real'
    end
    object spPPKomposit: TStringField
      FieldName = 'Komposit'
      Size = 255
    end
    object spPPOwnName: TStringField
      FieldName = 'OwnName'
      Size = 255
    end
    object spPPCheckDateFact: TDateTimeField
      FieldName = 'CheckDateFact'
    end
    object spPPSendFact: TDateTimeField
      FieldName = 'SendFact'
    end
    object spPPxxxDate: TDateTimeField
      FieldName = 'xxxDate'
    end
    object spPPid_Checker: TIntegerField
      FieldName = 'id_Checker'
    end
    object spPPid_CheckerFFF: TIntegerField
      FieldName = 'id_CheckerFFF'
    end
    object spPPFIO: TStringField
      FieldName = 'FIO'
      ReadOnly = True
      Size = 152
    end
    object spPPFIOFFF: TStringField
      FieldName = 'FIOFFF'
      ReadOnly = True
      Size = 152
    end
  end
  object dsPP: TSQLUpdateDSProvider
    DataSet = spPP
    Constraints = True
    ModifySQL.Strings = (
      'Exec Inv_ProjectEdit    @Comment = :Comment,'
      '  @Klishe_Price2 = :Klishe_Price2,'
      '  @Klishe_Amount2 = :Klishe_Amount2,'
      ''
      '  @id_Project = :id_Project,'
      '  @Name = :Name,'
      '  @id_User = :id_User,'
      '  @PrjNum = :PrjNum,'
      '  @PrjDate = :PrjDate,'
      '  @id_Inv = :id_Inv,'
      '  @Amount1 = :Amount1,'
      '  @Amount2 = :Amount2,'
      '  @Inv1 = :Inv1,'
      '  @Inv2 = :Inv2,'
      '  @Price = :Price,'
      '  @Klishe_Inv1 = :Klishe_Inv1,'
      '  @Klishe_Inv2 = :Klishe_Inv2,'
      '  @Klishe_Price = :Klishe_Price,'
      '  @Klishe_Amount = :Klishe_Amount,'
      '  @Time_FormPrice = :Time_FormPrice,'
      '  @Time_Form1 = :Time_Form1,'
      '  @Time_Form2 = :Time_Form2,'
      '  @Time_Form_Time = :Time_Form_Time,'
      '  @Time_Form_Tuning = :Time_Form_Tuning,'
      '  @Time_FormDelta = :Time_FormDelta,'
      '  @Time_PrintPrice = :Time_PrintPrice,'
      '  @Time_Print1 = :Time_Print1,'
      '  @Time_Print2 = :Time_Print2,'
      '  @Time_Print_Time = :Time_Print_Time,'
      '  @Time_Print_Tuning = :Time_Print_Tuning,'
      '  @Time_PrintDelta = :Time_PrintDelta,'
      '  @Time_LamPrice = :Time_LamPrice,'
      '  @Time_Lam1 = :Time_Lam1,'
      '  @Time_Lam2 = :Time_Lam2,'
      '  @Time_Lam_Time = :Time_Lam_Time,'
      '  @Time_Lam_Tuning = :Time_Lam_Tuning,'
      '  @Time_LamDelta = :Time_LamDelta,'
      '  @Time_RezPrice = :Time_RezPrice,'
      '  @Time_Rez1 = :Time_Rez1,'
      '  @Time_Rez2 = :Time_Rez2,'
      '  @Time_Rez_Time = :Time_Rez_Time,'
      '  @Time_Rez_Tuning = :Time_Rez_Tuning,'
      '  @Time_RezDelta = :Time_RezDelta,'
      '  @Raw_FormAmount = :Raw_FormAmount,'
      '  @Raw_Form1 = :Raw_Form1,'
      '  @Raw_Form2 = :Raw_Form2,'
      '  @Raw_FormPriceStat = :Raw_FormPriceStat,'
      '  @Raw_FormDelta = :Raw_FormDelta,'
      '  @Raw_PrintAmount = :Raw_PrintAmount,'
      '  @Raw_Print1 = :Raw_Print1,'
      '  @Raw_Print2 = :Raw_Print2,'
      '  @Raw_PrintPriceStat = :Raw_PrintPriceStat,'
      '  @Raw_PrintDelta = :Raw_PrintDelta,'
      '  @Raw_LamAmount = :Raw_LamAmount,'
      '  @Raw_Lam1 = :Raw_Lam1,'
      '  @Raw_Lam2 = :Raw_Lam2,'
      '  @Raw_LamPriceStat = :Raw_LamPriceStat,'
      '  @Raw_LamDelta = :Raw_LamDelta,'
      '  @Raw_RezAmount = :Raw_RezAmount,'
      '  @Raw_Rez1 = :Raw_Rez1,'
      '  @Raw_Rez2 = :Raw_Rez2,'
      '  @Raw_RezPriceStat = :Raw_RezPriceStat,'
      '  @Raw_RezDelta = :Raw_RezDelta,'
      '  @id_Goods = :id_Goods  ,'
      ''
      '  @Inv_Prev = :Inv_Prev,'
      '  @Inv_Real = :Inv_Real,'
      '  @Price_Real = :Price_Real,'
      '  @KL_PRev = :KL_PRev,'
      '  @KL_Real = :KL_Real,'
      '  @KL_Price = :KL_Price,'
      ''
      '  @Komposit = :Komposit,'
      '  @OwnName = :OwnName'
      ''
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' ')
    InsertSQL.Strings = (
      'Exec Inv_ProjectAdd @Comment = :Comment,'
      '  @Klishe_Price2 = :Klishe_Price2,'
      '  @Klishe_Amount2 = :Klishe_Amount2,'
      ''
      '  @Name = :Name,'
      '  @id_User = :id_User,'
      '  @PrjNum = :PrjNum,'
      '  @PrjDate = :PrjDate,'
      '  @id_Inv = :id_Inv,'
      '  @Amount1 = :Amount1,'
      '  @Amount2 = :Amount2,'
      '  @Inv1 = :Inv1,'
      '  @Inv2 = :Inv2,'
      '  @Price = :Price,'
      '  @Klishe_Inv1 = :Klishe_Inv1,'
      '  @Klishe_Inv2 = :Klishe_Inv2,'
      '  @Klishe_Price = :Klishe_Price,'
      '  @Klishe_Amount = :Klishe_Amount,'
      '  @Time_FormPrice = :Time_FormPrice,'
      '  @Time_Form1 = :Time_Form1,'
      '  @Time_Form2 = :Time_Form2,'
      '  @Time_Form_Time = :Time_Form_Time,'
      '  @Time_Form_Tuning = :Time_Form_Tuning,'
      '  @Time_FormDelta = :Time_FormDelta,'
      '  @Time_PrintPrice = :Time_PrintPrice,'
      '  @Time_Print1 = :Time_Print1,'
      '  @Time_Print2 = :Time_Print2,'
      '  @Time_Print_Time = :Time_Print_Time,'
      '  @Time_Print_Tuning = :Time_Print_Tuning,'
      '  @Time_PrintDelta = :Time_PrintDelta,'
      '  @Time_LamPrice = :Time_LamPrice,'
      '  @Time_Lam1 = :Time_Lam1,'
      '  @Time_Lam2 = :Time_Lam2,'
      '  @Time_Lam_Time = :Time_Lam_Time,'
      '  @Time_Lam_Tuning = :Time_Lam_Tuning,'
      '  @Time_LamDelta = :Time_LamDelta,'
      '  @Time_RezPrice = :Time_RezPrice,'
      '  @Time_Rez1 = :Time_Rez1,'
      '  @Time_Rez2 = :Time_Rez2,'
      '  @Time_Rez_Time = :Time_Rez_Time,'
      '  @Time_Rez_Tuning = :Time_Rez_Tuning,'
      '  @Time_RezDelta = :Time_RezDelta,'
      '  @Raw_FormAmount = :Raw_FormAmount,'
      '  @Raw_Form1 = :Raw_Form1,'
      '  @Raw_Form2 = :Raw_Form2,'
      '  @Raw_FormPriceStat = :Raw_FormPriceStat,'
      '  @Raw_FormDelta = :Raw_FormDelta,'
      '  @Raw_PrintAmount = :Raw_PrintAmount,'
      '  @Raw_Print1 = :Raw_Print1,'
      '  @Raw_Print2 = :Raw_Print2,'
      '  @Raw_PrintPriceStat = :Raw_PrintPriceStat,'
      '  @Raw_PrintDelta = :Raw_PrintDelta,'
      '  @Raw_LamAmount = :Raw_LamAmount,'
      '  @Raw_Lam1 = :Raw_Lam1,'
      '  @Raw_Lam2 = :Raw_Lam2,'
      '  @Raw_LamPriceStat = :Raw_LamPriceStat,'
      '  @Raw_LamDelta = :Raw_LamDelta,'
      '  @Raw_RezAmount = :Raw_RezAmount,'
      '  @Raw_Rez1 = :Raw_Rez1,'
      '  @Raw_Rez2 = :Raw_Rez2,'
      '  @Raw_RezPriceStat = :Raw_RezPriceStat,'
      '  @Raw_RezDelta = :Raw_RezDelta,'
      '  @id_Goods = :id_Goods,'
      ''
      '  @Inv_Prev = :Inv_Prev,'
      '  @Inv_Real = :Inv_Real,'
      '  @Price_Real = :Price_Real,'
      '  @KL_PRev = :KL_PRev,'
      '  @KL_Real = :KL_Real,'
      '  @KL_Price = :KL_Price ,'
      ''
      '  @Komposit = :Komposit,'
      '  @OwnName = :OwnName'
      ''
      ''
      ''
      ' '
      ' '
      ' ')
    DeleteSQL.Strings = (
      'EXEC OP_OperWareDel'
      '  @id_OperWare =:id_OperWare'
      ' ')
    Left = 371
    Top = 65532
  end
  object dsTime: TSQLUpdateDSProvider
    DataSet = spTime
    Constraints = True
    ModifySQL.Strings = (
      'Exec INV_TimeItemEDIT'
      '  @id_TimeItem = :id_TimeItem,'
      '  @Val = :Val,'
      '  @ValPlan = :ValPlan,'
      '  @id_TimeDict = :id_TimeDict,'
      '  @id_Project = :id_Project'
      ' ')
    InsertSQL.Strings = (
      'Exec INV_TimeItemAdd'
      '  @Val = :Val,'
      '  @ValPlan = :ValPlan,'
      '  @id_TimeDict = :id_TimeDict,'
      '  @id_Project = :id_Project'
      ' ')
    DeleteSQL.Strings = (
      'EXEC INV_TimeItemDel'
      '@id_TimeItem = :id_TimeItem')
    Left = 331
    Top = 12
  end
  object spTime: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'INV_TimeItemGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Value = 0
      end
      item
        Name = '@id_Project'
        DataType = ftInteger
        Value = 0
      end>
    Left = 272
    Top = 17
    object spTimeid_TimeItem: TAutoIncField
      FieldName = 'id_TimeItem'
      ReadOnly = True
    end
    object spTimeVal: TDateTimeField
      FieldName = 'Val'
    end
    object spTimeid_TimeDict: TIntegerField
      FieldName = 'id_TimeDict'
    end
    object spTimeid_Project: TIntegerField
      FieldName = 'id_Project'
    end
    object spTimeName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spTimeLName: TStringField
      FieldName = 'LName'
      Size = 255
    end
    object spTimeValPlan: TDateTimeField
      FieldName = 'ValPlan'
    end
    object spTimeTimePricePlan: TFloatField
      FieldName = 'TimePricePlan'
      ReadOnly = True
    end
    object spTimeid_Lines: TIntegerField
      FieldName = 'id_Lines'
    end
    object spTimeExtID: TIntegerField
      FieldName = 'ExtID'
    end
  end
  object spInvWare: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Inv_WareGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftSmallint
        Direction = pdReturnValue
        Value = 0
      end
      item
        Name = '@id_Project'
        DataType = ftSmallint
        Value = 0
      end
      item
        Name = '@PrjNum'
        DataType = ftSmallint
        Value = 0
      end
      item
        Name = '@id_Manufact'
        DataType = ftSmallint
        Value = 0
      end
      item
        Name = '@Mode'
        DataType = ftSmallint
        Value = 126
      end>
    Left = 248
    Top = 73
  end
  object dsInvWare: TSQLUpdateDSProvider
    DataSet = spInvWare
    Constraints = True
    ModifySQL.Strings = (
      'EXEC Inv_WareEdit'
      '  @id_Project = :id_Project,'
      '  @id_Inv_Ware = :id_Inv_Ware,'
      '  @id_Goods = :id_Goods,'
      '  @id_Measure = :id_Measure,'
      '  @id_Manufact = :id_Manufact,'
      '  @AmountPlan = :AmountPlan,'
      '  @PricePlan = :PricePlan,'
      '  @Amount = :Amount,'
      '  @Summ = :Summ'
      ' ')
    InsertSQL.Strings = (
      'EXEC Inv_WareEdit'
      '  @id_Project = :id_Project,'
      '  @id_Inv_Ware = :id_Inv_Ware,'
      '  @id_Goods = :id_Goods,'
      '  @id_Measure = :id_Measure,'
      '  @id_Manufact = :id_Manufact,'
      '  @AmountPlan = :AmountPlan,'
      '  @PricePlan = :PricePlan,'
      '  @Amount = :Amount,'
      '  @Summ = :Summ')
    DeleteSQL.Strings = (
      'EXEC Inv_WareDel'
      '  @id_Inv_Ware =:id_Inv_Ware'
      ' '
      ' ')
    Left = 283
    Top = 76
  end
  object spOperProp_v2: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'OP_OperGetProp_v2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftSmallint
        Direction = pdReturnValue
        Value = 0
      end
      item
        Name = '@id_Oper'
        DataType = ftString
        Size = 5
        Value = '31298'
      end>
    Left = 131
    Top = 575
    object spOperProp_v2id_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spOperProp_v2id_OperParent: TIntegerField
      FieldName = 'id_OperParent'
    end
    object spOperProp_v2id_old_Oper: TIntegerField
      FieldName = 'id_old_Oper'
    end
    object spOperProp_v2DateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object spOperProp_v2id_LC_Oper: TIntegerField
      FieldName = 'id_LC_Oper'
    end
    object spOperProp_v2OperVid: TIntegerField
      FieldName = 'OperVid'
    end
    object spOperProp_v2id_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spOperProp_v2CreatorFIO: TStringField
      FieldName = 'CreatorFIO'
      Size = 152
    end
    object spOperProp_v2id_business: TIntegerField
      FieldName = 'id_business'
    end
    object spOperProp_v2Id_CurrencyBsn: TIntegerField
      FieldName = 'Id_CurrencyBsn'
    end
    object spOperProp_v2BusinessName: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object spOperProp_v2BusinessNum: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object spOperProp_v2DateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object spOperProp_v2Correct: TBooleanField
      FieldName = 'Correct'
      DisplayValues = '��;���'
    end
    object spOperProp_v2OperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spOperProp_v2Id_CurrencyOper: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object spOperProp_v2CurrencyOperName: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object spOperProp_v2CurrencyOperShortName: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object spOperProp_v2PriceOper: TFloatField
      FieldName = 'PriceOper'
    end
    object spOperProp_v2RateOper: TFloatField
      FieldName = 'RateOper'
    end
    object spOperProp_v2Id_CurrencySys: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object spOperProp_v2CurrencySysName: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object spOperProp_v2CurrencySysShortName: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object spOperProp_v2SummSys: TFloatField
      FieldName = 'SummSys'
    end
    object spOperProp_v2RateSys: TFloatField
      FieldName = 'RateSys'
    end
    object spOperProp_v2id_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spOperProp_v2id_Warehouse: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object spOperProp_v2id_Manufact: TIntegerField
      FieldName = 'id_Manufact'
    end
    object spOperProp_v2SrcName: TStringField
      FieldName = 'SrcName'
      Size = 50
    end
    object spOperProp_v2SrcID_Main: TIntegerField
      FieldName = 'SrcID_Main'
    end
    object spOperProp_v2id_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spOperProp_v2id_Acc_Ext: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object spOperProp_v2id_Warehouse_Ext: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object spOperProp_v2id_Manufact_Ext: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object spOperProp_v2ReprName: TStringField
      FieldName = 'ReprName'
      Size = 255
    end
    object spOperProp_v2ReprID_Main: TIntegerField
      FieldName = 'ReprID_Main'
    end
    object spOperProp_v2Id_CurrencyInv: TIntegerField
      FieldName = 'Id_CurrencyInv'
    end
    object spOperProp_v2RateInv: TFloatField
      FieldName = 'RateInv'
    end
    object spOperProp_v2CurrencyInvName: TStringField
      FieldName = 'CurrencyInvName'
      Size = 30
    end
    object spOperProp_v2CurrencyInvShortName: TStringField
      FieldName = 'CurrencyInvShortName'
      Size = 10
    end
    object spOperProp_v2Koeff: TIntegerField
      FieldName = 'Koeff'
    end
    object spOperProp_v2KoeffName: TStringField
      FieldName = 'KoeffName'
      Size = 50
    end
    object spOperProp_v2CheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object spOperProp_v2CheckerFIO: TStringField
      FieldName = 'CheckerFIO'
      Size = 152
    end
    object spOperProp_v2id_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object spOperProp_v2FormalDistribName: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object spOperProp_v2id_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object spOperProp_v2FuncDistribName: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object spOperProp_v2Deleted: TBooleanField
      FieldName = 'Deleted'
    end
    object spOperProp_v2id_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spOperProp_v2ContrAgentName: TStringField
      FieldName = 'ContrAgentName'
      Size = 50
    end
    object spOperProp_v2id_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spOperProp_v2SummOper: TFloatField
      FieldName = 'SummOper'
    end
    object spOperProp_v2TypeName: TStringField
      FieldName = 'TypeName'
      Size = 30
    end
    object spOperProp_v2HasViza: TBooleanField
      FieldName = 'HasViza'
    end
    object spOperProp_v2OperState: TIntegerField
      FieldName = 'OperState'
    end
    object spOperProp_v2HidedOper: TBooleanField
      FieldName = 'HidedOper'
    end
    object spOperProp_v2RateMain: TFloatField
      FieldName = 'RateMain'
    end
    object spOperProp_v2id_Repr_Ex: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object spOperProp_v2id_DocType: TIntegerField
      FieldName = 'id_DocType'
    end
    object spOperProp_v2Imp_PayBasic: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object spOperProp_v2AccInv_PayAssignment: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object spOperProp_v2Contract: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object spOperProp_v2OperCrnName: TStringField
      FieldName = 'OperCrnName'
      Size = 10
    end
    object spOperProp_v2Blocked: TBooleanField
      FieldName = 'Blocked'
    end
    object spOperProp_v2CurrencyBsnName: TStringField
      FieldName = 'CurrencyBsnName'
      Size = 10
    end
    object spOperProp_v2OpComment: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object spOperProp_v2RealDataCreate: TDateTimeField
      FieldName = 'RealDataCreate'
    end
    object spOperProp_v2OperTypeSIGN: TIntegerField
      FieldName = 'OperTypeSIGN'
    end
    object spOperProp_v2HasChild: TIntegerField
      FieldName = 'HasChild'
    end
    object spOperProp_v2Dig1: TFloatField
      FieldName = 'Dig1'
    end
    object spOperProp_v2Dig2: TFloatField
      FieldName = 'Dig2'
    end
    object spOperProp_v2Dig3: TFloatField
      FieldName = 'Dig3'
    end
    object spOperProp_v2Dig4: TFloatField
      FieldName = 'Dig4'
    end
    object spOperProp_v2Dig5: TFloatField
      FieldName = 'Dig5'
    end
    object spOperProp_v2Dig6: TFloatField
      FieldName = 'Dig6'
    end
    object spOperProp_v2Dig7: TFloatField
      FieldName = 'Dig7'
    end
    object spOperProp_v2Dig8: TFloatField
      FieldName = 'Dig8'
    end
    object spOperProp_v2Dig9: TFloatField
      FieldName = 'Dig9'
    end
    object spOperProp_v2Dig10: TFloatField
      FieldName = 'Dig10'
    end
    object spOperProp_v2Dig11: TFloatField
      FieldName = 'Dig11'
    end
    object spOperProp_v2Dig12: TFloatField
      FieldName = 'Dig12'
    end
    object spOperProp_v2Dig13: TFloatField
      FieldName = 'Dig13'
    end
    object spOperProp_v2Dig14: TFloatField
      FieldName = 'Dig14'
    end
    object spOperProp_v2Dig15: TFloatField
      FieldName = 'Dig15'
    end
    object spOperProp_v2Str1: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object spOperProp_v2Str2: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object spOperProp_v2Str3: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object spOperProp_v2Str4: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object spOperProp_v2Str5: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object spOperProp_v2Str6: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object spOperProp_v2Str7: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object spOperProp_v2Str8: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object spOperProp_v2Str9: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object spOperProp_v2Str10: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object spOperProp_v2Str11: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object spOperProp_v2Str12: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object spOperProp_v2Str13: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object spOperProp_v2Str14: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object spOperProp_v2Str15: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object spOperProp_v2OperVidName: TStringField
      FieldName = 'OperVidName'
      Size = 50
    end
    object spOperProp_v2is_Mirr: TBooleanField
      FieldName = 'is_Mirr'
    end
    object spOperProp_v2id_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
    end
    object spOperProp_v2id_Warehouse_Group: TIntegerField
      FieldName = 'id_Warehouse_Group'
    end
    object spOperProp_v2id_Manufact_Group: TIntegerField
      FieldName = 'id_Manufact_Group'
    end
    object spOperProp_v2OperNum: TStringField
      FieldName = 'OperNum'
      Size = 255
    end
    object spOperProp_v2id_Replicator: TIntegerField
      FieldName = 'id_Replicator'
    end
    object spOperProp_v2VatIn: TBooleanField
      FieldName = 'VatIn'
    end
    object spOperProp_v2ReplicatorShortName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ReplicatorShortName'
      Size = 5
      Calculated = True
    end
    object spOperProp_v2AmountOper: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AmountOper'
      Calculated = True
    end
    object spOperProp_v2AmountOper2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AmountOper2'
      Calculated = True
    end
    object spOperProp_v2id_Measure: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Measure'
      Calculated = True
    end
    object spOperProp_v2MeasureName: TStringField
      FieldKind = fkCalculated
      FieldName = 'MeasureName'
      Size = 5
      Calculated = True
    end
    object spOperProp_v2RealKoef: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RealKoef'
      Calculated = True
    end
    object spOperProp_v2AmountOperBaseMS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AmountOperBaseMS'
      Calculated = True
    end
    object spOperProp_v2PriceInv: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PriceInv'
      Calculated = True
    end
    object spOperProp_v2id_Goods: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Goods'
      Calculated = True
    end
    object spOperProp_v2id_Raw: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Raw'
      Calculated = True
    end
    object spOperProp_v2id_ExtRaw: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_ExtRaw'
      Calculated = True
    end
    object spOperProp_v2id_Service: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Service'
      Calculated = True
    end
    object spOperProp_v2WareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'WareName'
      Size = 1
      Calculated = True
    end
    object spOperProp_v2WareID_Main: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'WareID_Main'
      Calculated = True
    end
    object spOperProp_v2id_UserChecker: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_UserChecker'
      Calculated = True
    end
    object spOperProp_v2OperDelta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OperDelta'
      Calculated = True
    end
    object spOperProp_v2OperRateDelta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OperRateDelta'
      Calculated = True
    end
    object spOperProp_v2OperTotalDelta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OperTotalDelta'
      Calculated = True
    end
    object spOperProp_v2DTDiff: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DTDiff'
      Calculated = True
    end
    object spOperProp_v2OperSummSys: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OperSummSys'
      Calculated = True
    end
    object spOperProp_v2OperDeltaCrn: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OperDeltaCrn'
      Calculated = True
    end
    object spOperProp_v2OperRateDeltaCrn: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OperRateDeltaCrn'
      Calculated = True
    end
    object spOperProp_v2OperTotalDeltaCrn: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OperTotalDeltaCrn'
      Calculated = True
    end
    object spOperProp_v2OperSum_Offer: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OperSum_Offer'
      Calculated = True
    end
    object spOperProp_v2OperSum_Inv: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OperSum_Inv'
      Calculated = True
    end
    object spOperProp_v2CRN_OLD_OperSum: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CRN_OLD_OperSum'
      Calculated = True
    end
    object spOperProp_v2CRN_OLD_OperSum_Offer: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CRN_OLD_OperSum_Offer'
      Calculated = True
    end
    object spOperProp_v2CRN_OperSum_Inv: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CRN_OperSum_Inv'
      Calculated = True
    end
    object spOperProp_v2OperSumCalced: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OperSumCalced'
      Calculated = True
    end
    object spOperProp_v2OperSum_OfferCalced: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OperSum_OfferCalced'
      Calculated = True
    end
    object spOperProp_v2id_Ctg_Goods_2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Ctg_Goods_2'
      Calculated = True
    end
    object spOperProp_v2Date1: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date1'
      Calculated = True
    end
    object spOperProp_v2Date2: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date2'
      Calculated = True
    end
    object spOperProp_v2Date3: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date3'
      Calculated = True
    end
    object spOperProp_v2Date4: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date4'
      Calculated = True
    end
    object spOperProp_v2Date5: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date5'
      Calculated = True
    end
    object spOperProp_v2Date6: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date6'
      Calculated = True
    end
    object spOperProp_v2Date7: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date7'
      Calculated = True
    end
    object spOperProp_v2Date8: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date8'
      Calculated = True
    end
    object spOperProp_v2Date9: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date9'
      Calculated = True
    end
    object spOperProp_v2Date10: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date10'
      Calculated = True
    end
    object spOperProp_v2Date11: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date11'
      Calculated = True
    end
    object spOperProp_v2Date12: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date12'
      Calculated = True
    end
    object spOperProp_v2Date13: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date13'
      Calculated = True
    end
    object spOperProp_v2Date14: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date14'
      Calculated = True
    end
    object spOperProp_v2Date15: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date15'
      Calculated = True
    end
    object spOperProp_v2id_Ctg_Raw_2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Ctg_Raw_2'
      Calculated = True
    end
    object spOperProp_v2id_Ctg_ExtRaw_2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Ctg_ExtRaw_2'
      Calculated = True
    end
    object spOperProp_v2id_Ctg_Service_2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Ctg_Service_2'
      Calculated = True
    end
  end
  object spInvCalc: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Inv_InvCalc;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@OPComment'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@OrdN'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Manufact'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OperTypeIn'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Mode'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 898
    Top = 4
  end
  object dsInvCalc: TDataSetProvider
    DataSet = spInvCalc
    Constraints = True
    Left = 898
    Top = 49
  end
  object spBuh: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Inv_WareGetList_Buh;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Project'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PrjNum'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@TM'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 141
    Top = 105
  end
  object dsBuh: TDataSetProvider
    DataSet = spBuh
    Constraints = True
    Left = 138
    Top = 153
  end
  object spAPCnstItemGetList: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'AP_CnstItemGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 588
    Top = 490
    object spAPCnstItemGetListid_CnstItem: TAutoIncField
      FieldName = 'id_CnstItem'
      ReadOnly = True
    end
    object spAPCnstItemGetListName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spAPCnstItemGetListVal: TFloatField
      FieldName = 'Val'
    end
    object spAPCnstItemGetListDateCreate: TDateTimeField
      FieldName = 'DateCreate'
    end
    object spAPCnstItemGetListDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spAPCnstItemGetListid_Business: TIntegerField
      FieldName = 'id_Business'
    end
  end
  object dsAPCnstItemGetList: TDataSetProvider
    DataSet = spAPCnstItemGetList
    Constraints = True
    Left = 588
    Top = 538
  end
  object dsWPrft: TDataSetProvider
    DataSet = spWPrft
    Constraints = True
    Left = 541
    Top = 177
  end
  object spWPrft: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = '__RPT_WarePrft;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OnlyNotZerro'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@IDGoodsList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDGoodsGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end>
    Left = 538
    Top = 220
  end
  object dsWHAvg: TDataSetProvider
    DataSet = spWHAvg
    Constraints = True
    Left = 517
    Top = 105
  end
  object spWHAvg: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = '__RPT_Mov_CtgGoods;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ShowNull'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@IDWHList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDWHGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDGoodsList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDGoodsGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end>
    Left = 514
    Top = 148
  end
  object dsCA_W: TDataSetProvider
    DataSet = spCA_W
    Constraints = True
    Left = 645
    Top = 177
  end
  object spCA_W: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = '__RPT_Ware_CA;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OnlyNotZerro'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@IDGoodsList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDGoodsGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDCAList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDCAGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 642
    Top = 220
  end
  object dsWOP: TDataSetProvider
    DataSet = spWOP
    Constraints = True
    Left = 637
    Top = 1
  end
  object spWOP: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = '__RPT_Ware_Oper;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_WareHouse'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Goods'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@NeedOperData'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@IDWHList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDWHGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDGoodsList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDGoodsGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end>
    Left = 634
    Top = 44
  end
  object dsPL_W: TDataSetProvider
    DataSet = spPL_W
    Constraints = True
    Left = 589
    Top = 185
  end
  object spPL_W: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = '__RPT_Ware_PL;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OnlyNotZerro'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@IDGoodsList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@IDGoodsGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end>
    Left = 586
    Top = 228
  end
  object spRPT_RR: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = '__RPT_RR;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateWH'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 467
    Top = 100
  end
  object dsRPT_RR: TDataSetProvider
    DataSet = spRPT_RR
    Constraints = True
    Left = 467
    Top = 144
  end
  object dsRPT_VSP: TDataSetProvider
    DataSet = spRPT_VSP
    Constraints = True
    Left = 475
    Top = 240
  end
  object spRPT_VSP: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = '__RPT_VSP;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateWH'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 475
    Top = 196
  end
  object spCRep: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Cust_DoRep;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_Rep'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@V'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_X'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 216
    Top = 185
  end
  object dsCRep: TDataSetProvider
    DataSet = spCRep
    Constraints = True
    Left = 256
    Top = 184
  end
  object spCCP: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'CustRep_CatGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Cat'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Rep'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 192
    Top = 212
    object spCCPid_Cat: TAutoIncField
      FieldName = 'id_Cat'
      ReadOnly = True
    end
    object spCCPid_Rep: TIntegerField
      FieldName = 'id_Rep'
    end
    object spCCPName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spCCPPID: TIntegerField
      FieldName = 'PID'
    end
    object spCCPF_OperVid: TStringField
      FieldName = 'F_OperVid'
      Size = 255
    end
    object spCCPF_id_ContrAgent: TStringField
      FieldName = 'F_id_ContrAgent'
      Size = 255
    end
    object spCCPOrdNum: TIntegerField
      FieldName = 'OrdNum'
    end
    object spCCPGrpOper: TBooleanField
      FieldName = 'GrpOper'
    end
    object spCCPExtStr: TStringField
      FieldName = 'ExtStr'
      Size = 255
    end
    object spCCPid_FormalDistrib: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object spCCPid_FuncDistrib: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object spCCPid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spCCPisCat: TBooleanField
      FieldName = 'isCat'
    end
    object spCCPAPlan: TFloatField
      FieldName = 'APlan'
    end
  end
  object dsCCP: TSQLUpdateDSProvider
    DataSet = spCCP
    Constraints = True
    ModifySQL.Strings = (
      'Exec CustRep_CatEdit'
      '  @id_Cat = :id_Cat,'
      '  @id_Rep = :id_Rep,'
      ''
      '  @Name = :Name,'
      '  @PID = :PID,'
      '  @F_OperVid = :F_OperVid,'
      '  @F_id_ContrAgent = :F_id_ContrAgent,'
      '  @OrdNum = :OrdNum,'
      '  @GrpOper = :GrpOper ,'
      ''
      '  @ExtStr = :ExtStr,'
      '  @id_FormalDistrib = :id_FormalDistrib,'
      '  @id_FuncDistrib = :id_FuncDistrib,'
      '  @id_Acc = :id_Acc,'
      '  @isCat = :isCat,'
      '  @APlan  = :APlan'
      ' '
      ' ')
    InsertSQL.Strings = (
      'Exec CustRep_CatAdd'
      '  @id_Rep = :id_Rep,'
      ''
      '  @Name = :Name,'
      '  @PID = :PID,'
      '  @F_OperVid = :F_OperVid,'
      '  @F_id_ContrAgent = :F_id_ContrAgent,'
      '  @OrdNum = :OrdNum,'
      '  @GrpOper = :GrpOper')
    DeleteSQL.Strings = (
      '')
    Left = 195
    Top = 268
  end
  object dsCCFlt: TSQLUpdateDSProvider
    DataSet = spCCFlt
    Constraints = True
    ModifySQL.Strings = (
      'Exec CustRep_FLTEdit'
      '  @id_FLT = :id_FLT,'
      '  @id_Cat = :id_Cat,'
      ''
      '  @F_OperVid = :F_OperVid,'
      '  @F_id_ContrAgent = :F_id_ContrAgent,'
      '  @ExtStr = :ExtStr'
      ' ')
    InsertSQL.Strings = (
      'Exec CustRep_FLTAdd'
      '  @id_Cat = :id_Cat,'
      ''
      '  @F_OperVid = :F_OperVid,'
      '  @F_id_ContrAgent = :F_id_ContrAgent,'
      '  @ExtStr = :ExtStr'
      '')
    DeleteSQL.Strings = (
      'EXEC CustRep_FLTDel @id_FLT = :id_FLT'
      ' ')
    Left = 43
    Top = 148
  end
  object spCCFlt: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'CustRep_FLTGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Cat'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 40
    Top = 100
    object spCCFltid_FLT: TAutoIncField
      FieldName = 'id_FLT'
      ReadOnly = True
    end
    object spCCFltid_Cat: TIntegerField
      FieldName = 'id_Cat'
    end
    object spCCFltF_OperVid: TStringField
      FieldName = 'F_OperVid'
      Size = 255
    end
    object spCCFltF_id_ContrAgent: TStringField
      FieldName = 'F_id_ContrAgent'
      Size = 255
    end
    object spCCFltExtStr: TStringField
      FieldName = 'ExtStr'
      Size = 255
    end
  end
  object dsPermitGetList: TSQLUpdateDSProvider
    DataSet = spPermitGetList
    Constraints = True
    ModifySQL.Strings = (
      'exec RRR_PermitEdit'
      '  @id_Permit = :id_Permit,'
      '  @id_business = :id_business,'
      '  @id_Group = :id_Group,'
      '  @id_Acc = :id_Acc,'
      '  @id_Acc_Group = :id_Acc_Group,'
      '  @id_ContrAgent = :id_ContrAgent,'
      '  @id_CAGroup = :id_CAGroup'
      ' '
      ' ')
    InsertSQL.Strings = (
      'exec RRR_PermitAdd'
      '  @id_Group = :id_Group,'
      '  @id_business = :id_business,'
      '  @id_Acc = :id_Acc,'
      '  @id_Acc_Group = :id_Acc_Group,'
      '  @id_ContrAgent = :id_ContrAgent,'
      '  @id_CAGroup = :id_CAGroup'
      ' ')
    DeleteSQL.Strings = (
      'EXEC RRR_PermitDel'
      '  @id_Permit = :id_Permit')
    Left = 467
    Top = 593
  end
  object spPermitGetList: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'RRR_PermitGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Group'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@CA'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end
      item
        Name = '@ACC'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end>
    Left = 467
    Top = 548
    object spPermitGetListid_Permit: TAutoIncField
      FieldName = 'id_Permit'
    end
    object spPermitGetListid_Group: TIntegerField
      FieldName = 'id_Group'
    end
    object spPermitGetListid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spPermitGetListid_Acc_Group: TIntegerField
      FieldName = 'id_Acc_Group'
    end
    object spPermitGetListid_ContrAgent: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object spPermitGetListid_CAGroup: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object spPermitGetListName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object spPermitGetListid_business: TIntegerField
      FieldName = 'id_business'
    end
  end
  object dsAPN: TDataSetProvider
    DataSet = spAPN
    Constraints = True
    Left = 475
    Top = 411
  end
  object spAPN: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'APN_ObjGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 11
      end>
    Left = 475
    Top = 365
    object spAPNid_APN_Obj: TAutoIncField
      FieldName = 'id_APN_Obj'
      ReadOnly = True
    end
    object spAPNid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spAPNid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spAPNOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spAPNDayNum: TIntegerField
      FieldName = 'DayNum'
    end
    object spAPNDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spAPNNAme: TStringField
      FieldName = 'NAme'
      Size = 255
    end
    object spAPNid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spAPNWDate: TDateTimeField
      FieldName = 'WDate'
      ReadOnly = True
    end
  end
  object dsAPNProp: TDataSetProvider
    DataSet = spAPNProp
    Constraints = True
    Left = 531
    Top = 411
  end
  object spAPNProp: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'APN_ObjGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_APN_Obj'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 531
    Top = 365
    object AutoIncField8: TAutoIncField
      FieldName = 'id_APN_Obj'
      ReadOnly = True
    end
    object IntegerField31: TIntegerField
      FieldName = 'id_business'
    end
    object IntegerField32: TIntegerField
      FieldName = 'id_Repr'
    end
    object BooleanField16: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object IntegerField33: TIntegerField
      FieldName = 'DayNum'
    end
    object BooleanField17: TBooleanField
      FieldName = 'Disabled'
    end
    object StringField53: TStringField
      FieldName = 'NAme'
      Size = 255
    end
    object spAPNPropid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spAPNPropDestName: TStringField
      FieldName = 'DestName'
      Size = 255
    end
  end
  object dsAPMItem: TSQLUpdateDSProvider
    DataSet = spAPMItem
    Constraints = True
    InsertSQL.Strings = (
      '')
    Left = 579
    Top = 406
  end
  object spAPMItem: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'APN_AccListGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_APN_Obj'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 11
      end>
    Left = 578
    Top = 361
    object spAPMItemid_APN_AccList: TAutoIncField
      FieldName = 'id_APN_AccList'
      ReadOnly = True
    end
    object spAPMItemid_APN_Obj: TIntegerField
      FieldName = 'id_APN_Obj'
    end
    object spAPMItemid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spAPMItemASumm: TFloatField
      FieldName = 'ASumm'
    end
    object spAPMItemId_Currency: TIntegerField
      FieldName = 'Id_Currency'
    end
    object spAPMItemAPrc: TFloatField
      FieldName = 'APrc'
    end
    object spAPMItemAccName: TStringField
      FieldName = 'AccName'
      Size = 50
    end
    object spAPMItemCRNName: TStringField
      FieldName = 'CRNName'
      Size = 10
    end
  end
  object spAPNItemProp: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'APN_AccListGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_APN_AccList'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 33
      end>
    Left = 522
    Top = 273
    object AutoIncField9: TAutoIncField
      FieldName = 'id_APN_AccList'
      ReadOnly = True
    end
    object IntegerField34: TIntegerField
      FieldName = 'id_APN_Obj'
    end
    object IntegerField35: TIntegerField
      FieldName = 'id_Acc'
    end
    object FloatField15: TFloatField
      FieldName = 'ASumm'
    end
    object IntegerField36: TIntegerField
      FieldName = 'Id_Currency'
    end
    object FloatField16: TFloatField
      FieldName = 'APrc'
    end
    object StringField54: TStringField
      FieldName = 'AccName'
      Size = 50
    end
    object StringField55: TStringField
      FieldName = 'CRNName'
      Size = 10
    end
  end
  object dsAPNItemProp: TSQLUpdateDSProvider
    DataSet = spAPNItemProp
    Constraints = True
    InsertSQL.Strings = (
      '')
    Left = 523
    Top = 318
  end
  object spAPNGen: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'APN_ObjGetListForGen;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 11
      end
      item
        Name = '@id_APN_Obj'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 11
      end>
    Left = 474
    Top = 281
    object spAPNGenNAme: TStringField
      FieldName = 'NAme'
      Size = 255
    end
    object spAPNGenid_APN_AccList: TAutoIncField
      FieldName = 'id_APN_AccList'
      ReadOnly = True
    end
    object spAPNGenid_APN_Obj: TIntegerField
      FieldName = 'id_APN_Obj'
    end
    object spAPNGenid_Acc: TIntegerField
      FieldName = 'id_Acc'
    end
    object spAPNGenASumm: TFloatField
      FieldName = 'ASumm'
    end
    object spAPNGenId_Currency: TIntegerField
      FieldName = 'Id_Currency'
    end
    object spAPNGenAPrc: TFloatField
      FieldName = 'APrc'
    end
    object spAPNGenAccName: TStringField
      FieldName = 'AccName'
      Size = 50
    end
    object spAPNGenCRNName: TStringField
      FieldName = 'CRNName'
      Size = 10
    end
    object spAPNGenDestName: TStringField
      FieldName = 'DestName'
      ReadOnly = True
      Size = 255
    end
    object spAPNGenid_Repr: TIntegerField
      FieldName = 'id_Repr'
    end
    object spAPNGenOperTypeIn: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object spAPNGenid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spAPNGenid_AccDest: TIntegerField
      FieldName = 'id_AccDest'
    end
    object spAPNGenOperVid: TIntegerField
      FieldName = 'OperVid'
      ReadOnly = True
    end
  end
  object dsAPNGen: TSQLUpdateDSProvider
    DataSet = spAPNGen
    Constraints = True
    InsertSQL.Strings = (
      '')
    Left = 475
    Top = 326
  end
  object spAccAdv: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_AccCard_Adv_t;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_AccList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@id_AccGroupList'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Currency'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Repr'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Src'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Imp_PayBasic'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@AccInv_PayAssignment'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Contract'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OpComment'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@CalcRez'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 48
    Top = 229
  end
  object dsAccAdv: TDataSetProvider
    DataSet = spAccAdv
    Constraints = True
    Left = 48
    Top = 275
  end
  object dsInvWare2: TDataSetProvider
    DataSet = spInvWare2
    Constraints = True
    Left = 160
    Top = 315
  end
  object spInvWare2: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Inv_InvWare_V2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@OPComment'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = '22'
      end
      item
        Name = '@id_Manufact'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Mode'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 160
    Top = 269
  end
  object spLastPrice: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'PL_LastPrice;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_Goods'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 11
      end>
    Left = 421
    Top = 4
    object spLastPricePriceOper: TFloatField
      FieldName = 'PriceOper'
    end
  end
  object spAdd: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'CI_OperAdd_post;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Oper'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Contract'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@WHName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@GoodsName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@ShortName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@BarCode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@MeasureName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@CAName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@AmountOper'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@PriceOper'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@DateLocal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_UserCreator'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Session'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Mode'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 576
    Top = 464
  end
  object spMOV: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'CI_OperAdd_MOV;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@GoodsName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@ShortName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@BarCode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@MeasureName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@WHName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@CAName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@AmountOper'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@PriceOper'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@PriceInv'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@DateLocal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_UserCreator'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Session'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Mode'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 632
    Top = 464
  end
  object spWareCorrect: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'CI_WareCorrect;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@GoodsName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@ShortName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@BarCode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@MeasureName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@WHName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@AmountOper'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@PriceOper'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@id_UserCreator'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Session'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateLocal'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Mode'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 688
    Top = 464
  end
  object dspAdd: TDataSetProvider
    DataSet = spAdd
    Constraints = True
    Left = 576
    Top = 512
  end
  object dspMOV: TDataSetProvider
    DataSet = spMOV
    Constraints = True
    Left = 632
    Top = 512
  end
  object dspWareCorrect: TDataSetProvider
    DataSet = spWareCorrect
    Constraints = True
    Left = 688
    Top = 512
  end
  object spBCRep: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'BC_CorrectRep;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Session'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 664
    Top = 600
  end
  object dspBCRep: TDataSetProvider
    DataSet = spBCRep
    Constraints = True
    Left = 664
    Top = 648
  end
  object spSelRep: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'BC_SellRep;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Session'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Mode'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@WH1_Amount'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@WH1_Summ'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@WH2_Amount'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@WH2_Summ'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end>
    Left = 664
    Top = 512
  end
  object dsSelRep: TDataSetProvider
    DataSet = spSelRep
    Constraints = True
    Left = 664
    Top = 560
  end
  object dsSessList: TDataSetProvider
    DataSet = spSessList
    Constraints = True
    Left = 760
    Top = 69
  end
  object spSessList: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'BC_SessionGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 760
    Top = 24
    object spSessListid_Session: TAutoIncField
      FieldName = 'id_Session'
      ReadOnly = True
    end
    object spSessListDateLocal: TDateTimeField
      FieldName = 'DateLocal'
    end
    object spSessListNeed: TIntegerField
      FieldName = 'Need'
    end
    object spSessListFileType: TStringField
      FieldName = 'FileType'
      Size = 255
    end
  end
  object spDocUPD: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Doc_UPDGetProp;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_UPD'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 1099
    Top = 56
    object spDocUPDid_UPD: TAutoIncField
      FieldName = 'id_UPD'
    end
    object spDocUPDid_Doc_Org: TIntegerField
      FieldName = 'id_Doc_Org'
    end
    object spDocUPDid_Oper: TIntegerField
      FieldName = 'id_Oper'
    end
    object spDocUPDDoc_Num: TStringField
      FieldName = 'Doc_Num'
      Size = 50
    end
    object spDocUPDDoc_Date: TDateTimeField
      FieldName = 'Doc_Date'
    end
    object spDocUPDDoc_DateCreate: TDateTimeField
      FieldName = 'Doc_DateCreate'
    end
    object spDocUPDid_UserCreator: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object spDocUPDOrgName: TStringField
      FieldName = 'OrgName'
      Size = 255
    end
    object spDocUPDAddress: TStringField
      FieldName = 'Address'
      Size = 255
    end
    object spDocUPDINN: TBCDField
      FieldName = 'INN'
      Precision = 12
      Size = 0
    end
    object spDocUPDKPP: TBCDField
      FieldName = 'KPP'
      Precision = 10
      Size = 0
    end
    object spDocUPDSender_Name: TStringField
      FieldName = 'Sender_Name'
      Size = 255
    end
    object spDocUPDSender_Address2: TStringField
      FieldName = 'Sender_Address2'
      Size = 255
    end
    object spDocUPDExtDocNum: TStringField
      FieldName = 'ExtDocNum'
    end
    object spDocUPDExtDocDate: TDateTimeField
      FieldName = 'ExtDocDate'
    end
    object spDocUPDBayer_Name: TStringField
      FieldName = 'Bayer_Name'
      Size = 255
    end
    object spDocUPDBayer_Address: TStringField
      FieldName = 'Bayer_Address'
      Size = 255
    end
    object spDocUPDBayer_INN: TBCDField
      FieldName = 'Bayer_INN'
      Precision = 12
      Size = 0
    end
    object spDocUPDBayer_KPP: TBCDField
      FieldName = 'Bayer_KPP'
      Precision = 10
      Size = 0
    end
    object spDocUPDChif: TStringField
      FieldName = 'Chif'
      Size = 255
    end
    object spDocUPDBuh: TStringField
      FieldName = 'Buh'
      Size = 255
    end
    object spDocUPDid_DocCur: TIntegerField
      FieldName = 'id_DocCur'
    end
    object spDocUPDid_business: TIntegerField
      FieldName = 'id_business'
    end
    object spDocUPDDisabled: TBooleanField
      FieldName = 'Disabled'
    end
    object spDocUPDVAT: TBCDField
      FieldName = 'VAT'
      Precision = 18
      Size = 2
    end
    object spDocUPDDocCurPartName: TStringField
      FieldName = 'DocCurPartName'
      Size = 50
    end
    object spDocUPDDocCurName: TStringField
      FieldName = 'DocCurName'
      Size = 10
    end
    object spDocUPDid_DocCur_1: TAutoIncField
      FieldName = 'id_DocCur_1'
    end
    object spDocUPDDef: TBooleanField
      FieldName = 'Def'
    end
    object spDocUPDNumberCode: TStringField
      FieldName = 'NumberCode'
      FixedChar = True
      Size = 3
    end
  end
  object spDocUPDWare: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Doc_UPDWareGetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@id_UPD'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 1099
    Top = 101
    object spDocUPDWareid_UPDWare: TAutoIncField
      FieldName = 'id_UPDWare'
    end
    object spDocUPDWareid_UPD: TIntegerField
      FieldName = 'id_UPD'
    end
    object spDocUPDWareWareName: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object spDocUPDWareMesName: TStringField
      FieldName = 'MesName'
      Size = 255
    end
    object spDocUPDWareAmount: TFloatField
      FieldName = 'Amount'
    end
    object spDocUPDWareCountry: TStringField
      FieldName = 'Country'
      Size = 255
    end
    object spDocUPDWareGTD: TStringField
      FieldName = 'GTD'
      Size = 255
    end
    object spDocUPDWareSummWare: TBCDField
      FieldName = 'SummWare'
      Precision = 18
      Size = 2
    end
    object spDocUPDWareWareCode: TStringField
      FieldName = 'WareCode'
      Size = 255
    end
  end
  object dsDocUPD: TDataSetProvider
    DataSet = spDocUPD
    Constraints = True
    Left = 1154
    Top = 54
  end
  object dsDocUPDWare: TSQLUpdateDSProvider
    DataSet = spDocUPDWare
    Constraints = True
    ModifySQL.Strings = (
      'EXEC Doc_UPDWareEdit'
      '  @id_UPDWare = :id_UPDWare,'
      '  @Country = :Country,'
      '  @GTD = :GTD,'
      '  @Amount = :Amount,'
      '  @id_UPD = :id_UPD,'
      '  @MesName = :MesName,'
      '  @SummWare = :SummWare,'
      '  @WareName = :WareName,'
      '  @WareCode = :WareCode'
      ''
      ' ')
    InsertSQL.Strings = (
      'EXEC Doc_UPDWareAdd'
      '  @Country = :Country,'
      '  @GTD = :GTD,'
      '  @Amount = :Amount,'
      '  @id_UPD = :id_UPD,'
      '  @MesName = :MesName,'
      '  @SummWare = :SummWare,'
      '  @WareName = :WareName,'
      '  @WareCode = :WareCode'
      ' '
      ' '
      ' '
      ' ')
    DeleteSQL.Strings = (
      'EXEC Doc_UPDWareDel'
      '  @id_UPDWare = :id_UPDWare'
      ' ')
    Left = 1171
    Top = 106
  end
  object dsA4: TDataSetProvider
    DataSet = spA4
    Constraints = True
    Left = 992
    Top = 344
  end
  object spA4: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'UN_ArcBy_v4;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@HasViza'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@id_ContrAgent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_CAGroup'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Repr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Warehouse'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Acc'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Manufact'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_user'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Correct'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Deleted'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperVid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OperTypeIn'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_FormalDistrib'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_FuncDistrib'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Koeff'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperFin'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperWare'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperService'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperOffset'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperCrn'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@OperEmpty'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Oper201'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@is_Mirr'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@id_OperParent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OpComm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@OrderNum'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Acc_Group'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Warehouse_Group'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_Manufact_Group'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 989
    Top = 294
    object IntegerField38: TIntegerField
      FieldName = 'id_Oper'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'DateCreate'
    end
    object IntegerField39: TIntegerField
      FieldName = 'OperVid'
    end
    object StringField56: TStringField
      FieldName = 'BusinessName'
      Size = 50
    end
    object BooleanField18: TBooleanField
      FieldName = 'Correct'
    end
    object BooleanField19: TBooleanField
      FieldName = 'OperTypeIn'
    end
    object StringField57: TStringField
      FieldName = 'CurrencyOperShortName'
      Size = 10
    end
    object FloatField17: TFloatField
      FieldName = 'AmountOper'
    end
    object FloatField18: TFloatField
      FieldName = 'AmountOper2'
    end
    object FloatField19: TFloatField
      FieldName = 'PriceOper'
    end
    object StringField58: TStringField
      FieldName = 'MeasureName'
      Size = 10
    end
    object StringField59: TStringField
      FieldName = 'CurrencySysShortName'
      Size = 10
    end
    object FloatField20: TFloatField
      FieldName = 'SummSys'
    end
    object IntegerField40: TIntegerField
      FieldName = 'id_Acc'
    end
    object IntegerField41: TIntegerField
      FieldName = 'id_Warehouse'
    end
    object IntegerField42: TIntegerField
      FieldName = 'id_Manufact'
    end
    object StringField60: TStringField
      FieldName = 'SrcName'
      Size = 50
    end
    object IntegerField43: TIntegerField
      FieldName = 'SrcID_Main'
    end
    object IntegerField44: TIntegerField
      FieldName = 'id_Repr'
    end
    object IntegerField45: TIntegerField
      FieldName = 'id_Acc_Ext'
    end
    object IntegerField46: TIntegerField
      FieldName = 'id_Warehouse_Ext'
    end
    object IntegerField47: TIntegerField
      FieldName = 'id_Manufact_Ext'
    end
    object StringField61: TStringField
      FieldName = 'ReprName'
      Size = 255
    end
    object IntegerField48: TIntegerField
      FieldName = 'ReprID_Main'
    end
    object FloatField21: TFloatField
      FieldName = 'PriceInv'
    end
    object StringField62: TStringField
      FieldName = 'CurrencyInvShortName'
      Size = 30
    end
    object IntegerField49: TIntegerField
      FieldName = 'id_Goods'
    end
    object StringField63: TStringField
      FieldName = 'WareName'
      Size = 255
    end
    object IntegerField50: TIntegerField
      FieldName = 'WareID_Main'
    end
    object IntegerField51: TIntegerField
      FieldName = 'Koeff'
    end
    object StringField64: TStringField
      FieldName = 'KoeffName'
      Size = 50
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'CheckDate'
    end
    object IntegerField52: TIntegerField
      FieldName = 'id_UserChecker'
    end
    object StringField65: TStringField
      FieldName = 'FormalDistribName'
      Size = 50
    end
    object StringField66: TStringField
      FieldName = 'FuncDistribName'
      Size = 50
    end
    object BooleanField20: TBooleanField
      FieldName = 'Deleted'
    end
    object IntegerField53: TIntegerField
      FieldName = 'id_ContrAgent'
    end
    object StringField67: TStringField
      FieldName = 'ContrAgentName'
      Size = 50
    end
    object FloatField22: TFloatField
      FieldName = 'SummOper'
    end
    object StringField68: TStringField
      FieldName = 'TypeName'
      Size = 30
    end
    object StringField69: TStringField
      FieldName = 'OperNum'
      Size = 255
    end
    object FloatField23: TFloatField
      FieldName = 'OperDelta'
    end
    object FloatField24: TFloatField
      FieldName = 'OperRateDelta'
    end
    object FloatField25: TFloatField
      FieldName = 'OperTotalDelta'
    end
    object IntegerField54: TIntegerField
      FieldName = 'DTDiff'
    end
    object BooleanField21: TBooleanField
      FieldName = 'HasViza'
    end
    object IntegerField55: TIntegerField
      FieldName = 'OperState'
    end
    object FloatField26: TFloatField
      FieldName = 'OperSummSys'
    end
    object StringField70: TStringField
      FieldName = 'Imp_PayBasic'
      Size = 1000
    end
    object StringField71: TStringField
      FieldName = 'AccInv_PayAssignment'
      Size = 1000
    end
    object StringField72: TStringField
      FieldName = 'Contract'
      Size = 1000
    end
    object FloatField27: TFloatField
      FieldName = 'OperDeltaCrn'
    end
    object FloatField28: TFloatField
      FieldName = 'OperRateDeltaCrn'
    end
    object FloatField29: TFloatField
      FieldName = 'OperTotalDeltaCrn'
    end
    object StringField73: TStringField
      FieldName = 'OperCrnName'
      Size = 10
    end
    object FloatField30: TFloatField
      FieldName = 'OperSum_Offer'
    end
    object FloatField31: TFloatField
      FieldName = 'CRN_OLD_OperSum'
    end
    object FloatField32: TFloatField
      FieldName = 'CRN_OLD_OperSum_Offer'
    end
    object FloatField33: TFloatField
      FieldName = 'CRN_OperSum_Inv'
    end
    object FloatField34: TFloatField
      FieldName = 'OperSumCalced'
    end
    object FloatField35: TFloatField
      FieldName = 'OperSum_OfferCalced'
    end
    object BooleanField22: TBooleanField
      FieldName = 'Blocked'
    end
    object StringField74: TStringField
      FieldName = 'CurrencyBsnName'
      Size = 10
    end
    object StringField75: TStringField
      FieldName = 'OpComment'
      Size = 1000
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'RealDataCreate'
    end
    object FloatField36: TFloatField
      FieldName = 'Dig1'
    end
    object FloatField37: TFloatField
      FieldName = 'Dig2'
    end
    object FloatField38: TFloatField
      FieldName = 'Dig3'
    end
    object FloatField39: TFloatField
      FieldName = 'Dig4'
    end
    object FloatField40: TFloatField
      FieldName = 'Dig5'
    end
    object FloatField41: TFloatField
      FieldName = 'Dig6'
    end
    object FloatField42: TFloatField
      FieldName = 'Dig7'
    end
    object FloatField43: TFloatField
      FieldName = 'Dig8'
    end
    object FloatField44: TFloatField
      FieldName = 'Dig9'
    end
    object FloatField45: TFloatField
      FieldName = 'Dig10'
    end
    object FloatField46: TFloatField
      FieldName = 'Dig11'
    end
    object FloatField47: TFloatField
      FieldName = 'Dig12'
    end
    object FloatField48: TFloatField
      FieldName = 'Dig13'
    end
    object FloatField49: TFloatField
      FieldName = 'Dig14'
    end
    object FloatField50: TFloatField
      FieldName = 'Dig15'
    end
    object StringField76: TStringField
      FieldName = 'Str1'
      Size = 100
    end
    object StringField77: TStringField
      FieldName = 'Str2'
      Size = 100
    end
    object StringField78: TStringField
      FieldName = 'Str3'
      Size = 100
    end
    object StringField79: TStringField
      FieldName = 'Str4'
      Size = 100
    end
    object StringField80: TStringField
      FieldName = 'Str5'
      Size = 100
    end
    object StringField81: TStringField
      FieldName = 'Str6'
      Size = 100
    end
    object StringField82: TStringField
      FieldName = 'Str7'
      Size = 100
    end
    object StringField83: TStringField
      FieldName = 'Str8'
      Size = 100
    end
    object StringField84: TStringField
      FieldName = 'Str9'
      Size = 100
    end
    object StringField85: TStringField
      FieldName = 'Str10'
      Size = 100
    end
    object StringField86: TStringField
      FieldName = 'Str11'
      Size = 100
    end
    object StringField87: TStringField
      FieldName = 'Str12'
      Size = 100
    end
    object StringField88: TStringField
      FieldName = 'Str13'
      Size = 100
    end
    object StringField89: TStringField
      FieldName = 'Str14'
      Size = 100
    end
    object StringField90: TStringField
      FieldName = 'Str15'
      Size = 100
    end
    object StringField91: TStringField
      FieldName = 'OperVidName'
      Size = 50
    end
    object FloatField51: TFloatField
      FieldName = 'CRN_OperSumRez'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'OnlyDate'
    end
    object BooleanField23: TBooleanField
      FieldName = 'is_Mirr'
    end
    object IntegerField56: TIntegerField
      FieldName = 'id_Repr_Ex'
    end
    object IntegerField57: TIntegerField
      FieldName = 'id_business'
    end
    object IntegerField58: TIntegerField
      FieldName = 'OperTypeSIGN'
    end
    object BooleanField24: TBooleanField
      FieldName = 'VatIn'
    end
    object BooleanField25: TBooleanField
      FieldName = 'AutoGen'
    end
    object IntegerField59: TIntegerField
      FieldName = 'id_OperParent'
    end
    object IntegerField60: TIntegerField
      FieldName = 'id_old_Oper'
    end
    object IntegerField61: TIntegerField
      FieldName = 'id_LC_Oper'
    end
    object IntegerField62: TIntegerField
      FieldName = 'id_Replicator'
    end
    object StringField92: TStringField
      FieldName = 'ReplicatorShortName'
      ReadOnly = True
      Size = 10
    end
    object IntegerField63: TIntegerField
      FieldName = 'id_UserCreator'
    end
    object IntegerField64: TIntegerField
      FieldName = 'Id_CurrencyBsn'
    end
    object StringField93: TStringField
      FieldName = 'BusinessNum'
      Size = 5
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'DateLocal'
    end
    object IntegerField65: TIntegerField
      FieldName = 'Id_CurrencyOper'
    end
    object StringField94: TStringField
      FieldName = 'CurrencyOperName'
      Size = 30
    end
    object FloatField52: TFloatField
      FieldName = 'RateOper'
    end
    object IntegerField66: TIntegerField
      FieldName = 'id_Measure'
    end
    object FloatField53: TFloatField
      FieldName = 'RealKoef'
    end
    object FloatField54: TFloatField
      FieldName = 'AmountOperBaseMS'
      ReadOnly = True
    end
    object IntegerField67: TIntegerField
      FieldName = 'Id_CurrencySys'
    end
    object StringField95: TStringField
      FieldName = 'CurrencySysName'
      Size = 30
    end
    object FloatField55: TFloatField
      FieldName = 'RateSys'
    end
    object IntegerField68: TIntegerField
      FieldName = 'Id_CurrencyInv'
    end
    object FloatField56: TFloatField
      FieldName = 'RateInv'
    end
    object StringField96: TStringField
      FieldName = 'CurrencyInvName'
      ReadOnly = True
      Size = 10
    end
    object IntegerField69: TIntegerField
      FieldName = 'id_FormalDistrib'
    end
    object IntegerField70: TIntegerField
      FieldName = 'id_FuncDistrib'
    end
    object IntegerField71: TIntegerField
      FieldName = 'id_CAGroup'
    end
    object BooleanField26: TBooleanField
      FieldName = 'HidedOper'
    end
    object FloatField57: TFloatField
      FieldName = 'RateMain'
    end
    object IntegerField72: TIntegerField
      FieldName = 'id_DocType'
    end
    object IntegerField73: TIntegerField
      FieldName = 'HasChild'
      ReadOnly = True
    end
    object IntegerField74: TIntegerField
      FieldName = 'id_OperWare'
    end
    object IntegerField75: TIntegerField
      FieldName = 'id_Acc_Group'
      ReadOnly = True
    end
    object IntegerField76: TIntegerField
      FieldName = 'id_Warehouse_Group'
      ReadOnly = True
    end
    object IntegerField77: TIntegerField
      FieldName = 'id_Manufact_Group'
      ReadOnly = True
    end
    object StringField97: TStringField
      FieldName = 'COLUMN1'
      ReadOnly = True
      Size = 10
    end
    object IntegerField78: TIntegerField
      FieldName = 'id_Ctg_Goods_2'
    end
    object IntegerField79: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_busines_1'
      Calculated = True
    end
    object IntegerField80: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_business_1'
      Calculated = True
    end
    object StringField98: TStringField
      FieldKind = fkCalculated
      FieldName = 'CreatorFIO'
      Size = 255
      Calculated = True
    end
    object IntegerField81: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Raw'
      Calculated = True
    end
    object IntegerField82: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_ExtRaw'
      Calculated = True
    end
    object IntegerField83: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Service'
      Calculated = True
    end
    object StringField99: TStringField
      FieldKind = fkCalculated
      FieldName = 'CheckerFIO'
      Size = 255
      Calculated = True
    end
    object FloatField58: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OperSum_Inv'
      Calculated = True
    end
    object IntegerField84: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Ctg_Raw_2'
      Calculated = True
    end
    object IntegerField85: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Ctg_ExtRaw_2'
      Calculated = True
    end
    object IntegerField86: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'id_Ctg_Service_2'
      Calculated = True
    end
    object DateField1: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date1'
      Calculated = True
    end
    object DateField2: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date2'
      Calculated = True
    end
    object DateField3: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date3'
      Calculated = True
    end
    object DateField4: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date4'
      Calculated = True
    end
    object DateField5: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date5'
      Calculated = True
    end
    object DateField6: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date6'
      Calculated = True
    end
    object DateField7: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date7'
      Calculated = True
    end
    object DateField8: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date8'
      Calculated = True
    end
    object DateField9: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date9'
      Calculated = True
    end
    object DateField10: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date10'
      Calculated = True
    end
    object DateField11: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date11'
      Calculated = True
    end
    object DateField12: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date12'
      Calculated = True
    end
    object DateField13: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date13'
      Calculated = True
    end
    object DateField14: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date14'
      Calculated = True
    end
    object DateField15: TDateField
      FieldKind = fkCalculated
      FieldName = 'Date15'
      Calculated = True
    end
  end
  object spRPT_NewRepTree: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'RPT_NewRepTree_v3;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Id_business'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@RepNum'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Year'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Str3'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@Str4'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@M'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@id_User'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1152
    Top = 744
  end
  object dsRPT_NewRepTree: TDataSetProvider
    DataSet = spRPT_NewRepTree
    Constraints = True
    Left = 1152
    Top = 792
  end
end
