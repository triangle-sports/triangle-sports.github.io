## logo design

library(tidyverse)
library(ggpubr)
library(jpeg)
library(png)
set.seed(33)

duke <- tibble( x = rnorm(30, 0 , 5),
                z = rep("duke", 30))

unc <- tibble(x = rnorm(30,5,8),
              z = rep("unc", 30))

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
        axis.text.y = element_blank()) 

p +   
  scale_colour_manual(
  values = unis,
  aesthetics = c("fill")
) + 
  labs(title = "<img src = 'imgs/bball.png' height = 18><span style='font-size: 24pt'>Triangle Challenge</span>",
       subtitle = "Prediction/Statistics Competition for the ACC") + 
  annotation_raster(img2, xmin = -6.5, xmax = -1.5, ymin = 0.07, ymax = 0.08) + 
  annotation_raster(img3, xmin = 10.5, xmax = 16.5, ymin = 0.045, ymax = 0.060) + 
  annotation_raster(img4, xmin = 4.5, xmax = 9.5, ymin = 0.035, ymax = 0.050) + 
  theme(plot.title = element_text(hjust = 0.5, colour = "#f9c852", size = 40),
        plot.subtitle = element_text(hjust = 0.5, colour = "#f9c852", size = 22)) + 
  theme(
    plot.title = ggtext::element_markdown()) +
  
  annotate(geom="text", x=13, y=0.08, label= "Triangle Challenge\n Prediction/Statistics Competition for the ACC",
             ,
           color="black", size = 12, fontface =2)


ball <- readPNG("imgs/bball.png")
img <- readPNG("imgs/floor.png") 
img2 <- readPNG("imgs/duke_logo.png")
img3 <- readPNG("imgs/nc_state_logo.png")
img4 <- readPNG("imgs/unc_logo.png")

