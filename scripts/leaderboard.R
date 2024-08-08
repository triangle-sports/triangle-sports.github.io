# libraries
library(tidyverse)
library(data.table)
library(knitr)

# functions
getScore = function(df) {
  score = 5
  return(score)
}

# todo: read in game outcome from API
outcome = data.frame(game_id = 1, 
                     outcome = 10)
getMAE = function(df) {
  mae = 5
  return(mae)
}

getCIW = function(df) {
  ciw = 5
  return(ciw)
}

# path to projects
thePath = "../tsa_projects/2024"

# read data in
files = list.files(path = thePath)

scores = vector(length = length(files))
MAEs = vector(length = length(files)) 
CIWs = vector(length = length(files))
all_df = list(length = length(files))
for (i in seq_along(files)) {
  all_df[[i]] = fread(paste0(thePath, "/", files[i]), header = TRUE)
  scores[i] = getScore(all_df[[i]])
  MAEs[i] = getMAE(all_df[[i]])
  CIWs = getCIW(all_df[[i]])
}

teamNames = str_extract(files, "\\w*")

scoreBoard = data.frame(team = teamNames,
                        score = scores,
                        MAE = MAEs,
                        CIW = CIWs)

scoreBoard %>%
  kable(format = "markdown", caption = paste0("Last updated: ", format(Sys.time(), "%a %b %d %Y"))) %>%
  write(file = "_leaderboard.qmd")

write_csv(scoreBoard, "scripts/scoreBoard.csv")

