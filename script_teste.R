############################## Servidor local ##################################
bookdown::serve_book() # Ativar
servr::daemon_stop(1)  # Desativar

############################### Exemplos teste #################################
dados <- rio::import('https://raw.githubusercontent.com/seade-R/dados-covid-sp/master/data/dados_covid_sp.csv')
sapply(X = dados, class)

dir.create('ilustracoes')
dir.exists(paths = dir())
remove(... = 'teste.txt')


file.create("teste.txt")
file.create("new_word_file.docx")
file.create("new_csv_file.csv")

file.remove("teste.txt")
unlink("teste/", recursive = TRUE)
unlink('new_csv_file.csv')
iconv(x = ,
      from = ,
      to = )


altura <- round(runif(n = 100, min = 130, max = 220),0)
peso <- round(runif(n = 100, min = 40, max = 280),0)
df <- data.frame(peso, altura)

read.csv2(file = file.path('dados','dados.csv'))
read.csv2(file = here::here('dados','dados.csv'))
here::here('dados','dados.csv')
base::file.path('dados','dados.csv')  
file
file.path('dados/')
here::here()
rio::import(file = 'dados/dados.csv', format = ",")
