getwd()
bebidas <- read.csv(file="drinks.csv",header = TRUE)

#calculo da m�dia, mediana e desvio padr�o da ingest�o de destilados diarios
mean(bebidas$spirit_servings)
median(bebidas$spirit_servings)
sd(bebidas$spirit_servings)

#calculo da m�dia, mediana e desvio padr�o da ingest�o de vinho di�rios
mean(bebidas$wine_servings)
median(bebidas$wine_servings)
sd(bebidas$wine_servings)

#calculo da m�dia, mediana e desvio padr�o da ingest�o de cerveja di�ria
mean(bebidas$beer_servings)
median(bebidas$beer_servings)
sd(bebidas$beer_servings)

#calculo da m�dia, mediana e desvio padr�o do total de litros de alcool consumido
mean(bebidas$total_litres_of_pure_alcohol)
median(bebidas$total_litres_of_pure_alcohol)
sd(bebidas$total_litres_of_pure_alcohol)

#pais que toma mais vinho por dia -- Fran�a
bebidas[which.max(bebidas$wine_servings),] 

#pais que toma menos vinho por dia -- Afeganist�o
bebidas[which.min(bebidas$wine_servings),]

#pais que toma mais destilados por dia -- Granada
bebidas[which.max(bebidas$spirit_servings),] 

#pais que toma menos destilados por dia -- Afeganist�o
bebidas[which.min(bebidas$spirit_servings),] 

#pais que toma mais cervejas por dia -- Namibia
bebidas[which.max(bebidas$beer_servings),]

#pais que toma menos cerveja po dia -- Afeganist�o
bebidas[which.min(bebidas$beer_servings),]


#coleta de dados de paises espec�ficos 
bebidas[which(bebidas$country=="Denmark"),] 
#49 Denmark           224              81           278                         10.4

bebidas[which(bebidas$country=="Iceland"),]
#77 Iceland           233              61            78                          6.6

bebidas[which(bebidas$country=="Spain"),] 
#161   Spain           284             157           112                           10

bebidas[which(bebidas$country=="Italy"),]
#161   Spain           284             157           112                           10

bebidas[which(bebidas$country=="Paraguay"),] 
#133 Paraguay           213             117            74                          7.3



#Posi��o de alguns paises no ranking 
which(bebidas_sorted$country=="Argentina") #46

which(bebidas_sorted$country=="Finland") #19

which(bebidas_sorted$country=="Portugal") #44

which(bebidas_sorted$country=="South Africa") #33

which(bebidas_sorted$country=="Japan") #94

which(bebidas_sorted$country=="China") #91

#boxplot cerveja por pessoa
boxplot(bebidas$beer_servings, main="Consumo Cerveja anual por pessoa", boxwex=0.1)

#boxplot destilados por pessoa
boxplot(bebidas$spirit_servings, main="Consumo Destilados anual por pessoa", boxwex=0.1)

#boxplot vinhos por pessoa
boxplot(bebidas$wine_servings, main="Consumo Vinho anual por pessoa", boxwex=0.1)

#boxplot consumo alc�olico anual 
boxplot(bebidas$total_litres_of_pure_alcohol, main="Consumo Alc�olico anual por pessoa", boxwex=0.1)


