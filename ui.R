library(shiny)

shinyUI(fluidPage(
  titlePanel("🧬 Mammal Body Mass Predictor"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Predict a mammal's body weight (kg) from brain weight and sleep duration."),
      
      sliderInput("brain", "Brain Weight (grams):", 
                  min = 0.1, max = 7000, value = 500, step = 10),
      sliderInput("sleep", "Sleep Duration (hours per day):", 
                  min = 1, max = 20, value = 10, step = 0.5),
      checkboxInput("log", "Use log-transformed model", TRUE),
      
      br(),
      helpText("Adjust the sliders and model option; results update automatically.")
    ),
    
    mainPanel(
      h3("Predicted Body Weight (kg)"),
      textOutput("prediction"),
      br(),
      plotOutput("massPlot"),
      br(),
      h4("About This App"),
      helpText("This interactive tool models mammalian body mass using real biological data. 
                It draws from the 'msleep' dataset in ggplot2, originally compiled by 
                Dr. V. M. Savage and colleagues for research on mammalian sleep patterns 
                (Nature, 2008). Each point in the plot represents one mammal species, 
                color-coded by feeding type (vore)."),
      
      h4("Scientific Background"),
      helpText("Biologically, brain size, body size, and sleep duration are correlated 
                across mammals. Smaller species with high metabolic rates often sleep longer, 
                while larger mammals tend to have shorter total sleep. 
                This app uses those relationships to estimate body mass from brain weight 
                and total daily sleep duration.")
    )
  )
))
