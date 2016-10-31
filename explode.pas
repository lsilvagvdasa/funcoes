function Explode(str, separador: string): TStringList;
var
    x: integer;
begin
{
	Imita a função Explode do PHP, separando uma string de acordo com o separador dentro de um StringList
    	str = string a separar
	separador = item separador
}
Result:=TStringList.Create;
x:=Pos(separador, str);
while (x > 0) do
    begin
    Result.Add(Copy(str,1,x - 1));
    Delete(str,1,x + Length(separador) - 1);
    x:=Pos(separador, str);
    end;
if (str <> '') then
    Result.Add(str);
end;
