library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Pariveda Solutions Employee Growth Scenario"),
  sidebarPanel(
    numericInput('p0', 'Enter initial employee count:', 450, min=1, max=1000, step=5),
    sliderInput('r', 'Select annual growth rate percentage:',value = 15, min = 5, max = 30, step = 1,)
  ),
  mainPanel(
    plotOutput('myPlot')
  )
))