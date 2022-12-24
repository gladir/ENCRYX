{ @author: Sylvain Maltais (support@gladir.com)
  @created: 2022
  @website(https://www.gladir.com/encryx)
  @abstract(Target: Turbo Pascal, Free Pascal)
}

Program CESAR;

Uses DOS;

Function StrToUpper(S:String):String;
Var
 I:Byte;
Begin
 For I:=1 to Length(S)do Begin
  If S[I] in['a'..'z']Then S[I]:=Chr(Ord(S[I])-32);
 End;
 StrToUpper:=S;
End;

Var
 Language:(_French,_English,_Germany,_Italian,_Spain);
 TmpLanguage,CurrParam:String;
 I,J:Integer;

BEGIN
 Language:=_French;
 TmpLanguage:=GetEnv('LANGUAGE');
 If TmpLanguage<>''Then Begin
  If TmpLanguage[1]='"'Then TmpLanguage:=Copy(TmpLanguage,2,255);
  If StrToUpper(Copy(TmpLanguage,1,2))='EN'Then Language:=_English Else
  If StrToUpper(Copy(TmpLanguage,1,2))='GR'Then Language:=_Germany Else
  If StrToUpper(Copy(TmpLanguage,1,2))='IT'Then Language:=_Italian Else
  If StrToUpper(Copy(TmpLanguage,1,2))='SP'Then Language:=_Spain;
 End;
 If(ParamStr(1)='/?')or(ParamStr(1)='--help')or(ParamStr(1)='-h')Then Begin
  WriteLn('CESAR : Cette commande permet d''encrypter ou d‚cryper une ',
           'chaŒne de caractŠres selon la m‚thode du chiffre de C‚sar.');
  WriteLn;
  WriteLn('Syntaxe : CESAR [/D] "message"');
  WriteLn;
  WriteLn('/D  D‚crypte le message. Si non mentionn‚, encrypte.');
 End
  Else
 If ParamCount>0Then Begin
  If StrToUpper(ParamStr(1))='/D'Then Begin
   If ParamCount>=2 Then For J:=2 to ParamCount do Begin
    CurrParam:=ParamStr(J);
    For I:=1 to Length(CurrParam)do Begin
     If CurrParam[I] in['A'..'Z','a'..'z']Then Begin
      If UpCase(CurrParam[I])in['A','B','C']Then Begin
       Write(Chr(Ord(CurrParam[I])+26-3));
      End
       Else
      Write(Chr(Ord(CurrParam[I])-3));
     End
      Else
     Write(CurrParam[I]);
    End;
   End;
  End
   Else
  Begin
   If ParamCount>=1 Then For J:=1 to ParamCount do Begin
    CurrParam:=ParamStr(J);
    For I:=1 to Length(CurrParam)do Begin
     If CurrParam[I]in['A'..'Z','a'..'z']Then Begin
      If UpCase(CurrParam[I])in['X','Y','Z']Then Begin
       Write(Chr(Ord(CurrParam[I])-26+3));
      End
       Else
      Write(Chr(Ord(CurrParam[I])+3));
     End
      Else
     Write(CurrParam[I]);
    End;
   End;
  End;
 End;
END.