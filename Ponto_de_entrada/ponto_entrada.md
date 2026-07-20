## Pontos de Entrada

---

### A010TOK

- Executado na confirmação da inclusão/alteração do produto
- Consegue validar a inclusão/alteração do produto

```advpl
User Function A010TOK()

    Local lRet := .T.

    If Inclui
        MsgInfo("Você Incluiu um produto")
    else
        MsgInfo("Você Alterou um produto")
    endif

Return lRet
```
> Se deixar o 'lRet' Falso, ele não deixa alterar nem incluir