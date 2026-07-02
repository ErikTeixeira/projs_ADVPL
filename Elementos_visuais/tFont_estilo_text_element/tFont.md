## TFont  -  [Voltar](../0_elementos.md)

#### Documentação - https://tdn.totvs.com/display/tec/TFont

- Da para configurar para mais de um elemento diferentes estilos

```advpl
Local oFont1  // para as says
Local oFont2  // para o botão
```

- Configura a fonte - o tipo da fonte, e elas estão em negrito, sublinhadas e em itálico
```advpl
oFont1 := TFont():New('Comic Sans MS',,16,,.T.,,,,,.T.,.T.)
oFont2 := TFont():New('Arial Black',,12,,.T.,,,,,.T.,.T.)
```

- Configurar a fonte na TSay e no TButton - ``ver na documentação em qual parâmetro configura o tFont em cada elemento``
```advpl
oTSay := TSay():New( 01, 01,{||'TSay para teste do TFont (Comic Sans MS)'},oDlg;
             ,,oTFont1,.T.,.F.,.F.,.T.,0,,250,20,.F.,.T.,.F.,.F.,.F.,.F. )  

oButton1 := TButton():New(180,30, "Fechar", oDlg, { || oDlg:End() }, 60, 15,,oFont2,.F., .T., .F.,, .F.,,, .F.)
```
