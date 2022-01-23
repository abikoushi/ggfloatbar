####utilities
"%||%" <- ggplot2:::"%||%"
stack_var <- ggplot2:::stack_var
collide <- ggplot2:::collide
####

StatDiff <- ggplot2::ggproto("StatDiff", ggplot2::Stat,

                   required_aes = c("x", "y"),

                   compute_panel = function(data, scales) {
                     d2 <- split(data,data$x)
                     dmax <- do.call("rbind",lapply(d2, function(d)d[order(d$y),][-1,]) )
                     dmin <- do.call("rbind",lapply(d2, function(d)d[order(d$y),][-nrow(d),]) )
                     dmax$ymin <- dmin$y
                     dmax$ymax <- dmax$y
                     dmax
                   }
)

stat_diff <- function(mapping = NULL, data = NULL,
                       geom = "floatbar", position = "identity",
                       ...,
                       width = NULL,
                       na.rm = FALSE,
                       orientation = NA,
                       show.legend = NA,
                       inherit.aes = TRUE) {

  params <- list(
    na.rm = na.rm,
    orientation = orientation,
    width = width,
    ...
  )

  ggplot2::layer(
    data = data,
    mapping = mapping,
    stat = StatDiff,
    geom = geom,
    position = position,
    show.legend = show.legend,
    inherit.aes = inherit.aes,
    params = params
  )
}


geom_floatbar <- function(mapping = NULL, data = NULL,
                          stat="diff",
                          position = "identity",
                          ...,
                          na.rm = FALSE,
                          show.legend = NA,
                          inherit.aes = TRUE) {

  ggplot2::layer(
    data = data,
    mapping = mapping,
    stat = stat,
    geom = GeomFloatbar,
    position = position,
    show.legend = show.legend,
    inherit.aes = inherit.aes,
    params = list(
      na.rm = na.rm,
      ...
    )
  )
}

GeomFloatbar <- ggplot2::ggproto("GeomFloatbar", ggplot2::GeomRect,
                   required_aes = c("x", "y"),

                   non_missing_aes = c("xmin", "xmax", "ymin", "ymax"),

                   setup_params = function(data, params) {
                     params$flipped_aes <- ggplot2::has_flipped_aes(data, params)
                     params
                   },

                   extra_params = c("na.rm", "orientation"),

                   setup_data = function(data, params) {
                     data$flipped_aes <- params$flipped_aes
                     data <- ggplot2::flip_data(data, params$flipped_aes)
                     data$width <- data$width %||%
                       params$width %||% (ggplot2::resolution(data$x, FALSE) * 0.9)
                     data <- transform(data,
                                       xmin = x - width / 2, xmax = x + width / 2, width = NULL)
                     flip_data(data, params$flipped_aes)
                   },

                   draw_panel = function(self, data, panel_params, coord, width = NULL, flipped_aes = FALSE) {
                     # Hack to ensure that width is detected as a parameter
                     ggplot2::ggproto_parent(ggplot2::GeomRect, self)$draw_panel(data, panel_params, coord)
                   }
)



geom_float <- function(mapping = NULL, data = NULL,
                          stat = "identity", position = "identity",
                          ...,
                          na.rm = FALSE,
                          show.legend = NA,
                          inherit.aes = TRUE) {
  ggplot2::layer(
    data = data,
    mapping = mapping,
    stat = stat,
    geom = GeomFloat,
    position = position,
    show.legend = show.legend,
    inherit.aes = inherit.aes,
    params = list(
      na.rm = na.rm,
      ...
    )
  )
}


GeomFloat <- ggplot2::ggproto("GeomFloat", ggplot2::Geom,
                        setup_params = function(data, params) {
                          ggplot2::GeomPoint$setup_params(data, params)
                        },

                        extra_params = c("na.rm", "orientation"),

                        setup_data = function(data, params) {
                          ggplot2::GeomErrorbar$setup_data(data, params)
                        },

                        default_aes = ggplot2::aes(colour = "black", fill = NA, size = 1, linetype = 1,
                                          alpha = NA),

                        required_aes = c("x", "y"),

                        draw_key = ggplot2::draw_key_path,

                        draw_panel = function(data, panel_params, coord, width = NULL, flipped_aes = FALSE) {
                          data <- ggplot2::flip_data(data, flipped_aes)

                          middle <- transform(data, x = xmin, xend = xmax, yend = y, size = size , alpha = alpha)

                          middle <- ggplot2::flip_data(middle, flipped_aes)

                          ggplot2:::ggname("geom_floatbar", grid::gTree(children = grid::gList(
                            ggplot2::GeomSegment$draw_panel(middle, panel_params, coord)
                          )))
                        }
)
