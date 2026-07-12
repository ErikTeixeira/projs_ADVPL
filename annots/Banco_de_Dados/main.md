## Funções principais para o banco de dados

---

### DBSeek - https://tdn.totvs.com/display/tec/DBSeek

[DBSeek](DBSeek.md)

Localiza um registro utilizando a **chave do índice ativo**.
- Usa sempre o **índice atual** (`DbSetOrder()`).
- Necessário selecionar a tabela antes com `DbSelectArea()`.
- Retorna `.T.` se encontrar e posiciona o ponteiro no registro.
- Retorna `.F.` se não encontrar.
- Com `lSoftSeek := .T.` posiciona no próximo registro maior, mesmo retornando `.F.`.
- Sempre verifique o retorno antes de acessar os campos.
- Muito utilizado antes de alterações com `RecLock(.F.)`.
- Métodos relacionados:
  - **`DbSelectArea()`**
    - Seleciona a tabela (alias) que será utilizada.
  - **`DbSetOrder()`**
    - Define qual índice o `DbSeek()` irá utilizar na pesquisa.
  - **`DbGoTop()`**
    - Posiciona o ponteiro no primeiro registro da tabela.
  - **`DbSkip()`**
    - Avança ou retrocede registros a partir da posição atual.
  - **`EOF()`**
    - Verifica se o ponteiro chegou ao final da tabela.
  - **`Recno()`**
    - Retorna o número (RecNo) do registro atualmente posicionado.
  - **`RecLock()`**
    - Utilizado após localizar um registro para bloqueá-lo e permitir alterações.

---

### RecLock - https://tdn.totvs.com/pages/releaseview.action?pageId=24347041

[RecLock](RecLock.md)

Trava um registro para permitir **inclusão, alteração ou exclusão** com segurança.
- `RecLock(cAlias, .T.)` → inclusão de registro.
- `RecLock(cAlias, .F.)` → alteração ou exclusão.
- Sempre selecionar a tabela antes com `DbSelectArea()`.
- Para alterar, primeiro posicione o registro com `DbSeek()` ou `DbGoTo()`.
- Sempre finalizar com `MsUnlock()`.
- Retorna `.T.` quando consegue realizar o lock.
- Não funciona em aliases provenientes de `Query`.
- Métodos relacionados:
  - **`DbSelectArea()`**
    - Seleciona a tabela onde será feito o lock.
  - **`DbSeek()`**
    - Localiza o registro antes de alterá-lo ou excluí-lo.
  - **`DbGoTo()`**
    - Posiciona diretamente em um registro através do RecNo.
  - **`DbDelete()`**
    - Marca o registro bloqueado para exclusão.
  - **`MsUnlock()`**
    - Libera o lock do registro após finalizar a manipulação.
  - **`DbSetOrder()`**
    - Define o índice utilizado pelo `DbSeek()` para localizar o registro.
  - **`xFilial()`**
    - Retorna o código da filial da tabela, muito utilizado em inclusões e buscas.

---