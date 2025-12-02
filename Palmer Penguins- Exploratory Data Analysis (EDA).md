# 🐧 Palmer Penguins: Exploratory Data Analysis (EDA)

## 📌 Project Overview
This project performs a comprehensive **Exploratory Data Analysis (EDA)** and **Statistical Visualization** on the Palmer Penguins dataset using **R**. The goal is to investigate the biological relationship between penguin species, their physical characteristics (flipper length, body mass, bill dimensions), and sexual dimorphism.

## 🛠 Tools & Technologies
* **Language:** R 
* **Libraries:** `ggplot2`, `pheatmap`, `RColorBrewer`, `palmerpenguins`.
* **Techniques:** Data Wrangling, Correlation Analysis, Multivariate Visualization.

## 📊 Key Analyses & Visualizations

### 1. Species Distribution
Analyzed the population of three penguin species (*Adelie, Chinstrap, Gentoo*) across three islands (*Biscoe, Dream, Torgersen*) using **Stacked Bar Plots**.

### 2. Biological Distributions (Histograms)
Visualized the distribution of **Flipper Lengths**, revealing a **bimodal distribution** which indicates distinct physical differences between species (Gentoo vs. others).

### 3. Sexual Dimorphism (Box Plots)
Investigated the relationship between **Sex and Body Mass**. The analysis confirms significant sexual dimorphism, with male penguins showing consistently higher median body mass compared to females.

### 4. Multivariate Analysis (Simpson's Paradox)
Using **Scatter Plots** with faceting, I resolved a potential Simpson's Paradox in Bill dimensions. While the overall trend appeared ambiguous, separating data by species revealed a strong **positive correlation** between Bill Length and Bill Depth within each group.

### 5. Correlation Matrix (Heatmap)
Generated a clustered **Heatmap** to quantify relationships between numeric variables.
* **Strong Positive Correlation (0.87):** Flipper Length vs. Body Mass.
* **Negative Correlation:** Bill Depth vs. Flipper Length.

