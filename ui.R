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
