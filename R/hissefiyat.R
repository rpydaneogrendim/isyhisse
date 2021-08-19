#' @export
#' @title Hisse Fiyatlari
#' @description Tarihsel olarak hisse fiyatlarinin cekilmesini saglayan fonksiyondur.
#' @param hisseKod Hissenin borsadaki kodudur
#' @param baslaTarih Baslangic Tarihi yyyy-mm-dd formatinda yazilmalidir
#' @param bitisTarih Bitis Tarihi yyyy-mm-dd formatinda yazilmalidir
#' @importFrom rjson fromJSON
#' @importFrom purrr invoke
#' @examples
#' \dontrun{hissefiyat(hisseKod = 'THYAO', baslaTarih = '2021-08-16', bitisTarih = '2021-08-19')}
hissefiyat <- function(hisseKod = NULL, baslaTarih = NULL, bitisTarih = NULL){

  if(is.null(hisseKod) | is.null(baslaTarih) | is.null(bitisTarih)){
    message("Bilgiler bos birakilamaz!")
  } else {
    url <- paste0("https://www.isyatirim.com.tr/_layouts/15/Isyatirim.WebSite/Common/Data.aspx/HisseTekil?hisse=",
                  hisseKod,
                  "&startdate=",
                  format(as.Date(baslaTarih),"%d-%m-%Y"),
                  "&enddate=",
                  format(as.Date(bitisTarih),"%d-%m-%Y"),
                  ".json")
  }

  result <- rjson::fromJSON(file = url)
  df <- purrr::invoke(rbind, result$value)
  df_hist <- as.data.frame(df)
  assign(hisseKod, df_hist, envir=.GlobalEnv)

}
