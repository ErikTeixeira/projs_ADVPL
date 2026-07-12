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
    ```advpl
        //objeto9 - usando a classe TGet
        nObjLinha := 63
        nObjColun := 49
        nObjLargu := 100
        nObjAltur := 10
        oGetObj9  := TGet():New(nObjLinha, nObjColun, {|u| Iif(PCount() > 0 , xGetObj9 := u, xGetObj9)}, oDialogPvt, nObjLargu, nObjAltur, ;
            /*cPict*/, /*bValid*/, /*nClrFore*/, /*nClrBack*/, oFontPadrao, , , lDimPixels, /*uParam15*/, /*uParam16*/, /*bWhen*/, /*uParam18*/, ;
            /*uParam19*/, /*bChange*/, /*lReadOnly*/, /*lPassword*/, /*uParam23*/, /*cReadVar*/, /*uParam25*/, /*uParam26*/, /*uParam27*/, .T.)
        
        //oGetObj9:cPlaceHold := 'Digite aqui um texto...'   //Texto que sera exibido no campo antes de ter conteudo
        oGetObj9:cF3        := 'SB1' //Codigo da consulta padrao / F3 que sera habilitada
        //oGetObj9:bValid     := {|| fFuncaoVld()}           //Funcao para validar o que foi digitado
        //oGetObj9:lReadOnly  := .T.                         //Para permitir o usuario clicar mas nao editar o campo
        //oGetObj9:lActive    := .F.                         //Para deixar o campo inativo e o usuario nao conseguir nem clicar
        //oGetObj9:Picture      := '@!'        
    ```
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
