procedure AddItemRbBarDB(var rbBar : TgvDBRbBar; DataField : String; AutoSize : Boolean; Largura : Currency; DrawTop, DrawBottom : Boolean; Alignment : Integer);
begin
  rbBar.Items.Add;
  rbBar.Items.Items[rbBar.Items.Count-1].DataField :=  DataField;
  rbBar.Items.Items[rbBar.Items.Count-1].AutoSize := AutoSize;       
  rbBar.Items.Items[rbBar.Items.Count-1].Width := Largura;
  rbBar.Items.Items[rbBar.Items.Count-1].Frame.DrawTop:= DrawTop;
  rbBar.Items.Items[rbBar.Items.Count-1].Frame.DrawBottom:= DrawBottom;
  case Alignment of
    0: rbBar.Items.Items[rbBar.Items.Count-1].Alignment:= taLeftJustify;
    1: rbBar.Items.Items[rbBar.Items.Count-1].Alignment:= taCenter;
    2: rbBar.Items.Items[rbBar.Items.Count-1].Alignment:= taRightJustify;
  end; 
end;
