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






