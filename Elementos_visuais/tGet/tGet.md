## TGet

### Documentação - https://tdn.totvs.com/display/tec/TGet

```
TGet():New( [ nRow ], [ nCol ], [ bSetGet ], [ oWnd ], [ nWidth ], [ nHeight ], [ cPict ], 
    [ bValid ], [ nClrFore ], [ nClrBack ], [ oFont ], [ uParam12 ], [ uParam13 ], 
    [ lPixel ], [ uParam15 ], [ uParam16 ], [ bWhen ], [ uParam18 ], [ uParam19 ], [ bChange ], 
    [ lReadOnly ], [ lPassword ], [ uParam23 ], [ cReadVar ], [ uParam25 ], [ uParam26 ], 
    [ uParam27 ], [ lHasButton ], [ lNoButton ], [ uParam30 ], [ cLabelText ], 
    [ nLabelPos ], [ oLabelFont ], [ nLabelColor ], [ cPlaceHold ], [ lPicturePriority ] )

```

```
cTGet1 := "Teste TGet 01"

oTGet1 := TGet():New( 01,01,{||cTGet1},oDlg,096,009,"@!",,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F.,,cTGet1,,,, )
```

---

### Construtores

- Construtor TGet:Create
- Construtor TGet:New

### Propriedades

- TGet:Buffer
- TGet:cF3
- TGet:cPlaceHold
- TGet:cText
- TGet:lFocSel
- TGet:lNoButton
- TGet:lObfuscate
- TGet:lPassword
- TGet:Picture
- TGet:PictVar

### Métodos

- TGet:CtrlRefresh
- TGet:GetCurPos
- TGet:Select
- TGet:SelectAll
- TGet:SetContentAlign
