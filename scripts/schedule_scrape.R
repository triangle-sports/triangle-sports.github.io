# Load necessary libraries
library(rvest)
library(dplyr)
library(tidyverse)

# URL of the website to scrape
url <- "https://www.scacchoops.com/acc-mens-basketball-schedule"

# Read the HTML content from the website
webpage <- read_html(url)

# Extract the schedule table
schedule_table <- webpage %>%
  html_node("table") %>% # Adjust the selector based on the actual HTML structure
  html_table()

# Display the first few rows of the schedule
head(schedule_table)

# Clean Table
modified = schedule_table %>% 
              select('Date/Time',"Home","Away") %>%
              rename("Date"=`Date/Time`) %>%
              slice(226:368) %>%
              filter(Home %in% c("UNC","Duke","NC State")|
                     Away %in% c("UNC","Duke","NC State")) %>%
              mutate('Actual'=NA)

#Save Table to folder

# setwd("D:/DoctorMario/UNC/Undergrad Research and Internships/triangle-sports.github.io/scripts"
# )
# write_csv(modified,"prediction.csv")

