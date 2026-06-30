## Módulos Protheus

[Modulos SIGACFG + APSDU/MPSDU](mod_cfg_apsdu.md)

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

---

### Módulo Compras - SIGACOM - 02
| Cadastro | Rotina | Tabela |
|---|---|---|
| Produtos - Definição técnica dos itens | MATA010 | **SB1** |
| Fornecedores - Cadastro dos vendedores | MATA020 | **SA2** |
| Tipos de Entrada e Saída (TES) | MATA080 | **SF4** |
| Condições de Pagamento - Prazos negociados | MATA360 | **SE4** |
| Naturezas Financeiras - Classificação da despesa | — | **SED** |

- Pedido de compra - faz um documento de entrada - gera um contas a pagar
- Pedido de venda - faz um documento de saída - gera um contas a receber

- Condições de Pagamento
  - Se for uma que parcela em mais de uma vez gera mais de um título, exemplo ```30 e 60 dias``` - duplicatas
 
- **Tipos de Entrada e Saída (TES)**
    - <u>000 a 500 são para Entradas</u> (compras, devoluções de vendas, recebimentos).
    - <u>501 a 999 são destinados a operações de Saída</u> (vendas, devoluções de entrada, etc.)

>Para criar um pedido de compra precisa de um fornecedor(quem vende) e um cliente(quem compra)
>    - Pode vim de uma solicitação de compra o pedido
>Quando cria o pedido ele pode estar pendente e precisa liberar ele
>    - o aprovador libera - no administração de comprar tem aprovadores, tem um limite de saldo nele
>    - Para liberar - liberação de documentos - só aparece para o aprovador
>**Pedido de compra virar uma nota fiscal de entrada** - Atualizações -> Movimentos -> Documentos de entrada ( da para gerar uma pré nota antes - diferença que não tem uma TES nela )
> - outras ações na tela de incluir documento de entrada - pedido - escolhe o pedido - e já preenche os dados do item

- **Com isso movimenta o estoque, e vai aparecer quantos foram comprados lá**

---

### Módulo de Faturamento - SIGAFAT - 05
 Cadastro | Rotina | Tabela |
|---|---|---|
| Clientes | MATA030 / CRMA980 (foi alterado) | **SA1** |
| Produtos | MATA010 | **SB1** |
| Grupos de Produtos | — | **SBM** |
| Condições de Pagamento | MATA360 | **SE4** |
| Tipos de Entrada e Saída (TES) | MATA080 | **SF4** |
| Naturezas Financeiras | — | **SED** |
| Vendedores | — | **SA3** |
| Pedidos de Venda | — | **SC5** (Cabeçalho) e **SC6** (Itens) |
| Pedidos Liberados | MATA460A | **SC9** |

- Tem os pedidos de venda - da para criar por um orçamento ou direto
  - Precisa ter um cliente cadastrado com natureza nele
  - No preenchimento do produto precisa do Tipo de Saída - **TES** - dita coisas que acontecem no sistema (Ex: se movimenta estoque, se movimento o financeiro...), e diz se é uma operação de venda ou de compra
    - 001 até a 500 = operações de entrada  |  501 até 999 = operações de saída
  - Tem liberadores - quem libera o pedido, e precisa liberar o crédito para poder faturar
  - Pedido de venda -> outras ações -> Preparar doc saída -> Gera uma nota fiscal
- Cadastro de vendedores, e as comissões
  - No protheus pode ter até 5 vendedores para uma venda
- NF-e e Nfs-e -> Nf-e Sefaz (para produto) -> aparece aqui (precisa estar configurado)
- Nota fiscal de saída
  - Atualizações - Faturamento - Documento de saída 

---

### Módulo de Gestão Financeira - SIGAFIN - 06
Controle integral de contas a pagar, contas a receber, tesouraria, fluxo de caixa e conciliação bancária
- Trata de saldos bancários
- Atualizações -> Movimento bancario - mostra a movimentação bancaria da empresa de entrada e saída que houve baixa

**Quando compra vc fica devendo(Contas a pagar) e quando vende fica tendo recebimento(Contas a receber)**
- **Contas a Receber** - FINA040 - Permite incluir, alterar e baixar títulos gerados pelo faturamento (notas fiscais) ou manualmente - **SE1**
  - **Referente as notas ficais de saída**
  - Da para fazer a baixa completa ou parcial
  - Se cancelar a baixa e para voltar o saldo

  - Tem os títulos - as vendas que foram feitas - **se a condição de pagamento tem mais de uma parcela vai aparecer dois títulos aqui**

- **Contas a Pagar** - FINA050 - Gerencia pagamentos a fornecedores, naturezas de despesa e inclui títulos manualmente - **SE2** - campo E2_SALDO fica zerado quando ele está baixado
  - **Referente as notas ficais de entrada**
  - Da para fazer a baixa, e fica quitado
  - Baixa parcial - não baixa todo o valor
  - Baixa manual - da para cancelar a baixa

  - Tem os títulos - as comprar feitas

---

### Módulo de Estoque e Custos - SIGAEST - 04
> Pilar central para gerenciar inventários, armazenagem e custos de produtos
Controla entradas, saídas, transferências, saldos físicos e financeiros, além de calcular o custo médio e realizar o inventário.
É <u>integrado com Faturamento, Compras e Financeiro</u>

| Cadastro | Tabela |
|---|---|
| Produtos | **SB1** |
| Grupo de Produtos | — |
| Unidades de Medida | — |
| Locais de Estoque | **SB2** | 

SB2 - armazena os saldos dos produtos

- FIFO - First In, First Out - O primeiro a entrar é o primeiro a sair
- LIFO - Last In, First Out - O último a entrar é o primeiro a sair

- Relatório KARDEX - consegue ver as entradas e saídas, produtos ...
- Consultas - cadastro - genérico

---

### Módulo TMS (Transportation Management System) - SIGATMS - 43
> Sistema de gestão especializado para controlar operações de transporte de cargas, do planejamento à entrega final. Ele serve para emitir documentos fiscais (CT-e, MDF-e), calcular fretes, gerenciar frotas/agregados, rastrear entregas e organizar viagens
#### Para quem é:
- **Transportadoras:** De todos os tamanhos, que precisam de controle fiscal e operacional.
- **Empresas com Frota Própria:** Que necessitam gerir custos e rotas.
- **Operadores Logísticos:** Que gerenciam a carga de terceiros.
- **Empresas de Logística:** Que buscam otimizar o transporte de distribuição e coleta

---

### Módulo GFE (Gestão de Frete Embarcador) - SIGAGFE - 78
> Ferramenta especializada para planejar, calcular, auditar e pagar fretes de transporte de cargas. Ele permite que empresas embarcadoras (indústrias, varejo, agro) gerenciem transportadoras, otimizem rotas, integrem documentos fiscais (CT-e/NF-e) e garantam a conformidade fiscal
Foca na auditoria e controle de custos de frete, **ideal para embarcadores que contratam terceiros**

- Módulo para empresas que contratam frete

---

### Módulo OMS (Order Management System | Gestão de destribuição) - SIGAOMS
**Usado antes do GFE e TMS**
- Dedicado ao gerenciamento de pedidos, roteirização e distribuição
- Não cria o pedido de venda - pega do módulo de vendas
#### Fluxo
Pedido -> Liberação -> Roteirização -> Montagem de carga -> Romaneio -> Retorno/Baixa da entrega
| Etapa | Descrição |
|---|---|
| Liberação | Verifica crédito e estoque |
| Roteirização | Automatizar a programação de entregas |
| Montagem de carga | Seleciona pedidos, validar estoque/crédito, agrupar em cargas e gerar o romaneio |

---

## Sequência 
- Pedido de venda
- Liberação/Conerência/Separação
- OMS - Preparar mercadoria
- TMS - Para transportadora
- GFE - Para empresa que envia a mercadoria e terceriza o transporte
