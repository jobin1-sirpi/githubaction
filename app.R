library(shiny)
library(ggplot2)

# UI Layout
ui <- fluidPage(
    titlePanel("Shiny App Example"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins", "Number of Bins:", min = 1, max = 50, value = 30)
        ),
        mainPanel(
            plotOutput("distPlot")
        )
    )
)

# Server Logic
server <- function(input, output) {
    output$distPlot <- renderPlot({
        x <- faithful$waiting
        bins <- seq(min(x), max(x), length.out = input$bins + 1)
        hist(x, breaks = bins, col = 'skyblue', border = 'white', main = "Histogram of Waiting Times")
    })
}

# Run the application
shinyApp(ui = ui, server = server)
