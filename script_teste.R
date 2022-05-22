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

install.packages('writexl')

writexl::write_xlsx()
data.table::fwrite(x = iris, file = 'dados/iris_fwrite.csv', sep = ';')
data.table::fread('dados/iris_fwrite.csv', nrows = 4)
read.csv2('dados/iris.csv', nrows = 4)
dados <- readr::write_csv2(x = iris, file = 'dados/iris.csv')
read.csv2(file = 'dados/iris.csv', nrows = 4)

data.table::fwrite(x = dados::pixar_avalicao_publico,
                   file = 'dados/cars.csv',
                   sep = ';', dateTimeAs = "squash")

dados <- data.table::fread(file = 'dados/dados.csv', nrows = 20)
data.table::fwrite(x = dados, 
                   file = 'dados/dados20max.csv',
                   append = TRUE, 
                   sep = ';',
                   showProgress = TRUE)

