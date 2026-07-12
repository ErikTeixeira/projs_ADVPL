# DBSeek() - ADVPL

### Documentação - https://tdn.totvs.com/display/tec/DBSeek

> Localiza um registro através da **chave do índice ativo**.

---

# Sumário

- [O que é o DBSeek()](#o-que-é-o-dbseek)
- [Sintaxe](#sintaxe)
- [Parâmetros](#parâmetros)
- [Retorno](#retorno)
- [Como funciona](#como-funciona)
- [Fluxo de uso](#fluxo-de-uso)
- [Exemplos](#exemplos)
- [SoftSeek](#softseek)
- [Métodos relacionados](#métodos-relacionados)
- [Erros comuns](#erros-comuns)
- [Coisas importantes para não esquecer](#coisas-importantes-para-não-esquecer)

---

```advpl
Static Function fBloq( cCod, cLoja )
    
    DBSelectArea("SA1")

    // por padrão pega o dbSetOrder(1)

        // procura o cliente e a loja que está no get
    SA1->(DbSeek( xFilial("SA1")+cCod+cLoja ))

    RecLock("SA1",.F.)  // true = inclusão e false para alteração

        SA1->A1_MSBLQL := '1'

    MsUnlock()

    MsgInfo("Cliente "+cCod + " da loja "+ cLoja+" Bloqueado", "Bloquear Cliente")

Return 
```

---

# O que é o DBSeek()

O `DBSeek()` procura um registro utilizando o **índice atualmente ativo**.

Ou seja:

- **Não procura diretamente no campo**
- Procura através da **ordem de índice (Index Order)**

Se encontrar:

- retorna `.T.`
- posiciona o ponteiro no registro encontrado

Se não encontrar:

- retorna `.F.`
- dependendo do `lSoftSeek`, o ponteiro muda de posição.

---

# Sintaxe

```advpl
DBSeek( xExp, [lSoftSeek], [lLast] )
```

---

# Parâmetros

|Parâmetro|Descrição|
|---------|---------|
|`xExp`|Valor que será pesquisado no índice.|
|`lSoftSeek`|`.T.` procura o próximo maior caso não encontre exatamente.|
|`lLast`|Compatibilidade. Normalmente usar `NIL`.|

---

# Retorno

```advpl
.T.  // encontrou

.F.  // não encontrou
```

---

# Como funciona

Imagine uma tabela:

|Código|Nome|
|------|------|
|001|Ana|
|002|Carlos|
|003|João|
|004|Maria|

Índice:

```advpl
dbSetOrder(1) // índice por Código
```

Pesquisa:

```advpl
DBSeek("003")
```

Resultado:

```
Registro atual → João
```

---

# Fluxo de uso

```text
Seleciona tabela
        ↓
Ativa índice
        ↓
DBSeek()
        ↓
Encontrou?
   ↓          ↓
 Sim         Não
 ↓            ↓
Registro     EOF() ou próximo maior
```

---

# Exemplo básico

```advpl
dbSelectArea("SA1")

dbSetOrder(1)

If DBSeek("000001")

    ConOut(SA1->A1_NOME)

EndIf
```

---

# Exemplo verificando retorno

```advpl
If DBSeek("000010")

    ConOut("Encontrou")

Else

    ConOut("Não encontrou")

EndIf
```

---

# Exemplo com campo numérico

Se o índice possuir **apenas um campo numérico**, passe um número.

```advpl
DBSeek(100)
```

Não:

```advpl
DBSeek("100") // errado nesse caso
```

---

# SoftSeek

Quando:

```advpl
DBSeek(valor, .T.)
```

O sistema procura:

1. valor exato
2. se não existir, posiciona no **primeiro maior**

## Exemplo

Tabela

|Código|
|------|
|001|
|005|
|010|
|020|

Pesquisa:

```advpl
DBSeek("008", .T.)
```

Resultado

```
Retorno:

.F.
```

Mas o ponteiro ficará em:

```
010
```

Porque é o próximo maior.

---

Sem SoftSeek

```advpl
DBSeek("008")
```

Resultado

```
.F.
EOF() = .T.
```

O ponteiro vai para depois do último registro.

---

# Exemplos

## Procurando cliente

```advpl
dbSelectArea("SA1")
dbSetOrder(1)

If DBSeek("000123")

    ConOut(SA1->A1_NOME)

EndIf
```

---

## Procurando produto

```advpl
dbSelectArea("SB1")
dbSetOrder(2)

If DBSeek("ABC001")

    ConOut(SB1->B1_DESC)

EndIf
```

---

## Utilizando SoftSeek

```advpl
If !DBSeek("000150", .T.)

    ConOut("Não encontrou exatamente")

    ConOut(SA1->A1_COD)

EndIf
```

---

# Métodos relacionados

## dbSetOrder()

Seleciona qual índice será usado.

```advpl
dbSetOrder(1)
```

Sem ele o `DBSeek()` pode procurar no índice errado.

---

## dbGoTop()

Vai para o primeiro registro.

```advpl
dbGoTop()
```

---

## dbSkip()

Avança registros.

```advpl
dbSkip()
```

---

## EOF()

Verifica se chegou ao fim.

```advpl
If EOF()

    ConOut("Fim da tabela")

EndIf
```

---

## Recno()

Obtém o número do registro atual.

```advpl
ConOut(Recno())
```

Após um `DBSeek()` com sucesso, o `Recno()` será do registro encontrado.

---

## dbSelectArea()

Seleciona a tabela.

```advpl
dbSelectArea("SA1")
```

---

# Erros comuns

## Esquecer de selecionar a área

Errado

```advpl
DBSeek("000001")
```

Correto

```advpl
dbSelectArea("SA1")
DBSeek("000001")
```

---

## Não ativar o índice

Errado

```advpl
DBSeek("000001")
```

Correto

```advpl
dbSetOrder(1)

DBSeek("000001")
```

---

## Procurar por um campo que não faz parte do índice

Índice:

```
A1_COD
```

Errado

```advpl
DBSeek("JOÃO")
```

Só funciona se o índice for por nome.

---

## Não verificar o retorno

Errado

```advpl
DBSeek("000001")

ConOut(SA1->A1_NOME)
```

Correto

```advpl
If DBSeek("000001")

    ConOut(SA1->A1_NOME)

EndIf
```

---

# Coisas importantes para não esquecer

## 1. O DBSeek usa o índice ativo

```advpl
dbSetOrder(1)
DBSeek("000001")
```

---

## 2. Sempre selecione a área antes

```advpl
dbSelectArea("SA1")
```

---

## 3. Sempre confira o retorno

```advpl
If DBSeek("000001")

    // encontrado

Else

    // não encontrado

EndIf
```

---

## 4. SoftSeek não significa que encontrou

Mesmo retornando `.F.`, ele pode posicionar no próximo registro.

```advpl
If !DBSeek("000150", .T.)

    // Ponteiro está no próximo maior

EndIf
```

---

## 5. Campo numérico simples recebe número

```advpl
DBSeek(100)
```

---

## 6. Se não encontrar sem SoftSeek

```advpl
DBSeek("999999")

If EOF()

    ConOut("Fim da tabela")

EndIf
```

---

## 7. Sequência mais comum de uso

```advpl
dbSelectArea("SA1")

dbSetOrder(1)

If DBSeek("000001")

    ConOut(SA1->A1_NOME)

EndIf
```

Essa é a sequência que você usará na maioria dos programas ADVPL.



