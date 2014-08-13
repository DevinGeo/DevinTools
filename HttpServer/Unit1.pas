unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPServer, IdCustomHTTPServer,
  IdHTTPServer, StdCtrls, IdIPWatch, IdConText, Buttons, IdTCPConnection,
  IdTCPClient, IdHTTP, ExtCtrls, DateUtils;

type
  TForm1 = class(TForm)
    IdHTTPServer1: TIdHTTPServer;
    Memo1: TMemo;
    Edit1: TEdit;
    IdIPWatch1: TIdIPWatch;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Btn_Start: TBitBtn;
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    IdHTTP1: TIdHTTP;
    procedure FormCreate(Sender: TObject);
    procedure IdHTTPServer1CommandGet(AContext: TIdContext;
      ARequestInfo: TIdHTTPRequestInfo;
      AResponseInfo: TIdHTTPResponseInfo);
    procedure Btn_StartClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  //
  Edit1.Text := IdIPWatch1.LocalIP;
end;

procedure TForm1.IdHTTPServer1CommandGet(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
begin
  Memo1.Lines.Add(ARequestInfo.RawHeaders.Text);
  if CheckBox1.Checked then
  begin
    if not SameText(ARequestInfo.Command, 'GET') then
    begin
      while 1=1 do
      begin
        sleep(1000 * 60 * 11);
        //AResponseInfo.ContentText := FormatDateTime('yyyy-mm-dd hh:mm:ss zzz', Now);  //23 bytes data once.
        //AResponseInfo.WriteContent;
        //AResponseInfo
      end;
    end;
  end;
end;

procedure TForm1.Btn_StartClick(Sender: TObject);
begin
  if IdHTTPServer1.Active then
  begin
    IdHTTPServer1.Active := False;
    Btn_Start.Caption := 'START';
    Btn_Start.Font.Color := CLGREEN;
  end else
  begin
    IdHTTPServer1.Bindings.Clear;
    with IdHTTPServer1.Bindings.Add do
    begin
      IP := '127.0.0.1';
      Port := StrToInt(Edit2.Text);
    end;
    with IdHTTPServer1.Bindings.Add do
    begin
      IP := Edit1.Text;
      Port := StrToInt(Edit2.Text);
    end;
    IdHTTPServer1.Active := True;
    Btn_Start.Caption := 'STOP';
    Btn_Start.Font.Color := CLRED;
  end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  iDHTTP1.ReadTimeout
end;

end.
