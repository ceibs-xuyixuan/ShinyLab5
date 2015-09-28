library(shiny)


shinyUI(fluidPage(
  
  titlePanel("Widgets"),

  sidebarLayout(
    sidebarPanel(
      selectInput("geocode_GET", "Choose a place:", 
                  choices = c("sweden", "usa", "spain")),
      
      submitButton("Search")
    ),
    
    mainPanel(
      
      h4("Observations"),
      tableOutput("view")
    )
  )
))