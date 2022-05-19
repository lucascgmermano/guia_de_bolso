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
dir()


altura <- round(runif(n = 100, min = 130, max = 220),0)
peso <- round(runif(n = 100, min = 40, max = 280),0)
df <- data.frame(peso, altura)

iconv(x = ,
      from = ,
      to = )

stringi::stri_enc_detect(str = )

remotes::install_github("cienciadedatos/dados")

stringi::stri_enc_detect(str = dados::pinguins$especie[1])

iconv(x = cars, 
      from = "UTF-8", to = "ISO-8859-1")

iconvlist()

Encoding(x = c(dados::pinguins$especie, dados::pinguins$ilha))
example("Encoding"1)
dados <- dados::pinguins

stringi::stri_enc_detect(dados$ilha[10])
base::Encoding(dados$ilha) <- "UTF-8"
dados$ilha <- base::enc2utf8(dados$ilha)
dados$ilha <- as.character(dados$ilha)


