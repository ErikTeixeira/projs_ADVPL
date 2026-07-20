## Padrão de Nomenclatura ADVPL

A primeira letra da variável indica o tipo ou a natureza do dado esperado.

| Prefixo | Tipo |
|---------|------|
| `c` | Character (Texto) |
| `n` | Numérico |
| `l` | Lógico (`.T.` / `.F.`) |
| `d` | Data |
| `a` | Array |
| `o` | Objeto |
| `b` | Bloco de código |
| `u` | Parâmetro de tipo desconhecido |
| `x` | **Genérico / Indefinido** (pode mudar de tipo durante a execução) |

### Exemplo

```advpl
Local cNome := "João"
Local nIdade := 25
Local lAtivo := .T.
Local xValor := Nil

xValor := 10
xValor := "Texto"
xValor := Date()
```

> O prefixo `x` é utilizado quando a variável pode receber diferentes tipos de dados.
