cchsplot_style <- function(){
  ggplot2::theme(
      #Elementos genéricos
      panel.grid = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_blank(),
      panel.background = ggplot2::element_rect(fill = NA),
      plot.background = ggplot2::element_blank(),

      ##Leyenda
      legend.position = "top",
      legend.text.align = 0,
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      legend.text = ggplot2::element_text(size=13, color="#222222"),

      ##Líneas ejes
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_line(size=0.15,color="grey96"),
      panel.grid.major.x = ggplot2::element_blank(),

      ##Elementos propios de la visualización
      plot.title = ggplot2::element_blank(),
      plot.subtitle = ggplot2::element_blank(),
      plot.caption = ggplot2::element_blank(),

      axis.title = ggplot2::element_text(
        size = 13),               #font size

      axis.text = ggplot2::element_text(
        size = 11),                #font size

      axis.text.y = ggplot2::element_text(
        margin=ggplot2::margin(3.5, l = 7)
      ),

      axis.text.x = ggplot2::element_text(
        margin=ggplot2::margin(3.5, b = 7)),

      ##Strip elements
      strip.background = ggplot2::element_rect(fill="white"),
      strip.text = ggplot2::element_text(size  = 16,  hjust = 0)
    )
}
