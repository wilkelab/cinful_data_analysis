# microcins_enterobacterales
A repository for the analysis involved in "Evidence for widespread class II microcins in Enterobacterales genomes"


# Getting started

Below are instructions for reproducing the analysis to identify microcins in Enterobacterales genomes. The two most important components are to have cinful installed, and to download the genome assemblies.

## cinful

cinful can be downloaded from the pip repository

```bash
pip install cinful
```

## Data download

This repository contains the accession numbers and descriptions of all genome assemblies used in this analysis. There is more than one way to retrieve these files. The easiest, is with ncbi-genome-download.


The data are split into three groups. The first is the _E. coli_ pan genome. Then there are genome assemblies from Enterobacteraciae, from species that have at least ~30 assemblies per species. Finally, there is a representation of one assembly per species from other Enterobacterales.

## Final output

In this repository, I have included the final output from cinful, since there is no need to also include every single genome assembly and intermediate file. These final output files are what will be analyzed to generate the figures for the paper. The analysis is detailed in separate jupyter notebooks. 

