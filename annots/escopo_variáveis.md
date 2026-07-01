# Escopo de Variáveis no ADVPL

## 1. Local

**Declaração:**

```advpl
Local cNome := "TOTVS"
```

### Visibilidade
- Restrita apenas à função ou método onde foi declarada.

### Ciclo de vida
- É criada no momento da declaração.
- É destruída quando a função termina.
- Ao chamar a função novamente, a variável é recriada.

### Uso ideal
- ✅ É o tipo de variável mais recomendado pela TOTVS.
- Evita vazamento de dados.
- Evita conflitos de memória.
- Ideal para praticamente todas as rotinas customizadas.

---

## 2. Private

**Declaração:**

```advpl
Private cNome := "TOTVS"
```

### Visibilidade
- Visível na função que a declarou.
- Também pode ser acessada por todas as funções chamadas a partir dela (escopo descendente).

### Ciclo de vida
- Existe enquanto a função principal estiver em execução.
- É destruída quando essa função termina.

### Uso ideal
- Utilizada em sistemas legados.
- Muito usada para passar parâmetros obrigatórios para telas padrão do Protheus (como rotinas SX).

---

## 3. Public

**Declaração:**

```advpl
Public cNome := "TOTVS"
```

### Visibilidade
- Visível em todo o sistema.
- Pode ser acessada por qualquer rotina, programa ou thread ativa.

### Ciclo de vida
- Permanece ativa durante toda a sessão do usuário.

### Uso ideal
- ⚠️ Deve ser evitada sempre que possível.
- Indicada apenas para informações realmente globais, como:
  - parâmetros do sistema;
  - identificação do usuário conectado.

---

## 4. Static

**Declaração:**

```advpl
Static cNome := "TOTVS"
```

### Visibilidade
- Restrita ao arquivo `.prw` onde foi declarada.

### Ciclo de vida
- É criada na primeira execução.
- Mantém seu valor mesmo após o término da função.
- Só é destruída quando:
  - o sistema é reiniciado; ou
  - a sessão é encerrada.

### Uso ideal
- Cache local.
- Contadores internos.
- Controle de execução.
- Evitar que um mesmo processo seja executado duas vezes na mesma tela.

---

# Resumo

| Tipo | Visibilidade | Duração | Quando usar |
|------|--------------|----------|-------------|
| **Local** | Apenas na função | Até o fim da função | ✅ Uso padrão e recomendado pela TOTVS |
| **Private** | Função + funções chamadas | Até o fim da função principal | Passagem de parâmetros e compatibilidade com rotinas legadas |
| **Public** | Todo o sistema | Durante toda a sessão | ⚠️ Apenas para informações globais |
| **Static** | Apenas no arquivo `.prw` | Até reiniciar a sessão/sistema | Cache, contadores e persistência local |