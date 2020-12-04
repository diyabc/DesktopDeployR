library(shiny)
server <- function(input, output, session) {
    require(diyabcGUI)
    diyabcGUI::redirect_output()
    diyabcGUI::diyabc_server(input, output, session)
}
