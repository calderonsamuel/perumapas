library(perumapas)
library(tidyverse)
library(sf)

mapa_provincial <- mapa_distrital %>%
  mutate(cod_prov = str_extract(ubigeo, "^....")) %>%
  group_by(departamento, provincia, cod_prov) %>%
  summarise(geometry = st_union(geometry)) %>%
  ungroup()

mapa_regional <- mapa_distrital %>%
  mutate(cod_depa = str_extract(ubigeo, "^..")) %>%
  group_by(departamento, cod_depa) %>%
  summarise(geometry = st_union(geometry)) %>%
  ungroup()


save(mapa_provincial, file = "data/mapa_provincial.rda", compress = "xz")
save(mapa_regional, file = "data/mapa_regional.rda", compress = "xz")
