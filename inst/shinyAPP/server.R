library(forecast) #I am aware that this package should be fully loaded in the description file, and in effect I wrote it in the list of packages that has to be loaded. However it seems that the package forecast (and in particular the checkresidual function) is not fully loaded if this line is not included. I suspect that this issue is due to the fact that there is some overlap in the fucntion between the libraries that I used: this is because when I check the package the output report: Registered S3 methods overwritten by 'forecast': method             from    fitted.fracdiff    fracdiff residuals.fracdiff fracdiff.
server <- function(input, output, session) {


  colour <-"red" #set of reactive variables that allows the user to choose what he would analyse

  cor<-reactive({input$"Color_input"


  })

  size<-reactive({input$"Size_input"


  })

  lag_1<-reactive({input$"lag1"


  })

  lag_2<-reactive({input$"lag2"

  })

  AR_p<-reactive({input$"ARp"

  })

  MA_q<-reactive({input$"MAq"

  })

  I_O<-reactive({input$"I"

  })



  Fit_set<-reactive({input$"Fit_data"

    if (input$"Fit_data"=="CO2_FIT"){
      CO2_FIT<-arima(matrix[,"CO2"],order=c(AR_p(),I_O(),MA_q()))}

    else if (input$"Fit_data"=="Temperature_FIT"){
      Temperature_FIT <- arima(matrix[,"Temperature"],order=c(AR_p(),I_O(),MA_q()))}



  })

  G_1<-reactive({input$"GR1"

  })

  G_2<-reactive({input$"GR2"

    granger<-coint.test(matrix[,G_1()], matrix[,G_2()], d = 0, nlag = NULL, output = TRUE) #granger causality test, to be done

  })


  output$coolplot <- renderPlot( #plot of the data choosen by the user on the panels

    plot(matrix[,"BP"],matrix[,input$"Plot_input"],col = cor(),type = "l",xlab="Years BP",ylab=input$"Plot_input",cex.lab=1.3,lwd=size()),


  )

  output$coolplot2 <- renderPlot(


    pacf(matrix[,input$"Plot_input"],lag.max = lag_1(),na.action = na.pass,main="partial Autocorrelation"),

  )

  output$coolplot3 <- renderPlot(


    acf(matrix[,input$"Plot_input"],lag.max = lag_2(),na.action = na.pass,main="Autocorrelation"),

  )

  output$coolplot4<- renderPlot(


    checkresiduals(Fit_set()),

  )
}
