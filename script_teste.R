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

rio::export(x = dados::diamante, file = 'dados/diamantes.xlsx')

library(googlesheets4)
url <- "https://docs.google.com/spreadsheets/d/18PV-XBQIrzB6Jfdvz5vgDHZPBoqlDxPcGxufOvCk5a0/edit#gid=0"

setwd('../teste')
write.csv2(x = iris[40:80,], file = 'iris2.csv')


with(data = iris, expr = {Species == "versicolor"}) %>% sum()
head(iris)

funcao <- function(x) {
  read.csv2(x) %>% 
  dplyr::filter(Species=="versicolor")
}

arquivos <- list.files()
dados <- lapply(X = arq, FUN = funcao) 

Reduce(x = dados, f = rbind.data.frame)

rio::import_list(file = arquivos, rbind = TRUE, header=T)[-7]
