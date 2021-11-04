cchsplot_style <- function(){
  font <- "Georgia"   #assign font family up front

  theme_minimal() %+replace%    #replace elements we want to change

    theme(

      #grid elements
      panel.grid = element_blank(),
      axis.ticks = element_blank(),          #strip axis ticks

      panel.grid.major.y = element_line(
        size = 0.25,
        color = '#262626'
      ),

      #text elements
      plot.title = element_text(             #title
        family = font,            #set font family
        size = 20,                #set font size
        face = 'bold',            #bold typeface
        hjust = 0,                #left align
        vjust = 1),               #raise slightly

      plot.subtitle = element_text(          #subtitle
        family = font,            #font family
        size = 16,
        hjust = 0,
        vjust = 0),               #font size

      plot.caption = element_text(           #caption
        family = font,            #font family
        size = 11,                 #font size
        hjust = 1),               #right align

      axis.title = element_text(             #axis titles
        family = font,            #font family
        size = 11),               #font size

      axis.text = element_text(              #axis text
        family = font,            #axis famuly
        size = 10),                #font size

      axis.text.x = element_text(            #margin for axis text
        margin=margin(-15, b = 7.5))

      #since the legend often requires manual tweaking
      #based on plot content, don't define it here
    )
}
