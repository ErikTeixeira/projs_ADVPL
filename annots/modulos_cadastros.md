## Módulos Protheus

[Modulos SIGACFG + APSDU/MPSDU](annots/modulos_cadastros.md)

# Sumário

- [Módulos Protheus](#módulos-protheus)
  - [Módulo Compras - SIGACOM](#módulo-compras---sigacom)
  - [Módulo de Faturamento - SIGAFAT](#módulo-de-faturamento---sigafat)
  - [Módulo de Gestão Financeira - SIGAFIN](#módulo-de-gestão-financeira---sigafin)
  - [Módulo de Estoque e Custos - SIGAEST](#módulo-de-estoque-e-custos---sigaest)
  - [Módulo TMS](#módulo-tms-transportation-management-system---sigatms---43)
  - [Módulo GFE](#módulo-gfe-gestão-de-frete-embarcador---sigagfe---78)
  - [Módulo OMS](#módulo-oms-order-management-system--gestão-de-destribuição---sigagfe---78)

- [Sequência](#sequência)

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
  - **Grupos de Produtos** - **SBM**
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


### Módulo TMS (Transportation Management System) - SIGATMS - 43
Sistema de gestão especializado para controlar operações de transporte de cargas, do planejamento à entrega final. Ele serve para emitir documentos fiscais (CT-e, MDF-e), calcular fretes, gerenciar frotas/agregados, rastrear entregas e organizar viagens
#### Para quem é:
- **Transportadoras:** De todos os tamanhos, que precisam de controle fiscal e operacional.
- **Empresas com Frota Própria:** Que necessitam gerir custos e rotas.
- **Operadores Logísticos:** Que gerenciam a carga de terceiros.
- **Empresas de Logística:** Que buscam otimizar o transporte de distribuição e coleta

### Módulo GFE (Gestão de Frete Embarcador) - SIGAGFE - 78
Ferramenta especializada para planejar, calcular, auditar e pagar fretes de transporte de cargas. Ele permite que empresas embarcadoras (indústrias, varejo, agro) gerenciem transportadoras, otimizem rotas, integrem documentos fiscais (CT-e/NF-e) e garantam a conformidade fiscal
Foca na auditoria e controle de custos de frete, **ideal para embarcadores que contratam terceiros**

- Módulo para empresas que contratam frete

### Módulo OMS (Order Management System | Gestão de destribuição) - SIGAGFE - 78
**Usado antes do GFE e TMS**
- Dedicado ao gerenciamento de pedidos, roteirização e distribuição
- Não cria o pedido de venda - pega do módulo de vendas
#### Fluxo
Pedido -> Liberação -> Roteirização -> Montagem de carga -> Romaneio -> Retorno/Baixa da entrega
- Liberação = Verifica crédito e estoque
- Roteirização = Automatizar a programação de entregas
- Montagem de carga = sleciona pedidos, validar estoque/credito, agrupar em cargas e gerar o romaneio

---

## Sequência 
- Pedido de venda
- Liberação/Conerência/Separação
- OMS - Preparar mercadoria
- TMS - Para transportadora
- GFE - Para empresa que envia a mercadoria e terceriza o transporte
