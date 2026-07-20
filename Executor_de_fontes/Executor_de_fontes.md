# Executor de Fontes (ADVPL / Protheus)

## Sumário

- [Objetivo](#objetivo)
- [Includes](#includes)
- [Fluxo de execução](#fluxo-de-execução)
- [SetPrvt](#setprvt)
- [ExistFunc](#existfunc)
- [FindFunction](#findfunction)
- [Macro (`&`)](#macro-)
- [Boas práticas](#boas-práticas)

---

# Objetivo

Executar uma `User Function` informada pelo usuário em tempo de execução.

Exemplo:

```text
Entrada:
Soma(2,3)

Executado:
U_Soma(2,3)
```

---

# Includes

```advpl
#include "totvs.ch"
#include "protheus.ch"
#include "rwmake.ch"
```

---

# Fluxo de execução

```text
Usuário digita

Soma(2,3)

      │

      ▼

AllTrim()

      │

      ▼

Adiciona "U_"

      │

      ▼

ExistFunc()

      │

      ▼

Macro (&)

      │

      ▼

Executa a função
```

---

# SetPrvt

Permite acessar objetos privados em outras funções, como uma `Static Function`.

Exemplo:

```advpl
SetPrvt("oGet1")
SetPrvt("oDlg1")
```

Depois é possível utilizar:

```advpl
oGet1:Refresh()
```

---

# ExistFunc

Verifica se uma função existe no RPO.

Retorno:

- `.T.` → Existe
- `.F.` → Não existe

Exemplo:

```advpl
If ExistFunc("U_Soma")
    Alert("Função encontrada")
EndIf
```

---

# FindFunction

Também verifica se a função existe.

Exemplo:

```advpl
If FindFunction("U_Soma")
    Alert("Função encontrada")
EndIf
```

> Na maioria dos casos, `ExistFunc()` já é suficiente.

---

# Macro (`&`)

Executa uma instrução armazenada em uma string.

Exemplo:

```advpl
cFonte := "U_Soma(2,3)"

&cFonte
```

Equivale a:

```advpl
U_Soma(2,3)
```

---

# Boas práticas

## Sempre adicionar `U_`

```advpl
cNomeFun := "U_" + AllTrim(cNomeFun)
```

---

## Validar antes de executar

```advpl
If !ExistFunc(cNomeFun)
    Return Nil
EndIf
```

---

## Validar os parênteses

```advpl
If !("(" $ cNomeFun) .Or. !(")" $ cNomeFun)
    Return Nil
EndIf
```

---

## Nunca executar um macro sem validação

✔ Correto

```advpl
If ExistFunc(cNomeFun)
    Return &(cNomeFun)
EndIf
```

❌ Errado

```advpl
Return &(cNomeFun)
```

---

## Limpar o campo em caso de erro

```advpl
cNomeFun := Space(30)
oGet1:Refresh()
```

---

## Utilizar `AllTrim()`

Remove espaços antes da validação.

```advpl
cNomeFun := AllTrim(cNomeFun)
```