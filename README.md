# Computational_biology_submission

This repository contains submissions for four computational biology assignments.

## Assignment-to-submission map

### 1. Gene2protein
- **Main submission file:** `assignment.R`
- **Primary output file:** `RAC1_protein_to_genome_map.tsv`
- **Related figure:** `IGV_gene_view.png`

This assignment maps the **RAC1** protein back to genomic coordinates using Bioconductor annotation resources.

### 2. ViterbiHMM
- **Main submission file:** `viterbi.ipynb`

This notebook implements and runs the Viterbi algorithm for the HMM assignment.

### 3. PCA_Gene_Expression
- **Main submission file:** `on_gene_expression_data/PCA.ipynb`
- **Assignment description:** `on_gene_expression_data/README.md`
- **Generated figures:** `on_gene_expression_data/pca.png`, `on_gene_expression_data/pc1_strip_plot.png`

This submission performs PCA on the provided gene expression dataset and reproduces the requested plots.

### 4. GO_Enrichment
- **Main submission directory:** `gene_onotology_analysis/`
- **Pipeline summary:** `gene_onotology_analysis/readme_solution.md`
- **Key submission files:**
  - `gene_onotology_analysis/filter.py`
  - `gene_onotology_analysis/transform.py`
  - `gene_onotology_analysis/plot.R`

This assignment searches promoter regions for a motif and performs Gene Ontology enrichment analysis on the resulting gene set.
The directory name in the repository is `gene_onotology_analysis`, and this README keeps that exact spelling to match the checked-in files.

## Quick summary

| Assignment | Submission file(s) |
| --- | --- |
| Gene2protein | `assignment.R` |
| ViterbiHMM | `viterbi.ipynb` |
| PCA_Gene_Expression | `on_gene_expression_data/PCA.ipynb` |
| GO_Enrichment | `gene_onotology_analysis/filter.py`, `gene_onotology_analysis/transform.py`, `gene_onotology_analysis/plot.R`, `gene_onotology_analysis/readme_solution.md` |
