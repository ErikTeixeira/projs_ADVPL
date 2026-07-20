## TBitmap

### Documentação - https://tdn.totvs.com/display/tec/TBitmap

```
TBitmap():New( [ nTop ], [ nLeft ], [ nWidth ], [ nHeight ], [ cResName ],
 [ cBmpFile ], [ lNoBorder ], [ oWnd ], [ bLClicked ], [ bRClicked ], [ lScroll ],
 [ lStretch ], [ oCursor ], [ uParam14 ], [ uParam15 ], [ bWhen ],
 [ lPixel ], [ bValid ], [ uParam19 ], [ uParam20 ], [ uParam21 ] )

```

```advpl
#include "TOTVS.CH"
 
user function exemplo()
    DEFINE DIALOG oDlg TITLE "Exemplo TBitmap" FROM 180,180 TO 550,700 PIXEL
 
    // Usando o New
    oTBitmap1 := TBitmap():New(01,01,260,184,,"C:\Temp\TOTVS.PNG",.T.,oDlg,;
        {||Alert("Clique em TBitmap1")},,.F.,.F.,,,.F.,,.T.,,.F.)
    oTBitmap1:lAutoSize := .T.
 
    // Usando o Create
    oTBitmap2 := TBitmap():Create(oDlg,01,146,260,184,,"C:\Temp\TOTVS.PNG",.T.,;
        {||Alert("Clique em TBitmap1")},,.F.,.F.,,,.F.,,.T.,,.F.)
    oTBitmap2:lAutoSize := .T.
 
    ACTIVATE DIALOG oDlg CENTERED
Return
```

---

### Construtores

- TBitmap:Create
- TBitmap:New

### Propriedades

- cBmpFile
- cResName
- lAutoSize
- lStretch
- lTransparent

### Métodos

- Load
- SetBmp
- SetEmpty
