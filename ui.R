# This app was developed to help people retrieve information about tooth growth [R]

library(shiny)
library(ggplot2)

ui <- fluidPage(
  fluidRow(
    plotOutput("Tplot", height = 400, width = 400,
               click = "Tplot_click"
    )
  ),
  verbatimTextOutput("x_value"),
  verbatimTextOutput("selected_rows")
)


