procedure AddItemRbBar(var rbBar : TgvRbBar; Texto : String; AutoSize : Boolean; Largura : Currency; DrawTop, DrawBottom, FontBold : Boolean; FontSize, Alignment: Integer);
begin
  rbBar.Items.Add;
  rbBar.Items.Items[rbBar.Items.Count-1].Text := Texto;
  rbBar.Items.Items[rbBar.Items.Count-1].AutoSize := AutoSize;
  rbBar.Items.Items[rbBar.Items.Count-1].Width := Largura;
  rbBar.Items.Items[rbBar.Items.Count-1].Frame.DrawTop:= DrawTop;
  rbBar.Items.Items[rbBar.Items.Count-1].Frame.DrawBottom:= DrawBottom;
  rbBar.Items.Items[rbBar.Items.Count-1].Font.Bold := FontBold;
  rbBar.Items.Items[rbBar.Items.Count-1].Font.Size:= FontSize;
  rbBar.Items.Items[rbBar.Items.Count-1].Transparent := True;
  case Alignment of
    0: rbBar.Items.Items[rbBar.Items.Count-1].Alignment:= taLeftJustify;
    1: rbBar.Items.Items[rbBar.Items.Count-1].Alignment:= taCenter;
    2: rbBar.Items.Items[rbBar.Items.Count-1].Alignment:= taRightJustify;
  end;
end;
