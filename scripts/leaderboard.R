# libraries
library(tidyverse)
library(data.table)
library(knitr)

# functions
getScore = function(df) {
  score = 5
  return(score)
}

# path to projects
thePath = "../tsa_projects/2024"

# read data in
files = list.files(path = thePath)

scores = vector(length = length(files))
all_df = list(length = length(files))
for (i in seq_along(files)) {
  all_df[[i]] = fread(paste0(thePath, "/", files[i]), header = TRUE)
  scores[i] = getScore(all_df[[i]])
}

teamNames = str_extract(files, "\\w*")

scoreBoard = data.frame(team = teamNames,
                        score = scores)

scoreBoard %>%
  kable(format = "markdown", caption = paste0("Last updated: ", format(Sys.time(), "%a %b %d %Y"))) %>%
  write(file = "_leaderboard.qmd")



