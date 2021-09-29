#' Mapa de límites provinciales de Perú
#'
#'A simple features dataset containing the limits of the 196 peruvian provinces. The data set is based on mapa_distrital.
#'
#' @format A data frame with 196 rows and 4 variables:
#' \describe{
#' \item{departamento}{Department name. First-level administrative division}
#' \item{provincia}{Province name. Second-level administrative division}
#' \item{cod_prov}{Province code. Extracted from INEI's geographic location code}
#' \item{geometry}{Column containing simple features data}
#' }
#' @source \url{https://www.geogpsperu.com/2019/05/limite-distrital-actualizado-inei.html}
"mapa_provincial"
