# Coursera - Developing Data Products- Course Project


library(shiny)
library(ggplot2)
library(plotly)
library(shiny)

server <- function(input, output) {
  output$Tplot <- renderPlot({
    ggplot(ToothGrowth, aes(supp)) + geom_bar(stat = "count",color="red")+ facet_wrap(~dose)
  })
  # Print the name of the x value
  output$x_value <- renderPrint({
    if (is.null(input$Tplot_click$x)) return()

    lvls <- levels(ToothGrowth$supp)
    lvls[round(input$Tplot_click$x)]
  })
  # Print the rows of the data frame which match the x value
  output$selected_rows <- renderPrint({
    if (is.null(input$Tplot_click$x)) return()

    keeprows <- round(input$Tplot_click$x) == as.numeric(ToothGrowth$supp)
    ToothGrowth[keeprows, ]
  })
}
