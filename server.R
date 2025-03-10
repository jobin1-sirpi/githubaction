server <- function(input, output) {
    output$distPlot <- renderPlot({
        x <- faithful$waiting
        bins <- seq(min(x), max(x), length.out = input$bins + 1)
        hist(x, breaks = bins, col = 'skyblue', border = 'white', main = "Histogram of Waiting Times")
    })
}
