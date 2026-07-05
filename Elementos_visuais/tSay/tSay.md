## TSay

### Documentação - https://tdn.totvs.com/display/tec/TSay

## Da para utilizar HTML no TSay

--- 

```
TSay():New( [ nRow ], [ nCol ], [ bText ], [ oWnd ], [ cPicture ], [ oFont ], [ uParam7 ], 
    [ uParam8 ], [ uParam9 ], [ lPixels ], [ nClrText ], [ nClrBack ], [ nWidth ], 
    [ nHeight ], [ uParam15 ], [ uParam16 ], [ uParam17 ], [ uParam18 ], [ uParam19 ], 
    [ lHTML ], [ nTxtAlgHor ], [ nTxtAlgVer ] )

```

```
oSay:= TSay():New(01,01,{||'Texto para exibição'},oDlg,,oFont,,,,.T.,CLR_RED,CLR_WHITE,200,20)
```

---

### Construtores

- Construtor TSay:Create
- Construtor TSay:New

### Propriedades

- TSay:lTransparent
- TSay:lWordWrap

### Métodos

- TSay:CtrlRefresh
- TSay:SetPopup
- TSay:SetText
- TSay:SetTextAlign

---

## Da para utilizar HTML no TSay

```prw
// utilizando HTML na classe TSay
#Include "TOTVS.CH"
User Function TSayHtml()
  DEFINE DIALOG oDlg TITLE "Exemplo TSay com HTML" FROM 180,180 TO 650,800 PIXEL
   
  // Cria fonte para ser usada no TSay
  oFont := TFont():New('Courier new',,-18,.T.)
   
  // Monta o Texto no formato HTML
  cTextHtml := '<hr size="1">'+;
               '<font size="1" color="red">Linha 01 Red</font><br/>'+;
               '<font size="2" color="green">Linha 02 Green</font><br/>'+;
               '<font size="3" color="pink">Linha 03 Pink</font><br/>'+;
               '<font size="4" color="blue">Linha 04 Blue</font><br/>'+;
               '<font size="5" color="black">Linha 05 black</font><br/>'+;
               '<label>Html label1 </label>'+;
               '<label>Html Label2 </label>'+;
               '<p>Html parágrafo1 </p>'+;
               '<h5>Html header H5 </h5><br/>'+;
               '<table border="1" cellpadding="1" cellspacing="0">'+;
               '<tr>'+;
               '<td width="100" bgcolor="#FFFF87">Coluna 01a</td>'+;
               '<td width="200" bgcolor="#FFFF87">Coluna 02a</td>'+;
               '<td width="100" bgcolor="#FFFF87">Coluna 03a</td>'+;
               '</tr>'+;
               '<tr>'+;
               '<td>Coluna 01b</td>'+;
               '<td>Coluna 02b</td>'+;
               '<td>Coluna 03b</td>'+;
               '</tr>'+;
               '<tr>'+;
               '<td>Coluna 01c</td>'+;
               '<td>Coluna 02c</td>'+;
               '<td>Coluna 03c</td>'+;
               '</tr>'+;
               '</table>'
   
  // Cria o TSay permitindo texto no formato HMTL
  lHtml := .T.
  oSay := TSay():New(01,01,{||cTextHtml},oDlg,,oFont,,,,.T.,,,400,300,,,,,,lHtml)
 
  ACTIVATE DIALOG oDlg CENTERED
Return
```
