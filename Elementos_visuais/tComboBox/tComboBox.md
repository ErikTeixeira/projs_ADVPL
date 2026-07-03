## TComboBox

### Documentação - https://tdn.totvs.com/display/tec/TComboBox

```
TComboBox():New( [ nRow ], [ nCol ], [ bSetGet ], [ nItens ], [ nWidth ], [ nHeight ], [ oWnd ],
 [ uParam8 ], [ bChange ], [ bValid ], [ nClrText ], [ nClrBack ], [ lPixel ], [ oFont ], 
 [ uParam15 ], [ uParam16 ], [ bWhen ], [ uParam18 ], [ uParam19 ], [ uParam20 ], [ uParam21 ], 
 [ cReadVar ], [ cLabelText ], [ nLabelPos ], [ oLabelFont ], [ nLabelColor ] )

```

```
aItems:= {'Item1','Item2','Item3'}
cCombo:= aItems[1]
oCombo := TComboBox():New(02,02,{|u|if(PCount()>0,cCombo:=u,cCombo)},; aItems,100,20,oDlg,,{||Alert('Mudou item da combo')};,,,,.T.,,,,,,,,,'cCombo')
```

---


### Propriedades

- TComboBox:aItems
- TComboBox:lEditable
- TComboBox:lListOnly
- TComboBox:lObfuscate
- TComboBox:nAt

### Métodos
- TComboBox:Select
- TComboBox:SetHeight

