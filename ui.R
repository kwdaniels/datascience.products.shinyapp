library(markdown)
library(shiny)

shinyUI(navbarPage("",
                   tabPanel("Plot",
                            headerPanel("Pariveda Solutions Employee Growth Scenario"),
                            sidebarLayout(
                                  sidebarPanel(
                                        numericInput('p0', 'Enter initial employee count:', 450, min=1, max=10000, step=5),
                                        sliderInput('r', 'Select annual growth rate percentage:',value = 15, min = -30, max = 30, step = 1,)
                                  ),
                                  mainPanel(
                                        plotOutput('myPlot')
                                  )
                                  )
                            )
                   ,
                   tabPanel("Help",
                            mainPanel(
                                  includeMarkdown("help.md")
                            )
                  )
             )
)

