#-------------------------------------------------------------------------------
# Assignment 2 by Paul Petersen

# I will be using the V_Dem_CY_Full_Others_v14 dataset

library(tidyverse)

library(readr)
V_Dem_CY_Full_Others_v14 <- read_csv("Documents/Semester 4 Politik/Ü Methoden VR (Data Collection with R)/Midterm Assignment/Midterm_Petersen/V-Dem-CY-Full+Others-v14.csv")
View(V_Dem_CY_Full_Others_v14)

# I will show the development of Political Corruption Index in Mexico over time

ggplot(data = V_Dem_CY_Full_Others_v14 %>% filter(country_name == "Mexico"),
aes(x = year, y = v2x_corr)) +
  geom_point() +
  scale_x_log10() +
  geom_smooth(method = "lm") +
  labs(x = "year", 
       y = "Political Corruption Index",
       color = "Continent",
       title = "Sometimes there is a change",
       subtitle = "Year / Index Development",
       caption = "V_Dem_CY_Full_Others_v14") 
