program EManager;



uses
  Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  uFormApi_CA in '..\common\uFormApi_CA.pas',
  LogInUnit in '..\units\LogIn\LogInUnit.pas' {LogInForm},
  frBsnSelector in '..\units\Bsn\frBsnSelector.pas' {fBsnSelector: TFrame},
  uCAList in '..\units\CntrAgent\uCAList.pas' {CAList},
  frCntrAgentList in '..\units\CntrAgent\frCntrAgentList.pas' {fCntrAgentList: TFrame},
  foMyFunc in '..\common\foMyFunc.pas',
  uInputBox in '..\common\uInputBox.pas' {FrmInputBox},
  frCntrAgentProp in '..\units\CntrAgent\frCntrAgentProp.pas' {fCntrAgentProp: TFrame},
  frCAGroupList in '..\units\CntrAgent\frCAGroupList.pas' {fCAGroupList: TFrame},
  frCurSelector in '..\units\Cur\frCurSelector.pas' {fCurSelector: TFrame},
  frWare in '..\units\Catalog\frWare.pas' {fWare: TFrame},
  uCurSelectorForm in '..\units\Cur\uCurSelectorForm.pas' {CurSelectorForm},
  uCntrAgentProp in '..\units\CntrAgent\uCntrAgentProp.pas' {CntrAgentProp},
  frCAGroupSelect in '..\units\CntrAgent\frCAGroupSelect.pas' {fCAGroupSelect: TFrame},
  uComment in '..\common\uComment.pas' {Comment},
  frCAContact in '..\units\CntrAgent\frCAContact.pas' {fCAContact: TFrame},
  uCAContact in '..\units\CntrAgent\uCAContact.pas' {CAContact},
  frReprList in '..\units\CntrAgent\frReprList.pas' {fReprList: TFrame},
  frReprProp in '..\units\CntrAgent\frReprProp.pas' {fReprProp: TFrame},
  uReprProp in '..\units\CntrAgent\uReprProp.pas' {ReprProp},
  uCAGroupSelect in '..\units\CntrAgent\uCAGroupSelect.pas' {CAGroupSelect},
  uFormApi_Crn in '..\common\uFormApi_Crn.pas',
  frWareCtgProp in '..\units\Catalog\frWareCtgProp.pas' {fWareCtgProp: TFrame},
  uFormApi_Ware in '..\common\uFormApi_Ware.pas',
  uWareCtgProp in '..\units\Catalog\uWareCtgProp.pas' {WareCtgProp},
  uMeasureSelector in '..\units\Catalog\uMeasureSelector.pas' {MeasureSelector},
  uWareProp in '..\units\Catalog\uWareProp.pas' {WareProp},
  frWareProp in '..\units\Catalog\frWareProp.pas' {fWareProp: TFrame},
  uDM in 'uDM.pas' {DM: TDataModule},
  uFormsAPI_Admin in '..\Common\uFormsAPI_Admin.pas',
  uUsersFrame in '..\Units\User\uUsersFrame.pas' {UsersFrame: TFrame},
  uUsersForm in '..\Units\User\uUsersForm.pas' {UsersForm},
  uUserDetailsForm in '..\Units\User\uUserDetailsForm.pas' {UserDetailsForm},
  uNSIDetailFormsAPI in '..\Common\uNSIDetailFormsAPI.pas',
  uGroupsFrame in '..\Units\User\uGroupsFrame.pas' {GroupsFrame: TFrame},
  uGroupsForm in '..\Units\User\uGroupsForm.pas' {GroupsForm},
  uGroupDetailForm in '..\Units\User\uGroupDetailForm.pas' {GroupDetailForm},
  uMeasuresFrame in '..\Units\NSI\uMeasuresFrame.pas' {MeasuresFrame: TFrame},
  uMeasuresForm in '..\Units\NSI\uMeasuresForm.pas' {MeasuresForm},
  uMeasureDetailForm in '..\Units\NSI\uMeasureDetailForm.pas' {MeasureDetailForm},
  uBusinessesFrame in '..\Bsn\uBusinessesFrame.pas' {BusinessesFrame: TFrame},
  uBusinessesForm in '..\Bsn\uBusinessesForm.pas' {BusinessesForm},
  uBusinessDetailForm in '..\Bsn\uBusinessDetailForm.pas' {BusinessDetailForm},
  uManufactFrame in '..\Units\SysObj\uManufactFrame.pas' {ManufactFrame: TFrame},
  uManufactDetailForm in '..\Units\SysObj\uManufactDetailForm.pas' {ManufactDetailForm},
  uWareHouseFrame in '..\Units\SysObj\uWareHouseFrame.pas' {WareHouseFrame: TFrame},
  uWareHouseDetailForm in '..\Units\SysObj\uWareHouseDetailForm.pas' {WareHouseDetailForm},
  uReplicatorsFrame in '..\Units\SysObj\uReplicatorsFrame.pas' {ReplicatorsFrame: TFrame},
  uReplicatorDetailForm in '..\Units\SysObj\uReplicatorDetailForm.pas' {ReplicatorDetailForm},
  uReplicatorsForm in '..\Units\SysObj\uReplicatorsForm.pas' {ReplicatorsForm},
  uAccsFrame in '..\Units\SysObj\uAccsFrame.pas' {AccsFrame: TFrame},
  uAccDetailsForm in '..\Units\SysObj\uAccDetailsForm.pas' {AccDetailsForm},
  uListBoxesUtils in '..\Common\uListBoxesUtils.pas',
  uUsersDetailFormsAPI in '..\Common\uUsersDetailFormsAPI.pas',
  uFormsAPI_Users in '..\Common\uFormsAPI_Users.pas',
  uBus_Func_Form in '..\Units\User\uBus_Func_Form.pas' {Bus_Func_Form},
  uFuncsFrame in '..\Units\User\uFuncsFrame.pas' {FuncsFrame: TFrame},
  uFuncsForm in '..\Units\User\uFuncsForm.pas' {FuncsForm},
  frCaNavigator in '..\units\CntrAgent\frCaNavigator.pas' {fCaNavigator: TFrame},
  uFormApi_CrnAdm in '..\common\uFormApi_CrnAdm.pas',
  uCurRateUpdater in '..\units\Cur\uCurRateUpdater.pas' {CurRateUpdater},
  CrnCommon in '..\common\CrnCommon.pas',
  HyperParse in '..\common\HyperParse.pas',
  frCurrencyList in '..\units\Cur\frCurrencyList.pas' {fCurrencyList: TFrame},
  uCurrencyList in '..\units\Cur\uCurrencyList.pas' {CurrencyList},
  uCurProp in '..\units\Cur\uCurProp.pas' {CurProp},
  frCurProp in '..\units\Cur\frCurProp.pas' {fCurProp: TFrame},
  uURLParser in '..\units\Cur\uURLParser.pas' {FormParser},
  uURLList in '..\units\Cur\uURLList.pas' {URLList},
  frEForm in '..\common\frEForm.pas' {fEForm: TFrame},
  uEForm in 'uEForm.pas' {EForm},
  frTreeChItem in '..\common\frTreeChItem.pas' {fTreeChItem: TFrame},
  frOperFin in '..\units\Oper_v2\frOperFin.pas' {fOperFin: TFrame},
  uOperFin in '..\units\Oper_v2\uOperFin.pas' {OperFin},
  uFormApi_Oper in '..\common\uFormApi_Oper.pas',
  frOperOldData in '..\units\Oper_v2\frOperOldData.pas' {fOperOldData: TFrame},
  uArc in '..\units\Oper_v2\uArc.pas' {Arc},
  frOperWare in '..\units\Oper_v2\frOperWare.pas' {fOperWare: TFrame},
  uOperWare in '..\units\Oper_v2\uOperWare.pas' {OperWare},
  frOperOffset in '..\units\Oper_v2\frOperOffset.pas' {fOperOffset: TFrame},
  uOperOffset in '..\units\Oper_v2\uOperOffset.pas' {OperOffset},
  uOperEmpty in '..\units\Oper_v2\uOperEmpty.pas' {OperEmpty},
  frOperEmpty in '..\units\Oper_v2\frOperEmpty.pas' {fOperEmpty: TFrame},
  uOperBuff in '..\units\Oper\uOperBuff.pas' {OperBuff},
  uCASelector in '..\common\uCASelector.pas' {CASelector},
  frNewObj in '..\units\Oper\frNewObj.pas' {fNewObj: TFrame},
  uNewObj in '..\units\Oper\uNewObj.pas' {NewObj},
  uChange in '..\units\Oper\uChange.pas' {ChangeOper},
  uReLink in '..\common\uReLink.pas' {ReLink},
  uBalance in '..\units\RPT_v2\uBalance.pas' {Balance},
  unEhMyFunc in '..\common\unEhMyFunc.pas',
  uBuffSelector in '..\units\Oper\uBuffSelector.pas' {BuffSelector},
  frBuffSelector in '..\units\Oper\frBuffSelector.pas' {fBuffSelector: TFrame},
  uTopWin in '..\units\Oper\uTopWin.pas' {TopWin},
  frOperEmptyData in '..\units\Oper_v2\frOperEmptyData.pas' {fOperEmptyData: TFrame},
  uRepSelector in '..\common\uRepSelector.pas' {RepSelector},
  frRepSelector in '..\common\frRepSelector.pas' {fRepSelector: TFrame},
  uBsnSelector in '..\units\Bsn\uBsnSelector.pas' {BsnSelector},
  PrvFrm_2 in '..\common\Prvfrm_2.pas' {PreviewForm_2},
  uBalanceBsn in '..\units\RPT_v2\uBalanceBsn.pas' {BalanceBsn},
  frArcSumm in '..\units\Oper\frArcSumm.pas' {fArcSumm: TFrame},
  uSettings in '..\common\uSettings.pas' {Settings},
  foMyFuncEh in '..\common\foMyFuncEh.pas',
  uAccCard in '..\units\RPT_v2\uAccCard.pas' {AccCard},
  uArcSumm in '..\units\Oper\uArcSumm.pas' {ArcSumm},
  foMyFuncEhExcel in '..\common\foMyFuncEhExcel.pas',
  uOperDay in '..\common\uOperDay.pas' {OperDay},
  frFltList in '..\units\Filter\frFltList.pas' {fFltList: TFrame},
  UniverseFilterForm in '..\units\Oper_v2\UniverseFilterForm.pas' {UFForm},
  UniverseFilterUnit2 in '..\units\Filter\UniverseFilterUnit2.pas',
  uInputBoxDate in '..\units\Filter\uInputBoxDate.pas' {frmInputBoxDate},
  uInputBoxDigit in '..\units\Filter\uInputBoxDigit.pas' {FrmInputBoxDigit},
  uInputBoxStr in '..\units\Filter\uInputBoxStr.pas' {FrmInputBoxStr},
  uInputBoxObj in '..\units\Filter\uInputBoxObj.pas' {FrmInputBoxObj},
  uGridUtils in '..\units\Filter\uGridUtils.pas',
  UniverseFilter in '..\units\Filter\UniverseFilter.pas',
  uFormalDict in '..\units\Catalog\uFormalDict.pas' {FormalDict},
  frFormalDict in '..\units\Catalog\frFormalDict.pas' {fFormalDict: TFrame},
  frFuncDict in '..\units\Catalog\frFuncDict.pas' {fFuncDict: TFrame},
  uFuncDict in '..\units\Catalog\uFuncDict.pas' {FuncDict},
  uFltList in '..\units\Filter\uFltList.pas' {FltList},
  frMov_Goods in '..\units\RPT_v2\frames\frMov_Goods.pas' {fMov_Goods: TFrame},
  uMovWH in '..\units\RPT_v2\uMovWH.pas' {MovWH},
  frOperFin_FFF in '..\units\Oper_v2\frOperFin_FFF.pas' {fOperFin_FFF: TFrame},
  frOperWare_FFF in '..\units\Oper_v2\frOperWare_FFF.pas' {fOperWare_FFF: TFrame},
  uOperFin_FFF in '..\units\Oper_v2\uOperFin_FFF.pas' {OperFin_FFF},
  uOperWare_FFF in '..\units\Oper_v2\uOperWare_FFF.pas' {OperWare_FFF},
  foMyFuncAdvStrGrigExcel in '..\common\foMyFuncAdvStrGrigExcel.pas',
  uComment_ext in '..\common\uComment_ext.pas' {Comment_ext},
  uOperSelector in '..\units\OperSelector\uOperSelector.pas' {OperSelector},
  uRptForm in '..\units\RPT_v2\uRptForm.pas' {RptForm},
  frRptFrame in '..\units\RPT_v2\frRptFrame.pas' {fRptFrame: TFrame},
  uOperList_Del in '..\units\RPT_v2\uOperList_Del.pas' {RptForm1},
  foMyFuncDXTreeExcel in '..\common\foMyFuncDXTreeExcel.pas',
  uWareFinder in '..\units\Catalog\uWareFinder.pas' {WareFinder},
  uFormApi_RPT in '..\common\uFormApi_RPT.pas',
  uOperList_Corr in '..\units\RPT_v2\uOperList_Corr.pas' {OperList_Corr},
  uOperList_Empty in '..\units\RPT_v2\uOperList_Empty.pas' {OperList_Empty},
  uOperList_HasViza in '..\units\RPT_v2\uOperList_HasViza.pas' {OperList_HasViza},
  uOperList_Minus in '..\units\RPT_v2\uOperList_Minus.pas' {OperList_Minus},
  uOperList_NotHasViza in '..\units\RPT_v2\uOperList_NotHasViza.pas' {OperList_NotHasViza},
  uOperList_Zatrata in '..\units\RPT_v2\uOperList_Zatrata.pas' {OperList_Zatrata},
  uOperList_Pribil in '..\units\RPT_v2\uOperList_Pribil.pas' {OperList_Pribil},
  uOperList_Foget in '..\units\RPT_v2\uOperList_Foget.pas' {OperList_Foget},
  uOperList_Self in '..\units\RPT_v2\uOperList_Self.pas' {OperList_Self},
  uRateHist in '..\units\RPT_v2\uRateHist.pas' {RateHist},
  frExtData in '..\units\Catalog\frExtData.pas' {fExtData: TFrame},
  uExtData in '..\units\Catalog\uExtData.pas' {ExtData},
  uExtDataEditor in '..\units\Catalog\uExtDataEditor.pas' {ExtDataEditor},
  frExtDataVal in '..\units\Oper_v2\frExtDataVal.pas' {fExtDataVal: TFrame},
  uSearchResult in '..\units\Filter\uSearchResult.pas' {SearchResult},
  uOperList_Rate in '..\units\RPT_v2\uOperList_Rate.pas' {OperList_Rate},
  frOperCrnCh in '..\units\Oper_v2\frOperCrnCh.pas' {fOperCrnCh: TFrame},
  uOperCrnCh in '..\units\Oper_V2\uOperCrnCh.pas' {OperCrnCh},
  frWareCtgTree in '..\units\Catalog\frWareCtgTree.pas' {fWareCtgTree: TFrame},
  uWareCtgSelector in '..\units\Catalog\uWareCtgSelector.pas' {WareCtgSelector},
  frArcLite in '..\units\Oper_v2\frArcLite.pas' {fArcLite: TFrame},
  uBlnDetail in '..\units\RPT_v2\uBlnDetail.pas' {BlnDetail},
  uSelectMes in '..\units\Catalog\uSelectMes.pas' {SelectMes},
  uArcProp in '..\units\Oper\uArcProp.pas' {ArcProp},
  frAccGroup in '..\units\SysObj\frAccGroup.pas' {fAccGroup: TFrame},
  frMNGroup in '..\units\SysObj\frMNGroup.pas' {fMNGroup: TFrame},
  frWHGroup in '..\units\SysObj\frWHGroup.pas' {fWHGroup: TFrame},
  frReprGroup in '..\units\SysObj\frReprGroup.pas' {fReprGroup: TFrame},
  uInputBox_LCObj in '..\common\uInputBox_LCObj.pas' {FrmInputBox_LCObj},
  uReprPropLC in '..\units\CntrAgent\uReprPropLC.pas' {ReprPropLC},
  frReprPropLC in '..\units\CntrAgent\frReprPropLC.pas' {fReprPropLC: TFrame},
  uInputQuery_Grp in '..\common\uInputQuery_Grp.pas' {FrmuInputQuery_Grp},
  frObjList in '..\units\SysObj\frObjList.pas' {fObjList: TFrame},
  uLookUpSelector in '..\common\uLookUpSelector.pas' {LookUpSelector},
  uUnGroupSelect in '..\units\CntrAgent\uUnGroupSelect.pas' {UnGroupSelect},
  uAccCard_Adv in '..\units\RPT_v2\uAccCard_Adv.pas' {AccCard_Adv},
  uMovWH_Adv in '..\units\RPT_v2\uMovWH_Adv.pas' {MovWH_Adv},
  uUnivSelector in '..\common\uUnivSelector.pas' {UnivSelector},
  frMov_WareUn in '..\units\RPT_v2\frames\frMov_WareUn.pas' {fMov_WareUn: TFrame},
  uBalanceArc in '..\units\RPT_v2\uBalanceArc.pas' {BalanceArc},
  frBalanceArc in '..\units\RPT_v2\frBalanceArc.pas' {fBalanceArc: TFrame},
  uMovCA_Adv in '..\units\RPT_v2\uMovCA_Adv.pas' {MovCA_Adv},
  frArc in '..\units\Oper_v2\frArc.pas' {fArc: TFrame},
  uUnivOper_v2 in '..\units\Oper_v2\uUnivOper_v2.pas',
  uOperMesSelector in '..\units\Oper_v2\uOperMesSelector.pas' {OperMesSelector},
  UniverseFilterFrame in '..\units\Oper_v2\UniverseFilterFrame.pas' {UFFrame: TFrame},
  uFilterForm in '..\units\Oper_v2\uFilterForm.pas' {fShowFlt},
  uOperImp in '..\units\DataExport\uOperImp.pas' {OperImp},
  uOperExp in '..\units\DataExport\uOperExp.pas' {OperExp},
  frWizBackToCA in '..\units\Oper_v2\frWizBackToCA.pas' {fWizBackToCA: TFrame},
  uWizBackToCA in '..\units\Oper_v2\uWizBackToCA.pas' {WizBackToCA},
  frWizBackFromCA in '..\units\Oper_v2\frWizBackFromCA.pas' {fWizBackFromCA: TFrame},
  uWizBackFromCA in '..\units\Oper_v2\uWizBackFromCA.pas' {WizBackFromCA},
  frWizReVal in '..\units\Oper_v2\frWizReVal.pas' {fWizReVal: TFrame},
  uWizReVal in '..\units\Oper_v2\uWizReVal.pas' {WizReVal},
  uMovCA in '..\units\Rpt_v2\uMovCA.pas' {MovCA},
  uArcAnaliz in '..\units\Oper\uArcAnaliz.pas' {ArcAnaliz},
  uValListDistinct in '..\common\uValListDistinct.pas' {ValListDistinct},
  UniverseFilterTree in '..\units\Oper_v2\UniverseFilterTree.pas' {UFTree: TFrame},
  uFltPropSelector in '..\units\Oper_v2\uFltPropSelector.pas' {FltPropSelector},
  uSplashForm in '..\common\uSplashForm.pas' {SplashForm},
  uEgg in '..\common\uEgg.pas' {Egg},
  uPrgForm in '..\common\uPrgForm.pas' {PrgForm},
  frMSG in '..\common\frMSG.pas' {fMSG: TFrame},
  uMSGList in '..\common\uMSGList.pas' {SMGList},
  uMSGProp in '..\common\uMSGProp.pas' {MSGProp},
  frMSGProp in '..\common\frMSGProp.pas' {fMSGProp: TFrame},
  frFltTree in '..\units\Filter\frFltTree.pas' {fFltTree: TFrame},
  uExtDataSort in '..\units\Catalog\uExtDataSort.pas' {ExtDataSort},
  NumTools in '..\units\Docz\NumTools.pas',
  frRepRez in '..\units\Catalog\frRepRez.pas' {fRepRez: TFrame},
  uRepRez in '..\units\Catalog\uRepRez.pas' {RepRez},
  uAPOper in '..\units\Oper_v2\uAPOper.pas' {APOper},
  frAPOper in '..\units\Oper_v2\frAPOper.pas' {fAPOper: TFrame},
  frAPList in '..\units\Oper_v2\frAPList.pas' {fAPList: TFrame},
  uAPList in '..\units\Oper_v2\uAPList.pas' {APList},
  uMeCrpt in '..\common\uMeCrpt.pas',
  uDoc_ActCL in '..\units\Doc\uDoc_ActCL.pas' {ActCL},
  uFormAPI_Doc in '..\units\Doc\uFormAPI_Doc.pas',
  uDoc_DAcc in '..\units\Doc\uDoc_DAcc.pas' {DAcc},
  uDoc_FinalAct in '..\units\Doc\uDoc_FinalAct.pas' {FinalAct},
  uDoc_Warrant in '..\units\Doc\uDoc_Warrant.pas' {Warrant},
  uDoc_Inv in '..\units\Doc\uDoc_Inv.pas' {Inv},
  uDoc_AF in '..\units\Doc\uDoc_AF.pas' {AF},
  uDoc_WBill in '..\units\Doc\uDoc_WBill.pas' {WBill},
  frDocDict in '..\units\Catalog\frDocDict.pas' {fDocDict: TFrame},
  uDocDict in '..\units\Catalog\uDocDict.pas' {DocDict},
  uDocList in '..\units\Doc\uDocList.pas' {DocList},
  uDoc_PayIn in '..\units\Doc\uDoc_PayIn.pas' {PayIn},
  frDocOrg in '..\units\Doc\frDocOrg.pas' {fDocOrg: TFrame},
  uSelectorDocOrg in '..\units\Doc\uSelectorDocOrg.pas' {SelectorDocOrg},
  uDocOrg in '..\units\Doc\uDocOrg.pas' {DocOrg},
  uInputBoxDigit_Def in '..\units\Doc\uInputBoxDigit_Def.pas' {FrmInputBoxDigit_Def},
  uInputBoxStr_Def in '..\units\Doc\uInputBoxStr_Def.pas' {FrmInputBoxStr_Def},
  uBankData in '..\units\Doc\uBankData.pas' {BankData},
  uSelectorDocOrgBank in '..\units\Doc\uSelectorDocOrgBank.pas' {SelectorDocOrgBank},
  uAPOperList in '..\units\Oper_v2\uAPOperList.pas' {APOperList},
  uBsnImp in '..\units\Bsn\uBsnImp.pas' {BsnImp},
  frAPCond in '..\units\Oper_v2\frAPCond.pas' {fAPCond: TFrame},
  uAPCond in '..\units\Oper_v2\uAPCond.pas' {APCond},
  frAPListOper in '..\units\Oper_v2\frAPListOper.pas' {fAPListOper: TFrame},
  uInputSumm in '..\units\Oper_v2\uInputSumm.pas' {InputSumm},
  uCardProp in '..\units\Oper\uCardProp.pas' {CardProp},
  uBlnDetail_2 in '..\units\Rpt_v2\uBlnDetail_2.pas' {BlnDetail_2},
  uAPListSelector in '..\units\Oper_v2\uAPListSelector.pas' {APListSelector},
  uCrnRateSelector in '..\units\Oper\uCrnRateSelector.pas' {CrnRateSelector},
  frWareFinder in '..\units\Catalog\frWareFinder.pas' {fWareFinder: TFrame},
  frArc_Oper in '..\units\Oper_v2\frArc_Oper.pas' {fArc_Oper: TFrame},
  uArc_Oper in '..\units\Oper_v2\uArc_Oper.pas' {Arc_Oper},
  uArc_OperSet in '..\units\Oper_v2\uArc_OperSet.pas' {Arc_OperSet},
  uArc201 in '..\units\Oper_v2\uArc201.pas' {Arc201},
  uArcOperBy201 in '..\units\Oper_v2\uArcOperBy201.pas' {ArcOperBy201},
  uArcImp in '..\units\Oper_v2\uArcImp.pas' {ArcImp},
  uBlnDetail_3 in '..\units\Rpt_v2\uBlnDetail_3.pas' {BlnDetail_3},
  uAPOperSort in '..\units\Oper_v2\uAPOperSort.pas' {APOperSort},
  uWizNoDeptAcc in '..\units\Oper_v2\uWizNoDeptAcc.pas' {WizNoDeptAcc},
  uWizNoDeptCA in '..\units\Oper_v2\uWizNoDeptCA.pas' {WizNoDeptCA},
  uWizRePlaceWare in '..\units\Oper_v2\uWizRePlaceWare.pas' {WizReplaceWare},
  uTableReIndex in '..\units\SysObj\uTableReIndex.pas' {TableReIndex},
  uCAByDateLastBay in '..\units\Rpt_v2\uCAByDateLastBay.pas' {CAByDateLastBay},
  uCAPrfLoss in '..\units\Rpt_v2\uCAPrfLoss.pas' {CAPrfLoss},
  uCAPrfLoss_Det in '..\units\Rpt_v2\uCAPrfLoss_Det.pas' {CAPrfLoss_Det},
  uCAPrfLoss_DetProp in '..\units\Rpt_v2\uCAPrfLoss_DetProp.pas' {CAPrfLoss_Det_Prop},
  uWarePrfLoss in '..\units\Rpt_v2\uWarePrfLoss.pas' {WarePrfLoss},
  uBalance_v2 in '..\units\Rpt_v2\uBalance_v2.pas' {Balance_v2},
  uASGProp in '..\units\Rpt_v2\uASGProp.pas' {ASGProp},
  uAccCard_v2 in '..\units\Rpt_v2\uAccCard_v2.pas' {AccCard_v2},
  uInputQuery_AccGrp in '..\common\uInputQuery_AccGrp.pas' {AccGrp},
  frBJTree in '..\units\BJ\frBJTree.pas' {fBJTree: TFrame},
  uBJTree in '..\units\BJ\uBJTree.pas' {BJTree},
  frBJTreeProp in '..\units\BJ\frBJTreeProp.pas' {fBJTreeProp: TFrame},
  uBJTreeProp in '..\units\BJ\uBJTreeProp.pas' {BJTreeProp1},
  uBJTreeSel in '..\units\BJ\uBJTreeSel.pas' {BJTreeSel},
  uAPOperWareAmount in '..\units\Oper_v2\uAPOperWareAmount.pas' {APOperWareAmount},
  frBJList in '..\units\BJ\frBJList.pas' {fBJList: TFrame},
  uBJList in '..\units\BJ\uBJList.pas' {BJList},
  uBJTreeEdit in '..\units\BJ\uBJTreeEdit.pas' {BJTreeEdit},
  uBJItemProp in '..\units\BJ\uBJItemProp.pas' {BJItemProp},
  frBJItemProp in '..\units\BJ\frBJItemProp.pas' {fBJItemProp: TFrame},
  uMultiSelectCA in '..\units\BJ\uMultiSelectCA.pas' {MultiSelectCA},
  uMultiSelectAcc in '..\units\BJ\uMultiSelectAcc.pas' {MultiSelectAcc},
  uBalanceSel in '..\units\BJ\uBalanceSel.pas' {BalanceSel},
  uBJProp in '..\units\BJ\uBJProp.pas' {BJProp},
  uBJSort in '..\units\BJ\uBJSort.pas' {BJSort},
  frBJByOper in '..\units\BJ\frBJByOper.pas' {fBJByOper: TFrame},
  uBJdet in '..\units\BJ\uBJdet.pas' {BJdet},
  uDoc_WHOrd in '..\units\Doc\uDoc_WHOrd.pas' {Doc_WHOrd},
  uInvMain in '..\units\inv\uInvMain.pas' {InvMain},
  uInvRepList in '..\units\inv\uInvRepList.pas' {InvRepList},
  uInvDict in '..\units\inv\uInvDict.pas' {InvDict},
  uInvList in '..\units\inv\uInvList.pas' {InvList},
  uInvRep in '..\units\inv\uInvRep.pas' {InvRep},
  frCnstItem in '..\units\Oper_v2\frCnstItem.pas' {fCnstItem: TFrame},
  uCnstItem in '..\units\Oper_v2\uCnstItem.pas' {CnstItem},
  uInputBoxAP in '..\units\Oper_v2\uInputBoxAP.pas' {FrmInputBoxAP},
  uCnstItemSelector in '..\units\Oper_v2\uCnstItemSelector.pas' {CnstItemSelector},
  uInv_Prft in '..\units\Rpt_v2\uInv_Prft.pas' {Inv_Prft},
  uWHAvg in '..\units\Rpt_v2\uWHAvg.pas' {WHAvg},
  frAvg_Goods in '..\units\Rpt_v2\frames\frAvg_Goods.pas' {fAvg_Goods: TFrame},
  uCA_W in '..\units\Rpt_v2\uCA_W.pas' {CA_W},
  uCA_W_Det in '..\units\Rpt_v2\uCA_W_Det.pas' {CA_W_Det},
  uPL_W in '..\units\Rpt_v2\uPL_W.pas' {PL_W},
  uPL_VSP in '..\units\Rpt_v2\uPL_VSP.pas' {PL_VSP},
  uPL_RR in '..\units\Rpt_v2\uPL_RR.pas' {PL_RR},
  uCust_DDD in '..\units\Rpt_v2\uCust_DDD.pas' {Cust_DDD},
  uCRepCat in '..\units\CRep\uCRepCat.pas' {CR_Cat},
  uCRepCat_v2 in '..\units\CRep\uCRepCat_v2.pas' {CRepCat_v2},
  frCRepTree in '..\units\CRep\frCRepTree.pas' {fCRepTree: TFrame},
  uCRepCtgSelector in '..\units\CRep\uCRepCtgSelector.pas' {CRepCtgSelector},
  uCust_V2 in '..\units\Rpt_v2\uCust_V2.pas' {Cust_V2},
  frAPNList in '..\units\Oper_v2\APN\frAPNList.pas' {fAPNList: TFrame},
  uAPNList in '..\units\Oper_v2\APN\uAPNList.pas' {APNList},
  uAPNProp in '..\units\Oper_v2\APN\uAPNProp.pas' {APNProp},
  uAPNItem in '..\units\Oper_v2\APN\uAPNItem.pas' {APNItem},
  uAPNOper in '..\units\Oper_v2\APN\uAPNOper.pas' {APNOper},
  uAccCard_Adv_v2 in '..\units\Rpt_v2\uAccCard_Adv_v2.pas' {AccCard_adv_v2},
  uOperRepl in '..\units\Oper_v2\uOperRepl.pas' {OperRepl},
  uInvDet in '..\units\inv\uInvDet.pas' {InvDet},
  uOperImp_impex in '..\units\DataExport\uOperImp_impex.pas' {OperImp_impex},
  uTasks in 'Task\uTasks.pas' {Tasks},
  uWareMemo in '..\units\Catalog\uWareMemo.pas' {WareMemo},
  uBCImp in '..\units\Oper_v2\uBCImp.pas' {BCImp},
  frBJItemProp_v2 in '..\units\Bj2\frBJItemProp_v2.pas' {fBJItemProp_v2: TFrame},
  frBJList_v2 in '..\units\BJ2\frBJList_v2.pas' {fBJList_v2: TFrame},
  uBJTreeEdit_v2 in '..\units\Bj2\uBJTreeEdit_v2.pas' {BJTreeEdit_v2},
  uBJItemProp_v2 in '..\units\Bj2\uBJItemProp_v2.pas' {BJItemProp_v2},
  frBJTree_v2 in '..\units\Bj2\frBJTree_v2.pas' {fBJTree_v2: TFrame},
  uBJList_v2 in '..\units\Bj2\uBJList_v2.pas' {BJList_v2},
  uDoc_UPD in '..\units\Doc\uDoc_UPD.pas' {UPD},
  frKomp in '..\units\inv\frKomp.pas' {fKomp: TFrame},
  uOperBlockIT in '..\units\Oper_v2\uOperBlockIT.pas' {OperBlockIT},
  uOperFinSmp in '..\units\Oper_v2\uOperFinSmp.pas',
  frOperFinSmp in '..\units\Oper_v2\frOperFinSmp.pas' {fOperFinSmp: TFrame},
  uSelDocNum in '..\units\Doc\uSelDocNum.pas' {SelDocNum};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := '1:1 �������������� ����';
  if false then Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDM, DM);
  if DM.NeedTerminate then
  begin
    DM.free;
    Application.Terminate;
    Exit;
  end
  else
    KillSplashForm(0);

  Application.CreateForm(TMainForm, MainForm);
 // MainForm.BringToFront;
  Application.BringToFront;
  Application.Run;
end.
