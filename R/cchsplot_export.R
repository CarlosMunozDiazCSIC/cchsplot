save_plot <- function (plot_grid, width, height, save_filepath) {
  grid::grid.draw(plot_grid)
  #save it
  ggplot2::ggsave(filename = save_filepath, plot=plot_grid, width=(width/72), height=(height/72), bg="#edf2f2", dpi = 300)
}

left_align <- function(plot_name, pieces){
  grob <- ggplot2::ggplotGrob(plot_name)
  n <- length(pieces)
  grob$layout$l[grob$layout$name %in% pieces] <- 2
  return(grob)
}

create_footer <- function (source_name, logo_image_path) {
  #Make the footer
  if(logo_image_path == 'undefined') {
    footer <- grid::grobTree(grid::linesGrob(x = grid::unit(c(0, 1), "npc"), y = grid::unit(1.125, "npc")),
                             grid::textGrob(source_name, x = 0.005, hjust = 0, gp = grid::gpar(fontsize=11)))
  } else {
    footer <- grid::grobTree(grid::linesGrob(x = grid::unit(c(0, 1), "npc"), y = grid::unit(1.125, "npc")),
                             grid::textGrob(source_name, x = 0.005, hjust = 0, gp = grid::gpar(fontsize=11)),
                             grid::rasterGrob(png::readPNG(logo_image_path), x = 0.97))
  }

  return(footer)
}

##Método a exportar
finalise_plot <- function(plot_name,
                          source_name,
                          save_filepath=file.path(Sys.getenv("TMPDIR"), "tmp-nc.png"),
                          width_pixels=640,
                          height_pixels=450,
                          logo_image_path='undefined') {

  footer <- create_footer(source_name, logo_image_path)

  #Draw your left-aligned grid
  plot_left_aligned <- left_align(plot_name, c("subtitle", "title", "caption"))
  plot_grid <- ggpubr::ggarrange(plot_left_aligned, footer, ncol = 1, nrow = 2, heights = c(1, 0.05/(height_pixels/450)))

  ## print(paste("Saving to", save_filepath))
  save_plot(plot_grid, width_pixels, height_pixels, save_filepath)

  ## Return (invisibly) a copy of the graph. Can be assigned to a
  ## variable or silently ignored.

  invisible(plot_grid)
}
