df1 <- read.csv('https://raw.githubusercontent.com/plotly/datasets/718417069ead87650b90472464c7565dc8c2cb1c/sunburst-coffee-flavors-complete.csv')

fig <- plot_ly(
  type='treemap',
  ids=df1$ids,
  labels=df1$labels,
  parents=df1$parents,
  domain=list(column=0))
fig

knowledge_graph <- read.xlsx("~/Nutstore Files/数据/合并/知识图谱/知识图谱.xlsx")

df <- data.frame(ids = paste0("CICS1-", unique(knowledge_graph$CICS1)), labels = unique(knowledge_graph$CICS1), parents = "CICS")

knowledge_graph %>%
  transmute(ids = paste0("CICS2-", CICS2), labels = CICS2, parents = paste0("CICS1-", CICS1)) %>%
  distinct() %>%
  filter(!is.na(labels)) %>%
  bind_rows(df, .) -> df

knowledge_graph %>%
  transmute(ids = paste0("CICS3-", CICS3), labels = CICS3, parents = paste0("CICS2-", CICS2)) %>%
  distinct() %>%
  filter(!is.na(labels)) %>%
  bind_rows(df, .) -> df

knowledge_graph %>%
  transmute(ids = paste0("CICS4-", CICS4), labels = CICS4, parents = paste0("CICS3-", CICS3)) %>%
  distinct() %>%
  filter(!is.na(labels)) %>%
  bind_rows(df, .) -> df

fig <- plot_ly(
  type='treemap',
  ids=df$ids,
  labels=df$labels,
  parents=df$parents,
  maxdepth = 4
)%>%
  layout(
    title = list(text = "CICS Knowledge Graph",
                 font = list(color = "black", size = 24, family= 'Microsoft YaHei')),
    margin = list(t = 60, b = 45),
    uirevision = TRUE
  )

fig

htmlwidgets::saveWidget(fig, file = "treemap.html")

# 'branchvalues', 'count', 'customdata', 'customdatasrc', 'domain', 'hoverinfo', 'hoverinfosrc', 
# 'hoverlabel', 'hovertemplate', 'hovertemplatesrc', 'hovertext', 'hovertextsrc', 'ids', 'idssrc', 
# 'insidetextfont', 'labels', 'labelssrc', 'legendgrouptitle', 'legendrank', 'level', 'marker', 
# 'maxdepth', 'meta', 'metasrc', 'name', 'opacity', 'outsidetextfont', 'parents', 'parentssrc', 
# 'pathbar', 'root', 'sort', 'stream', 'text', 'textfont', 'textinfo', 'textposition', 'textsrc', 
# 'texttemplate', 'texttemplatesrc', 'tiling', 'transforms', 'type', 'uid', 'uirevision', 'values', 
# 'valuessrc', 'visible', 'key', 'set', 'frame', 'transforms', '_isNestedKey', '_isSimpleKey', 
# '_isGraticule', '_bbox'

