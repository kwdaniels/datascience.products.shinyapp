library(UsingR)
data(galton)

shinyServer(
  function(input, output) {
    output$myPlot <- renderPlot({

          #p0 <- 450
          #r <- 0.15
          if(is.numeric(input$p0)==T) {
            if(input$p0 >= 0) {
                  p0 <- input$p0
            } else {
                  p0 <- 0
            }
          } else {
            p0 <- 0
          }
          r <- (input$r / 100)
          currentYear <- 2016
          endYear <- currentYear + 10
          projectionYears <- currentYear:endYear
          projectionYears - currentYear
          
          projectedSize <- round(p0*(1+r)^(projectionYears - currentYear),digits=0)
          projectedSizeByYear <- as.data.frame(projectionYears)
          projectedSizeByYear.projectedSize <- projectedSize
          projectedSizeByYear <- as.data.frame(cbind(projectionYears,projectedSize))
          names(projectedSizeByYear)[names(projectedSizeByYear)=="projectionYears"] <-"Year"
          plot(projectedSize ~ Year, data = projectedSizeByYear, ylab = "Employees")
          
          
#       hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
#       mu <- input$mu
#       lines(c(mu, mu), c(0, 200),col="red",lwd=5)
#       mse <- mean((galton$child - mu)^2)
#       text(63, 150, paste("mu = ", mu))
#       text(63, 140, paste("MSE = ", round(mse, 2)))
      })
    
  }
)