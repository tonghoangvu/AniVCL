unit Form.Animation;

interface

uses
  UCL.IntAnimation, UCL.IntAnimation.Helpers,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TformAnimation = class(TForm)
    buttonAni: TButton;
    buttonStartWithHelper: TButton;
    buttonStartAnimation: TButton;
    radiogroupAniKind: TRadioGroup;
    radiogroupAniFunction: TRadioGroup;
    groupCustomAniOptions: TGroupBox;
    editStep: TLabeledEdit;
    editDuration: TLabeledEdit;
    editStartValue: TLabeledEdit;
    editDeltaValue: TLabeledEdit;
    buttonResetPosition: TButton;
    procedure buttonStartAnimationClick(Sender: TObject);
    procedure buttonStartWithHelperClick(Sender: TObject);
    procedure buttonResetPositionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAnimation: TformAnimation;

implementation

{$R *.dfm}

procedure TformAnimation.buttonStartWithHelperClick(Sender: TObject);
begin
  buttonAni.AnimationFromCurrent(apTop, +100, 35, 400, akOut, afkBounce,
    procedure begin buttonAni.SetFocus end);
end;

procedure TformAnimation.buttonResetPositionClick(Sender: TObject);
begin
  buttonAni.Top := 20;
  buttonAni.Left := 20;
end;

procedure TformAnimation.buttonStartAnimationClick(Sender: TObject);
var
  Ani: TIntAni;
begin
  Ani := TIntAni.Create(true, akIn, afkLinear, 20, +300,
    procedure (V: Integer)
    begin
      buttonAni.Left:= V;
    end);
  Ani.AniKind := TAniKind(radiogroupAniKind.ItemIndex);
  Ani.AniFunctionKind := TAniFunctionKind(radiogroupAniFunction.ItemIndex);

  Ani.Step := StrToIntDef(editStep.Text, 25);
  Ani.Duration := StrToIntDef(editDuration.Text, 250);
  Ani.StartValue := StrToIntDef(editStartValue.Text, 20);
  Ani.DeltaValue := StrToIntDef(editDeltaValue.Text, +300);

  Ani.Start;
end;

end.
