## logo design

library(tidyverse)
library(ggpubr)
library(jpeg)
library(png)
set.seed(33)

ball <- readPNG("imgs/bball.png")
img <- readPNG("imgs/floor.png") 
img2 <- readPNG("imgs/duke_logo.png")
img3 <- readPNG("imgs/nc_state_logo.png")
img4 <- readPNG("imgs/unc_logo.png")

duke <- tibble( x = rnorm(30, 0 , 5),
                z = rep("duke", 30))

unc <- tibble(x = rnorm(30,5,8),
              z = rep("unc", 30))

unc <- unc |>
  mutate(x = x + 4)

state <- tibble( x = rnorm(30, 15 , 5),
               z = rep("state", 30))

data <- rbind(duke, unc, state)

unis <- c("duke" =  "#003087", 
          "state" =  "#CC0000", 
          "unc" = "#7BAFD4")


p <- data |>
  ggplot(
    aes(x = x, fill = z)
  ) + 
  background_image(img) +
  geom_density(alpha = .6) + 
  theme_bw() + 
  theme(legend.position = "none",
        panel.grid = element_blank(),
        axis.title = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks.x=element_blank(), 
        axis.ticks.y=element_blank()) 

p +   
  scale_colour_manual(
  values = unis,
  aesthetics = c("fill")
) + 
  labs(title = "Triangle Sp<img src = 'imgs/bball.png' height = 22><span style='font-size: 24pt'></span>rts",
       subtitle = "Analytics Challenge 2025") + 
  annotation_raster(img2, xmin = -0.8, xmax = 2.9, ymin = 0.09, ymax = 0.104) + 
  annotation_raster(img3, xmin = 12.5, xmax = 18.5, ymin = 0.037, ymax = 0.062) + 
  annotation_raster(img4, xmin = 4.5, xmax = 8.2, ymin = 0.040, ymax = 0.057) + 
  theme(plot.title = element_text(hjust = 0.5, colour = "black", size = 40),
        plot.subtitle = element_text(hjust = 0.5, colour = "black", size = 22)) + 
  theme(
    plot.title = ggtext::element_markdown()) #+
  
  #annotate(geom="text", x=13, y=0.08, label= "Triangle Challenge\n Prediction/Statistics Competition for the ACC",
           #color="black", size = 12, fontface =2)




