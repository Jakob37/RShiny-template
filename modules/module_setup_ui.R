setup_panel_ui <- function(id) {
    
    ns <- NS(id)
    tabPanel(
        id,
        fluidPage(
            div(
                wellPanel(
                    style = "float:left;",
                    checkboxInput(ns("show_settings"), "Show settings", value=TRUE),
                    fileInput(
                        ns("data_file1"), 
                        "Choose TSV File 1",
                        multiple = FALSE,
                        accept = c("test/tsv", ".tsv")
                    ),
                    sliderInput(
                        ns("bins"), 
                        "Number of bins:", 
                        min=1, 
                        max=200, 
                        value=30
                    )
                )
            ),
            fluidPage(
                style = "flex-grow:1; resize:horizontal; overflow-x: scroll; overflow-y: hidden;",
                fluidRow(
                    fluidPage(
                        h4("About"),
                        div("Filtering can be performed on FDR (infected-control), presence in transcriptome assemblies for peptides and protein expression"),
                        div("Do alignment by clicking row and press 'Do align'"),
                        div("Enrichment is performed for current filtering selection, with all (non-filtered) IDs as the universe")
                    ),
                    textOutput(ns("test_output")),
                    plotOutput(ns("distPlot"))
                )
            )
        )
    )
}


