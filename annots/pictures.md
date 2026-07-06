## Pictures

### Documentação 
- https://tdn.totvs.com/display/teces/Picture+de+los+Campos
- https://terminaldeinformacao.com/2023/08/29/principais-mascaras-pictures-usadas-no-protheus/
- https://mastersiga.tomticket.com/kb/configurador/principais-mascaras-pictures-usadas-no-protheus


---

- O `@` é padrão e coloca o lemento na frente - `@X`, `@!`...

| Caractere | Descrição                                                                  |
|-----------|----------------------------------------------------------------------------|
| A         | Permite somente letras                                                     |
| N         | Permite letras e números                                                   |
| X         | Permite qualquer caractere                                                 |
| 9         | Permite números                                                            |
| #         | Permite letras, números, sinais, espaços para qualquer tipo de dado        |
| L         | Permite apenas Y, N, T e F (Yes, No, True e False respectivamente)         |
| Y         | Permite apenas Y e N (Yes e No respectivamente)                            |
| !         | Converter letras para maiúsculo                                            |
| $         | Exibe um cifrão                                                            |
| .         | Se usar @E converte o ponto para vírgula                                   |
| ,         | Se usar @E converte vírgula para ponto                                     |
| R         | Insere caracteres na máscara, mas eles não serão salvos no banco de dados  |
| *         | Exibe asterisco no lugar dos caracteres digitados                          |
| <         | Começa da direita para a esquerda                                          |

### Máscaras mais utilizadas:

| Descrição                                                                            | Máscara utilizada      |
|--------------------------------------------------------------------------------------|------------------------|
| Ano / Mês                                                                            | @R 9999/99             |
| CEP                                                                                  | @R 99999-999           |
| CNPJ                                                                                 | @R 99.999.999/9999-99  |
| CPF                                                                                  | @R 999.999.999-99      |
| Hora e Minuto (será salvo no banco como HHMM)                                        | @R 99:99               |
| Hora, Minuto e Segundo (será salvo no banco como HHMMSS)                             | @R 99:99:99            |
| Mês / Ano                                                                            | @R 99/9999             |
| RG                                                                                   | @R 99.999.999-X        |
| Senhas                                                                               | @*                     |
| Telefone (com DDD)                                                                   | @R (99) 9 9999-9999    |
| Telefone (sem DDD)                                                                   | @R 9 9999-9999         |
| Tudo Maiúsculo                                                                       | @!                     |
| Valor numérico com 2 casas decimais                                                  | @E 999,999,999.99      |
| Valor numérico com 4 casas decimais                                                  | @E 999,999,999.9999    |
| Valor numérico sem casa decimal                                                      | @E 999,999,999         |
| Valor numérico sem separador de milhar e com 2 casas decimais                        | @E 999999999.99        |
| Valor numérico com 2 casas decimais começando pelos centavos (direita para esquerda) | @<E 999,999,999.99     |

