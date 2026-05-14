setwd("D:/Books_and_asses/cse_courses/comp bio/compbioass")

library(ensembldb)
library(AnnotationHub)

setAnnotationHubOption("CACHE", "D:/Books_and_asses/cse_courses/comp bio/compbioass/AH_cache")

ah <- AnnotationHub()


edb <- ah[["AH119325"]]

print("Environment successfully set up!")


my_gene <- "RAC1" 

# Fetching all transcripts
gene_transcripts <- transcripts(edb, filter = ~ symbol == my_gene)

# Extracting and viewing the transcript IDs
transcript_ids <- gene_transcripts$tx_id
print("List of Transcripts:")
print(transcript_ids)

# Fetching all proteins and extracting for the gene
gene_proteins <- proteins(edb, filter = ~ symbol == my_gene)
protein_ids <- gene_proteins$protein_id

# removing NAs 
protein_ids <- na.omit(protein_ids)

print("List of Proteins:")
print(protein_ids)

mapping_results <- list()

for (pid in protein_ids) {
  
  # Get the protein sequence length to know the start and end of the amino acid chain
  prot_info <- proteins(edb, filter = ~ protein_id == pid)
  prot_length <- nchar(prot_info$protein_sequence)
  
  # Create an IRanges object representing the full amino acid sequence (from 1 to its max length)
  # Name the range with the protein ID so the function knows what to map
  aa_range <- IRanges(start = 1, end = prot_length)
  names(aa_range) <- pid
  
  # Map the amino acid coordinates to the genome
  mapped_coords <- proteinToGenome(aa_range, edb)
  
  # Store the result
  mapping_results[[pid]] <- as.data.frame(mapped_coords[[1]])
}

# 3. Combine all individual protein mappings into one big table
final_map_df <- do.call(rbind, mapping_results)

# 4. Save this map to a TSV file (as hinted in image_930175.jpg)
write.table(final_map_df, file = paste0(my_gene, "_protein_to_genome_map.tsv"), 
            sep = "\t", row.names = FALSE, quote = FALSE)

print("Mapping complete! File saved to your working directory.")
