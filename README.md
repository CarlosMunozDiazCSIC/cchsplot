Usar de ejemplo:

#install.packages('tidyverse')

#install.packages('devtools')

library(tidyverse)

devtools::install_github('carlosmunozdiazcsic/cchsplot')


plot <- ggplot(mpg) +
  geom_bar(aes(x = manufacturer)) + 
  labs(x = "Texto Eje X", 
       y = "Texto Eje Y", 
       title = "Probando un título a\ndos líneas",
       subtitle = 'Subtítulo a una línea') +
  cchsplot::cchsplot_style()

##Con logo
cchsplot::finalise_plot(plot_name = plot,
              source = "Fuente: Envejecimiento en Red",
              save_filepath = "test_1.png",
              logo_image_path = "./img/cchs.png",
              width_pixels = 640,
              height_pixels = 450)

##Sin logo
cchsplot::finalise_plot(plot_name = plot,
              source = "Fuente: Envejecimiento en Red",
              save_filepath = "test_2.png",
              width_pixels = 640,
              height_pixels = 450)

