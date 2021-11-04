cchsplot_style <- function(){
  font <- "Georgia"   #assign font family up front

  ggplot2::theme_minimal() +

  ggplot2::theme_update(
      #grid elements
      panel.grid = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_blank(),          #strip axis ticks

      panel.grid.major.y = ggplot2::element_line(
        size = 0.25,
        color = '#262626'
      ),

      #text elements
      plot.title = ggplot2::element_text(             #title
        family = font,            #set font family
        size = 20,                #set font size
        face = 'bold',            #bold typeface
        hjust = 0,                #left align
        vjust = 1),               #raise slightly

      plot.subtitle = ggplot2::element_text(          #subtitle
        family = font,            #font family
        size = 16,
        hjust = 0,
        vjust = 0),               #font size

      plot.caption = ggplot2::element_text(           #caption
        family = font,            #font family
        size = 11,                 #font size
        hjust = 1),               #right align

      axis.title = ggplot2::element_text(             #axis titles
        family = font,            #font family
        size = 11),               #font size

      axis.text = ggplot2::element_text(              #axis text
        family = font,            #axis famuly
        size = 10),                #font size

      axis.text.x = ggplot2::element_text(            #margin for axis text
        margin=ggplot2::margin(-15, b = 7.5))

      #since the legend often requires manual tweaking
      #based on plot content, don't define it here
    )
}
