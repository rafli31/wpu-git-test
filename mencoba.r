#data frame dan tibble

data() #untuk mengetahui dataset di R

#df
df <-iris
dfc<-mtcars
df3<-state.x77 #matrix
#perbedaan matrix dan data frame
  #matrix = isinya harus sama semua, masing" kolom menunjukan ringkasan statistik
            #untuk setiap negara bagian (tiap barisnya)
  #df = datanya campuran

#mendapatkan ringkasan dari dataset df
str(df)
str(dfc)
str(df3)
summary(df3)
summary(df)
summary(dfc)

#membuat data frame
cowok<- c('bambang', 'joko','anton','kokoh','pras')
berat <-c(100,50,60,30,90)
golongan <-factor(c('gemuk','sedang','sedang','kurus','berat'))
kelompok <-data.frame(cowok,berat,golongan)
str(kelompok)
summary(kelompok)

#slicing
kelompok[ 1:4,2:3 ] #baris, kolom
kelompok[c(1,3,3),c(1,3)] #memilih kelompok 1 dan 3 untuk semua kolom
kelompok['berat']

#kalau [] jadi df
#kalau $ jadi vector


#memilih berdasarkan keterangan saja
subset(kelompok, golongan=='sedang')
subset(kelompok,berat<80)
subset(kelompok,berat>=80)

#tibble
library(tidyverse)

as_tibble(iris)


#membuat tibble
tibble(
  x = 1:5, 
  y = 1, 
  z = x ^ 2 + y
)

stocks <- tibble(
  year   = c(2015, 2015, 2015, 2015, 2016, 2016, 2016),
  qtr    = c(   1,    2,    3,    4,    2,    3,    4),
  return = c(1.88, 0.59, 0.35,   NA, 0.92, 0.17, 2.66)
)
stocks

