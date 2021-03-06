unit uRDM;

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, StdVcl, svc_Dict_TLB,
  inifiles, Provider, MtUPDPrv, db, ADODB;

type
  THackAdoDataSet = class(TCustomADODataSet)
    property CommandTimeout;
  end;

  TDic = class(TRemoteDataModule, IDic)
    ADOConnection1: TADOConnection;
    spBuis: TADOStoredProc;
    dsBuis: TDataSetProvider;
    spBuisid_business: TAutoIncField;
    spBuisId_Currency: TIntegerField;
    spBuisName: TStringField;
    spBuisShortName: TStringField;
    spBuisNum: TStringField;
    spBuisDisabled: TBooleanField;
    spBuisLastUpdated: TBytesField;
    spCAgent: TADOStoredProc;
    dsCAgent: TDataSetProvider;
    spCAgentid_ContrAgent: TAutoIncField;
    spCAgentName: TStringField;
    spCAgentid_business: TIntegerField;
    spCAgentid_CAGroup: TIntegerField;
    spCAgentisOwn: TBooleanField;
    spCAgentDisabled: TBooleanField;
    spCAgentBusinessName: TStringField;
    spCAgentCAGroupName: TStringField;
    spCAGroup: TADOStoredProc;
    dsCAGroup: TDataSetProvider;
    spCAGroupid_CAGroup: TAutoIncField;
    spCAGroupName: TStringField;
    spCAGroupCnt: TIntegerField;
    ADOStoredProc1: TADOStoredProc;
    spCtg_Goods: TADOStoredProc;
    dsCtg_Goods: TDataSetProvider;
    spGoods: TADOStoredProc;
    dsGoods: TDataSetProvider;
    spWhoIAm: TADOStoredProc;
    spWhoIAmid_user: TAutoIncField;
    spWhoIAmLogin: TStringField;
    spWhoIAmFirstName: TStringField;
    spWhoIAmLastName: TStringField;
    spWhoIAmMiddleName: TStringField;
    spWhoIAmDisabled: TBooleanField;
    spUserGetBsn: TADOStoredProc;
    dsUserGetBsn: TDataSetProvider;
    spUserGetBsnid_business: TIntegerField;
    spUserGetBsnName: TStringField;
    spCurByID: TADOStoredProc;
    spCurByIDId_Currency: TAutoIncField;
    spCurByIDName: TStringField;
    spCurByIDShortName: TStringField;
    spCurByIDISOCode: TStringField;
    spCurByIDNumberCode: TStringField;
    spCurByIDFastAccess: TBooleanField;
    spCurByIDValue: TIntegerField;
    spCurByIDRate: TFloatField;
    spCurByIDAvForPay: TBooleanField;
    spCurByIDBase: TBooleanField;
    spCurByIDLastUpdated: TBytesField;
    spCAProp: TADOStoredProc;
    dsCAProp: TDataSetProvider;
    spCAComment: TADOStoredProc;
    spCACommentid_comment: TAutoIncField;
    spCACommentid_ContrAgent: TIntegerField;
    spCACommentComment: TStringField;
    spCACommentCommentType: TIntegerField;
    spCACommentDateCreate: TDateTimeField;
    spCACommentid_User: TIntegerField;
    spCAContact: TADOStoredProc;
    spCAContactid_Contact: TAutoIncField;
    spCAContactid_ContrAgent: TIntegerField;
    spCAContactFIO: TStringField;
    spCAContactPost: TStringField;
    spCAContactPhone: TStringField;
    spCAContactemail: TStringField;
    dsCAComment: TSQLUpdateDSProvider;
    dsCAContact: TSQLUpdateDSProvider;
    spCAPropid_ContrAgent: TAutoIncField;
    spCAPropName: TStringField;
    spCAPropid_business: TIntegerField;
    spCAPropid_CAGroup: TIntegerField;
    spCAPropisOwn: TBooleanField;
    spCAPropDisabled: TBooleanField;
    spCAPropAddr: TStringField;
    spCAPropDescr: TStringField;
    spCAPropBusinessName: TStringField;
    spCAPropCAGroupName: TStringField;
    spRepr2: TADOStoredProc;
    dsPepr: TDataSetProvider;
    spReprProp: TADOStoredProc;
    dsReprProp: TDataSetProvider;
    spReprPropid_Repr: TAutoIncField;
    spReprPropid_ContrAgent: TIntegerField;
    spReprPropisJur: TBooleanField;
    spReprPropDisabled: TBooleanField;
    spReprPropName: TStringField;
    spReprPropFirstName: TStringField;
    spReprPropMiddleName: TStringField;
    spReprPropLastName: TStringField;
    spReprPropAddr: TStringField;
    spReprPropDescr: TStringField;
    spReprPropCAName: TStringField;
    spReprPropId_Currency: TIntegerField;
    spReprPropCurrencyName: TStringField;
    spReprComment: TADOStoredProc;
    spReprContact: TADOStoredProc;
    dsReprComment: TSQLUpdateDSProvider;
    dsReprContact: TSQLUpdateDSProvider;
    spReprCommentid_comment: TAutoIncField;
    spReprCommentid_Repr: TIntegerField;
    spReprCommentComment: TStringField;
    spReprCommentCommentType: TIntegerField;
    spReprCommentDateCreate: TDateTimeField;
    spReprCommentid_User: TIntegerField;
    spReprContactid_Contact: TAutoIncField;
    spReprContactid_Repr: TIntegerField;
    spReprContactFIO: TStringField;
    spReprContactPost: TStringField;
    spReprContactPhone: TStringField;
    spReprContactemail: TStringField;
    spCAPropId_Currency: TIntegerField;
    spCAPropCurrencyName: TStringField;
    spCtgGoodsProp: TADOStoredProc;
    dsCtgGoodsProp: TDataSetProvider;
    spCurByIDId_URL: TIntegerField;
    spMeasureGetList: TADOStoredProc;
    dsMeasureGetList: TDataSetProvider;
    spMeasureGetListid_Measure: TAutoIncField;
    spMeasureGetListName: TStringField;
    spMeasureGetListShortName: TStringField;
    spFunc: TADOStoredProc;
    dsFunc: TDataSetProvider;
    spFormal: TADOStoredProc;
    dsFormal: TDataSetProvider;
    spFuncid_FuncDistrib: TAutoIncField;
    spFuncName: TStringField;
    spFormalid_FormalDistrib: TAutoIncField;
    spFormalName: TStringField;
    spBsnByFunc: TADOStoredProc;
    dsBsnByFunc: TDataSetProvider;
    spLcList: TADOStoredProc;
    dsLcList: TDataSetProvider;
    spLcProp: TADOStoredProc;
    dsLcProp: TDataSetProvider;
    spLcWare: TADOStoredProc;
    spEmptyOper: TADOStoredProc;
    dsEmptyOper: TDataSetProvider;
    spEmptyOperid_LC_Oper: TAutoIncField;
    spEmptyOperOperVid: TIntegerField;
    spEmptyOperid_UserCreator: TIntegerField;
    spEmptyOperCreatorFIO: TStringField;
    spEmptyOperDateLocal: TDateTimeField;
    spEmptyOperOperTypeIn: TBooleanField;
    dsWMes: TSQLUpdateDSProvider;
    spWMes: TADOStoredProc;
    spWMesid_Measure: TIntegerField;
    spWMesName: TStringField;
    spWMesShortName: TStringField;
    spWMesid_BaseMeasure: TIntegerField;
    spWMesKoef: TFloatField;
    spWMesDisabled: TBooleanField;
    spAccList: TADOStoredProc;
    dsAccList: TDataSetProvider;
    spWHList: TADOStoredProc;
    dsWHList: TDataSetProvider;
    spMNList: TADOStoredProc;
    dsMNList: TDataSetProvider;
    spUserList: TADOStoredProc;
    spUserListid_User: TAutoIncField;
    spUserListFirstName: TStringField;
    spUserListMiddleName: TStringField;
    spUserListLastName: TStringField;
    spUserListLogin: TStringField;
    spUserListPassword: TStringField;
    spUserListDisabled: TBooleanField;
    spUserListPspSeries: TStringField;
    spUserListPspNumber: TStringField;
    spUserListPspPlace: TStringField;
    spUserListPspDate: TDateTimeField;
    spUserListPspAddr: TStringField;
    spUserListAddrReal: TStringField;
    spUserListPhones: TStringField;
    spUserListEmails: TStringField;
    spUserListLastUpdated: TBytesField;
    spUserListOrgPost: TStringField;
    dsUserList: TDataSetProvider;
    spEmptyProp: TADOStoredProc;
    dsEmptyProp: TDataSetProvider;
    spEmptyPropid_Oper: TAutoIncField;
    spEmptyPropOperVid: TIntegerField;
    spEmptyPropOperTypeIn: TBooleanField;
    spEmptyPropid_UserCreator: TIntegerField;
    spEmptyPropCreatorFIO: TStringField;
    spEmptyPropDateLocal: TDateTimeField;
    spEmptyPropBody: TStringField;
    dsOPBuff: TSQLUpdateDSProvider;
    spOPBuff: TADOStoredProc;
    spEOpArc: TADOStoredProc;
    dsEOpArc: TDataSetProvider;
    spEmptyPropid_OperParent: TIntegerField;
    spNewObj: TADOStoredProc;
    dsNewObj: TDataSetProvider;
    spUnGoods: TADOStoredProc;
    dsUnGoods: TDataSetProvider;
    spGoodsProp: TADOStoredProc;
    dsGoodsProp: TDataSetProvider;
    dsBuffList: TSQLUpdateDSProvider;
    spBuffList: TADOStoredProc;
    spBuffListid_Buff: TAutoIncField;
    spBuffListid_User: TIntegerField;
    spBuffListName: TStringField;
    spBuffListDateCreate: TDateTimeField;
    spCtg_Goodsid_Ctg_Goods: TIntegerField;
    spCtg_Goodsid_BaseCtg_Goods: TIntegerField;
    spCtg_Goodsid_business: TIntegerField;
    spCtg_GoodsName: TStringField;
    spCtg_GoodsShortName: TStringField;
    spCtg_GoodsDisabled: TBooleanField;
    spCtg_GoodsId_Currency: TIntegerField;
    spCtg_GoodsDefPrice: TFloatField;
    spCtg_GoodsCnt: TIntegerField;
    spCtg_GoodsCldCnt: TIntegerField;
    spGoodsid_Goods: TAutoIncField;
    spGoodsid_Ctg_Goods: TIntegerField;
    spGoodsName: TStringField;
    spGoodsShortName: TStringField;
    spGoodsBarCode: TStringField;
    spGoodsPrice: TFloatField;
    spGoodsDisabled: TBooleanField;
    spGoodsLastUpdated: TBytesField;
    spGoodsPropid_Goods: TAutoIncField;
    spGoodsPropid_Ctg_Goods: TIntegerField;
    spGoodsPropName: TStringField;
    spGoodsPropShortName: TStringField;
    spGoodsPropBarCode: TStringField;
    spGoodsPropPrice: TFloatField;
    spGoodsPropDisabled: TBooleanField;
    spGoodsPropLastUpdated: TBytesField;
    spEmptyOperid_DocType: TIntegerField;
    spEmptyOperDocTypeName: TStringField;
    spEmptyOperContract: TStringField;
    spDocType: TADOStoredProc;
    dsDocType: TDataSetProvider;
    spDocTypeid_DocType: TAutoIncField;
    spDocTypeName: TStringField;
    spDocTypeLastUpdated: TBytesField;
    spDocTypeID_Main: TIntegerField;
    spReprSelector: TADOStoredProc;
    dsReprSelector: TDataSetProvider;
    spReprSelectorid_Repr: TAutoIncField;
    spReprSelectorid_ContrAgent: TIntegerField;
    spReprSelectorisJur: TBooleanField;
    spReprSelectorDisabled: TBooleanField;
    spReprSelectorName: TStringField;
    spReprSelectorCAName: TStringField;
    spReprSelectorid_Bsn: TIntegerField;
    spReprSelectorBsnName: TStringField;
    spBsn: TADOStoredProc;
    dsBsn: TDataSetProvider;
    spBsnid_business: TAutoIncField;
    spBsnId_Currency: TIntegerField;
    spBsnName: TStringField;
    spBsnShortName: TStringField;
    spBsnNum: TStringField;
    spBsnDisabled: TBooleanField;
    spBsnLastUpdated: TBytesField;
    spBsnID_Main: TIntegerField;
    spBsnCurrencyName: TStringField;
    spBsnData: TADOStoredProc;
    dsBsnData: TDataSetProvider;
    dsERWHState: TDataSetProvider;
    spERWHState: TADOStoredProc;
    dsACard: TDataSetProvider;
    spCalcGDet: TADOStoredProc;
    dsCalcGDet: TDataSetProvider;
    spGoodsPropid_Measure: TIntegerField;
    spGoodsPropMeasureName: TStringField;
    spCtgGoodsPropid_Ctg_Goods: TAutoIncField;
    spCtgGoodsPropid_business: TIntegerField;
    spCtgGoodsPropid_BaseCtg_Goods: TIntegerField;
    spCtgGoodsPropName: TStringField;
    spCtgGoodsPropShortName: TStringField;
    spCtgGoodsPropDefPrice: TFloatField;
    spCtgGoodsPropId_Currency: TIntegerField;
    spCtgGoodsPropDisabled: TBooleanField;
    spCtgGoodsPropID_Main: TIntegerField;
    spCtgGoodsPropLastUpdated: TBytesField;
    spCtgGoodsPropBusinessName: TStringField;
    spCtgGoodsPropCurrencyName: TStringField;
    spCtgGoodsPropParentName: TStringField;
    spMovGoods: TADOStoredProc;
    dsMovGoods: TDataSetProvider;
    spArcWare: TADOStoredProc;
    dsArcWare: TDataSetProvider;
    dsCur2: TDataSetProvider;
    spCur2: TADOStoredProc;
    AutoIncField2: TAutoIncField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    BooleanField3: TBooleanField;
    IntegerField19: TIntegerField;
    FloatField6: TFloatField;
    BooleanField4: TBooleanField;
    BooleanField5: TBooleanField;
    BytesField1: TBytesField;
    IntegerField20: TIntegerField;
    spFindGoods: TADOStoredProc;
    dsFindGoods: TDataSetProvider;
    spFindGoodsID: TAutoIncField;
    spFindGoodsName: TStringField;
    spFindGoodsShortName: TStringField;
    spFindGoodsBarCode: TStringField;
    spMinus: TADOStoredProc;
    dsMinus: TDataSetProvider;
    spFoget: TADOStoredProc;
    dsFoget: TDataSetProvider;
    spSelf: TADOStoredProc;
    dsSelf: TDataSetProvider;
    spCrnNames: TADOStoredProc;
    dsCrnNames: TDataSetProvider;
    spCrnNamesName: TStringField;
    spCrnNamesid_Currency: TIntegerField;
    spRateHist: TADOStoredProc;
    dsRateHist: TDataSetProvider;
    spRateHistId_business: TIntegerField;
    spRateHistBsnName: TStringField;
    spRateHistId_Currency: TIntegerField;
    spRateHistCrnName: TStringField;
    spRateHistDateAssign: TDateTimeField;
    spRateHistRealRate: TFloatField;
    spExtDataDict: TADOStoredProc;
    dsExtDataDict: TSQLUpdateDSProvider;
    spExtData: TADOStoredProc;
    dsExtData: TSQLUpdateDSProvider;
    spExtDataType: TIntegerField;
    spExtDataNumPrm: TIntegerField;
    spExtDataParName: TStringField;
    spExtDataVisible: TBooleanField;
    spExtDataDigVal: TFloatField;
    spExtDataStrVal: TStringField;
    spExtDataDateVal: TDateTimeField;
    spBlnDetail: TADOStoredProc;
    dsBlnDetail: TDataSetProvider;
    spRepr2id_Repr: TAutoIncField;
    spRepr2id_ContrAgent: TIntegerField;
    spRepr2isJur: TBooleanField;
    spRepr2Disabled: TBooleanField;
    spRepr2Name: TStringField;
    spRepr2CAName: TStringField;
    spRepr2Id_Currency: TIntegerField;
    spRepr2CurrencyName: TStringField;
    spRepr2id_business: TIntegerField;
    dsRelink: TDataSetProvider;
    spRelink: TADOStoredProc;
    spFind_Ctg_Ware: TADOStoredProc;
    dsFind_Ctg_Ware: TDataSetProvider;
    spFind_Ctg_WareID: TIntegerField;
    spFind_Ctg_WareName: TStringField;
    spFind_Ctg_WareShortName: TStringField;
    spPriceList_G: TADOStoredProc;
    dsPriceList_G: TDataSetProvider;
    spGoodsID_Main: TIntegerField;
    spRepr2ID_Main: TIntegerField;
    spRepr2NeedSend: TBooleanField;
    spReprPropNeedSend: TBooleanField;
    spAccGroup: TADOStoredProc;
    dsAccGroup: TDataSetProvider;
    dsReprGroup: TDataSetProvider;
    spReprGroup: TADOStoredProc;
    spWHGroup: TADOStoredProc;
    dsWHGroup: TDataSetProvider;
    dsMNGroup: TDataSetProvider;
    spMNGroup: TADOStoredProc;
    spGetAccs: TADOStoredProc;
    dsGetAccs: TDataSetProvider;
    dsManufacts: TDataSetProvider;
    spManufacts: TADOStoredProc;
    spGetWH: TADOStoredProc;
    dsGetWH: TDataSetProvider;
    spGetManufact: TADOStoredProc;
    dsGetManufact: TDataSetProvider;
    spGetWareHouse: TADOStoredProc;
    dsGetWareHouse: TDataSetProvider;
    spGetAccInfo: TADOStoredProc;
    dsGetAccInfo: TDataSetProvider;
    dsReprLC: TDataSetProvider;
    spReprLC: TADOStoredProc;
    spReprPropGroupName: TStringField;
    spReprPropid_Repr_Group: TIntegerField;
    spReprPropid_Bsn: TIntegerField;
    spCAGroupShowInRoot: TBooleanField;
    spCAgentId_Currency: TIntegerField;
    spCAgentCurrencyName: TStringField;
    spCAPropShowInRoot: TBooleanField;
    spACard_Adv: TADOStoredProc;
    dsACard_Adv: TDataSetProvider;
    dsWareState: TDataSetProvider;
    spWareState: TADOStoredProc;
    spWare_Mov: TADOStoredProc;
    dsWare_Mov: TDataSetProvider;
    spUnArcWare: TADOStoredProc;
    dsUnArcWare: TDataSetProvider;
    spRezGetList: TADOStoredProc;
    dsRezGetList: TDataSetProvider;
    dsOperProp_v2: TDataSetProvider;
    dsArc2: TDataSetProvider;
    dsExtData_v2: TSQLUpdateDSProvider;
    spExtData_v2: TADOStoredProc;
    spBal_v2: TADOStoredProc;
    dsBal_v2: TDataSetProvider;
    spOperWare: TADOStoredProc;
    dsOperWare: TSQLUpdateDSProvider;
    spBufImp: TADOStoredProc;
    dsBufImp: TDataSetProvider;
    dsLcWare: TSQLUpdateDSProvider;
    spEmptyOperOpComment: TStringField;
    spEmptyPropOpComment: TStringField;
    spRPList: TADOStoredProc;
    dsRPList: TDataSetProvider;
    dsCAWare_Mov: TDataSetProvider;
    spCAWare_Mov: TADOStoredProc;
    dsUnArcWare_CA: TDataSetProvider;
    spUnArcWare_CA: TADOStoredProc;
    spWareCASmp: TADOStoredProc;
    dsWareCASmp: TDataSetProvider;
    dsClsdDayList: TDataSetProvider;
    spClsdDayList: TADOStoredProc;
    spClsdDayListName: TStringField;
    spEOp: TADOStoredProc;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    BooleanField1: TBooleanField;
    DateTimeField1: TDateTimeField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    dsEOp: TDataSetProvider;
    spEOpid_Oper: TAutoIncField;
    spEOpid_business: TIntegerField;
    spEmptyOperid_business: TIntegerField;
    spEOpBusinessName: TStringField;
    spEmptyOperBusinessName: TStringField;
    spEOpCheckDate: TDateTimeField;
    spUsers: TADOStoredProc;
    dsUsers: TDataSetProvider;
    spMeasures: TADOStoredProc;
    dsMeasures: TDataSetProvider;
    spGetMeasure: TADOStoredProc;
    dsGetMeasure: TDataSetProvider;
    dsGroups: TDataSetProvider;
    spGroups: TADOStoredProc;
    spGetReplicatorInfo: TADOStoredProc;
    dsGetReplicatorInfo: TDataSetProvider;
    spGroupRights: TADOStoredProc;
    spGroupRightsid_Func: TAutoIncField;
    spGroupRightsFuncName: TStringField;
    spGroupRightsHas: TIntegerField;
    spGroupRightsid_Business: TIntegerField;
    spGroupRightsid_Group: TIntegerField;
    dsGroupRights: TSQLUpdateDSProvider;
    dsReplicators: TDataSetProvider;
    spReplicators: TADOStoredProc;
    dsGetUser: TDataSetProvider;
    spGetUser: TADOStoredProc;
    dsGetGroup: TDataSetProvider;
    spGetGroup: TADOStoredProc;
    spEmptyOperImp_PayBasic: TStringField;
    spEmptyOperAccInv_PayAssignment: TStringField;
    spEOpImp_PayBasic: TStringField;
    spEOpAccInv_PayAssignment: TStringField;
    dsGetBusiness: TDataSetProvider;
    spGetBusiness: TADOStoredProc;
    spExtDataid_Oper_ExtData: TIntegerField;
    spExtDataid_LC_Oper: TIntegerField;
    spExtDataDictid_Oper_ExtDataNames: TIntegerField;
    spExtDataDictid_business: TIntegerField;
    spExtDataDictType: TIntegerField;
    spExtDataDictNumPrm: TIntegerField;
    spExtDataDictParName: TStringField;
    spExtDataDictVisible: TBooleanField;
    spExtDataDictNeedSend: TBooleanField;
    spExtDataDictOrdNum: TIntegerField;
    spCurProp: TADOStoredProc;
    spCurPropId_Currency: TAutoIncField;
    spCurPropName: TStringField;
    spCurPropShortName: TStringField;
    spCurPropISOCode: TStringField;
    spCurPropNumberCode: TStringField;
    spCurPropFastAccess: TBooleanField;
    spCurPropValue: TIntegerField;
    spCurPropRate: TFloatField;
    spCurPropAvForPay: TBooleanField;
    spCurPropId_URL: TIntegerField;
    spCurPropBase: TBooleanField;
    spCurPropLastUpdated: TBytesField;
    spCurPropURLName: TStringField;
    spCurPropURL: TStringField;
    spCurPropID_Main: TIntegerField;
    spCurPropid_Bsn: TIntegerField;
    dsCurProp: TDataSetProvider;
    spURLList: TADOStoredProc;
    spURLListId_URL: TAutoIncField;
    spURLListUseTable: TSmallintField;
    spURLListName: TStringField;
    spURLListURL: TStringField;
    dsURLList: TDataSetProvider;
    spURLProp: TADOStoredProc;
    spURLPropId_URL: TAutoIncField;
    spURLPropName: TStringField;
    spURLPropURL: TStringField;
    spURLPropUseTable: TSmallintField;
    spURLPropColName: TIntegerField;
    spURLPropColISO: TIntegerField;
    spURLPropColCode: TIntegerField;
    spURLPropColRate: TIntegerField;
    spURLPropColPieces: TIntegerField;
    dsURLProp: TDataSetProvider;
    spCur: TADOStoredProc;
    AutoIncField1: TAutoIncField;
    StringField2: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    BooleanField2: TBooleanField;
    IntegerField4: TIntegerField;
    FloatField1: TFloatField;
    BooleanField6: TBooleanField;
    BooleanField7: TBooleanField;
    BytesField2: TBytesField;
    IntegerField5: TIntegerField;
    spCur2ID_Main: TIntegerField;
    spCur2id_Bsn: TIntegerField;
    dsCur: TDataSetProvider;
    spRates2: TADOStoredProc;
    IntegerField6: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    IntegerField7: TIntegerField;
    FloatField2: TFloatField;
    IntegerField8: TIntegerField;
    FloatField3: TFloatField;
    StringField12: TStringField;
    BooleanField8: TBooleanField;
    BooleanField9: TBooleanField;
    dsRates2: TSQLUpdateDSProvider;
    spUrl2: TADOStoredProc;
    AutoIncField3: TAutoIncField;
    StringField13: TStringField;
    StringField18: TStringField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    SmallintField4: TSmallintField;
    SmallintField5: TSmallintField;
    SmallintField6: TSmallintField;
    dsUrl2: TDataSetProvider;
    spGoodsRez: TADOStoredProc;
    dsGoodsRez: TDataSetProvider;
    spLcWareid_LC_OperWare: TAutoIncField;
    spLcWareid_LC_Oper: TIntegerField;
    spLcWareAmountOper: TFloatField;
    spLcWareid_Measure: TIntegerField;
    spLcWarePriceOper: TFloatField;
    spLcWareSummSys: TFloatField;
    spLcWareid_Goods: TIntegerField;
    spLcWareMeasureName: TStringField;
    spLcWareRealKoef: TFloatField;
    spLcWareAmountOperBaseMS: TFloatField;
    spLcWareWareName: TStringField;
    spLcWareWareID_Main: TIntegerField;
    spAP: TADOStoredProc;
    dsAP: TDataSetProvider;
    spLcPropid_LC_Oper: TAutoIncField;
    spLcPropDateLocal: TDateTimeField;
    spLcPropOperVid: TIntegerField;
    spLcPropid_UserCreator: TIntegerField;
    spLcPropCreatorFIO: TStringField;
    spLcPropid_business: TIntegerField;
    spLcPropId_CurrencyBsn: TIntegerField;
    spLcPropBusinessName: TStringField;
    spLcPropBusinessNum: TStringField;
    spLcPropCorrect: TBooleanField;
    spLcPropOperTypeIn: TBooleanField;
    spLcPropId_CurrencyOper: TIntegerField;
    spLcPropCurrencyOperName: TStringField;
    spLcPropCurrencyOperShortName: TStringField;
    spLcPropPriceOper: TFloatField;
    spLcPropId_CurrencySys: TIntegerField;
    spLcPropCurrencySysName: TStringField;
    spLcPropCurrencySysShortName: TStringField;
    spLcPropSummSys: TFloatField;
    spLcPropid_Acc: TIntegerField;
    spLcPropid_Warehouse: TIntegerField;
    spLcPropid_Manufact: TIntegerField;
    spLcPropSrcName: TStringField;
    spLcPropSrcID_Main: TIntegerField;
    spLcPropid_Repr: TIntegerField;
    spLcPropid_Acc_Ext: TIntegerField;
    spLcPropid_Warehouse_Ext: TIntegerField;
    spLcPropid_Manufact_Ext: TIntegerField;
    spLcPropReprName: TStringField;
    spLcPropReprID_Main: TIntegerField;
    spLcPropKoeff: TIntegerField;
    spLcPropKoeffName: TStringField;
    spLcPropCheckDate: TDateTimeField;
    spLcPropid_FormalDistrib: TIntegerField;
    spLcPropFormalDistribName: TStringField;
    spLcPropid_FuncDistrib: TIntegerField;
    spLcPropFuncDistribName: TStringField;
    spLcPropSummOper: TFloatField;
    spLcPropTypeName: TStringField;
    spLcPropHasViza: TBooleanField;
    spLcPropid_DocType: TIntegerField;
    spLcPropImp_PayBasic: TStringField;
    spLcPropAccInv_PayAssignment: TStringField;
    spLcPropContract: TStringField;
    spLcPropOperCrnName: TStringField;
    spLcPropCurrencyBsnName: TStringField;
    spLcPropOpComment: TStringField;
    spLcPropOperTypeSIGN: TIntegerField;
    spLcPropHasChild: TIntegerField;
    spLcPropDig1: TFloatField;
    spLcPropDig2: TFloatField;
    spLcPropDig3: TFloatField;
    spLcPropDig4: TFloatField;
    spLcPropDig5: TFloatField;
    spLcPropDig6: TFloatField;
    spLcPropDig7: TFloatField;
    spLcPropDig8: TFloatField;
    spLcPropDig9: TFloatField;
    spLcPropDig10: TFloatField;
    spLcPropDig11: TFloatField;
    spLcPropDig12: TFloatField;
    spLcPropDig13: TFloatField;
    spLcPropDig14: TFloatField;
    spLcPropDig15: TFloatField;
    spLcPropStr1: TStringField;
    spLcPropStr2: TStringField;
    spLcPropStr3: TStringField;
    spLcPropStr4: TStringField;
    spLcPropStr5: TStringField;
    spLcPropStr6: TStringField;
    spLcPropStr7: TStringField;
    spLcPropStr8: TStringField;
    spLcPropStr9: TStringField;
    spLcPropStr10: TStringField;
    spLcPropStr11: TStringField;
    spLcPropStr12: TStringField;
    spLcPropStr13: TStringField;
    spLcPropStr14: TStringField;
    spLcPropStr15: TStringField;
    spLcPropOperVidName: TStringField;
    spLcPropis_Mirr: TBooleanField;
    spLcPropid_Acc_Group: TIntegerField;
    spLcPropid_Warehouse_Group: TIntegerField;
    spLcPropid_Manufact_Group: TIntegerField;
    spOperWareid_OperWare: TAutoIncField;
    spOperWareid_Oper: TIntegerField;
    spOperWareAmountOper: TFloatField;
    spOperWareid_Measure: TIntegerField;
    spOperWarePriceOper: TFloatField;
    spOperWareSummSys: TFloatField;
    spOperWarePriceInv: TFloatField;
    spOperWareid_Goods: TIntegerField;
    spOperWareMeasureName: TStringField;
    spOperWareRealKoef: TFloatField;
    spOperWareAmountOperBaseMS: TFloatField;
    spOperWareWareName: TStringField;
    spOperWareWareID_Main: TIntegerField;
    dsBalanceBy: TDataSetProvider;
    spAPObj: TADOStoredProc;
    dsAPObj: TDataSetProvider;
    dsAPCond: TDataSetProvider;
    spAPCond: TADOStoredProc;
    spAPList: TADOStoredProc;
    dsAPList: TDataSetProvider;
    dsArcOld: TDataSetProvider;
    spArcOld: TADOStoredProc;
    dsDoc_PayIn: TSQLUpdateDSProvider;
    spDoc_PayIn: TADOStoredProc;
    dsDList: TDataSetProvider;
    spDList: TADOStoredProc;
    spDListName: TStringField;
    spDListUID: TIntegerField;
    spDoc_ActCL: TADOStoredProc;
    dsDoc_ActCL: TSQLUpdateDSProvider;
    dsDoc_DAccWare: TSQLUpdateDSProvider;
    dsDoc_DAcc: TDataSetProvider;
    spDListDef: TBooleanField;
    dsDoc_FinalActWare: TSQLUpdateDSProvider;
    dsDoc_FinalAct: TDataSetProvider;
    spDoc_FinalAct: TADOStoredProc;
    spDoc_FinalActWare: TADOStoredProc;
    dsDoc_WarrantWare: TSQLUpdateDSProvider;
    dsDoc_Warrant: TDataSetProvider;
    spDoc_Warrant: TADOStoredProc;
    spDoc_WarrantWare: TADOStoredProc;
    spArcOldid_Oper: TIntegerField;
    spArcOldid_OperParent: TIntegerField;
    spArcOldid_old_Oper: TIntegerField;
    spArcOldDateCreate: TDateTimeField;
    spArcOldid_LC_Oper: TIntegerField;
    spArcOldOperVid: TIntegerField;
    spArcOldid_Replicator: TIntegerField;
    spArcOldReplicatorShortName: TStringField;
    spArcOldid_UserCreator: TIntegerField;
    spArcOldid_business: TIntegerField;
    spArcOldId_CurrencyBsn: TIntegerField;
    spArcOldBusinessName: TStringField;
    spArcOldBusinessNum: TStringField;
    spArcOldDateLocal: TDateTimeField;
    spArcOldCorrect: TBooleanField;
    spArcOldOperTypeIn: TBooleanField;
    spArcOldId_CurrencyOper: TIntegerField;
    spArcOldCurrencyOperName: TStringField;
    spArcOldCurrencyOperShortName: TStringField;
    spArcOldAmountOper: TFloatField;
    spArcOldAmountOper2: TFloatField;
    spArcOldPriceOper: TFloatField;
    spArcOldRateOper: TFloatField;
    spArcOldid_Measure: TIntegerField;
    spArcOldMeasureName: TStringField;
    spArcOldRealKoef: TFloatField;
    spArcOldAmountOperBaseMS: TFloatField;
    spArcOldId_CurrencySys: TIntegerField;
    spArcOldCurrencySysName: TStringField;
    spArcOldCurrencySysShortName: TStringField;
    spArcOldSummSys: TFloatField;
    spArcOldRateSys: TFloatField;
    spArcOldid_Acc: TIntegerField;
    spArcOldid_Warehouse: TIntegerField;
    spArcOldid_Manufact: TIntegerField;
    spArcOldSrcName: TStringField;
    spArcOldSrcID_Main: TIntegerField;
    spArcOldid_Repr: TIntegerField;
    spArcOldid_Acc_Ext: TIntegerField;
    spArcOldid_Warehouse_Ext: TIntegerField;
    spArcOldid_Manufact_Ext: TIntegerField;
    spArcOldReprName: TStringField;
    spArcOldReprID_Main: TIntegerField;
    spArcOldId_CurrencyInv: TIntegerField;
    spArcOldPriceInv: TFloatField;
    spArcOldRateInv: TFloatField;
    spArcOldCurrencyInvName: TStringField;
    spArcOldCurrencyInvShortName: TStringField;
    spArcOldid_Goods: TIntegerField;
    spArcOldWareName: TStringField;
    spArcOldWareID_Main: TIntegerField;
    spArcOldKoeff: TIntegerField;
    spArcOldKoeffName: TStringField;
    spArcOldCheckDate: TDateTimeField;
    spArcOldid_UserChecker: TIntegerField;
    spArcOldid_FormalDistrib: TIntegerField;
    spArcOldFormalDistribName: TStringField;
    spArcOldid_FuncDistrib: TIntegerField;
    spArcOldFuncDistribName: TStringField;
    spArcOldDeleted: TBooleanField;
    spArcOldid_ContrAgent: TIntegerField;
    spArcOldContrAgentName: TStringField;
    spArcOldid_CAGroup: TIntegerField;
    spArcOldSummOper: TFloatField;
    spArcOldTypeName: TStringField;
    spArcOldOperNum: TStringField;
    spArcOldOperDelta: TFloatField;
    spArcOldOperRateDelta: TFloatField;
    spArcOldOperTotalDelta: TFloatField;
    spArcOldDTDiff: TIntegerField;
    spArcOldHasViza: TBooleanField;
    spArcOldOperState: TIntegerField;
    spArcOldHidedOper: TBooleanField;
    spArcOldOperSummSys: TFloatField;
    spArcOldRateMain: TFloatField;
    spArcOldid_Repr_Ex: TIntegerField;
    spArcOldid_DocType: TIntegerField;
    spArcOldImp_PayBasic: TStringField;
    spArcOldAccInv_PayAssignment: TStringField;
    spArcOldContract: TStringField;
    spArcOldOperDeltaCrn: TFloatField;
    spArcOldOperRateDeltaCrn: TFloatField;
    spArcOldOperTotalDeltaCrn: TFloatField;
    spArcOldOperCrnName: TStringField;
    spArcOldOperSum_Offer: TFloatField;
    spArcOldCRN_OLD_OperSum: TFloatField;
    spArcOldCRN_OLD_OperSum_Offer: TFloatField;
    spArcOldCRN_OperSum_Inv: TFloatField;
    spArcOldOperSumCalced: TFloatField;
    spArcOldOperSum_OfferCalced: TFloatField;
    spArcOldBlocked: TBooleanField;
    spArcOldCurrencyBsnName: TStringField;
    spArcOldid_Ctg_Goods_2: TIntegerField;
    spArcOldOpComment: TStringField;
    spArcOldRealDataCreate: TDateTimeField;
    spArcOldOperTypeSIGN: TIntegerField;
    spArcOldHasChild: TIntegerField;
    spArcOldDig1: TFloatField;
    spArcOldDig2: TFloatField;
    spArcOldDig3: TFloatField;
    spArcOldDig4: TFloatField;
    spArcOldDig5: TFloatField;
    spArcOldDig6: TFloatField;
    spArcOldDig7: TFloatField;
    spArcOldDig8: TFloatField;
    spArcOldDig9: TFloatField;
    spArcOldDig10: TFloatField;
    spArcOldDig11: TFloatField;
    spArcOldDig12: TFloatField;
    spArcOldDig13: TFloatField;
    spArcOldDig14: TFloatField;
    spArcOldDig15: TFloatField;
    spArcOldStr1: TStringField;
    spArcOldStr2: TStringField;
    spArcOldStr3: TStringField;
    spArcOldStr4: TStringField;
    spArcOldStr5: TStringField;
    spArcOldStr6: TStringField;
    spArcOldStr7: TStringField;
    spArcOldStr8: TStringField;
    spArcOldStr9: TStringField;
    spArcOldStr10: TStringField;
    spArcOldStr11: TStringField;
    spArcOldStr12: TStringField;
    spArcOldStr13: TStringField;
    spArcOldStr14: TStringField;
    spArcOldStr15: TStringField;
    spArcOldid_OperWare: TAutoIncField;
    spArcOldOperVidName: TStringField;
    spArcOldCRN_OperSumRez: TFloatField;
    spArcOldOnlyDate: TDateTimeField;
    spArcOldis_Mirr: TBooleanField;
    spArcOldid_Acc_Group: TIntegerField;
    spArcOldid_Warehouse_Group: TIntegerField;
    spArcOldid_Manufact_Group: TIntegerField;
    spArcOldCreatorFIO: TStringField;
    spArcOldCheckerFIO: TStringField;
    spArcOldid_business_1: TIntegerField;
    dsDoc_InvWare: TSQLUpdateDSProvider;
    spDocCurGetList: TADOStoredProc;
    dsDocCurGetList: TDataSetProvider;
    spDocCurGetListid_DocCur: TAutoIncField;
    spDocCurGetListDocCurName: TStringField;
    spDocCurGetListDocCurPartName: TStringField;
    spDocCurGetListDef: TIntegerField;
    dsDoc_AFWare: TSQLUpdateDSProvider;
    dsDoc_AF: TDataSetProvider;
    dsDoc_WBillWare: TSQLUpdateDSProvider;
    dsDoc_WBill: TDataSetProvider;
    spDoc_WBillWare: TADOStoredProc;
    spOPBuffid_Oper: TIntegerField;
    spOPBuffid_OperParent: TIntegerField;
    spOPBuffid_old_Oper: TIntegerField;
    spOPBuffDateCreate: TDateTimeField;
    spOPBuffid_LC_Oper: TIntegerField;
    spOPBuffOperVid: TIntegerField;
    spOPBuffid_Replicator: TIntegerField;
    spOPBuffReplicatorShortName: TStringField;
    spOPBuffid_UserCreator: TIntegerField;
    spOPBuffid_business: TIntegerField;
    spOPBuffId_CurrencyBsn: TIntegerField;
    spOPBuffBusinessName: TStringField;
    spOPBuffBusinessNum: TStringField;
    spOPBuffDateLocal: TDateTimeField;
    spOPBuffCorrect: TBooleanField;
    spOPBuffOperTypeIn: TBooleanField;
    spOPBuffId_CurrencyOper: TIntegerField;
    spOPBuffCurrencyOperName: TStringField;
    spOPBuffCurrencyOperShortName: TStringField;
    spOPBuffAmountOper: TFloatField;
    spOPBuffAmountOper2: TFloatField;
    spOPBuffPriceOper: TFloatField;
    spOPBuffRateOper: TFloatField;
    spOPBuffid_Measure: TIntegerField;
    spOPBuffMeasureName: TStringField;
    spOPBuffRealKoef: TFloatField;
    spOPBuffAmountOperBaseMS: TFloatField;
    spOPBuffId_CurrencySys: TIntegerField;
    spOPBuffCurrencySysName: TStringField;
    spOPBuffCurrencySysShortName: TStringField;
    spOPBuffSummSys: TFloatField;
    spOPBuffRateSys: TFloatField;
    spOPBuffid_Acc: TIntegerField;
    spOPBuffid_Warehouse: TIntegerField;
    spOPBuffid_Manufact: TIntegerField;
    spOPBuffSrcName: TStringField;
    spOPBuffSrcID_Main: TIntegerField;
    spOPBuffid_Repr: TIntegerField;
    spOPBuffid_Acc_Ext: TIntegerField;
    spOPBuffid_Warehouse_Ext: TIntegerField;
    spOPBuffid_Manufact_Ext: TIntegerField;
    spOPBuffReprName: TStringField;
    spOPBuffReprID_Main: TIntegerField;
    spOPBuffId_CurrencyInv: TIntegerField;
    spOPBuffPriceInv: TFloatField;
    spOPBuffRateInv: TFloatField;
    spOPBuffCurrencyInvName: TStringField;
    spOPBuffCurrencyInvShortName: TStringField;
    spOPBuffid_Goods: TIntegerField;
    spOPBuffWareName: TStringField;
    spOPBuffWareID_Main: TIntegerField;
    spOPBuffKoeff: TIntegerField;
    spOPBuffKoeffName: TStringField;
    spOPBuffCheckDate: TDateTimeField;
    spOPBuffid_UserChecker: TIntegerField;
    spOPBuffid_FormalDistrib: TIntegerField;
    spOPBuffFormalDistribName: TStringField;
    spOPBuffid_FuncDistrib: TIntegerField;
    spOPBuffFuncDistribName: TStringField;
    spOPBuffDeleted: TBooleanField;
    spOPBuffid_ContrAgent: TIntegerField;
    spOPBuffContrAgentName: TStringField;
    spOPBuffid_CAGroup: TIntegerField;
    spOPBuffSummOper: TFloatField;
    spOPBuffTypeName: TStringField;
    spOPBuffOperNum: TStringField;
    spOPBuffOperDelta: TFloatField;
    spOPBuffOperRateDelta: TFloatField;
    spOPBuffOperTotalDelta: TFloatField;
    spOPBuffDTDiff: TIntegerField;
    spOPBuffHasViza: TBooleanField;
    spOPBuffOperState: TIntegerField;
    spOPBuffHidedOper: TBooleanField;
    spOPBuffOperSummSys: TFloatField;
    spOPBuffRateMain: TFloatField;
    spOPBuffid_Repr_Ex: TIntegerField;
    spOPBuffid_DocType: TIntegerField;
    spOPBuffImp_PayBasic: TStringField;
    spOPBuffAccInv_PayAssignment: TStringField;
    spOPBuffContract: TStringField;
    spOPBuffOperDeltaCrn: TFloatField;
    spOPBuffOperRateDeltaCrn: TFloatField;
    spOPBuffOperTotalDeltaCrn: TFloatField;
    spOPBuffOperCrnName: TStringField;
    spOPBuffOperSum_Offer: TFloatField;
    spOPBuffCRN_OLD_OperSum: TFloatField;
    spOPBuffCRN_OLD_OperSum_Offer: TFloatField;
    spOPBuffCRN_OperSum_Inv: TFloatField;
    spOPBuffOperSumCalced: TFloatField;
    spOPBuffOperSum_OfferCalced: TFloatField;
    spOPBuffBlocked: TBooleanField;
    spOPBuffCurrencyBsnName: TStringField;
    spOPBuffid_Ctg_Goods_2: TIntegerField;
    spOPBuffOpComment: TStringField;
    spOPBuffRealDataCreate: TDateTimeField;
    spOPBuffOperTypeSIGN: TIntegerField;
    spOPBuffHasChild: TIntegerField;
    spOPBuffDig1: TFloatField;
    spOPBuffDig2: TFloatField;
    spOPBuffDig3: TFloatField;
    spOPBuffDig4: TFloatField;
    spOPBuffDig5: TFloatField;
    spOPBuffDig6: TFloatField;
    spOPBuffDig7: TFloatField;
    spOPBuffDig8: TFloatField;
    spOPBuffDig9: TFloatField;
    spOPBuffDig10: TFloatField;
    spOPBuffDig11: TFloatField;
    spOPBuffDig12: TFloatField;
    spOPBuffDig13: TFloatField;
    spOPBuffDig14: TFloatField;
    spOPBuffDig15: TFloatField;
    spOPBuffStr1: TStringField;
    spOPBuffStr2: TStringField;
    spOPBuffStr3: TStringField;
    spOPBuffStr4: TStringField;
    spOPBuffStr5: TStringField;
    spOPBuffStr6: TStringField;
    spOPBuffStr7: TStringField;
    spOPBuffStr8: TStringField;
    spOPBuffStr9: TStringField;
    spOPBuffStr10: TStringField;
    spOPBuffStr11: TStringField;
    spOPBuffStr12: TStringField;
    spOPBuffStr13: TStringField;
    spOPBuffStr14: TStringField;
    spOPBuffStr15: TStringField;
    spOPBuffid_OperWare: TIntegerField;
    spOPBuffOperVidName: TStringField;
    spOPBuffCRN_OperSumRez: TFloatField;
    spOPBuffOnlyDate: TDateTimeField;
    spOPBuffis_Mirr: TBooleanField;
    spOPBuffid_Acc_Group: TIntegerField;
    spOPBuffid_Warehouse_Group: TIntegerField;
    spOPBuffid_Manufact_Group: TIntegerField;
    spOPBuffCreatorFIO: TStringField;
    spOPBuffCheckerFIO: TStringField;
    spOPBuffid_BuffItem: TIntegerField;
    spOPBuffid_Buff: TIntegerField;
    spOPBuffid_Oper2: TIntegerField;
    spDoc_FinalActid_FinalAct: TAutoIncField;
    spDoc_FinalActid_Oper: TIntegerField;
    spDoc_FinalActDoc_Num: TStringField;
    spDoc_FinalActDoc_Date: TDateTimeField;
    spDoc_FinalActDoc_DateCreate: TDateTimeField;
    spDoc_FinalActid_UserCreator: TIntegerField;
    spDoc_FinalActOrgName: TStringField;
    spDoc_FinalActAddress: TStringField;
    spDoc_FinalActperformer: TStringField;
    spDoc_FinalActcustomer: TStringField;
    spDoc_FinalActCusPerson: TStringField;
    spDoc_FinalActid_DocCur: TIntegerField;
    spDoc_FinalActid_business: TIntegerField;
    spDoc_FinalActid_DocCur_1: TAutoIncField;
    spDoc_FinalActDocCurName: TStringField;
    spDoc_FinalActDocCurPartName: TStringField;
    spDoc_FinalActDef: TBooleanField;
    spDoc_FinalActNumberCode: TStringField;
    spDTList: TADOStoredProc;
    dsDTList: TDataSetProvider;
    spDTListid_DT: TAutoIncField;
    spDTListName: TStringField;
    spDTListUID: TIntegerField;
    spDTListType: TIntegerField;
    spDTListMask: TStringField;
    spDListType: TIntegerField;
    spDListMask: TStringField;
    spDListid_DD: TAutoIncField;
    spDocByOper: TADOStoredProc;
    dsDocByOper: TDataSetProvider;
    spDocByOperType: TIntegerField;
    spDocByOperDocName: TStringField;
    spDocByOperID: TIntegerField;
    spDocByOperDoc_Date: TDateTimeField;
    spDocByOperOrgName: TStringField;
    spDocByOperExtInfo: TStringField;
    spDocByOperid_Oper: TIntegerField;
    spReprPropBIK: TStringField;
    spReprPropBank: TStringField;
    spReprPropAccName: TStringField;
    spReprPropCorAccNAme: TStringField;
    spReprPropOKPO: TStringField;
    spReprPropINN: TStringField;
    spReprPropKPP: TStringField;
    spGoodsPropGTD: TStringField;
    spGoodsPropCountry: TStringField;
    spGoodsPropDocNomCode: TStringField;
    spGoodsPropDocPriceCode: TStringField;
    spGoodsPropDocArt: TStringField;
    spGoodsPropDocNumber: TStringField;
    spGetDoc_Num: TADOStoredProc;
    spAP_CondAdd: TADOStoredProc;
    spDoc_PayInid_Pay_In: TAutoIncField;
    spDoc_PayInid_Oper: TIntegerField;
    spDoc_PayInDoc_Num: TStringField;
    spDoc_PayInDoc_Date: TDateTimeField;
    spDoc_PayInOKPO: TStringField;
    spDoc_PayInSumm: TBCDField;
    spDoc_PayInVAT: TBCDField;
    spDoc_PayInBasePM: TStringField;
    spDoc_PayInPayer: TStringField;
    spDoc_PayInBuh: TStringField;
    spDoc_PayInCasser: TStringField;
    spDoc_PayInDoc_DateCreate: TDateTimeField;
    spDoc_PayInid_UserCreator: TIntegerField;
    spDoc_PayInOrgName: TStringField;
    spDoc_PayInExtInfo: TStringField;
    spDoc_PayInid_DocCur: TIntegerField;
    spDoc_PayInid_business: TIntegerField;
    spDoc_PayInDisabled: TBooleanField;
    spDoc_PayInDocCurPartName: TStringField;
    spDoc_PayInDocCurName: TStringField;
    spDoc_PayInid_DocCur_1: TAutoIncField;
    spDoc_PayInDef: TBooleanField;
    spDoc_PayInNumberCode: TStringField;
    spDoc_ActCLid_ActCl: TAutoIncField;
    spDoc_ActCLid_Oper: TIntegerField;
    spDoc_ActCLDoc_Num: TStringField;
    spDoc_ActCLDoc_Date: TDateTimeField;
    spDoc_ActCLOrgName1: TStringField;
    spDoc_ActCLSumm1: TBCDField;
    spDoc_ActCLDoc1: TStringField;
    spDoc_ActCLOrgName2: TStringField;
    spDoc_ActCLSumm2: TBCDField;
    spDoc_ActCLDoc2: TStringField;
    spDoc_ActCLSumm: TBCDField;
    spDoc_ActCLName1: TStringField;
    spDoc_ActCLPost1: TStringField;
    spDoc_ActCLName2: TStringField;
    spDoc_ActCLPost2: TStringField;
    spDoc_ActCLDoc_DateCreate: TDateTimeField;
    spDoc_ActCLid_UserCreator: TIntegerField;
    spDoc_ActCLid_DocCur: TIntegerField;
    spDoc_ActCLid_business: TIntegerField;
    spDoc_ActCLDisabled: TBooleanField;
    spDoc_ActCLDocCurPartName: TStringField;
    spDoc_ActCLDocCurName: TStringField;
    spDoc_ActCLid_DocCur_1: TAutoIncField;
    spDoc_ActCLDef: TBooleanField;
    spDoc_ActCLNumberCode: TStringField;
    spDoc_Warrantid_Warrant: TAutoIncField;
    spDoc_Warrantid_Oper: TIntegerField;
    spDoc_WarrantDoc_Num: TStringField;
    spDoc_WarrantDoc_Date: TDateTimeField;
    spDoc_WarrantDoc_DateCreate: TDateTimeField;
    spDoc_Warrantid_UserCreator: TIntegerField;
    spDoc_WarrantDateTo: TDateTimeField;
    spDoc_WarrantOrgName: TStringField;
    spDoc_WarrantAddress: TStringField;
    spDoc_WarrantINN: TBCDField;
    spDoc_WarrantOrgName2: TStringField;
    spDoc_WarrantAddress2: TStringField;
    spDoc_WarrantINN2: TBCDField;
    spDoc_WarrantOKPO: TStringField;
    spDoc_WarrantPerson: TStringField;
    spDoc_WarrantPost: TStringField;
    spDoc_WarrantGarbNum: TStringField;
    spDoc_WarrantGarbDate: TDateTimeField;
    spDoc_WarrantAcc: TStringField;
    spDoc_WarrantBank: TStringField;
    spDoc_WarrantBIK: TBCDField;
    spDoc_WarrantCorAcc: TStringField;
    spDoc_Warrantcustomer: TStringField;
    spDoc_WarrantFIO: TStringField;
    spDoc_WarrantPspSer: TStringField;
    spDoc_WarrantPspNum: TStringField;
    spDoc_WarrantPspOwner: TStringField;
    spDoc_WarrantPspDate: TDateTimeField;
    spDoc_WarrantChif: TStringField;
    spDoc_WarrantBuh: TStringField;
    spDoc_Warrantid_business: TIntegerField;
    spDoc_WarrantDisabled: TBooleanField;
    spOperAdd_v2: TADOStoredProc;
    spOperEdit_v2: TADOStoredProc;
    spDocOrg: TADOStoredProc;
    dsDocOrg: TDataSetProvider;
    spDocOrgid_Doc_Org: TAutoIncField;
    spDocOrgOrgName: TStringField;
    spDocOrgAddress: TStringField;
    spDocOrgChif: TStringField;
    spDocOrgBuh: TStringField;
    spDocOrgOKPO: TStringField;
    spDocOrgOKPD: TStringField;
    spDocOrgINN: TBCDField;
    spDocOrgid_business: TIntegerField;
    spDocOrgKPP: TStringField;
    spDocOrgDefOrg: TBooleanField;
    spDocOrgVAT: TBCDField;
    spOrgBank: TADOStoredProc;
    dsOrgBank: TSQLUpdateDSProvider;
    dsOrgDet: TSQLUpdateDSProvider;
    spOrgDet: TADOStoredProc;
    spDoc_PayInid_Doc_Org: TIntegerField;
    spDoc_ActCLid_Doc_Org: TIntegerField;
    spDoc_Warrantid_Doc_Org: TIntegerField;
    spDoc_FinalActid_Doc_Org: TIntegerField;
    spDoc_FinalActDisabled: TBooleanField;
    spOrgDetid_OrgDet: TAutoIncField;
    spOrgDetid_Doc_Org: TIntegerField;
    spOrgDetVal: TStringField;
    spOrgDetDT: TIntegerField;
    spOrgGetProp: TADOStoredProc;
    AutoIncField4: TAutoIncField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    BCDField1: TBCDField;
    IntegerField9: TIntegerField;
    StringField25: TStringField;
    BooleanField11: TBooleanField;
    BCDField2: TBCDField;
    dsOrgGetProp: TDataSetProvider;
    spOrgGetPropDisabledOrg: TBooleanField;
    spOrgDetDefDet: TBooleanField;
    spDocOrgDisabledOrg: TBooleanField;
    spDoFilter: TADOStoredProc;
    dsDoFilter: TDataSetProvider;
    spDoc_WarrantVAT: TBCDField;
    spDoc_FinalActVAT: TBCDField;
    dsArc201: TDataSetProvider;
    spCAgentAddr: TStringField;
    spCAgentDescr: TStringField;
    spCAgentShowInRoot: TBooleanField;
    spRepr2BusinessName: TStringField;
    spRepr2GroupName: TStringField;
    spRepr2id_Repr_Group: TIntegerField;
    spRepr2BIK: TStringField;
    spRepr2Bank: TStringField;
    spRepr2AccName: TStringField;
    spRepr2CorAccNAme: TStringField;
    spRepr2OKPO: TStringField;
    spRepr2INN: TStringField;
    spRepr2KPP: TStringField;
    spRepr2FirstName: TStringField;
    spRepr2MiddleName: TStringField;
    spRepr2LastName: TStringField;
    spRepr2Addr: TStringField;
    spRepr2Descr: TStringField;
    spGoodsid_Measure: TIntegerField;
    spGoodsMeasureName: TStringField;
    spGoodsGTD: TStringField;
    spGoodsCountry: TStringField;
    spGoodsDocNomCode: TStringField;
    spGoodsDocPriceCode: TStringField;
    spGoodsDocArt: TStringField;
    spGoodsDocNumber: TStringField;
    spAPOI: TADOStoredProc;
    dsAPOI: TDataSetProvider;
    spAPOIList: TADOStoredProc;
    dsAPOIList: TDataSetProvider;
    spAP_OperAdd: TADOStoredProc;
    spAPSumm: TADOStoredProc;
    dsAPSumm: TDataSetProvider;
    spBlnDet2: TADOStoredProc;
    dsBlnDet2: TDataSetProvider;
    spAccSumm: TADOStoredProc;
    spAccSummId_CurrencyOper: TIntegerField;
    spAccSummSumm: TFloatField;
    spAccSummCrnName: TStringField;
    spCurPropDocCurPartName: TStringField;
    spCurPropId_CurrencyUnData: TIntegerField;
    spDocByOperDoc_Num: TStringField;
    spArcWareid_Oper: TIntegerField;
    spArcWareid_OperParent: TIntegerField;
    spArcWareid_old_Oper: TIntegerField;
    spArcWareDateCreate: TDateTimeField;
    spArcWareid_LC_Oper: TIntegerField;
    spArcWareOperVid: TIntegerField;
    spArcWareid_Replicator: TIntegerField;
    spArcWareReplicatorShortName: TStringField;
    spArcWareid_UserCreator: TIntegerField;
    spArcWareid_business: TIntegerField;
    spArcWareId_CurrencyBsn: TIntegerField;
    spArcWareBusinessName: TStringField;
    spArcWareBusinessNum: TStringField;
    spArcWareDateLocal: TDateTimeField;
    spArcWareCorrect: TBooleanField;
    spArcWareOperTypeIn: TBooleanField;
    spArcWareId_CurrencyOper: TIntegerField;
    spArcWareCurrencyOperName: TStringField;
    spArcWareCurrencyOperShortName: TStringField;
    spArcWareAmountOper: TFloatField;
    spArcWareAmountOper2: TFloatField;
    spArcWarePriceOper: TFloatField;
    spArcWareRateOper: TFloatField;
    spArcWareid_Measure: TIntegerField;
    spArcWareMeasureName: TStringField;
    spArcWareRealKoef: TFloatField;
    spArcWareAmountOperBaseMS: TFloatField;
    spArcWareId_CurrencySys: TIntegerField;
    spArcWareCurrencySysName: TStringField;
    spArcWareCurrencySysShortName: TStringField;
    spArcWareSummSys: TFloatField;
    spArcWareRateSys: TFloatField;
    spArcWareid_Acc: TIntegerField;
    spArcWareid_Warehouse: TIntegerField;
    spArcWareid_Manufact: TIntegerField;
    spArcWareSrcName: TStringField;
    spArcWareSrcID_Main: TIntegerField;
    spArcWareid_Repr: TIntegerField;
    spArcWareid_Acc_Ext: TIntegerField;
    spArcWareid_Warehouse_Ext: TIntegerField;
    spArcWareid_Manufact_Ext: TIntegerField;
    spArcWareReprName: TStringField;
    spArcWareReprID_Main: TIntegerField;
    spArcWareId_CurrencyInv: TIntegerField;
    spArcWarePriceInv: TFloatField;
    spArcWareRateInv: TFloatField;
    spArcWareCurrencyInvName: TStringField;
    spArcWareCurrencyInvShortName: TStringField;
    spArcWareid_Goods: TIntegerField;
    spArcWareWareName: TStringField;
    spArcWareWareID_Main: TIntegerField;
    spArcWareKoeff: TIntegerField;
    spArcWareKoeffName: TStringField;
    spArcWareCheckDate: TDateTimeField;
    spArcWareid_UserChecker: TIntegerField;
    spArcWareid_FormalDistrib: TIntegerField;
    spArcWareFormalDistribName: TStringField;
    spArcWareid_FuncDistrib: TIntegerField;
    spArcWareFuncDistribName: TStringField;
    spArcWareDeleted: TBooleanField;
    spArcWareid_ContrAgent: TIntegerField;
    spArcWareContrAgentName: TStringField;
    spArcWareid_CAGroup: TIntegerField;
    spArcWareSummOper: TFloatField;
    spArcWareTypeName: TStringField;
    spArcWareOperNum: TStringField;
    spArcWareOperDelta: TFloatField;
    spArcWareOperRateDelta: TFloatField;
    spArcWareOperTotalDelta: TFloatField;
    spArcWareDTDiff: TIntegerField;
    spArcWareHasViza: TBooleanField;
    spArcWareOperState: TIntegerField;
    spArcWareHidedOper: TBooleanField;
    spArcWareOperSummSys: TFloatField;
    spArcWareRateMain: TFloatField;
    spArcWareid_Repr_Ex: TIntegerField;
    spArcWareid_DocType: TIntegerField;
    spArcWareImp_PayBasic: TStringField;
    spArcWareAccInv_PayAssignment: TStringField;
    spArcWareContract: TStringField;
    spArcWareOperDeltaCrn: TFloatField;
    spArcWareOperRateDeltaCrn: TFloatField;
    spArcWareOperTotalDeltaCrn: TFloatField;
    spArcWareOperCrnName: TStringField;
    spArcWareOperSum_Offer: TFloatField;
    spArcWareCRN_OLD_OperSum: TFloatField;
    spArcWareCRN_OLD_OperSum_Offer: TFloatField;
    spArcWareCRN_OperSum_Inv: TFloatField;
    spArcWareOperSumCalced: TFloatField;
    spArcWareOperSum_OfferCalced: TFloatField;
    spArcWareBlocked: TBooleanField;
    spArcWareCurrencyBsnName: TStringField;
    spArcWareid_Ctg_Goods_2: TIntegerField;
    spArcWareOpComment: TStringField;
    spArcWareRealDataCreate: TDateTimeField;
    spArcWareOperTypeSIGN: TIntegerField;
    spArcWareHasChild: TIntegerField;
    spArcWareDig1: TFloatField;
    spArcWareDig2: TFloatField;
    spArcWareDig3: TFloatField;
    spArcWareDig4: TFloatField;
    spArcWareDig5: TFloatField;
    spArcWareDig6: TFloatField;
    spArcWareDig7: TFloatField;
    spArcWareDig8: TFloatField;
    spArcWareDig9: TFloatField;
    spArcWareDig10: TFloatField;
    spArcWareDig11: TFloatField;
    spArcWareDig12: TFloatField;
    spArcWareDig13: TFloatField;
    spArcWareDig14: TFloatField;
    spArcWareDig15: TFloatField;
    spArcWareStr1: TStringField;
    spArcWareStr2: TStringField;
    spArcWareStr3: TStringField;
    spArcWareStr4: TStringField;
    spArcWareStr5: TStringField;
    spArcWareStr6: TStringField;
    spArcWareStr7: TStringField;
    spArcWareStr8: TStringField;
    spArcWareStr9: TStringField;
    spArcWareStr10: TStringField;
    spArcWareStr11: TStringField;
    spArcWareStr12: TStringField;
    spArcWareStr13: TStringField;
    spArcWareStr14: TStringField;
    spArcWareStr15: TStringField;
    spArcWareid_OperWare: TAutoIncField;
    spArcWareOperVidName: TStringField;
    spArcWareCRN_OperSumRez: TFloatField;
    spArcWareOnlyDate: TDateTimeField;
    spArcWareis_Mirr: TBooleanField;
    spArcWareid_Acc_Group: TIntegerField;
    spArcWareid_Warehouse_Group: TIntegerField;
    spArcWareid_Manufact_Group: TIntegerField;
    spArcWareVatIn: TBooleanField;
    spArcWareAutoGen: TBooleanField;
    spArcWareCreatorFIO: TStringField;
    spArcWareCheckerFIO: TStringField;
    spArcBy_Ones: TADOStoredProc;
    dsArcBy_Ones: TDataSetProvider;
    spArcBy_Onesid_Oper: TIntegerField;
    spArcBy_Onesid_OperParent: TIntegerField;
    spArcBy_Onesid_old_Oper: TIntegerField;
    spArcBy_OnesDateCreate: TDateTimeField;
    spArcBy_Onesid_LC_Oper: TIntegerField;
    spArcBy_OnesOperVid: TIntegerField;
    spArcBy_Onesid_Replicator: TIntegerField;
    spArcBy_OnesReplicatorShortName: TStringField;
    spArcBy_Onesid_UserCreator: TIntegerField;
    spArcBy_Onesid_business: TIntegerField;
    spArcBy_OnesId_CurrencyBsn: TIntegerField;
    spArcBy_OnesBusinessName: TStringField;
    spArcBy_OnesBusinessNum: TStringField;
    spArcBy_OnesDateLocal: TDateTimeField;
    spArcBy_OnesCorrect: TBooleanField;
    spArcBy_OnesOperTypeIn: TBooleanField;
    spArcBy_OnesId_CurrencyOper: TIntegerField;
    spArcBy_OnesCurrencyOperName: TStringField;
    spArcBy_OnesCurrencyOperShortName: TStringField;
    spArcBy_OnesAmountOper: TFloatField;
    spArcBy_OnesAmountOper2: TFloatField;
    spArcBy_OnesPriceOper: TFloatField;
    spArcBy_OnesRateOper: TFloatField;
    spArcBy_Onesid_Measure: TIntegerField;
    spArcBy_OnesMeasureName: TStringField;
    spArcBy_OnesRealKoef: TFloatField;
    spArcBy_OnesAmountOperBaseMS: TFloatField;
    spArcBy_OnesId_CurrencySys: TIntegerField;
    spArcBy_OnesCurrencySysName: TStringField;
    spArcBy_OnesCurrencySysShortName: TStringField;
    spArcBy_OnesSummSys: TFloatField;
    spArcBy_OnesRateSys: TFloatField;
    spArcBy_Onesid_Acc: TIntegerField;
    spArcBy_Onesid_Warehouse: TIntegerField;
    spArcBy_Onesid_Manufact: TIntegerField;
    spArcBy_OnesSrcName: TStringField;
    spArcBy_OnesSrcID_Main: TIntegerField;
    spArcBy_Onesid_Repr: TIntegerField;
    spArcBy_Onesid_Acc_Ext: TIntegerField;
    spArcBy_Onesid_Warehouse_Ext: TIntegerField;
    spArcBy_Onesid_Manufact_Ext: TIntegerField;
    spArcBy_OnesReprName: TStringField;
    spArcBy_OnesReprID_Main: TIntegerField;
    spArcBy_OnesId_CurrencyInv: TIntegerField;
    spArcBy_OnesPriceInv: TFloatField;
    spArcBy_OnesRateInv: TFloatField;
    spArcBy_OnesCurrencyInvName: TStringField;
    spArcBy_OnesCurrencyInvShortName: TStringField;
    spArcBy_Onesid_Goods: TIntegerField;
    spArcBy_OnesWareName: TStringField;
    spArcBy_OnesWareID_Main: TIntegerField;
    spArcBy_OnesKoeff: TIntegerField;
    spArcBy_OnesKoeffName: TStringField;
    spArcBy_OnesCheckDate: TDateTimeField;
    spArcBy_Onesid_UserChecker: TIntegerField;
    spArcBy_Onesid_FormalDistrib: TIntegerField;
    spArcBy_OnesFormalDistribName: TStringField;
    spArcBy_Onesid_FuncDistrib: TIntegerField;
    spArcBy_OnesFuncDistribName: TStringField;
    spArcBy_OnesDeleted: TBooleanField;
    spArcBy_Onesid_ContrAgent: TIntegerField;
    spArcBy_OnesContrAgentName: TStringField;
    spArcBy_Onesid_CAGroup: TIntegerField;
    spArcBy_OnesSummOper: TFloatField;
    spArcBy_OnesTypeName: TStringField;
    spArcBy_OnesOperNum: TStringField;
    spArcBy_OnesOperDelta: TFloatField;
    spArcBy_OnesOperRateDelta: TFloatField;
    spArcBy_OnesOperTotalDelta: TFloatField;
    spArcBy_OnesDTDiff: TIntegerField;
    spArcBy_OnesHasViza: TBooleanField;
    spArcBy_OnesOperState: TIntegerField;
    spArcBy_OnesHidedOper: TBooleanField;
    spArcBy_OnesOperSummSys: TFloatField;
    spArcBy_OnesRateMain: TFloatField;
    spArcBy_Onesid_Repr_Ex: TIntegerField;
    spArcBy_Onesid_DocType: TIntegerField;
    spArcBy_OnesImp_PayBasic: TStringField;
    spArcBy_OnesAccInv_PayAssignment: TStringField;
    spArcBy_OnesContract: TStringField;
    spArcBy_OnesOperDeltaCrn: TFloatField;
    spArcBy_OnesOperRateDeltaCrn: TFloatField;
    spArcBy_OnesOperTotalDeltaCrn: TFloatField;
    spArcBy_OnesOperCrnName: TStringField;
    spArcBy_OnesOperSum_Offer: TFloatField;
    spArcBy_OnesCRN_OLD_OperSum: TFloatField;
    spArcBy_OnesCRN_OLD_OperSum_Offer: TFloatField;
    spArcBy_OnesCRN_OperSum_Inv: TFloatField;
    spArcBy_OnesOperSumCalced: TFloatField;
    spArcBy_OnesOperSum_OfferCalced: TFloatField;
    spArcBy_OnesBlocked: TBooleanField;
    spArcBy_OnesCOLUMN1: TStringField;
    spArcBy_Onesid_Ctg_Goods_2: TIntegerField;
    spArcBy_OnesOpComment: TStringField;
    spArcBy_OnesRealDataCreate: TDateTimeField;
    spArcBy_OnesOperTypeSIGN: TIntegerField;
    spArcBy_OnesHasChild: TIntegerField;
    spArcBy_OnesDig1: TFloatField;
    spArcBy_OnesDig2: TFloatField;
    spArcBy_OnesDig3: TFloatField;
    spArcBy_OnesDig4: TFloatField;
    spArcBy_OnesDig5: TFloatField;
    spArcBy_OnesDig6: TFloatField;
    spArcBy_OnesDig7: TFloatField;
    spArcBy_OnesDig8: TFloatField;
    spArcBy_OnesDig9: TFloatField;
    spArcBy_OnesDig10: TFloatField;
    spArcBy_OnesDig11: TFloatField;
    spArcBy_OnesDig12: TFloatField;
    spArcBy_OnesDig13: TFloatField;
    spArcBy_OnesDig14: TFloatField;
    spArcBy_OnesDig15: TFloatField;
    spArcBy_OnesStr1: TStringField;
    spArcBy_OnesStr2: TStringField;
    spArcBy_OnesStr3: TStringField;
    spArcBy_OnesStr4: TStringField;
    spArcBy_OnesStr5: TStringField;
    spArcBy_OnesStr6: TStringField;
    spArcBy_OnesStr7: TStringField;
    spArcBy_OnesStr8: TStringField;
    spArcBy_OnesStr9: TStringField;
    spArcBy_OnesStr10: TStringField;
    spArcBy_OnesStr11: TStringField;
    spArcBy_OnesStr12: TStringField;
    spArcBy_OnesStr13: TStringField;
    spArcBy_OnesStr14: TStringField;
    spArcBy_OnesStr15: TStringField;
    spArcBy_Onesid_OperWare: TIntegerField;
    spArcBy_OnesOperVidName: TStringField;
    spArcBy_OnesCRN_OperSumRez: TFloatField;
    spArcBy_OnesOnlyDate: TDateTimeField;
    spArcBy_Onesis_Mirr: TBooleanField;
    spArcBy_Onesid_Acc_Group: TIntegerField;
    spArcBy_Onesid_Warehouse_Group: TIntegerField;
    spArcBy_Onesid_Manufact_Group: TIntegerField;
    spArcBy_OnesVatIn: TBooleanField;
    spArcBy_OnesAutoGen: TBooleanField;
    spArcBy_OnesCurrencyBsnName: TStringField;
    spArc_OPList: TADOStoredProc;
    dsArc_OPList: TDataSetProvider;
    spOldOperList: TADOStoredProc;
    dsOldOperList: TDataSetProvider;
    spDoFilterid_ObjItem: TIntegerField;
    spDoFilterid_AP_Obj: TIntegerField;
    spDoFilterExtId: TIntegerField;
    spDoFilterParField: TStringField;
    spDoFilterParName: TStringField;
    spDoFilterOperVid: TIntegerField;
    spDoFilterid_UserCreator: TIntegerField;
    spDoFilterid_UserChecker: TIntegerField;
    spDoFilterid_business: TIntegerField;
    spDoFilterCorrect: TBooleanField;
    spDoFilterOperTypeIn: TBooleanField;
    spDoFilterid_Acc: TIntegerField;
    spDoFilterid_Warehouse: TIntegerField;
    spDoFilterid_Manufact: TIntegerField;
    spDoFilterid_Repr: TIntegerField;
    spDoFilterid_Acc_Ext: TIntegerField;
    spDoFilterid_Warehouse_Ext: TIntegerField;
    spDoFilterid_Manufact_Ext: TIntegerField;
    spDoFilterKoeff: TIntegerField;
    spDoFilterid_FormalDistrib: TIntegerField;
    spDoFilterid_FuncDistrib: TIntegerField;
    spDoFilterImp_PayBasic: TStringField;
    spDoFilterAccInv_PayAssignment: TStringField;
    spDoFilterContract: TStringField;
    spDoFilterOpComment: TStringField;
    spDoFilterDig1: TFloatField;
    spDoFilterDig2: TFloatField;
    spDoFilterDig3: TFloatField;
    spDoFilterDig4: TFloatField;
    spDoFilterDig5: TFloatField;
    spDoFilterDig6: TFloatField;
    spDoFilterDig7: TFloatField;
    spDoFilterDig8: TFloatField;
    spDoFilterDig9: TFloatField;
    spDoFilterDig10: TFloatField;
    spDoFilterDig11: TFloatField;
    spDoFilterDig12: TFloatField;
    spDoFilterDig13: TFloatField;
    spDoFilterDig14: TFloatField;
    spDoFilterDig15: TFloatField;
    spDoFilterStr1: TStringField;
    spDoFilterStr2: TStringField;
    spDoFilterStr3: TStringField;
    spDoFilterStr4: TStringField;
    spDoFilterStr5: TStringField;
    spDoFilterStr6: TStringField;
    spDoFilterStr7: TStringField;
    spDoFilterStr8: TStringField;
    spDoFilterStr9: TStringField;
    spDoFilterStr10: TStringField;
    spDoFilterStr11: TStringField;
    spDoFilterStr12: TStringField;
    spDoFilterStr13: TStringField;
    spDoFilterStr14: TStringField;
    spDoFilterStr15: TStringField;
    spDoFilterId_CurrencyOper: TIntegerField;
    spDoFilterId_CurrencySys: TIntegerField;
    spDoFilterPriceOper: TFloatField;
    spDoFilterSummOper: TFloatField;
    spDoFilterSummSys: TFloatField;
    spDoFilterVatIn: TBooleanField;
    spDoFilterid_Goods: TIntegerField;
    spDoFilterid_Measure: TIntegerField;
    spDoFilterTypeName: TStringField;
    spDoFilterOperVidName: TStringField;
    spDoFilterContrAgentName: TStringField;
    spDoFilterFormalDistribName: TStringField;
    spDoFilterFuncDistribName: TStringField;
    spDoFilterKoeffName: TStringField;
    spDoFilterSrcName: TStringField;
    spDoFilterReprName: TStringField;
    spDoFilterBusinessid_Currency: TIntegerField;
    spDoFilterBusinessName: TStringField;
    spDoFilterBusinessNum: TStringField;
    spDoFilterOperCrnName: TStringField;
    spDoFilterCurrencyBsnName: TStringField;
    spDoFilterCurrencySysShortName: TStringField;
    spDoFilterCurrencyOperShortName: TStringField;
    spDoFilterWareName: TStringField;
    spDoFilterMeasureName: TStringField;
    spDoFilterAPName: TStringField;
    spDoFilterOpName: TStringField;
    dsOperWare201: TSQLUpdateDSProvider;
    spOperWare201: TADOStoredProc;
    AutoIncField5: TAutoIncField;
    IntegerField10: TIntegerField;
    FloatField4: TFloatField;
    IntegerField11: TIntegerField;
    FloatField5: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    IntegerField12: TIntegerField;
    StringField26: TStringField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    StringField27: TStringField;
    IntegerField13: TIntegerField;
    spOperWare201AmountOperBaseMS_2: TFloatField;
    spOperWare201AmountOperBaseMS_1: TFloatField;
    spOperWare201id_Raw: TIntegerField;
    spOperWare201id_ExtRaw: TIntegerField;
    spOperWare201id_Service: TIntegerField;
    spOperWare201SummOper_2: TFloatField;
    spOperWare201SummSys_2: TFloatField;
    spOperWare201PriceInv_2: TFloatField;
    spOperWare201DMName: TStringField;
    spOperWare201SummOper_1: TFloatField;
    spOperWare201SummSys_1: TFloatField;
    spOperWare201PriceInv_1: TFloatField;
    spDoFilterPriceOper_F: TFloatField;
    spDoFilterSummOper_F: TFloatField;
    spDoFilterSummSys_F: TFloatField;
    spGoodsRezHasDept: TBooleanField;
    spGoodsRezWareDept: TBCDField;
    spGoodsRezId_CurrencyOper: TIntegerField;
    spGoodsRezId_CurrencySys: TIntegerField;
    spGoodsRezMeasureName: TStringField;
    spGoodsRezRealKoef: TFloatField;
    spGoodsRezid_Oper: TIntegerField;
    spGoodsRezOrdNum: TIntegerField;
    spGoodsRezid_Replicator: TIntegerField;
    spGoodsRezDateCreate: TDateTimeField;
    spGoodsRezOperVid: TIntegerField;
    spGoodsRezid_business: TIntegerField;
    spGoodsRezAmountOper: TBCDField;
    spGoodsRezBusinessNum: TStringField;
    spGoodsRezid_UserCreator: TIntegerField;
    spGoodsRezCRN_OLD_OperSum: TFloatField;
    spGoodsRezid_OperWare: TIntegerField;
    spGoodsRezAmountOperReal: TFloatField;
    spGoodsRezPriceOper: TFloatField;
    spGoodsRezSummSys: TFloatField;
    spGoodsRezid_Warehouse: TIntegerField;
    spGoodsRezid_Manufact: TIntegerField;
    spGoodsRezid_Repr: TIntegerField;
    spGoodsRezid_Warehouse_Ext: TIntegerField;
    spGoodsRezid_Manufact_Ext: TIntegerField;
    spGoodsRezPriceInv: TFloatField;
    spGoodsRezid_Goods: TIntegerField;
    spGoodsRezImp_PayBasic: TStringField;
    spGoodsRezAccInv_PayAssignment: TStringField;
    spGoodsRezContract: TStringField;
    spGoodsRezOpComment: TStringField;
    spGoodsRezRealDataCreate: TDateTimeField;
    spGoodsRezis_Mirr: TBooleanField;
    spGoodsRezVatIn: TBooleanField;
    spGoodsRezAutoGen: TBooleanField;
    spGoodsRezid_ContrAgent: TIntegerField;
    spGoodsRezReprName: TStringField;
    spGoodsRezReprID_Main: TIntegerField;
    spGoodsRezCurrencySysName: TStringField;
    spGoodsRezCurrencySysShortName: TStringField;
    spGoodsRezSrcName: TStringField;
    spGoodsRezSrcID_Main: TIntegerField;
    spGoodsRezReprName_1: TStringField;
    spGoodsRezReprID_Main_1: TIntegerField;
    spGoodsRezWareName: TStringField;
    spGoodsRezWareID_Main: TIntegerField;
    spGoodsRezContrAgentName: TStringField;
    spGoodsRezid_CAGroup: TIntegerField;
    spGoodsRezSummOper: TFloatField;
    spGoodsRezOperNum: TStringField;
    spGoodsRezOperVidName: TStringField;
    spPriceList_GID_Warehouse: TIntegerField;
    spPriceList_GMeasureName: TStringField;
    spPriceList_GWarehouseName: TStringField;
    spPriceList_GPrice: TFloatField;
    spPriceList_GId_Currency: TIntegerField;
    spPriceList_GTotalAmount: TBCDField;
    spPriceList_GTotalSum: TBCDField;
    spPriceList_GTotalAmountRez: TBCDField;
    spPriceList_GTotalAmountSend: TBCDField;
    spPriceList_GTotalSumRez: TBCDField;
    spBal_v2ID: TAutoIncField;
    spBal_v2id_Rr: TIntegerField;
    spBal_v2ID_Oper: TIntegerField;
    spBal_v2RowLevel: TIntegerField;
    spBal_v2RowName: TStringField;
    spBal_v2IsDeb: TBooleanField;
    spBal_v2OrdNum: TIntegerField;
    spBal_v2isTotal: TBooleanField;
    spBal_v2OperSummSysCur: TFloatField;
    spBal_v2id_Acc: TIntegerField;
    spBal_v2id_Acc_Group: TIntegerField;
    spBal_v2id_Manufact: TIntegerField;
    spBal_v2id_Manufact_Group: TIntegerField;
    spBal_v2id_Warehouse: TIntegerField;
    spBal_v2id_Warehouse_Group: TIntegerField;
    spBal_v2id_Goods: TIntegerField;
    spBal_v2id_CAGroup: TIntegerField;
    spBal_v2id_repr: TIntegerField;
    spBal_v2id_ContrAgent: TIntegerField;
    spBal_v2HasChld: TBooleanField;
    spBal_v2OnTop: TBooleanField;
    spBal_v2Delta: TFloatField;
    spBal_v2OperSummSysCurOLD: TFloatField;
    dsBalDet: TDataSetProvider;
    spBalDet: TADOStoredProc;
    spBalDetWorkSum: TFloatField;
    spBalDetid_Oper: TAutoIncField;
    spBalDetid_OperParent: TIntegerField;
    spBalDetid_old_Oper: TIntegerField;
    spBalDetDateCreate: TDateTimeField;
    spBalDetid_LC_Oper: TIntegerField;
    spBalDetOperVid: TIntegerField;
    spBalDetid_Replicator: TIntegerField;
    spBalDetReplicatorShortName: TStringField;
    spBalDetid_UserCreator: TIntegerField;
    spBalDetid_business: TIntegerField;
    spBalDetId_CurrencyBsn: TIntegerField;
    spBalDetBusinessName: TStringField;
    spBalDetBusinessNum: TStringField;
    spBalDetDateLocal: TDateTimeField;
    spBalDetCorrect: TBooleanField;
    spBalDetOperTypeIn: TBooleanField;
    spBalDetId_CurrencyOper: TIntegerField;
    spBalDetCurrencyOperName: TStringField;
    spBalDetCurrencyOperShortName: TStringField;
    spBalDetAmountOper: TFloatField;
    spBalDetAmountOper2: TFloatField;
    spBalDetPriceOper: TFloatField;
    spBalDetRateOper: TFloatField;
    spBalDetid_Measure: TIntegerField;
    spBalDetMeasureName: TStringField;
    spBalDetRealKoef: TFloatField;
    spBalDetAmountOperBaseMS: TFloatField;
    spBalDetId_CurrencySys: TIntegerField;
    spBalDetCurrencySysName: TStringField;
    spBalDetCurrencySysShortName: TStringField;
    spBalDetSummSys: TFloatField;
    spBalDetRateSys: TFloatField;
    spBalDetid_Acc: TIntegerField;
    spBalDetid_Warehouse: TIntegerField;
    spBalDetid_Manufact: TIntegerField;
    spBalDetSrcName: TStringField;
    spBalDetSrcID_Main: TIntegerField;
    spBalDetid_Repr: TIntegerField;
    spBalDetid_Acc_Ext: TIntegerField;
    spBalDetid_Warehouse_Ext: TIntegerField;
    spBalDetid_Manufact_Ext: TIntegerField;
    spBalDetReprName: TStringField;
    spBalDetReprID_Main: TIntegerField;
    spBalDetId_CurrencyInv: TIntegerField;
    spBalDetPriceInv: TFloatField;
    spBalDetRateInv: TFloatField;
    spBalDetCurrencyInvName: TStringField;
    spBalDetCurrencyInvShortName: TStringField;
    spBalDetid_Goods: TIntegerField;
    spBalDetWareName: TStringField;
    spBalDetWareID_Main: TIntegerField;
    spBalDetKoeff: TIntegerField;
    spBalDetKoeffName: TStringField;
    spBalDetCheckDate: TDateTimeField;
    spBalDetid_UserChecker: TIntegerField;
    spBalDetid_FormalDistrib: TIntegerField;
    spBalDetFormalDistribName: TStringField;
    spBalDetid_FuncDistrib: TIntegerField;
    spBalDetFuncDistribName: TStringField;
    spBalDetDeleted: TBooleanField;
    spBalDetid_ContrAgent: TIntegerField;
    spBalDetContrAgentName: TStringField;
    spBalDetid_CAGroup: TIntegerField;
    spBalDetSummOper: TFloatField;
    spBalDetTypeName: TStringField;
    spBalDetOperNum: TStringField;
    spBalDetOperDelta: TFloatField;
    spBalDetOperRateDelta: TFloatField;
    spBalDetOperTotalDelta: TFloatField;
    spBalDetDTDiff: TIntegerField;
    spBalDetHasViza: TBooleanField;
    spBalDetOperState: TIntegerField;
    spBalDetHidedOper: TBooleanField;
    spBalDetOperSummSys: TFloatField;
    spBalDetRateMain: TFloatField;
    spBalDetid_Repr_Ex: TIntegerField;
    spBalDetid_DocType: TIntegerField;
    spBalDetImp_PayBasic: TStringField;
    spBalDetAccInv_PayAssignment: TStringField;
    spBalDetContract: TStringField;
    spBalDetOperDeltaCrn: TFloatField;
    spBalDetOperRateDeltaCrn: TFloatField;
    spBalDetOperTotalDeltaCrn: TFloatField;
    spBalDetOperCrnName: TStringField;
    spBalDetOperSum_Offer: TFloatField;
    spBalDetCRN_OLD_OperSum: TFloatField;
    spBalDetCRN_OLD_OperSum_Offer: TFloatField;
    spBalDetCRN_OperSum_Inv: TFloatField;
    spBalDetOperSumCalced: TFloatField;
    spBalDetOperSum_OfferCalced: TFloatField;
    spBalDetBlocked: TBooleanField;
    spBalDetCurrencyBsnName: TStringField;
    spBalDetid_Ctg_Goods_2: TIntegerField;
    spBalDetOpComment: TStringField;
    spBalDetRealDataCreate: TDateTimeField;
    spBalDetOperTypeSIGN: TIntegerField;
    spBalDetHasChild: TIntegerField;
    spBalDetDig1: TFloatField;
    spBalDetDig2: TFloatField;
    spBalDetDig3: TFloatField;
    spBalDetDig4: TFloatField;
    spBalDetDig5: TFloatField;
    spBalDetDig6: TFloatField;
    spBalDetDig7: TFloatField;
    spBalDetDig8: TFloatField;
    spBalDetDig9: TFloatField;
    spBalDetDig10: TFloatField;
    spBalDetDig11: TFloatField;
    spBalDetDig12: TFloatField;
    spBalDetDig13: TFloatField;
    spBalDetDig14: TFloatField;
    spBalDetDig15: TFloatField;
    spBalDetStr1: TStringField;
    spBalDetStr2: TStringField;
    spBalDetStr3: TStringField;
    spBalDetStr4: TStringField;
    spBalDetStr5: TStringField;
    spBalDetStr6: TStringField;
    spBalDetStr7: TStringField;
    spBalDetStr8: TStringField;
    spBalDetStr9: TStringField;
    spBalDetStr10: TStringField;
    spBalDetStr11: TStringField;
    spBalDetStr12: TStringField;
    spBalDetStr13: TStringField;
    spBalDetStr14: TStringField;
    spBalDetStr15: TStringField;
    spBalDetid_OperWare: TAutoIncField;
    spBalDetOperVidName: TStringField;
    spBalDetCRN_OperSumRez: TFloatField;
    spBalDetOnlyDate: TDateTimeField;
    spBalDetis_Mirr: TBooleanField;
    spBalDetid_Acc_Group: TIntegerField;
    spBalDetid_Warehouse_Group: TIntegerField;
    spBalDetid_Manufact_Group: TIntegerField;
    spBalDetVatIn: TBooleanField;
    spBalDetAutoGen: TBooleanField;
    spBalDetCreatorFIO: TStringField;
    spBalDetCheckerFIO: TStringField;
    ADOQuery1: TADOQuery;
    dsAccSumm: TDataSetProvider;
    spCASumm: TADOStoredProc;
    dsCASumm: TDataSetProvider;
    spGetFirstRepr: TADOStoredProc;
    spGetFirstReprid_Repr: TAutoIncField;
    spCASummid_ContrAgent: TIntegerField;
    spCASummId_CurrencyOper: TIntegerField;
    spCASummSumm: TFloatField;
    spCASummOperSumm: TFloatField;
    spCASummCrnName: TStringField;
    dsCAByDateLastBay: TDataSetProvider;
    spCAByDateLastBay: TADOStoredProc;
    spCAByDateLastBayID: TAutoIncField;
    spCAByDateLastBayid_ContrAgent: TIntegerField;
    spCAByDateLastBayid_CAGroup: TIntegerField;
    spCAByDateLastBayid_CAGroup2: TIntegerField;
    spCAByDateLastBayName: TStringField;
    spCAByDateLastBayLastDate: TDateTimeField;
    spCAByDateLastBayHasCH: TIntegerField;
    spCAPrfLoss: TADOStoredProc;
    dsCAPrfLoss: TDataSetProvider;
    spCAPrfLossID: TAutoIncField;
    spCAPrfLossName: TStringField;
    spCAPrfLossid_ContrAgent: TIntegerField;
    spCAPrfLossid_CAGroup: TIntegerField;
    spCAPrfLossWareProff: TFloatField;
    spCAPrfLossWareLoss: TFloatField;
    spCAPrfLossFinProff: TFloatField;
    spCAPrfLossFinLoss: TFloatField;
    spCAPrfLossOffProff: TFloatField;
    spCAPrfLossOffLoss: TFloatField;
    spCAPrfLossCurProff: TFloatField;
    spCAPrfLossCurLoss: TFloatField;
    spCAPrfLossInvSumm: TFloatField;
    spCAPrfLossRealWareProff: TFloatField;
    spPrfLoss: TADOStoredProc;
    dsPrfLoss: TDataSetProvider;
    spPrfLossid_Oper2: TIntegerField;
    spPrfLossid_OperWare2: TIntegerField;
    spPrfLossWareProff: TFloatField;
    spPrfLossWareLoss: TFloatField;
    spPrfLossFinProff: TFloatField;
    spPrfLossFinLoss: TFloatField;
    spPrfLossOffProff: TFloatField;
    spPrfLossOffLoss: TFloatField;
    spPrfLossCurProff: TFloatField;
    spPrfLossCurLoss: TFloatField;
    spPrfLossInvSumm: TFloatField;
    spPrfLossRealWareProff: TFloatField;
    spPrfLossid_Oper: TAutoIncField;
    spPrfLossid_OperParent: TIntegerField;
    spPrfLossid_old_Oper: TIntegerField;
    spPrfLossDateCreate: TDateTimeField;
    spPrfLossid_LC_Oper: TIntegerField;
    spPrfLossOperVid: TIntegerField;
    spPrfLossid_Replicator: TIntegerField;
    spPrfLossReplicatorShortName: TStringField;
    spPrfLossid_UserCreator: TIntegerField;
    spPrfLossid_business: TIntegerField;
    spPrfLossId_CurrencyBsn: TIntegerField;
    spPrfLossBusinessName: TStringField;
    spPrfLossBusinessNum: TStringField;
    spPrfLossDateLocal: TDateTimeField;
    spPrfLossCorrect: TBooleanField;
    spPrfLossOperTypeIn: TBooleanField;
    spPrfLossId_CurrencyOper: TIntegerField;
    spPrfLossCurrencyOperName: TStringField;
    spPrfLossCurrencyOperShortName: TStringField;
    spPrfLossAmountOper: TFloatField;
    spPrfLossAmountOper2: TFloatField;
    spPrfLossPriceOper: TFloatField;
    spPrfLossRateOper: TFloatField;
    spPrfLossid_Measure: TIntegerField;
    spPrfLossMeasureName: TStringField;
    spPrfLossRealKoef: TFloatField;
    spPrfLossAmountOperBaseMS: TFloatField;
    spPrfLossId_CurrencySys: TIntegerField;
    spPrfLossCurrencySysName: TStringField;
    spPrfLossCurrencySysShortName: TStringField;
    spPrfLossSummSys: TFloatField;
    spPrfLossRateSys: TFloatField;
    spPrfLossid_Acc: TIntegerField;
    spPrfLossid_Warehouse: TIntegerField;
    spPrfLossid_Manufact: TIntegerField;
    spPrfLossSrcName: TStringField;
    spPrfLossSrcID_Main: TIntegerField;
    spPrfLossid_Repr: TIntegerField;
    spPrfLossid_Acc_Ext: TIntegerField;
    spPrfLossid_Warehouse_Ext: TIntegerField;
    spPrfLossid_Manufact_Ext: TIntegerField;
    spPrfLossReprName: TStringField;
    spPrfLossReprID_Main: TIntegerField;
    spPrfLossId_CurrencyInv: TIntegerField;
    spPrfLossPriceInv: TFloatField;
    spPrfLossRateInv: TFloatField;
    spPrfLossCurrencyInvName: TStringField;
    spPrfLossCurrencyInvShortName: TStringField;
    spPrfLossid_Goods: TIntegerField;
    spPrfLossWareName: TStringField;
    spPrfLossWareID_Main: TIntegerField;
    spPrfLossKoeff: TIntegerField;
    spPrfLossKoeffName: TStringField;
    spPrfLossCheckDate: TDateTimeField;
    spPrfLossid_UserChecker: TIntegerField;
    spPrfLossid_FormalDistrib: TIntegerField;
    spPrfLossFormalDistribName: TStringField;
    spPrfLossid_FuncDistrib: TIntegerField;
    spPrfLossFuncDistribName: TStringField;
    spPrfLossDeleted: TBooleanField;
    spPrfLossid_ContrAgent: TIntegerField;
    spPrfLossContrAgentName: TStringField;
    spPrfLossid_CAGroup: TIntegerField;
    spPrfLossSummOper: TFloatField;
    spPrfLossTypeName: TStringField;
    spPrfLossOperNum: TStringField;
    spPrfLossOperDelta: TFloatField;
    spPrfLossOperRateDelta: TFloatField;
    spPrfLossOperTotalDelta: TFloatField;
    spPrfLossDTDiff: TIntegerField;
    spPrfLossHasViza: TBooleanField;
    spPrfLossOperState: TIntegerField;
    spPrfLossHidedOper: TBooleanField;
    spPrfLossOperSummSys: TFloatField;
    spPrfLossRateMain: TFloatField;
    spPrfLossid_Repr_Ex: TIntegerField;
    spPrfLossid_DocType: TIntegerField;
    spPrfLossImp_PayBasic: TStringField;
    spPrfLossAccInv_PayAssignment: TStringField;
    spPrfLossContract: TStringField;
    spPrfLossOperDeltaCrn: TFloatField;
    spPrfLossOperRateDeltaCrn: TFloatField;
    spPrfLossOperTotalDeltaCrn: TFloatField;
    spPrfLossOperCrnName: TStringField;
    spPrfLossOperSum_Offer: TFloatField;
    spPrfLossCRN_OLD_OperSum: TFloatField;
    spPrfLossCRN_OLD_OperSum_Offer: TFloatField;
    spPrfLossCRN_OperSum_Inv: TFloatField;
    spPrfLossOperSumCalced: TFloatField;
    spPrfLossOperSum_OfferCalced: TFloatField;
    spPrfLossBlocked: TBooleanField;
    spPrfLossCurrencyBsnName: TStringField;
    spPrfLossid_Ctg_Goods_2: TIntegerField;
    spPrfLossOpComment: TStringField;
    spPrfLossRealDataCreate: TDateTimeField;
    spPrfLossOperTypeSIGN: TIntegerField;
    spPrfLossHasChild: TIntegerField;
    spPrfLossDig1: TFloatField;
    spPrfLossDig2: TFloatField;
    spPrfLossDig3: TFloatField;
    spPrfLossDig4: TFloatField;
    spPrfLossDig5: TFloatField;
    spPrfLossDig6: TFloatField;
    spPrfLossDig7: TFloatField;
    spPrfLossDig8: TFloatField;
    spPrfLossDig9: TFloatField;
    spPrfLossDig10: TFloatField;
    spPrfLossDig11: TFloatField;
    spPrfLossDig12: TFloatField;
    spPrfLossDig13: TFloatField;
    spPrfLossDig14: TFloatField;
    spPrfLossDig15: TFloatField;
    spPrfLossStr1: TStringField;
    spPrfLossStr2: TStringField;
    spPrfLossStr3: TStringField;
    spPrfLossStr4: TStringField;
    spPrfLossStr5: TStringField;
    spPrfLossStr6: TStringField;
    spPrfLossStr7: TStringField;
    spPrfLossStr8: TStringField;
    spPrfLossStr9: TStringField;
    spPrfLossStr10: TStringField;
    spPrfLossStr11: TStringField;
    spPrfLossStr12: TStringField;
    spPrfLossStr13: TStringField;
    spPrfLossStr14: TStringField;
    spPrfLossStr15: TStringField;
    spPrfLossid_OperWare: TAutoIncField;
    spPrfLossOperVidName: TStringField;
    spPrfLossCRN_OperSumRez: TFloatField;
    spPrfLossOnlyDate: TDateTimeField;
    spPrfLossis_Mirr: TBooleanField;
    spPrfLossid_Acc_Group: TIntegerField;
    spPrfLossid_Warehouse_Group: TIntegerField;
    spPrfLossid_Manufact_Group: TIntegerField;
    spPrfLossVatIn: TBooleanField;
    spPrfLossAutoGen: TBooleanField;
    spPrfLossCreatorFIO: TStringField;
    spPrfLossCheckerFIO: TStringField;
    spCAPrfLossid_CAGroup2: TIntegerField;
    spCAPrfLossRent: TFloatField;
    spWarePrfLoss: TADOStoredProc;
    dsWarePrfLoss: TDataSetProvider;
    spWarePrfLossID: TAutoIncField;
    spWarePrfLossid_Ctg_Goods: TIntegerField;
    spWarePrfLossid_BaseCtg_Goods: TIntegerField;
    spWarePrfLossid_Goods: TIntegerField;
    spWarePrfLossName: TStringField;
    spWarePrfLossWareProff: TFloatField;
    spWarePrfLossWareLoss: TFloatField;
    spWarePrfLossCurProff: TFloatField;
    spWarePrfLossCurLoss: TFloatField;
    spWarePrfLossInvSumm: TFloatField;
    spWarePrfLossRealWareProff: TFloatField;
    spWarePrfLossRent: TFloatField;
    dsCtg_GetGoods: TDataSetProvider;
    spCtg_GetGoods: TADOStoredProc;
    spCtg_GetGoodsId: TAutoIncField;
    spCtg_GetGoodsName: TStringField;
    dsDoc_Inv: TDataSetProvider;
    spArc2: TADOStoredProc;
    spArc2id_Oper: TIntegerField;
    spArc2DateCreate: TDateTimeField;
    spArc2OperVid: TIntegerField;
    spArc2BusinessName: TStringField;
    spArc2Correct: TBooleanField;
    spArc2OperTypeIn: TBooleanField;
    spArc2CurrencyOperShortName: TStringField;
    spArc2AmountOper: TFloatField;
    spArc2AmountOper2: TFloatField;
    spArc2PriceOper: TFloatField;
    spArc2MeasureName: TStringField;
    spArc2CurrencySysShortName: TStringField;
    spArc2SummSys: TFloatField;
    spArc2id_Acc: TIntegerField;
    spArc2id_Warehouse: TIntegerField;
    spArc2id_Manufact: TIntegerField;
    spArc2SrcName: TStringField;
    spArc2SrcID_Main: TIntegerField;
    spArc2id_Repr: TIntegerField;
    spArc2id_Acc_Ext: TIntegerField;
    spArc2id_Warehouse_Ext: TIntegerField;
    spArc2id_Manufact_Ext: TIntegerField;
    spArc2ReprName: TStringField;
    spArc2ReprID_Main: TIntegerField;
    spArc2PriceInv: TFloatField;
    spArc2CurrencyInvShortName: TStringField;
    spArc2id_Goods: TIntegerField;
    spArc2WareName: TStringField;
    spArc2WareID_Main: TIntegerField;
    spArc2Koeff: TIntegerField;
    spArc2KoeffName: TStringField;
    spArc2CheckDate: TDateTimeField;
    spArc2id_UserChecker: TIntegerField;
    spArc2FormalDistribName: TStringField;
    spArc2FuncDistribName: TStringField;
    spArc2Deleted: TBooleanField;
    spArc2id_ContrAgent: TIntegerField;
    spArc2ContrAgentName: TStringField;
    spArc2SummOper: TFloatField;
    spArc2TypeName: TStringField;
    spArc2OperNum: TStringField;
    spArc2OperDelta: TFloatField;
    spArc2OperRateDelta: TFloatField;
    spArc2OperTotalDelta: TFloatField;
    spArc2DTDiff: TIntegerField;
    spArc2HasViza: TBooleanField;
    spArc2OperState: TIntegerField;
    spArc2OperSummSys: TFloatField;
    spArc2Imp_PayBasic: TStringField;
    spArc2AccInv_PayAssignment: TStringField;
    spArc2Contract: TStringField;
    spArc2OperDeltaCrn: TFloatField;
    spArc2OperRateDeltaCrn: TFloatField;
    spArc2OperTotalDeltaCrn: TFloatField;
    spArc2OperCrnName: TStringField;
    spArc2OperSum_Offer: TFloatField;
    spArc2CRN_OLD_OperSum: TFloatField;
    spArc2CRN_OLD_OperSum_Offer: TFloatField;
    spArc2CRN_OperSum_Inv: TFloatField;
    spArc2OperSumCalced: TFloatField;
    spArc2OperSum_OfferCalced: TFloatField;
    spArc2Blocked: TBooleanField;
    spArc2CurrencyBsnName: TStringField;
    spArc2OpComment: TStringField;
    spArc2RealDataCreate: TDateTimeField;
    spArc2Dig1: TFloatField;
    spArc2Dig2: TFloatField;
    spArc2Dig3: TFloatField;
    spArc2Dig4: TFloatField;
    spArc2Dig5: TFloatField;
    spArc2Dig6: TFloatField;
    spArc2Dig7: TFloatField;
    spArc2Dig8: TFloatField;
    spArc2Dig9: TFloatField;
    spArc2Dig10: TFloatField;
    spArc2Dig11: TFloatField;
    spArc2Dig12: TFloatField;
    spArc2Dig13: TFloatField;
    spArc2Dig14: TFloatField;
    spArc2Dig15: TFloatField;
    spArc2Str1: TStringField;
    spArc2Str2: TStringField;
    spArc2Str3: TStringField;
    spArc2Str4: TStringField;
    spArc2Str5: TStringField;
    spArc2Str6: TStringField;
    spArc2Str7: TStringField;
    spArc2Str8: TStringField;
    spArc2Str9: TStringField;
    spArc2Str10: TStringField;
    spArc2Str11: TStringField;
    spArc2Str12: TStringField;
    spArc2Str13: TStringField;
    spArc2Str14: TStringField;
    spArc2Str15: TStringField;
    spArc2OperVidName: TStringField;
    spArc2CRN_OperSumRez: TFloatField;
    spArc2OnlyDate: TDateTimeField;
    spArc2is_Mirr: TBooleanField;
    spArc2id_Repr_Ex: TIntegerField;
    spArc2id_business: TIntegerField;
    spArc2OperTypeSIGN: TIntegerField;
    spArc2VatIn: TBooleanField;
    spArc2AutoGen: TBooleanField;
    spBalanceBy: TADOStoredProc;
    spACard: TADOStoredProc;
    spB2: TADOStoredProc;
    dsB2: TDataSetProvider;
    spB2TmpID: TAutoIncField;
    spB2Tmp: TIntegerField;
    spB2IsRes: TBooleanField;
    spB2TotalRez: TFloatField;
    spB2id_Oper: TIntegerField;
    spB2OperTypeIn: TBooleanField;
    spB2OperVid: TIntegerField;
    spB2id_Repr: TIntegerField;
    spB2id_ContrAgent: TIntegerField;
    spB2DateCreate: TDateTimeField;
    spB2CurrencyShortName: TStringField;
    spB2OperSummSysCur: TFloatField;
    spB2OperSum_Offer: TFloatField;
    spB2Id_Currency_Offer: TIntegerField;
    spB2OperNum: TStringField;
    spB2isGrpOper: TBooleanField;
    spB2id_Goods: TIntegerField;
    spB2is_Mirr: TBooleanField;
    spB2Docz: TStringField;
    spB2NNN: TIntegerField;
    spB2id_Acc: TIntegerField;
    spB2id_Warehouse: TIntegerField;
    spB2id_Manufact: TIntegerField;
    spB2id_Repr_Ex: TIntegerField;
    spB2S1: TBCDField;
    spB2S2: TBCDField;
    spB2SumIN: TBCDField;
    spB2SumOUT: TBCDField;
    spB2ReprName: TStringField;
    spB2SrcName: TStringField;
    spB2Imp_PayBasic: TStringField;
    spB2AccInv_PayAssignment: TStringField;
    spB2Contract: TStringField;
    spB2OpComment: TStringField;
    spB2Str1: TStringField;
    spB2Str2: TStringField;
    spB2Str3: TStringField;
    spB2Str4: TStringField;
    spB2Str5: TStringField;
    spB2Str6: TStringField;
    spB2Str7: TStringField;
    spB2Str8: TStringField;
    spB2Str9: TStringField;
    spB2Str10: TStringField;
    spB2Str11: TStringField;
    spB2Str12: TStringField;
    spB2Str13: TStringField;
    spB2Str14: TStringField;
    spB2Str15: TStringField;
    spB2GrpOper: TIntegerField;
    spB2OperSum_OfferABS: TFloatField;
    spA2: TADOStoredProc;
    AutoIncField6: TAutoIncField;
    IntegerField14: TIntegerField;
    BooleanField10: TBooleanField;
    FloatField11: TFloatField;
    IntegerField15: TIntegerField;
    BooleanField12: TBooleanField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    DateTimeField2: TDateTimeField;
    StringField28: TStringField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    IntegerField21: TIntegerField;
    StringField29: TStringField;
    BooleanField13: TBooleanField;
    IntegerField22: TIntegerField;
    BooleanField14: TBooleanField;
    StringField30: TStringField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    IntegerField26: TIntegerField;
    IntegerField27: TIntegerField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    StringField50: TStringField;
    StringField51: TStringField;
    IntegerField28: TIntegerField;
    FloatField14: TFloatField;
    dsA2: TDataSetProvider;
    spBJTree: TADOStoredProc;
    dsBJTree: TDataSetProvider;
    spBJTProp: TADOStoredProc;
    AutoIncField7: TAutoIncField;
    IntegerField29: TIntegerField;
    StringField52: TStringField;
    BooleanField15: TBooleanField;
    IntegerField30: TIntegerField;
    dsBJTProp: TDataSetProvider;
    spBJTPropPName: TStringField;
    spDoFilterChOnRate: TBooleanField;
    spDoFilterAmountOper: TBCDField;
    spAPGoods: TADOStoredProc;
    spAPGoodsid_AP_Goods: TAutoIncField;
    spAPGoodsid_ObjItem: TIntegerField;
    spAPGoodsid_Goods: TIntegerField;
    spAPGoodsAmount_Koeff: TBCDField;
    spAPGoodsAmount_Znak: TStringField;
    spAPGoodsAmount_B: TBCDField;
    spAPGoodsDisabled: TBooleanField;
    spAPGoodsid_Measure: TIntegerField;
    spAPGoodsSumm_UseSys: TBooleanField;
    spAPGoodsSumm_Type: TIntegerField;
    spAPGoodsSumm_Koeff: TBCDField;
    spAPGoodsSumm_B: TBCDField;
    spAPGoodsSumm_Znak: TStringField;
    spAPGoodsid_Currency: TIntegerField;
    spAPGoodsCurrency_Type: TIntegerField;
    spAPGoodsMeasureName: TStringField;
    spAPGoodsRealKoef: TFloatField;
    spAPGoodsWareName: TStringField;
    dsAPGoods: TSQLUpdateDSProvider;
    spB2Dig1: TFloatField;
    spB2Dig2: TFloatField;
    spB2Dig3: TFloatField;
    spB2Dig4: TFloatField;
    spB2Dig5: TFloatField;
    spB2Dig6: TFloatField;
    spB2Dig7: TFloatField;
    spB2Dig8: TFloatField;
    spB2Dig9: TFloatField;
    spB2Dig10: TFloatField;
    spB2Dig11: TFloatField;
    spB2Dig12: TFloatField;
    spB2Dig13: TFloatField;
    spB2Dig14: TFloatField;
    spB2Dig15: TFloatField;
    spA2Dig1: TFloatField;
    spA2Dig2: TFloatField;
    spA2Dig3: TFloatField;
    spA2Dig4: TFloatField;
    spA2Dig5: TFloatField;
    spA2Dig6: TFloatField;
    spA2Dig7: TFloatField;
    spA2Dig8: TFloatField;
    spA2Dig9: TFloatField;
    spA2Dig10: TFloatField;
    spA2Dig11: TFloatField;
    spA2Dig12: TFloatField;
    spA2Dig13: TFloatField;
    spA2Dig14: TFloatField;
    spA2Dig15: TFloatField;
    spDoc_Inv: TADOStoredProc;
    spDoc_Invid_invoice: TAutoIncField;
    spDoc_Invid_Oper: TIntegerField;
    spDoc_InvDoc_Num: TStringField;
    spDoc_InvDoc_Date: TDateTimeField;
    spDoc_InvDoc_DateCreate: TDateTimeField;
    spDoc_Invid_UserCreator: TIntegerField;
    spDoc_InvOrgName: TStringField;
    spDoc_InvAddress: TStringField;
    spDoc_InvBank: TStringField;
    spDoc_InvBIK: TBCDField;
    spDoc_InvAcc: TStringField;
    spDoc_InvCorAcc: TStringField;
    spDoc_InvDept: TStringField;
    spDoc_InvOKPO: TStringField;
    spDoc_InvOKPO2: TStringField;
    spDoc_InvOKPO3: TStringField;
    spDoc_InvOKPO4: TStringField;
    spDoc_InvOKPD: TStringField;
    spDoc_InvCBL_Num: TStringField;
    spDoc_InvCBL_Date: TDateTimeField;
    spDoc_InvRC_Name: TStringField;
    spDoc_InvRC_Address: TStringField;
    spDoc_InvRC_Bank: TStringField;
    spDoc_InvRC_BIK: TBCDField;
    spDoc_InvRC_Acc: TStringField;
    spDoc_InvRC_CorAcc: TStringField;
    spDoc_InvPayer_Name: TStringField;
    spDoc_InvPayer_Address: TStringField;
    spDoc_InvPayer_Bank: TStringField;
    spDoc_InvPayer_BIK: TBCDField;
    spDoc_InvPayer_Acc: TStringField;
    spDoc_InvPayer_CorAcc: TStringField;
    spDoc_InvBase: TStringField;
    spDoc_InvBase_Num: TStringField;
    spDoc_InvBase_Date: TDateTimeField;
    spDoc_InvExtDoc_Count: TIntegerField;
    spDoc_InvChif_Post: TStringField;
    spDoc_InvChif_FIO: TStringField;
    spDoc_InvBuh: TStringField;
    spDoc_InvPuter_post: TStringField;
    spDoc_InvPuter_Name: TStringField;
    spDoc_InvPuter_Date: TDateTimeField;
    spDoc_InvWar_Num: TStringField;
    spDoc_InvWar_Date: TDateTimeField;
    spDoc_InvWar_Owner: TStringField;
    spDoc_InvWar_Name: TStringField;
    spDoc_InvGeter_Post: TStringField;
    spDoc_InvGeter_FIO: TStringField;
    spDoc_InvRC_Post: TStringField;
    spDoc_InvRC_FIO: TStringField;
    spDoc_InvRC_Date: TDateTimeField;
    spDoc_Invid_DocCur: TIntegerField;
    spDoc_Invid_business: TIntegerField;
    spDoc_InvDisabled: TBooleanField;
    spDoc_InvDocCurPartName: TStringField;
    spDoc_InvDocCurName: TStringField;
    spDoc_Invid_DocCur_1: TAutoIncField;
    spDoc_InvDef: TBooleanField;
    spDoc_InvNumberCode: TStringField;
    spDoc_Invid_Doc_Org: TIntegerField;
    spDoc_InvVAT: TBCDField;
    spArc201: TADOStoredProc;
    spDoc_InvWare: TADOStoredProc;
    spDoc_WBill: TADOStoredProc;
    spDoc_WBillid_WBill: TAutoIncField;
    spDoc_WBillid_Oper: TIntegerField;
    spDoc_WBillDoc_Num: TStringField;
    spDoc_WBillDoc_Date: TDateTimeField;
    spDoc_WBillDoc_DateCreate: TDateTimeField;
    spDoc_WBillid_UserCreator: TIntegerField;
    spDoc_WBillid_DocCur: TIntegerField;
    spDoc_WBillOrgName: TStringField;
    spDoc_WBillAddress: TStringField;
    spDoc_WBillBank: TStringField;
    spDoc_WBillBIK: TBCDField;
    spDoc_WBillAcc: TStringField;
    spDoc_WBillCorAcc: TStringField;
    spDoc_WBillOKPO: TStringField;
    spDoc_WBillOKPO2: TStringField;
    spDoc_WBillOKPO3: TStringField;
    spDoc_WBillRC_Name: TStringField;
    spDoc_WBillRC_Address: TStringField;
    spDoc_WBillRC_Bank: TStringField;
    spDoc_WBillRC_BIK: TBCDField;
    spDoc_WBillRC_Acc: TStringField;
    spDoc_WBillRC_CorAcc: TStringField;
    spDoc_WBillPayer_Name: TStringField;
    spDoc_WBillPayer_Address: TStringField;
    spDoc_WBillPayer_Bank: TStringField;
    spDoc_WBillPayer_BIK: TBCDField;
    spDoc_WBillPayer_Acc: TStringField;
    spDoc_WBillPayer_CorAcc: TStringField;
    spDoc_WBillBuh: TStringField;
    spDoc_WBillChecker_post: TStringField;
    spDoc_WBillChecker_Name: TStringField;
    spDoc_WBillPuter_post: TStringField;
    spDoc_WBillPuter_Name: TStringField;
    spDoc_WBillGeter_Post: TStringField;
    spDoc_WBillGeter_FIO: TStringField;
    spDoc_WBillDisabled: TBooleanField;
    spDoc_WBillid_business: TIntegerField;
    spDoc_WBillDocCurPartName: TStringField;
    spDoc_WBillDocCurName: TStringField;
    spDoc_WBillid_DocCur_1: TAutoIncField;
    spDoc_WBillDef: TBooleanField;
    spDoc_WBillNumberCode: TStringField;
    spDoc_WBillid_Doc_Org: TIntegerField;
    spDoc_WBillVAT: TBCDField;
    spDoc_AFWare: TADOStoredProc;
    spDoc_AF: TADOStoredProc;
    spDoc_AFid_AF: TAutoIncField;
    spDoc_AFid_Oper: TIntegerField;
    spDoc_AFDoc_Num: TStringField;
    spDoc_AFDoc_Date: TDateTimeField;
    spDoc_AFDoc_DateCreate: TDateTimeField;
    spDoc_AFid_UserCreator: TIntegerField;
    spDoc_AFOrgName: TStringField;
    spDoc_AFAddress: TStringField;
    spDoc_AFINN: TBCDField;
    spDoc_AFKPP: TBCDField;
    spDoc_AFSender_Name: TStringField;
    spDoc_AFSender_Address2: TStringField;
    spDoc_AFRC_Name: TStringField;
    spDoc_AFRC_Address2: TStringField;
    spDoc_AFExtDocNum: TStringField;
    spDoc_AFExtDocDate: TDateTimeField;
    spDoc_AFBayer_Name: TStringField;
    spDoc_AFBayer_Address: TStringField;
    spDoc_AFBayer_INN: TBCDField;
    spDoc_AFBayer_KPP: TBCDField;
    spDoc_AFPBUL: TStringField;
    spDoc_AFChif: TStringField;
    spDoc_AFBuh: TStringField;
    spDoc_AFid_DocCur: TIntegerField;
    spDoc_AFid_business: TIntegerField;
    spDoc_AFDisabled: TBooleanField;
    spDoc_AFDocCurPartName: TStringField;
    spDoc_AFDocCurName: TStringField;
    spDoc_AFid_DocCur_1: TAutoIncField;
    spDoc_AFDef: TBooleanField;
    spDoc_AFNumberCode: TStringField;
    spDoc_AFid_Doc_Org: TIntegerField;
    spDoc_AFVAT: TBCDField;
    spDoc_Acc: TADOStoredProc;
    spDoc_Accid_Account: TAutoIncField;
    spDoc_Accid_Oper: TIntegerField;
    spDoc_AccDoc_Num: TStringField;
    spDoc_AccDoc_Date: TDateTimeField;
    spDoc_AccDoc_DateCreate: TDateTimeField;
    spDoc_Accid_UserCreator: TIntegerField;
    spDoc_AccOrgName: TStringField;
    spDoc_AccAddress: TStringField;
    spDoc_AccINN: TBCDField;
    spDoc_AccKPP: TBCDField;
    spDoc_AccBank: TStringField;
    spDoc_AccAcc1: TStringField;
    spDoc_AccAcc2: TStringField;
    spDoc_AccChif: TStringField;
    spDoc_AccBuh: TStringField;
    spDoc_Acccustomer: TStringField;
    spDoc_AccPayer: TStringField;
    spDoc_Accid_DocCur: TIntegerField;
    spDoc_Accid_business: TIntegerField;
    spDoc_AccDisabled: TBooleanField;
    spDoc_AccDocCurPartName: TStringField;
    spDoc_AccDocCurName: TStringField;
    spDoc_Accid_DocCur_1: TAutoIncField;
    spDoc_AccDef: TBooleanField;
    spDoc_AccNumberCode: TStringField;
    spDoc_Accid_Doc_Org: TIntegerField;
    spDoc_AccVAT: TBCDField;
    spDoc_AccBIK: TBCDField;
    spDoc_DAccWare: TADOStoredProc;
    spBJTPropisDeb: TBooleanField;
    spBJTPropExtID: TIntegerField;
    spBJList: TADOStoredProc;
    dsBJList: TDataSetProvider;
    spBJListid_BJ_Obj: TAutoIncField;
    spBJListid_business: TIntegerField;
    spBJListName: TStringField;
    spBJListDateCreate: TDateTimeField;
    spBJListid_Creator: TIntegerField;
    spBJListDateCheck: TDateTimeField;
    spBJListid_Checker: TIntegerField;
    spBJListDisabled: TBooleanField;
    spBJListStartDate: TDateTimeField;
    spBJListStopDate: TDateTimeField;
    spBJListid_ClosedBy: TIntegerField;
    spBJListCloseDate: TDateTimeField;
    spBJListCreatorFIO: TStringField;
    spBJListCheckerFIO: TStringField;
    spBJListClosedByFIO: TStringField;
    spBJProp: TADOStoredProc;
    dsBJProp: TDataSetProvider;
    spBJPropid_BJ_Obj: TAutoIncField;
    spBJPropid_business: TIntegerField;
    spBJPropName: TStringField;
    spBJPropDateCreate: TDateTimeField;
    spBJPropid_Creator: TIntegerField;
    spBJPropDateCheck: TDateTimeField;
    spBJPropid_Checker: TIntegerField;
    spBJPropDisabled: TBooleanField;
    spBJPropStartDate: TDateTimeField;
    spBJPropStopDate: TDateTimeField;
    spBJPropid_ClosedBy: TIntegerField;
    spBJPropCloseDate: TDateTimeField;
    spBJPropCreatorFIO: TStringField;
    spBJPropCheckerFIO: TStringField;
    spBJPropClosedByFIO: TStringField;
    spBIP: TADOStoredProc;
    dsBIP: TDataSetProvider;
    spBIPisDeb: TBooleanField;
    spBIPName: TStringField;
    spBIPid_Acc: TIntegerField;
    spBIPid_ContrAgent: TIntegerField;
    spBIPid_BJ_Tree: TIntegerField;
    spBIPid_BJ_Item: TAutoIncField;
    spBIPExtID: TIntegerField;
    spBIPPlanIn: TBCDField;
    spBIPPlanDelta: TBCDField;
    spBIPP_Name: TStringField;
    spBIPid_BJ_Obj: TIntegerField;
    spBIPid_business: TIntegerField;
    spBJTec: TADOStoredProc;
    dsBJTec: TDataSetProvider;
    spBal_v2RowOrd: TIntegerField;
    spBal_v2Tek: TIntegerField;
    spBal_v2Val1: TFloatField;
    spBal_v2Delta1: TFloatField;
    spBal_v2Val2: TFloatField;
    spBal_v2Delta2: TFloatField;
    spBal_v2Val3: TFloatField;
    spBal_v2Delta3: TFloatField;
    spBal_v2Val4: TFloatField;
    spBal_v2Delta4: TFloatField;
    spBal_v2Val5: TFloatField;
    spBal_v2Delta5: TFloatField;
    spFindGoodsCatName: TStringField;
    dsLstOrder: TDataSetProvider;
    spLstOrder: TADOStoredProc;
    spBIPPlanCorrect: TBCDField;
    spBIPisDirect: TBooleanField;
    spBIPisInState: TBooleanField;
    spBJ_ByOper: TADOStoredProc;
    spBJ_ByOperid_OperRel: TAutoIncField;
    spBJ_ByOperid_BJ_Obj: TAutoIncField;
    spBJ_ByOperNotUse: TBooleanField;
    spBJ_ByOperid_BJ_Item: TIntegerField;
    spBJ_ByOperName: TStringField;
    dsBJ_ByOper: TSQLUpdateDSProvider;
    spBJ_ByOperBJ_Name: TStringField;
    spBJ_ByOperid_Oper: TIntegerField;
    spBJDet: TADOStoredProc;
    dsBJDet: TDataSetProvider;
    spBJTreeOrderNum: TIntegerField;
    spBJTreeisDeb: TBooleanField;
    spBJTreeName: TStringField;
    spBJTreeid_Acc: TIntegerField;
    spBJTreeid_ContrAgent: TIntegerField;
    spBJTreeid_BJ_Tree: TIntegerField;
    spBJTreePID: TIntegerField;
    spBJTreeid_BJ_Item: TIntegerField;
    spBJTreeExtID: TIntegerField;
    spBJTreePlanIn: TFloatField;
    spBJTreePlanDelta: TFloatField;
    spBJTreePlanCorrect: TFloatField;
    spBJTreeAPlan: TFloatField;
    spBJTreeALevel: TIntegerField;
    spBJTreeS_Pay: TFloatField;
    spBJTreeS_Off: TFloatField;
    spBJTreeTrez: TFloatField;
    spBJTreeisInState: TBooleanField;
    dsDoc_WHOrdWare: TSQLUpdateDSProvider;
    dsDoc_WHOrd: TDataSetProvider;
    spDoc_WHOrd: TADOStoredProc;
    spDoc_WHOrdWare: TADOStoredProc;
    spDoc_WHOrdid_WHOrd: TAutoIncField;
    spDoc_WHOrdid_Doc_Org: TIntegerField;
    spDoc_WHOrdid_Oper: TIntegerField;
    spDoc_WHOrdDoc_Num: TStringField;
    spDoc_WHOrdDoc_Date: TDateTimeField;
    spDoc_WHOrdDoc_DateCreate: TDateTimeField;
    spDoc_WHOrdid_UserCreator: TIntegerField;
    spDoc_WHOrdPayer: TStringField;
    spDoc_WHOrdExpeditor: TStringField;
    spDoc_WHOrdOpComment: TStringField;
    spDoc_WHOrdid_DocCur: TIntegerField;
    spDoc_WHOrdid_business: TIntegerField;
    spDoc_WHOrdTotalAmount_Pack: TIntegerField;
    spDoc_WHOrdTotalAmount_Box: TIntegerField;
    spDoc_WHOrdDisabled: TBooleanField;
    spDoc_WHOrdWareid_WHOrdWare: TAutoIncField;
    spDoc_WHOrdWareid_WHOrd: TIntegerField;
    spDoc_WHOrdWareWareName: TStringField;
    spDoc_WHOrdWareMesName: TStringField;
    spDoc_WHOrdWareAmount: TFloatField;
    spInv_Rep: TADOStoredProc;
    dsInv_Rep: TDataSetProvider;
    spInv_RepPrjNum: TIntegerField;
    spInv_RepName: TStringField;
    spInv_RepAmount1: TFloatField;
    spInv_RepAmount2: TFloatField;
    spInv_RepInv1: TFloatField;
    spInv_RepInv2: TFloatField;
    spInv_RepPrice: TFloatField;
    spInv_RepKlishe_Inv1: TFloatField;
    spInv_RepKlishe_Inv2: TFloatField;
    spInv_RepKlishe_Price: TFloatField;
    spInv_RepTime_Form1: TDateTimeField;
    spInv_RepTime_Form2: TDateTimeField;
    spInv_RepTime_FormDelta: TDateTimeField;
    spInv_RepTime_Print1: TDateTimeField;
    spInv_RepTime_Print2: TDateTimeField;
    spInv_RepTime_PrintDelta: TDateTimeField;
    spInv_RepTime_Lam1: TDateTimeField;
    spInv_RepTime_Lam2: TDateTimeField;
    spInv_RepTime_LamDelta: TDateTimeField;
    spInv_RepTime_Rez1: TDateTimeField;
    spInv_RepTime_Rez2: TDateTimeField;
    spInv_RepTime_RezDelta: TDateTimeField;
    spInv_RepRaw_Form1: TFloatField;
    spInv_RepRaw_Form2: TFloatField;
    spInv_RepRaw_FormDelta: TFloatField;
    spInv_RepRaw_Print1: TFloatField;
    spInv_RepRaw_Print2: TFloatField;
    spInv_RepRaw_PrintDelta: TFloatField;
    spInv_RepRaw_Lam1: TFloatField;
    spInv_RepRaw_Lam2: TFloatField;
    spInv_RepRaw_LamDelta: TFloatField;
    spInv_RepRaw_Rez1: TFloatField;
    spInv_RepRaw_Rez2: TFloatField;
    spInv_RepRaw_RezDelta: TFloatField;
    spInv_Repxxx: TIntegerField;
    dsPrjList: TDataSetProvider;
    spPrjList: TADOStoredProc;
    spPrjListid_Project: TAutoIncField;
    spPrjListName: TStringField;
    spPrjListid_User: TIntegerField;
    spPrjListPrjNum: TIntegerField;
    spPrjListPrjDate: TDateTimeField;
    spPrjListDateCreate: TDateTimeField;
    spPrjListid_Inv: TIntegerField;
    spPrjListDisabled: TBooleanField;
    spPP: TADOStoredProc;
    dsPP: TSQLUpdateDSProvider;
    spPPid_Project: TAutoIncField;
    spPPName: TStringField;
    spPPid_User: TIntegerField;
    spPPPrjNum: TIntegerField;
    spPPPrjDate: TDateTimeField;
    spPPDateCreate: TDateTimeField;
    spPPid_Inv: TIntegerField;
    spPPDisabled: TBooleanField;
    spPPAmount1: TFloatField;
    spPPAmount2: TFloatField;
    spPPInv1: TFloatField;
    spPPInv2: TFloatField;
    spPPPrice: TFloatField;
    spPPKlishe_Inv1: TFloatField;
    spPPKlishe_Inv2: TFloatField;
    spPPKlishe_Price: TFloatField;
    spPPKlishe_Amount: TFloatField;
    spPPTime_FormPrice: TFloatField;
    spPPTime_Form1: TDateTimeField;
    spPPTime_Form2: TDateTimeField;
    spPPTime_Form_Time: TDateTimeField;
    spPPTime_Form_Tuning: TDateTimeField;
    spPPTime_FormDelta: TDateTimeField;
    spPPTime_PrintPrice: TFloatField;
    spPPTime_Print1: TDateTimeField;
    spPPTime_Print2: TDateTimeField;
    spPPTime_Print_Time: TDateTimeField;
    spPPTime_Print_Tuning: TDateTimeField;
    spPPTime_PrintDelta: TDateTimeField;
    spPPTime_LamPrice: TFloatField;
    spPPTime_Lam1: TDateTimeField;
    spPPTime_Lam2: TDateTimeField;
    spPPTime_Lam_Time: TDateTimeField;
    spPPTime_Lam_Tuning: TDateTimeField;
    spPPTime_LamDelta: TDateTimeField;
    spPPTime_RezPrice: TFloatField;
    spPPTime_Rez1: TDateTimeField;
    spPPTime_Rez2: TDateTimeField;
    spPPTime_Rez_Time: TDateTimeField;
    spPPTime_Rez_Tuning: TDateTimeField;
    spPPTime_RezDelta: TDateTimeField;
    spPPRaw_FormAmount: TFloatField;
    spPPRaw_Form1: TFloatField;
    spPPRaw_Form2: TFloatField;
    spPPRaw_FormPriceStat: TFloatField;
    spPPRaw_FormDelta: TFloatField;
    spPPRaw_PrintAmount: TFloatField;
    spPPRaw_Print1: TFloatField;
    spPPRaw_Print2: TFloatField;
    spPPRaw_PrintPriceStat: TFloatField;
    spPPRaw_PrintDelta: TFloatField;
    spPPRaw_LamAmount: TFloatField;
    spPPRaw_Lam1: TFloatField;
    spPPRaw_Lam2: TFloatField;
    spPPRaw_LamPriceStat: TFloatField;
    spPPRaw_LamDelta: TFloatField;
    spPPRaw_RezAmount: TFloatField;
    spPPRaw_Rez1: TFloatField;
    spPPRaw_Rez2: TFloatField;
    spPPRaw_RezPriceStat: TFloatField;
    spPPRaw_RezDelta: TFloatField;
    spPPid_Goods: TIntegerField;
    spPPWNAme: TStringField;
    dsTime: TSQLUpdateDSProvider;
    spTime: TADOStoredProc;
    spTimeid_TimeItem: TAutoIncField;
    spTimeVal: TDateTimeField;
    spTimeid_TimeDict: TIntegerField;
    spTimeid_Project: TIntegerField;
    spTimeName: TStringField;
    spTimeLName: TStringField;
    spTimeValPlan: TDateTimeField;
    spInvWare: TADOStoredProc;
    dsInvWare: TSQLUpdateDSProvider;
    spTimeTimePricePlan: TFloatField;
    spPPCalcDate: TDateTimeField;
    spPPCheckDate: TDateTimeField;
    spPPID_Main: TIntegerField;
    spTimeid_Lines: TIntegerField;
    spInv_RepCalcDate: TDateTimeField;
    spInv_RepCheckDate: TDateTimeField;
    spInv_RepID_Main: TIntegerField;
    spPrjListCalcDate: TDateTimeField;
    spPrjListCheckDate: TDateTimeField;
    spPrjListID_Main: TIntegerField;
    spArc2id_OperParent: TIntegerField;
    spArc2id_old_Oper: TIntegerField;
    spArc2id_LC_Oper: TIntegerField;
    spArc2id_Replicator: TIntegerField;
    spArc2ReplicatorShortName: TStringField;
    spArc2id_UserCreator: TIntegerField;
    spArc2Id_CurrencyBsn: TIntegerField;
    spArc2BusinessNum: TStringField;
    spArc2DateLocal: TDateTimeField;
    spArc2Id_CurrencyOper: TIntegerField;
    spArc2CurrencyOperName: TStringField;
    spArc2RateOper: TFloatField;
    spArc2id_Measure: TIntegerField;
    spArc2RealKoef: TFloatField;
    spArc2AmountOperBaseMS: TFloatField;
    spArc2Id_CurrencySys: TIntegerField;
    spArc2CurrencySysName: TStringField;
    spArc2RateSys: TFloatField;
    spArc2Id_CurrencyInv: TIntegerField;
    spArc2RateInv: TFloatField;
    spArc2CurrencyInvName: TStringField;
    spArc2id_FormalDistrib: TIntegerField;
    spArc2id_FuncDistrib: TIntegerField;
    spArc2id_CAGroup: TIntegerField;
    spArc2HidedOper: TBooleanField;
    spArc2RateMain: TFloatField;
    spArc2id_DocType: TIntegerField;
    spArc2HasChild: TIntegerField;
    spArc2id_OperWare: TIntegerField;
    spArc2id_Acc_Group: TIntegerField;
    spArc2id_Warehouse_Group: TIntegerField;
    spArc2id_Manufact_Group: TIntegerField;
    spArc2COLUMN1: TStringField;
    spArc2id_Ctg_Goods_2: TIntegerField;
    spArc2id_busines_1: TIntegerField;
    spArc2id_business_1: TIntegerField;
    spArc2CreatorFIO: TStringField;
    spArc2id_Raw: TIntegerField;
    spArc2id_ExtRaw: TIntegerField;
    v: TIntegerField;
    spArc2CheckerFIO: TStringField;
    spArc2OperSum_Inv: TFloatField;
    spArc2id_Ctg_Raw_2: TIntegerField;
    spArc2id_Ctg_ExtRaw_2: TIntegerField;
    spArc2id_Ctg_Service_2: TIntegerField;
    spArc2Date1: TDateField;
    spArc2Date2: TDateField;
    spArc2Date3: TDateField;
    spArc2Date4: TDateField;
    spArc2Date5: TDateField;
    spArc2Date6: TDateField;
    spArc2Date7: TDateField;
    spArc2Date8: TDateField;
    spArc2Date9: TDateField;
    spArc2Date10: TDateField;
    spArc2Date11: TDateField;
    spArc2Date12: TDateField;
    spArc2Date13: TDateField;
    spArc2Date14: TDateField;
    spArc2Date15: TDateField;
    spOperProp_v2: TADOStoredProc;
    spOperProp_v2id_Oper: TIntegerField;
    spOperProp_v2id_OperParent: TIntegerField;
    spOperProp_v2id_old_Oper: TIntegerField;
    spOperProp_v2DateCreate: TDateTimeField;
    spOperProp_v2id_LC_Oper: TIntegerField;
    spOperProp_v2OperVid: TIntegerField;
    spOperProp_v2id_UserCreator: TIntegerField;
    spOperProp_v2CreatorFIO: TStringField;
    spOperProp_v2id_business: TIntegerField;
    spOperProp_v2Id_CurrencyBsn: TIntegerField;
    spOperProp_v2BusinessName: TStringField;
    spOperProp_v2BusinessNum: TStringField;
    spOperProp_v2DateLocal: TDateTimeField;
    spOperProp_v2Correct: TBooleanField;
    spOperProp_v2OperTypeIn: TBooleanField;
    spOperProp_v2Id_CurrencyOper: TIntegerField;
    spOperProp_v2CurrencyOperName: TStringField;
    spOperProp_v2CurrencyOperShortName: TStringField;
    spOperProp_v2PriceOper: TFloatField;
    spOperProp_v2RateOper: TFloatField;
    spOperProp_v2Id_CurrencySys: TIntegerField;
    spOperProp_v2CurrencySysName: TStringField;
    spOperProp_v2CurrencySysShortName: TStringField;
    spOperProp_v2SummSys: TFloatField;
    spOperProp_v2RateSys: TFloatField;
    spOperProp_v2id_Acc: TIntegerField;
    spOperProp_v2id_Warehouse: TIntegerField;
    spOperProp_v2id_Manufact: TIntegerField;
    spOperProp_v2SrcName: TStringField;
    spOperProp_v2SrcID_Main: TIntegerField;
    spOperProp_v2id_Repr: TIntegerField;
    spOperProp_v2id_Acc_Ext: TIntegerField;
    spOperProp_v2id_Warehouse_Ext: TIntegerField;
    spOperProp_v2id_Manufact_Ext: TIntegerField;
    spOperProp_v2ReprName: TStringField;
    spOperProp_v2ReprID_Main: TIntegerField;
    spOperProp_v2Id_CurrencyInv: TIntegerField;
    spOperProp_v2RateInv: TFloatField;
    spOperProp_v2CurrencyInvName: TStringField;
    spOperProp_v2CurrencyInvShortName: TStringField;
    spOperProp_v2Koeff: TIntegerField;
    spOperProp_v2KoeffName: TStringField;
    spOperProp_v2CheckDate: TDateTimeField;
    spOperProp_v2CheckerFIO: TStringField;
    spOperProp_v2id_FormalDistrib: TIntegerField;
    spOperProp_v2FormalDistribName: TStringField;
    spOperProp_v2id_FuncDistrib: TIntegerField;
    spOperProp_v2FuncDistribName: TStringField;
    spOperProp_v2Deleted: TBooleanField;
    spOperProp_v2id_ContrAgent: TIntegerField;
    spOperProp_v2ContrAgentName: TStringField;
    spOperProp_v2id_CAGroup: TIntegerField;
    spOperProp_v2SummOper: TFloatField;
    spOperProp_v2TypeName: TStringField;
    spOperProp_v2HasViza: TBooleanField;
    spOperProp_v2OperState: TIntegerField;
    spOperProp_v2HidedOper: TBooleanField;
    spOperProp_v2RateMain: TFloatField;
    spOperProp_v2id_Repr_Ex: TIntegerField;
    spOperProp_v2id_DocType: TIntegerField;
    spOperProp_v2Imp_PayBasic: TStringField;
    spOperProp_v2AccInv_PayAssignment: TStringField;
    spOperProp_v2Contract: TStringField;
    spOperProp_v2OperCrnName: TStringField;
    spOperProp_v2Blocked: TBooleanField;
    spOperProp_v2CurrencyBsnName: TStringField;
    spOperProp_v2OpComment: TStringField;
    spOperProp_v2RealDataCreate: TDateTimeField;
    spOperProp_v2OperTypeSIGN: TIntegerField;
    spOperProp_v2HasChild: TIntegerField;
    spOperProp_v2Dig1: TFloatField;
    spOperProp_v2Dig2: TFloatField;
    spOperProp_v2Dig3: TFloatField;
    spOperProp_v2Dig4: TFloatField;
    spOperProp_v2Dig5: TFloatField;
    spOperProp_v2Dig6: TFloatField;
    spOperProp_v2Dig7: TFloatField;
    spOperProp_v2Dig8: TFloatField;
    spOperProp_v2Dig9: TFloatField;
    spOperProp_v2Dig10: TFloatField;
    spOperProp_v2Dig11: TFloatField;
    spOperProp_v2Dig12: TFloatField;
    spOperProp_v2Dig13: TFloatField;
    spOperProp_v2Dig14: TFloatField;
    spOperProp_v2Dig15: TFloatField;
    spOperProp_v2Str1: TStringField;
    spOperProp_v2Str2: TStringField;
    spOperProp_v2Str3: TStringField;
    spOperProp_v2Str4: TStringField;
    spOperProp_v2Str5: TStringField;
    spOperProp_v2Str6: TStringField;
    spOperProp_v2Str7: TStringField;
    spOperProp_v2Str8: TStringField;
    spOperProp_v2Str9: TStringField;
    spOperProp_v2Str10: TStringField;
    spOperProp_v2Str11: TStringField;
    spOperProp_v2Str12: TStringField;
    spOperProp_v2Str13: TStringField;
    spOperProp_v2Str14: TStringField;
    spOperProp_v2Str15: TStringField;
    spOperProp_v2OperVidName: TStringField;
    spOperProp_v2is_Mirr: TBooleanField;
    spOperProp_v2id_Acc_Group: TIntegerField;
    spOperProp_v2id_Warehouse_Group: TIntegerField;
    spOperProp_v2id_Manufact_Group: TIntegerField;
    spOperProp_v2OperNum: TStringField;
    spOperProp_v2id_Replicator: TIntegerField;
    spOperProp_v2VatIn: TBooleanField;
    spOperProp_v2ReplicatorShortName: TStringField;
    spOperProp_v2AmountOper: TFloatField;
    spOperProp_v2AmountOper2: TFloatField;
    spOperProp_v2id_Measure: TIntegerField;
    spOperProp_v2MeasureName: TStringField;
    spOperProp_v2RealKoef: TFloatField;
    spOperProp_v2AmountOperBaseMS: TFloatField;
    spOperProp_v2PriceInv: TFloatField;
    spOperProp_v2id_Goods: TIntegerField;
    spOperProp_v2id_Raw: TIntegerField;
    spOperProp_v2id_ExtRaw: TIntegerField;
    spOperProp_v2id_Service: TIntegerField;
    spOperProp_v2WareName: TStringField;
    spOperProp_v2WareID_Main: TIntegerField;
    spOperProp_v2id_UserChecker: TIntegerField;
    spOperProp_v2OperDelta: TFloatField;
    spOperProp_v2OperRateDelta: TFloatField;
    spOperProp_v2OperTotalDelta: TFloatField;
    spOperProp_v2DTDiff: TIntegerField;
    spOperProp_v2OperSummSys: TFloatField;
    spOperProp_v2OperDeltaCrn: TFloatField;
    spOperProp_v2OperRateDeltaCrn: TFloatField;
    spOperProp_v2OperTotalDeltaCrn: TFloatField;
    spOperProp_v2OperSum_Offer: TFloatField;
    spOperProp_v2OperSum_Inv: TFloatField;
    spOperProp_v2CRN_OLD_OperSum: TFloatField;
    spOperProp_v2CRN_OLD_OperSum_Offer: TFloatField;
    spOperProp_v2CRN_OperSum_Inv: TFloatField;
    spOperProp_v2OperSumCalced: TFloatField;
    spOperProp_v2OperSum_OfferCalced: TFloatField;
    spOperProp_v2id_Ctg_Goods_2: TIntegerField;
    spOperProp_v2Date1: TDateField;
    spOperProp_v2Date2: TDateField;
    spOperProp_v2Date3: TDateField;
    spOperProp_v2Date4: TDateField;
    spOperProp_v2Date5: TDateField;
    spOperProp_v2Date6: TDateField;
    spOperProp_v2Date7: TDateField;
    spOperProp_v2Date8: TDateField;
    spOperProp_v2Date9: TDateField;
    spOperProp_v2Date10: TDateField;
    spOperProp_v2Date11: TDateField;
    spOperProp_v2Date12: TDateField;
    spOperProp_v2Date13: TDateField;
    spOperProp_v2Date14: TDateField;
    spOperProp_v2Date15: TDateField;
    spOperProp_v2id_Ctg_Raw_2: TIntegerField;
    spOperProp_v2id_Ctg_ExtRaw_2: TIntegerField;
    spOperProp_v2id_Ctg_Service_2: TIntegerField;
    spOperWareid_Service: TIntegerField;
    spOperWareid_Raw: TIntegerField;
    spOperWareid_ExtRaw: TIntegerField;
    spGoodsid_Currency: TIntegerField;
    spInv_Repid_Project: TIntegerField;
    spPPKlishe_Price2: TFloatField;
    spPPKlishe_Amount2: TFloatField;
    spPPLastUpdated: TBytesField;
    spPPid_lc: TIntegerField;
    spInvCalc: TADOStoredProc;
    dsInvCalc: TDataSetProvider;
    spPPComment: TStringField;
    spTimeExtID: TIntegerField;
    spBuh: TADOStoredProc;
    dsBuh: TDataSetProvider;
    spPPInv_Prev: TFloatField;
    spPPInv_Real: TFloatField;
    spPPKL_PRev: TFloatField;
    spPPKL_Real: TFloatField;
    spPPKL_Price: TFloatField;
    spPPPrice_Real: TFloatField;
    spAPCnstItemGetList: TADOStoredProc;
    dsAPCnstItemGetList: TDataSetProvider;
    spAPCnstItemGetListid_CnstItem: TAutoIncField;
    spAPCnstItemGetListName: TStringField;
    spAPCnstItemGetListVal: TFloatField;
    spAPCnstItemGetListDateCreate: TDateTimeField;
    spAPCnstItemGetListDisabled: TBooleanField;
    spAPCnstItemGetListid_Business: TIntegerField;
    dsWPrft: TDataSetProvider;
    spWPrft: TADOStoredProc;
    dsWHAvg: TDataSetProvider;
    spWHAvg: TADOStoredProc;
    dsCA_W: TDataSetProvider;
    spCA_W: TADOStoredProc;
    dsWOP: TDataSetProvider;
    spWOP: TADOStoredProc;
    dsPL_W: TDataSetProvider;
    spPL_W: TADOStoredProc;
    spRPT_RR: TADOStoredProc;
    dsRPT_RR: TDataSetProvider;
    dsRPT_VSP: TDataSetProvider;
    spRPT_VSP: TADOStoredProc;
    spCRep: TADOStoredProc;
    dsCRep: TDataSetProvider;
    spCCP: TADOStoredProc;
    spCCPid_Cat: TAutoIncField;
    spCCPid_Rep: TIntegerField;
    spCCPName: TStringField;
    spCCPPID: TIntegerField;
    spCCPF_OperVid: TStringField;
    spCCPF_id_ContrAgent: TStringField;
    spCCPOrdNum: TIntegerField;
    spCCPGrpOper: TBooleanField;
    dsCCP: TSQLUpdateDSProvider;
    dsCCFlt: TSQLUpdateDSProvider;
    spCCFlt: TADOStoredProc;
    spCCFltid_FLT: TAutoIncField;
    spCCFltid_Cat: TIntegerField;
    spCCFltF_OperVid: TStringField;
    spCCFltF_id_ContrAgent: TStringField;
    spCCFltExtStr: TStringField;
    spInv_RepKomposit: TStringField;
    spInv_RepOwnName: TStringField;
    spPPKomposit: TStringField;
    spPPOwnName: TStringField;
    spPrjListKomposit: TStringField;
    spPrjListOwnName: TStringField;
    spCCPExtStr: TStringField;
    spCCPid_FormalDistrib: TIntegerField;
    spCCPid_FuncDistrib: TIntegerField;
    spCCPid_Acc: TIntegerField;
    spCCPisCat: TBooleanField;
    spCCPAPlan: TFloatField;
    dsPermitGetList: TSQLUpdateDSProvider;
    spPermitGetList: TADOStoredProc;
    spPermitGetListid_Permit: TAutoIncField;
    spPermitGetListid_Group: TIntegerField;
    spPermitGetListid_Acc: TIntegerField;
    spPermitGetListid_Acc_Group: TIntegerField;
    spPermitGetListid_ContrAgent: TIntegerField;
    spPermitGetListid_CAGroup: TIntegerField;
    spPermitGetListName: TStringField;
    spPermitGetListid_business: TIntegerField;
    spPrjListCheckDateFact: TDateTimeField;
    spPPCheckDateFact: TDateTimeField;
    spPPSendFact: TDateTimeField;
    spPrjListSendFact: TDateTimeField;
    spLcPropid_LC_Oper_Ext: TIntegerField;
    dsAPN: TDataSetProvider;
    spAPN: TADOStoredProc;
    spAPNid_APN_Obj: TAutoIncField;
    spAPNid_business: TIntegerField;
    spAPNid_Repr: TIntegerField;
    spAPNOperTypeIn: TBooleanField;
    spAPNDayNum: TIntegerField;
    spAPNDisabled: TBooleanField;
    spAPNNAme: TStringField;
    dsAPNProp: TDataSetProvider;
    spAPNProp: TADOStoredProc;
    AutoIncField8: TAutoIncField;
    IntegerField31: TIntegerField;
    IntegerField32: TIntegerField;
    BooleanField16: TBooleanField;
    IntegerField33: TIntegerField;
    BooleanField17: TBooleanField;
    StringField53: TStringField;
    dsAPMItem: TSQLUpdateDSProvider;
    spAPMItem: TADOStoredProc;
    spAPMItemid_APN_AccList: TAutoIncField;
    spAPMItemid_APN_Obj: TIntegerField;
    spAPMItemid_Acc: TIntegerField;
    spAPMItemASumm: TFloatField;
    spAPMItemId_Currency: TIntegerField;
    spAPMItemAPrc: TFloatField;
    spAPMItemAccName: TStringField;
    spAPMItemCRNName: TStringField;
    spAPNItemProp: TADOStoredProc;
    AutoIncField9: TAutoIncField;
    IntegerField34: TIntegerField;
    IntegerField35: TIntegerField;
    FloatField15: TFloatField;
    IntegerField36: TIntegerField;
    FloatField16: TFloatField;
    StringField54: TStringField;
    StringField55: TStringField;
    dsAPNItemProp: TSQLUpdateDSProvider;
    spAPNGen: TADOStoredProc;
    dsAPNGen: TSQLUpdateDSProvider;
    spAPNGenNAme: TStringField;
    spAPNGenid_APN_AccList: TAutoIncField;
    spAPNGenid_APN_Obj: TIntegerField;
    spAPNGenid_Acc: TIntegerField;
    spAPNGenASumm: TFloatField;
    spAPNGenId_Currency: TIntegerField;
    spAPNGenAPrc: TFloatField;
    spAPNGenAccName: TStringField;
    spAPNGenCRNName: TStringField;
    spAPNid_Acc: TIntegerField;
    spAPNPropid_Acc: TIntegerField;
    spAPNPropDestName: TStringField;
    spAPNGenDestName: TStringField;
    spAPNGenid_Repr: TIntegerField;
    spAPNGenOperTypeIn: TBooleanField;
    spAPNGenid_business: TIntegerField;
    spAPNGenid_AccDest: TIntegerField;
    spAPNWDate: TDateTimeField;
    spAPNGenOperVid: TIntegerField;
    spAccAdv: TADOStoredProc;
    dsAccAdv: TDataSetProvider;
    spWhoIAmisPPP: TBooleanField;
    dsInvWare2: TDataSetProvider;
    spInvWare2: TADOStoredProc;
    spLcListid_LC_Oper: TIntegerField;
    spLcListOperVid: TIntegerField;
    spLcListid_UserCreator: TIntegerField;
    spLcListCreatorFIO: TStringField;
    spLcListid_business: TIntegerField;
    spLcListBusinessName: TStringField;
    spLcListBusinessNum: TStringField;
    spLcListDateLocal: TDateTimeField;
    spLcListCorrect: TBooleanField;
    spLcListOperTypeIn: TBooleanField;
    spLcListId_CurrencyOper: TIntegerField;
    spLcListCurrencyOperName: TStringField;
    spLcListCurrencyOperShortName: TStringField;
    spLcListAmountOper: TFloatField;
    spLcListAmountOper2: TFloatField;
    spLcListPriceOper: TFloatField;
    spLcListid_Measure: TIntegerField;
    spLcListMeasureName: TStringField;
    spLcListId_CurrencySys: TIntegerField;
    spLcListCurrencySysName: TStringField;
    spLcListCurrencySysShortName: TStringField;
    spLcListSummSys: TFloatField;
    spLcListid_Acc: TIntegerField;
    spLcListid_Warehouse: TIntegerField;
    spLcListid_Manufact: TIntegerField;
    spLcListSrcName: TStringField;
    spLcListid_Repr: TIntegerField;
    spLcListid_Acc_Ext: TIntegerField;
    spLcListid_Warehouse_Ext: TIntegerField;
    spLcListid_Manufact_Ext: TIntegerField;
    spLcListReprName: TStringField;
    spLcListReprWHName: TStringField;
    spLcListid_Goods: TIntegerField;
    spLcListWareName: TStringField;
    spLcListid_DocType: TIntegerField;
    spLcListImp_PayBasic: TStringField;
    spLcListAccInv_PayAssignment: TStringField;
    spLcListContract: TStringField;
    spLcListCheckDate: TDateTimeField;
    spLcListID_Main: TIntegerField;
    spLcListDateVized: TDateTimeField;
    spLcListVized: TBooleanField;
    spLcListOpComment: TStringField;
    spLcListDig1: TFloatField;
    spLcListDig2: TFloatField;
    spLcListDig3: TFloatField;
    spLcListDig4: TFloatField;
    spLcListDig5: TFloatField;
    spLcListDig6: TFloatField;
    spLcListDig7: TFloatField;
    spLcListDig8: TFloatField;
    spLcListDig9: TFloatField;
    spLcListDig10: TFloatField;
    spLcListDig11: TFloatField;
    spLcListDig12: TFloatField;
    spLcListDig13: TFloatField;
    spLcListDig14: TFloatField;
    spLcListDig15: TFloatField;
    spLcListStr1: TStringField;
    spLcListStr2: TStringField;
    spLcListStr3: TStringField;
    spLcListStr4: TStringField;
    spLcListStr5: TStringField;
    spLcListStr6: TStringField;
    spLcListStr7: TStringField;
    spLcListStr8: TStringField;
    spLcListStr9: TStringField;
    spLcListStr10: TStringField;
    spLcListStr11: TStringField;
    spLcListStr12: TStringField;
    spLcListStr13: TStringField;
    spLcListStr14: TStringField;
    spLcListStr15: TStringField;
    spLcListKoeff: TIntegerField;
    spLcListKoeffName: TStringField;
    spLcListis_Mirr: TBooleanField;
    spLcListid_FormalDistrib: TIntegerField;
    spLcListFormalDistribName: TStringField;
    spLcListid_FuncDistrib: TIntegerField;
    spLcListFuncDistribName: TStringField;
    spLcListid_ContrAgent: TIntegerField;
    spLcListContrAgentName: TStringField;
    spLcListid_CAGroup: TIntegerField;
    spLcListSended: TBooleanField;
    spLcListSummOper: TFloatField;
    spLcListTypeName: TStringField;
    spLcPropid_ContrAgent: TIntegerField;
    spLcPropContrAgentName: TStringField;
    spLastPrice: TADOStoredProc;
    spLastPricePriceOper: TFloatField;
    spInv_RepFIO: TStringField;
    spInv_RepFIOFFF: TStringField;
    spPrjListxxxDate: TDateTimeField;
    spPrjListAmount1: TFloatField;
    spPrjListAmount2: TFloatField;
    spPrjListInv1: TFloatField;
    spPrjListInv2: TFloatField;
    spPrjListPrice: TFloatField;
    spPrjListKlishe_Inv1: TFloatField;
    spPrjListKlishe_Inv2: TFloatField;
    spPrjListKlishe_Price: TFloatField;
    spPrjListKlishe_Price2: TFloatField;
    spPrjListKlishe_Amount: TFloatField;
    spPrjListKlishe_Amount2: TFloatField;
    spPrjListTime_FormPrice: TFloatField;
    spPrjListTime_Form1: TDateTimeField;
    spPrjListTime_Form2: TDateTimeField;
    spPrjListTime_Form_Time: TDateTimeField;
    spPrjListTime_Form_Tuning: TDateTimeField;
    spPrjListTime_FormDelta: TDateTimeField;
    spPrjListTime_PrintPrice: TFloatField;
    spPrjListTime_Print1: TDateTimeField;
    spPrjListTime_Print2: TDateTimeField;
    spPrjListTime_Print_Time: TDateTimeField;
    spPrjListTime_Print_Tuning: TDateTimeField;
    spPrjListTime_PrintDelta: TDateTimeField;
    spPrjListTime_LamPrice: TFloatField;
    spPrjListTime_Lam1: TDateTimeField;
    spPrjListTime_Lam2: TDateTimeField;
    spPrjListTime_Lam_Time: TDateTimeField;
    spPrjListTime_Lam_Tuning: TDateTimeField;
    spPrjListTime_LamDelta: TDateTimeField;
    spPrjListTime_RezPrice: TFloatField;
    spPrjListTime_Rez1: TDateTimeField;
    spPrjListTime_Rez2: TDateTimeField;
    spPrjListTime_Rez_Time: TDateTimeField;
    spPrjListTime_Rez_Tuning: TDateTimeField;
    spPrjListTime_RezDelta: TDateTimeField;
    spPrjListRaw_FormAmount: TFloatField;
    spPrjListRaw_Form1: TFloatField;
    spPrjListRaw_Form2: TFloatField;
    spPrjListRaw_FormPriceStat: TFloatField;
    spPrjListRaw_FormDelta: TFloatField;
    spPrjListRaw_PrintAmount: TFloatField;
    spPrjListRaw_Print1: TFloatField;
    spPrjListRaw_Print2: TFloatField;
    spPrjListRaw_PrintPriceStat: TFloatField;
    spPrjListRaw_PrintDelta: TFloatField;
    spPrjListRaw_LamAmount: TFloatField;
    spPrjListRaw_Lam1: TFloatField;
    spPrjListRaw_Lam2: TFloatField;
    spPrjListRaw_LamPriceStat: TFloatField;
    spPrjListRaw_LamDelta: TFloatField;
    spPrjListRaw_RezAmount: TFloatField;
    spPrjListRaw_Rez1: TFloatField;
    spPrjListRaw_Rez2: TFloatField;
    spPrjListRaw_RezPriceStat: TFloatField;
    spPrjListRaw_RezDelta: TFloatField;
    spPrjListid_Goods: TIntegerField;
    spPrjListLastUpdated: TBytesField;
    spPrjListid_lc: TIntegerField;
    spPrjListComment: TStringField;
    spPrjListInv_Prev: TFloatField;
    spPrjListInv_Real: TFloatField;
    spPrjListPrice_Real: TFloatField;
    spPrjListKL_PRev: TFloatField;
    spPrjListKL_Real: TFloatField;
    spPrjListKL_Price: TFloatField;
    spPrjListid_Checker: TIntegerField;
    spPrjListid_CheckerFFF: TIntegerField;
    spPrjListFIO: TStringField;
    spPrjListFIOFFF: TStringField;
    spPPxxxDate: TDateTimeField;
    spPPid_Checker: TIntegerField;
    spPPid_CheckerFFF: TIntegerField;
    spPPFIO: TStringField;
    spPPFIOFFF: TStringField;
    spAdd: TADOStoredProc;
    spMOV: TADOStoredProc;
    spWareCorrect: TADOStoredProc;
    dspAdd: TDataSetProvider;
    dspMOV: TDataSetProvider;
    dspWareCorrect: TDataSetProvider;
    spBCRep: TADOStoredProc;
    dspBCRep: TDataSetProvider;
    spSelRep: TADOStoredProc;
    dsSelRep: TDataSetProvider;
    dsSessList: TDataSetProvider;
    spSessList: TADOStoredProc;
    spSessListid_Session: TAutoIncField;
    spSessListDateLocal: TDateTimeField;
    spSessListNeed: TIntegerField;
    spSessListFileType: TStringField;
    spDocUPD: TADOStoredProc;
    spDocUPDWare: TADOStoredProc;
    dsDocUPD: TDataSetProvider;
    dsDocUPDWare: TSQLUpdateDSProvider;
    spDocUPDid_UPD: TAutoIncField;
    spDocUPDid_Doc_Org: TIntegerField;
    spDocUPDid_Oper: TIntegerField;
    spDocUPDDoc_Num: TStringField;
    spDocUPDDoc_Date: TDateTimeField;
    spDocUPDDoc_DateCreate: TDateTimeField;
    spDocUPDid_UserCreator: TIntegerField;
    spDocUPDOrgName: TStringField;
    spDocUPDAddress: TStringField;
    spDocUPDINN: TBCDField;
    spDocUPDKPP: TBCDField;
    spDocUPDSender_Name: TStringField;
    spDocUPDSender_Address2: TStringField;
    spDocUPDExtDocNum: TStringField;
    spDocUPDExtDocDate: TDateTimeField;
    spDocUPDBayer_Name: TStringField;
    spDocUPDBayer_Address: TStringField;
    spDocUPDBayer_INN: TBCDField;
    spDocUPDBayer_KPP: TBCDField;
    spDocUPDChif: TStringField;
    spDocUPDBuh: TStringField;
    spDocUPDid_DocCur: TIntegerField;
    spDocUPDid_business: TIntegerField;
    spDocUPDDisabled: TBooleanField;
    spDocUPDVAT: TBCDField;
    spDocUPDDocCurPartName: TStringField;
    spDocUPDDocCurName: TStringField;
    spDocUPDid_DocCur_1: TAutoIncField;
    spDocUPDDef: TBooleanField;
    spDocUPDNumberCode: TStringField;
    spDocUPDWareid_UPDWare: TAutoIncField;
    spDocUPDWareid_UPD: TIntegerField;
    spDocUPDWareWareName: TStringField;
    spDocUPDWareMesName: TStringField;
    spDocUPDWareAmount: TFloatField;
    spDocUPDWareCountry: TStringField;
    spDocUPDWareGTD: TStringField;
    spDocUPDWareSummWare: TBCDField;
    spDocUPDWareWareCode: TStringField;
    dsA4: TDataSetProvider;
    spA4: TADOStoredProc;
    IntegerField38: TIntegerField;
    DateTimeField3: TDateTimeField;
    IntegerField39: TIntegerField;
    StringField56: TStringField;
    BooleanField18: TBooleanField;
    BooleanField19: TBooleanField;
    StringField57: TStringField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    StringField58: TStringField;
    StringField59: TStringField;
    FloatField20: TFloatField;
    IntegerField40: TIntegerField;
    IntegerField41: TIntegerField;
    IntegerField42: TIntegerField;
    StringField60: TStringField;
    IntegerField43: TIntegerField;
    IntegerField44: TIntegerField;
    IntegerField45: TIntegerField;
    IntegerField46: TIntegerField;
    IntegerField47: TIntegerField;
    StringField61: TStringField;
    IntegerField48: TIntegerField;
    FloatField21: TFloatField;
    StringField62: TStringField;
    IntegerField49: TIntegerField;
    StringField63: TStringField;
    IntegerField50: TIntegerField;
    IntegerField51: TIntegerField;
    StringField64: TStringField;
    DateTimeField4: TDateTimeField;
    IntegerField52: TIntegerField;
    StringField65: TStringField;
    StringField66: TStringField;
    BooleanField20: TBooleanField;
    IntegerField53: TIntegerField;
    StringField67: TStringField;
    FloatField22: TFloatField;
    StringField68: TStringField;
    StringField69: TStringField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    IntegerField54: TIntegerField;
    BooleanField21: TBooleanField;
    IntegerField55: TIntegerField;
    FloatField26: TFloatField;
    StringField70: TStringField;
    StringField71: TStringField;
    StringField72: TStringField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    StringField73: TStringField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    BooleanField22: TBooleanField;
    StringField74: TStringField;
    StringField75: TStringField;
    DateTimeField5: TDateTimeField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    StringField76: TStringField;
    StringField77: TStringField;
    StringField78: TStringField;
    StringField79: TStringField;
    StringField80: TStringField;
    StringField81: TStringField;
    StringField82: TStringField;
    StringField83: TStringField;
    StringField84: TStringField;
    StringField85: TStringField;
    StringField86: TStringField;
    StringField87: TStringField;
    StringField88: TStringField;
    StringField89: TStringField;
    StringField90: TStringField;
    StringField91: TStringField;
    FloatField51: TFloatField;
    DateTimeField6: TDateTimeField;
    BooleanField23: TBooleanField;
    IntegerField56: TIntegerField;
    IntegerField57: TIntegerField;
    IntegerField58: TIntegerField;
    BooleanField24: TBooleanField;
    BooleanField25: TBooleanField;
    IntegerField59: TIntegerField;
    IntegerField60: TIntegerField;
    IntegerField61: TIntegerField;
    IntegerField62: TIntegerField;
    StringField92: TStringField;
    IntegerField63: TIntegerField;
    IntegerField64: TIntegerField;
    StringField93: TStringField;
    DateTimeField7: TDateTimeField;
    IntegerField65: TIntegerField;
    StringField94: TStringField;
    FloatField52: TFloatField;
    IntegerField66: TIntegerField;
    FloatField53: TFloatField;
    FloatField54: TFloatField;
    IntegerField67: TIntegerField;
    StringField95: TStringField;
    FloatField55: TFloatField;
    IntegerField68: TIntegerField;
    FloatField56: TFloatField;
    StringField96: TStringField;
    IntegerField69: TIntegerField;
    IntegerField70: TIntegerField;
    IntegerField71: TIntegerField;
    BooleanField26: TBooleanField;
    FloatField57: TFloatField;
    IntegerField72: TIntegerField;
    IntegerField73: TIntegerField;
    IntegerField74: TIntegerField;
    IntegerField75: TIntegerField;
    IntegerField76: TIntegerField;
    IntegerField77: TIntegerField;
    StringField97: TStringField;
    IntegerField78: TIntegerField;
    IntegerField79: TIntegerField;
    IntegerField80: TIntegerField;
    StringField98: TStringField;
    IntegerField81: TIntegerField;
    IntegerField82: TIntegerField;
    IntegerField83: TIntegerField;
    StringField99: TStringField;
    FloatField58: TFloatField;
    IntegerField84: TIntegerField;
    IntegerField85: TIntegerField;
    IntegerField86: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    DateField3: TDateField;
    DateField4: TDateField;
    DateField5: TDateField;
    DateField6: TDateField;
    DateField7: TDateField;
    DateField8: TDateField;
    DateField9: TDateField;
    DateField10: TDateField;
    DateField11: TDateField;
    DateField12: TDateField;
    DateField13: TDateField;
    DateField14: TDateField;
    DateField15: TDateField;
    spRPT_NewRepTree: TADOStoredProc;
    dsRPT_NewRepTree: TDataSetProvider;
    procedure RemoteDataModuleCreate(Sender: TObject);
    procedure SQLUpdateDSUpdateError(Sender: TObject;
      DataSet: TClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure RemoteDataModuleDestroy(Sender: TObject);
    procedure spDoc_AFAfterOpen(DataSet: TDataSet);
  private
    Fid_User : Variant;

    FBaseName : String;
    FDataBaseName : String;
    procedure LogMessage(Message: String; EventType: DWord = 1; Category: Word = 0; ID: DWord = 0);

    function SetUserForOper_Int(id_user: Variant;
      id_oper: Integer): Integer;
    function UN_Del(AID: Integer; AProcedureName: String): Integer;
    function CheckWare(AProcName: String; AID: OleVariant): Integer;
    function PL_GetDefsWare(AProcName: String; AID_Ctg: Integer; out Price,
      ID_Cur: OleVariant): Integer;
    function PL_GetDefPriceWare(AProcName: String; AID: Integer; ID_Warehouse: OleVariant; out Price,
      ID_Cur: OleVariant; out TotalAmount: Double): Integer;
    function LNK_ReLink(AProcedureName: String; id_Old,
      id_New: Integer): WordBool;
    function UNSel_EQBsn(Param1: Integer): Integer;
    procedure UnBeforeOpen(DataSet: TDataSet);
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    function DoLogin(UserName, Password: OleVariant): Integer; safecall;
    function CAGroup_Add(id_Bsn: Integer; AName: OleVariant;
      ShowInRoot: WordBool): Integer; safecall;
    function CAGroup_Edit(ID: Integer; AName: OleVariant;
      ShowInRoot: WordBool): Integer; safecall;
    function CAGroup_Del(ID: Integer): Integer; safecall;
    function Get_id_User: OleVariant; safecall;
    function Get_FIO: OleVariant; safecall;
    function CurByID(ID: OleVariant; out AName, AShortName: OleVariant;
      var RateRBL: OleVariant): Integer; safecall;
    function ContrAgentAdd(AName, id_business, id_CAGroup: OleVariant;
      isOwn: WordBool; Id_Currency, Addr, Descr: OleVariant;
      ShowInRoot: WordBool): Integer; safecall;
    function ContrAgentEdit(id_ContrAgent: Integer; AName, id_business,
      id_CAGroup: OleVariant; isOwn, Disabled: WordBool; Id_Currency, Addr,
      Descr: OleVariant; ShowInRoot: WordBool): Integer; safecall;
    procedure BeginTruns; safecall;
    procedure CommitTrans; safecall;
    procedure RollbackTrans; safecall;
    function ReprAdd(id_ContrAgent: OleVariant; isJur: WordBool; AName,
      FirstName, MiddleName, LastName, Id_Currency: OleVariant;
      Disabled: WordBool; Addr, Descr, id_Bsn_ex: OleVariant;
      NeedSend: Integer; BIK, Bank, AccName, CorAccNAme, OKPO, INN,
      KPP: OleVariant): Integer; safecall;
    function ReprEdit(id_Repr: Integer; id_ContrAgent: OleVariant;
      isJur: WordBool; AName, FirstName, MiddleName, LastName,
      Id_Currency: OleVariant; Disabled: WordBool; Addr, Descr: OleVariant;
      NeedSend: Integer; BIK, Bank, AccName, CorAccNAme, OKPO, INN,
      KPP: OleVariant): Integer; safecall;
    function ContrAgentSetGrp(id_ContrAgent: Integer;
      id_CAGroup: OleVariant): Integer; safecall;
    function Ctg_GoodsAdd(id_business: Integer; id_BaseCtg, AName,
      ShortName: OleVariant; Disabled: WordBool): Integer; safecall;
    function Ctg_GoodsEdit(id_Ctg, id_business: Integer; id_BaseCtg, AName,
      ShortName: OleVariant; Disabled: WordBool): Integer; safecall;
    function CtgByID(AType: Integer; ID: OleVariant;
      out AName: OleVariant): Integer; safecall;
    function WareAdd(AType: Integer; id_Ctg, AName, ShortName,
      BarCode: OleVariant; Disabled: WordBool; id_Measure, GTD, Country,
      DocNomCode, DocPriceCode, DocArt, DocNumber: OleVariant): Integer;
      safecall;
    function WareEdit(AType, AID: Integer; id_Ctg, AName, ShortName,
      BarCode: OleVariant; Disabled: WordBool; id_Measure, GTD, Country,
      DocNomCode, DocPriceCode, DocArt, DocNumber: OleVariant): Integer;
      safecall;
    function BsnByID(ID: OleVariant; out AName: OleVariant): Integer; safecall;
    function LC_OP_EmptyAdd(id_UserCreator: Integer; OperTypeIn: WordBool;
      id_DocType, Contract, OpComment: OleVariant; id_business: Integer;
      Imp_PayBasic, AccInv_PayAssignment: OleVariant): Integer; safecall;
    function LC_OP_EmptyEdit(id_LC_Oper, id_UserCreator: Integer; id_DocType,
      Contract, OpComment: OleVariant; id_business: Integer; Imp_PayBasic,
      AccInv_PayAssignment: OleVariant): Integer; safecall;
    function LC_OP_DEL(id_LC_Oper: Integer): Integer; safecall;
    function SetUserForOper(id_user: OleVariant; id_oper: Integer): Integer;
      safecall;
    function OP_OperDel(id_Oper: Integer): Integer; safecall;
    function OP_OperSetCheckDate(id_Oper: Integer;
      id_UserChecker: OleVariant): Integer; safecall;
    function LC_Acc_Add(AName, id_Bsn, id_Group: OleVariant): Integer;
      safecall;
    function LC_Acc_Edit(AID: Integer; AName, id_Group: OleVariant): Integer;
      safecall;
    function LC_WH_Add(AName, id_Bsn, id_Group: OleVariant): Integer; safecall;
    function LC_WH_Edit(AID: Integer; AName, id_Group: OleVariant): Integer;
      safecall;
    function LC_MN_Add(AName, id_Bsn, id_Group: OleVariant): Integer; safecall;
    function LC_MN_Edit(AID: Integer; AName, id_Group: OleVariant): Integer;
      safecall;
    function CH_Checked(AID, ObjID: Integer): Integer; safecall;
    function OP_OperDelCheckDate(id_Oper: Integer): Integer; safecall;
    function UNSel_AccBsn(Param1: OleVariant; var id_Bsn,
      id_Group: OleVariant): Integer; safecall;
    function UNSel_WHBsn(Param1: OleVariant; var id_Bsn,
      id_Group: OleVariant): Integer; safecall;
    function UNSel_ManufBsn(Param1: OleVariant; var id_Bsn,
      id_Group: OleVariant): Integer; safecall;
    function UNSel_CABsn(Param1: Integer; out isOwn: WordBool;
      out id_CAGroup: OleVariant): Integer; safecall;
    function UNSel_ReprBsn_v2(Param1: Integer; var isOwn: WordBool;
      var id_CAGroup, id_Ca, id_Repr_Group, id_Bsn: OleVariant): Integer;
      safecall;
    function PL_Ctg_GoodsDel(Param1: Integer): Integer; safecall;
    function PL_GoodsDel(Param1: Integer): Integer; safecall;
    function CA_ContrAgentDel(Param1: Integer): Integer; safecall;
    function CA_ReprDel(Param1: Integer): Integer; safecall;
    function UNSel_PL_GoodsInf(Param1: Integer): Integer; safecall;
    function BsnNumByID(AID: Integer; var Param2: OleVariant): Integer;
      safecall;
    function CheckGoods(Param1: OleVariant): Integer; safecall;
    function PL_GetDefsGoods(AID_Ctg: Integer; out Price,
      ID_Cur: OleVariant): Integer; safecall;
    function PL_GetDefPriceGoods(AID_Ctg: Integer; ID_Warehouse: OleVariant;
      out Price, ID_Cur: OleVariant; out TotalAmount: Double): Integer;
      safecall;
    function OP_OperGetEditID(id_OperParent: Integer): Integer; safecall;
    function OP_DoOk(id_Oper: Integer): Integer; safecall;
    function OP_DoCancel(id_Oper: Integer): Integer; safecall;
    function LNK_Acc(id_Old, id_New: Integer): WordBool; safecall;
    function LNK_Warehouse(id_Old, id_New: Integer): WordBool; safecall;
    function LNK_Repr(id_Old, id_New: Integer): WordBool; safecall;
    function LNK_Manufact(id_Old, id_New: Integer): WordBool; safecall;
    function LNK_Goods(id_Old, id_New: Integer): WordBool; safecall;
    function OP_BuffAdd(AName: OleVariant): Integer; safecall;
    function OP_BuffDel(id_Buff: Integer): Integer; safecall;
    function OP_BuffEdit(id_Buff: Integer; AName: OleVariant): Integer;
      safecall;
    function PL_UN_WareCtgGetProp(id_Ctg, ID_TYPE: Integer): OleVariant;
      safecall;
    function CA_CAGroupGetProp(id_CAGroup: OleVariant): OleVariant; safecall;
    procedure CA_CAGetProp(id_ContrAgent: OleVariant; out AName,
      id_Bsn: OleVariant); safecall;
    function PL_GetAccSum(id_Acc: Integer; out TotalSum: Double): Integer;
      safecall;
    function DD_DayOpen(id_business: Integer; VirtDate: TDateTime): Integer;
      safecall;
    function DD_DayClose(id_business: Integer): Integer; safecall;
    function DD_DayGetProp(id_business: Integer): OleVariant; safecall;
    function OP_FuncDistribAdd(AName: OleVariant; id_Bsn: Integer): Integer;
      safecall;
    function OP_FuncDistribDel(id_FuncDistrib: Integer): Integer; safecall;
    function OP_FuncDistribEdit(id_FuncDistrib: Integer;
      AName: OleVariant): Integer; safecall;
    function OP_FormalDistribAdd(AName: OleVariant; id_Bsn: Integer): Integer;
      safecall;
    function OP_FormalDistribDel(id_FormalDistrib: Integer): Integer; safecall;
    function OP_FormalDistribEdit(id_FormalDistrib: Integer;
      AName: OleVariant): Integer; safecall;
    function GetWH(ID: Integer; var ANAme, ABsnName, id_Business: OleVariant): Integer;
      safecall;
    function GetOperNum(id_oper: Integer): OleVariant; safecall;
    function Rights_GetUserRights(id_Func: Integer; id_Business: OleVariant;
      id_User: Integer): Integer; safecall;
    function Rights_GetFuncName(id_Func: Integer): OleVariant; safecall;
    function OP_Oper_ExtDataNamesEdit(id_Oper_ExtDataNames, id_business, AType,
      NumPrm: Integer; ParName: OleVariant; AVisible, NeedSend: WordBool; OrdNum : OleVariant): Integer;
      safecall;
    function UN_Check_Ctg_Ware(WareType, id_business: Integer; id_Ctg, AName,
      id_real: OleVariant): Integer; safecall;
    function UN_Check_Ware(WareType: Integer; id_Ctg, AName,
      id_real: OleVariant): Integer; safecall;
    function UN_Check_CAGroup(id_business: Integer; AName,
      id_Real: OleVariant): Integer; safecall;
    function UN_Check_CA_ContrAgent(id_business: Integer; AName,
      id_Real: OleVariant): Integer; safecall;
    function UN_Check_CA_Repr(id_ContrAgent: Integer; AName,
      id_Real: OleVariant): Integer; safecall;
    function UN_Sel_PL_GoodsCtg(AID: Integer): Integer; safecall;
    function LC_OP_OperSetCheckDate(id_LC_Oper: Integer): Integer; safecall;
    function LC_OP_OperDelCheckDate(id_LC_Oper: Integer): Integer; safecall;
    procedure LC_SetBaseName(AName: OleVariant); safecall;
    function CH_Deleted(AID, AObjID: Integer): Integer; safecall;
    function RP_WHStateDates_Get: OleVariant; safecall;
    function xxx_Group_Check_v2(ObjID, id_business: Integer; AName,
      id_real: OleVariant; PID: Integer): Integer; safecall;
    function xxx_Group_Add_v2(ObjID, id_business: Integer; AName: OleVariant;
      ShowInRoot: WordBool; PID: Integer): Integer; safecall;
    function xxx_Group_Edit_v2(ObjID, id_Group: Integer; AName: OleVariant;
      ShowInRoot: WordBool; PID: Integer): Integer; safecall;
    function xxx_Group_Del_v2(ObjID, id_Group: Integer): Integer; safecall;
    function xxx_SetGrp(ObjID, AID: Integer; id_Group: OleVariant): Integer;
      safecall;
    function Acc_Del(ID_Acc: Integer): Integer; safecall;
    function Acc_Edit(id_Acc, AccName, Bank, id_business, PrsnAccName,
      CorrAccName, Inn, BIK, Disabled: OleVariant; NeedSend: WordBool;
      id_Group: OleVariant; ShowInRoot: WordBool): Integer; safecall;
    function MN_Del(id_MN: Integer): Integer; safecall;
    function MN_Edit(id_Manufact, ManufactName, id_business, Addr,
      Disabled: OleVariant; NeedSend: WordBool; id_Group: OleVariant;
      ShowInRoot: WordBool): Integer; safecall;
    function WH_Del(id_WH: Integer): Integer; safecall;
    function WH_Edit(id_Warehouse, AName, id_business, Addr,
      Disabled: OleVariant; NeedSend: WordBool; id_Group: OleVariant;
      ShowInRoot: WordBool): Integer; safecall;
    function UNSel_ReprBsn(Param1: Integer; var isOwn: WordBool;
      var id_CAGroup, id_Ca: OleVariant): Integer; safecall;
    function ReprAdd_LC(isJur: WordBool; AName, FirstName, MiddleName,
      LastName, Id_Currency: OleVariant; Disabled: WordBool; Addr, Descr,
      id_Bsn_ex, id_Group: OleVariant): Integer; safecall;
    function ReprEdit_LC(id_Repr: Integer; isJur: WordBool; AName, FirstName,
      MiddleName, LastName, Id_Currency: OleVariant; Disabled: WordBool;
      Addr, Descr, id_Group: OleVariant): Integer; safecall;
    function GetAccName(id_Acc: Integer): OleVariant; safecall;
    function GetAccGroupName(id_Acc_Group: Integer): OleVariant; safecall;
    function GetWHGroupName(id_WHGroup: Integer): OleVariant; safecall;
    function GetWHName(id_WH: Integer): OleVariant; safecall;
    function GetCAName(ID_CA: Integer): OleVariant; safecall;
    function GetCAGroupName(id_CAGroup: Integer): OleVariant; safecall;
    function DD_MaxDay(id_business: Integer): OleVariant; safecall;
    function OP_OperAdd_v2(OperVid: Integer; id_business: OleVariant; Correct,
      OperTypeIn: WordBool; Id_CurrencyOper, PriceFinOper: OleVariant;
      RateOper: Double; Id_CurrencySys, SummSysFin, RateSys, id_Repr,
      id_Acc, id_Acc_Ext, id_Warehouse, id_Warehouse_Ext, id_Manufact,
      id_Manufact_Ext, id_FormalDistrib, id_FuncDistrib, Koeff,
      Id_CurrencyInv, id_OperParent: OleVariant; OperState: Integer;
      id_UserCreator, id_DocType, Imp_PayBasic, AccInv_PayAssignment,
      Contract, OpComment, Dig1, Dig2, Dig3, Dig4, Dig5, Dig6, Dig7, Dig8,
      Dig9, Dig10, Dig11, Dig12, Dig13, Dig14, Dig15, Str1, Str2, Str3,
      Str4, Str5, Str6, Str7, Str8, Str9, Str10, Str11, Str12, Str13,
      Str14, Str15, Date1, Date2, Date3, Date4, Date5, Date6, Date7, Date8,
      Date9, Date10, Date11, Date12, Date13, Date14, Date15: OleVariant;
      VatIn: WordBool; AutoGen: OleVariant; out RetVal: Integer): Integer;
      stdcall;
    function OP_OperEdit_v2(id_Oper, OperVid: Integer; id_business: OleVariant;
      Correct, OperTypeIn: WordBool; Id_CurrencyOper,
      PriceFinOper: OleVariant; RateOper: Double; Id_CurrencySys,
      SummSysFin, RateSys, id_Repr, id_Acc, id_Acc_Ext, id_Warehouse,
      id_Warehouse_Ext, id_Manufact, id_Manufact_Ext, id_FormalDistrib,
      id_FuncDistrib, Koeff, Id_CurrencyInv, id_OperParent: OleVariant;
      OperState: Integer; id_UserCreator, id_DocType, Imp_PayBasic,
      AccInv_PayAssignment, Contract, OpComment, Dig1, Dig2, Dig3, Dig4,
      Dig5, Dig6, Dig7, Dig8, Dig9, Dig10, Dig11, Dig12, Dig13, Dig14,
      Dig15, Str1, Str2, Str3, Str4, Str5, Str6, Str7, Str8, Str9, Str10,
      Str11, Str12, Str13, Str14, Str15, Date1, Date2, Date3, Date4, Date5,
      Date6, Date7, Date8, Date9, Date10, Date11, Date12, Date13, Date14,
      Date15, CheckDate: OleVariant; VatIn: WordBool; AutoGen: OleVariant;
      out RetVal: Integer): Integer; stdcall;
    function OP_OperSetOperState_v2(id_Oper, OperState: Integer): Integer;
      safecall;
    function OP_OperDelCheckDate_v2(id_Oper: Integer): Integer; safecall;
    function OP_OperSetCheckDate_v2(id_Oper: Integer;
      id_UserChecker: OleVariant): Integer; safecall;
    function PL_WareMeasureGet(id_Goods: OleVariant;
      var id_Measure, ShortName: OleVariant): OleVariant; safecall;
    function GetBsnCur(id_Bsn: Integer): Integer; safecall;
    function UN_ShowInRoot(id_Acc, id_acc_Group, id_Warehouse,
      id_Warehouse_Group, id_ContrAgent, id_CAGroup, id_Manufact,
      id_Manufact_Group: OleVariant; ShowInRoot: WordBool): Integer;
      safecall;
    function GetWateCtg(id_goods: OleVariant): OleVariant; safecall;
    function DCh_Oper(id_business, OperVid: Integer; id_UserCreator,
      DateLocal: OleVariant; Correct, OperTypeIn: WordBool;
      CurrencyOperName, PriceFinOper, CurrencySysName, SummSysFin, AccName,
      AccName_Ext, WarehouseName, WarehouseName_Ext, ManufactName,
      ManufactName_Ext, ReprName, CAName: OleVariant; Koeff: Integer;
      FormalDistribName, FuncDistribName, Imp_PayBasic,
      AccInv_PayAssignment, OpComment, Contract, ReprName_Ex,
      id_Replicator, id_LC_Oper: OleVariant): Integer; safecall;
    function DCh_OperWare(id_Oper: Integer; CtgName, GoodsName, MeasureName: OleVariant; AmountOper: Double;
      PriceOper, SummSys: OleVariant): Integer; safecall;
    function OP_BuffAddItem(id_Buff, id_Oper: Integer): Integer; safecall;
    function OP_OperWareAdd_BackToCA(id_Oper: Integer; id_Goods, id_Measure,
      Amount, PriceOper, SummSys: OleVariant; OupByInv: WordBool): Integer;
      safecall;
    function PL_WareNameGet(id_Goods : OleVariant; var AName, ShortName: OleVariant): Integer;
      safecall;
    function LC_OP_OperAdd_v2(OperVid: Integer; id_business: OleVariant;
      Correct, OperTypeIn: WordBool; Id_CurrencyOper, PriceFinOper,
      Id_CurrencySys, SummSysFin, id_Acc, id_Acc_Ext, id_Warehouse,
      id_Warehouse_Ext, id_Manufact, id_Manufact_Ext, id_Repr,
      id_UserCreator, id_DocType, Imp_PayBasic, AccInv_PayAssignment,
      Contract, OpComment: OleVariant; Koeff: Integer; Dig1, Dig2, Dig3,
      Dig4, Dig5, Dig6, Dig7, Dig8, Dig9, Dig10, Dig11, Dig12, Dig13,
      Dig14, Dig15, Str1, Str2, Str3, Str4, Str5, Str6, Str7, Str8, Str9,
      Str10, Str11, Str12, Str13, Str14, Str15, Date1, Date2, Date3, Date4,
      Date5, Date6, Date7, Date8, Date9, Date10, Date11, Date12, Date13,
      Date14, Date15, id_FormalDistrib, id_FuncDistrib,
      id_LC_Oper_Ext: OleVariant): Integer; safecall;
    function LC_OP_OperEdit_v2(id_LC_Oper, OperVid: Integer;
      id_business: OleVariant; Correct, OperTypeIn: WordBool;
      Id_CurrencyOper, PriceFinOper, Id_CurrencySys, SummSysFin, id_Acc,
      id_Acc_Ext, id_Warehouse, id_Warehouse_Ext, id_Manufact,
      id_Manufact_Ext, id_Repr, id_UserCreator, id_DocType, Imp_PayBasic,
      AccInv_PayAssignment, Contract, OpComment: OleVariant;
      Koeff: Integer; Dig1, Dig2, Dig3, Dig4, Dig5, Dig6, Dig7, Dig8, Dig9,
      Dig10, Dig11, Dig12, Dig13, Dig14, Dig15, Str1, Str2, Str3, Str4,
      Str5, Str6, Str7, Str8, Str9, Str10, Str11, Str12, Str13, Str14,
      Str15, Date1, Date2, Date3, Date4, Date5, Date6, Date7, Date8, Date9,
      Date10, Date11, Date12, Date13, Date14, Date15, id_FormalDistrib,
      id_FuncDistrib, id_LC_Oper_Ext: OleVariant): Integer; safecall;
    function DCh_Oper_LC(id_business, OperVid: Integer;
      id_UserCreator: OleVariant; Correct, OperTypeIn: WordBool;
      CurrencyOperName, PriceFinOper, CurrencySysName, SummSysFin, AccName,
      AccName_Ext, WarehouseName, WarehouseName_Ext, ManufactName,
      ManufactName_Ext, ReprName, Imp_PayBasic, AccInv_PayAssignment,
      OpComment, Contract: OleVariant;
      Koeff: Integer; FormalDistribName, FuncDistribName: OleVariant): Integer; safecall;
    function DCh_OperWare_LC(id_LC_Oper: Integer; CtgName, GoodsName, MeasureName: OleVariant; AmountOper: Double;
      PriceOper, SummSys: OleVariant): Integer; safecall;
    function ExpSetID(id_Oper, id_LC_Oper: Integer): Integer; safecall;
    function OP_EmptyAdd(id_UserCreator: Integer; OperTypeIn: WordBool;
      id_DocType, Contract, OpComment: OleVariant; id_business: Integer;
      Imp_PayBasic, AccInv_PayAssignment: OleVariant): Integer; safecall;
    function OP_EmptyEdit(id_Oper, id_UserCreator: Integer; id_DocType,
      Contract, OpComment: OleVariant; id_business: Integer; Imp_PayBasic,
      AccInv_PayAssignment: OleVariant): Integer; safecall;
    function SetUserDetail_2(Act, ID, FirstName, MiddleName, LastName, Login,
      Password, PspSeries, PspNumber, PspPlace, Pspdate, PspAddr, AddrReal,
      Phones, Emails, OrgPost, Disabled: OleVariant; isRelp, isPPP,
      id_UADM: WordBool): Integer; safecall;
    procedure SetUserGroups(Id, Ids: OleVariant); safecall;
    function SetGroupDetail(Act, Id, GroupName, Disabled: OleVariant): Integer;
      safecall;
    function SetMeasureDetail(Act, ID, MeasureName, ShortName, id_BaseMeasure,
      id_business, Koef, Disabled, OKEI: OleVariant): Integer; safecall;
    procedure SetMeasureBusiness(Id, Ids: OleVariant); safecall;
    function SetBusinessDetail(Act, Id, BusinessName, ShortName, Id_Currency,
      Num, Disabled: OleVariant): Integer; safecall;
    function SetReplicatorDetail(Act, Id, ReplicatorName, ShortName, Login,
      PassWord, DelPeriod, Disabled: OleVariant): Integer; safecall;
    procedure SetReplBusiness(Id, Ids: OleVariant); safecall;
    function SnglObj_Acc(id_User: Integer; out ObjName, ObjID, BsnName,
      id_business: OleVariant): Integer; safecall;
    function SnglObj_CA(id_User: Integer; out ObjName, ObjID, BsnName,
      id_business: OleVariant): Integer; safecall;
    function SnglObj_MN(id_User: Integer; out ObjName, ObjID, BsnName,
      id_business: OleVariant): Integer; safecall;
    function SnglObj_wh(id_User: Integer; out ObjName, ObjID, BsnName,
      id_business: OleVariant): Integer; safecall;
    function MSG_Add(Body: OleVariant; id_User: Integer; WasRead: WordBool;
      DateClose, RepBody, id_State: OleVariant): Integer; safecall;
    function MSG_Edit(id_Msg: Integer; Body: OleVariant; id_User: Integer;
      WasRead: WordBool; DateClose, RepBody,
      id_State: OleVariant): Integer; safecall;
    function MSG_SetClosed(id_Msg: Integer; DateClose: OleVariant): Integer;
      safecall;
    function MSG_SetWasRead(id_Msg: Integer; WasRead: WordBool): Integer;
      safecall;
    function  OP_OperExtDataEdit_v2(id_Oper: Integer; AType: Integer; NumPrm: Integer; 
                                    DigVal: OleVariant; StrVal: OleVariant; DateVal: OleVariant): Integer; safecall;
    function  OP_OperSetOperState(id_Oper: Integer; OperState: Integer): Integer; safecall;
    function Crn_URLAdd(AName, URL: OleVariant; UseTable, ColName, ColISO,
      ColCode, ColRate, ColPieces: Integer): Integer; safecall;
    function Crn_URLEdit(ID: Integer; AName, URL: OleVariant; UseTable,
      ColName, ColISO, ColCode, ColRate, ColPieces: Integer): Integer;
      safecall;
    function CurrencyAdd_2(AName, ShortName, ISOCode, NumberCode: OleVariant;
      FastAccess: WordBool; AValue: Integer; Rate: OleVariant;
      AvForPay: WordBool; Id_URL: OleVariant; id_Bsn: Integer;
      DocCurPartName: OleVariant): Integer; safecall;
    function CurrencyEdit_2(Id_Currency: Integer; AName, ShortName, ISOCode,
      NumberCode: OleVariant; FastAccess: WordBool; AValue: Integer;
      Rate: OleVariant; AvForPay: WordBool; Id_URL: OleVariant;
      id_Bsn: Integer; DocCurPartName: OleVariant): Integer; safecall;
    function CurrencyEditRate(Id_Currency: Integer; Rate: Double): Integer; safecall;
    function SetCurid_Bsn(Id_Currency, id_Bsn: Integer): Integer; safecall;
    function AP_ObjEdit(id_AP_Obj, id_business: Integer; OperVid, OperTypeIn,
      Correct, AName, id_User, AutoGen, Id_CurrencyOper, Id_CurrencySys,
      id_Acc, id_Warehouse, id_Manufact, id_Acc_Ext, id_Warehouse_Ext,
      id_Manufact_Ext, id_Repr, id_ContrAgent, Koeff, id_FormalDistrib,
      id_FuncDistrib, OpComment, Imp_PayBasic, AccInv_PayAssignment,
      Contract, id_Goods: OleVariant): Integer; safecall;
    function  AP_CondClear(id_AP_Obj: Integer): Integer; safecall;
    function AP_CondAdd(id_AP_Obj, ExtID, APCond: Integer; V_Str,
      V_Str2: OleVariant): Integer; safecall;
    function AP_ObjDel(id_AP_Obj: Integer): Integer; safecall;
    function Doc_Pay_InEdit(id_Pay_In, id_Oper: Integer; Doc_Num, Doc_Date,
      OKPO, Summ, VAT, BasePM, Payer, Buh, Casser, id_UserCreator, OrgName,
      ExtInfo, id_DocCur: OleVariant; id_Doc_Org: Integer): Integer;
      safecall;
    function Doc_ActClEdit(id_ActCl, id_Oper: Integer; Doc_Num, Doc_Date,
      OrgName1, OrgName2, Summ1, Summ2, Doc1, Doc2, Name1, Name2, Post1,
      Post2, Summ, id_UserCreator: OleVariant; id_DocCur,
      id_Doc_Org: Integer): Integer; safecall;
    function Doc_AccountEdit(id_Account, id_Oper: Integer; Doc_Num, Doc_Date,
      BIK, id_UserCreator, INN, Payer, Chif, Buh, customer, Bank, Acc1,
      Acc2, OrgName, Address, KPP: OleVariant; id_DocCur,
      id_Doc_Org: Integer; VAT: OleVariant): Integer; safecall;
    function Doc_FinalActEdit(id_FinalAct, id_Oper: Integer; Doc_Num, Doc_Date,
      id_UserCreator, OrgName, Address, performer, customer,
      CusPerson: OleVariant; id_DocCur, id_Doc_Org: Integer;
      VAT: OleVariant): Integer; safecall;
    function Doc_WarrantEdit(id_Warrant: Integer; GarbDate, Pspdate, Doc_Date,
      DateTo, BIK, id_Oper, id_UserCreator, INN, Chif, Buh, PspSer, PspNum,
      PspOwner, CorAcc, customer, FIO, GarbNum, Acc, Bank, OKPO, Person,
      APost, Doc_Num, OrgName, Address, OrgName2, Address2,
      INN2: OleVariant; id_Doc_Org: Integer): Integer; safecall;
    function Doc_InvoiceEdit(id_invoice: Integer; V: OleVariant;
      id_Doc_Org: Integer): Integer; safecall;
    function Doc_AFEdit(id_AF: Integer; V: OleVariant;
      id_Doc_Org: Integer): Integer; safecall;
    function Doc_WBillEdit(id_WBill: Integer; V: OleVariant;
      id_Doc_Org: Integer): Integer; safecall;
    function DocDictEdit(ID: Integer; AName: OleVariant; id_DT: Integer;
      id_business: OleVariant): Integer; safecall;
    function DocDictDel(id_DD: Integer): Integer; safecall;
    function DocDictSetDef(id_DD: Integer): Integer; safecall;
    function Doc_DictUNSetDef(id_DD: Integer): Integer; safecall;
    function Doc_MeasureOKEI(ID_Measure: Integer): OleVariant; safecall;
    function DocDel(AType, ID_Doc: Integer): Integer; safecall;
    procedure Doc_ReprGetProp(id_Repr: Integer; out BIK, Bank, AccName,
      CorAccNAme, OKPO, Addr, INN, KPP: OleVariant); safecall;
    procedure Doc_GoodsGetProp(id_Goods: Integer; out GTD, Country, DocNomCode,
      DocPriceCode, DocArt, DocNumber: OleVariant); safecall;
    function GetDoc_Num(DocType: Integer): OleVariant; safecall;
    function GetMNName(ID_MN: Integer): OleVariant; safecall;
    function GetReprName(id_Repr: Integer): OleVariant; safecall;
    function GetDoc_Num2(DocType, id_Bsn: Integer): OleVariant; safecall;
    function GetDefOrg(id_business: Integer; var id_Doc_Org, OrgName, INN, KPP,
      Chif, Buh, OKPO, OKPD, Address: OleVariant): Integer; safecall;
    function Doc_OrgEdit(id_Doc_Org: Integer; Address, Buh, Chif: OleVariant;
      DefOrg, DisabledOrg: WordBool; id_business: Integer; INN, KPP, OKPD,
      OKPO, OrgName, VAT: OleVariant): Integer; safecall;
    function Doc_OrgDel(id_Doc_Org: Integer): Integer; safecall;
    function Doc_OrgBankGetDef(id_Doc_Org: Integer; var Bank, BIK, Acc,
      CorrAcc: OleVariant): Integer; safecall;
    function DCh_MeasureAdd(id_business: Integer; AName: OleVariant): Integer;
      safecall;
    function GetMeasureName(id_Measure: Integer): OleVariant; safecall;
    function AP_ObjItemEdit(id_ObjItem, id_AP_Obj: Integer; OperVid,
      OperTypeIn, Correct, OpName: OleVariant): Integer; safecall;
    function AP_OperAdd(ExtID, id_ObjItem, ParamType: Integer; V_Str,
      V1: OleVariant): Integer; safecall;
    function AP_OperClear(id_ObjItem: Integer): Integer; safecall;
    function AP_ObjItemDel(id_ObjItem: Integer): Integer; safecall;
    function AP_ObjItemSummAdd(id_ObjItemSumm, id_ObjItem: Integer;
      isSys: WordBool; Summ_Type, Summ_FormType, Summ_Koeff, Summ_B,
      Summ_Znak, Summ_Koeff2, Summ_Znak2, Summ_Koeff3,
      Summ_Znak3: OleVariant; inPercent: WordBool; Id_Currency: OleVariant;
      Currency_Type: Integer; Summ_Formulas: OleVariant;
      Summ_UseSys: WordBool; id_CnstItem, ZnakCnstItem,
      K_CnstItem: OleVariant): Integer; safecall;
    function UN_AccSumm(id_Acc: Integer; ADate: OleVariant): OleVariant;
      safecall;
    function UN_AccSummByCur(id_Acc: Integer; ADate: OleVariant;
      Id_Currency: Integer): OleVariant; safecall;
    function Arc_OperAdd(id_business: Integer; ADate: TDateTime;
      id_User: OleVariant): Integer; safecall;
    function Arc_OperLastBal(id_business, DateCreate: Integer): Integer;
      safecall;
    function UN_BalanceForm_v2(id_business: Integer): Integer; safecall;
    function Arc_OperClear(id_business: Integer): Integer; safecall;
    function Arc_OldOperCount(id_business: Integer; var id_OP_Arc,
      CNT: Integer): Integer; safecall;
    function Bsn_DellAll(id_business: Integer): Integer; safecall;
    function Arc_OP_OperAdd(V, Imp_PayBasic, AccInv_PayAssignment, Contract,
      OpComment: OleVariant): Integer; safecall;
    function Arc_OP_OperWareAdd(V: OleVariant): Integer; safecall;
    procedure APOperSort(id_ObjItem, OrderNum: Integer); safecall;
    function SHOWCONTIG(TableName: OleVariant): OleVariant; safecall;
    function DBREINDEX(TableName: OleVariant): Integer; safecall;
    procedure SetBaseName(AName, AUserName, APassword: OleVariant); safecall;
    function GetCASumm(id_Currency, id_ContrAgent: Integer): OleVariant;
      safecall;
    function GetFirstRepr(id_ContrAgent: Integer): Integer; safecall;
    function Crn_URLDel(Id_URL: Integer): Integer; safecall;
    function BJ_TreeDel(id_BJ_Tree: Integer): Integer; safecall;
    function BJ_TreeEdit(id_BJ_Tree, id_BJ_Obj: Integer; AName,
      PID: OleVariant; isDeb: WordBool; ExtID: OleVariant): Integer;
      safecall;
    procedure BJ_TreeGetProp(id_BJ_Tree: Integer; var id_BJ_Obj, AName,
      PID: OleVariant); safecall;
    function BJ_TreeCheck(id_BJ_Tree: Integer; PID,
      AName: OleVariant): OleVariant; safecall;
    function BJ_ItemEdit(id_BJ_Item, id_BJ_Tree: Integer; AName, id_ContrAgent,
      id_Acc, PlanIn, PlanDelta: OleVariant; NeedCalc: WordBool;
      PlanCorrect: OleVariant; isDirect, isInState: WordBool): OleVariant;
      safecall;
    function BJ_ObjEdit(id_BJ_Obj, id_business: Integer; AName, StartDate,
      StopDate: OleVariant): Integer; safecall;
    function BJ_ItemDel(id_BJ_Item: Integer): Integer; safecall;
    procedure Get_AccInfos(id_Acc: Integer; var AName,
      id_business: OleVariant); safecall;
    function BJ_ObjDel(id_BJ_Obj: Integer): Integer; safecall;
    function BJ_ObjEdit2(id_BJ_Obj, id_business: Integer; AName: OleVariant;
      id_Creator: Integer; StartDate, StopDate: OleVariant): Integer;
      safecall;
    function BJ_ObjDateStart(id_BJ_Obj: Integer): OleVariant; safecall;
    function BJ_ItemSetOrdNum(id_BJ_Item, OrdNum: Integer): Integer; safecall;
    function BJ_TreeSetOrdNum(id_BJ_Tree, OrdNum: Integer): Integer; safecall;
    function BJ_Copy(OLD_ID, NEW_ID: Integer): Integer; safecall;
    function DD_MaxDay_Ex(id_business: Integer): OleVariant; safecall;
    function BJ_Ch(id_BJ_Obj: Integer; aid_User: OleVariant): Integer;
      safecall;
    function BJ_ItemEdit_Check(id_BJ_Item: Integer; isDirect,
      isInState: OleVariant): Integer; safecall;
    function Doc_WHOrdEdit(id_WHOrd: Integer; id_Doc_Org, id_Oper, Doc_Num,
      Doc_Date, id_UserCreator, Payer, Expeditor, OpComment, id_DocCur,
      TotalAmount_Pack, TotalAmount_Box: OleVariant;
      id_business: Integer): Integer; safecall;
    function UN_InvCalc(OPComment, OrdN, id_Manufact,
      OperTypeIn: OleVariant): OleVariant; safecall;
    function GetINV_Form(id_business, ExtID: Integer): OleVariant; safecall;
    function INV_GetFormPrice(id_Goods, id_manufact: Integer;
      DateCreate: OleVariant): OleVariant; safecall;
    function Inv_InvWare(OPComment, OrdN, GName,
      id_Manufact: OleVariant): OleVariant; safecall;
    function Inv_InvGoods(OPComment, OrdN, Id_Ctg_Goods, Id_Ctg_Goods2,
      id_Manufact: OleVariant): OleVariant; safecall;
    function Inv_TimeGet(id_Project, id_Lines: Integer;
      ExtID: OleVariant): OleVariant; safecall;
    function INV_FormEdit(id_Form: Integer; Price: OleVariant): Integer;
      safecall;
    procedure Inv_ProjectDel(id_Project: Integer); safecall;
    function Inv_ProjectEdit(id_Project: Integer; AName: OleVariant;
      id_User: Integer; PrjNum, PrjDate, id_Goods: OleVariant): OleVariant;
      safecall;
    function Getid_Project: OleVariant; safecall;
    procedure INV_LinesPrice(OrdNum: Integer; var id_Lines,
      TimePrice: OleVariant); safecall;
    procedure Inv_ProjectSetCheckDate(id_Project: Integer;
      CheckDate: OleVariant); safecall;
    function INV_ExtPrice(id_Lines: Integer; Amount: OleVariant): OleVariant;
      safecall;
    function Inv_GetMN(id_Manufact: Integer): OleVariant; safecall;
    function Inv_ProjectComment(id_Project: Integer;
      Comment: OleVariant): Integer; safecall;
    function AP_CnstItemEdit(id_CnstItem: Integer; AName, aVal: OleVariant;
      id_Business: Integer): Integer; safecall;
    function AP_CnstItemDel(id_CnstItem: Integer): Integer; safecall;
    procedure AP_CnstGetProp(id_CnstItem: Integer; var ANAme, Val: OleVariant);
      safecall;
    function CustRep_RepGetProp(id_Rep: Integer): OleVariant; safecall;
    procedure CustRep_CatDel(id_Cat: Integer); safecall;
    function CustRep_CatAdd(id_Rep: Integer; AName, PID, ExtStr,
      id_FormalDistrib, id_FuncDistrib, id_Acc: OleVariant;
      isCat: WordBool; APlan, F_id_ContrAgent: OleVariant): Integer;
      safecall;
    function Inv_ProjectSetCheckDateFact(id_Project: Integer;
      CheckDateFact: OleVariant): Integer; safecall;
    function APN_ObjEdit(id_APN_Obj, id_business: Integer; id_Repr,
      id_Acc: OleVariant; OperTypeIn: WordBool; DayNum: Integer;
      AName: OleVariant): Integer; safecall;
    function APN_AccListDel(id_APN_AccList: Integer): Integer; safecall;
    function APN_ObjDel(id_APN_Obj: Integer): Integer; safecall;
    function APN_ObjDoIt(id_APN_Obj: Integer): Integer; safecall;
    function APN_AccListEdit(id_APN_AccList, id_APN_Obj, id_Acc: Integer;
      ASumm, Id_Currency, APrc: OleVariant): Integer; safecall;
    function isPPP: WordBool; safecall;
    function OP_ReplaceDate_CH(id_Oper: Integer;
      VirtDate: OleVariant): Integer; safecall;
    function PL_LastPrice(id_Goods: Integer): OleVariant; safecall;
    function DD_Cancel(id_business: Integer): Integer; safecall;
    function DCh_Oper_Impex(DateCreate: OleVariant; id_business, OperVid,
      OperTypeIn: Integer; CurrencyOperName, PriceFinOper: OleVariant;
      id_Acc: Integer; AccInv_PayAssignment, OpComment, KS, ReprName, INN,
      Contract, Koeff: OleVariant): Integer; safecall;
    function OP__SetKoeff(Koeff, id_Oper: Integer): Integer; safecall;
    function OffPayment(id_CA: Integer): Integer; safecall;
    function AddOper(id_business, WHName, GoodsName, BarCode, MeasureName,
      CAName, AmountOper, PriceOper, DateLocal, id_Session, Contract,
      Mode: OleVariant): Integer; safecall;
    function AddMov(id_business, WHName, GoodsName, BarCode, MeasureName,
      CAName, AmountOper, PriceOper, PriceInv, DateLocal, id_Session,
      Mode: OleVariant): Integer; safecall;
    function CI_WareCorrect(id_business, WHName, GoodsName, BarCode,
      MeasureName, AmountOper, PriceOper, DateLocal, id_Session,
      Mode: OleVariant): Integer; safecall;
    function Getid_Session(id_business: Integer; NLog: WordBool;
      FileType: OleVariant): Integer; safecall;
    function Doc_UPDUnEdit(id_UPD: Integer; V: OleVariant;
      id_Doc_Org: Integer): Integer; safecall;
  public
    FUserName, FPassword: String;
    FFullFio : String;
    FisPPP : boolean;
    CreateDate : TDateTime;
  end;

implementation

uses uMeCrpt, uEventLogger, tstSvcForm;

{$R *.DFM}



class procedure TDic.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

procedure TDic.RemoteDataModuleCreate(Sender: TObject);
var Buffer : PChar;
    Len : DWORD;
    CmpName : String;
    i : integer;

    IniFile : TIniFile;
    S : String;
    SL : TStringList;
begin

  //LogMessage('������');
  CreateDate := Now;
  SvcForm.AddRDM(Self);
  tag := GetCurrentThreadId;
 // THackAdoDataSet(spBal_v2).CommandTimeout := tag;

//  THackAdoDataSet(DM.spArc2).CommandTimeout := 60*3;

  THackAdoDataSet(spArcWare).CommandTimeout := 60*2;
  THackAdoDataSet(spCurProp).CommandTimeout := 60*5;
  THackAdoDataSet(spCRep).CommandTimeout := 60*3;

  THackAdoDataSet(spBJTree).CommandTimeout := 60*5;
  THackAdoDataSet(spBal_v2).CommandTimeout := 60*5;
  THackAdoDataSet(spMovGoods).CommandTimeout := 60*5;

  THackAdoDataSet(spRPT_RR).CommandTimeout := 120;
  THackAdoDataSet(spRPT_VSP).CommandTimeout := 123;

  THackAdoDataSet(spCA_W).CommandTimeout := 120;
  THackAdoDataSet(spPL_W).CommandTimeout := 120;

  THackAdoDataSet(spWHAvg).CommandTimeout := 120;

  Fid_User := Null;
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TSQLUpdateDSProvider) and (Assigned(TSQLUpdateDSProvider(Components[i]))) then
      TSQLUpdateDSProvider(Components[i]).OnUpdateError := SQLUpdateDSUpdateError;

    if (Components[i] is TADOStoredProc)  then
      TADOStoredProc(Components[i]).BeforeOpen := UnBeforeOpen;
  end;

 { try
    Len := 256;
    Buffer := AllocMem(Len);
    GetComputerName(Buffer, Len);
    CmpName := StrPas(Buffer);
  finally
    FreeMem(Buffer, Len);
  end;  }
// ****************************************************************************
  FBaseName := 'OVK';
  FUserName := 'sa';
  FPassword := 'trustnoone';
  FDataBaseName := 'ACS_MBase';
  
  S := ExtractFilePath(ParamStr(0)) + 'Key.ack';
  if  FileExists(S) then
  begin
    SL := TStringList.Create;
    try
      SL.Text := FileToStr(S);
      with SL do
      begin
        FBaseName := Values['DB'];
        FUserName := Values['UserName'];
        FPassword := Values['Password'];
      end;
    finally
      SL.Free;
    end;
  end
  else
  begin
    S := ExpandFileName(ParamStr(0));
    Delete(S, Length(S) - 2, 3);
    S := S + 'ini';
    if  FileExists(S) then
    begin
      IniFile := TIniFile.Create(S);
      try
        with IniFile do
        begin
          FBaseName := ReadString('Base', 'DB', '127.0.0.1');
          FUserName := ReadString('Base', 'UserName', 'sa');
          FPassword := ReadString('Base', 'Password', 'trustnoone');
        end;
      finally
        IniFile.Free;
      end;
    end;
  end;
// ****************************************************************************
//  LogMessage('������ 222');
end;

procedure SetTParametersVal(AParameters: TParameters; AName : String; AVal : Variant);
var AParam : TParameter;
begin
  AParam := AParameters.FindParam(AName);
  if AParam <> nil then
    AParameters.FindParam(AName).Value := AVal;
end;


procedure TDic.SQLUpdateDSUpdateError(Sender: TObject;
  DataSet: TClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  LogMessage(E.Message, EVENTLOG_ERROR_TYPE);
end;

function TDic.DoLogin(UserName, Password: OleVariant): Integer;
begin
//  LogMessage('DoLogin');
  with ADOConnection1 do
  begin
    tag := GetCurrentThreadId;
  //  THackAdoDataSet(spBal_v2).CommandTimeout := 60*;
 {  FUserName := 'sa';
   FPassword := '1234';
   FDataBaseName := 'ACS_MBase';  }

 //      raise Exception.Create('������ ��� ���������� � ���� FUserName=' + FUserName+ ' FPassword='  + FPassword + ' FDataBaseName=' + FDataBaseName);
   Connected := false;
   ConnectionString := 'Provider=SQLOLEDB.1;Password="' +
     String(FPassword) + '";Persist Security Info=True;User ID=' +
     String(FUserName) + ';Initial Catalog=' +
     String(FDataBaseName)
     + ';Data Source=' + FBaseName +
                        ';Use Procedure for Prepare=1;Auto Translate=True;Application Name=' + Self.Name {+ '*' + UserName} + '*4.0;Packet Size=4096;';
  if String(FPassword) = '' then
    ConnectionString := 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;User ID=sa;Initial Catalog=ACS_MBase;Data Source=coalserv';
  try
   //  LogMessage('DoLogin 1');
     Connected := true;
// exit;
  //   LogMessage('DoLogin 2');
     with spWhoIAm do
     begin
       Close;
       try
         Parameters.ParamByName('@Login').Value := UserName;
         Parameters.ParamByName('@Password').Value := Password;
         Open;
      //   if IsEmpty then
      //     raise Exception.Create('�������� ������ ��� ������������ ' + UserName);
         if IsEmpty then
           Exit; 
         if FieldByName('Disabled').AsBoolean then
           raise Exception.Create('�������� ���� ������������ ' + UserName);

         Fid_User := FieldByName('id_User').AsVariant;
         FisPPP := FieldByName('isPPP').AsBoolean;
         FFullFio := FieldByName('LastName').AsString + ' ' + FieldByName('FirstName').AsString + ' ' + FieldByName('MiddleName').AsString;
         Result := 1;
      //   DM := TDM.Create(Self, ADOConnection1);
       finally
         Close;
       end;
     end;
   except
     on E : Exception do
     begin
       Result := 26;
       LogMessage('������ ��� ���������� � ���� ' + FUserName+ ' '  + FPassword + ' ' + FDataBaseName + ' ' + E.Message, EVENTLOG_ERROR_TYPE, 1, 1);
     //  raise Exception.Create('������ ��� ���������� � ���� ' + FUserName+ ' '  + FPassword + ' ' + FDataBaseName + ' ' + E.Message);
       raise Exception.Create('������ ��� ���������� � ���� ' + FDataBaseName + ' ' + E.Message);
     end;
   end;
 end;
// LogMessage('DoLogin 3');
end;

procedure TDic.LogMessage(Message: String; EventType: DWord;
  Category: Word; ID: DWord);
begin
  FEventLogger.LogMessage(Message, EventType, Category, ID);
end;

function TDic.CAGroup_Add(id_Bsn: Integer; AName: OleVariant;
  ShowInRoot: WordBool): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'CA_CAGroup_Add';
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_Bsn;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@ShowInRoot').Value := ShowInRoot;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.CAGroup_Edit(ID: Integer; AName: OleVariant;
  ShowInRoot: WordBool): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'CA_CAGroup_Edit';
      Parameters.Refresh;
      Parameters.ParamByName('@id_CAGroup').Value := ID;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@ShowInRoot').Value := ShowInRoot;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.CAGroup_Del(ID: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'CA_CAGroup_Del';
      Parameters.Refresh;
      Parameters.ParamByName('@id_CAGroup').Value := ID;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Get_id_User: OleVariant;
begin
  Result := Fid_User;
end;

function TDic.Get_FIO: OleVariant;
begin
  Result := FFullFio;
end;

function TDic.CurByID(ID: OleVariant; out AName, AShortName: OleVariant;
  var RateRBL: OleVariant): Integer;
begin
  Result := -1;
  with spCurByID do
  begin
    try
      Close;
      Parameters.ParamByName('@Id_Currency').Value := ID;
      try
        Open;
        if not IsEmpty then
        begin
          Result := 1;
          AName := FieldByName('Name').AsString;
          AShortName := FieldByName('ShortName').AsString;
          if FieldByName('Base').AsBoolean then
            RateRBL := 1
          else
            if FieldByName('Value').AsInteger > 0 then
              RateRBL := FieldByName('Rate').AsFloat/FieldByName('Value').AsInteger;

        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.ContrAgentAdd(AName, id_business, id_CAGroup: OleVariant;
  isOwn: WordBool; Id_Currency, Addr, Descr: OleVariant;
  ShowInRoot: WordBool): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'CA_ContrAgentAdd';
      Parameters.Refresh;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@id_CAGroup').Value := id_CAGroup;
      Parameters.ParamByName('@isOwn').Value := isOwn;
      Parameters.ParamByName('@Id_Currency').Value := Id_Currency;
      Parameters.ParamByName('@ShowInRoot').Value := ShowInRoot;
      Parameters.ParamByName('@Addr').Value := Addr;
      Parameters.ParamByName('@Descr').Value := Descr;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.ContrAgentEdit(id_ContrAgent: Integer; AName, id_business,
  id_CAGroup: OleVariant; isOwn, Disabled: WordBool; Id_Currency, Addr,
  Descr: OleVariant; ShowInRoot: WordBool): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'CA_ContrAgentEdit';
      Parameters.Refresh;
      Parameters.ParamByName('@id_ContrAgent').Value := id_ContrAgent;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@id_CAGroup').Value := id_CAGroup;
      Parameters.ParamByName('@isOwn').Value := isOwn;
      Parameters.ParamByName('@Disabled').Value := Disabled;
      Parameters.ParamByName('@Id_Currency').Value := Id_Currency;
      Parameters.ParamByName('@ShowInRoot').Value := ShowInRoot;
      Parameters.ParamByName('@Addr').Value := Addr;
      Parameters.ParamByName('@Descr').Value := Descr;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

procedure TDic.BeginTruns;
begin
  ADOConnection1.BeginTrans;
end;

procedure TDic.CommitTrans;
begin
  ADOConnection1.CommitTrans;
end;

procedure TDic.RollbackTrans;
begin
  ADOConnection1.RollbackTrans;
end;

function TDic.ReprAdd(id_ContrAgent: OleVariant; isJur: WordBool; AName,
  FirstName, MiddleName, LastName, Id_Currency: OleVariant;
  Disabled: WordBool; Addr, Descr, id_Bsn_ex: OleVariant;
  NeedSend: Integer; BIK, Bank, AccName, CorAccNAme, OKPO, INN,
  KPP: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'CA_ReprAdd';
      Parameters.Refresh;
      Parameters.ParamByName('@id_ContrAgent').Value := id_ContrAgent;
      Parameters.ParamByName('@isJur').Value := isJur;
      Parameters.ParamByName('@Name').Value := AName;

      Parameters.ParamByName('@FirstName').Value := FirstName;
      Parameters.ParamByName('@MiddleName').Value := MiddleName;
      Parameters.ParamByName('@LastName').Value := LastName;

      Parameters.ParamByName('@Id_Currency').Value := Id_Currency;
      Parameters.ParamByName('@Disabled').Value := Disabled;
      Parameters.ParamByName('@Addr').Value := Addr;
      Parameters.ParamByName('@Descr').Value := Descr;
      Parameters.ParamByName('@id_Bsn_ex').Value := id_Bsn_ex;
      Parameters.ParamByName('@NeedSend').Value := NeedSend;

      Parameters.ParamByName('@BIK').Value := BIK;
      Parameters.ParamByName('@Bank').Value := Bank;
      Parameters.ParamByName('@AccName').Value := AccName;
      Parameters.ParamByName('@CorAccNAme').Value := CorAccNAme;
      Parameters.ParamByName('@OKPO').Value := OKPO;
      Parameters.ParamByName('@INN').Value := INN;
      Parameters.ParamByName('@KPP').Value := KPP;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.ReprEdit(id_Repr: Integer; id_ContrAgent: OleVariant;
  isJur: WordBool; AName, FirstName, MiddleName, LastName,
  Id_Currency: OleVariant; Disabled: WordBool; Addr, Descr: OleVariant;
  NeedSend: Integer; BIK, Bank, AccName, CorAccNAme, OKPO, INN,
  KPP: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'CA_ReprEdit';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Repr').Value := id_Repr;
      Parameters.ParamByName('@id_ContrAgent').Value := id_ContrAgent;
      Parameters.ParamByName('@isJur').Value := isJur;
      Parameters.ParamByName('@Name').Value := AName;

      Parameters.ParamByName('@FirstName').Value := FirstName;
      Parameters.ParamByName('@MiddleName').Value := MiddleName;
      Parameters.ParamByName('@LastName').Value := LastName;

      Parameters.ParamByName('@Id_Currency').Value := Id_Currency;
      Parameters.ParamByName('@Disabled').Value := Disabled;
      Parameters.ParamByName('@Addr').Value := Addr;
      Parameters.ParamByName('@Descr').Value := Descr;
      Parameters.ParamByName('@NeedSend').Value := NeedSend;

      Parameters.ParamByName('@BIK').Value := BIK;
      Parameters.ParamByName('@Bank').Value := Bank;
      Parameters.ParamByName('@AccName').Value := AccName;
      Parameters.ParamByName('@CorAccNAme').Value := CorAccNAme;
      Parameters.ParamByName('@OKPO').Value := OKPO;
      Parameters.ParamByName('@INN').Value := INN;
      Parameters.ParamByName('@KPP').Value := KPP;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.ContrAgentSetGrp(id_ContrAgent: Integer;
  id_CAGroup: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'CA_ContrAgentSetGrp';
      Parameters.Refresh;
      Parameters.ParamByName('@id_ContrAgent').Value := id_ContrAgent;
      Parameters.ParamByName('@id_CAGroup').Value := id_CAGroup;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create('������ ��� ����������� ����������� � ������ ������. ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Ctg_GoodsAdd(id_business: Integer; id_BaseCtg, AName,
  ShortName: OleVariant; Disabled: WordBool): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'PL_Ctg_GoodsAdd';
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@id_BaseCtg_Goods').Value := id_BaseCtg;
      Parameters.ParamByName('@Name').Value := AName;

      Parameters.ParamByName('@ShortName').Value := ShortName;
      Parameters.ParamByName('@Disabled').Value := Disabled;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Ctg_GoodsEdit(id_Ctg, id_business: Integer; id_BaseCtg,
  AName, ShortName: OleVariant; Disabled: WordBool): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'PL_Ctg_GoodsEdit';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Ctg_Goods').Value := id_Ctg;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@id_BaseCtg_Goods').Value := id_BaseCtg;
      Parameters.ParamByName('@Name').Value := AName;

      Parameters.ParamByName('@ShortName').Value := ShortName;
      Parameters.ParamByName('@Disabled').Value := Disabled;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.CtgByID(AType: Integer; ID: OleVariant;
  out AName: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      case AType of
        0 : ProcedureName := 'PL_Ctg_GoodsGetProp';
      else
        raise Exception.Create('�������� �������� �������.');
      end;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Ctg').Value := ID;
      try
        Open;
        if not IsEmpty then
        begin
          Result := 1;
          AName := FieldByName('Name').AsString;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.WareAdd(AType: Integer; id_Ctg, AName, ShortName,
  BarCode: OleVariant; Disabled: WordBool; id_Measure, GTD, Country,
  DocNomCode, DocPriceCode, DocArt, DocNumber: OleVariant): Integer;
var S_IDCat : String;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      case AType of
        0 :
        begin
          ProcedureName := 'PL_GoodsAdd';
          S_IDCat := '@id_Ctg_Goods'
        end;
      end;
      Parameters.Refresh;
      Parameters.ParamByName(S_IDCat).Value := id_Ctg;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@ShortName').Value := ShortName;
      Parameters.ParamByName('@BarCode').Value := BarCode;

      Parameters.ParamByName('@Disabled').Value := Disabled;
      Parameters.ParamByName('@id_Measure').Value := id_Measure;

      Parameters.ParamByName('@GTD').Value := GTD;
      Parameters.ParamByName('@Country').Value := Country;
      Parameters.ParamByName('@DocNomCode').Value := DocNomCode;
      Parameters.ParamByName('@DocPriceCode').Value := DocPriceCode;
      Parameters.ParamByName('@DocArt').Value := DocArt;
      Parameters.ParamByName('@DocNumber').Value := DocNumber;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.WareEdit(AType, AID: Integer; id_Ctg, AName, ShortName,
  BarCode: OleVariant; Disabled: WordBool; id_Measure, GTD, Country,
  DocNomCode, DocPriceCode, DocArt, DocNumber: OleVariant): Integer;
var S_ID, S_IDCat : String;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'PL_GoodsEdit';
      S_ID := '@id_Goods';
      S_IDCat := '@id_Ctg_Goods';


      Parameters.Refresh;
      Parameters.ParamByName(S_ID).Value := AID;
      Parameters.ParamByName(S_IDCat).Value := id_Ctg;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@ShortName').Value := ShortName;
      Parameters.ParamByName('@BarCode').Value := BarCode;
      Parameters.ParamByName('@Disabled').Value := Disabled;
      Parameters.ParamByName('@id_Measure').Value := id_Measure;
      
      Parameters.ParamByName('@GTD').Value := GTD;
      Parameters.ParamByName('@Country').Value := Country;
      Parameters.ParamByName('@DocNomCode').Value := DocNomCode;
      Parameters.ParamByName('@DocPriceCode').Value := DocPriceCode;
      Parameters.ParamByName('@DocArt').Value := DocArt;
      Parameters.ParamByName('@DocNumber').Value := DocNumber;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.BsnByID(ID: OleVariant; out AName: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Dict_GetBusinessesProp';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@Id').Value := ID;
      try
        Open;
        if not IsEmpty then
        begin
          Result := 1;
          AName := FieldByName('Name').AsString;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.LC_OP_EmptyAdd(id_UserCreator: Integer; OperTypeIn: WordBool;
  id_DocType, Contract, OpComment: OleVariant; id_business: Integer;
  Imp_PayBasic, AccInv_PayAssignment: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'LC_OP_EmptyOperAdd';
      Parameters.Refresh;
      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;
      Parameters.ParamByName('@OperTypeIn').Value := OperTypeIn;
      Parameters.ParamByName('@Imp_PayBasic').Value := Imp_PayBasic;
      Parameters.ParamByName('@AccInv_PayAssignment').Value := AccInv_PayAssignment;

      Parameters.ParamByName('@id_DocType').Value := id_DocType;
      Parameters.ParamByName('@Contract').Value := Contract;
      Parameters.ParamByName('@OpComment').Value := OpComment;
      Parameters.ParamByName('@id_business').Value := id_business;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.LC_OP_EmptyEdit(id_LC_Oper, id_UserCreator: Integer;
  id_DocType, Contract, OpComment: OleVariant; id_business: Integer;
  Imp_PayBasic, AccInv_PayAssignment: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'LC_OP_EmptyOperEdit';
      Parameters.Refresh;
      Parameters.ParamByName('@id_LC_Oper').Value := id_LC_Oper;
      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;
      Parameters.ParamByName('@Imp_PayBasic').Value := Imp_PayBasic;
      Parameters.ParamByName('@AccInv_PayAssignment').Value := AccInv_PayAssignment;

      Parameters.ParamByName('@id_DocType').Value := id_DocType;
      Parameters.ParamByName('@Contract').Value := Contract;
      Parameters.ParamByName('@OpComment').Value := OpComment;
      Parameters.ParamByName('@id_business').Value := id_business;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;


function TDic.LC_OP_DEL(id_LC_Oper: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'LC_OP_OperDel';
      Parameters.Refresh;
      Parameters.ParamByName('@id_LC_Oper').Value := id_LC_Oper;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.SetUserForOper_Int(id_user: Variant; id_oper: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_OperSetUser';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@id_UserChecker').Value := id_user;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.SetUserForOper(id_user: OleVariant;
  id_oper: Integer): Integer;
begin
  Result := SetUserForOper_Int(id_user, id_oper);
end;

function TDic.OP_OperDel(id_Oper: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_OperDel';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;   
end;

function TDic.OP_OperSetCheckDate(id_Oper: Integer;
  id_UserChecker: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_OperSetCheckDate';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@id_UserChecker').Value := id_UserChecker;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.LC_Acc_Add(AName, id_Bsn, id_Group: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'LC_Acc_Add';
      Parameters.Refresh;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_Bsn').Value := id_Bsn;
      Parameters.ParamByName('@id_Group').Value := id_Group;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.LC_Acc_Edit(AID: Integer; AName,
  id_Group: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'LC_Acc_Edit';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Acc').Value := AID;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_Group').Value := id_Group;
      
      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.LC_WH_Add(AName, id_Bsn, id_Group: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'LC_WH_Add';
      Parameters.Refresh;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_Bsn').Value := id_Bsn;
      Parameters.ParamByName('@id_Group').Value := id_Group;
      
      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.LC_WH_Edit(AID: Integer; AName,
  id_Group: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'LC_WH_Edit';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Warehouse').Value := AID;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_Group').Value := id_Group;
      
      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.LC_MN_Add(AName, id_Bsn, id_Group: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'LC_MN_Add';
      Parameters.Refresh;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_Bsn').Value := id_Bsn;
      Parameters.ParamByName('@id_Group').Value := id_Group;
      
      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.LC_MN_Edit(AID: Integer; AName,
  id_Group: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'LC_MN_Edit';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Manufact').Value := AID;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_Group').Value := id_Group;
      
      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.CH_Checked(AID, ObjID: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'CH_Checked';
      Parameters.Refresh;
      Parameters.ParamByName('@ID').Value := AID;
      Parameters.ParamByName('@ObjID').Value := ObjID;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create('������ ��� ����������� �������. ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP_OperDelCheckDate(id_Oper: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_OperDelCheckDate';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;   
end;

function TDic.UNSel_AccBsn(Param1: OleVariant; var id_Bsn,
  id_Group: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'UNSel_AccBsn';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID').Value := Param1;
      try
        Open;
        if not IsEmpty then
        begin
          Result := 1;
          id_Bsn := FieldByName('id_business').AsInteger;
          id_Group := FieldByName('id_Group').Value;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.UNSel_WHBsn(Param1: OleVariant; var id_Bsn,
  id_Group: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'UNSel_WHBsn';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID').Value := Param1;
      try
        Open;
        if not IsEmpty then
        begin
          Result := 1;
          id_Bsn := FieldByName('id_business').AsInteger;
          id_Group := FieldByName('id_Group').Value;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.UNSel_ManufBsn(Param1: OleVariant; var id_Bsn,
  id_Group: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'UNSel_ManufBsn';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID').Value := Param1;
      try
        Open;
        if not IsEmpty then
        begin
          id_Bsn := FieldByName('id_business').AsInteger;
          id_Group := FieldByName('id_Group').Value;
          Result := 1;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.UNSel_CABsn(Param1: Integer; out isOwn: WordBool;
  out id_CAGroup: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'UNSel_CABsn';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID').Value := Param1;
      try
        Open;
        if not IsEmpty then
        begin
          Result := FieldByName('id_business').AsInteger;
          isOwn := FieldByName('isOwn').AsBoolean;
          id_CAGroup := FieldByName('id_CAGroup').Value;
        end
        else
        begin
          Result := -1;
          isOwn := false;
          id_CAGroup := Null;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.UNSel_ReprBsn_v2(Param1: Integer; var isOwn: WordBool;
  var id_CAGroup, id_Ca, id_Repr_Group, id_Bsn: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'UNSel_ReprBsn';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID').Value := Param1;
      try
        Open;
        if not IsEmpty then
        begin
          id_Bsn := FieldByName('id_business').AsInteger;
          isOwn := FieldByName('isOwn').AsBoolean;
          id_CAGroup := FieldByName('id_CAGroup').Value;
          id_Ca := FieldByName('id_Ca').Value;
          id_Repr_Group := FieldByName('id_Repr_Group').Value;
          Result := 1;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.UNSel_EQBsn(Param1: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'UNSel_EQBsn';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID').Value := Param1;
      try
        Open;
        if not IsEmpty then
        begin
          Result := FieldByName('id_business').AsInteger;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.UN_Del(AID: Integer; AProcedureName : String): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := AProcedureName;
    try
      Close;
      Parameters.Refresh;
      ADOStoredProc1.Parameters[1].Value := AID;
      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create('������ ��� �������� - ' + E.Message);
      end;
    end;
  end;
end;

function TDic.PL_Ctg_GoodsDel(Param1: Integer): Integer;
begin
  Result := UN_Del(Param1, 'PL_Ctg_GoodsDel');
end;

function TDic.PL_GoodsDel(Param1: Integer): Integer;
begin
  Result := UN_Del(Param1, 'PL_GoodsDel');
end;

function TDic.CA_ContrAgentDel(Param1: Integer): Integer;
begin
  Result := UN_Del(Param1, 'CA_ContrAgentDel');
end;

function TDic.CA_ReprDel(Param1: Integer): Integer;
begin
  Result := UN_Del(Param1, 'CA_ReprDel');
end;

function TDic.UNSel_PL_GoodsInf(Param1: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'UNSel_PL_GoodsInf';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID').Value := Param1;
      try
        Open;
        if not IsEmpty then
        begin
          Result := FieldByName('id_business').AsInteger;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);

      end;
    end;
  end;
end;

function TDic.OP_OperSetOperState(id_Oper, OperState: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_OperSetOperState';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@OperState').Value := OperState;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.BsnNumByID(AID: Integer; var Param2: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'UN_BusinessGetNum';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := AID;
      try
        Open;
        if not IsEmpty then
        begin
          Result := 1;
          Param2 := FieldByName('Num').AsString;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.CheckGoods(Param1: OleVariant): Integer;
begin
  Result := CheckWare('UNSel_PL_GoodsExists', Param1);
end;

function TDic.CheckWare(AProcName : String; AID: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := AProcName;
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@BarCode').Value := AID;
      try
        Open;
        if not IsEmpty then
        begin
          Result := FieldByName('ID').AsInteger;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;


function TDic.PL_GetDefsWare(AProcName : String; AID_Ctg: Integer; out Price, ID_Cur: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := AProcName;
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID_Ctg').Value := AID_Ctg;
      try
        Open;
        if not IsEmpty then
        begin
          Result := 1;
          Price := FieldByName('DefPrice').Value;
          ID_Cur := FieldByName('Id_Currency').Value;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.PL_GetDefPriceWare(AProcName : String; AID: Integer; ID_Warehouse: OleVariant; out Price, ID_Cur: OleVariant; out TotalAmount: Double): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := AProcName;
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID').Value := AID;
      if Parameters.FindParam('@ID_Warehouse') <> nil then
        Parameters.ParamByName('@ID_Warehouse').Value := ID_Warehouse;

      try
        Open;
    //    if not IsEmpty then
        begin
          Result := 1;
          Price := FieldByName('Price').Value;
          ID_Cur := FieldByName('Id_Currency').Value;
          TotalAmount := FieldByName('TotalAmount').AsFloat;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.PL_GetDefsGoods(AID_Ctg: Integer; out Price,
  ID_Cur: OleVariant): Integer;
begin
  Result := PL_GetDefsWare('PL_GetDefsGoods', AID_Ctg, Price, ID_Cur);
end;

function TDic.PL_GetDefPriceGoods(AID_Ctg: Integer;
  ID_Warehouse: OleVariant; out Price, ID_Cur: OleVariant;
  out TotalAmount: Double): Integer;
begin
  Result := PL_GetDefPriceWare('PL_GetDefPriceGoods', AID_Ctg, ID_Warehouse, Price, ID_Cur, TotalAmount);
end;

function TDic.OP_OperGetEditID(id_OperParent: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'OP_OperGetEditID';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_OperParent').Value := id_OperParent;
      try
        Open;
        if not IsEmpty then
        begin
          if not FieldByName('id_Oper').IsNull then
            Result := FieldByName('id_Oper').AsInteger;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP_DoOk(id_Oper: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'OP_DoOk';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      try
        ExecProc;
        Result := 1;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP_DoCancel(id_Oper: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'OP_DoCancel';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      try
        ExecProc;
        Result := 1;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.LNK_ReLink(AProcedureName : String; id_Old, id_New: Integer): WordBool;
begin
  Result := false;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := AProcedureName;
    try
      Close;
      Parameters.Refresh;
      Parameters[1].Value := id_Old;
      Parameters[2].Value := id_New;
      try
        ExecProc;
        Result := true;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := false;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.LNK_Acc(id_Old, id_New: Integer): WordBool;
begin
  Result := LNK_ReLink('LNK_Acc', id_Old, id_New);
end;

function TDic.LNK_Warehouse(id_Old, id_New: Integer): WordBool;
begin
  Result := LNK_ReLink('LNK_Warehouse', id_Old, id_New);
end;

function TDic.LNK_Repr(id_Old, id_New: Integer): WordBool;
begin
  Result := LNK_ReLink('LNK_Repr', id_Old, id_New);
end;

function TDic.LNK_Manufact(id_Old, id_New: Integer): WordBool;
begin
  Result := LNK_ReLink('LNK_Manufact', id_Old, id_New);
end;

function TDic.LNK_Goods(id_Old, id_New: Integer): WordBool;
begin
  Result := LNK_ReLink('LNK_Goods', id_Old, id_New);
end;

function TDic.OP_BuffAdd(AName: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'OP_BuffAdd';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_User').Value := Fid_User;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP_BuffDel(id_Buff: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'OP_BuffDel';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Buff').Value := id_Buff;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP_BuffEdit(id_Buff: Integer; AName: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'OP_BuffEdit';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Buff').Value := id_Buff;
      Parameters.ParamByName('@Name').Value := AName;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.PL_UN_WareCtgGetProp(id_Ctg, ID_TYPE: Integer): OleVariant;
begin
  Result := '';
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'PL_UN_WareCtgGetProp';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Ctg').Value := id_Ctg;
      Parameters.ParamByName('@ID_TYPE').Value := ID_TYPE;

      Open;
      Result := fieldByName('Name').AsString;
    except
      on E : Exception do
      begin
        Result := '';
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.CA_CAGroupGetProp(id_CAGroup: OleVariant): OleVariant;
begin
  Result := '';
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'CA_CAGroupGetProp';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_CAGroup').Value := id_CAGroup;

      Open;
      Result := fieldByName('Name').AsString;
    except
      on E : Exception do
      begin
        Result := '';
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

procedure TDic.CA_CAGetProp(id_ContrAgent: OleVariant; out AName,
  id_Bsn: OleVariant);
begin
//  Result := '';
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'CA_ContrAgentGetProp';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_ContrAgent').Value := id_ContrAgent;

      Open;
      AName := fieldByName('Name').AsString;
      id_Bsn := fieldByName('id_business').AsInteger;
    except
      on E : Exception do
      begin
  //      Result := '';
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.PL_GetAccSum(id_Acc: Integer; out TotalSum: Double): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'PL_GetAccSum';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID').Value := id_Acc;
      try
        Open;
         Result := 1;
        TotalSum := FieldByName('RBL_TotalSum').AsFloat;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.DD_DayOpen(id_business: Integer;
  VirtDate: TDateTime): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'DD_DayOpen';
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@VirtDate').Value := VirtDate;
      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.DD_DayClose(id_business: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'DD_DayClose';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      try
        ExecProc;
        Result := 1;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.DD_DayGetProp(id_business: Integer): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'DD_DayGetProp';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;

      Open;
      Result := fieldByName('VirtDate').Value;
      Close;
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP_FuncDistribAdd(AName: OleVariant;
  id_Bsn: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_FuncDistribAdd';
      Parameters.Refresh;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_Bsn').Value := id_Bsn;
      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.OP_FuncDistribDel(id_FuncDistrib: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_FuncDistribDel';
      Parameters.Refresh;
      Parameters.ParamByName('@id_FuncDistrib').Value := id_FuncDistrib;
      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.OP_FuncDistribEdit(id_FuncDistrib: Integer;
  AName: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_FuncDistribEdit';
      Parameters.Refresh;
      Parameters.ParamByName('@id_FuncDistrib').Value := id_FuncDistrib;
      Parameters.ParamByName('@Name').Value := AName;
      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.OP_FormalDistribAdd(AName: OleVariant;
  id_Bsn: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_FormalDistribAdd';
      Parameters.Refresh;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_Bsn').Value := id_Bsn;
      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.OP_FormalDistribDel(id_FormalDistrib: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_FormalDistribDel';
      Parameters.Refresh;
      Parameters.ParamByName('@id_FormalDistrib').Value := id_FormalDistrib;
      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.OP_FormalDistribEdit(id_FormalDistrib: Integer;
  AName: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_FormalDistribEdit';
      Parameters.Refresh;
      Parameters.ParamByName('@id_FormalDistrib').Value := id_FormalDistrib;
      Parameters.ParamByName('@Name').Value := AName;
      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.GetWH(ID: Integer; var ANAme, ABsnName, id_Business: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'ADM_GetWhouseInfo';
      Parameters.Refresh;
      Parameters.ParamByName('@Id').Value := ID;
      Open;
      try
        if not IsEmpty then
        begin
          ANAme := FieldByName('Name').AsString;
          ABsnName := FieldByName('BusinessName').AsString;
          id_Business := FieldByName('id_Business').Value;
          Result := 1;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.GetOperNum(id_oper: Integer): OleVariant;
begin
  Result := '';
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_OperGetProp';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      try
        Open;
        if not IsEmpty then
        begin
          Result := FieldByName('OperNum').AsString;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Rights_GetUserRights(id_Func: Integer;
  id_Business: OleVariant; id_User: Integer): Integer;
begin
  Result := 0;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Rights_GetUserRights';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Func').Value := id_Func;
      Parameters.ParamByName('@id_Business').Value := id_Business;
      Parameters.ParamByName('@id_User').Value := id_User;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := 0;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Rights_GetFuncName(id_Func: Integer): OleVariant;
begin
  Result := '';
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Rights_GetFuncName';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Func').Value := id_Func;

      Open;
      try
        if not IsEmpty then
          Result := FieldbyName('Name').AsString;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := '';
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP_Oper_ExtDataNamesEdit(id_Oper_ExtDataNames, id_business,
  AType, NumPrm: Integer; ParName: OleVariant;
  AVisible, NeedSend: WordBool; OrdNum : OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'OP_Oper_ExtDataNamesEdit';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper_ExtDataNames').Value := id_Oper_ExtDataNames;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@Type').Value := AType;
      Parameters.ParamByName('@NumPrm').Value := NumPrm;
      Parameters.ParamByName('@ParName').Value := ParName;
      Parameters.ParamByName('@Visible').Value := AVisible;
      Parameters.ParamByName('@NeedSend').Value := NeedSend;
      Parameters.ParamByName('@OrdNum').Value := OrdNum;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.UN_Check_Ctg_Ware(WareType, id_business: Integer; id_Ctg,
  AName, id_real: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'UN_Check_Ctg_Ware_Goods';
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@id_Ctg').Value := id_Ctg;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_real').Value := id_real;

      try
        Open;
        if IsEmpty then
        begin
          Result := 1;
       //   Result := FieldByName('ID').AsInteger;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.UN_Check_Ware(WareType: Integer; id_Ctg, AName,
  id_real: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'UN_Check_Ware_Goods';

      Parameters.Refresh;
      Parameters.ParamByName('@id_Ctg').Value := id_Ctg;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_real').Value := id_real;

      try
        Open;
        if IsEmpty then
        begin
          Result := 1;
//          Result := FieldByName('ID').AsInteger;
//          AShortName := FieldByName('ShortName').AsString;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.UN_Check_CAGroup(id_business: Integer; AName,
  id_Real: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'UN_Check_CAGroup';

      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_real').Value := id_real;

      try
        Open;
        if IsEmpty then
        begin
          Result := 1;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.UN_Check_CA_ContrAgent(id_business: Integer; AName,
  id_Real: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'UN_Check_CA_ContrAgent';

      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_real').Value := id_real;

      try
        Open;
        if IsEmpty then
        begin
          Result := 1;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.UN_Check_CA_Repr(id_ContrAgent: Integer; AName,
  id_Real: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'UN_Check_CA_Repr';

      Parameters.Refresh;
      Parameters.ParamByName('@id_ContrAgent').Value := id_ContrAgent;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_real').Value := id_real;

      try
        Open;
        if IsEmpty then
        begin
          Result := 1;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;


function TDic.UN_Sel_PL_GoodsCtg(AID: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'UN_Sel_PL_GoodsCtg';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID').Value := AID;
      try
        Open;
        if not IsEmpty then
        begin
          Result := FieldByName('ID').AsInteger;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;


function TDic.LC_OP_OperSetCheckDate(id_LC_Oper: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_LC_OperSetCheckDate';
      Parameters.Refresh;
      Parameters.ParamByName('@id_LC_Oper').Value := id_LC_Oper;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;   
end;

function TDic.LC_OP_OperDelCheckDate(id_LC_Oper: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_LC_OperDeltCheckDate';
      Parameters.Refresh;
      Parameters.ParamByName('@id_LC_Oper').Value := id_LC_Oper;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;   
end;

procedure TDic.LC_SetBaseName(AName: OleVariant);
begin
  FDataBaseName := AName;
end;

function TDic.CH_Deleted(AID, AObjID: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'CH_Deleted';
      Parameters.Refresh;
      Parameters.ParamByName('@ID').Value := AID;
      Parameters.ParamByName('@ObjID').Value := AObjID;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;   
end;

function TDic.RP_WHStateDates_Get: OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'RP_WHStateDates_Get';
    try
      Close;
      Parameters.Refresh;
      try
        Open;
        if not IsEmpty then
        begin
          if not FieldByName('DateCreate').IsNull then
            Result := FieldByName('DateCreate').AsDateTime;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.xxx_Group_Check_v2(ObjID, id_business: Integer; AName,
  id_real: OleVariant; PID: Integer): Integer;
var PPP : TParameter;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    case ObjID of
      0 : ProcedureName := 'UN_Check_AccGroup_v2';
      1 : ProcedureName := 'UN_Check_ReprGroup_v2';
      2 : ProcedureName := 'UN_Check_MNGroup_v2';
      3 : ProcedureName := 'UN_Check_WHGroup_v2';
    end;
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_real').Value := id_real;
      PPP := Parameters.FindParam('@PID');
      if PPP <> nil then
      begin
        if PID <> -1 then
          PPP.Value := PID
        else
          PPP.Value := Null;
      end;
      try
        Open;
        if IsEmpty then
          Result := 1;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.xxx_Group_Add_v2(ObjID, id_business: Integer;
  AName: OleVariant; ShowInRoot: WordBool; PID: Integer): Integer;
var PPP : TParameter;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      case ObjID of
        0 : ProcedureName := 'Acc_Group_Add_v2';
        1 : ProcedureName := 'CA_Repr_Group_Add_v2';
        2 : ProcedureName := 'MN_Group_Add_v2';
        3 : ProcedureName := 'WH_Group_Add_v2';
      end;
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@Name').Value := AName;
      if Parameters.FindParam('@ShowInRoot') <> nil then
        Parameters.ParamByName('@ShowInRoot').Value := ShowInRoot;
      PPP := Parameters.FindParam('@PID');
      if PPP <> nil then
      begin
        if PID <> -1 then
          PPP.Value := PID
        else
          PPP.Value := Null;
      end;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.xxx_Group_Edit_v2(ObjID, id_Group: Integer;
  AName: OleVariant; ShowInRoot: WordBool; PID: Integer): Integer;
var PPP : TParameter;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      case ObjID of
        0 : ProcedureName := 'Acc_Group_Edit_v2';
        1 : ProcedureName := 'CA_Repr_Group_Edit_v2';
        2 : ProcedureName := 'MN_Group_Edit_v2';
        3 : ProcedureName := 'WH_Group_Edit_v2';
      end;
      Parameters.Refresh;
      case ObjID of
        0 : Parameters.ParamByName('@id_Acc_Group').Value := id_Group;
        1 : Parameters.ParamByName('@id_Repr_Group').Value := id_Group;
        2 : Parameters.ParamByName('@id_Manufact_Group').Value := id_Group;
        3 : Parameters.ParamByName('@id_WareHouse_Group').Value := id_Group;
      end;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@ShowInRoot').Value := ShowInRoot;

      PPP := Parameters.FindParam('@PID');
      if PPP <> nil then
      begin
        if PID <> -1 then
          PPP.Value := PID
        else
          PPP.Value := Null;
      end;
      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.xxx_Group_Del_v2(ObjID, id_Group: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      case ObjID of
        0 : ProcedureName := 'Acc_Group_Del_v2';
        1 : ProcedureName := 'CA_Repr_Group_Del_v2';
        2 : ProcedureName := 'MN_Group_Del_v2';
        3 : ProcedureName := 'WH_Group_Del_v2';
      end;
      Parameters.Refresh;
      case ObjID of
        0 : Parameters.ParamByName('@id_Acc_Group').Value := id_Group;
        1 : Parameters.ParamByName('@id_Repr_Group').Value := id_Group;
        2 : Parameters.ParamByName('@id_Manufact_Group').Value := id_Group;
        3 : Parameters.ParamByName('@id_WareHouse_Group').Value := id_Group;
      end;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.xxx_SetGrp(ObjID, AID: Integer;
  id_Group: OleVariant): Integer;
begin
  Result := -1;
  if id_Group = -1 then id_Group := Null;
  with ADOStoredProc1 do
  begin
    try
      Close;
      case ObjID of
        0 : ProcedureName := 'Acc_SetGrp';
        1 : ProcedureName := 'CA_Repr_SetGrp';
        2 : ProcedureName := 'Mn_SetGrp';
        3 : ProcedureName := 'WH_SetGrp';
      end;
      Parameters.Refresh;
      case ObjID of
        0 :
        begin
          Parameters.ParamByName('@id_Acc').Value := AID;
          Parameters.ParamByName('@id_Acc_Group').Value := id_Group;
        end;
        1 :
        begin
          Parameters.ParamByName('@id_Repr').Value := AID;
          Parameters.ParamByName('@id_Repr_Group').Value := id_Group;
        end;
        2 :
        begin
          Parameters.ParamByName('@id_Manufact').Value := AID;
          Parameters.ParamByName('@id_Manufact_Group').Value := id_Group;
        end;
        3 :
        begin
          Parameters.ParamByName('@id_WareHouse').Value := AID;
          Parameters.ParamByName('@id_WareHouse_Group').Value := id_Group;
        end;
      end;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Acc_Del(ID_Acc: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Acc_Del';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID_Acc').Value := ID_Acc;
      ExecProc;

      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create('������ ��� �������� ����� - ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Acc_Edit(id_Acc, AccName, Bank, id_business, PrsnAccName,
  CorrAccName, Inn, BIK, Disabled: OleVariant; NeedSend: WordBool;
  id_Group: OleVariant; ShowInRoot: WordBool): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Acc_Edit';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@Id').Value:=Id_acc;
      Parameters.ParamByName('@Name').Value:=AccName;
      Parameters.ParamByName('@Bank').Value:=Bank;
      Parameters.ParamByName('@id_Business').Value:=id_Business;
      Parameters.ParamByName('@PrsnAccName').Value:=PrsnAccName ;
      Parameters.ParamByName('@CorrAccName').Value:=CorrAccName;
      Parameters.ParamByName('@Inn').Value:=Inn;
      Parameters.ParamByName('@Bik').Value:=Bik;
      Parameters.ParamByName('@Disabled').Value:=Disabled;
      Parameters.ParamByName('@NeedSend').Value:=NeedSend;
      Parameters.ParamByName('@id_Acc_Group').Value:=id_Group;
      Parameters.ParamByName('@ShowInRoot').Value := ShowInRoot;
      ExecProc;

      if Id_acc = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.MN_Del(id_MN: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'MN_Del';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID_Manufact').Value := id_MN;
      ExecProc;

      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create('������ ��� �������� - ' + E.Message);
      end;
    end;
  end;
end;

function TDic.MN_Edit(id_Manufact, ManufactName, id_business, Addr,
  Disabled: OleVariant; NeedSend: WordBool; id_Group: OleVariant;
  ShowInRoot: WordBool): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'MN_Edit';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID_Manufact').Value:=ID_Manufact;
      Parameters.ParamByName('@Name').Value:=ManufactName;
      Parameters.ParamByName('@id_Business').Value:=id_Business;
      Parameters.ParamByName('@Addr').Value:=Addr ;
      Parameters.ParamByName('@Disabled').Value:=Disabled;
      Parameters.ParamByName('@NeedSend').Value:=NeedSend;
      Parameters.ParamByName('@id_Manufact_Group').Value:=id_Group;
      Parameters.ParamByName('@ShowInRoot').Value := ShowInRoot;
      ExecProc;

      if ID_Manufact = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.WH_Del(id_WH: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'WH_Del';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID_WareHouse').Value := id_WH;
      ExecProc;

      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create('������ ��� �������� - ' + E.Message);
      end;
    end;
  end;
end;

function TDic.WH_Edit(id_Warehouse, AName, id_business, Addr,
  Disabled: OleVariant; NeedSend: WordBool; id_Group: OleVariant;
  ShowInRoot: WordBool): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'WH_Edit';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID_WareHouse').Value:=ID_WareHouse;
      Parameters.ParamByName('@Name').Value:=AName;
      Parameters.ParamByName('@id_Business').Value:=id_Business;
      Parameters.ParamByName('@Addr').Value:=Addr ;
      Parameters.ParamByName('@Disabled').Value:=Disabled;
      Parameters.ParamByName('@NeedSend').Value:=NeedSend;
      Parameters.ParamByName('@ID_WareHouse_Group').Value:=id_Group;
      Parameters.ParamByName('@ShowInRoot').Value := ShowInRoot;
      ExecProc;

      if ID_WareHouse = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.UNSel_ReprBsn(Param1: Integer; var isOwn: WordBool;
  var id_CAGroup, id_Ca: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'UNSel_ReprBsn';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID').Value := Param1;
      try
        Open;
        if not IsEmpty then
        begin
          Result := FieldByName('id_business').AsInteger;
          isOwn := FieldByName('isOwn').AsBoolean;
          id_CAGroup := FieldByName('id_CAGroup').Value;
          id_Ca := FieldByName('id_Ca').Value;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.ReprAdd_LC(isJur: WordBool; AName, FirstName, MiddleName,
  LastName, Id_Currency: OleVariant; Disabled: WordBool; Addr, Descr,
  id_Bsn_ex, id_Group: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'CA_LC_ReprAdd';
      Parameters.Refresh;
      Parameters.ParamByName('@isJur').Value := isJur;
      Parameters.ParamByName('@Name').Value := AName;

      Parameters.ParamByName('@FirstName').Value := FirstName;
      Parameters.ParamByName('@MiddleName').Value := MiddleName;
      Parameters.ParamByName('@LastName').Value := LastName;

      Parameters.ParamByName('@Id_Currency').Value := Id_Currency;
      Parameters.ParamByName('@Disabled').Value := Disabled;
      Parameters.ParamByName('@Addr').Value := Addr;
      Parameters.ParamByName('@Descr').Value := Descr;
      Parameters.ParamByName('@id_Bsn_ex').Value := id_Bsn_ex;
      Parameters.ParamByName('@id_Group').Value := id_Group;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.ReprEdit_LC(id_Repr: Integer; isJur: WordBool; AName,
  FirstName, MiddleName, LastName, Id_Currency: OleVariant;
  Disabled: WordBool; Addr, Descr, id_Group: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'CA_LC_ReprEdit';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Repr').Value := id_Repr;

      Parameters.ParamByName('@isJur').Value := isJur;
      Parameters.ParamByName('@Name').Value := AName;

      Parameters.ParamByName('@FirstName').Value := FirstName;
      Parameters.ParamByName('@MiddleName').Value := MiddleName;
      Parameters.ParamByName('@LastName').Value := LastName;

      Parameters.ParamByName('@Id_Currency').Value := Id_Currency;
      Parameters.ParamByName('@Disabled').Value := Disabled;
      Parameters.ParamByName('@id_Group').Value := id_Group;
      Parameters.ParamByName('@Addr').Value := Addr;
      Parameters.ParamByName('@Descr').Value := Descr;


      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.GetAccName(id_Acc: Integer): OleVariant;
begin
  Result := '';
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'GetName_Acc';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Acc').Value := id_Acc;
      try
        Open;
        if not IsEmpty then
          Result := FieldByName('Name').AsString;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.GetAccGroupName(id_Acc_Group: Integer): OleVariant;
begin
  Result := '';
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'GetName_AccGroup';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Acc_Group').Value := id_Acc_Group;
      try
        Open;
        if not IsEmpty then
          Result := FieldByName('Name').AsString;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.GetWHGroupName(id_WHGroup: Integer): OleVariant;
begin
  Result := '';
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'GetName_WHGroup';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_WareHouse_Group').Value := id_WHGroup;
      try
        Open;
        if not IsEmpty then
          Result := FieldByName('Name').AsString;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.GetWHName(id_WH: Integer): OleVariant;
begin
  Result := '';
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'GetName_WH';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_WH').Value := id_WH;
      try
        Open;
        if not IsEmpty then
          Result := FieldByName('Name').AsString;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.GetCAName(ID_CA: Integer): OleVariant;
begin
  Result := '';
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'GetName_CA';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_ContrAgent').Value := ID_CA;
      try
        Open;
        if not IsEmpty then
          Result := FieldByName('Name').AsString;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.GetCAGroupName(id_CAGroup: Integer): OleVariant;
begin
  Result := '';
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'GetName_CAGroup';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_CAGroup').Value := id_CAGroup;
      try
        Open;
        if not IsEmpty then
          Result := FieldByName('Name').AsString;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.DD_MaxDay(id_business: Integer): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'DD_MaxDay';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;

      Open;
      Result := fieldByName('VirtDate').Value;
      Close;
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP_OperAdd_v2(OperVid: Integer; id_business: OleVariant;
  Correct, OperTypeIn: WordBool; Id_CurrencyOper, PriceFinOper: OleVariant;
  RateOper: Double; Id_CurrencySys, SummSysFin, RateSys, id_Repr, id_Acc,
  id_Acc_Ext, id_Warehouse, id_Warehouse_Ext, id_Manufact, id_Manufact_Ext,
  id_FormalDistrib, id_FuncDistrib, Koeff, Id_CurrencyInv,
  id_OperParent: OleVariant; OperState: Integer; id_UserCreator,
  id_DocType, Imp_PayBasic, AccInv_PayAssignment, Contract, OpComment,
  Dig1, Dig2, Dig3, Dig4, Dig5, Dig6, Dig7, Dig8, Dig9, Dig10, Dig11,
  Dig12, Dig13, Dig14, Dig15, Str1, Str2, Str3, Str4, Str5, Str6, Str7,
  Str8, Str9, Str10, Str11, Str12, Str13, Str14, Str15, Date1, Date2,
  Date3, Date4, Date5, Date6, Date7, Date8, Date9, Date10, Date11, Date12,
  Date13, Date14, Date15: OleVariant; VatIn: WordBool; AutoGen: OleVariant;
  out RetVal: Integer): Integer;
begin
  if VarType(AutoGen) = varError then AutoGen := false;
  Result := -1;
  with spOperAdd_v2 do
  begin
    try
      Close;
      Parameters.ParamByName('@OperVid').Value := OperVid;
      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@Correct').Value := Correct;
      Parameters.ParamByName('@OperTypeIn').Value := OperTypeIn;
      Parameters.ParamByName('@Id_CurrencyOper').Value := Id_CurrencyOper;
      Parameters.ParamByName('@PriceFinOper').Value := PriceFinOper;
      Parameters.ParamByName('@RateOper').Value := RateOper;
      Parameters.ParamByName('@Id_CurrencySys').Value := Id_CurrencySys;
      Parameters.ParamByName('@SummSysFin').Value := SummSysFin;
      Parameters.ParamByName('@RateSys').Value := RateSys;
      Parameters.ParamByName('@id_Repr').Value := id_Repr;
      Parameters.ParamByName('@id_Acc').Value := id_Acc;
      Parameters.ParamByName('@id_Acc_Ext').Value := id_Acc_Ext;
      Parameters.ParamByName('@id_Warehouse').Value := id_Warehouse;
      Parameters.ParamByName('@id_Warehouse_Ext').Value := id_Warehouse_Ext;
      Parameters.ParamByName('@id_Manufact').Value := id_Manufact;
      Parameters.ParamByName('@id_Manufact_Ext').Value := id_Manufact_Ext;

      Parameters.ParamByName('@id_FormalDistrib').Value := id_FormalDistrib;
      Parameters.ParamByName('@id_FuncDistrib').Value := id_FuncDistrib;
      Parameters.ParamByName('@Koeff').Value := Koeff;
      
      Parameters.ParamByName('@Id_CurrencyInv').Value := Id_CurrencyInv;
      Parameters.ParamByName('@id_OperParent').Value := id_OperParent;
      Parameters.ParamByName('@OperState').Value := OperState;

      Parameters.ParamByName('@id_DocType').Value := id_DocType;
      Parameters.ParamByName('@Imp_PayBasic').Value := Imp_PayBasic;
      Parameters.ParamByName('@AccInv_PayAssignment').Value := AccInv_PayAssignment;
      Parameters.ParamByName('@Contract').Value := Contract;
      Parameters.ParamByName('@OpComment').Value := OpComment;

      Parameters.ParamByName('@Dig1').Value := Dig1;
      Parameters.ParamByName('@Dig2').Value := Dig2;
      Parameters.ParamByName('@Dig3').Value := Dig3;
      Parameters.ParamByName('@Dig4').Value := Dig4;
      Parameters.ParamByName('@Dig5').Value := Dig5;
      Parameters.ParamByName('@Dig6').Value := Dig6;
      Parameters.ParamByName('@Dig7').Value := Dig7;
      Parameters.ParamByName('@Dig8').Value := Dig8;
      Parameters.ParamByName('@Dig9').Value := Dig9;
      Parameters.ParamByName('@Dig10').Value := Dig10;
      Parameters.ParamByName('@Dig11').Value := Dig11;
      Parameters.ParamByName('@Dig12').Value := Dig12;
      Parameters.ParamByName('@Dig13').Value := Dig13;
      Parameters.ParamByName('@Dig14').Value := Dig14;
      Parameters.ParamByName('@Dig15').Value := Dig15;

      Parameters.ParamByName('@Str1').Value := Str1;
      Parameters.ParamByName('@Str2').Value := Str2;
      Parameters.ParamByName('@Str3').Value := Str3;
      Parameters.ParamByName('@Str4').Value := Str4;
      Parameters.ParamByName('@Str5').Value := Str5;
      Parameters.ParamByName('@Str6').Value := Str6;
      Parameters.ParamByName('@Str7').Value := Str7;
      Parameters.ParamByName('@Str8').Value := Str8;
      Parameters.ParamByName('@Str9').Value := Str9;
      Parameters.ParamByName('@Str10').Value := Str10;
      Parameters.ParamByName('@Str11').Value := Str11;
      Parameters.ParamByName('@Str12').Value := Str12;
      Parameters.ParamByName('@Str13').Value := Str13;
      Parameters.ParamByName('@Str14').Value := Str14;
      Parameters.ParamByName('@Str15').Value := Str15;

      Parameters.ParamByName('@Date1').Value := Date1;
      Parameters.ParamByName('@Date2').Value := Date2;
      Parameters.ParamByName('@Date3').Value := Date3;
      Parameters.ParamByName('@Date4').Value := Date4;
      Parameters.ParamByName('@Date5').Value := Date5;
      Parameters.ParamByName('@Date6').Value := Date6;
      Parameters.ParamByName('@Date7').Value := Date7;
      Parameters.ParamByName('@Date8').Value := Date8;
      Parameters.ParamByName('@Date9').Value := Date9;
      Parameters.ParamByName('@Date10').Value := Date10;
      Parameters.ParamByName('@Date11').Value := Date11;
      Parameters.ParamByName('@Date12').Value := Date12;
      Parameters.ParamByName('@Date13').Value := Date13;
      Parameters.ParamByName('@Date14').Value := Date14;
      Parameters.ParamByName('@Date15').Value := Date15;

      Parameters.ParamByName('@VatIn').Value := VatIn;
      Parameters.ParamByName('@AutoGen').Value := AutoGen;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP_OperEdit_v2(id_Oper, OperVid: Integer;
  id_business: OleVariant; Correct, OperTypeIn: WordBool; Id_CurrencyOper,
  PriceFinOper: OleVariant; RateOper: Double; Id_CurrencySys, SummSysFin,
  RateSys, id_Repr, id_Acc, id_Acc_Ext, id_Warehouse, id_Warehouse_Ext,
  id_Manufact, id_Manufact_Ext, id_FormalDistrib, id_FuncDistrib, Koeff,
  Id_CurrencyInv, id_OperParent: OleVariant; OperState: Integer;
  id_UserCreator, id_DocType, Imp_PayBasic, AccInv_PayAssignment, Contract,
  OpComment, Dig1, Dig2, Dig3, Dig4, Dig5, Dig6, Dig7, Dig8, Dig9, Dig10,
  Dig11, Dig12, Dig13, Dig14, Dig15, Str1, Str2, Str3, Str4, Str5, Str6,
  Str7, Str8, Str9, Str10, Str11, Str12, Str13, Str14, Str15, Date1, Date2,
  Date3, Date4, Date5, Date6, Date7, Date8, Date9, Date10, Date11, Date12,
  Date13, Date14, Date15, CheckDate: OleVariant; VatIn: WordBool;
  AutoGen: OleVariant; out RetVal: Integer): Integer;
begin
  if VarType(AutoGen) = varError then AutoGen := false;
  Result := -1;
  with spOperEdit_v2 do
  begin
    try
      Close;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;

      Parameters.ParamByName('@OperVid').Value := OperVid;
      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@Correct').Value := Correct;
      Parameters.ParamByName('@OperTypeIn').Value := OperTypeIn;
      Parameters.ParamByName('@Id_CurrencyOper').Value := Id_CurrencyOper;
      Parameters.ParamByName('@PriceFinOper').Value := PriceFinOper;
      Parameters.ParamByName('@RateOper').Value := RateOper;
      Parameters.ParamByName('@Id_CurrencySys').Value := Id_CurrencySys;
      Parameters.ParamByName('@SummSysFin').Value := SummSysFin;
      Parameters.ParamByName('@RateSys').Value := RateSys;
      Parameters.ParamByName('@id_Repr').Value := id_Repr;
      Parameters.ParamByName('@id_Acc').Value := id_Acc;
      Parameters.ParamByName('@id_Acc_Ext').Value := id_Acc_Ext;
      Parameters.ParamByName('@id_Warehouse').Value := id_Warehouse;
      Parameters.ParamByName('@id_Warehouse_Ext').Value := id_Warehouse_Ext;
      Parameters.ParamByName('@id_Manufact').Value := id_Manufact;
      Parameters.ParamByName('@id_Manufact_Ext').Value := id_Manufact_Ext;

      Parameters.ParamByName('@id_FormalDistrib').Value := id_FormalDistrib;
      Parameters.ParamByName('@id_FuncDistrib').Value := id_FuncDistrib;
      Parameters.ParamByName('@Koeff').Value := Koeff;
      
      Parameters.ParamByName('@Id_CurrencyInv').Value := Id_CurrencyInv;
      Parameters.ParamByName('@id_OperParent').Value := id_OperParent;
      Parameters.ParamByName('@OperState').Value := OperState;

      Parameters.ParamByName('@id_DocType').Value := id_DocType;
      Parameters.ParamByName('@Imp_PayBasic').Value := Imp_PayBasic;
      Parameters.ParamByName('@AccInv_PayAssignment').Value := AccInv_PayAssignment;
      Parameters.ParamByName('@Contract').Value := Contract;
      Parameters.ParamByName('@OpComment').Value := OpComment;

      Parameters.ParamByName('@Dig1').Value := Dig1;
      Parameters.ParamByName('@Dig2').Value := Dig2;
      Parameters.ParamByName('@Dig3').Value := Dig3;
      Parameters.ParamByName('@Dig4').Value := Dig4;
      Parameters.ParamByName('@Dig5').Value := Dig5;
      Parameters.ParamByName('@Dig6').Value := Dig6;
      Parameters.ParamByName('@Dig7').Value := Dig7;
      Parameters.ParamByName('@Dig8').Value := Dig8;
      Parameters.ParamByName('@Dig9').Value := Dig9;
      Parameters.ParamByName('@Dig10').Value := Dig10;
      Parameters.ParamByName('@Dig11').Value := Dig11;
      Parameters.ParamByName('@Dig12').Value := Dig12;
      Parameters.ParamByName('@Dig13').Value := Dig13;
      Parameters.ParamByName('@Dig14').Value := Dig14;
      Parameters.ParamByName('@Dig15').Value := Dig15;

      Parameters.ParamByName('@Str1').Value := Str1;
      Parameters.ParamByName('@Str2').Value := Str2;
      Parameters.ParamByName('@Str3').Value := Str3;
      Parameters.ParamByName('@Str4').Value := Str4;
      Parameters.ParamByName('@Str5').Value := Str5;
      Parameters.ParamByName('@Str6').Value := Str6;
      Parameters.ParamByName('@Str7').Value := Str7;
      Parameters.ParamByName('@Str8').Value := Str8;
      Parameters.ParamByName('@Str9').Value := Str9;
      Parameters.ParamByName('@Str10').Value := Str10;
      Parameters.ParamByName('@Str11').Value := Str11;
      Parameters.ParamByName('@Str12').Value := Str12;
      Parameters.ParamByName('@Str13').Value := Str13;
      Parameters.ParamByName('@Str14').Value := Str14;
      Parameters.ParamByName('@Str15').Value := Str15;

      Parameters.ParamByName('@Date1').Value := Date1;
      Parameters.ParamByName('@Date2').Value := Date2;
      Parameters.ParamByName('@Date3').Value := Date3;
      Parameters.ParamByName('@Date4').Value := Date4;
      Parameters.ParamByName('@Date5').Value := Date5;
      Parameters.ParamByName('@Date6').Value := Date6;
      Parameters.ParamByName('@Date7').Value := Date7;
      Parameters.ParamByName('@Date8').Value := Date8;
      Parameters.ParamByName('@Date9').Value := Date9;
      Parameters.ParamByName('@Date10').Value := Date10;
      Parameters.ParamByName('@Date11').Value := Date11;
      Parameters.ParamByName('@Date12').Value := Date12;
      Parameters.ParamByName('@Date13').Value := Date13;
      Parameters.ParamByName('@Date14').Value := Date14;
      Parameters.ParamByName('@Date15').Value := Date15;

      Parameters.ParamByName('@CheckDate').Value := CheckDate;
      Parameters.ParamByName('@VatIn').Value := VatIn;
      Parameters.ParamByName('@AutoGen').Value := AutoGen;
      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP_OperSetOperState_v2(id_Oper, OperState: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_OperSetOperState_v2';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@OperState').Value := OperState;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP_OperDelCheckDate_v2(id_Oper: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_OperDelCheckDate_v2';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;   
end;

function TDic.OP_OperSetCheckDate_v2(id_Oper: Integer;
  id_UserChecker: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_OperSetCheckDate_v2';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@id_UserChecker').Value := id_UserChecker;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.PL_WareMeasureGet(id_Goods: OleVariant;
  var id_Measure, ShortName: OleVariant): OleVariant;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'PL_WareMeasureGet';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Goods').Value := id_Goods;

      Open;
      Result := 1;
      id_Measure := fieldByName('id_Measure').Value;
      ShortName := fieldByName('ShortName').Value;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.GetBsnCur(id_Bsn: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'ADM_GetBusinessesInfo';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id').Value := id_Bsn;

      Open;
      Result := FieldByName('id_Currency').Value;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.UN_ShowInRoot(id_Acc, id_acc_Group, id_Warehouse,
  id_Warehouse_Group, id_ContrAgent, id_CAGroup, id_Manufact,
  id_Manufact_Group: OleVariant; ShowInRoot: WordBool): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'UN_ShowInRoot';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Acc').Value := id_Acc;
      Parameters.ParamByName('@id_acc_Group').Value := id_acc_Group;
      Parameters.ParamByName('@id_Warehouse').Value := id_Warehouse;
      Parameters.ParamByName('@id_Warehouse_Group').Value := id_Warehouse_Group;
      Parameters.ParamByName('@id_ContrAgent').Value := id_ContrAgent;
      Parameters.ParamByName('@id_CAGroup').Value := id_CAGroup;
      Parameters.ParamByName('@id_Manufact').Value := id_Manufact;
      Parameters.ParamByName('@id_Manufact_Group').Value := id_Manufact_Group;

      Parameters.ParamByName('@ShowInRoot').Value := ShowInRoot;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.GetWateCtg(id_goods: OleVariant): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'UN_WareCtgName';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_goods').Value := id_goods;
      Open;
      Result := FieldByName('Name').Value;
      Close;
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.DCh_Oper(id_business, OperVid: Integer; id_UserCreator,
  DateLocal: OleVariant; Correct, OperTypeIn: WordBool; CurrencyOperName,
  PriceFinOper, CurrencySysName, SummSysFin, AccName, AccName_Ext,
  WarehouseName, WarehouseName_Ext, ManufactName, ManufactName_Ext,
  ReprName, CAName: OleVariant; Koeff: Integer; FormalDistribName,
  FuncDistribName, Imp_PayBasic, AccInv_PayAssignment, OpComment, Contract,
  ReprName_Ex, id_Replicator, id_LC_Oper: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'DCh_Oper';
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@OperVid').Value := OperVid;

      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;
      Parameters.ParamByName('@DateLocal').Value := DateLocal;
      Parameters.ParamByName('@Correct').Value := Correct;

      Parameters.ParamByName('@OperTypeIn').Value := OperTypeIn;
      Parameters.ParamByName('@CurrencyOperName').Value := CurrencyOperName;
      Parameters.ParamByName('@PriceFinOper').Value := PriceFinOper;
      Parameters.ParamByName('@CurrencySysName').Value := CurrencySysName;
      Parameters.ParamByName('@SummSysFin').Value := SummSysFin;
      Parameters.ParamByName('@AccName').Value := AccName;
      Parameters.ParamByName('@AccName_Ext').Value := AccName_Ext;
      Parameters.ParamByName('@WarehouseName').Value := WarehouseName;
      Parameters.ParamByName('@WarehouseName_Ext').Value := WarehouseName_Ext;
      Parameters.ParamByName('@ManufactName').Value := ManufactName;
      Parameters.ParamByName('@ManufactName_Ext').Value := ManufactName_Ext;
      Parameters.ParamByName('@ReprName').Value := ReprName;
      Parameters.ParamByName('@CAName').Value := CAName;
      Parameters.ParamByName('@Koeff').Value := Koeff;
      Parameters.ParamByName('@FormalDistribName').Value := FormalDistribName;
      Parameters.ParamByName('@FuncDistribName').Value := FuncDistribName;
      Parameters.ParamByName('@Imp_PayBasic').Value := Imp_PayBasic;
      Parameters.ParamByName('@AccInv_PayAssignment').Value := AccInv_PayAssignment;
      Parameters.ParamByName('@OpComment').Value := OpComment;
      Parameters.ParamByName('@Contract').Value := Contract;
      Parameters.ParamByName('@ReprName_Ex').Value := ReprName_Ex;

      Parameters.ParamByName('@id_Replicator').Value := id_Replicator;
      Parameters.ParamByName('@id_LC_Oper').Value := id_LC_Oper;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.DCh_OperWare(id_Oper: Integer; CtgName, GoodsName, MeasureName: OleVariant; AmountOper: Double;
  PriceOper, SummSys: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'DCh_OperWare';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@CtgName').Value := CtgName;

      Parameters.ParamByName('@GoodsName').Value := GoodsName;

      Parameters.ParamByName('@MeasureName').Value := MeasureName;

      Parameters.ParamByName('@AmountOper').Value := AmountOper;
      Parameters.ParamByName('@PriceOper').Value := PriceOper;
      Parameters.ParamByName('@SummSys').Value := SummSys;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP_BuffAddItem(id_Buff, id_Oper: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_BuffAddItem';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Buff').Value := id_Buff;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP_OperWareAdd_BackToCA(id_Oper: Integer; id_Goods,
  id_Measure, Amount, PriceOper, SummSys: OleVariant;
  OupByInv: WordBool): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_OperWareAdd_BackToCA';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@id_Goods').Value := id_Goods;
 
      Parameters.ParamByName('@id_Measure').Value := id_Measure;
      Parameters.ParamByName('@Amount').Value := Amount;
      Parameters.ParamByName('@PriceOper').Value := PriceOper;
      Parameters.ParamByName('@SummSys').Value := SummSys;
      Parameters.ParamByName('@OupByInv').Value := OupByInv;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.PL_WareNameGet(id_Goods : OleVariant; var AName, ShortName: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'UN_WareName';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_goods').Value := id_goods;

      Open;
      Result := 1;
      AName := FieldByName('Name').Value;
      ShortName := FieldByName('ShortName').Value;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.LC_OP_OperAdd_v2(OperVid: Integer; id_business: OleVariant;
  Correct, OperTypeIn: WordBool; Id_CurrencyOper, PriceFinOper,
  Id_CurrencySys, SummSysFin, id_Acc, id_Acc_Ext, id_Warehouse,
  id_Warehouse_Ext, id_Manufact, id_Manufact_Ext, id_Repr, id_UserCreator,
  id_DocType, Imp_PayBasic, AccInv_PayAssignment, Contract,
  OpComment: OleVariant; Koeff: Integer; Dig1, Dig2, Dig3, Dig4, Dig5,
  Dig6, Dig7, Dig8, Dig9, Dig10, Dig11, Dig12, Dig13, Dig14, Dig15, Str1,
  Str2, Str3, Str4, Str5, Str6, Str7, Str8, Str9, Str10, Str11, Str12,
  Str13, Str14, Str15, Date1, Date2, Date3, Date4, Date5, Date6, Date7,
  Date8, Date9, Date10, Date11, Date12, Date13, Date14, Date15,
  id_FormalDistrib, id_FuncDistrib, id_LC_Oper_Ext: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'LC_OP_OperAdd_v2';
      Parameters.Refresh;
      Parameters.ParamByName('@OperVid').Value := OperVid;
      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@Correct').Value := Correct;
      Parameters.ParamByName('@OperTypeIn').Value := OperTypeIn;
      Parameters.ParamByName('@Id_CurrencyOper').Value := Id_CurrencyOper;
      Parameters.ParamByName('@PriceFinOper').Value := PriceFinOper;
      Parameters.ParamByName('@Id_CurrencySys').Value := Id_CurrencySys;
      Parameters.ParamByName('@SummSysFin').Value := SummSysFin;
      Parameters.ParamByName('@id_Acc').Value := id_Acc;
      Parameters.ParamByName('@id_Acc_Ext').Value := id_Acc_Ext;

      Parameters.ParamByName('@id_Warehouse').Value := id_Warehouse;
      Parameters.ParamByName('@id_Warehouse_Ext').Value := id_Warehouse_Ext;

      Parameters.ParamByName('@id_Manufact').Value := id_Manufact;
      Parameters.ParamByName('@id_Manufact_Ext').Value := id_Manufact_Ext;

      Parameters.ParamByName('@id_Repr').Value := id_Repr;

      Parameters.ParamByName('@id_DocType').Value := id_DocType;
      Parameters.ParamByName('@Imp_PayBasic').Value := Imp_PayBasic;
      Parameters.ParamByName('@AccInv_PayAssignment').Value := AccInv_PayAssignment;
      Parameters.ParamByName('@Contract').Value := Contract;
      Parameters.ParamByName('@OpComment').Value := OpComment;

      Parameters.ParamByName('@Koeff').Value := Koeff;

      Parameters.ParamByName('@Dig1').Value := Dig1;
      Parameters.ParamByName('@Dig2').Value := Dig2;
      Parameters.ParamByName('@Dig3').Value := Dig3;
      Parameters.ParamByName('@Dig4').Value := Dig4;
      Parameters.ParamByName('@Dig5').Value := Dig5;
      Parameters.ParamByName('@Dig6').Value := Dig6;
      Parameters.ParamByName('@Dig7').Value := Dig7;
      Parameters.ParamByName('@Dig8').Value := Dig8;
      Parameters.ParamByName('@Dig9').Value := Dig9;
      Parameters.ParamByName('@Dig10').Value := Dig10;
      Parameters.ParamByName('@Dig11').Value := Dig11;
      Parameters.ParamByName('@Dig12').Value := Dig12;
      Parameters.ParamByName('@Dig13').Value := Dig13;
      Parameters.ParamByName('@Dig14').Value := Dig14;
      Parameters.ParamByName('@Dig15').Value := Dig15;

      Parameters.ParamByName('@Str1').Value := Str1;
      Parameters.ParamByName('@Str2').Value := Str2;
      Parameters.ParamByName('@Str3').Value := Str3;
      Parameters.ParamByName('@Str4').Value := Str4;
      Parameters.ParamByName('@Str5').Value := Str5;
      Parameters.ParamByName('@Str6').Value := Str6;
      Parameters.ParamByName('@Str7').Value := Str7;
      Parameters.ParamByName('@Str8').Value := Str8;
      Parameters.ParamByName('@Str9').Value := Str9;
      Parameters.ParamByName('@Str10').Value := Str10;
      Parameters.ParamByName('@Str11').Value := Str11;
      Parameters.ParamByName('@Str12').Value := Str12;
      Parameters.ParamByName('@Str13').Value := Str13;
      Parameters.ParamByName('@Str14').Value := Str14;
      Parameters.ParamByName('@Str15').Value := Str15;

      Parameters.ParamByName('@Date1').Value := Date1;
      Parameters.ParamByName('@Date2').Value := Date2;
      Parameters.ParamByName('@Date3').Value := Date3;
      Parameters.ParamByName('@Date4').Value := Date4;
      Parameters.ParamByName('@Date5').Value := Date5;
      Parameters.ParamByName('@Date6').Value := Date6;
      Parameters.ParamByName('@Date7').Value := Date7;
      Parameters.ParamByName('@Date8').Value := Date8;
      Parameters.ParamByName('@Date9').Value := Date9;
      Parameters.ParamByName('@Date10').Value := Date10;
      Parameters.ParamByName('@Date11').Value := Date11;
      Parameters.ParamByName('@Date12').Value := Date12;
      Parameters.ParamByName('@Date13').Value := Date13;
      Parameters.ParamByName('@Date14').Value := Date14;
      Parameters.ParamByName('@Date15').Value := Date15;

      Parameters.ParamByName('@id_FormalDistrib').Value := id_FormalDistrib;
      Parameters.ParamByName('@id_FuncDistrib').Value := id_FuncDistrib;

      Parameters.ParamByName('@id_LC_Oper_Ext').Value := id_LC_Oper_Ext;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create('��������� ������ ��� ���������� ��������' + #13 + #10 + E.Message);
      end;
    end;
  end;
end;

function TDic.LC_OP_OperEdit_v2(id_LC_Oper, OperVid: Integer;
  id_business: OleVariant; Correct, OperTypeIn: WordBool; Id_CurrencyOper,
  PriceFinOper, Id_CurrencySys, SummSysFin, id_Acc, id_Acc_Ext,
  id_Warehouse, id_Warehouse_Ext, id_Manufact, id_Manufact_Ext, id_Repr,
  id_UserCreator, id_DocType, Imp_PayBasic, AccInv_PayAssignment, Contract,
  OpComment: OleVariant; Koeff: Integer; Dig1, Dig2, Dig3, Dig4, Dig5,
  Dig6, Dig7, Dig8, Dig9, Dig10, Dig11, Dig12, Dig13, Dig14, Dig15, Str1,
  Str2, Str3, Str4, Str5, Str6, Str7, Str8, Str9, Str10, Str11, Str12,
  Str13, Str14, Str15, Date1, Date2, Date3, Date4, Date5, Date6, Date7,
  Date8, Date9, Date10, Date11, Date12, Date13, Date14, Date15,
  id_FormalDistrib, id_FuncDistrib, id_LC_Oper_Ext: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'LC_OP_OperEdit_v2';
      Parameters.Refresh;
      Parameters.ParamByName('@id_LC_OPer').Value := id_LC_OPer;
      Parameters.ParamByName('@OperVid').Value := OperVid;
      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@Correct').Value := Correct;
      Parameters.ParamByName('@OperTypeIn').Value := OperTypeIn;
      Parameters.ParamByName('@Id_CurrencyOper').Value := Id_CurrencyOper;
      Parameters.ParamByName('@PriceFinOper').Value := PriceFinOper;
      Parameters.ParamByName('@Id_CurrencySys').Value := Id_CurrencySys;
      Parameters.ParamByName('@SummSysFin').Value := SummSysFin;
      Parameters.ParamByName('@id_Acc').Value := id_Acc;
      Parameters.ParamByName('@id_Acc_Ext').Value := id_Acc_Ext;

      Parameters.ParamByName('@id_Warehouse').Value := id_Warehouse;
      Parameters.ParamByName('@id_Warehouse_Ext').Value := id_Warehouse_Ext;

      Parameters.ParamByName('@id_Manufact').Value := id_Manufact;
      Parameters.ParamByName('@id_Manufact_Ext').Value := id_Manufact_Ext;

      Parameters.ParamByName('@id_Repr').Value := id_Repr;

      Parameters.ParamByName('@id_DocType').Value := id_DocType;
      Parameters.ParamByName('@Imp_PayBasic').Value := Imp_PayBasic;
      Parameters.ParamByName('@AccInv_PayAssignment').Value := AccInv_PayAssignment;
      Parameters.ParamByName('@Contract').Value := Contract;
      Parameters.ParamByName('@OpComment').Value := OpComment;

      Parameters.ParamByName('@Koeff').Value := Koeff;

      Parameters.ParamByName('@Dig1').Value := Dig1;
      Parameters.ParamByName('@Dig2').Value := Dig2;
      Parameters.ParamByName('@Dig3').Value := Dig3;
      Parameters.ParamByName('@Dig4').Value := Dig4;
      Parameters.ParamByName('@Dig5').Value := Dig5;
      Parameters.ParamByName('@Dig6').Value := Dig6;
      Parameters.ParamByName('@Dig7').Value := Dig7;
      Parameters.ParamByName('@Dig8').Value := Dig8;
      Parameters.ParamByName('@Dig9').Value := Dig9;
      Parameters.ParamByName('@Dig10').Value := Dig10;
      Parameters.ParamByName('@Dig11').Value := Dig11;
      Parameters.ParamByName('@Dig12').Value := Dig12;
      Parameters.ParamByName('@Dig13').Value := Dig13;
      Parameters.ParamByName('@Dig14').Value := Dig14;
      Parameters.ParamByName('@Dig15').Value := Dig15;

      Parameters.ParamByName('@Str1').Value := Str1;
      Parameters.ParamByName('@Str2').Value := Str2;
      Parameters.ParamByName('@Str3').Value := Str3;
      Parameters.ParamByName('@Str4').Value := Str4;
      Parameters.ParamByName('@Str5').Value := Str5;
      Parameters.ParamByName('@Str6').Value := Str6;
      Parameters.ParamByName('@Str7').Value := Str7;
      Parameters.ParamByName('@Str8').Value := Str8;
      Parameters.ParamByName('@Str9').Value := Str9;
      Parameters.ParamByName('@Str10').Value := Str10;
      Parameters.ParamByName('@Str11').Value := Str11;
      Parameters.ParamByName('@Str12').Value := Str12;
      Parameters.ParamByName('@Str13').Value := Str13;
      Parameters.ParamByName('@Str14').Value := Str14;
      Parameters.ParamByName('@Str15').Value := Str15;

      Parameters.ParamByName('@Date1').Value := Date1;
      Parameters.ParamByName('@Date2').Value := Date2;
      Parameters.ParamByName('@Date3').Value := Date3;
      Parameters.ParamByName('@Date4').Value := Date4;
      Parameters.ParamByName('@Date5').Value := Date5;
      Parameters.ParamByName('@Date6').Value := Date6;
      Parameters.ParamByName('@Date7').Value := Date7;
      Parameters.ParamByName('@Date8').Value := Date8;
      Parameters.ParamByName('@Date9').Value := Date9;
      Parameters.ParamByName('@Date10').Value := Date10;
      Parameters.ParamByName('@Date11').Value := Date11;
      Parameters.ParamByName('@Date12').Value := Date12;
      Parameters.ParamByName('@Date13').Value := Date13;
      Parameters.ParamByName('@Date14').Value := Date14;
      Parameters.ParamByName('@Date15').Value := Date15;

      Parameters.ParamByName('@id_FormalDistrib').Value := id_FormalDistrib;
      Parameters.ParamByName('@id_FuncDistrib').Value := id_FuncDistrib;

      Parameters.ParamByName('@id_LC_Oper_Ext').Value := id_LC_Oper_Ext;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create('��������� ������ ��� ���������� ��������' + #13 + #10 + E.Message);
      end;
    end;
  end;
end;

function TDic.DCh_Oper_LC(id_business, OperVid: Integer;
  id_UserCreator: OleVariant; Correct, OperTypeIn: WordBool;
  CurrencyOperName, PriceFinOper, CurrencySysName, SummSysFin, AccName,
  AccName_Ext, WarehouseName, WarehouseName_Ext, ManufactName,
  ManufactName_Ext, ReprName, Imp_PayBasic, AccInv_PayAssignment,
  OpComment, Contract: OleVariant;
  Koeff: Integer; FormalDistribName, FuncDistribName: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'DCh_LC_Oper';
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@OperVid').Value := OperVid;

      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;
      Parameters.ParamByName('@Correct').Value := Correct;

      Parameters.ParamByName('@OperTypeIn').Value := OperTypeIn;
      Parameters.ParamByName('@CurrencyOperName').Value := CurrencyOperName;
      Parameters.ParamByName('@PriceFinOper').Value := PriceFinOper;
      Parameters.ParamByName('@CurrencySysName').Value := CurrencySysName;
      Parameters.ParamByName('@SummSysFin').Value := SummSysFin;
      Parameters.ParamByName('@AccName').Value := AccName;
      Parameters.ParamByName('@AccName_Ext').Value := AccName_Ext;
      Parameters.ParamByName('@WarehouseName').Value := WarehouseName;
      Parameters.ParamByName('@WarehouseName_Ext').Value := WarehouseName_Ext;
      Parameters.ParamByName('@ManufactName').Value := ManufactName;
      Parameters.ParamByName('@ManufactName_Ext').Value := ManufactName_Ext;
      Parameters.ParamByName('@ReprName').Value := ReprName;

      Parameters.ParamByName('@Imp_PayBasic').Value := Imp_PayBasic;
      Parameters.ParamByName('@AccInv_PayAssignment').Value := AccInv_PayAssignment;
      Parameters.ParamByName('@OpComment').Value := OpComment;
      Parameters.ParamByName('@Contract').Value := Contract;

      Parameters.ParamByName('@Koeff').Value := Koeff;
      Parameters.ParamByName('@FormalDistribName').Value := FormalDistribName;
      Parameters.ParamByName('@FuncDistribName').Value := FuncDistribName;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.DCh_OperWare_LC(id_LC_Oper: Integer; CtgName, GoodsName,
  MeasureName: OleVariant;
  AmountOper: Double; PriceOper, SummSys: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'DCh_LC_OperWare';
      Parameters.Refresh;
      Parameters.ParamByName('@id_LC_Oper').Value := id_LC_Oper;
      Parameters.ParamByName('@CtgName').Value := CtgName;

      Parameters.ParamByName('@GoodsName').Value := GoodsName;

      Parameters.ParamByName('@MeasureName').Value := MeasureName;

      Parameters.ParamByName('@AmountOper').Value := AmountOper;
      Parameters.ParamByName('@PriceOper').Value := PriceOper;
      Parameters.ParamByName('@SummSys').Value := SummSys;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.ExpSetID(id_Oper, id_LC_Oper: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'xxx_SetID';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@id_LC_Oper').Value := id_LC_Oper;
      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create('������ ��� �������� ������ - ' + E.Message);
      end;
    end;
  end;
end;

procedure TDic.RemoteDataModuleDestroy(Sender: TObject);
begin
  SvcForm.RemoveRDM(Self);
end;

function TDic.OP_EmptyAdd(id_UserCreator: Integer; OperTypeIn: WordBool;
  id_DocType, Contract, OpComment: OleVariant; id_business: Integer;
  Imp_PayBasic, AccInv_PayAssignment: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_EmptyOperAdd';
      Parameters.Refresh;
      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;
      Parameters.ParamByName('@OperTypeIn').Value := OperTypeIn;

      Parameters.ParamByName('@id_DocType').Value := id_DocType;
      Parameters.ParamByName('@Contract').Value := Contract;
      Parameters.ParamByName('@OpComment').Value := OpComment;
      Parameters.ParamByName('@id_business').Value := id_business;

      Parameters.ParamByName('@Imp_PayBasic').Value := Imp_PayBasic;
      Parameters.ParamByName('@AccInv_PayAssignment').Value := AccInv_PayAssignment;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP_EmptyEdit(id_Oper, id_UserCreator: Integer; id_DocType,
  Contract, OpComment: OleVariant; id_business: Integer; Imp_PayBasic,
  AccInv_PayAssignment: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_EmptyOperEdit';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;

      Parameters.ParamByName('@id_DocType').Value := id_DocType;
      Parameters.ParamByName('@Contract').Value := Contract;
      Parameters.ParamByName('@OpComment').Value := OpComment;
      Parameters.ParamByName('@id_business').Value := id_business;

      Parameters.ParamByName('@Imp_PayBasic').Value := Imp_PayBasic;
      Parameters.ParamByName('@AccInv_PayAssignment').Value := AccInv_PayAssignment;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.SetUserDetail_2(Act, ID, FirstName, MiddleName, LastName,
  Login, Password, PspSeries, PspNumber, PspPlace, Pspdate, PspAddr,
  AddrReal, Phones, Emails, OrgPost, Disabled: OleVariant; isRelp, isPPP,
  id_UADM: WordBool): Integer;
begin
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'ADM_SetUserInfo';
    Parameters.Refresh;

    Parameters.ParamByName('@Act').Value:=Act;
    Parameters.ParamByName('@Id').Value:=Id;
    Parameters.ParamByName('@FirstName').Value:=FirstName;
    Parameters.ParamByName('@MiddleName').Value:=MiddleName;
    Parameters.ParamByName('@LastName').Value:=LastName;
    Parameters.ParamByName('@Login').Value:=Login;
    Parameters.ParamByName('@PassWord').Value:=PassWord;
    Parameters.ParamByName('@PspSeries').Value:=PspSeries;
    Parameters.ParamByName('@PspNumber').Value:=PspNumber;
    Parameters.ParamByName('@PspPlace').Value:=PspPlace;
    Parameters.ParamByName('@Pspdate').Value:=Pspdate;
    Parameters.ParamByName('@PspAddr').Value:=PspAddr;
    Parameters.ParamByName('@AddrReal').Value:=AddrReal;
    Parameters.ParamByName('@Phones').Value:=Phones;
    Parameters.ParamByName('@Emails').Value:=Emails;
    Parameters.ParamByName('@OrgPost').Value:=OrgPost;
    Parameters.ParamByName('@Disabled').Value:=Disabled;
    Parameters.ParamByName('@isRelp').Value:=isRelp;
    Parameters.ParamByName('@isPPP').Value:=isPPP;
    Parameters.ParamByName('@id_UADM').Value:=id_UADM;

  //  Parameters.ParamByName('@RETURN_VALUE').Value:=5;
    ExecProc;
    if Act=0 then
      Result:=Parameters.ParamByName('@RETURN_VALUE').Value
    else
      Result:=0;
  end;
end;

procedure TDic.SetUserGroups(Id, Ids: OleVariant);
begin
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'ADM_SetUserGroups';
      Parameters.Refresh;

      Parameters.ParamByName('@Id_User').Value:=Id;
      Parameters.ParamByName('@Ids').Value:=Ids;
      ExecProc;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.SetGroupDetail(Act, Id, GroupName,
  Disabled: OleVariant): Integer;
begin
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'ADM_SetGroupInfo';
      Parameters.Refresh;

      Parameters.ParamByName('@New_Id').Value:=5;
      Parameters.ParamByName('@Act').Value:=Act;
      Parameters.ParamByName('@Id').Value:=Id;
      Parameters.ParamByName('@Name').Value:=GroupName;
      Parameters.ParamByName('@Disabled').Value:=Disabled;
      ExecProc;        
      if Act=0 then
        Result:=Parameters.ParamByName('@New_Id').Value
      else
        Result:=10;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.SetMeasureDetail(Act, ID, MeasureName, ShortName,
  id_BaseMeasure, id_business, Koef, Disabled, OKEI: OleVariant): Integer;
begin
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'ADM_SetMeasureInfo';
      Parameters.Refresh;
      Parameters.ParamByName('@New_Id').Value:=5;
      Parameters.ParamByName('@Act').Value:=Act;
      Parameters.ParamByName('@Id').Value:=Id;
      Parameters.ParamByName('@Name').Value:=MeasureName;
      Parameters.ParamByName('@ShortName').Value:=ShortName;
      Parameters.ParamByName('@id_BaseMeasure').Value:=id_BaseMeasure;
      Parameters.ParamByName('@id_Business').Value:=id_Business;
      Parameters.ParamByName('@Koef').Value:=Koef;
      Parameters.ParamByName('@Disabled').Value:=Disabled;
      Parameters.ParamByName('@OKEI').Value:=OKEI;
      ExecProc;
      if Act=0 then
        Result:=Parameters.ParamByName('@New_Id').Value
      else
        Result:=1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

procedure TDic.SetMeasureBusiness(Id, Ids: OleVariant);
begin
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'ADM_SetMeasureBus';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Measure').Value:=Id;
      Parameters.ParamByName('@Ids').Value:=Ids;
      ExecProc;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.SetBusinessDetail(Act, Id, BusinessName, ShortName,
  Id_Currency, Num, Disabled: OleVariant): Integer;
begin
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'ADM_SetBusinessesInfo';
      Parameters.Refresh;
      Parameters.ParamByName('@New_Id').Value:=5;
      Parameters.ParamByName('@Act').Value:=Act;
      Parameters.ParamByName('@Id').Value:=Id;
      Parameters.ParamByName('@Name').Value:=BusinessName;
      Parameters.ParamByName('@ShortName').Value:=ShortName;
      Parameters.ParamByName('@Id_Currency').Value:=Id_Currency;
      Parameters.ParamByName('@Num').Value:=Num;
      Parameters.ParamByName('@Disabled').Value:=Disabled;
      ExecProc;
      if Act=0 then
        Result:=Parameters.ParamByName('@New_Id').Value
      else
        Result:=1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.SetReplicatorDetail(Act, Id, ReplicatorName, ShortName,
  Login, PassWord, DelPeriod, Disabled: OleVariant): Integer;
begin
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'ADM_SetReplicatorInfo';
      Parameters.Refresh;
      Parameters.ParamByName('@New_Id').Value:=5;
      Parameters.ParamByName('@Act').Value:=Act;
      Parameters.ParamByName('@Id').Value:=Id;
      Parameters.ParamByName('@Name').Value:=ReplicatorName;
      Parameters.ParamByName('@ShortName').Value:=ShortName;
      Parameters.ParamByName('@Login').Value:=Login;
      Parameters.ParamByName('@Password').Value:=Password;
      Parameters.ParamByName('@DelPeriod').Value:=DelPeriod;
      Parameters.ParamByName('@Disabled').Value:=Disabled;
      ExecProc;
      if Act=0 then
        Result:=Parameters.ParamByName('@New_Id').Value
      else
        Result:=1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

procedure TDic.SetReplBusiness(Id, Ids: OleVariant);
begin
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'ADM_SetReplBus';
      Parameters.Refresh;

      Parameters.ParamByName('@id_Replicator').Value:=Id;
      Parameters.ParamByName('@Ids').Value:=Ids;
      ExecProc;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.SnglObj_Acc(id_User: Integer; out ObjName, ObjID, BsnName,
  id_business: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'SnglObj_Acc';
      Parameters.Refresh;

      Parameters.ParamByName('@id_User').Value := id_User;
      Open;
      if not IsEmpty then
      begin
        Result := 1;
        ObjName := FieldByName('ObjName').Value;
        ObjID := FieldByName('ObjID').Value;
        BsnName := FieldByName('BsnName').Value;
        id_business := FieldByName('id_business').Value;
      end;
      Close;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.SnglObj_CA(id_User: Integer; out ObjName, ObjID, BsnName,
  id_business: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'SnglObj_CA';
      Parameters.Refresh;

      Parameters.ParamByName('@id_User').Value := id_User;
      Open;
      if not IsEmpty then
      begin
        Result := 1;
        ObjName := FieldByName('ObjName').Value;
        ObjID := FieldByName('ObjID').Value;
        BsnName := FieldByName('BsnName').Value;
        id_business := FieldByName('id_business').Value;
      end;
      Close;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.SnglObj_MN(id_User: Integer; out ObjName, ObjID, BsnName,
  id_business: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'SnglObj_MN';
      Parameters.Refresh;

      Parameters.ParamByName('@id_User').Value := id_User;
      Open;
      if not IsEmpty then
      begin
        Result := 1;
        ObjName := FieldByName('ObjName').Value;
        ObjID := FieldByName('ObjID').Value;
        BsnName := FieldByName('BsnName').Value;
        id_business := FieldByName('id_business').Value;
      end;
      Close;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.SnglObj_wh(id_User: Integer; out ObjName, ObjID, BsnName,
  id_business: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'SnglObj_wh';
      Parameters.Refresh;

      Parameters.ParamByName('@id_User').Value := id_User;
      Open;
      if not IsEmpty then
      begin
        Result := 1;
        ObjName := FieldByName('ObjName').Value;
        ObjID := FieldByName('ObjID').Value;
        BsnName := FieldByName('BsnName').Value;
        id_business := FieldByName('id_business').Value;
      end;
      Close;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.MSG_Add(Body: OleVariant; id_User: Integer;
  WasRead: WordBool; DateClose, RepBody, id_State: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'MSG_Add';
      Parameters.Refresh;

      Parameters.ParamByName('@Body').Value := Body;
      Parameters.ParamByName('@id_User').Value := id_User;
      Parameters.ParamByName('@WasRead').Value := WasRead;
      Parameters.ParamByName('@DateClose').Value := DateClose;
      Parameters.ParamByName('@RepBody').Value := RepBody;
      Parameters.ParamByName('@id_State').Value := id_State;
      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.MSG_Edit(id_Msg: Integer; Body: OleVariant; id_User: Integer;
  WasRead: WordBool; DateClose, RepBody, id_State: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'MSG_Edit';
      Parameters.Refresh;

      Parameters.ParamByName('@id_Msg').Value := id_Msg;
      Parameters.ParamByName('@Body').Value := Body;
      Parameters.ParamByName('@id_User').Value := id_User;
      Parameters.ParamByName('@WasRead').Value := WasRead;
      Parameters.ParamByName('@DateClose').Value := DateClose;
      Parameters.ParamByName('@RepBody').Value := RepBody;
      Parameters.ParamByName('@id_State').Value := id_State;
      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.MSG_SetClosed(id_Msg: Integer;
  DateClose: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'MSG_SetClosed';
      Parameters.Refresh;

      Parameters.ParamByName('@id_Msg').Value := id_Msg;
      Parameters.ParamByName('@DateClose').Value := DateClose;
      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.MSG_SetWasRead(id_Msg: Integer; WasRead: WordBool): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'MSG_SetWasRead';
      Parameters.Refresh;

      Parameters.ParamByName('@id_Msg').Value := id_Msg;
      Parameters.ParamByName('@WasRead').Value := WasRead;
      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP_OperExtDataEdit_v2(id_Oper, AType, NumPrm: Integer;
  DigVal, StrVal, DateVal: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_OperExtDataEdit_v2';
      Parameters.Refresh;

      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@Type').Value := AType;
      Parameters.ParamByName('@NumPrm').Value := NumPrm;
      Parameters.ParamByName('@DigVal').Value := DigVal;
      Parameters.ParamByName('@StrVal').Value := StrVal;
      Parameters.ParamByName('@DateVal').Value := DateVal;
      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Crn_URLAdd(AName, URL: OleVariant; UseTable, ColName, ColISO,
  ColCode, ColRate, ColPieces: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Crn_URLAdd';
      Parameters.Refresh;

      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@URL').Value := URL;
      Parameters.ParamByName('@UseTable').Value := UseTable;
      Parameters.ParamByName('@ColName').Value := ColName;
      Parameters.ParamByName('@ColISO').Value := ColISO;
      Parameters.ParamByName('@ColCode').Value := ColCode;
      Parameters.ParamByName('@ColRate').Value := ColRate;
      Parameters.ParamByName('@ColPieces').Value := ColPieces;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Crn_URLEdit(ID: Integer; AName, URL: OleVariant; UseTable,
  ColName, ColISO, ColCode, ColRate, ColPieces: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Crn_URLEdit';
      Parameters.Refresh;

      Parameters.ParamByName('@Id_URL').Value := ID;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@URL').Value := URL;
      Parameters.ParamByName('@UseTable').Value := UseTable;
      Parameters.ParamByName('@ColName').Value := ColName;
      Parameters.ParamByName('@ColISO').Value := ColISO;
      Parameters.ParamByName('@ColCode').Value := ColCode;
      Parameters.ParamByName('@ColRate').Value := ColRate;
      Parameters.ParamByName('@ColPieces').Value := ColPieces;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.CurrencyAdd_2(AName, ShortName, ISOCode,
  NumberCode: OleVariant; FastAccess: WordBool; AValue: Integer;
  Rate: OleVariant; AvForPay: WordBool; Id_URL: OleVariant;
  id_Bsn: Integer; DocCurPartName: OleVariant): Integer;
begin
  if VarType(DocCurPartName) = varError then DocCurPartName := Null;
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Crn_2_CurrencyAdd';
      Parameters.Refresh;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@ShortName').Value := ShortName;
      Parameters.ParamByName('@ISOCode').Value := ISOCode;
      Parameters.ParamByName('@NumberCode').Value := NumberCode;
      Parameters.ParamByName('@FastAccess').Value := FastAccess;
      Parameters.ParamByName('@Value').Value := AValue;
      Parameters.ParamByName('@Rate').Value := Rate;
      Parameters.ParamByName('@AvForPay').Value := AvForPay;
      Parameters.ParamByName('@Id_URL').Value := Id_URL;
      if id_Bsn = -1 then
        Parameters.ParamByName('@id_Bsn').Value := Null
      else
        Parameters.ParamByName('@id_Bsn').Value := id_Bsn;

      Parameters.ParamByName('@DocCurPartName').Value := DocCurPartName;
      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.CurrencyEdit_2(Id_Currency: Integer; AName, ShortName,
  ISOCode, NumberCode: OleVariant; FastAccess: WordBool; AValue: Integer;
  Rate: OleVariant; AvForPay: WordBool; Id_URL: OleVariant;
  id_Bsn: Integer; DocCurPartName: OleVariant): Integer;
begin
  if VarType(DocCurPartName) = varError then DocCurPartName := Null;
  Result := -1;
  with ADOStoredProc1 do
  begin
    THackAdoDataSet(ADOStoredProc1).CommandTimeout := 60*3;
    try
      Close;
      ProcedureName := 'Crn_2_CurrencyEdit';
      Parameters.Refresh;
      Parameters.ParamByName('@Id_Currency').Value := Id_Currency;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@ShortName').Value := ShortName;
      Parameters.ParamByName('@ISOCode').Value := ISOCode;
      Parameters.ParamByName('@NumberCode').Value := NumberCode;
      Parameters.ParamByName('@FastAccess').Value := FastAccess;
      Parameters.ParamByName('@Value').Value := AValue;
      Parameters.ParamByName('@Rate').Value := Rate;
      Parameters.ParamByName('@AvForPay').Value := AvForPay;
      Parameters.ParamByName('@Id_URL').Value := Id_URL;
      Parameters.ParamByName('@id_Bsn').Value := id_Bsn;

      Parameters.ParamByName('@DocCurPartName').Value := DocCurPartName;

      ExecProc;
      Result := 1;
      Close;
      THackAdoDataSet(ADOStoredProc1).CommandTimeout := 30;
    except
      on E : Exception do
      begin
        THackAdoDataSet(ADOStoredProc1).CommandTimeout := 30;
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.CurrencyEditRate(Id_Currency: Integer; Rate: Double): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Crn_CurrencyEditRate';
      Parameters.Refresh;

      Parameters.ParamByName('@Id_Currency').Value := Id_Currency;
      Parameters.ParamByName('@Rate').Value := Rate;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.SetCurid_Bsn(Id_Currency, id_Bsn: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Crn_2_SetCurid_Bsn';
      Parameters.Refresh;
      Parameters.ParamByName('@Id_Currency').Value := Id_Currency;
      Parameters.ParamByName('@id_Bsn').Value := id_Bsn;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.AP_ObjEdit(id_AP_Obj, id_business: Integer; OperVid,
  OperTypeIn, Correct, AName, id_User, AutoGen, Id_CurrencyOper,
  Id_CurrencySys, id_Acc, id_Warehouse, id_Manufact, id_Acc_Ext,
  id_Warehouse_Ext, id_Manufact_Ext, id_Repr, id_ContrAgent, Koeff,
  id_FormalDistrib, id_FuncDistrib, OpComment, Imp_PayBasic,
  AccInv_PayAssignment, Contract, id_Goods: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_AP_Obj = -1 then
        ProcedureName := 'AP_ObjAdd'
      else
        ProcedureName := 'AP_ObjEdit';

      Parameters.Refresh;
      if id_AP_Obj > -1 then
        Parameters.ParamByName('@id_AP_Obj').Value := id_AP_Obj;

      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@OperVid').Value := OperVid;
      Parameters.ParamByName('@OperTypeIn').Value := OperTypeIn;
      Parameters.ParamByName('@Correct').Value := Correct;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_User').Value := id_User;
      Parameters.ParamByName('@Name').Value := AName;

      Parameters.ParamByName('@AutoGen').Value := AutoGen;
      Parameters.ParamByName('@Id_CurrencyOper').Value := Id_CurrencyOper;
      Parameters.ParamByName('@Id_CurrencySys').Value := Id_CurrencySys;
      Parameters.ParamByName('@id_Acc').Value := id_Acc;
      Parameters.ParamByName('@id_Warehouse').Value := id_Warehouse;
      Parameters.ParamByName('@id_Manufact').Value := id_Manufact;
      Parameters.ParamByName('@id_Acc_Ext').Value := id_Acc_Ext;
      Parameters.ParamByName('@id_Warehouse_Ext').Value := id_Warehouse_Ext;
      Parameters.ParamByName('@id_Manufact_Ext').Value := id_Manufact_Ext;
      Parameters.ParamByName('@id_Repr').Value := id_Repr;
      Parameters.ParamByName('@id_ContrAgent').Value := id_ContrAgent;
      Parameters.ParamByName('@Koeff').Value := Koeff;
      Parameters.ParamByName('@id_FormalDistrib').Value := id_FormalDistrib;
      Parameters.ParamByName('@id_FuncDistrib').Value := id_FuncDistrib;
      Parameters.ParamByName('@OpComment').Value := OpComment;
      Parameters.ParamByName('@Imp_PayBasic').Value := Imp_PayBasic;
      Parameters.ParamByName('@AccInv_PayAssignment').Value := AccInv_PayAssignment;
      Parameters.ParamByName('@Contract').Value := Contract;
      Parameters.ParamByName('@id_Goods').Value := id_Goods;
      ExecProc;
      if id_AP_Obj = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.AP_CondClear(id_AP_Obj: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'AP_CondClear';

      Parameters.Refresh;
      Parameters.ParamByName('@id_AP_Obj').Value := id_AP_Obj;
      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.AP_CondAdd(id_AP_Obj, ExtID, APCond: Integer; V_Str,
  V_Str2: OleVariant): Integer;
begin
  Result := -1;
  with spAP_CondAdd do
  begin
    try
      Close;
      Parameters.ParamByName('@id_AP_Obj').Value := id_AP_Obj;
      Parameters.ParamByName('@ExtID').Value := ExtID;
      Parameters.ParamByName('@APCond').Value := APCond;
      Parameters.ParamByName('@V_Str').Value := V_Str;
      Parameters.ParamByName('@V_Str2').Value := V_Str2;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.AP_ObjDel(id_AP_Obj: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'AP_ObjDel';

      Parameters.Refresh;
      Parameters.ParamByName('@id_AP_Obj').Value := id_AP_Obj;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Doc_Pay_InEdit(id_Pay_In, id_Oper: Integer; Doc_Num,
  Doc_Date, OKPO, Summ, VAT, BasePM, Payer, Buh, Casser, id_UserCreator,
  OrgName, ExtInfo, id_DocCur: OleVariant; id_Doc_Org: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_Pay_In = -1 then
        ProcedureName := 'Doc_Pay_InAdd'
      else
        ProcedureName := 'Doc_Pay_InEdit';

      Parameters.Refresh;
      if id_Pay_In > -1 then
        Parameters.ParamByName('@id_Pay_In').Value := id_Pay_In;

      Parameters.ParamByName('@id_DocCur').Value := id_DocCur;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@Doc_Num').Value := Doc_Num;
      Parameters.ParamByName('@Doc_Date').Value := Doc_Date;
      Parameters.ParamByName('@OKPO').Value := OKPO;
      Parameters.ParamByName('@Summ').Value := Summ;
      Parameters.ParamByName('@VAT').Value := VAT;
      Parameters.ParamByName('@BasePM').Value := BasePM;
      Parameters.ParamByName('@Payer').Value := Payer;
      Parameters.ParamByName('@Buh').Value := Buh;
      Parameters.ParamByName('@Casser').Value := Casser;
      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;
      Parameters.ParamByName('@OrgName').Value := OrgName;
      Parameters.ParamByName('@ExtInfo').Value := ExtInfo;

      if id_Doc_Org > 0 then
        Parameters.ParamByName('@id_Doc_Org').Value := id_Doc_Org
      else
        Parameters.ParamByName('@id_Doc_Org').Value := Null;

      ExecProc;
      if id_Pay_In = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Doc_ActClEdit(id_ActCl, id_Oper: Integer; Doc_Num, Doc_Date,
  OrgName1, OrgName2, Summ1, Summ2, Doc1, Doc2, Name1, Name2, Post1, Post2,
  Summ, id_UserCreator: OleVariant; id_DocCur,
  id_Doc_Org: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_ActCl = -1 then
        ProcedureName := 'Doc_ActClAdd'
      else
        ProcedureName := 'Doc_ActClEdit';

      Parameters.Refresh;
      if id_ActCl > -1 then
        Parameters.ParamByName('@id_ActCl').Value := id_ActCl;

      Parameters.ParamByName('@id_DocCur').Value := id_DocCur;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@Doc_Num').Value := Doc_Num;
      Parameters.ParamByName('@Doc_Date').Value := Doc_Date;
      Parameters.ParamByName('@OrgName1').Value := OrgName1;
      Parameters.ParamByName('@OrgName2').Value := OrgName2;
      Parameters.ParamByName('@Summ1').Value := Summ1;
      Parameters.ParamByName('@Summ2').Value := Summ2;
      Parameters.ParamByName('@Doc1').Value := Doc1;
      Parameters.ParamByName('@Doc2').Value := Doc2;
      Parameters.ParamByName('@Name1').Value := Name1;
      Parameters.ParamByName('@Name2').Value := Name2;
      Parameters.ParamByName('@Post1').Value := Post1;
      Parameters.ParamByName('@Post2').Value := Post2;
      Parameters.ParamByName('@Summ').Value := Summ;
      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;

      if id_Doc_Org > 0 then
        Parameters.ParamByName('@id_Doc_Org').Value := id_Doc_Org
      else
        Parameters.ParamByName('@id_Doc_Org').Value := Null;

      ExecProc;
      if id_ActCl = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Doc_AccountEdit(id_Account, id_Oper: Integer; Doc_Num,
  Doc_Date, BIK, id_UserCreator, INN, Payer, Chif, Buh, customer, Bank,
  Acc1, Acc2, OrgName, Address, KPP: OleVariant; id_DocCur,
  id_Doc_Org: Integer; VAT: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_Account = -1 then
        ProcedureName := 'Doc_AccountAdd'
      else
        ProcedureName := 'Doc_AccountEdit';

      Parameters.Refresh;
      if id_Account > -1 then
        Parameters.ParamByName('@id_Account').Value := id_Account;

      Parameters.ParamByName('@id_DocCur').Value := id_DocCur;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@Doc_Num').Value := Doc_Num;
      Parameters.ParamByName('@Doc_Date').Value := Doc_Date;
      Parameters.ParamByName('@BIK').Value := BIK;
      Parameters.ParamByName('@OrgName').Value := OrgName;
      Parameters.ParamByName('@INN').Value := INN;
      Parameters.ParamByName('@Payer').Value := Payer;
      Parameters.ParamByName('@Chif').Value := Chif;
      Parameters.ParamByName('@Buh').Value := Buh;
      Parameters.ParamByName('@customer').Value := customer;
      Parameters.ParamByName('@Bank').Value := Bank;
      Parameters.ParamByName('@Acc1').Value := Acc1;
      Parameters.ParamByName('@Acc2').Value := Acc2;
      Parameters.ParamByName('@Address').Value := Address;
      Parameters.ParamByName('@KPP').Value := KPP;
      
      Parameters.ParamByName('@VAT').Value := VAT;

      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;
      if id_Doc_Org > 0 then
        Parameters.ParamByName('@id_Doc_Org').Value := id_Doc_Org
      else
        Parameters.ParamByName('@id_Doc_Org').Value := Null;

      ExecProc;
      if id_Account = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Doc_FinalActEdit(id_FinalAct, id_Oper: Integer; Doc_Num,
  Doc_Date, id_UserCreator, OrgName, Address, performer, customer,
  CusPerson: OleVariant; id_DocCur, id_Doc_Org: Integer;
  VAT: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_FinalAct = -1 then
        ProcedureName := 'Doc_FinalActAdd'
      else
        ProcedureName := 'Doc_FinalActEdit';

      Parameters.Refresh;
      if id_FinalAct > -1 then
        Parameters.ParamByName('@id_FinalAct').Value := id_FinalAct;

      Parameters.ParamByName('@id_DocCur').Value := id_DocCur;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@Doc_Num').Value := Doc_Num;
      Parameters.ParamByName('@Doc_Date').Value := Doc_Date;
      Parameters.ParamByName('@OrgName').Value := OrgName;
      Parameters.ParamByName('@Address').Value := Address;
      Parameters.ParamByName('@performer').Value := performer;
      Parameters.ParamByName('@customer').Value := customer;
      Parameters.ParamByName('@CusPerson').Value := CusPerson;
      Parameters.ParamByName('@VAT').Value := VAT;

      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;

      if id_Doc_Org > 0 then
        Parameters.ParamByName('@id_Doc_Org').Value := id_Doc_Org
      else
        Parameters.ParamByName('@id_Doc_Org').Value := Null;

      ExecProc;
      if id_FinalAct = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Doc_WarrantEdit(id_Warrant: Integer; GarbDate, Pspdate,
  Doc_Date, DateTo, BIK, id_Oper, id_UserCreator, INN, Chif, Buh, PspSer,
  PspNum, PspOwner, CorAcc, customer, FIO, GarbNum, Acc, Bank, OKPO,
  Person, APost, Doc_Num, OrgName, Address, OrgName2, Address2,
  INN2: OleVariant; id_Doc_Org: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_Warrant = -1 then
        ProcedureName := 'Doc_WarrantAdd'
      else
        ProcedureName := 'Doc_WarrantEdit';

      Parameters.Refresh;
      if id_Warrant > -1 then
        Parameters.ParamByName('@id_Warrant').Value := id_Warrant;

      Parameters.ParamByName('@GarbDate').Value := GarbDate;
      Parameters.ParamByName('@PspDate').Value := PspDate;
      Parameters.ParamByName('@Doc_Date').Value := Doc_Date;
      Parameters.ParamByName('@DateTo').Value := DateTo;

      Parameters.ParamByName('@BIK').Value := BIK;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;
      Parameters.ParamByName('@INN').Value := INN;
      Parameters.ParamByName('@Chif').Value := Chif;
      Parameters.ParamByName('@Buh').Value := Buh;
      Parameters.ParamByName('@PspSer').Value := PspSer;
      Parameters.ParamByName('@PspNum').Value := PspNum;
      Parameters.ParamByName('@PspOwner').Value := PspOwner;
      Parameters.ParamByName('@CorAcc').Value := CorAcc;
      Parameters.ParamByName('@customer').Value := customer;
      Parameters.ParamByName('@FIO').Value := FIO;
      Parameters.ParamByName('@GarbNum').Value := GarbNum;
      Parameters.ParamByName('@Acc').Value := Acc;
      Parameters.ParamByName('@Bank').Value := Bank;
      Parameters.ParamByName('@OKPO').Value := OKPO;
      Parameters.ParamByName('@Person').Value := Person;
      Parameters.ParamByName('@Post').Value := APost;
      Parameters.ParamByName('@Doc_Num').Value := Doc_Num;
      Parameters.ParamByName('@OrgName').Value := OrgName;
      Parameters.ParamByName('@Address').Value := Address;

      Parameters.ParamByName('@OrgName2').Value := OrgName2;
      Parameters.ParamByName('@Address2').Value := Address2;
      Parameters.ParamByName('@INN2').Value := INN2;

      if id_Doc_Org > 0 then
        Parameters.ParamByName('@id_Doc_Org').Value := id_Doc_Org
      else
        Parameters.ParamByName('@id_Doc_Org').Value := Null;

      ExecProc;
      if id_Warrant = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Doc_InvoiceEdit(id_invoice: Integer; V: OleVariant;
  id_Doc_Org: Integer): Integer;
var RecV_Inv : V_Inv;
begin
  RecV_Inv := UnPackRecV_Inv( V);
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_invoice = -1 then
        ProcedureName := 'Doc_InvoiceAdd'
      else
        ProcedureName := 'Doc_InvoiceEdit';

      Parameters.Refresh;
      if id_invoice > -1 then
        Parameters.ParamByName('@id_invoice').Value := id_invoice;

      Parameters.ParamByName('@id_DocCur').Value := RecV_Inv.id_DocCur;
      Parameters.ParamByName('@Acc').Value := RecV_Inv.Acc;
      Parameters.ParamByName('@Address').Value := RecV_Inv.Address;
      Parameters.ParamByName('@Bank').Value := RecV_Inv.Bank;
      Parameters.ParamByName('@Base').Value := RecV_Inv.Base;
      Parameters.ParamByName('@Base_Date').Value := RecV_Inv.Base_Date;
      Parameters.ParamByName('@Base_Num').Value := RecV_Inv.Base_Num;
      Parameters.ParamByName('@BIK').Value := RecV_Inv.BIK;
      Parameters.ParamByName('@Buh').Value := RecV_Inv.Buh;
      Parameters.ParamByName('@CBL_Date').Value := RecV_Inv.CBL_Date;
      Parameters.ParamByName('@CBL_Num').Value := RecV_Inv.CBL_Num;
      Parameters.ParamByName('@Chif_FIO').Value := RecV_Inv.Chif_FIO;
      Parameters.ParamByName('@Chif_Post').Value := RecV_Inv.Chif_Post;
      Parameters.ParamByName('@CorAcc').Value := RecV_Inv.CorAcc;
      Parameters.ParamByName('@Dept').Value := RecV_Inv.Dept;
      Parameters.ParamByName('@Doc_Date').Value := RecV_Inv.Doc_Date;
      Parameters.ParamByName('@Doc_Num').Value := RecV_Inv.Doc_Num;
      Parameters.ParamByName('@ExtDoc_Count').Value := RecV_Inv.ExtDoc_Count;
      Parameters.ParamByName('@Geter_FIO').Value := RecV_Inv.Geter_FIO;
      Parameters.ParamByName('@Geter_Post').Value := RecV_Inv.Geter_Post;
      Parameters.ParamByName('@id_Oper').Value := RecV_Inv.id_Oper;
      Parameters.ParamByName('@id_UserCreator').Value := RecV_Inv.id_UserCreator;
      Parameters.ParamByName('@OKPD').Value := RecV_Inv.OKPD;
      Parameters.ParamByName('@OKPO').Value := RecV_Inv.OKPO;
      Parameters.ParamByName('@OKPO2').Value := RecV_Inv.OKPO2;
      Parameters.ParamByName('@OKPO3').Value := RecV_Inv.OKPO3;
      Parameters.ParamByName('@OKPO4').Value := RecV_Inv.OKPO4;
      Parameters.ParamByName('@OrgName').Value := RecV_Inv.OrgName;
      Parameters.ParamByName('@Payer_Acc').Value := RecV_Inv.Payer_Acc;
      Parameters.ParamByName('@Payer_Address').Value := RecV_Inv.Payer_Address;
      Parameters.ParamByName('@Payer_Bank').Value := RecV_Inv.Payer_Bank;
      Parameters.ParamByName('@Payer_BIK').Value := RecV_Inv.Payer_BIK;
      Parameters.ParamByName('@Payer_CorAcc').Value := RecV_Inv.Payer_CorAcc;
      Parameters.ParamByName('@Payer_Name').Value := RecV_Inv.Payer_Name;
      Parameters.ParamByName('@Puter_Date').Value := RecV_Inv.Puter_Date;
      Parameters.ParamByName('@Puter_Name').Value := RecV_Inv.Puter_Name;
      Parameters.ParamByName('@Puter_post').Value := RecV_Inv.Puter_post;
      Parameters.ParamByName('@RC_Acc').Value := RecV_Inv.RC_Acc;
      Parameters.ParamByName('@RC_Address').Value := RecV_Inv.RC_Address;
      Parameters.ParamByName('@RC_Bank').Value := RecV_Inv.RC_Bank;
      Parameters.ParamByName('@RC_BIK').Value := RecV_Inv.RC_BIK;
      Parameters.ParamByName('@RC_CorAcc').Value := RecV_Inv.RC_CorAcc;
      Parameters.ParamByName('@RC_Date').Value := RecV_Inv.RC_Date;
      Parameters.ParamByName('@RC_FIO').Value := RecV_Inv.RC_FIO;
      Parameters.ParamByName('@RC_Name').Value := RecV_Inv.RC_Name;
      Parameters.ParamByName('@RC_Post').Value := RecV_Inv.RC_Post;
      Parameters.ParamByName('@War_Date').Value := RecV_Inv.War_Date;
      Parameters.ParamByName('@War_Name').Value := RecV_Inv.War_Name;
      Parameters.ParamByName('@War_Num').Value := RecV_Inv.War_Num;
      Parameters.ParamByName('@War_Owner').Value := RecV_Inv.War_Owner;

      Parameters.ParamByName('@VAT').Value := RecV_Inv.VAT;
      if id_Doc_Org > 0 then
        Parameters.ParamByName('@id_Doc_Org').Value := id_Doc_Org
      else
        Parameters.ParamByName('@id_Doc_Org').Value := Null;

      ExecProc;
      if id_invoice = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Doc_AFEdit(id_AF: Integer; V: OleVariant;
  id_Doc_Org: Integer): Integer;
var RR : V_AF;
begin
  RR := UnPackRecV_AF( V);
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_AF = -1 then
        ProcedureName := 'Doc_AFAdd'
      else
        ProcedureName := 'Doc_AFEdit';

      Parameters.Refresh;
      if id_AF > -1 then
        Parameters.ParamByName('@id_AF').Value := id_AF;

      Parameters.ParamByName('@id_DocCur').Value := RR.id_DocCur;
      Parameters.ParamByName('@id_Oper').Value := RR.id_Oper;
      Parameters.ParamByName('@Doc_Date').Value := RR.Doc_Date;
      Parameters.ParamByName('@Doc_Num').Value := RR.Doc_Num;
      Parameters.ParamByName('@id_UserCreator').Value := RR.id_UserCreator;
      Parameters.ParamByName('@OrgName').Value := RR.OrgName;
      Parameters.ParamByName('@Address').Value := RR.Address;
      Parameters.ParamByName('@INN').Value := RR.INN;
      Parameters.ParamByName('@KPP').Value := RR.KPP;
      Parameters.ParamByName('@Sender_Name').Value := RR.Sender_Name;
      Parameters.ParamByName('@Sender_Address2').Value := RR.Sender_Address2;
      Parameters.ParamByName('@RC_Name').Value := RR.RC_Name;
      Parameters.ParamByName('@RC_Address2').Value := RR.RC_Address2;
      Parameters.ParamByName('@ExtDocDate').Value := RR.ExtDocDate;
      Parameters.ParamByName('@ExtDocNum').Value := RR.ExtDocNum;
      Parameters.ParamByName('@Bayer_Name').Value := RR.Bayer_Name;
      Parameters.ParamByName('@Bayer_Address').Value := RR.Bayer_Address;
      Parameters.ParamByName('@Bayer_INN').Value := RR.Bayer_INN;
      Parameters.ParamByName('@Bayer_KPP').Value := RR.Bayer_KPP;
      Parameters.ParamByName('@PBUL').Value := RR.PBUL;
      Parameters.ParamByName('@Chif').Value := RR.Chif;
      Parameters.ParamByName('@Buh').Value := RR.Buh;
      Parameters.ParamByName('@VAT').Value := RR.VAT;

      if id_Doc_Org > 0 then
        Parameters.ParamByName('@id_Doc_Org').Value := id_Doc_Org
      else
        Parameters.ParamByName('@id_Doc_Org').Value := Null;

      ExecProc;
      if id_AF = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Doc_WBillEdit(id_WBill: Integer; V: OleVariant;
  id_Doc_Org: Integer): Integer;
var RR : V_WBill;
begin
  RR := UnPackRecV_WBill(V);
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_WBill = -1 then
        ProcedureName := 'Doc_WBillAdd'
      else
        ProcedureName := 'Doc_WBillEdit';

      Parameters.Refresh;
      if id_WBill > -1 then
        Parameters.ParamByName('@id_WBill').Value := id_WBill;

      Parameters.ParamByName('@id_DocCur').Value := RR.id_DocCur;
      Parameters.ParamByName('@id_Oper').Value := RR.id_Oper;
      Parameters.ParamByName('@Doc_Date').Value := RR.Doc_Date;
      Parameters.ParamByName('@Doc_Num').Value := RR.Doc_Num;
      Parameters.ParamByName('@id_UserCreator').Value := RR.id_UserCreator;
      Parameters.ParamByName('@OrgName').Value := RR.OrgName;
      Parameters.ParamByName('@Address').Value := RR.Address;
      Parameters.ParamByName('@Bank').Value := RR.Bank;
      Parameters.ParamByName('@BIK').Value := RR.BIK;
      Parameters.ParamByName('@CorAcc').Value := RR.CorAcc;
      Parameters.ParamByName('@Acc').Value := RR.Acc;
      Parameters.ParamByName('@OKPO').Value := RR.OKPO;
      Parameters.ParamByName('@OKPO2').Value := RR.OKPO2;
      Parameters.ParamByName('@OKPO3').Value := RR.OKPO3;

      Parameters.ParamByName('@RC_Name').Value := RR.RC_Name;
      Parameters.ParamByName('@RC_Address').Value := RR.RC_Address;
      Parameters.ParamByName('@RC_Bank').Value := RR.RC_Bank;
      Parameters.ParamByName('@RC_BIK').Value := RR.RC_BIK;
      Parameters.ParamByName('@RC_CorAcc').Value := RR.RC_CorAcc;
      Parameters.ParamByName('@RC_Acc').Value := RR.RC_Acc;

      Parameters.ParamByName('@Payer_Name').Value := RR.Payer_Acc;
      Parameters.ParamByName('@Payer_Address').Value := RR.Payer_Address;
      Parameters.ParamByName('@Payer_Bank').Value := RR.Payer_Bank;
      Parameters.ParamByName('@Payer_BIK').Value := RR.Payer_BIK;
      Parameters.ParamByName('@Payer_CorAcc').Value := RR.Payer_CorAcc;
      Parameters.ParamByName('@Payer_Acc').Value := RR.Payer_Acc;

      Parameters.ParamByName('@Buh').Value := RR.Buh;
      
      Parameters.ParamByName('@Checker_post').Value := RR.Checker_post;
      Parameters.ParamByName('@Checker_Name').Value := RR.Checker_Name;
      Parameters.ParamByName('@Puter_post').Value := RR.Puter_post;
      Parameters.ParamByName('@Puter_Name').Value := RR.Puter_Name;
      Parameters.ParamByName('@Geter_Post').Value := RR.Geter_Post;
      Parameters.ParamByName('@Geter_FIO').Value := RR.Geter_FIO;
      Parameters.ParamByName('@VAT').Value := RR.VAT;

      if id_Doc_Org > 0 then
        Parameters.ParamByName('@id_Doc_Org').Value := id_Doc_Org
      else
        Parameters.ParamByName('@id_Doc_Org').Value := Null;

      ExecProc;
      if id_WBill = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.DocDictEdit(ID: Integer; AName: OleVariant; id_DT: Integer;
  id_business: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if ID = -1 then
        ProcedureName := 'Doc_DictAdd'
      else
        ProcedureName := 'Doc_DictEdit';

      Parameters.Refresh;
      if ID > -1 then
        Parameters.ParamByName('@id_DD').Value := ID;

      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_DT').Value := id_DT;
      Parameters.ParamByName('@id_business').Value := id_business;
      ExecProc;
      if ID = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.DocDictDel(id_DD: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Doc_DictDel';
      Parameters.Refresh;
      Parameters.ParamByName('@id_DD').Value := id_DD;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.DocDictSetDef(id_DD: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Doc_DictSetDef';
      Parameters.Refresh;
      Parameters.ParamByName('@id_DD').Value := id_DD;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Doc_DictUNSetDef(id_DD: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Doc_DictUNSetDef';
      Parameters.Refresh;
      Parameters.ParamByName('@id_DD').Value := id_DD;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Doc_MeasureOKEI(ID_Measure: Integer): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Doc_MeasureOKEI';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID_Measure').Value := ID_Measure;
      try
        Open;
        if not IsEmpty then
          Result := FieldByName('OKEI').Value;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.DocDel(AType, ID_Doc: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      case AType of
        1 : ProcedureName := 'Doc_AccountDel';
        2 : ProcedureName := 'Doc_ActCLDel';
        3 : ProcedureName := 'Doc_AFDel';
        4 : ProcedureName := 'Doc_FinalActDel';
        5 : ProcedureName := 'Doc_InvoiceDel';
        6 : ProcedureName := 'Doc_Pay_InDel';
        7 : ProcedureName := 'Doc_WarrantDel';
        8 : ProcedureName := 'Doc_WBillDel';
        9 : ProcedureName := 'Doc_WHOrdDel';
      end;
      Parameters.Refresh;
      Parameters[1].Value := ID_Doc;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;


procedure TDic.Doc_ReprGetProp(id_Repr: Integer; out BIK, Bank, AccName,
  CorAccNAme, OKPO, Addr, INN, KPP: OleVariant);
begin
  BIK := Null;
  Bank := Null;
  AccName := Null;
  CorAccNAme := Null;
  OKPO := Null;
  Addr := Null;
  INN := Null;
  KPP := Null;

  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Doc_ReprGetProp';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Repr').Value := id_Repr;
      try
        Open;
        if not IsEmpty then
        begin
          BIK := FieldByName('BIK').Value;
          Bank := FieldByName('Bank').Value;
          AccName := FieldByName('AccName').Value;
          CorAccNAme := FieldByName('CorAccNAme').Value;
          OKPO := FieldByName('OKPO').Value;
          Addr := FieldByName('Addr').Value;
          INN := FieldByName('INN').Value;
          KPP := FieldByName('KPP').Value;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

procedure TDic.Doc_GoodsGetProp(id_Goods: Integer; out GTD, Country,
  DocNomCode, DocPriceCode, DocArt, DocNumber: OleVariant);
begin
  GTD := Null;
  Country := Null;
  DocNomCode := Null;
  DocPriceCode := Null;
  DocArt := Null;
  DocNumber := Null;

  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Doc_GoodsGetProp';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Goods').Value := id_Goods;
      try
        Open;
        if not IsEmpty then
        begin
          GTD := FieldByName('GTD').Value;
          Country := FieldByName('Country').Value;
          DocNomCode := FieldByName('DocNomCode').Value;
          DocPriceCode := FieldByName('DocPriceCode').Value;
          DocArt := FieldByName('DocArt').Value;
          DocNumber := FieldByName('DocNumber').Value;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.GetDoc_Num(DocType: Integer): OleVariant;
begin
  Result := Null;
  with spGetDoc_Num do
  begin
    try
      Close;
      Parameters.ParamByName('@DocType').Value := DocType;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
    //    raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.GetMNName(ID_MN: Integer): OleVariant;
begin
  Result := '';
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'GetName_MN';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@ID_MN').Value := ID_MN;
      try
        Open;
        if not IsEmpty then
          Result := FieldByName('Name').AsString;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.GetReprName(id_Repr: Integer): OleVariant;
begin
  Result := '';
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'GetName_Repr';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Repr').Value := id_Repr;
      try
        Open;
        if not IsEmpty then
          Result := FieldByName('Name').AsString;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.GetDoc_Num2(DocType, id_Bsn: Integer): OleVariant;
begin
  Result := Null;
  with spGetDoc_Num do
  begin
    try
      Close;
      Parameters.ParamByName('@DocType').Value := DocType;
      Parameters.ParamByName('@id_Bsn').Value := id_Bsn;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
    //    raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.GetDefOrg(id_business: Integer; var id_Doc_Org, OrgName, INN,
  KPP, Chif, Buh, OKPO, OKPD, Address: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Doc_OrgGetDef';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      try
        Open;
        if not IsEmpty then
        begin
          Result := 1;
          id_Doc_Org := FieldByName('id_Doc_Org').Value;
          OrgName := FieldByName('OrgName').Value;

          INN := FieldByName('INN').Value;
          KPP := FieldByName('KPP').Value;
          Chif := FieldByName('Chif').Value;
          Buh := FieldByName('Buh').Value;
          OKPO := FieldByName('OKPO').Value;
          OKPD := FieldByName('OKPD').Value;
          Address := FieldByName('Address').Value;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Doc_OrgEdit(id_Doc_Org: Integer; Address, Buh,
  Chif: OleVariant; DefOrg, DisabledOrg: WordBool; id_business: Integer;
  INN, KPP, OKPD, OKPO, OrgName, VAT: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    if id_Doc_Org = -1 then
      ProcedureName := 'Doc_OrgAdd'
    else
      ProcedureName := 'Doc_OrgEdit';
    try
      Close;
      Parameters.Refresh;

      if id_Doc_Org > -1 then
        Parameters.ParamByName('@id_Doc_Org').Value := id_Doc_Org;
      Parameters.ParamByName('@Address').Value := Address;
      Parameters.ParamByName('@Buh').Value := Buh;
      Parameters.ParamByName('@Chif').Value := Chif;
      Parameters.ParamByName('@DefOrg').Value := DefOrg;
      Parameters.ParamByName('@DisabledOrg').Value := DisabledOrg;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@INN').Value := INN;
      Parameters.ParamByName('@KPP').Value := KPP;
      Parameters.ParamByName('@OKPD').Value := OKPD;
      Parameters.ParamByName('@OKPO').Value := OKPO;
      Parameters.ParamByName('@OrgName').Value := OrgName;
      Parameters.ParamByName('@VAT').Value := VAT;

      ExecProc;
      if id_Doc_Org = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Doc_OrgDel(id_Doc_Org: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Doc_OrgDel';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Doc_Org').Value := id_Doc_Org;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Doc_OrgBankGetDef(id_Doc_Org: Integer; var Bank, BIK, Acc,
  CorrAcc: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Doc_OrgBankGetDef';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Doc_Org').Value := id_Doc_Org;
      try
        Open;
        if not IsEmpty then
        begin
          Result := 1;
          Bank := FieldByName('Bank').Value;
          BIK := FieldByName('BIK').Value;
          Acc := FieldByName('Acc').Value;
          CorrAcc := FieldByName('CorAcc').Value;
        end
        else
        begin
          Result := 1;
          Bank := Null;
          BIK := Null;
          Acc := Null;
          CorrAcc := Null;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.DCh_MeasureAdd(id_business: Integer;
  AName: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'DCh_MeasureAdd';
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@Name').Value := AName;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.GetMeasureName(id_Measure: Integer): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'ADM_GetMeasureInfo_v2';
      Parameters.Refresh;
      Parameters.ParamByName('@id_Measure').Value := id_Measure;

      Open;
      Result := fieldByName('Name').AsString;
      Close;
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.AP_ObjItemEdit(id_ObjItem, id_AP_Obj: Integer; OperVid,
  OperTypeIn, Correct, OpName: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_ObjItem = -1 then
        ProcedureName := 'AP_ObjItemAdd'
      else
        ProcedureName := 'AP_ObjItemEdit';

      Parameters.Refresh;
      if id_ObjItem > -1 then
        Parameters.ParamByName('@id_ObjItem').Value := id_ObjItem;

      Parameters.ParamByName('@id_AP_Obj').Value := id_AP_Obj;
      Parameters.ParamByName('@OperVid').Value := OperVid;
      Parameters.ParamByName('@OperTypeIn').Value := OperTypeIn;
      Parameters.ParamByName('@Correct').Value := Correct;
      Parameters.ParamByName('@OpName').Value := OpName;

      ExecProc;
      if id_ObjItem = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.AP_OperAdd(ExtID, id_ObjItem, ParamType: Integer; V_Str,
  V1: OleVariant): Integer;
begin
  Result := -1;
  with spAP_OperAdd do
  begin
    try
      Close;
      Parameters.ParamByName('@id_ObjItem').Value := id_ObjItem;
      Parameters.ParamByName('@ParamType').Value := ParamType;
      Parameters.ParamByName('@ExtID').Value := ExtID;
      Parameters.ParamByName('@V_Str').Value := V_Str;
      Parameters.ParamByName('@V1').Value := V1;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.AP_OperClear(id_ObjItem: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'AP_OperDel';

      Parameters.Refresh;
      Parameters.ParamByName('@id_ObjItem').Value := id_ObjItem;
      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.AP_ObjItemDel(id_ObjItem: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'AP_ObjItemDel';

      Parameters.Refresh;
      Parameters.ParamByName('@id_ObjItem').Value := id_ObjItem;
      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.AP_ObjItemSummAdd(id_ObjItemSumm, id_ObjItem: Integer;
  isSys: WordBool; Summ_Type, Summ_FormType, Summ_Koeff, Summ_B, Summ_Znak,
  Summ_Koeff2, Summ_Znak2, Summ_Koeff3, Summ_Znak3: OleVariant;
  inPercent: WordBool; Id_Currency: OleVariant; Currency_Type: Integer;
  Summ_Formulas: OleVariant; Summ_UseSys: WordBool; id_CnstItem,
  ZnakCnstItem, K_CnstItem: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_ObjItemSumm = -1 then
        ProcedureName := 'AP_ObjItemSummAdd'
      else
        ProcedureName := 'AP_ObjItemSummEdit';

      Parameters.Refresh;

      if id_ObjItemSumm <> -1 then
        Parameters.ParamByName('@id_ObjItemSumm').Value := id_ObjItemSumm;

      Parameters.ParamByName('@id_ObjItem').Value := id_ObjItem;
      Parameters.ParamByName('@isSys').Value := isSys;
      Parameters.ParamByName('@Summ_Type').Value := Summ_Type;
      Parameters.ParamByName('@Summ_FormType').Value := Summ_FormType;
      Parameters.ParamByName('@Summ_Koeff').Value := Summ_Koeff;
      Parameters.ParamByName('@Summ_B').Value := Summ_B;
      Parameters.ParamByName('@Summ_Znak').Value := Summ_Znak;
      Parameters.ParamByName('@Summ_Koeff2').Value := Summ_Koeff2;
      Parameters.ParamByName('@Summ_Znak2').Value := Summ_Znak2;
      Parameters.ParamByName('@Summ_Koeff3').Value := Summ_Koeff3;
      Parameters.ParamByName('@Summ_Znak3').Value := Summ_Znak3;
      Parameters.ParamByName('@inPercent').Value := inPercent;
      Parameters.ParamByName('@Id_Currency').Value := Id_Currency;
      Parameters.ParamByName('@Currency_Type').Value := Currency_Type;
      Parameters.ParamByName('@Summ_Formulas').Value := Summ_Formulas;
      Parameters.ParamByName('@Summ_UseSys').Value := Summ_UseSys;

      Parameters.ParamByName('@id_CnstItem').Value := id_CnstItem;
      Parameters.ParamByName('@ZnakCnstItem').Value := ZnakCnstItem;
      Parameters.ParamByName('@K_CnstItem').Value := K_CnstItem;


      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.UN_AccSumm(id_Acc: Integer; ADate: OleVariant): OleVariant;
begin
  Result := '';
  with spAccSumm do
  begin
    try
      Close;
      Parameters.ParamByName('@id_Acc').Value := id_Acc;
      Parameters.ParamByName('@Date').Value := ADate;
      Parameters.ParamByName('@Id_Currency').Value := Null;

      Open;
      try
        First;
        while not Eof do
        begin
          if Result <> '' then
            Result := Result + #13 + #10;
          Result := Result + FormatFloat('0.00', spAccSummSumm.AsFloat) + ' ' + spAccSummCrnName.AsString;
          Next; 
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := '';
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.UN_AccSummByCur(id_Acc: Integer; ADate: OleVariant;
  Id_Currency: Integer): OleVariant;
begin
  Result := 0;
  with spAccSumm do
  begin
    try
      Close;
      Parameters.ParamByName('@id_Acc').Value := id_Acc;
      Parameters.ParamByName('@Date').Value := ADate;
      Parameters.ParamByName('@Id_Currency').Value := Id_Currency;

      Open;
      try
        if not IsEmpty then
          Result := spAccSummSumm.AsFloat;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := 0;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Arc_OperAdd(id_business: Integer; ADate: TDateTime;
  id_User: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      THackAdoDataSet(ADOStoredProc1).CommandTimeout := 60*5;
      ProcedureName := 'Arc_OperAdd';

      Parameters.Refresh;

      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@Date').Value := ADate;
      Parameters.ParamByName('@id_User').Value := id_User;

      ExecProc;
      THackAdoDataSet(ADOStoredProc1).CommandTimeout := 60;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Arc_OperLastBal(id_business, DateCreate: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Arc_OperLastBal';

      Parameters.Refresh;

      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@DateCreate').Value := DateCreate;

      Open;
      if not IsEmpty then
        Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.UN_BalanceForm_v2(id_business: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      THackAdoDataSet(ADOStoredProc1).CommandTimeout := 60*3;
      ProcedureName := 'UN_BalanceForm_v2';

      Parameters.Refresh;

      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@Date').Value := NULL;
      Parameters.ParamByName('@isDeBug').Value := false;
      Parameters.ParamByName('@ClosePeriod').Value := true;
      Parameters.ParamByName('@CalcAll').Value := false;
      Parameters.ParamByName('@Save').Value := false;

      ExecProc;
      THackAdoDataSet(ADOStoredProc1).CommandTimeout := 60;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Arc_OperClear(id_business: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      THackAdoDataSet(ADOStoredProc1).CommandTimeout := 60*5;
      ProcedureName := 'Arc_OperClear';

      Parameters.Refresh;

      Parameters.ParamByName('@id_business').Value := id_business;
      ExecProc;
      THackAdoDataSet(ADOStoredProc1).CommandTimeout := 60;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Arc_OldOperCount(id_business: Integer; var id_OP_Arc,
  CNT: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Arc_OldOperCount';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      try
        Open;
        if not IsEmpty then
        begin
          Result := 1;
          id_OP_Arc := FieldByName('id_OP_Arc').AsInteger;
          CNT := FieldByName('CNT').AsInteger;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Bsn_DellAll(id_business: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      THackAdoDataSet(ADOStoredProc1).CommandTimeout := 60*8;
      ProcedureName := 'Bsn_DellAll';

      Parameters.Refresh;

      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@id_User').Value := Fid_User;

      ExecProc;
      THackAdoDataSet(ADOStoredProc1).CommandTimeout := 60;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Arc_OP_OperAdd(V, Imp_PayBasic, AccInv_PayAssignment,
  Contract, OpComment: OleVariant): Integer;
var RR : V_Arc_OP_Oper;
begin
  RR := UnPackRec_Arc_OP_Oper(V);
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Arc_OP_OperAdd';

      Parameters.Refresh;

      Parameters.ParamByName('@id_OperParent').Value := RR.id_OperParent;
      Parameters.ParamByName('@id_Arc').Value := RR.id_Arc;
      Parameters.ParamByName('@id_Oper').Value := RR.id_Oper;
      Parameters.ParamByName('@DateCreate').Value := RR.DateCreate;
      Parameters.ParamByName('@DateCreate').Value := RR.DateCreate;
      Parameters.ParamByName('@RealDataCreate').Value := RR.RealDataCreate;
      Parameters.ParamByName('@id_LC_Oper').Value := RR.id_LC_Oper;
      Parameters.ParamByName('@OperVid').Value := RR.OperVid;
      Parameters.ParamByName('@id_Replicator').Value := RR.id_Replicator;
      Parameters.ParamByName('@id_UserCreator').Value := RR.id_UserCreator;
      Parameters.ParamByName('@id_business').Value := RR.id_business;
      Parameters.ParamByName('@DateLocal').Value := RR.DateLocal;
      Parameters.ParamByName('@Correct').Value := RR.Correct;
      Parameters.ParamByName('@OperTypeIn').Value := RR.OperTypeIn;
      Parameters.ParamByName('@Id_CurrencyOper').Value := RR.Id_CurrencyOper;
      Parameters.ParamByName('@PriceFinOper').Value := RR.PriceFinOper;
      Parameters.ParamByName('@RateOper').Value := RR.RateOper;
      Parameters.ParamByName('@Id_CurrencySys').Value := RR.Id_CurrencySys;
      Parameters.ParamByName('@SummSysFin').Value := RR.SummSysFin;
      Parameters.ParamByName('@RateSys').Value := RR.RateSys;
      Parameters.ParamByName('@id_Acc').Value := RR.id_Acc;
      Parameters.ParamByName('@id_Warehouse').Value := RR.id_Warehouse;
      Parameters.ParamByName('@id_Manufact').Value := RR.id_Manufact;
      Parameters.ParamByName('@id_Repr').Value := RR.id_Repr;
      Parameters.ParamByName('@id_ContrAgent_ex').Value := RR.id_ContrAgent_ex;
      Parameters.ParamByName('@id_Acc_Ext').Value := RR.id_Acc_Ext;
      Parameters.ParamByName('@id_Warehouse_Ext').Value := RR.id_Warehouse_Ext;
      Parameters.ParamByName('@id_Manufact_Ext').Value := RR.id_Manufact_Ext;
      Parameters.ParamByName('@id_FormalDistrib').Value := RR.id_FormalDistrib;
      Parameters.ParamByName('@id_FuncDistrib').Value := RR.id_FuncDistrib;
      Parameters.ParamByName('@id_UserChecker').Value := RR.id_UserChecker;
      Parameters.ParamByName('@CheckDate').Value := RR.CheckDate;
      Parameters.ParamByName('@Koeff').Value := RR.Koeff;
      Parameters.ParamByName('@Id_CurrencyInv').Value := RR.Id_CurrencyInv;
      Parameters.ParamByName('@RateInv').Value := RR.RateInv;
      Parameters.ParamByName('@OrdNum').Value := RR.OrdNum;
      Parameters.ParamByName('@RateMain').Value := RR.RateMain;
      Parameters.ParamByName('@Dig1').Value := RR.Dig1;
      Parameters.ParamByName('@Dig2').Value := RR.Dig2;
      Parameters.ParamByName('@Dig3').Value := RR.Dig3;
      Parameters.ParamByName('@Dig4').Value := RR.Dig4;
      Parameters.ParamByName('@Dig5').Value := RR.Dig5;
      Parameters.ParamByName('@Dig6').Value := RR.Dig6;
      Parameters.ParamByName('@Dig7').Value := RR.Dig7;
      Parameters.ParamByName('@Dig8').Value := RR.Dig8;
      Parameters.ParamByName('@Dig9').Value := RR.Dig9;
      Parameters.ParamByName('@Dig10').Value := RR.Dig10;
      Parameters.ParamByName('@Dig11').Value := RR.Dig11;
      Parameters.ParamByName('@Dig12').Value := RR.Dig12;
      Parameters.ParamByName('@Dig13').Value := RR.Dig13;
      Parameters.ParamByName('@Dig14').Value := RR.Dig14;
      Parameters.ParamByName('@Dig15').Value := RR.Dig15;

      Parameters.ParamByName('@Str1').Value := RR.Str1;
      Parameters.ParamByName('@Str2').Value := RR.Str2;
      Parameters.ParamByName('@Str3').Value := RR.Str3;
      Parameters.ParamByName('@Str4').Value := RR.Str4;
      Parameters.ParamByName('@Str5').Value := RR.Str5;
      Parameters.ParamByName('@Str6').Value := RR.Str6;
      Parameters.ParamByName('@Str7').Value := RR.Str7;
      Parameters.ParamByName('@Str8').Value := RR.Str8;
      Parameters.ParamByName('@Str9').Value := RR.Str9;
      Parameters.ParamByName('@Str10').Value := RR.Str10;
      Parameters.ParamByName('@Str11').Value := RR.Str11;
      Parameters.ParamByName('@Str12').Value := RR.Str12;
      Parameters.ParamByName('@Str13').Value := RR.Str13;
      Parameters.ParamByName('@Str14').Value := RR.Str14;
      Parameters.ParamByName('@Str15').Value := RR.Str15; 

      Parameters.ParamByName('@Date1').Value := RR.Date1;
      Parameters.ParamByName('@Date2').Value := RR.Date2;
      Parameters.ParamByName('@Date3').Value := RR.Date3;
      Parameters.ParamByName('@Date4').Value := RR.Date4;
      Parameters.ParamByName('@Date5').Value := RR.Date5;
      Parameters.ParamByName('@Date6').Value := RR.Date6;
      Parameters.ParamByName('@Date7').Value := RR.Date7;
      Parameters.ParamByName('@Date8').Value := RR.Date8;
      Parameters.ParamByName('@Date9').Value := RR.Date9;
      Parameters.ParamByName('@Date10').Value := RR.Date10;
      Parameters.ParamByName('@Date11').Value := RR.Date11;
      Parameters.ParamByName('@Date12').Value := RR.Date12;
      Parameters.ParamByName('@Date13').Value := RR.Date13;
      Parameters.ParamByName('@Date14').Value := RR.Date14;
      Parameters.ParamByName('@Date15').Value := RR.Date15;

      Parameters.ParamByName('@Imp_PayBasic').Value := Imp_PayBasic;
      Parameters.ParamByName('@AccInv_PayAssignment').Value := AccInv_PayAssignment;
      Parameters.ParamByName('@Contract').Value := Contract;
      Parameters.ParamByName('@OpComment').Value := OpComment;

      Parameters.ParamByName('@VatIn').Value := RR.VatIn;
      Parameters.ParamByName('@AutoGen').Value := RR.AutoGen;
      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
    {  if Result = -13 then
        raise Exception.Create(E.Message);  }
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Arc_OP_OperWareAdd(V: OleVariant): Integer;
var RR : V_Arc_OP_Oper_Ware;
begin
  RR := UnPackRec_Arc_OP_Oper_Ware(V);
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Arc_OP_OperWareAdd';

      Parameters.Refresh;

      Parameters.ParamByName('@id_OperWare').Value := RR.id_OperWare;
      Parameters.ParamByName('@id_Oper').Value := RR.id_Oper;
      Parameters.ParamByName('@id_Measure').Value := RR.id_Measure;
      Parameters.ParamByName('@id_Goods').Value := RR.id_Goods;
      Parameters.ParamByName('@AmountOper').Value := RR.AmountOper;
      Parameters.ParamByName('@PriceOper').Value := RR.PriceOper;
      Parameters.ParamByName('@PriceInv').Value := RR.PriceInv;
      Parameters.ParamByName('@SummSys').Value := RR.SummSys;
      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

procedure TDic.APOperSort(id_ObjItem, OrderNum: Integer);
begin
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'AP_OperSort';

      Parameters.Refresh;

      Parameters.ParamByName('@id_ObjItem').Value := id_ObjItem;
      Parameters.ParamByName('@OrderNum').Value := OrderNum;

      ExecProc;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.SHOWCONTIG(TableName: OleVariant): OleVariant;
begin
  with ADOQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('dbcc SHOWCONTIG (' + TableName + ') WITH TABLERESULTS');
    Open;
    try
      Result := FieldByName('ScanDensity').AsFloat;
    finally
      Close;
    end;
  end;
end;

function TDic.DBREINDEX(TableName: OleVariant): Integer;
begin
  Result := -1;
  with ADOQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DBCC DBREINDEX  (' + '''' + TableName + '''' + ', ' + '''' + '''' + ')');
    try
      ExecSQL;
      Result := 1;
    except

    end;
  end;
end;

procedure TDic.SetBaseName(AName, AUserName, APassword: OleVariant);
begin
  FBaseName := AName;
  FUserName := AUserName;
  FPassword := APassword;
end;

function TDic.GetCASumm(id_Currency, id_ContrAgent: Integer): OleVariant;
begin
  Result := 0;
  with spCASumm do
  begin
    try
      Close;
      Parameters.ParamByName('@id_Currency').Value := id_Currency;
      Parameters.ParamByName('@id_ContrAgent').Value := id_ContrAgent;

      try
        Open;
        if not IsEmpty then
        begin
          Result := FieldByName('OperSumm').AsFloat;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.GetFirstRepr(id_ContrAgent: Integer): Integer;
begin
  Result := -1;
  with spGetFirstRepr do
  begin
    try
      Close;
      Parameters.ParamByName('@id_ContrAgent').Value := id_ContrAgent;

      try
        Open;
        if not IsEmpty then
        begin
          Result := FieldByName('id_Repr').AsInteger;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;

end;

function TDic.Crn_URLDel(Id_URL: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Crn_URLDel';

      Parameters.Refresh;
      Parameters.ParamByName('@Id_URL').Value := Id_URL;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.BJ_TreeDel(id_BJ_Tree: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'BJ_TreeDel';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_BJ_Tree').Value := id_BJ_Tree;
      ExecProc;

      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create('������ ��� �������� ������ - ' + E.Message);
      end;
    end;
  end;
end;

function TDic.BJ_TreeEdit(id_BJ_Tree, id_BJ_Obj: Integer; AName,
  PID: OleVariant; isDeb: WordBool; ExtID: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    if id_BJ_Tree = -1 then
      ProcedureName := 'BJ_TreeAdd'
    else
      ProcedureName := 'BJ_TreeEdit';
    try
      Close;
      Parameters.Refresh;
      if id_BJ_Tree <> -1 then
        Parameters.ParamByName('@id_BJ_Tree').Value := id_BJ_Tree;
      Parameters.ParamByName('@id_BJ_Obj').Value := id_BJ_Obj;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@PID').Value := PID;
      Parameters.ParamByName('@isDeb').Value := isDeb;
      if id_BJ_Tree = -1 then
        Parameters.ParamByName('@ExtID').Value := ExtID;
      ExecProc;

      if id_BJ_Tree = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create('������ ��� �������� - ' + E.Message);
      end;
    end;
  end;
end;

procedure TDic.BJ_TreeGetProp(id_BJ_Tree: Integer; var id_BJ_Obj, AName,
  PID: OleVariant);
begin
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'BJ_TreeGetProp';
      Parameters.Refresh;

      Parameters.ParamByName('@id_BJ_Tree').Value := id_BJ_Tree;

      try
        Open;
        if not IsEmpty then
        begin
          id_BJ_Obj := FieldByName('id_BJ_Obj').AsInteger;
          AName := FieldByName('Name').AsString;
          PID := FieldByName('PID').AsVariant;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.BJ_TreeCheck(id_BJ_Tree: Integer; PID,
  AName: OleVariant): OleVariant;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'BJ_TreeCheck';
    try
      Parameters.Refresh;
      Parameters.ParamByName('@id_BJ_Tree').Value := id_BJ_Tree;
      Parameters.ParamByName('@PID').Value := PID;
      Parameters.ParamByName('@Name').Value := AName;

      try
        Open;
        if IsEmpty then
          Result := 1;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.BJ_ItemEdit(id_BJ_Item, id_BJ_Tree: Integer; AName,
  id_ContrAgent, id_Acc, PlanIn, PlanDelta: OleVariant; NeedCalc: WordBool;
  PlanCorrect: OleVariant; isDirect, isInState: WordBool): OleVariant;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    if id_BJ_Item = -1 then
      ProcedureName := 'BJ_ItemAdd'
    else
      ProcedureName := 'BJ_ItemEdit';
    try
      Close;
      Parameters.Refresh;
      if id_BJ_Item <> -1 then
        Parameters.ParamByName('@id_BJ_Item').Value := id_BJ_Item;

      Parameters.ParamByName('@id_BJ_Tree').Value := id_BJ_Tree;
      if (id_Acc <> Null) or (id_ContrAgent <> Null) then
        Parameters.ParamByName('@Name').Value := Null
      else
        Parameters.ParamByName('@Name').Value := AName;

      Parameters.ParamByName('@id_ContrAgent').Value := id_ContrAgent;
      Parameters.ParamByName('@id_Acc').Value := id_Acc;

      Parameters.ParamByName('@PlanIn').Value := PlanIn;
      Parameters.ParamByName('@PlanDelta').Value := PlanDelta;
      Parameters.ParamByName('@PlanCorrect').Value := PlanCorrect;

      Parameters.ParamByName('@isDirect').Value := isDirect;
      Parameters.ParamByName('@isInState').Value := isInState;

      if id_BJ_Item = -1 then
        Parameters.ParamByName('@NeedCalc').Value := NeedCalc;

      ExecProc;

      if id_BJ_Item = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create('������ ��� �������� - ' + E.Message);
      end;
    end;
  end;
end;

function TDic.BJ_ObjEdit(id_BJ_Obj, id_business: Integer; AName, StartDate,
  StopDate: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    if id_BJ_Obj = -1 then
      ProcedureName := 'BJ_ObjAdd'
    else
      ProcedureName := 'BJ_ObjEdit';
    try
      Close;
      Parameters.Refresh;
      if id_BJ_Obj <> -1 then
        Parameters.ParamByName('@id_BJ_Obj').Value := id_BJ_Obj;
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@StartDate').Value := StartDate;
      Parameters.ParamByName('@StopDate').Value := StopDate;
      Parameters.ParamByName('@id_Creator').Value := Fid_User;

      ExecProc;

      if id_BJ_Obj = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create('������ ��� �������� - ' + E.Message);
      end;
    end;
  end;
end;

function TDic.BJ_ItemDel(id_BJ_Item: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'BJ_ItemDel';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_BJ_Item').Value := id_BJ_Item;
      ExecProc;

      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create('������ ��� �������� ������ - ' + E.Message);
      end;
    end;
  end;
end;

procedure TDic.Get_AccInfos(id_Acc: Integer; var AName,
  id_business: OleVariant);
begin
  AName := '';
  id_business := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'GetName_Acc';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Acc').Value := id_Acc;
      try
        Open;
        if not IsEmpty then
        begin
          AName := FieldByName('Name').AsString;
          id_business := FieldByName('id_business').AsInteger;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.BJ_ObjDel(id_BJ_Obj: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'BJ_ObjDel';

      Parameters.Refresh;
      Parameters.ParamByName('@id_BJ_Obj').Value := id_BJ_Obj;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.BJ_ObjEdit2(id_BJ_Obj, id_business: Integer;
  AName: OleVariant; id_Creator: Integer; StartDate,
  StopDate: OleVariant): Integer;
begin

end;

function TDic.BJ_ObjDateStart(id_BJ_Obj: Integer): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'BJ_ObjProp';
      Parameters.Refresh;

      Parameters.ParamByName('@id_BJ_Obj').Value := id_BJ_Obj;

      try
        Open;
        if not IsEmpty then
        begin
          Result := FieldByName('StartDate').AsVariant;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
     //   Result := Null;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.BJ_ItemSetOrdNum(id_BJ_Item, OrdNum: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'BJ_ItemSetOrdNum';

      Parameters.Refresh;
      Parameters.ParamByName('@id_BJ_Item').Value := id_BJ_Item;
      Parameters.ParamByName('@OrdNum').Value := OrdNum;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.BJ_TreeSetOrdNum(id_BJ_Tree, OrdNum: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'BJ_TreeSetOrdNum';

      Parameters.Refresh;
      Parameters.ParamByName('@id_BJ_Tree').Value := id_BJ_Tree;
      Parameters.ParamByName('@OrdNum').Value := OrdNum;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.BJ_Copy(OLD_ID, NEW_ID: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'BJ_Copy';
    try
      Close;
      THackAdoDataSet(ADOStoredProc1).CommandTimeout := 60*5;

      Parameters.Refresh;
      Parameters.ParamByName('@OLD_ID').Value := OLD_ID;
      Parameters.ParamByName('@NEW_ID').Value := NEW_ID;

      ExecProc;

      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create('������ ��� ����������� - ' + E.Message);
      end;
    end;
  end;
end;

function TDic.DD_MaxDay_Ex(id_business: Integer): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'DD_MaxDay_Ex';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;

      Open;
      Result := fieldByName('VirtDate').Value;
      Close;
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.BJ_Ch(id_BJ_Obj: Integer; aid_User: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'BJ_Obj_SetCh';

      Parameters.Refresh;
      Parameters.ParamByName('@id_BJ_Obj').Value := id_BJ_Obj;
      Parameters.ParamByName('@id_User').Value := aid_User;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.BJ_ItemEdit_Check(id_BJ_Item: Integer; isDirect,
  isInState: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'BJ_ItemEdit_Check';

      Parameters.Refresh;
      Parameters.ParamByName('@id_BJ_Item').Value := id_BJ_Item;
      Parameters.ParamByName('@isDirect').Value := isDirect;
      Parameters.ParamByName('@isInState').Value := isInState;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Doc_WHOrdEdit(id_WHOrd: Integer; id_Doc_Org, id_Oper,
  Doc_Num, Doc_Date, id_UserCreator, Payer, Expeditor, OpComment,
  id_DocCur, TotalAmount_Pack, TotalAmount_Box: OleVariant;
  id_business: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_WHOrd = -1 then
        ProcedureName := 'Doc_WHOrdAdd'
      else
        ProcedureName := 'Doc_WHOrdEdit';

      Parameters.Refresh;
      if id_WHOrd > -1 then
        Parameters.ParamByName('@id_WHOrd').Value := id_WHOrd;

      Parameters.ParamByName('@id_DocCur').Value := id_DocCur;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@Doc_Num').Value := Doc_Num;
      Parameters.ParamByName('@Doc_Date').Value := Doc_Date;
      Parameters.ParamByName('@id_Doc_Org').Value := Null;
      Parameters.ParamByName('@id_UserCreator').Value := id_UserCreator;

      
      Parameters.ParamByName('@Payer').Value := Payer;
      Parameters.ParamByName('@Expeditor').Value := Expeditor;
      Parameters.ParamByName('@OpComment').Value := OpComment;
      Parameters.ParamByName('@TotalAmount_Pack').Value := TotalAmount_Pack;
      Parameters.ParamByName('@TotalAmount_Box').Value := TotalAmount_Box;

      if id_business > 0 then
        Parameters.ParamByName('@id_business').Value := id_business
      else
        Parameters.ParamByName('@id_business').Value := Null;
      ExecProc;
      if id_WHOrd = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.UN_InvCalc(OPComment, OrdN, id_Manufact,
  OperTypeIn: OleVariant): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Inv_InvCalc';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@OPComment').Value := OPComment;
      Parameters.ParamByName('@OrdN').Value := OrdN;
      Parameters.ParamByName('@id_Manufact').Value := id_Manufact;
      Parameters.ParamByName('@OperTypeIn').Value := OperTypeIn;

      Open;
      Result := fieldByName('SummOper').Value;
      Close;
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.GetINV_Form(id_business, ExtID: Integer): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'GetINV_Form';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@ExtID').Value := ExtID;

      Open;
      Result := fieldByName('Price').Value;
      Close;
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.INV_GetFormPrice(id_Goods, id_manufact: Integer;
  DateCreate: OleVariant): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'INV_GetFormPrice';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Goods').Value := id_Goods;
      Parameters.ParamByName('@id_manufact').Value := id_manufact;
      Parameters.ParamByName('@DateCreate').Value := DateCreate;

      Open;
      Result := fieldByName('PriceOper').Value;
      Close;
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Inv_InvWare(OPComment, OrdN, GName,
  id_Manufact: OleVariant): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Inv_InvWare';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@OPComment').Value := OPComment;
      Parameters.ParamByName('@OrdN').Value := OrdN;
      Parameters.ParamByName('@GName').Value := GName;
      Parameters.ParamByName('@id_Manufact').Value := id_Manufact;

      Open;
      Result := fieldByName('AmountOper').Value;
      Close;
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Inv_InvGoods(OPComment, OrdN, Id_Ctg_Goods, Id_Ctg_Goods2,
  id_Manufact: OleVariant): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Inv_InvGoods';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@OPComment').Value := OPComment;
      Parameters.ParamByName('@OrdN').Value := OrdN;
      Parameters.ParamByName('@Id_Ctg_Goods').Value := Id_Ctg_Goods;
      Parameters.ParamByName('@Id_Ctg_Goods2').Value := Id_Ctg_Goods2;
      Parameters.ParamByName('@id_Manufact').Value := id_Manufact;

      Open;
      Result := fieldByName('AmountOper').Value;
      Close;
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Inv_TimeGet(id_Project, id_Lines: Integer;
  ExtID: OleVariant): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Inv_TimeGet';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Project').Value := id_Project;
      Parameters.ParamByName('@id_Lines').Value := id_Lines;
      Parameters.ParamByName('@ExtID').Value := ExtID;

      Open;
      Result := FieldByName('SumVal').Value;
      Close;
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.INV_FormEdit(id_Form: Integer; Price: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;

      ProcedureName := 'INV_FormEdit';

      Parameters.Refresh;
      Parameters.ParamByName('@id_Form').Value := id_Form;
      Parameters.ParamByName('@Price').Value := Price;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

procedure TDic.Inv_ProjectDel(id_Project: Integer);
begin
 // Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;

      ProcedureName := 'Inv_ProjectDel';

      Parameters.Refresh;
      Parameters.ParamByName('@id_Project').Value := id_Project;

      ExecProc;
   //   Result := 1;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Inv_ProjectEdit(id_Project: Integer; AName: OleVariant;
  id_User: Integer; PrjNum, PrjDate, id_Goods: OleVariant): OleVariant;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_Project = -1 then
        ProcedureName := 'Inv_ProjectAdd'
      else
        ProcedureName := 'Inv_ProjectEdit';

      Parameters.Refresh;
      if id_Project > -1 then
        Parameters.ParamByName('@id_Project').Value := id_Project;

      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@id_Oper').Value := Name;
      Parameters.ParamByName('@id_User').Value := id_User;
      Parameters.ParamByName('@PrjNum').Value := PrjNum;
      Parameters.ParamByName('@PrjDate').Value := PrjDate;
      Parameters.ParamByName('@id_Goods').Value := id_Goods;

      ExecProc;
      if id_Project = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.Getid_Project: OleVariant;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Inv_ProjectGetMax';
    try
      Close;
      Parameters.Refresh;

      Open;
      Result := FieldByName('id_Project').Value;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

procedure TDic.INV_LinesPrice(OrdNum: Integer; var id_Lines,
  TimePrice: OleVariant);
begin
  id_Lines := Null;
  TimePrice := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'INV_LinesPrice';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@OrdNum').Value := OrdNum;


      Open;
      id_Lines := FieldByName('id_Lines').Value;
      TimePrice := FieldByName('TimePrice').Value;
      Close;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

procedure TDic.Inv_ProjectSetCheckDate(id_Project: Integer;
  CheckDate: OleVariant);
begin
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Inv_ProjectSetCheckDate';

      Parameters.Refresh;
      Parameters.ParamByName('@id_Project').Value := id_Project;
      Parameters.ParamByName('@CheckDate').Value := CheckDate;
    //  if Parameters.FindParam('@id_User') <> nil then
        Parameters.ParamByName('@id_Checker').Value := Fid_User;

      ExecProc;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.INV_ExtPrice(id_Lines: Integer;
  Amount: OleVariant): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'INV_ExtPrice';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Lines').Value := id_Lines;
      Parameters.ParamByName('@Amount').Value := Amount;

      Open;
      Result := fieldByName('Price').Value;
      Close;
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Inv_GetMN(id_Manufact: Integer): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Inv_GetMN';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Manufact').Value := id_Manufact;

      Open;
      Result := fieldByName('id_Manufact').Value;
      Close;
    except
      on E : Exception do
      begin
        Result := Null;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.Inv_ProjectComment(id_Project: Integer;
  Comment: OleVariant): Integer;
begin
  Result := 0;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'Inv_ProjectComment';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Project').Value := id_Project;
      Parameters.ParamByName('@Comment').Value := Comment;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := 0;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.AP_CnstItemEdit(id_CnstItem: Integer; AName,
  aVal: OleVariant; id_Business: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_CnstItem = -1 then
        ProcedureName := 'AP_CnstItemAdd'
      else
        ProcedureName := 'AP_CnstItemEdit';

      Parameters.Refresh;
      if id_CnstItem > -1 then
      begin
        Parameters.ParamByName('@id_CnstItem').Value := id_CnstItem;
      end
      else
        Parameters.ParamByName('@id_Business').Value := id_Business;
      
      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@Val').Value := aVal;

      ExecProc;
      if id_CnstItem = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 15;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.AP_CnstItemDel(id_CnstItem: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'AP_CnstItemDel';

      Parameters.Refresh;
      Parameters.ParamByName('@id_CnstItem').Value := id_CnstItem;

      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;end;

procedure TDic.AP_CnstGetProp(id_CnstItem: Integer; var ANAme,
  Val: OleVariant);
begin
  ANAme := Null;
  Val := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'AP_CnstGetProp';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_CnstItem').Value := id_CnstItem;

      Open;
      ANAme := fieldByName('NAme').Value;
      Val := fieldByName('Val').Value;
      Close;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.CustRep_RepGetProp(id_Rep: Integer): OleVariant;
begin
  Result := Null;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'CustRep_RepGetProp';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Rep').Value := id_Rep;

      Open;
      Result := fieldByName('RepName').Value;
      Close;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

procedure TDic.CustRep_CatDel(id_Cat: Integer);
begin
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'CustRep_CatDel';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_Cat').Value := id_Cat;

      ExecProc;
      Close;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.CustRep_CatAdd(id_Rep: Integer; AName, PID, ExtStr,
  id_FormalDistrib, id_FuncDistrib, id_Acc: OleVariant; isCat: WordBool;
  APlan, F_id_ContrAgent: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'CustRep_CatAdd';

      Parameters.Refresh;

      Parameters.ParamByName('@Name').Value := AName;
      Parameters.ParamByName('@PID').Value := PID;
      Parameters.ParamByName('@id_Rep').Value := id_Rep;

      Parameters.ParamByName('@ExtStr').Value := ExtStr;
      Parameters.ParamByName('@id_FormalDistrib').Value := id_FormalDistrib;
      Parameters.ParamByName('@id_FuncDistrib').Value := id_FuncDistrib;
      Parameters.ParamByName('@id_Acc').Value := id_Acc;
      Parameters.ParamByName('@isCat').Value := isCat;
      Parameters.ParamByName('@APlan').Value := APlan;
      Parameters.ParamByName('@F_id_ContrAgent').Value := F_id_ContrAgent;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;end;

function TDic.Inv_ProjectSetCheckDateFact(id_Project: Integer;
  CheckDateFact: OleVariant): Integer;
begin
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Inv_ProjectSetCheckDateFact';

      Parameters.Refresh;
      Parameters.ParamByName('@id_Project').Value := id_Project;
      Parameters.ParamByName('@CheckDateFact').Value := CheckDateFact;

    //  if Parameters.FindParam('@id_User') <> nil then
        Parameters.ParamByName('@id_CheckerFFF').Value := Fid_User;
      ExecProc;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.APN_ObjEdit(id_APN_Obj, id_business: Integer; id_Repr,
  id_Acc: OleVariant; OperTypeIn: WordBool; DayNum: Integer;
  AName: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_APN_Obj = -1 then
        ProcedureName := 'APN_ObjAdd'
      else
        ProcedureName := 'APN_ObjEdit';

      Parameters.Refresh;
      if id_APN_Obj > -1 then
        Parameters.ParamByName('@id_APN_Obj').Value := id_APN_Obj;

      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@id_Repr').Value := id_Repr;
      Parameters.ParamByName('@id_Acc').Value := id_Acc;
      Parameters.ParamByName('@OperTypeIn').Value := OperTypeIn;
      Parameters.ParamByName('@DayNum').Value := DayNum;
      Parameters.ParamByName('@Name').Value := AName;

      ExecProc;
      if id_APN_Obj = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 15;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.APN_AccListDel(id_APN_AccList: Integer): Integer;
begin
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'APN_AccListDel';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_APN_AccList').Value := id_APN_AccList;

      ExecProc;
      Close;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.APN_ObjDel(id_APN_Obj: Integer): Integer;
begin
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'APN_ObjDel';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_APN_Obj').Value := id_APN_Obj;

      ExecProc;
      Close;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.APN_ObjDoIt(id_APN_Obj: Integer): Integer;
begin
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'APN_ObjDoIt';
    try
      Close;
      Parameters.Refresh;
      Parameters.ParamByName('@id_APN_Obj').Value := id_APN_Obj;

      ExecProc;
      Close;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.APN_AccListEdit(id_APN_AccList, id_APN_Obj, id_Acc: Integer;
  ASumm, Id_Currency, APrc: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      if id_APN_AccList = -1 then
        ProcedureName := 'APN_AccListAdd'
      else
        ProcedureName := 'APN_AccListEdit';

      Parameters.Refresh;
      if id_APN_AccList > -1 then
        Parameters.ParamByName('@id_APN_AccList').Value := id_APN_AccList;

      Parameters.ParamByName('@id_APN_Obj').Value := id_APN_Obj;
      Parameters.ParamByName('@id_Acc').Value := id_Acc;
      Parameters.ParamByName('@ASumm').Value := ASumm;
      Parameters.ParamByName('@Id_Currency').Value := Id_Currency;
      Parameters.ParamByName('@APrc').Value := APrc;

      ExecProc;
      if id_APN_AccList = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 15;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.isPPP: WordBool;
begin
  Result := FisPPP;
end;

function TDic.OP_ReplaceDate_CH(id_Oper: Integer;
  VirtDate: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP_ReplaceDate_CH';

      Parameters.Refresh;

      Parameters.ParamByName('@id_Oper').Value := id_Oper;
      Parameters.ParamByName('@VirtDate').Value := VirtDate;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.PL_LastPrice(id_Goods: Integer): OleVariant;
begin
  Result := 0;
  with spLastPrice do
  begin
    try
      Close;
      Parameters.ParamByName('@id_Goods').Value := id_Goods;

      try
        Open;
        if not IsEmpty then
        begin
          Result := FieldByName('PriceOper').AsFloat;
        end;
      finally
        Close;
      end;
    except
      on E : Exception do
      begin
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.DD_Cancel(id_business: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    Close;
    ProcedureName := 'DD_Cancel';
    try
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      ExecProc;
      Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

function TDic.DCh_Oper_Impex(DateCreate: OleVariant; id_business, OperVid,
  OperTypeIn: Integer; CurrencyOperName, PriceFinOper: OleVariant;
  id_Acc: Integer; AccInv_PayAssignment, OpComment, KS, ReprName, INN,
  Contract, Koeff: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'DCh_Oper_Impex';
      Parameters.Refresh;
      Parameters.ParamByName('@DateCreate').Value := DateCreate;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@OperVid').Value := OperVid;

      Parameters.ParamByName('@id_UserCreator').Value := Fid_User;
      Parameters.ParamByName('@OperTypeIn').Value := OperTypeIn;
      Parameters.ParamByName('@CurrencyOperName').Value := CurrencyOperName;
      Parameters.ParamByName('@PriceFinOper').Value := PriceFinOper;
      
      Parameters.ParamByName('@id_Acc').Value := id_Acc;
      Parameters.ParamByName('@AccInv_PayAssignment').Value := AccInv_PayAssignment;
      Parameters.ParamByName('@OpComment').Value := OpComment;
      Parameters.ParamByName('@KS').Value := KS;
      Parameters.ParamByName('@ReprName').Value := ReprName;

      Parameters.ParamByName('@INN').Value := INN;
      Parameters.ParamByName('@Contract').Value := Contract;
      Parameters.ParamByName('@Koeff').Value := Koeff;

      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OP__SetKoeff(Koeff, id_Oper: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'OP__SetKoeff';
      Parameters.Refresh;
      Parameters.ParamByName('@Koeff').Value := Koeff;
      Parameters.ParamByName('@id_Oper').Value := id_Oper;

      ExecProc;
      Result := 1; //Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.OffPayment(id_CA: Integer): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := '__OffPayment';
      Parameters.Refresh;
      Parameters.ParamByName('@id_CA').Value := id_CA;

      ExecProc;
      Result := 1;
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
      end;
    end;
  end;
end;

function TDic.AddOper(id_business, WHName, GoodsName, BarCode, MeasureName,
  CAName, AmountOper, PriceOper, DateLocal, id_Session, Contract,
  Mode: OleVariant): Integer;
begin
  with spAdd do
  begin
    try
    Parameters.ParamByName('@id_business').Value := id_business;
    Parameters.ParamByName('@id_Oper').Value := null;
    Parameters.ParamByName('@GoodsName').Value := GoodsName;
    Parameters.ParamByName('@ShortName').Value := GoodsName;
    Parameters.ParamByName('@BarCode').Value := BarCode;
    Parameters.ParamByName('@MeasureName').Value := MeasureName;
    Parameters.ParamByName('@CAName').Value := CAName;


    Parameters.ParamByName('@AmountOper').Value := AmountOper;
    Parameters.ParamByName('@PriceOper').Value := PriceOper;
  //  Parameters.ParamByName('@PriceInv').Value := PriceInv;
    Parameters.ParamByName('@DateLocal').Value := DateLocal;
    Parameters.ParamByName('@id_UserCreator').Value := Fid_User;
    Parameters.ParamByName('@id_Session').Value := id_Session;

    Parameters.ParamByName('@WHName').Value := WHName;
    Parameters.ParamByName('@Contract').Value := Contract;
    Parameters.ParamByName('@Mode').Value := Mode;
      ExecProc;
      Result := Parameters.ParamValues['@RETURN_VALUE'];
    except;
      spAdd.Tag := 0;
    end;
  end;
end;

function TDic.AddMov(id_business, WHName, GoodsName, BarCode, MeasureName,
  CAName, AmountOper, PriceOper, PriceInv, DateLocal, id_Session,
  Mode: OleVariant): Integer;
begin
  with spMOV do
  begin
    Parameters.ParamByName('@id_business').Value := id_business;
    Parameters.ParamByName('@GoodsName').Value := GoodsName;
    Parameters.ParamByName('@ShortName').Value := GoodsName;
    Parameters.ParamByName('@BarCode').Value := BarCode;
    Parameters.ParamByName('@MeasureName').Value := MeasureName;
    Parameters.ParamByName('@CAName').Value := CAName;
    Parameters.ParamByName('@AmountOper').Value := AmountOper;
    Parameters.ParamByName('@PriceOper').Value := PriceOper;
    Parameters.ParamByName('@PriceInv').Value := PriceInv;
    Parameters.ParamByName('@DateLocal').Value := DateLocal;
    Parameters.ParamByName('@id_UserCreator').Value := Fid_User;
    Parameters.ParamByName('@id_Session').Value := id_Session;
    Parameters.ParamByName('@Mode').Value := Mode;
    Parameters.ParamByName('@WHName').Value := WHName;

    ExecProc;

    Result := Parameters.ParamValues['@RETURN_VALUE'];
  end;
end;

function TDic.CI_WareCorrect(id_business, WHName, GoodsName, BarCode,
  MeasureName, AmountOper, PriceOper, DateLocal, id_Session,
  Mode: OleVariant): Integer;
begin
  with spWareCorrect do
  begin
    Parameters.ParamByName('@id_business').Value := id_business;
    Parameters.ParamByName('@id_Session').Value := id_Session;
    Parameters.ParamByName('@BarCode').Value := copy(trim(BarCode), 1, 20);
    Parameters.ParamByName('@MeasureName').Value := MeasureName;
    Parameters.ParamByName('@GoodsName').Value := GoodsName;
    Parameters.ParamByName('@ShortName').Value := GoodsName;
    Parameters.ParamByName('@AmountOper').Value := AmountOper;
    Parameters.ParamByName('@PriceOper').Value := PriceOper;
    Parameters.ParamByName('@WHName').Value := WHName;
    Parameters.ParamByName('@id_UserCreator').Value := null;
    Parameters.ParamByName('@id_Session').Value := id_Session;
    Parameters.ParamByName('@DateLocal').Value := DateLocal;
    Parameters.ParamByName('@Mode').Value := Mode;

    try
      ExecProc;
    except
      tag := 0;
    end;
  end;
end;

function TDic.Getid_Session(id_business: Integer; NLog: WordBool;
  FileType: OleVariant): Integer;
begin
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'BC_GetBC_Session';
      Parameters.Refresh;
      Parameters.ParamByName('@id_business').Value := id_business;
      Parameters.ParamByName('@NLog').Value := NLog;
      Parameters.ParamByName('@FileType').Value := FileType;
      Open;


      Result := ADOStoredProc1.FieldbyName('id_Session').AsInteger; //Parameters.ParamValues['@RETURN_VALUE'];
      Close;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(e.Message);
      end;
    end;
  end;
end;

function TDic.Doc_UPDUnEdit(id_UPD: Integer; V: OleVariant;
  id_Doc_Org: Integer): Integer;
var RR : V_UPD;
begin
  RR := UnPackRecV_UPD( V);
  Result := -1;
  with ADOStoredProc1 do
  begin
    try
      Close;
      ProcedureName := 'Doc_UPDUnEdit';

      Parameters.Refresh;
      Parameters.ParamByName('@id_UPD').Value := id_UPD;

      Parameters.ParamByName('@id_DocCur').Value := RR.id_DocCur;
      Parameters.ParamByName('@id_Oper').Value := RR.id_Oper;
      Parameters.ParamByName('@Doc_Date').Value := RR.Doc_Date;
      Parameters.ParamByName('@Doc_Num').Value := RR.Doc_Num;
      Parameters.ParamByName('@id_UserCreator').Value := RR.id_UserCreator;
      Parameters.ParamByName('@OrgName').Value := RR.OrgName;
      Parameters.ParamByName('@Address').Value := RR.Address;
      Parameters.ParamByName('@INN').Value := RR.INN;
      Parameters.ParamByName('@KPP').Value := RR.KPP;
      Parameters.ParamByName('@Sender_Name').Value := RR.Sender_Name;
      Parameters.ParamByName('@Sender_Address2').Value := RR.Sender_Address2;
 
      Parameters.ParamByName('@ExtDocDate').Value := RR.ExtDocDate;
      Parameters.ParamByName('@ExtDocNum').Value := RR.ExtDocNum;
      Parameters.ParamByName('@Bayer_Name').Value := RR.Bayer_Name;
      Parameters.ParamByName('@Bayer_Address').Value := RR.Bayer_Address;
      Parameters.ParamByName('@Bayer_INN').Value := RR.Bayer_INN;
      Parameters.ParamByName('@Bayer_KPP').Value := RR.Bayer_KPP;
 
      Parameters.ParamByName('@Chif').Value := RR.Chif;
      Parameters.ParamByName('@Buh').Value := RR.Buh;
      Parameters.ParamByName('@VAT').Value := RR.VAT;

      if id_Doc_Org > 0 then
        Parameters.ParamByName('@id_Doc_Org').Value := id_Doc_Org
      else
        Parameters.ParamByName('@id_Doc_Org').Value := Null;

      ExecProc;
      if id_UPD = -1 then
        Result := Parameters.ParamValues['@RETURN_VALUE']
      else
        Result := 1;
    except
      on E : Exception do
      begin
        Result := -1;
        Close;
        LogMessage(ProcedureName + ' ' + E.Message);
        raise Exception.Create(E.Message);
      end;
    end;
  end;
end;

procedure TDic.spDoc_AFAfterOpen(DataSet: TDataSet);
begin
  tag := 0;
end;

procedure TDic.UnBeforeOpen(DataSet: TDataSet);
var AParam : TParameter;
begin
  AParam := (DataSet as TADOStoredProc).Parameters.FindParam('@id_User');
  if AParam <> nil then
  begin
    if AParam.Value = null then
    begin
      SetTParametersVal((DataSet as TADOStoredProc).Parameters, '@id_User', Fid_User);
    end;
  end;
end;

initialization
  TComponentFactory.Create(ComServer, TDic,
    Class_Dic, ciMultiInstance, tmApartment);
end.
