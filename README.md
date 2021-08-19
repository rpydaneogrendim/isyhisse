isyhisse
====

isyhisse paketi, Is Yatirim'in web sitesinden hisse fiyatlarini cekmenizi saglar.

Paket Yukleme
-------------

Paketi asagidaki kod ile yukleyebilirsiniz.

``` r
devtools::install_github("rpydaneogrendim/isyhisse")
library(isyhisse)
```

Fonksiyon ve Ornek
---------------------

```{r function, eval=F}

#Tarihsel hisse fiyatlari
hissefiyat(hisseKod = "THYAO",
           baslaTarih = "2021-08-16",
           bitisTarih = "2021-08-19")

```

```{r function, eval=F}

#Toplu cekmek icin ornek bir kod
library(dplyr)
ornek <- c("THYAO","GARAN","KCHOL")
df <- data.frame()
for(i in 1:length(ornek)){
  
  tbl <- hissefiyat(hisseKod = ornek[i],
                    baslaTarih = "2021-08-16",
                    bitisTarih = "2021-08-19")
  
  df <- df %>% bind_rows(tbl)
  
  Sys.sleep(time = 1)
  
}

```
