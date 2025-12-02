# Project: Palmer Penguins Data Analysis
# Author: Ahmed Kamel
# Description: Visualization of penguin species characteristics using ggplot2 and pheatmap.

# 1. Loading Libraries
install.packages("palmerpenguins")
install.packages("ggplot2")
install.packages("RColorBrewer")
install.packages("pheatmap")

library(palmerpenguins)
library(ggplot2)
library(RColorBrewer)
library(pheatmap)

# 2. Data Cleaning & Preparation
Data = penguins
# Removing missing values
Data_clean = na.omit(Data)

#============================================================================
# 3. Bar plot: Penguins Species Distribution
# Goal: visualize the count of each species per island
ggplot(data = Data_clean, mapping = aes(x = species, fill = island)) +
  geom_bar() +
  theme_bw() +
  scale_fill_brewer(palette = "Set1") +
  xlab("Species") +
  ylab("Count") +
  ggtitle("Penguins Species Distribution")

#============================================================================
# 4. Histogram: Flipper Length Distribution
# Goal: Check the distribution of flipper lengths across species
ggplot(data = Data_clean, mapping = aes(x = flipper_length_mm, fill = species)) +
  geom_histogram(bins = 25, color = "black", alpha = 0.6, position = "identity") +
  theme_bw() +
  scale_fill_brewer(palette = "Set1") +
  xlab("Flipper Length (mm)") +
  ylab("Count") +
  ggtitle("Flipper Length Distribution")

#===============================================================================
# 5. Box Plot: Body Mass vs Sex
# Goal: Compare body mass between male and female penguins
ggplot(data = Data_clean, mapping = aes(x = sex, y = body_mass_g, fill = sex)) +
  geom_boxplot() +
  theme_bw() +
  scale_fill_brewer(palette = "Set2") + # Used Set2 for variety
  xlab("Sex") +
  ylab("Body Mass (g)") +
  ggtitle("Relationship Between Sex & Body Mass in Penguins")

#===============================================================================
# 6. Scatter Plot: Bill Dimensions (Simpson's Paradox)
# Goal: Analyze relationship between bill length and depth separated by species
ggplot(data = Data_clean, mapping = aes(x = bill_length_mm, y = bill_depth_mm, colour = species)) +
  geom_point(size = 2, alpha = 0.8) +
  theme_bw() +
  xlab("Bill Length (mm)") +
  ylab("Bill Depth (mm)") +
  ggtitle("Relationship Between Bill Length & Bill Depth") +
  facet_grid(~species)

#===============================================================================
# 7. Correlation Heatmap
# Goal: Find correlations between numeric variables

# Select numeric columns
numeric_col = Data_clean[, c("bill_length_mm", "bill_depth_mm", 
                              "flipper_length_mm", "body_mass_g")]

# Calculate correlation matrix
cor_matrix = cor(numeric_col)

# Generate Heatmap
pheatmap(mat = cor_matrix, 
         display_numbers = TRUE, 
         cluster_rows = TRUE, 
         cluster_cols = TRUE, 
         # Using 100 shades of Red-Blue for smoother gradient
         color = colorRampPalette(brewer.pal(n = 7, name = "RdBu"))(100),
         main = "Correlation Heatmap")
