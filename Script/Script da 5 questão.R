# ================================================
# QUESTÃO 5 - Sistema Fuzzy de Turistas em R
# Profª Leticia T. M. Zoby
# ================================================

# Instale a biblioteca (rode apenas uma vez)
# install.packages("ggplot2")

library(ggplot2)

# ================================================
# FUNÇÃO DE PERTINÊNCIA TRIANGULAR (reutilizável)
# ================================================
triangular <- function(x, a, b, c) {
  pmax(pmin((x - a)/(b - a), (c - x)/(c - b)), 0)
}

# ================================================
# A) DEFINIÇÃO DOS VALORES NEBULOSOS (3 por variável)
# ================================================

# 1. Temperatura (°C) - universo: 0 a 40
temp_baixa  <- function(x) triangular(x,  0,  0, 15)
temp_media  <- function(x) triangular(x, 10, 22, 30)
temp_alta   <- function(x) triangular(x, 25, 35, 40)

# 2. Luz do sol (%) - universo: 0 a 100
sol_baixa   <- function(x) triangular(x,  0, 20, 40)
sol_media   <- function(x) triangular(x, 30, 55, 75)
sol_alta    <- function(x) triangular(x, 65, 85, 100)

# 3. Quantidade de turistas (%) - universo: 0 a 100
tur_baixa   <- function(x) triangular(x,  0, 25, 45)
tur_media   <- function(x) triangular(x, 35, 60, 80)
tur_alta    <- function(x) triangular(x, 70, 90, 100)

# ================================================
# GRÁFICOS (3 gráficos separados)
# ================================================

# Gráfico 1 - Temperatura
p1 <- ggplot(data.frame(x = seq(0, 40, 0.1)), aes(x)) +
  stat_function(fun = temp_baixa,  aes(color = "Baixa"),  size = 1.2) +
  stat_function(fun = temp_media,  aes(color = "Média"),  size = 1.2) +
  stat_function(fun = temp_alta,   aes(color = "Alta"),   size = 1.2) +
  labs(title = "Temperatura (°C)", x = "Temperatura (°C)", y = "Grau de Pertinência") +
  scale_color_manual(values = c("Baixa" = "blue", "Média" = "green", "Alta" = "red")) +
  theme_minimal() +
  theme(legend.title = element_blank())

# Gráfico 2 - Luz do Sol
p2 <- ggplot(data.frame(x = seq(0, 100, 0.1)), aes(x)) +
  stat_function(fun = sol_baixa,  aes(color = "Baixa"), size = 1.2) +
  stat_function(fun = sol_media,  aes(color = "Média"), size = 1.2) +
  stat_function(fun = sol_alta,   aes(color = "Alta"),  size = 1.2) +
  labs(title = "Luz do Sol (%)", x = "Luz do Sol (% do máximo)", y = "Grau de Pertinência") +
  scale_color_manual(values = c("Baixa" = "blue", "Média" = "green", "Alta" = "red")) +
  theme_minimal() +
  theme(legend.title = element_blank())

# Gráfico 3 - Quantidade de Turistas
p3 <- ggplot(data.frame(x = seq(0, 100, 0.1)), aes(x)) +
  stat_function(fun = tur_baixa,  aes(color = "Baixa"), size = 1.2) +
  stat_function(fun = tur_media,  aes(color = "Média"), size = 1.2) +
  stat_function(fun = tur_alta,   aes(color = "Alta"),  size = 1.2) +
  labs(title = "Quantidade Estimada de Turistas (%)", 
       x = "Capacidade do Resort (%)", y = "Grau de Pertinência") +
  scale_color_manual(values = c("Baixa" = "blue", "Média" = "green", "Alta" = "red")) +
  theme_minimal() +
  theme(legend.title = element_blank())

# Exibir os 3 gráficos
print(p1)
print(p2)
print(p3)

# ================================================
# B) 2 REGRAS FUZZY (Mamdani)
# ================================================

cat("\n=== REGRAS FUZZY CRIADAS ===\n\n")

cat("Regra 1:\n")
cat("SE Temperatura é Alta E Luz do Sol é Alta\n")
cat("ENTÃO Quantidade de Turistas é Alta\n\n")

cat("Regra 2:\n")
cat("SE Temperatura é Baixa OU Luz do Sol é Baixa\n")
cat("ENTÃO Quantidade de Turistas é Baixa\n\n")
