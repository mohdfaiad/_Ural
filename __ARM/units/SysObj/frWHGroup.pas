unit frWHGroup;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ImgList, Db, DBClient, ActnList, ToolWin, Menus,
  dbgrids, contnrs;

const xxx = 3;
type
  TNodeObj = class
  private
    FID: integer;
    FName: String;
    FCnt: integer;
    FIDBsn: Variant;
    FShowInRoot: Boolean;
  public
    constructor Create;
    destructor Destroy; override;
    property ID : integer read FID write FID;
    property IDBsn : Variant read FIDBsn write FIDBsn;
    property Cnt : integer read FCnt write FCnt;
    property Name : String read FName write FName;
    property ShowInRoot : Boolean read FShowInRoot write FShowInRoot;
  end;

  TfWHGroup = class(TFrame)
    OrgTreeView: TTreeView;
    ImageList1: TImageList;
    cdsWHGroup: TClientDataSet;
    ActionList1: TActionList;
    aNew: TAction;
    aProperty: TAction;
    aArc: TAction;
    aRefreshe: TAction;
    aDelete: TAction;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    N5: TMenuItem;
    MenuItem3: TMenuItem;
    cdsWHGroupid_Group: TIntegerField;
    cdsWHGroupName: TStringField;
    cdsWHGroupCnt: TIntegerField;
    cdsWHGroupShowInRoot: TBooleanField;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure aNewExecute(Sender: TObject);
    procedure aPropertyExecute(Sender: TObject);
    procedure aArcExecute(Sender: TObject);
    procedure aRefresheExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
    procedure OrgTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure OrgTreeViewDeletion(Sender: TObject; Node: TTreeNode);
    procedure OrgTreeViewGetImageIndex(Sender: TObject; Node: TTreeNode);
    procedure OrgTreeViewGetSelectedIndex(Sender: TObject;
      Node: TTreeNode);
    procedure OrgTreeViewDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure OrgTreeViewDragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    FAll : boolean;
    FNoGroup : boolean;
    FCustomDBGrid : TCustomDBGrid;
    FBsns : TObjectList;
    Fid_Bsn : Variant;
    FReadOnly : boolean;
    FShowToolBar : boolean;
    function GetID: Variant;
    procedure AddGrp(Node: TTreeNode; id_Bsn: Variant);
    function GetBsnID: integer;
    function GetGrpName: String;
    procedure SetID(Value: Variant);
  public
    constructor Create(AOwner : TComponent); override;
    destructor Destroy; override;
    property ID : Variant read GetID write SetID;
    property GrpName : String read GetGrpName;
    procedure Initialize(ACustomDBGrid : TCustomDBGrid;
                        AID : Variant; id_Bsn : Variant;
                       AReadOnly : boolean = false; AShowToolBar : boolean = true;
                       AAll : boolean = true;
                       ANoGroup : boolean = true;
                       UID : integer= -1);
  end;

implementation

uses uDM, foMyFunc{$IFNDEF LC}, uFormApi_Oper,
  uMovWH_Adv{$ENDIF}, uInputQuery_Grp;

{$R *.DFM}

{ TfCAGroupList }

procedure TfWHGroup.AddGrp(Node : TTreeNode; id_Bsn : Variant);
var Obj : TNodeObj;
    N, N2 : TTreeNode;
begin
  if FNoGroup then
  begin
    Obj := TNodeObj.Create;
    Obj.FIDBsn := id_Bsn;
    Obj.ID := -1;
    Obj.Name := '��� ������';
    N := OrgTreeView.Items.AddChildObject(Node, Obj.Name, Obj);
  end;
  
  with cdsWHGroup do
  begin
    Close;
    Params.ParamByName('@id_business').Value := id_Bsn;
    Open;
    First;
    while not Eof do
    begin
      Obj := TNodeObj.Create;
      Obj.ID := FieldByName('id_Group').AsInteger;
      Obj.Cnt := FieldByName('Cnt').AsInteger;
      Obj.Name := FieldByName('Name').AsString;
      Obj.ShowInRoot := FieldByName('ShowInRoot').AsBoolean;
      Obj.FIDBsn := id_Bsn;

      N := OrgTreeView.Items.AddChildObject(Node, Obj.Name, Obj);
      if Obj.Cnt > 0 then
        N.Text :=  N.Text + ' (' + IntToStr(Obj.Cnt) + ')';
//        N.HasChildren := true;

      Next;
    end;
  end;

  if FAll then
  begin
    Obj := TNodeObj.Create;
    Obj.FIDBsn := id_Bsn;
    Obj.ID := -2;
    Obj.Name := '������ ������';
    N := OrgTreeView.Items.AddChildObject(Node, Obj.Name, Obj);
  end;
  
end;

procedure TfWHGroup.Initialize(ACustomDBGrid : TCustomDBGrid;
                       AID, id_Bsn : Variant;
                       AReadOnly, AShowToolBar: boolean;
                       AAll : boolean;
                       ANoGroup : boolean;
                       UID : integer);
var Obj : TNodeObj;
    BsnObj : TBsnObj;
    N : TTreeNode;
    i, TmpID : integer;
begin
  if Fid_Bsn <> id_Bsn then
  begin
    FCustomDBGrid := ACustomDBGrid;
    FAll := AAll;
    FNoGroup := ANoGroup;

    Fid_Bsn := id_Bsn;
    FReadOnly := AReadOnly;
    FShowToolBar := AShowToolBar;

    aNew.Enabled := Fid_Bsn >= 0;
  //  aRefreshe.Enabled := Fid_Bsn >= 0;

    ToolBar1.Visible := FShowToolBar;
    OrgTreeView.Items.BeginUpdate;
    try
      OrgTreeView.Items.Clear;
      if (Fid_Bsn = -13) then
      begin
        if UID <> -1 then
          DM.GetBsnList(FBsns, DM.IDUser, UID)
        else
          DM.GetBsnList(FBsns, DM.IDUser, Null);
        if FBsns.Count = 1 then
        begin
          AddGrp(nil, TBsnObj(FBsns[0]).ID);
        end
        else
        begin
          for i := 0 to DM.FBsnList.Count - 1 do
          begin
            BsnObj := TBsnObj.Create;
            BsnObj.ID := TBsnObj(DM.FBsnList[i]).ID;
            BsnObj.Name := TBsnObj(DM.FBsnList[i]).Name;
            N := OrgTreeView.Items.AddObject(nil, BsnObj.Name, BsnObj);
            AddGrp(N, TBsnObj(DM.FBsnList[i]).ID);
          end;
        end;
      end
      else
      begin
        AddGrp(nil, Fid_Bsn)
      end;

    finally
      OrgTreeView.Items.EndUpdate;
  {  with OrgTreeView do
      OnChange(OrgTreeView, Selected);  }
    end;
  end;
  ID := AID;
end;

function TfWHGroup.GetID: Variant;
begin
  if (OrgTreeView.Selected <> nil) and (TObject(OrgTreeView.Selected.Data) is TNodeObj)  then
  begin
    Result := TNodeObj(OrgTreeView.Selected.Data).ID;
  end
  else
    Result := -2;
end;

procedure TfWHGroup.SetID(Value: Variant);
var i : integer;
begin
  if Value = Null then
    Value := -1;
    if Value <> Null then
    begin
    // ** ���������������
      for i := 0 to OrgTreeView.Items.Count - 1 do
      begin
        if (TObject(OrgTreeView.Items[i].Data) is TNodeObj) and
           (TNodeObj(OrgTreeView.Items[i].Data).ID = Value) then
        begin
          OrgTreeView.Items[i].Selected := true;
          OrgTreeView.Items[i].MakeVisible;
          Break;
        end;
      end;
    end
    else
    begin
   //   OrgTreeView.Items[OrgTreeView.Items.Count - 1].Selected := true;
   //   OrgTreeView.Selected.MakeVisible;
    end;
  //  OrgTreeView.OnChange(OrgTreeView, OrgTreeView.Selected);
end;

function TfWHGroup.GetBsnID: integer;
begin
  if (OrgTreeView.Selected <> nil) then
  begin
    if (TObject(OrgTreeView.Selected.Data) is TNodeObj)  then
      Result := TNodeObj(OrgTreeView.Selected.Data).IDBsn
    else
      if (TObject(OrgTreeView.Selected.Data) is TBsnObj)  then
        Result := TBsnObj(OrgTreeView.Selected.Data).ID;
  end
  else
    Result := Fid_Bsn;
end;

function TfWHGroup.GetGrpName: String;
begin
  if (OrgTreeView.Selected <> nil) and (TObject(OrgTreeView.Selected.Data) is TNodeObj)  then
  begin
    Result := TNodeObj(OrgTreeView.Selected.Data).Name;
  end
  else
    Result := '';
end;

constructor TfWHGroup.Create(AOwner: TComponent);
begin
  inherited;
  FBsns := TObjectList.Create;
  Fid_Bsn := -1;
end;

destructor TfWHGroup.Destroy;
begin
  FBsns.Free;
  inherited;
end;

{ TNodeObj }

constructor TNodeObj.Create;
begin
  inherited;
  FID := -1;
  FCnt := 0;
  FIDBsn := Null;
end;

destructor TNodeObj.Destroy;
begin
  inherited;

end;

procedure TfWHGroup.aNewExecute(Sender: TObject);
var S : String;
    Obj : TNodeObj;
    Rez : integer;
    i : integer;
    AShowInRoot : boolean;
begin
  DM.Rights_GetUserRights(10, Null);//555
  S := '';
  AShowInRoot := false;
  if InputQuery_Grp('������', S, AShowInRoot) then
  begin
    if DM.rsCA.AppServer.xxx_Group_Check_v2(xxx, GetBsnID, S, Null) = -1 then
      raise Exception.Create('������ � ����� �������� ��� ����������');
    Rez := DM.rsCA.AppServer.xxx_Group_Add_v2(xxx, GetBsnID, S, AShowInRoot);
    if Rez <> -1 then
    begin
      aRefreshe.Execute;
      for i := 0 to OrgTreeView.Items.Count - 1 do
      begin
        SetId(Rez);
      end;
    end
    else
      raise Exception.Create('������ ��� ����������');
  end;
end;

procedure TfWHGroup.aPropertyExecute(Sender: TObject);
var S : String;
    Obj : TNodeObj;
    Rez : integer;
    AShowInRoot : boolean;
begin
  DM.Rights_GetUserRights(10, Null);//555
  S := TNodeObj(OrgTreeView.Selected.Data).Name;
  AShowInRoot := TNodeObj(OrgTreeView.Selected.Data).ShowInRoot;
  if InputQuery_Grp('������', S, AShowInRoot) then
  begin
    if DM.rsCA.AppServer.xxx_Group_Check_v2(xxx, GetBsnID, S, TNodeObj(OrgTreeView.Selected.Data).ID) = -1 then
      raise Exception.Create('������ � ����� �������� ��� ����������');
    Rez := DM.rsCA.AppServer.xxx_Group_Edit_v2(xxx, TNodeObj(OrgTreeView.Selected.Data).ID, S, AShowInRoot);
    if Rez <> -1 then
    begin
      aRefreshe.Execute;
    end
    else
      raise Exception.Create('������ ��� ����������');
  end;
end;

procedure TfWHGroup.aArcExecute(Sender: TObject);
var AParamBlnc : TParamBlnc;
begin
  {$IFNDEF LC}
  AParamBlnc := GetEmptyParamBlnc;
  AParamBlnc.id_WarehouseGroup := ID;
  AParamBlnc.id_business := GetBsnID;
  ShowMovWH_Adv(AParamBlnc);
  {$ENDIF}
end;

procedure TfWHGroup.aRefresheExecute(Sender: TObject);
var ID : integer;
    i : integer;
    OldID : integer;
begin
  ID := -13;
  if (OrgTreeView.Selected <> nil) and (TObject(OrgTreeView.Selected.Data) is TNodeObj) then
    ID := TNodeObj(OrgTreeView.Selected.Data).ID;
  OldID := Fid_Bsn;
  Fid_Bsn := 0;
  Initialize(FCustomDBGrid, ID, OldID, FReadOnly, FShowToolBar);
end;

procedure TfWHGroup.aDeleteExecute(Sender: TObject);
var
    Rez : integer;
begin
  if MessageBox(Handle, PChar('������� ������ "' + TNodeObj(OrgTreeView.Selected.Data).Name + '"?'), '����������� ��������', MB_ICONWARNING + MB_YESNO + MB_DEFBUTTON2) = IDYES then
  begin
    Rez := DM.rsCA.AppServer.xxx_Group_Del_v2(xxx, TNodeObj(OrgTreeView.Selected.Data).ID);
    if Rez <> -1 then
    begin
      OrgTreeView.Selected.Delete;
 //     TreeView1.Repaint;
    end
    else
      raise Exception.Create('������ ��� ��������');
  end;
end;

procedure TfWHGroup.OrgTreeViewChange(Sender: TObject;
  Node: TTreeNode);
begin
  aProperty.Enabled := (Node <> nil) and (TObject(Node.Data) is TNodeObj)
                       and (TNodeObj(Node.Data).ID <> -2) and (TNodeObj(Node.Data).ID <> -1)
                       and (TNodeObj(Node.Data).ID <> -13);
  aDelete.Enabled :=  (Node <> nil) and ((TObject(Node.Data) is TNodeObj)
                       and (TNodeObj(Node.Data).ID <> -2) and (TNodeObj(Node.Data).ID <> -1)) and (TNodeObj(Node.Data).Cnt = 0)
                       and (TNodeObj(Node.Data).ID <> -13);

  aNew.Enabled := (Node <> nil);
  aRefreshe.Enabled := (Node <> nil);

  aArc.Enabled := (Node <> nil) and (TObject(Node.Data) is TNodeObj)
                  and (TNodeObj(Node.Data).ID <> -2)
                  and (TNodeObj(Node.Data).ID <> -1)
                 { and (TNodeObj(Node.Data).ID <> -13)};

end;

procedure TfWHGroup.OrgTreeViewDeletion(Sender: TObject;
  Node: TTreeNode);
begin
  if (TObject(Node.Data) is TObject) then
    TObject(Node.Data).Free;
end;

procedure TfWHGroup.OrgTreeViewGetImageIndex(Sender: TObject;
  Node: TTreeNode);
begin
  if (TObject(Node.Data) is TNodeObj) then
  begin
    if (TNodeObj(Node.Data).ID = -2) or (TNodeObj(Node.Data).ID = -1) or (TNodeObj(Node.Data).ID = -13) then
      Node.ImageIndex := 6
    else
      if Node.Selected then
        Node.ImageIndex := 1
      else
        Node.ImageIndex := 0;
  end
  else
    Node.ImageIndex := 4;
end;

procedure TfWHGroup.OrgTreeViewGetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  Node.SelectedIndex := Node.ImageIndex;
end;

procedure TfWHGroup.OrgTreeViewDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var Node : TTreeNode;
begin
  Node := OrgTreeView.GetNodeAt(X, Y);
  Accept := (Source = FCustomDBGrid)
            and (Node <> nil)
            and (TObject(Node.Data) is TNodeObj)
            and (TNodeObj(Node.Data).ID <> -2)
            and (TNodeObj(Node.Data).ID <> -13)
            and (
            (TNodeObj(Node.Data).IDBsn = FCustomDBGrid.DataSource.DataSet.FieldByName('id_business').Value));
end;

procedure TfWHGroup.OrgTreeViewDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var Node : TTreeNode;
    id_CAGroup : Variant;
begin
  Node := OrgTreeView.GetNodeAt(X, Y);
  id_CAGroup := Null;
  if TNodeObj(Node.Data).ID >= 0 then
    id_CAGroup := TNodeObj(Node.Data).ID;
  if DM.rsCA.AppServer.xxx_SetGrp(xxx, FCustomDBGrid.DataSource.DataSet.FieldByName('id_WareHouse').AsInteger, id_CAGroup) = 1 then
    aRefreshe.Execute;   
end;

end.

