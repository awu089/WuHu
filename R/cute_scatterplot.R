

#' Title
#' Super dooper cute scaddater plot
#'
#' @param data Input data
#' @param var1 Numeric var 1
#' @param var2 Numeric var 2
#' @param lmline TRUE if you want a fitted line; default is FALSE
#'
#' @return scatterplot
#' @export
#'
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 geom_point
#' @importFrom ggplot2 theme_bw
#' @importFrom ggplot2 labs
#' @importFrom ggplot2 geom_smooth
#' @importFrom ggplot2 aes
#' @importFrom ggpubr stat_cor
#'
#' @export
#'
#' @examples No example 4 u
#'
cute_scatterplot = function(data, var1, var2, lmline = FALSE)
{
 out = ggplot(data = data, aes(x = get(var1), y = get(var2))) + geom_point() +
   theme_bw() + labs(x = var1, y = var2)
 if (lmline) {our = out + geom_smooth(method = 'lm', formula = y ~ x, se = FALSE) +
   stat_cor(method = "perason", size = 6)}
 return(out)
}
