library(tidyverse)

#setwd("/media/aaron/33cc2fea-ce13-4ebb-b0fe-45bb99026799/microcins_enterobacterales/notebooks/data")

hits <- read.csv("Enterobacteriales_all_best_hits.csv")
species <- read.csv("Enterobacteriales_species_merged_1000.csv") %>% select(accession, gtdb_taxonomy)

hits_split <- hits %>% separate(sample, sep = 15, into = c('accession','ID2') )

out <- left_join(hits_split, species)

write.csv(out, "Enterobacteriales_hits_with_species_data.csv")




species <- read.csv("Enterobacteriales_species_merged_1000.csv")
downloads <- read.csv("Enterobacteriales_accessions.txt", header = FALSE) %>% 
  rename(accession = V1) %>%
  separate(accession, c('accession', 'added'), sep = 15)

true_species <- downloads %>% left_join(species)

write.csv(true_species, "Enterobacteriales_accessions.csv")
