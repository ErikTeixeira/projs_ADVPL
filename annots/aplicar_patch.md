## Aplicar Patch pelo VsCode

Arquivo que tem um conjunto de fontes que serão aplicados ao seu **RPO** (Repositório de Objetos) 

### Como aplicar um patch no Protheus
A forma mais comum de aplicar um patch é utilizando o VS Code. 
- **Faça Backup do RPO:** Antes de iniciar, faça uma cópia de segurança do seu repositório de objetos (RPO) para evitar a perda de dados em caso de falhas.
- **Acesso Exclusivo:** Certifique-se de que todos os usuários saiam do sistema. Isso previne erros de trava de acesso ao arquivo.
- **Conecte-se ao Servidor:** Abra o VS Code e utilize a extensão TOTVS Developer Studio para conectar-se ao seu ambiente (AppServer).
- **Aplique o Patch:** 
    - Clique com o botão direito sobre o servidor conectado e selecione a opção de aplicar pacote/patch | Patch Apply.
    - Selecione o arquivo do patch (geralmente com a extensão .ptm).

#### **Apply old files** - se marcar esta caixa o patch vai ser aplicado além dos fontes novos que estão no pacote, e o que vc já tem aplicado vai ser sobreposto

#### Só pode aplicar patch da mesma versão instalada - Realese do RPO e do dicionário de dados - Shift + f6