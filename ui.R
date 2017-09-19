#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)


shinyUI(fluidPage(
        titlePanel("PM10 values in Hamburg"),
        sidebarLayout(
                sidebarPanel(
                        checkboxInput("showLimit", "Show/Hide Limit", value=TRUE)
                ),
                mainPanel(
        plotlyOutput("plot"),
        h3("Has the limit of 50 been exceeded?"),
        textOutput("Limit"),
        verbatimTextOutput("event")
       
))
))
