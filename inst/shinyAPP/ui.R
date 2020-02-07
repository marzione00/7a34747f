ui<-fluidPage(titlePanel("Climate Data"),#preparation of the panels for shiny app

                sidebarLayout(
                  sidebarPanel(selectInput("Plot_input", "Data Plotted",choices = c("Temperature", "CO2", "MIL")),
                               selectInput("Color_input", "Color",choices = c("Red", "Blue", "Green")),
                               radioButtons("Size_input","Select Option",choices = c("1.5","2","2.5","3"),selected = "2"),
                               sliderInput("lag1", "Number of lag:",min = 40, max = 1000, value = 40),
                               sliderInput("lag2", "Number of lag:",min = 0, max = 10000, value = 1000),
                               selectInput("Fit_data", "Fit ARIMA",choices = c("Temperature_FIT", "CO2_FIT", "MIL_FIT")),
                               sliderInput("ARp", "Autoregressive p",min = 0, max = 100, value = 0),
                               sliderInput("MAq", "Moving Average q",min = 0, max = 100, value = 0),
                               sliderInput("I", "Integration order",min = 0, max = 5, value = 0),
                               selectInput("GR1", "Engle-Granger Cointegration Test X",choices = c("Temperature", "CO2", "MIL")),
                               selectInput("GR2", "Engle-Granger Cointegration Test Y",choices = c("Temperature", "CO2", "MIL")),
                               uiOutput("filter_degree")

                               ),



                  mainPanel(plotOutput("coolplot"), #plots that has to be loaded on the app
                            plotOutput("coolplot2"),
                            plotOutput("coolplot3"),
                            plotOutput("coolplot4"),
                            ))

                )
