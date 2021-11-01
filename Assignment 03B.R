library(here)
library(tidyverse)

data <- read_csv(here("Data","PRESIDENT_precinct_general.zip"))
sumofvotesforbiden <- 0
sumofvotesfortrump <- 0

for (i in 1:length(data$votes)) {
  if (data$candidate[i] == "JOSEPH R BIDEN") {
    sumofvotesforbiden <- data$votes[i] + sumofvotesforbiden
  }
  else if (data$candidate[i] == "DONALD J TRUMP") {
    sumofvotesfortrump <- data$votes[i] + sumofvotesfortrump
  }
  else {}
}

cat ("Biden: ", sumofvotesforbiden, "\n")
cat ("Trump: ", sumofvotesfortrump)
#50/50