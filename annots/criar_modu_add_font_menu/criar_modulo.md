## Criação de módulo novo

### Documentação - https://sempreju.com.br/criacao-de-modulos-especificos-no-protheus/

---


# Sumário

- O que é um módulo específico
- Módulos disponíveis
- Como criar o módulo
- Funções de nome do módulo
- Ponto de entrada do módulo
- Exemplo completo
- O que não esquecer

---

# O que é um módulo específico?

O Protheus possui **3 módulos reservados para customizações**, permitindo criar um módulo próprio para a empresa sem utilizar um módulo padrão do sistema.

Isso é útil quando:

- Existe um sistema totalmente personalizado.
- As rotinas não pertencem a nenhum módulo padrão (SIGAFAT, SIGAEST, SIGACOM...).
- Deseja separar funcionalidades customizadas.

Os módulos disponíveis são:

| Módulo | Função | Código |
|---------|---------|--------|
| 97 | `ESPNOME()` | SIGAESP |
| 98 | `ESP1NOME()` | SIGAESP1 |
| 99 | `ESP2NOME()` | SIGAESP2 |

---

# Como funciona?

O Protheus procura automaticamente por essas funções durante a inicialização.

Cada função retorna uma **string**, que será o nome exibido na lista de módulos.

Exemplo:

```advpl
User Function ESPNOME()

Return "Módulo Testes"
```

Resultado:

```
Módulo Testes
```

aparecerá na seleção de módulos do Protheus.

---

# Nome do arquivo

O fonte pode possuir qualquer nome, porém normalmente utiliza-se um nome relacionado à função.

Exemplo:

```
ESPNOME.tlpp
```

---

# Criando um módulo

## Módulo 97

```advpl
#include "totvs.ch"

User Function ESPNOME()

Return "Novo Módulo 97"
```

---

## Módulo 98

```advpl
#include "totvs.ch"

User Function ESP1NOME()

Return "Novo Módulo 98"
```

---

## Módulo 99

```advpl
#include "totvs.ch"

User Function ESP2NOME()

Return "Novo Módulo 99"
```

---

# Por que isso funciona?

Esses nomes de função são **reservados pelo Protheus**.

Quando o sistema inicia, ele verifica se existem:

- `ESPNOME()`
- `ESP1NOME()`
- `ESP2NOME()`

Se encontrar alguma delas, utiliza o valor retornado para renomear o módulo correspondente.

Não é necessário registrar essas funções em nenhum cadastro.

---

# Ponto de entrada do módulo

Além do nome, é possível definir uma função que será executada ao entrar no módulo.

Para o módulo 97:

```advpl
User Function SIGAESP()

    Alert(Time())

Return .T.
```

Quando o usuário abrir o módulo, essa função será chamada automaticamente.

Ela pode ser utilizada para:

- Inicializações
- Validações
- Carregar variáveis
- Exibir mensagens
- Executar processos antes do menu

---

# Exemplo completo

```advpl
#include "totvs.ch"

User Function ESPNOME()

Return "Módulo Testes"


User Function SIGAESP()

    Alert("Bem-vindo ao módulo!")

Return .T.
```

Fluxo:

```
Compila
        ↓
Protheus inicia
        ↓
Encontra ESPNOME()
        ↓
Nomeia o módulo
        ↓
Usuário abre o módulo
        ↓
Executa SIGAESP()
```

---

# Depois da compilação

Além do código, é necessário configurar o ambiente:

- Dar permissão ao módulo no Configurador.
- Criar um Menu.
- Associar as rotinas ao menu.
- Liberar acesso aos usuários.

Sem essas configurações o módulo não poderá ser utilizado corretamente.

---

# O que não esquecer

- Existem apenas **3 módulos específicos** (97, 98 e 99).
- O retorno das funções deve ser uma **String**.
- O nome da função deve estar exatamente correto.
- Compile o fonte após qualquer alteração.
- Configure permissões no Configurador.
- Crie um Menu para o módulo.
- `SIGAESP()` é executada ao entrar no módulo.
- Utilize o módulo para organizar rotinas totalmente personalizadas.

---

# Resumo

| Função | Finalidade |
|---------|------------|
| `ESPNOME()` | Nome do módulo 97 |
| `ESP1NOME()` | Nome do módulo 98 |
| `ESP2NOME()` | Nome do módulo 99 |
| `SIGAESP()` | Executada ao abrir o módulo 97 |

```advpl
// Nome do módulo
User Function ESPNOME()
Return "Módulo Testes"

// Inicialização do módulo
User Function SIGAESP()
Return .T.
```