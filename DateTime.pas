function IsLeapYear(a: integer) := a mod 4 = 0;

function SecondInMinute() := 60;

function LaterInYear(a, b: string): string;
begin
  var (a1, a2, b1, b2) := (a[1:3].ToInteger, a[4:6].ToInteger, b[1:3].ToInteger, b[4:6].ToInteger);
  if a2 > b2 then
    Result := a
  else if b2 > a2 then
    Result := b
  else if a1 > b1 then
    Result := a
  else
    Result := b;
end;

function DaysInYear: integer;
begin
  if IsLeapYear(DateTime.Now.Year) then
    Result := 366
  else
    Result := 365;
end;

function DaysInYear(a:integer): integer;
begin
  if IsLeapYear(a) then
    Result := 366
  else
    Result := 365;
end;

function DaysInYearRange(a, b: integer): integer;
begin
  var sum := 0;
  
  for var i := a to b do
    sum += DaysInYear(i);
  
  Result := sum;
end;

function SecondsInHours(n: integer) := n * 3600;

function IsYearOfApocalypse(a: integer) := (a = 1992) or (a = 2005) or (a = 2011);

begin
  
end.
