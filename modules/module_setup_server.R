table_render <- function(input, curr_target) {
    
    renderTable({
        req(input[[curr_target]])
        
        tryCatch({
            df <- read_tsv(input[[curr_target]]$datapath)
            head(df)
        },
        error = function(e) {
            stop(safeError(e))
        })
    })
}

colnames_render <- function(input, curr_target="data_file1") {
    renderText({
        req(input[[curr_target]])
        
        tryCatch({
            df <- read_tsv(input[[curr_target]]$datapath)
            colnames(df)
        }, error = function(e) {
            stop(safeError(e))
        })
    })
}

module_setup_server <- function(input, output, session) {
    
    output$distPlot <- renderPlot({
        
        x <- faithful[, 2] 
        bins <- seq(min(x), max(x), length.out = input$bins + 1)
        hist(x, breaks = bins, col = 'darkgray', border = 'white')
    })
    
    output$colnames <- colnames_render(input)
    output$contents1 <- table_render(input, "data_file1")
}
