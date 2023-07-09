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


as.POSIXlt(Sys.Date(), format='%m/%d/%Y %H:%M')
as.POSIXct(Sys.Date())
#################################
library(dplyr)
iris
filtro.fun(x = 'iris.csv')
setwd('arquivos2/')

filtro.fun <- function(x){
  data.table::fread(file = x) %>% 
    dplyr::select("Petal.Length", "Petal.Width", "Species") %>%
    dplyr::filter(Petal.Length > .5) %>%
    setNames(nm = c("compr","largura","especie"))
}

lista <- list.files()
arquivos <- lapply(X = lista, FUN = filtro.fun)


data.table::rbindlist(l = arquivos)
base::Reduce(x = arquivos, f = rbind.data.frame)

setwd("~/Documentos/Estudos R/guia_de_bolso") # Volta para diretório inicial
getwd()


rio::export_list(x = list(iris1 = iris[1:30,], iris2 = iris[60:80,]),
                 file = c("iris1.csv","iris2.csv"), sep=";")

rio::export_list(x = list(iris1 = iris[1:30,], 
                          iris2 = iris[60:80,],
                          iris3 = iris[50:70,]),
                 file = '%s.csv', sep=";")
getwd()
setwd('../')

reshape2::dcast(data = dados::pinguins, 
                formula = ilha ~ sexo, 
                value.var = 'massa_corporal',
                fun.aggregate = sum)
xtabs(formula = massa_corporal ~ sexo + ilha, data = dados::pinguins) 


# colaboracao -------------------------------------------------------------
install.packages("usethis")
usethis::use_git()
usethis::use_git_config(
  user.name = "Lucas Coraça Germano",
  user.email = "lucascgermano@gmail.com"
)

git remote set-url origin https://github.com/lucascgmermano/guia_de_bolso.git

library(dplyr)
library(readr)
library(data.table)

fread("arquivos/iris1.csv", 
                  # header = T, 
                  select = c("Sepal.Width","Petal.Length"))

