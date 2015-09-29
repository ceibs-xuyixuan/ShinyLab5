library("shiny")
library("loadAPI")
library("RCurl")
library("jsonlite")

shinyServer(function(input, output) {
#   data1 <-geocode_GET("sweden")
#   data2 <-geocode_GET("usa")
#   data3 <-geocode_GET("spain")
  # Return the requested loadAPI
  loadAPIInput <- reactive({
    switch(input$geocode_GET,
           "sweden" = geocode_GET("sweden"),
           "usa" = geocode_GET("usa"),
           "spain" = geocode_GET("spain"))
  })
  

  output$view <- renderTable({
    loadAPIInput()
  })
})