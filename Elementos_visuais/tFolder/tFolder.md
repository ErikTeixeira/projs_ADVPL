## TFolder

### Documentação - https://tdn.totvs.com/display/tec/TFolder

```
TFolder():New( [ nTop ], [ nLeft ], [ aPrompts ], [ aDialogs ], [ oWnd ], [ nOption ], [ nClrFore ], [ uParam8 ], 
    [ lPixel ], [ uParam10 ], [ nWidth ], [ nHeight ], [ cMsg ], [ uParam14 ] )
```

```
oTFolder := TFolder():New( 0,0,aTFolder,,oDlg,,,,.T.,,260,184 )
```

---


### Lembrar 
- Em vez de colocar nos parâmetros dos elementos o ``oDlg``, coloca ``oTFolder:aDialogs[1]``
    - É o array do oFolder que cada valor é uma aba, e começa no 1
    ``oButton1    := TButton():New(25,10, "Executar", oTFolder:aDialogs[1], { || oDlg:End() }, 60, 15,,,.F., .T., .F.,, .F.,,, .F.)``

- Padrão para pegar o que está no tGet - ``{|u| IIF(Pcount()>0, cTGet4:=u, cTGet4) }``


### Propriedades

- aDialogs
    - TFolder:aDialogs - Indica o nome dos diálogos
- aPrompts
    - TFolder:aPrompts - Indica o título da pasta
- bSetOption
    - TFolder:bSetOption - Indica o bloco de código que será executado quando a pasta for selecionada
        - valor padrão - ``{ |nNewOption|  }``  - Se o bloco de código retornar .F. (FALSE) a troca da aba é abandonada
- nOption
    - TFolder:nOption - Indica a pasta selecionada

### Métodos

- AddItem
    - ``oTFolder:AddItem( [ cItem ], [ lVisible ] )``- Inclui uma pasta
- aEnable
    - ``oTFolder:aEnable( [ nItem ], [ lEnable ] )`` - Habilita/Desabilita uma pasta
- getCaption
    - ``cCaption := oTFolder:getCaption()`` - Retorna a descrição da aba ativa da Folder
- HidePage
    - ``oTFolder:HidePage(2)`` - Indica a pasta que será oculta
- SetOption
    - ``oTFolder:SetOption(2)`` - Seleciona a pasta desejada
- ShowPage
    - ``oTFolder:ShowPage(2)`` - Apresenta uma pasta
