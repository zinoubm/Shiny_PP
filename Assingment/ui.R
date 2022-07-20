#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinythemes)

# Define UI for application that draws a histogram
shinyUI(fluidPage(theme = shinytheme("cyborg"),

    # Application title
    titlePanel("Mpg prediction app."),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("wt",
                        "Car Weight",
                        min = 2,
                        max = 6,
                        value = 2.5,
                        step = 0.1),
            sliderInput("disp",
                        "Engine Displacement",
                        min = 100,
                        max = 500,
                        value = 200)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("mpg"),
            h3("Documentation"),
            p("This app predicts the mpg of a car based on it's weight and displacement,
              Using the app is straitforward, just move the two sliders to get the values that you want to predict for, then the app will
              output a plot with the prediction.")
        )
    )
))