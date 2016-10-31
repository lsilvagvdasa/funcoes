procedure ReplaceString(ReplaceAll: Boolean; Source,OldString,NewString: String);
begin
  if ReplaceAll then
  begin
    while pos(OldString,Source) > 0 do
    begin
      Insert(NewString,Source,pos(OldString,Source));
      Delete(Source,pos(OldString,Source),length(OldString));
    end;
  end
  else
  begin
    if pos(OldString,Source) > 0 then
    begin
      Insert(NewString,Source,pos(OldString,Source));
      Delete(Source,pos(OldString,Source),length(OldString));
    end;
  end;
end;
