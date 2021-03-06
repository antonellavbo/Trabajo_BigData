# direccionar a �rea de trabajo y carga de fuente de datos
setwd("C:/Users/Carlos Figueroa/Documents/Anto-R/Trabajo_BigData")
Bdatos<-read.csv ("Data_Trades.csv", sep = ";", row.names = NULL)



# Informaci�n para nivel mundial

importacionesM<- Bdatos[ Bdatos$tipo=="mundo" & Bdatos$variables=="Imports CIF (millions of US dollars)",6]
exportacionesM<- Bdatos[ Bdatos$tipo=="mundo" & Bdatos$variables=="Exports FOB (millions of US dollars)",6]
balancesM<- Bdatos[ Bdatos$tipo=="mundo" & Bdatos$variables=="Balance imports/exports (millions of US dollars)",6]

#estad�grafos nivel mundial
summary(importacionesM)
summary(exportacionesM)
summary(balancesM)

#gr�fico nivel mundial
tipoM <- c("importaciones","importaciones","importaciones","importaciones","importaciones","importaciones","importaciones",
          "exportaciones","exportaciones","exportaciones","exportaciones","exportaciones","exportaciones","exportaciones",
          "balances","balances","balances","balances","balances","balances","balances")
anioM <- c(1995,2005,2010,2015,2017,2018,2019,
          1995,2005,2010,2015,2017,2018,2019,
          1995,2005,2010,2015,2017,2018,2019)
valorM <- as.numeric(c(importacionesM, exportacionesM, balancesM))
datosM <- data.frame(tipoM, anioM, valorM)
library(ggplot2)
ggplot(datosM, aes(x=anioM, y=valorM, group = tipoM, colour =tipoM )) + 
  geom_line()  + 
  geom_point( size=2, shape=21, fill="white") + labs(x = "A�os",y = "USD millones")



# Informaci�n para nivel continental

balAfrica<- Bdatos[ Bdatos$elemento=="Africa" & Bdatos$variables=="Balance imports/exports (millions of US dollars)",6]
balAmerica<- Bdatos[ Bdatos$elemento=="Americas" & Bdatos$variables=="Balance imports/exports (millions of US dollars)",6]
balAsia<- Bdatos[ Bdatos$elemento=="Asia" & Bdatos$variables=="Balance imports/exports (millions of US dollars)",6]
balEuropa<- Bdatos[ Bdatos$elemento=="Europe" & Bdatos$variables=="Balance imports/exports (millions of US dollars)",6]
balOceania<- Bdatos[ Bdatos$elemento=="Oceania" & Bdatos$variables=="Balance imports/exports (millions of US dollars)",6]

#estad�grafos nivel mundial
summary(balAfrica)
summary(balAmerica)
summary(balAsia)
summary(balEuropa)
summary(balOceania)

#gr�fico nivel continental
tipoC <- c("Africa","Africa","Africa","Africa","Africa","Africa","Africa",
          "Am�rica","Am�rica","Am�rica","Am�rica","Am�rica","Am�rica","Am�rica",
          "Asia","Asia","Asia","Asia","Asia","Asia","Asia",
          "Europa","Europa","Europa","Europa","Europa","Europa","Europa",
          "Ocean�a","Ocean�a","Ocean�a","Ocean�a","Ocean�a","Ocean�a","Ocean�a")
anioC <- c(1995,2005,2010,2015,2017,2018,2019,
          1995,2005,2010,2015,2017,2018,2019,
          1995,2005,2010,2015,2017,2018,2019,
          1995,2005,2010,2015,2017,2018,2019,
          1995,2005,2010,2015,2017,2018,2019)
valorC <- as.numeric(c(balAfrica, balAmerica, balAsia, balEuropa, balOceania))
datosC <- data.frame(tipoC, anioC, valorC)
library(ggplot2)
ggplot(datosC, aes(x=anioC, y=valorC, group = tipoC, colour =tipoC )) + 
  geom_line()  + 
  geom_point( size=2, shape=21, fill="white") + labs(x = "A�os",y = "Balance en USD millones")


# Informaci�n para Chile

importacionesCLP<- Bdatos[ Bdatos$elemento=="Chile" & Bdatos$variables=="Imports CIF (millions of US dollars)",6]
exportacionesCLP<- Bdatos[ Bdatos$elemento=="Chile" & Bdatos$variables=="Exports FOB (millions of US dollars)",6]
balancesCLP<- Bdatos[ Bdatos$elemento=="Chile" & Bdatos$variables=="Balance imports/exports (millions of US dollars)",6]

#estad�grafos nivel mundial
summary(importacionesCLP)
summary(exportacionesCLP)
summary(balancesCLP)

#gr�fico nivel mundial
tipoCLP <- c("importaciones","importaciones","importaciones","importaciones","importaciones","importaciones","importaciones",
          "exportaciones","exportaciones","exportaciones","exportaciones","exportaciones","exportaciones","exportaciones",
          "balances","balances","balances","balances","balances","balances","balances")

anioCLP <- c(1995,2005,2010,2015,2017,2018,2019,
          1995,2005,2010,2015,2017,2018,2019,
          1995,2005,2010,2015,2017,2018,2019)

valorCLP <- as.numeric(c(importacionesCLP, exportacionesCLP, balancesCLP))
datosCLP <- data.frame(tipoCLP, anioCLP, valorCLP)
library(ggplot2)
ggplot(datosCLP, aes(x=anioCLP, y=valorCLP, group = tipoCLP, colour =tipoCLP )) + 
  geom_line()  + 
  geom_point( size=2, shape=21, fill="white") + labs(x = "A�os",y = "USD millones")
