unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.Character,  // This system unit need be added manually, John Shi
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}


    // Hi, my Delphi solution is Here:
    // Written by John Shi
    function isAnagram(phrase1, phrase2 :string) :boolean;
      var newPh1, newPh2:string;  ch:Char;
         // declare inside function:
        function sortStr(newPh:string):string;
          var i: integer;  ch:Char;
              arrStr1: array[0..35] of string;
          begin
          for i:=0 to 35 do
              arrStr1[i]:='';
            // sort newPh:
          for ch in newPh do begin
            case ch of
            '0': arrStr1[0]:=arrStr1[0]+ch;
            '1': arrStr1[1]:=arrStr1[1]+ch;
            '2': arrStr1[2]:=arrStr1[2]+ch;
            '3': arrStr1[3]:=arrStr1[3]+ch;
            '4': arrStr1[4]:=arrStr1[4]+ch;
            '5': arrStr1[5]:=arrStr1[5]+ch;
            '6': arrStr1[6]:=arrStr1[6]+ch;
            '7': arrStr1[7]:=arrStr1[7]+ch;
            '8': arrStr1[8]:=arrStr1[8]+ch;
            '9': arrStr1[9]:=arrStr1[9]+ch;
            'a': arrStr1[10]:=arrStr1[10]+ch;
            'b': arrStr1[11]:=arrStr1[11]+ch;
            'c': arrStr1[12]:=arrStr1[12]+ch;
            'd': arrStr1[13]:=arrStr1[13]+ch;
            'e': arrStr1[14]:=arrStr1[14]+ch;
            'f': arrStr1[15]:=arrStr1[15]+ch;
            'g': arrStr1[16]:=arrStr1[16]+ch;
            'h': arrStr1[17]:=arrStr1[17]+ch;
            'i': arrStr1[18]:=arrStr1[18]+ch;
            'j': arrStr1[19]:=arrStr1[19]+ch;
            'k': arrStr1[20]:=arrStr1[20]+ch;
            'l': arrStr1[21]:=arrStr1[21]+ch;
            'm': arrStr1[22]:=arrStr1[22]+ch;
            'n': arrStr1[23]:=arrStr1[23]+ch;
            'o': arrStr1[24]:=arrStr1[24]+ch;
            'p': arrStr1[25]:=arrStr1[25]+ch;
            'q': arrStr1[26]:=arrStr1[26]+ch;
            'r': arrStr1[27]:=arrStr1[27]+ch;
            's': arrStr1[28]:=arrStr1[28]+ch;
            't': arrStr1[29]:=arrStr1[29]+ch;
            'u': arrStr1[30]:=arrStr1[30]+ch;
            'v': arrStr1[31]:=arrStr1[31]+ch;
            'w': arrStr1[32]:=arrStr1[32]+ch;
            'x': arrStr1[33]:=arrStr1[33]+ch;
            'y': arrStr1[34]:=arrStr1[34]+ch;
            'z': arrStr1[35]:=arrStr1[35]+ch;
            end;
           end; // for
         Result:='';
         for i:=0 to 35 do //begin   <---- This BEGIN need be commented or add a END statement BEFORE 'end; //subFunction'
             Result:=Result+arrStr1[i];
         end; //subFunction

    Begin
      newPh1:='';
      newPh2:='';
      for ch in phrase1 do
          if isLetterOrDigit(ch)  then
             newPh1:=newPh1+ch;
      for ch in phrase2 do
          if isLetterOrDigit(ch) then   //isLetterOrDigit() needs System.Character to be added to uses clause
             newPh2:=newPh2+ch;
      Result:=True;
      if Length(newPh1)<>Length(newPh2)  then
         Exit(False);
      // sort string:
      newPh1:=LowerCase(newPh1);
      newPh2:=LowerCase(newPh2);
      newPh1:=sortStr(newPh1);
      newPh2:=sortStr(newPh2);
      if newPh1<>newPh2  then
         Result:=False;
    End;

    // The end of Delphi

procedure TForm1.Button1Click(Sender: TObject);
begin
 if isAnagram(Edit1.Text, Edit2.Text) then
    showmessage('True')
  else
    showmessage('false');
 Edit1.Text:= '';
 Edit2.Text:= '';
end;

end.
