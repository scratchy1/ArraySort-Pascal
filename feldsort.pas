program feldsortS125 (input, output);
{sortiert einzulesendes Feld von integer-Zahlen}
 const
 FELDGROESSE = 5;

 type
 tIndex = 1..FELDGROESSE;
 tFeld = array [tIndex] of integer;

 var
 Eingabefeld : tFeld;
 MinPos,
 i : tIndex;
 Tausch: integer;

 function FeldMinimumPos (Feld: tFeld;
                          von, bis : tIndex) : tIndex;
{bestimmt die Position des Minimums im Feld zwischen von und bis,
 1 <= von <= bis <= FELDGROESSE }
  var
  MinimumPos,
  j : tIndex;
 begin
 MinimumPos:= von;
 for j:= von+1 to bis do
  if Feld[j] < Feld[MinimumPos] then
  MinimumPos:= j;
  FeldMinimumPos:=MinimumPos;
 end;{FeldminimumPos}

 begin
 {Einlesen des Feldes}
 writeln ('Geben Sie', FELDGROESSE ,' Werte ein: ');
 for i:=1 to FELDGROESSE do
  readln(Eingabefeld[i]);
  {sortieren}
 for i:=1 to FELDGROESSE - 1 do
 begin
  MinPos:= FeldMinimumPos (Eingabefeld, i, FELDGROESSE);
  {Minimum gefunden, welches nun mit dem Element im Feld i
  vertauscht werden muss}
  Tausch:= Eingabefeld[MinPos];
  Eingabefeld[MinPos]:=Eingabefeld[i];
  Eingabefeld[i]:= Tausch
 end;
  {Ausgabe des sortierten Feldes}
 for i:=1 to FELDGROESSE do
   write(Eingabefeld[i] : 6);
  writeln
 end.{feldsort}
