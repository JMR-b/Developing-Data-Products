
library(shiny)

shinyUI(
    pageWithSidebar(
  
        # Application title
        headerPanel("Developing Data Products Course Project: Shiny Application and Reproducible Pitch"),
        
        # Sidebar with a slider input for number of observations
        sidebarPanel(
            
            selectInput(
                inputId = "rColorSelected",
                label   = "Choose a color name:",
                choices = as.list(colors())
                ),
            
            h2("R Color Explorer"),
            
            h5("The colors listed in the dropdown menu above can be used in the color argument
                of any R function. For example, instead of"),
            
            code("plot(mtcars$wt, mtcars$mpg, col = '#5f9ea0'"),
            
            
            h5("...try this:"),
            
            code("plot(mtcars$wt, mtcars$mpg, col = 'cadetblue'"),
            
            h5("Using color names make it easier to remember your color scheme, instead of 
                always hunting through your code for the right hexadecimal value."),
            
            div(HTML(" <br>Developing Data Products Course Project: Shiny Application and Reproducible Pitch."))
            
        ),
          
        # Show a plot of the generated distribution
        mainPanel(
            tags$head(
                tags$link(
                    rel  = 'stylesheet',
                    type = 'text/css', 
                    href = 'style.css')),
            
            htmlOutput("colorBox")
        )
    )
)
