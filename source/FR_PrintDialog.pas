
{*****************************************}
{                                         }
{             FastReport v2.3             }
{              Print dialog               }
{                                         }
{  Copyright (c) 1998-99 by Tzyganenko A. }
{                                         }
{*****************************************}

unit FR_PrintDialog;

interface

{$I FR.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TfrPrintForm = class(TForm)
    Label1: TLabel;
    E1: TEdit;
    GroupBox2: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    E2: TEdit;
    Panel1: TPanel;
    frSpeedButton1: TSpeedButton;
    frSpeedButton2: TSpeedButton;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    CB1: TComboBox;
    PropButton: TButton;
    PrinterSetupDialog: TPrinterSetupDialog;
    Image1: TImage;
    procedure CB1DrawItem(Control: TWinControl; Index: Integer;
      ARect: TRect; State: TOwnerDrawState);
    procedure FormCreate(Sender: TObject);
    procedure PropButtonClick(Sender: TObject);
    procedure CB1Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    procedure frSpeedButton1Click(Sender: TObject);
    procedure frSpeedButton2Click(Sender: TObject);
    procedure RB3Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    OldIndex: Integer;
  public
  end;

implementation

{$R *.DFM}

uses FR_Consts, FR_Printer, Printers;

procedure TfrPrintForm.FormCreate(Sender: TObject);
begin
  CB1.Items.Assign(Printer.Printers);
  CB1.ItemIndex := Printer.PrinterIndex;
  OldIndex := Printer.PrinterIndex;
end;

procedure TfrPrintForm.FormDeactivate(Sender: TObject);
begin
  if ModalResult <> mrOk then
    Prn.PrinterIndex := OldIndex;
end;

procedure TfrPrintForm.CB1DrawItem(Control: TWinControl; Index: Integer;
  ARect: TRect; State: TOwnerDrawState);
var
  r: TRect;
begin
  r := ARect;
  r.Right := r.Left + 18;
  r.Bottom := r.Top + 16;
  OffsetRect(r, 2, 0);
  with CB1.Canvas do
  begin
    FillRect(ARect);
    BrushCopy(r, Image1.Picture.Bitmap, Rect(0, 0, 18, 16), clOlive);
    TextOut(ARect.Left + 24, ARect.Top + 1, CB1.Items[Index]);
  end;
end;

procedure TfrPrintForm.PropButtonClick(Sender: TObject);
begin
  if PrinterSetupDialog.Execute then
    CB1.ItemIndex := Printer.PrinterIndex;
end;

procedure TfrPrintForm.CB1Click(Sender: TObject);
begin
  Prn.PrinterIndex := CB1.ItemIndex;
end;

procedure TfrPrintForm.E2Click(Sender: TObject);
begin
  RB3.Checked := True;
end;

procedure TfrPrintForm.frSpeedButton1Click(Sender: TObject);
var
  i: Integer;
begin
  i := StrToInt(E1.Text);
  Inc(i);
  E1.Text := IntToStr(i);
end;

procedure TfrPrintForm.frSpeedButton2Click(Sender: TObject);
var
  i: Integer;
begin
  i := StrToInt(E1.Text);
  Dec(i);
  if i <= 0 then i := 1;
  E1.Text := IntToStr(i);
end;

procedure TfrPrintForm.RB3Click(Sender: TObject);
begin
  E2.SetFocus;
end;

end.
