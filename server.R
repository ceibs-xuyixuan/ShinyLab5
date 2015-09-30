library("shiny")
library("bitops")
library("RCurl", lib.loc="~/R/win-library/3.2")
library("jsonlite", lib.loc="~/R/win-library/3.2")
library("devtools", lib.loc="~/R/win-library/3.2")
devtools::install_github("xuyixuan/lab5/loadAPI")
library("loadAPI")


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