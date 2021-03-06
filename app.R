source("init.R")

tactic <- createDefaultTactic()

ui <- 
  {fluidPage(theme = "bootstrap.css",
    source(file.path("ui", "header.R"),  local = TRUE)$value,
    source(file.path("ui", "panel.R"),  local = TRUE)$value)
}

server <- 
  function(input, output, session) {
    source(file.path("server", "server.R"),  local = TRUE)$value
}

shinyApp(ui, server)