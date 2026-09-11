# analise-cancelamentos-delivery-sql
Análise exploratória em SQL de gargalos e cancelamentos operacionais no setor de delivery


# Análise de Gargalos e Cancelamentos Operacionais em Delivery
Objetivo do Projeto: 
Identificar os principais fatores detratores que levam ao cancelamento de pedidos em uma plataforma de delivery, utilizando consultas SQL para extrair insights a partir de uma base com mais de 378 mil registros logísticos.

---
### **Ferramentas Utilizadas:**
* **Banco de Dados: SQLite (via DBeaver).**
* **Técnicas SQL:** ⁠JOIN⁠, ⁠GROUP BY⁠, Funções de Agregação (⁠AVG⁠, ⁠COUNT⁠), Ordenação e Arredondamento numérico.

---
### **Principais Insights e Descobertas:**
* **Volume e Eficiência Operacional: A plataforma apresenta alta eficiência de conversão logística. Do total de transações, 371.367 pedidos foram concluídos com sucesso, enquanto apenas 7.253 foram cancelados.
* **Disparidade por raio de entrega: A análise revelou uma correlação entre o cancelamento e a distância da entrega. O raio médio das entregas canceladas foi de  **59,1 km** (59.176 metros) - uma distância 6 superior à média dos pedidos concluídos, que registrou **9,7 km** (9.777 metros).
* **Ciclo de Vida do Cancelamento: O tempo médio de ciclo de um pedido cancelado é de 35 minutos, tempo esse muito inferior aos 168 minutos do ciclo completo de um pedido entregue. Esse comportamento indica que a quebra operacional ocorre majoritariamente no topo do funil logístico, sugerindo atrito na alocação de frota e rejeição por parte dos entregadores devido à inviabilidade da distância.

---
### **Recomendações de Negócio:**
1. ** Filtro de Viabilidade Geográfica:** Implementar um bloqueio dinâmico no aplicativo para limitar pedidos onde o cliente está a mais de 15 km da loja, reduzindo a frustração do usuário e processamento ineficiente de alocação de frota.
2. ** Taxa Dinâmica por Distância:** No caso de áreas mais distantes, cujo valor estratégico para expansão do negócio seja de grande relevância, a aplicação de um multiplicador no valor do frete para pedidos acima de 10 km, utilizando essa margem para subsidiar incentivos maiores aos entregadores que aceitarem a rota.
