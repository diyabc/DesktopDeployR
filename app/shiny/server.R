library(shiny)
server <- function(input, output, session) {
    require(diyabcGUI)
    diyabcGUI::enable_logging()
    diyabcGUI::diyabc_server(input, output, session)
}
