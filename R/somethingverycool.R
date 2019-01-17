cute_scatterplot = function(data, var1, var2, lmline = FALSE)
{
 out = ggplot(data = data, aes(x = get(var1), y = get(var2))) + geom_point() +
   theme_bw() + labs(x = var1, y = var2)
 if (lmline) {our = out + geom_smooth(method = 'lm', formula = y ~ x, se = FALSE) +
   stat_cor(method = "perason", size = 6)}
 return(out)
}
