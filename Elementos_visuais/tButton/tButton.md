## TButton

### Documentação - https://tdn.totvs.com/display/tec/TButton

```
TButton():New( [ nRow ], [ nCol ], [ cCaption ], [ oWnd ], [ bAction ], 
    [ nWidth ], [ nHeight ], [ uParam8 ], [ oFont ], [ uParam10 ], [ lPixel ],
    [ uParam12 ], [ uParam13 ], [ uParam14 ], [ bWhen ], [ uParam16 ], [ uParam17 ] )

```

```advpl
#include "TOTVS.CH"
User Function TButton() 
    DEFINE DIALOG oDlg TITLE "Exemplo TButton" FROM 180,180 TO 550,700 PIXEL   

    // Usando o New   
    oTButton1 := TButton():New( 002, 002, "Botão 01",oDlg,{||alert("Botão 01")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )   
    oTButton2 := TButton():New( 022, 002, "Botão 02",oDlg,{||alert("Botão 02")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )   
    oTButton3 := TButton():New( 042, 002, "Botão 03",oDlg,{||alert("Botão 03")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )

    // Usando o Create   
    oTButton4 := TButton():Create( oDlg,062,002,"Botão 04",{||alert("Botão 04")},; 40,10,,,,.T.,,,,,,)

    ACTIVATE DIALOG oDlg CENTERED
Return
```

---

### Construtores

- TButton:Create
- TButton:New

### Propriedades

- TButton:bAction
    - `oTButton3:bAction := {|| alert("Click com botão esquerdo 'Botão 03' ")}`
- TButton:lProcessing
    - Indica que, verdadeiro (.T.), o bloco de código bAction não será executado quando clicar, com o botão esquerdo do mouse, sobre o objeto; caso contrário, falso (.F.).

### Métodos

- TButton:Click
    - Dispara o evento, configurado na propriedade **bAction**, do botão.
- TButton:SetPopupMenu
    - Define o objeto do tipo TMenu referente ao botão.