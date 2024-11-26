packages_list <- c("tidyverse", "here", "pacman", "DescTools",
                      "magrittr", "janitor", "knitr", "survival", "ggpubr",
                      "gt", "gtsummary", "tidyr", "dplyr", "ggplot2", "config")
new_packages <- packages_list[!(packages_list %in% installed.packages()[,"Package"])]
if(length(new_packages)) install.packages(new_packages)

pacman::p_load(
  here, DescTools, tidyverse, magrittr, janitor,
  knitr, survival, ggpubr, gt, gtsummary, tidyr,
  dplyr, ggplot2, config)

here::i_am(
  "Code/01_load_data.R")


f75 <- read.csv(here::here("Data/f75_interim.csv"))
f75$arm <- factor(f75$arm)
f75$arm <- relevel(f75$arm, ref = "Standard F75")
saveRDS(f75, here::here("Data/f75.rds"))
