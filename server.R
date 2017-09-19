

library(shiny)
library(plotly)



shinyServer(function(input, output) {
        
        # include plotly
        options(warn = -1)
        output$plot <- renderPlotly({
                pm10_melt<-read.csv("pm10_melt.csv")
                plot_ly(pm10_melt,x=~pm10_melt$Date,y=~pm10_melt$value,color=~pm10_melt$variable,type = "scatter", mode="lines")
                #plot_ly(mtcars, x = ~mpg, y = ~wt)
                })
        
        output$event <- renderPrint({
                d <- event_data("plotly_hover")
                
                if (input$showLimit){
                        if (is.null(d)) "Hover on a point"
                        else if(d$y>49) d
                        
                                else "No"
                }
               
        })
}


)

