
---

## ✅ Questões Resolvidas

### Questões 1 a 4
- Respostas teóricas sobre **Sistemas Especialistas** e **Lógica Fuzzy**.
- Todas as alternativas corretas foram justificadas com base nos conceitos vistos em aula e no material `Aula LF.pdf`.

### **Questão 5** (Implementação em R)
**Parte A**  
- Definição de **três valores nebulosos** (Baixa, Média e Alta) para cada variável linguística:
  - Temperatura (°C)
  - Luz do sol (%)
  - Quantidade estimada de turistas (%)
- **Três gráficos** gerados com funções de pertinência **triangulares** usando `ggplot2`.

**Parte B**  
- **Duas regras fuzzy** (estilo Mamdani):
  1. **SE** Temperatura é Alta **E** Luz do Sol é Alta  
     **ENTÃO** Quantidade de Turistas é Alta
  2. **SE** Temperatura é Baixa **OU** Luz do Sol é Baixa  
     **ENTÃO** Quantidade de Turistas é Baixa

---

## 🚀 Como Executar o Script da Questão 5

1. Certifique-se de ter **R** e **RStudio** instalados.
2. Abra o arquivo `Script/Script da 5 questão.R`.
3. Rode o código inteiro (Ctrl + Shift + Enter).
4. O script:
   - Carrega automaticamente a biblioteca `ggplot2`
   - Gera os **3 gráficos** na tela
   - Exibe as duas regras no console

**Biblioteca necessária:** `ggplot2` (instalada automaticamente na primeira execução).

---

## 📸 Visualização dos Gráficos

Os gráficos estão na pasta **Gráficos/** e representam as funções de pertinência para:

- **Temperatura (°C)**
- **Luz do Sol (%)**
- **Quantidade Estimada de Turistas (%)**

---

## ✍️ Autor

**Israel**  
Aluno de Ciências Econômicas - UDF 

---

## 📄 Licença

Este projeto é apenas para fins acadêmicos. Sinta-se à vontade para usar como referência, mas **não copie diretamente** para entregas sem citar a fonte.

---

**Quer contribuir ou melhorar?**  
Abra uma Issue ou faça um Pull Request! 🚀
