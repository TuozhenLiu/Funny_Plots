ibond <- read_excel("ibond_alluvial/ibond.xlsx")

ggthemr("fresh")

alluvial_wide(
  data = ibond,
  max_variables = 5,
  fill_by = "values",
  stratum_labels = F,
  auto_rotate_xlabs = F,
) +
  geom_label(stat = ggalluvial::StatStratum, size = 3, family = "STSongti-SC-Regular") +
  theme(text = element_text(family = "STSongti-SC-Regular")) +
  labs(y = "", title = "违约原因和智慧债券分析维度对应")

