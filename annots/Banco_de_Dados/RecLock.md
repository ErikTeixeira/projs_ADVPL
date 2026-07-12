## RecLock

### Documentação - https://tdn.totvs.com/pages/releaseview.action?pageId=24347041


> Função responsável por **travar (lockar) um registro** para permitir **inclusão, alteração ou exclusão** com segurança.

---

# Sumário

- [O que é o RecLock()](#o-que-é-o-reclock)
- [Sintaxe](#sintaxe)
- [Parâmetros](#parâmetros)
- [Como funciona](#como-funciona)
- [Inclusão de registros](#inclusão-de-registros)
- [Alteração de registros](#alteração-de-registros)
- [Exclusão de registros](#exclusão-de-registros)
- [Retorno da função](#retorno-da-função)
- [Funções utilizadas junto](#funções-utilizadas-junto)
- [Fluxo comum](#fluxo-comum)
- [Coisas importantes para lembrar](#coisas-importantes-para-lembrar)

---

# O que é o RecLock()

`RecLock()` trava um registro para que apenas o processo atual possa manipulá-lo.

É utilizada para:

- Inserir registros
- Alterar registros
- Excluir registros

Após terminar a manipulação, **sempre** deve ser chamado:

```advpl
MsUnlock()
```

---

# Sintaxe

```advpl
RecLock(cAlias, lAdd, [l1], [lSoft], [lInJob]) --> lRet
```

---

# Parâmetros

|Parâmetro|Tipo|Descrição|
|---------|----|---------|
|`cAlias`|Caracter|Alias da tabela|
|`lAdd`|Lógico|`.T.` = inclusão / `.F.` = alteração|
|`l1`|Lógico|Não utilizado|
|`lSoft`|Lógico|Pergunta se deseja tentar lock novamente|
|`lInJob`|Lógico|Indica execução dentro de Job|

Na prática normalmente usa-se apenas:

```advpl
RecLock("SA1", .T.)
```

ou

```advpl
RecLock("SA1", .F.)
```

---

# Como funciona

## Inclusão (`.T.`)

Quando utiliza:

```advpl
RecLock("SA1", .T.)
```

o Protheus:

- cria um novo registro
- mantém ele apenas em memória
- bloqueia exclusivamente esse registro

Somente quando ocorrer:

🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺
🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺
🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺🔺

- `MsUnlock()`
- `DbCommit()`
- `DbSkip()`
- `DbGoTo()`
- `DbSeek()`
- `Recno()`

o registro deixa de ficar apenas em memória.

---

## Alteração (`.F.`)

Quando utiliza:

```advpl
RecLock("SA1", .F.)
```

o sistema tenta bloquear o **registro atualmente posicionado**.

Por isso é necessário primeiro posicionar o ponteiro.

Exemplo:

```advpl
DbSeek(...)
```

ou

```advpl
DbGoTo(...)
```

---

# Inclusão de registros

## Fluxo

```
Selecionar tabela
        ↓
RecLock(.T.)
        ↓
Preencher campos
        ↓
MsUnlock()
```

## Exemplo

```advpl
DbSelectArea("SA1")

RecLock("SA1", .T.)

SA1->A1_FILIAL := xFilial("SA1")
SA1->A1_COD    := "000001"
SA1->A1_LOJA   := "01"
SA1->A1_NOME   := "CLIENTE TESTE"

MsUnlock()
```

---

# Alteração de registros

Antes de alterar é necessário localizar o registro.

## Exemplo usando DbSeek()

```advpl
DbSelectArea("SA1")
DbSetOrder(1)

If DbSeek(xFilial("SA1") + "000001" + "01")

    RecLock("SA1", .F.)

    SA1->A1_NOME := "NOVO NOME"

    MsUnlock()

EndIf
```

---

## Exemplo usando DbGoTo()

Quando já possui o RecNo.

```advpl
DbSelectArea("SB1")

DbGoTo(nRecno)

RecLock("SB1", .F.)

SB1->B1_DESC := "Produto"

MsUnlock()
```

---

# Exclusão de registros

Para excluir também é necessário travar o registro.

```advpl
RecLock("ZZZ", .F.)

DbDelete()

MsUnlock()
```

---

# Retorno da função

Retorna um valor lógico.

|Retorno|Significado|
|--------|-----------|
|`.T.`|Conseguiu travar o registro|
|`.F.`|Não conseguiu travar|

É uma boa prática verificar o retorno.

```advpl
If RecLock("SA1", .F.)

    SA1->A1_NOME := "TESTE"

    MsUnlock()

Else

    MsgStop("Não foi possível bloquear o registro.")

EndIf
```

---

# Funções utilizadas junto

## DbSelectArea()

Seleciona a tabela.

```advpl
DbSelectArea("SA1")
```

---

## DbSetOrder()

Define o índice que será usado.

```advpl
DbSetOrder(1)
```

---

## DbSeek()

Procura um registro utilizando o índice atual.

```advpl
DbSeek(chave)
```

---

## DbGoTo()

Posiciona diretamente em um RecNo.

```advpl
DbGoTo(nRecno)
```

---

## DbDelete()

Marca o registro para exclusão.

```advpl
DbDelete()
```

---

## MsUnlock()

Finaliza o lock.

É obrigatório após um `RecLock()`.

```advpl
MsUnlock()
```

---

## xFilial()

Retorna a filial da tabela.

Muito utilizada em inclusões.

```advpl
xFilial("SA1")
```

---

# Fluxo comum

## Inserção

```text
DbSelectArea()
        ↓
RecLock(.T.)
        ↓
Preenche campos
        ↓
MsUnlock()
```

---

## Alteração

```text
DbSelectArea()
        ↓
DbSeek() ou DbGoTo()
        ↓
RecLock(.F.)
        ↓
Altera campos
        ↓
MsUnlock()
```

---

## Exclusão

```text
DbSelectArea()
        ↓
DbSeek()
        ↓
RecLock(.F.)
        ↓
DbDelete()
        ↓
MsUnlock()
```

---

# Coisas importantes para lembrar

## ✅ Sempre faça o MsUnlock()

```advpl
RecLock("SA1", .F.)

SA1->A1_NOME := "Teste"

MsUnlock()
```

---

## ✅ Para alterar, primeiro posicione o registro

```advpl
DbSeek(...)

RecLock("SA1", .F.)
```

---

## ✅ Para incluir utilize `.T.`

```advpl
RecLock("SA1", .T.)
```

---

## ✅ Para alterar ou excluir utilize `.F.`

```advpl
RecLock("SA1", .F.)
```

---

## ✅ Verifique o retorno quando possível

```advpl
If RecLock("SA1", .F.)

    // altera

    MsUnlock()

EndIf
```

---

## ❌ Não utilize em Query

`RecLock()` não funciona em aliases provenientes de Query ou tabelas abertas como somente leitura.

---

## ❌ Nunca esqueça de selecionar a área

```advpl
DbSelectArea("SA1")
```

---

## ✅ Ordem mais comum

```advpl
DbSelectArea("SA1")
DbSetOrder(1)

If DbSeek(chave)

    If RecLock("SA1", .F.)

        SA1->CAMPO := "VALOR"

        MsUnlock()

    EndIf

EndIf
```

---

# Resumo

|Operação|RecLock|
|---------|--------|
|Inserir|`RecLock("SA1", .T.)`|
|Alterar|`RecLock("SA1", .F.)`|
|Excluir|`RecLock("SA1", .F.) + DbDelete()`|

Sempre siga este padrão:

```advpl
DbSelectArea(...)

DbSeek(...) // quando necessário

If RecLock(...)

    // manipulação dos campos

    MsUnlock()

EndIf
```