## TListBox

### Documentação - https://tdn.totvs.com/display/tec/TListBox

```
TListBox():Create( [ oWnd ], [ nRow ], [ nCol ], [ bSetGet ], [ aItems ], [ nWidth ], 
 [ nHeight ], [ bChange ], [ bValid ], [ uParam10 ], [ uParam11 ], [ lPixel ], [ uParam13 ], 
 [ bLDBLClick ], [ oFont ], [ uParam16 ], [ uParam17 ], [ bWhen ], [ uParam19 ], [ uParam20 ],
 [ uParam21 ], [ uParam22 ], [ bRClicked ] )

```

```
oList := TListBox():Create(oDlg,001,110,{|u|if(Pcount()>0,nList:=u,nList)},;
                {'Item 1','Item 2','Item 3','Item 4'},100,100,,,,,.T.)
```

---


### Construtores

- Construtor TListBox:Create
- Construtor TListBox:New

### Propriedades

- TListBox:aItems
- TListBox:nAt

### Métodos

- TListBox:Add
- TListBox:Change
    - ``oList:Change()`` - executa o bloco de código ao mudar de linha
- TListBox:Del
- TListBox:GetPos
- TListBox:GetSelText
- TListBox:GoBottom
- TListBox:GoTop
- TListBox:Insert
- TListBox:Len
- TListBox:Modify
- TListBox:Reset
- TListBox:Select
- TListBox:Set
- TListBox:SetArray
- TListBox:SetItems
- TListBox:SetPopup