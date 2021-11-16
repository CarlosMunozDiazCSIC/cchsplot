cchsplot_style <- function(){
  font <- "Helvetica"   #assign font family up front

  ggplot2::theme(
      #Elementos genéricos
      panel.grid = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_blank(),
      panel.background = ggplot2::element_rect(fill = NA),
      plot.background = ggplot2::element_blank(),

      ##Líneas ejes
      panel.grid.major.y = ggplot2::element_line(
        size = 0.15,
        color = '#262626'
      ),

      ##Elementos propios de la visualización > Textos
      plot.title = ggplot2::element_blank(),             #raise slightly
      plot.subtitle = ggplot2::element_blank(),               #font size
      plot.caption = ggplot2::element_blank(),               #right align

      axis.title = ggplot2::element_text(             #axis titles
        family = font,            #font family
        size = 11),               #font size

      axis.text = ggplot2::element_text(              #axis text
        family = font,            #axis famuly
        size = 10),                #font size

      axis.text.y = ggplot2::element_text(
        margin=ggplot2::margin(-10, b = 5)
      ),

      axis.text.x = ggplot2::element_text(            #margin for axis text
        margin=ggplot2::margin(-15, b = 7.5)),

      ##Leyenda
      legend.position = "top"
    )
}
