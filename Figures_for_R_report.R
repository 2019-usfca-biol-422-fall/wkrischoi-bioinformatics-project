melted_phyloseq %>%
  filter(type == "Refrigerated")

melted_phyloseq %>%
  filter(sample_id == "1A")

melted_phyloseq %>%
  group_by(student_initials, Phylum) %>%
  summarize(sum_abundance = sum(Abundance,
                                na.rm = TRUE))
melted_phyloseq %>%
  group_by(sample_id, Phylum) %>%
  summarize(sum_abundance = sum(Abundance,
                                na.rm = TRUE))

melted_phyloseq %>%
  filter(sample_id == "3A") %>%
  group_by(sample_id, Phylum) %>%
  summarize(sum_abundance = sum(Abundance,
                                na.rm = TRUE))

ggplot(data = melted_phyloseq,
       aes( x = Phylum,
            y = Abundance)) +
  geom_col()

melted_phyloseq %>%
  filter(sample_id == "2B")

melted_phyloseq %>%
  group_by(Sample, student_initials, Phylum) %>%
  summarize(sum_abundance = sum(Abundance,
                                na.rm = TRUE))

melted_phyloseq %>%
  filter(sample_id == "3A")
