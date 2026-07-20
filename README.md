# ADVPL | Protheus

### Documentação - https://tdn.totvs.com/display/tec/AdvPL

---

> Projetos de Estudo em ADVPL - Protheus

![ADVPL](https://img.shields.io/badge/ADVPL-Protheus-blue?style=for-the-badge)
![Progresso](https://img.shields.io/badge/Aula-F006-green?style=for-the-badge)

---

## Módulos

### 🏆 Principais — O Quarteto
> Compras · Estoque · Faturamento · Financeiro

[📄 Ver os módulos e cadastros](annots/modulos_cadastros.md)
[📄 Ver os elementos visuais](Elementos_visuais/0_elementos.md)


---

### ADVPL
- O limite para o nome de variáveis e funções na linguagem AdvPl é de 10 caracteres**
    - Você pode declarar uma variável com 15 caracteres, como ClientesAtivosAno, mas o AdvPL enxergará internamente apenas ClientesAt

### TLPP
- O limite saltou de 10 para até 255 caracteres para os nomes de variáveis, funções, métodos e classes
- **Tipagem forte opcional:** Você pode definir rigidamente o tipo da variável (ex: local cNome as char), gerando erros de compilação em caso de atribuição errada
- **Parâmetros nomeados:** Passagem de parâmetros para funções de forma muito mais legível


---

### Rotinas do Protheus

- Em qualquer tela, pressione **Shift + F6** para descobrir a rotina (ex.: `MATA030`).
- Saber a rotina é essencial para encontrar **Pontos de Entrada**, documentação, fazer **debug** e pesquisar soluções.
- Lista de diversas rotinas:
  - https://tecnologia.bynem.com.br/rotinas-protheus/

**Exemplos:** `MATA010`, `MATA020`, `MATA030`, `MATA103`, `MATA410`, `FINA040`

---

### Operadores Lógicos
Os operadores utilizados em AdvPl para operações e avaliações lógicas são:

| Operador | Descrição   |
|-----------|------------|
.And.	    | E lógico
.Or.	    | OU lógico
.Not. ou !	| NÃO lógico


---

### Macro (`&`) e `ExistFunc()`

O **Macro (`&`)** executa uma instrução armazenada em uma string. Como pode gerar erro caso a função não exista, utilize `ExistFunc()` antes de executá-la.

```advpl
If ExistFunc("U_Soma")
    &("U_Soma(2,3)")
Else
    Alert("Função não encontrada")
EndIf
```

> Sempre valide a existência da função antes de utilizar o Macro (`&`) para evitar erros de execução.
> `ExistFunc()` retorna `.T.` se a função existir e `.F.` caso contrário.

---

### IMPORTANTE

``Private lCheck1, lCheck2, lCheck3 := .F.``

-  quando você declara várias variáveis na mesma linha com Private, o := só se aplica à última variável da lista. Isso significa que:

    - lCheck3 recebe .F.
    - lCheck1 e lCheck2 ficam como NIL (não inicializadas), não como .F.


- **TGet:cF3**
  - **Consulta padrão** - busca automática na tabela do protheus, coloca `SA1` e aparece todos os clientes para escolher

- **Criação de Módulos Específicos no Protheus** - https://sempreju.com.br/criacao-de-modulos-especificos-no-protheus/
  - [Criar módulos no protheus](annots/criar_mod_add_font_menu/criar_modulo.md)

- **Adicionar uma rotina em um Menu do Protheus** - https://terminaldeinformacao.com/2023/05/31/como-adicionar-uma-rotina-em-um-menu-do-protheus/

- **Mudar o logo do sistema** - https://sempreju.com.br/como-mudar-o-logo-do-protheus/

- **Ponto de entrada ao acessar o sistema** - https://sempreju.com.br/executando-rotinas-ao-abrir-um-modulo-afterlogin-advpl/

- **Retornar datas por extenso** - https://sempreju.com.br/datas-por-extenso-no-protheus/

- **Barras de progresso** - https://sempreju.com.br/como-fazer-barras-de-progresso-no-advpl/

---

estou no - #F042 Apresentação




