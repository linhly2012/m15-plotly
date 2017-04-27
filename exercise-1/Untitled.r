install.packages("plotly")
library(plotly)

Animals <-c('Potar monkey', 'Gorilla', 'Human', 'Rhesus monkey', 'Chimp')
Bodywt <- c(10.0, 207.0, 62.0, 6.8, 52.2)
Brainwt <- c(115, 406, 1320, 179, 440)
df <- data.frame(Animals, Bodywt, Brainwt)

chart <- plot_ly(df, x = ~Bodywt, y = ~Brainwt, type = 'scatter',
                 mode = 'text', text = ~Animals, textposition = 'middle right',
                 textfont = list(color = '#000000', size = 16)) %>% 
                   layout(title = 'Brain & Body Weight for Animals',
                          xaxis = list(title = 'Body Weight (kg)',
                                       zeroline = TRUE,
                                       range = c(0, 250)),
                          yaxis = list(title = 'Brain Weight (g)',
                                       range = c(0,1400)))