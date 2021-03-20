# library(remotes)
# remotes::install_github("GuangchuangYu/hexSticker")

library(hexSticker)
library(showtext)
library(ggplot2)
library(ggExtra)
library(gridExtra)

## Loading Google fonts (http://www.google.com/fonts)
font_add_google("Gochi Hand", "gochi")
# font_add_google("Shadows Into Light", "shadows")
# font_add_google("Special Elite", "speciale")
## Automatically use showtext to render text for future devices
showtext_auto()


p1 <- ggplot(aes(x = Petal.Length, y = Petal.Width, color = Species), data = iris) + geom_point()
p1 <- p1 + theme_void() + theme_light() + theme(legend.position="none")
p2 <- ggMarginal(p1, type="density")
p2

s <- sticker(p2, package="DataLab",
             s_x=1, s_y=1.6, s_width=.25,
             p_size=60, p_y = 1, p_family = "gochi", p_color = "black",
             h_color = "black", h_fill = "skyblue3", h_size = 1.2,
             spotlight = TRUE, l_alpha = .5,
             url = "http://de.ufpb.br/datalab", u_y = 0.05, u_size = 12, u_family = "gochi",
             filename="/home/marcelo/Dropbox/DE-UFPB/DataLab/DataLab_hexsticker/logo.png")
s
ggsave("/home/marcelo/Dropbox/DE-UFPB/DataLab/DataLab_hexsticker/logo.png",
       plot = s, bg = "transparent", width = 858*0.01042, height = 551*0.01042,
       device = "png")
