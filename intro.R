install.packages('googleVis')
library(googleVis)

# line charts
df <- data.frame(country=c("US", "GB", "BR"), 
                val1=c(10,13,14), 
                val2=c(23,12,32))

line <- gvisLineChart(df)
plot(line)

# two line charts
line2 <- gvisLineChart(data = df, xvar = "country",
                       yvar = c("val1", "val2"),
                       options = list(
                         series = "[{targetAxisIndex: 0},
                                   {targetAxisIndex: 1}]",
                         vAxes = "[{title:'val1'}, {title:'val2'}]"
                       ))

plot(line2)

# bar chart
bar <- gvisBarChart(df)
plot(bar)

# column chart
colu <- gvisColumnChart(df)
plot(colu)

# scatter chart
scat <- gvisScatterChart(women, 
                         options = list(
                           legend = 'none',
                           pointSize = 10,
                           title = 'Women',
                           vAxis = "{title: 'weight (lbs)'}",
                           hAxis = "{title: 'height (in)'}",
                           width = 500, 
                           height = 500
                           
                        )
      )
plot(scat)

# histogram
set.seed(123)
datHist=data.frame(A=rpois(100, 20))

Hist <- gvisHistogram(datHist, options=list(
  legend="{ position: 'top', maxLines: 2 }",
  colors="['#5C3292', '#1A8763', '#871B47']",
  width=400, height=360))
plot(Hist)

# pie chart
pie <- gvisPieChart(CityPopularity)
plot(pie)

# gauge chart
gauge <- gvisGauge(CityPopularity)
plot(donut)
