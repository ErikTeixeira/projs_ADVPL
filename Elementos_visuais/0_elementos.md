## Elementos visuais protheus ADVPL

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

