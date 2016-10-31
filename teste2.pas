function IntToMes(Mes : Integer) : String;
var
  iMes : Integer;
begin
  if Mes > 12 then
    iMes := Mes - (12 * Trunc(Mes / 12))
  else
    iMes := Mes;
    
  Case iMes of
    1: Result := 'Janeiro';
    2: Result := 'Fevereiro';
    3: Result := 'Março';
    4: Result := 'Abril';
    5: Result := 'Maio';
    6: Result := 'Junho';
    7: Result := 'Julho';
    8: Result := 'Agosto';
    9: Result := 'Setembro';
    10: Result := 'Outubro';
    11: Result := 'Novembro';
    12: Result := 'Dezembro';
  end;
end;
