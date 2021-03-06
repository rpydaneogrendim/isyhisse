% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hissefiyat.R
\name{hissefiyat}
\alias{hissefiyat}
\title{Hisse Fiyatlari}
\usage{
hissefiyat(hisseKod = NULL, baslaTarih = NULL, bitisTarih = NULL)
}
\arguments{
\item{hisseKod}{Hissenin borsadaki kodudur}

\item{baslaTarih}{Baslangic Tarihi yyyy-mm-dd formatinda yazilmalidir}

\item{bitisTarih}{Bitis Tarihi yyyy-mm-dd formatinda yazilmalidir}
}
\description{
Tarihsel olarak hisse fiyatlarinin cekilmesini saglayan fonksiyondur.
}
\examples{
\dontrun{hissefiyat(hisseKod = 'THYAO', baslaTarih = '2021-08-16', bitisTarih = '2021-08-19')}
}
