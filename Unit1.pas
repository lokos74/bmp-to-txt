unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Image1: TImage;
    ColorBox1: TColorBox;
    one: TButton;
    two: TButton;
    one_safe: TButton;
    two_safe: TButton;
    Image2: TImage;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
 Type
    TRGBColor = Record
      B           : Byte;
      G           : Byte;
      R           : Byte;
    End;

    TColorArray = Array[1..1000000] Of TRGBColor;

    PBmp = ^TBmp;
    TBmp = Record
      BmpHeader : String[$35];
      A         : TColorArray
    end;





var
  Form1: TForm1;
  Anim_mas : array [1..10] of tbitmap;
  PB : PBmp;
  Bmp : TBitmap;
  Stream : TMemoryStream;


implementation

{$R *.dfm}

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 image1.Canvas.Pixels[x div 20,y div 20]:=colorbox1.Selected;
end;

end.
