library(shiny)

source("modules/module_setup_ui.R")
source("modules/module_vis_ui.R")

ui <- function() {
    shinyUI({
        navbarPage(
            theme = shinythemes::shinytheme("flatly"),
            "Title",
            id="navbar",
            setup_panel_ui("Setup"),
            setup_visual_ui("Visual")
        )
    })
}
