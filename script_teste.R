############################## Servidor local ##################################
bookdown::serve_book() # Ativar
servr::daemon_stop(1)  # Desativar

############################### Exemplos teste #################################
dados <- rio::import('https://raw.githubusercontent.com/seade-R/dados-covid-sp/master/data/dados_covid_sp.csv')
sapply(X = dados, class)

install.packages('readODS')
dados <- readODS::read_ods(path = 'dados/planilha_ods.ods',
                  sheet = 1,
                  col_names = T,
                  na = 5000
                  )

class(dados$distancia)
tinytex::reinstall_tinytex()

install.packages('tinytex', dependencies = T)
install.packages('xelatex')
update.packages(ask = FALSE, checkBuilt = TRUE)
tinytex::tlmgr_update()
tinytex::reinstall_tinytex()
options(tinytex.verbose = TRUE)
install.packages("TinyTeX")
# ```{r, include=FALSE}
# options(tinytex.verbose = TRUE)
# ```

