> # Project 2 – Principal Component Analysis (PCA) Exploration

This project explores different clustering techniques applied to the olive oil dataset, with a focus on hierarchical clustering and a comparison with other methods (k-means and density-based clustering).

---

## 📝 Description

The Olive Oil dataset contains samples of olive oils characterised by multiple chemical and physical variables.
The aim of the analysis is to identify natural clusters among both the samples and the variables, comparing the results obtained with different clustering approaches.

- 8 classes representing the region of origin
- 7 variables: fatty acid cencentration.

---

## 🎯 Objectives

- Select and apply appropriate **preprocessing** for PCA (scaling, transformations)
- Perform PCA and select the most informative principal components  
- Visualize **scores** and **loadings** to interpret patterns and relationships  
- Analyze residuals using **T² vs Q plots** to identify anomalous or extreme samples  
- Compare scores and loadings to derive meaningful insights about the data  

---

## 🛠️ Tech Stack

- Python 3.13.0  
- Pandas  
- NumPy  
- Matplotlib  
- Seaborn
- Plotly
- Scikit-learn
- SciPy

---

## ⏱️ Execution Time

- Full notebook execution (34 code cells): <10 seconds (on an medium performant laptop)

---

## 🚀 Results

- The first five PCs explained 80% of the variance, capturing the main data structure.
- Scores plots (PC1 vs PC2) clearly separated Barbera, Grignolino and Barolo wines.
- Loadings plots showed flavonoids (PC1) and color intensity (PC2) as key contributors.
- T² vs Q residual plots revealed a few outliers, while most samples were well represented.

PCA effectively reduced dimensionality, highlighted group differences and identified anomalies.

---

## ⚠️ **Warning**

Interactive plots were originally created with **Plotly**, but since GitHub does not support interactive rendering, they have also been exported as static PNG images.
This ensures that all visualizations remain visible directly on GitHub, while the interactivity can still be experienced by running the notebook locally.

When running the notebook locally though, make sure to **comment out the cells that load static PNG images** before execution to avoid "file not found" errors.

---
