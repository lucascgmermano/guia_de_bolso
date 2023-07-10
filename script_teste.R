############################## Servidor local ##################################
bookdown::serve_book() # Ativar
servr::daemon_stop(1)  # Desativar

############################### Exemplos teste #################################
dados <- rio::import('https://raw.githubusercontent.com/seade-R/dados-covid-sp/master/data/dados_covid_sp.csv')
sapply(X = dados, class)

dir.create('ilustracoes')
dir.exists(paths = dir())
remove(... = 'teste.txt')
unlink(x = c('iris2.csv', 'iris3.csv'), recursive = T)


install.packages("googlesheets4")

library(googlesheets4)
url <- "https://docs.google.com/spreadsheets/d/18PV-XBQIrzB6Jfdvz5vgDHZPBoqlDxPcGxufOvCk5a0/edit#gid=0"


# colaboracao -------------------------------------------------------------
install.packages("usethis")
usethis::use_git()
usethis::use_git_config(
  user.name = "Lucas Coraça Germano",
  user.email = "lucascgermano@gmail.com"
)

git remote set-url origin https://github.com/lucascgmermano/guia_de_bolso.git


# Testes ------------------------------------------------------------------

library(dplyr)
library(readr)
library(data.table)

format(x = as.date("01/02/2022"), format = "%d-%m-%Y") %>% class()

data.table::year("2020-05-01")
data.table::month(as.Date("2020-05-01"))
base::weekdays(as.Date("2020-05-01"))
base::as.Date("2020-05-01")
data.table::wday(as.Date("2020-05-01"))
data.table::week(as.Date("2020-05-01"))

seq(as.Date("2020-01-01"), by="3 year", length=3)

seq.Date(from = as.Date("2020-01-01"), to = as.Date("2020-12-31"), by = "month")

seq.Date(from = data_inicio, to = Sys.Date(), by = "month")


lubridate::month("2020-01-01")

data_inicio <- as.Date('2022-01-01')
sequencia_datas <- seq.Date(from = data_inicio, to = Sys.Date(), by = "3 months")
sequencia_datas

data_nasc <- as.Date("1985-01-27")

idade_dias <- as.integer(Sys.Date() - data_nasc)
floor(idade_dias / 365.25)

