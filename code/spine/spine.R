source("~/R-Funcs/FUNCS.R")
#> Loading required package: ggplot2

data <- read_excel("CreditCard.xlsx")
data %>%
  mutate(Overdue = as.factor(Overdue),
         HistoryOverdue = ifelse(HistoryOverdue > 7, 7, HistoryOverdue),
         HistoryOverdue = as.factor(HistoryOverdue)) %>%
  ggplot() +
  geom_mosaic(aes(x = product(HistoryOverdue), fill=Overdue)) +
  get_ggthemr_color(palette = "flat") +
  # scale_fill_manual(values = get_color_discrete("#f1c40f", "#d35400", n = 8)) +
  # get_color_discrete("yellow", "grey", n = 8)
  theme_mosaic()

  