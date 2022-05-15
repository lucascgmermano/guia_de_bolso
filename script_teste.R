############################## Servidor local ##################################
bookdown::serve_book() # Ativar
servr::daemon_stop(1)  # Desativar

############################### Exemplos teste #################################
dados <- data.table::fread('dados/dados.csv', 
                           select = c("data","muni","casos"),
                           colClasses = c(data = "Date", muni = "character", casos = "integer"),
                           col.names = c("data.in.sin", "municipio", "num_casos")); head(dados, 5)

dados <- data.table::fread(file = 'dados/dados.csv', header = F); dados

classes <- sapply(dados, class)
class(dados$data)

dados <- read.csv2(file = 'dados/dados.csv')

'data', 'muni', 'faixa','casos'
example('fread')
class(dados$yy)
?fread
