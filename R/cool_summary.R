cool_summary = function(data, categorical, numeric)
{
  ddply(data, .(get(categorical)), summarize,
        mean = round(mean(get(numeric)), 2),
        sd = round(sd(get(numeric)), 2))
}
