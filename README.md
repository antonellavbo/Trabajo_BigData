# Trabajo_BigData
trabajo final 04-ene-2021
# direccionar a área de trabajo y carga de fuente de datos
setwd ( " C: / Usuarios / Carlos Figueroa / Documentos / Anto-R / Trabajo_BigData " )
Bdatos <- read.csv ( " Data_Trades.csv " , sep  =  " ; " , row.names  =  NULL )



# Información para nivel mundial

importacionesM <-  Bdatos [ Bdatos $ tipo == " mundo "  &  Bdatos $ variables == " Importaciones CIF (millones de dólares estadounidenses) " , 6 ]
exportacionesM <-  Bdatos [ Bdatos $ tipo == " mundo "  &  Bdatos $ variables == " Exportaciones FOB (millones de dólares estadounidenses) " , 6 ]
balancesM <-  Bdatos [ Bdatos $ tipo == " mundo "  &  Bdatos $ variables == " Balance importaciones / exportaciones (millones de dólares estadounidenses) " , 6 ]

# estadígrafos nivel mundial
resumen ( importacionesM )
resumen ( exportacionesM )
resumen ( balancesM )

# gráfico nivel mundial
tipoM  <- c ( " importaciones " , " importaciones " , " importaciones " , " importaciones " , " importaciones " , " importaciones " , " importaciones " ,
          " exportaciones " , " exportaciones " , " exportaciones " , " exportaciones " , " exportaciones " , " exportaciones " , " exportaciones " ,
          " saldos " , " saldos " , " saldos " , " saldos " , " saldos " , " saldos " , " saldos " )
anioM  <- c ( 1995 , 2005 , 2010 , 2015 , 2017 , 2018 , 2019 ,
          1995 , 2005 , 2010 , 2015 , 2017 , 2018 , 2019 ,
          1995 , 2005 , 2010 , 2015 , 2017 , 2018 , 2019 )
valorM  <- as.numeric (c ( importacionesM , exportacionesM , balancesM ))
datosM  <-  data.frame ( tipoM , anioM , valorM )
biblioteca ( ggplot2 )
ggplot ( datosM , aes ( x = anioM , y = valorM , grupo  =  tipoM , color  = tipoM )) + 
  geom_line ()   + 
  geom_point ( tamaño = 2 , forma = 21 , relleno = " blanco " ) + laboratorios ( x  =  " Años " , y  =  " USD millones " )



# Información para nivel continental

balAfrica <-  Bdatos [ Bdatos $ elemento == " África "  &  Bdatos $ variables == " Balance de importaciones / exportaciones (millones de dólares estadounidenses) " , 6 ]
balAmerica <-  Bdatos [ Bdatos $ elemento == " Americas "  &  Bdatos $ variables == " Balance importaciones / exportaciones (millones de dólares estadounidenses) " , 6 ]
balAsia <-  Bdatos [ Bdatos $ elemento == " Asia "  &  Bdatos $ variables == " Balance importaciones / exportaciones (millones de dólares estadounidenses) " , 6 ]
balEuropa <-  Bdatos [ Bdatos $ elemento == " Europa "  &  Bdatos $ variables == " Balance importaciones / exportaciones (millones de dólares estadounidenses) " , 6 ]
balOceania <-  Bdatos [ Bdatos $ elemento == " Oceania "  &  Bdatos $ variables == " Balance importaciones / exportaciones (millones de dólares estadounidenses) " , 6 ]

# estadígrafos nivel mundial
resumen ( balAfrica )
resumen ( balAmerica )
resumen ( balAsia )
resumen ( balEuropa )
resumen ( balOceania )

# gráfico nivel continental
tipoC  <- c ( " África " , " África " , " África " , " África " , " África " , " África " , " África " ,
          " América " , " América " , " América " , " América " , " América " , " América " , " América " ,
          " Asia " , " Asia " , " Asia " , " Asia " , " Asia " , " Asia " , " Asia " ,
          " Europa " , " Europa " , " Europa " , " Europa " , " Europa " , " Europa " , " Europa " ,
          " Oceanía " , " Oceanía " , " Oceanía " , " Oceanía " , " Oceanía " , " Oceanía " , " Oceanía " )
anioC  <- c ( 1995 , 2005 , 2010 , 2015 , 2017 , 2018 , 2019 ,
          1995 , 2005 , 2010 , 2015 , 2017 , 2018 , 2019 ,
          1995 , 2005 , 2010 , 2015 , 2017 , 2018 , 2019 ,
          1995 , 2005 , 2010 , 2015 , 2017 , 2018 , 2019 ,
          1995 , 2005 , 2010 , 2015 , 2017 , 2018 , 2019 )
valorC  <- as.numeric (c ( balAfrica , balAmerica , balAsia , balEuropa , balOceania ))
datosC  <-  data.frame ( tipoC , anioC , valorC )
biblioteca ( ggplot2 )
ggplot ( datosC , aes ( x = anioC , y = valorC , grupo  =  tipoC , color  = tipoC )) + 
  geom_line ()   + 
  geom_point ( tamaño = 2 , forma = 21 , relleno = " blanco " ) + laboratorios ( x  =  " Años " , y  =  " Saldo en USD millones " )


# Información para Chile

importacionesCLP <-  Bdatos [ Bdatos $ elemento == " Chile "  &  Bdatos $ variables == " Importaciones CIF (millones de dólares estadounidenses) " , 6 ]
exportacionesCLP <-  Bdatos [ Bdatos $ elemento == " Chile "  &  Bdatos $ variables == " Exportaciones FOB (millones de dólares estadounidenses) " , 6 ]
balancesCLP <-  Bdatos [ Bdatos $ elemento == " Chile "  &  Bdatos $ variables == " Balance importaciones / exportaciones (millones de dólares estadounidenses) " , 6 ]

# estadígrafos nivel mundial
resumen ( importacionesCLP )
resumen ( exportacionesCLP )
resumen ( saldos CLP )

# gráfico nivel mundial
tipoCLP  <- c ( " importaciones " , " importaciones " , " importaciones " , " importaciones " , " importaciones " , " importaciones " , " importaciones " ,
          " exportaciones " , " exportaciones " , " exportaciones " , " exportaciones " , " exportaciones " , " exportaciones " , " exportaciones " ,
          " saldos " , " saldos " , " saldos " , " saldos " , " saldos " , " saldos " , " saldos " )

anioCLP  <- c ( 1995 , 2005 , 2010 , 2015 , 2017 , 2018 , 2019 ,
          1995 , 2005 , 2010 , 2015 , 2017 , 2018 , 2019 ,
          1995 , 2005 , 2010 , 2015 , 2017 , 2018 , 2019 )

valorCLP  <- as.numeric (c ( importacionesCLP , exportacionesCLP , balancesCLP ))
datosCLP  <-  data.frame ( tipoCLP , anioCLP , valorCLP )
biblioteca ( ggplot2 )
ggplot ( datosCLP , aes ( x = anioCLP , y = valorCLP , grupo  =  tipoCLP , color  = tipoCLP )) + 
  geom_line ()   + 
  geom_point ( tamaño = 2 , forma = 21 , relleno = " blanco " ) + laboratorios ( x  =  " Años " , y  =  " USD millones " )
