library("shiny")
library("loadAPI")
library("RCurl")
library("jsonlite")

shinyServer(function(input, output) {
  data1 <-geocode_GET("sweden")
  data2 <-geocode_GET("usa")
  data3 <-geocode_GET("spain")
  # Return the requested loadAPI
  loadAPIInput <- reactive({
    switch(input$geocode_GET,
           "sweden" = data1,
           "usa" = data2,
           "spain" = data3)
  })
  

  output$view <- renderPrint({
    loadAPIInput()
  })
})