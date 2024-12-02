library(dplyr)
here::i_am(
  "Code/01_load_data.R")


f75 <- read.csv(here::here("Data/f75_interim.csv"))
f75$arm <- factor(f75$arm)
f75$arm <- relevel(f75$arm, ref = "Standard F75")
f75$caregiver <- relevel(as.factor(f75$caregiver), ref = "Mother")
saveRDS(f75, here::here("Data/f75.rds"))
