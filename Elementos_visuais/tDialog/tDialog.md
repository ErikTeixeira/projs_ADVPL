## TDialog

### Documentação - https://tdn.totvs.com/display/tec/TDialog


```
TDialog():New( [ nTop ], [ nLeft ], [ nBottom ], [ nRight ], [ cCaption ], [ uParam6 ], [ uParam7 ], [ uParam8 ],
 [ uParam9 ], [ nClrText ], [ nClrBack ], [ uParam12 ], [ oWnd ], [ lPixel ], [ uParam15 ], [ uParam16 ], [ uParam17 ],
  [ nWidth ], [ nHeight ], [ lTransparent ] )
```

```
oDlg := TDialog():New(180,180,550,700,'Exemplo TDialog',,,,,CLR_BLACK,CLR_WHITE,,,.T.)
```

### Métodos
- Activate
    - Ativar a tela
    ```Activate( [ uParam1 ], [ uParam2 ], [ uParam3 ], [ lCentered ], [ bValid ], [ uParam6 ], [ bInit ], [ uParam8 ], [ uParam9 ] )```
        - lCentered = Indica se a janela será (.T.) ou não (.F.) centralizada. O padrão é falso (.F.)

- End
    - Fecha a janela - Retorna verdadeiro (.T.) se finalizar o diálogo, caso contrário, retorna falso (.F.).
    ```oDlg:End()```

- hasFocus
    - Retorna, verdadeiro (.T.), se o componente está em foco, caso contrário, falso (.F.).
    ```LOCAL focus := oDialog:hasFocus()```

- TDialog:SetPopup
    - Serve para definir um menu de contexto (Popup Menu) personalizado que será exibido quando o usuário clicar com o botão direito do mouse em uma área vazia da janela

- windowState
    - Retorna um número inteiro indicando o estado atual do componente. Sendo: 0=Restaurado, 1=Minimizado e 2=Maximizado.
    ```LOCAL state := oDialog:windowState()```
