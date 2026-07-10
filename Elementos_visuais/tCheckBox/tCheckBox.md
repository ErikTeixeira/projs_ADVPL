## TCheckBox

### Documentação - https://tdn.totvs.com/display/tec/tCheckBox

```
TCheckBox():New( [ nRow ], [ nCol ], [ cCaption ], [ bSetGet ], [ oDlg ], [ nWidth ], 
    [ nHeight ], [ uParam8 ], [ bLClicked ], [ oFont ], [ bValid ], [ nClrText ], 
    [ nClrPane ], [ uParam14 ], [ lPixel ], [ cMsg ], [ uParam17 ], [ bWhen ] )

```

```
lCheck := .T.

oCheck1 := TCheckBox():New(01,01,'CheckBox 001',{||lCheck},oDlg,100,210,,,,,,,,.T.,,,)
```

---

### Construtores

- Construtor TCheckBox:Create
- Construtor TCheckBox:New

### Métodos

- TCheckBox:CtrlRefresh
