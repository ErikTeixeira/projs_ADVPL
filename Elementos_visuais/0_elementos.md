## Elementos visuais protheus ADVPL

- **Pega o que está sendo digitado/escolhido em um elemento  ``{|u| IIF(PCount()>0,cTGet1:=u,cTGet1) }`` 
``oGet1 := TGet():New( 20,01,{|u| IIF(PCount()>0,cTGet1:=u,cTGet1) },oDlg,096,009,"@!",,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F.,,cTGet1,,,, )``**


- **Redimensio a tela automaticamente** - `MsAdvsize()`
  ```
  Local aSize := MsAdvsize()
  Local oDlg1
  oDlg1 := TDialog():New(aSize[7]aSize[1],aSize[6],aSize[5], 'Exemplo MsAdvsize', , , , , , /*nCorFundo*/, , , .T.)
  ```


### TGroup - [TGroup](tGroup/TGroup.md)
Container visual utilizado para **agrupar componentes relacionados** dentro de uma janela
- O `TGroup` **não armazena dados**.
- Os componentes continuam pertencendo ao `TDialog`.
- Pode conter praticamente qualquer componente visual.
- Melhora a legibilidade da interface.
- Pode ser criado utilizando:
  - `TGroup():New()`
  - `TGroup():Create()`
- É possível possuir vários grupos na mesma janela.

---

### TFont - Fontes de texto e estilos dos elementos  - [TFont](tFont_estilo_text_element/tFont.md)

Classe utilizada para **definir a aparência do texto** dos componentes visuais.
- Configura a fonte (nome, tamanho e estilos).
- Pode ser reutilizada em vários componentes (ex.: `TSay`, `TButton`, `TGet`).
- É criada normalmente com `TFont():New()`.
- Principais configurações:
  - Nome da fonte (Arial, Comic Sans MS, etc.).
  - Tamanho.
  - Negrito.
  - Itálico.
  - Sublinhado.
- Depois de criada, basta associá-la ao componente no parâmetro de fonte (`oFont`), conforme a documentação de cada elemento.

---

### TDialog  - [TDialog](tDialog/tDialog.md)

Janela principal da aplicação
- Criado com `TDialog():New()`.
- Todos os componentes pertencem ao `TDialog`.
- `Activate()` → Exibe a janela.
- `End()` → Fecha a janela.
- `hasFocus()` → Verifica se está em foco.
- `windowState()` → Informa o estado da janela.
- `SetPopup()` → Define o menu de contexto.

---

### TFolder  - [TFolder](tFolder/tFolder.md)

Cria um painel com abas dentro da janela.

- Criado com `TFolder():New()`
- Cada aba possui um diálogo próprio em `aDialogs`.
- Os componentes de cada aba devem usar `oTFolder:aDialogs[n]` como pai, e **não** o `oDlg`.
- As abas começam no índice **1** (`aDialogs[1]`, `aDialogs[2]`, ...).


---

### TComboBox  - [TComboBox](tComboBox/tComboBox.md)

Cria um objeto do tipo caixa de seleção (ComboBox)
- Criado com `TComboBox():New()`
- Pega a posição do item pelo **índice de caracter** dele
- As opções são passadas em um **array** (`aItems`)
- É possível passar um função nele e o que ele fazer quando a função rodar
  - Dentro da função você pode:
    - Validar a escolha.
    - Alterar outros componentes.
    - Habilitar/desabilitar botões.
    - Mostrar mensagens.
    - Buscar dados no banco.
    - Atualizar campos da tela.

---

### TListBox  - [TListBox](tListBox/tListBox.md)

Cria um objeto do tipo lista de itens com barra de rolagem
- Criado com `TListBox():New()`
- Pega a posição do item pelo **índice numérico** dele - **lembre que começa em 1**
- As opções são passadas em um **array** (`aItems`)
- É possível passar um função nele e o que ele fazer quando a função rodar
  - Dentro da função você pode:
    - Validar a escolha.
    - Alterar outros componentes.
    - Habilitar/desabilitar botões.
    - Mostrar mensagens.
    - Buscar dados no banco.
    - Atualizar campos da tela.
- ``oListBox1:Change(|| ...)``

---

### TRadMenu / botão radio (bolinha de escolha)  - [TRadMenu](tRadMenu/tRadMenu.md) 

Cria um objeto do tipo Radio Button (elemento de seleção de única escolha)
- Criado com ``TRadMenu():New()``

---

### TGet  - [TGet](tGet/tGet.md) 

Cria um objeto para entrada de dados editáveis
- Criado com ``TGet:New()``
- Para cada variável oTGet precisa de uma cGet, nGet... sendo a que vai guardar o valor nela
- Permite entrada e edição de dados.
  - Lembrar de iniciar a variável - `Local cGet1 := space(20)`
- **Atualiza a variável somente quando perde o foco.**
- Pode ser associado a uma variável.
- Aceita diversos tipos de dados (texto, numérico, data, lógico, etc.), conforme a configuração.
  - [Pictures](../annots/pictures.md) 
- Pode utilizar máscaras e formatações para restringir a entrada de dados

---

### TCheckBox  - [TCheckBox](tCheckBox/tCheckBox.md) 

Cria um objeto do tipo caixa de seleção (CheckBox)
- Criado com ``TCheckBox:New()``
- Tem uma variável lógica que acompanha o TCheckBox - `lCheck1` - para saber se está marcado
- E **passar no nono parâmetro o método para o lCheck atualizar** quando for selecionado
  - `{|| lCheck1 := !lCheck1}`
- ``oCheck:CtrlRefresh()`` - Atualiza as informações do objeto

---

### TSay  - [TSay](tSay/tSay.md) 

Cria um objeto do tipo label. 
  Desta forma, o objeto apresentará o conteúdo do texto estático sobre uma janela ou controle visual.
- Criado com ``TSay:New()``
- **Da para utilizar html no TSay**
- ``oSay:CtrlRefresh()`` - Força a atualização do objeto

---



