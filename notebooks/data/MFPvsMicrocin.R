library(dplyr)

getwd()

best_hits <- read.csv("best_hits_Touchon2020_2022.08.15.csv")
best_IP <- read.csv("best_immunity_protein_candidates.csv")

best_hits_subIP <- data.frame(best_hits[best_hits[, 13] == "immunity_proteins.verified",])
length(unique(best_hits_subIP[,18]))
IP_genomes <- data.frame(unique(best_hits_subIP[,18]))
colnames(IP_genomes) <- c("contig")


best_hits_subMic <- data.frame(best_hits[best_hits[, 13] == "microcins.verified",])
length(unique(best_hits_subMic[,18]))
Mic_genomes <- data.frame(unique(best_hits_subMic[,18]))
colnames(Mic_genomes) <- c("contig")

IP_genomes %>% inner_join(Mic_genomes)


best_hits_wide <- reshape(best_hits, idvar = "contig", timevar=c("component"), direction = "wide")
