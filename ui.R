# This app was developed to help people retrieve information about midwest population from [R]

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


