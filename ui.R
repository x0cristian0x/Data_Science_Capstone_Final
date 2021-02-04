dashboardPage(
  dashboardHeader(title = "Final Project Submission",
                  dropdownMenu( type = "messages", 
                                messageItem("my github","github", 
                                            href = "http://github.com/x0cristian0x" ),
                                messageItem("my", "my_mardown", 
                                            href = "https://rpubs.com/x0cristian0x/Milestone_Report", 
                                            icon = icon("life-ring")))),
  dashboardSidebar(
    sidebarMenu(
      menuItem(text = "Enter Text",
               startExpanded = TRUE,
               menuSubItem( icon = NULL,
                 textInput("inputString", label = "Here Enter Text", value = "")  ) ,
               tabName = "Enter text", icon = icon("keyboard")),
      
      menuItem(text = "Logo", tabName = "Logo", icon = icon("r-project")
            ),
      
      menuItem(text = "info", tabName = "info", icon = icon("info-circle")),
      submitButton("Click To Predict Text", icon = icon("refresh"))
      
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "Logo", 
              h2("Next word is:"), verbatimTextOutput("prediction"),
              plotlyOutput("plot")), 
        
      tabItem(tabName = "info", h2("info"), includeMarkdown("about.md"))
      
      
      
    ))
)



