module_visual_server <- function(input, output, session) {
    
    output$placeholder <- renderPlot({
        
        plot_data <- data.frame(
            xpos = rnorm(100),
            ypos = rnorm(100)
        )
        
        ggplot(plot_data, aes(x=xpos, y=ypos)) + 
            ggtitle("Placeholder") + 
            geom_point()
    })
}
