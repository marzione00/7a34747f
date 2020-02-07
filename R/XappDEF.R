#' Generate GUI interface
#' @name GUI
#' @description GUI function
#'
#' This app allows to generate a GUI that plots the data of the Temperature, CO2 and Milankovich cyles
#' as taken from EPICA DOME C
#'
#' @examples
#' \dontrun{
#' GUI()
#' }
#' @return shiny app
#' @export GUI





GUI <- function(){


  matrix  <- read.csv(system.file("data", "Epica-tpt-co2x.csv", package="TempClim"),header=TRUE,skip=4)
  colnames(matrix) <- c("BP","Temperature","CO2","MIL")
  dir <- system.file("shinyApp", package = "TempClim")
  shiny::runApp(dir)
}












