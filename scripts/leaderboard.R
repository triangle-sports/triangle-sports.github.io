# libraries
library(tidyverse)
library(data.table)
library(knitr)

results = read_csv("data/scores.csv") %>%
  mutate(true_pt_spread = pt_spread) %>%
  select(-pt_spread) %>%
  mutate(id = 1:nrow(results))
total_games = sum(!is.na(results$true_pt_spread))
stopifnot(total_games > 0)
# functions
# getScore = function(df) {
#   for(i in 1:total_games) {
#     outcome = results$pt_spread[i]
#     mae = 
#   }
#   results$pt_spread
#   score = 5
#   return(score)
# }

# todo: read in game outcome from API
outcome = data.frame(game_id = 1, 
                     outcome = 10)
getMAE = function(df) {
  # total_error = 0
  #   for(i in 1:total_games) {
  #     actual_outcome = results$pt_spread[i]
  #     predicted_outcome = df$pt_spread[i]
  #     total_error = total_error + abs(actual_outcome - predicted_outcome)
  #   }
  # mae = total_error / total_games
  actual_outcome = results$true_pt_spread[1:total_games]
  predicted_outcome = df$pt_spread[1:total_games]
  mae = mean(abs(actual_outcome - predicted_outcome)) 

  return(round(mae, 2))
}

getCIW = function(df) {
  df = df[1:42,]
  merged_df = df %>%
    mutate(id = 1:nrow(results)) %>%
    left_join(results, by = c("id")) %>%
    filter(id <= total_games) %>%
    mutate(inCI = true_pt_spread < ci_ub & true_pt_spread > ci_lb)
  
  if(mean(merged_df$inCI) < 0.7) {
    ciw = "< 70% coverage"
    return(ciw)
  }
  else {
    ciw = merged_df %>%
      mutate(width = abs(ci_ub - ci_lb)) %>%
      select(width) %>% pull() %>%
      mean()
  }
  # ub = df$ci_ub
  # lb = df$ci_lb
  # width = abs(ub - lb)
  # ciw = sum(width[1:total_games])
  # ciw = 5
  return(round(ciw, 2))
}

# path to projects
thePath = "../tsa_projects/2025"

# read data in
files = list.files(path = thePath)
files = files[str_detect(files, "csv")]  

# scores = vector(length = length(files))
MAEs = vector(length = length(files)) 
CIWs = vector(length = length(files))
all_df = list(length = length(files))

for (j in seq_along(files)) {
  all_df[[j]] = fread(paste0(thePath, "/", files[j]), header = TRUE)
  # scores[i] = getScore(all_df[[i]])
  MAEs[j] = getMAE(all_df[[j]])
  CIWs[j] = getCIW(all_df[[j]])
  cat("Successfully completed ", j, "\n")
}

# teamNames = str_extract(files, "\\w*")
teamNames = str_split(files, ".csv", simplify = TRUE)[,1]

scoreBoard = data.frame(team = teamNames,
                        MAE = MAEs,
                        CIW = CIWs) %>%
  arrange(MAE)

scoreBoard %>%
  kable(format = "markdown",
        caption = paste0("Last updated: ", format(Sys.time(), "%a %b %d %Y"))) %>%
  write(file = "_leaderboard.qmd")

write_csv(scoreBoard, "scripts/scoreBoard.csv")

