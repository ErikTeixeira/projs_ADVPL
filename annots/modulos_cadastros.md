## Módulos Protheus

### Módulo Compras - SIGACOM
- **Produtos:** Definição técnica dos itens - MATA010 - **SB1**
- **Fornecedores:** Cadastro dos vendedores - MATA020 - **SA2**
- **Tipos de Entrada e Saída (TES)** - MATA080 - **SF4**
    - <u>000 a 500 são para Entradas</u> (compras, devoluções de vendas, recebimentos).
    - <u>501 a 999 são destinados a operações de Saída</u> (vendas, devoluções de entrada, etc.)
- **Condições de Pagamento:** Prazos negociados - MATA360 - **SE4**
- **Naturezas Financeiras:** Classificação da despesa - **SED**


### Módulo de Faturamento - SIGAFAT
- **Clientes** - MATA030/CRMA980(foi aterado) - **SA1**
- **Produtos** - **SB1**
- **Condições de Pagamento** - **SE4**
- **Tipos de Entrada e Saída (TES)** - **SF4**
- **Naturezas Financeiras** - **SED**
- **Vendedores** - **SA3**
- **Pedidos de Venda** - **SC5** (Cabeçalho) e **SC6** (Itens) - 
- **Pedidos Liberados** - MATA460A - **SC9**


### Módulo de Gestão Financeira - SIGAFIN
Controle integral de contas a pagar, contas a receber, tesouraria, fluxo de caixa e conciliação bancária
- **Contas a Receber** - FINA040 - Permite incluir, alterar e baixar títulos gerados pelo faturamento (notas fiscais) ou manualmente
- **Contas a Pagar** - FINA050 - Gerencia pagamentos a fornecedores, naturezas de despesa e inclui títulos manualmente.


### Módulo de Estoque e Custos - SIGAEST 
Pilar central para gerenciar inventários, armazenagem e custos de produtos
Controla entradas, saídas, transferências, saldos físicos e financeiros, além de calcular o custo médio e realizar o inventário.
É <u>integrado com Faturamento, Compras e Financeiro</u>
- Produtos (SB1)
- Grupo de Produtos
- Unidades de Medida
- Locais de Estoque (SB2)


### Módulo TMS (Transportation Management System) - SIGATMS
Sistema de gestão especializado para controlar operações de transporte de cargas, do planejamento à entrega final. Ele serve para emitir documentos fiscais (CT-e, MDF-e), calcular fretes, gerenciar frotas/agregados, rastrear entregas e organizar viagens
#### Para quem é:
- **Transportadoras:** De todos os tamanhos, que precisam de controle fiscal e operacional.
- **Empresas com Frota Própria:** Que necessitam gerir custos e rotas.
- **Operadores Logísticos:** Que gerenciam a carga de terceiros.
- **Empresas de Logística:** Que buscam otimizar o transporte de distribuição e coleta

### Módulo GFE (Gestão de Frete Embarcador) - SIGAGFE 
Ferramenta especializada para planejar, calcular, auditar e pagar fretes de transporte de cargas. Ele permite que empresas embarcadoras (indústrias, varejo, agro) gerenciem transportadoras, otimizem rotas, integrem documentos fiscais (CT-e/NF-e) e garantam a conformidade fisca
Foca na auditoria e controle de custos de frete, **ideal para embarcadores que contratam terceiros**


SIGAEST, SIGAFIS