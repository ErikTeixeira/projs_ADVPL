## Bloquear o cliente

### Deixar o cliente como inativo - sem ir no cadastro dele e colocar lá manualmente

![Cad Cliente](../../imgs/funcs_importante/blq_cad_client.png){ width=620px }

---

### Campo do INATIVO - A1_MSBLQL

- 1 - Inativo
- 2 - Ativo

---

### Busca o cliente pelo índice de Filial + Código + Lola


![Indice da tabela de cliente](../../imgs/funcs_importante/indice_cliente.png)

```advpl
    DBSelectArea("SA1")
        // procura o cliente e a loja que está no get
    SA1->(DbSeek( xFilial("SA1")+cCod+cLoja ))
```

---

