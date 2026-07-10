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

### Operadores Lógicos
Os operadores utilizados em AdvPl para operações e avaliações lógicas são:

| Operador | Descrição   |
|-----------|------------|
.And.	    | E lógico
.Or.	    | OU lógico
.Not. ou !	| NÃO lógico


---

### IMPORTANTE

``Private lCheck1, lCheck2, lCheck3 := .F.``

-  quando você declara várias variáveis na mesma linha com Private, o := só se aplica à última variável da lista. Isso significa que:

    - lCheck3 recebe .F.
    - lCheck1 e lCheck2 ficam como NIL (não inicializadas), não como .F.

---

assisti ate o #F027 Criando caixa de texto TGet - Parte 1


e assisti - #F034 Criando um rótulo TSay



