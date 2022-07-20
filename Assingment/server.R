#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$mpg <- renderPlot({

        df <- mtcars
        model <- lm(mpg ~ disp + wt, data = df)
        new <- data.frame(wt = input$wt, disp = input$disp)

        res <- predict(model, newdata = new)
        plot( res, ylab = "mpg", xlab = "", main = paste("Mpg prediction for weight ", input$wt, " and displacement ", input$disp))
        abline(h = res)
    })

})
