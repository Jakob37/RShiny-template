setup_visual_ui <- function(id) {
    
    ns <- NS(id)
    tabPanel(
        id,
        fluidPage(
            div(
                wellPanel(
                    style = "float:left;",
                    checkboxInput(ns("show_settings"), "Show settings", value=TRUE)                )
            ),
            fluidPage(
                style = "flex-grow:1; resize:horizontal; overflow-x: scroll; overflow-y: hidden;",
                fluidRow(
                    textOutput(ns("placeholder"))
                )
            )
        )
    )
}


