> # Project 2 – Principal Component Analysis (PCA) Exploration

This project demonstrates a workflow for **Principal Component Analysis (PCA)** using Python.  
It covers the full process, including **data preprocessing, dimensionality reduction, visualization, and interpretation**, providing a hands-on example of how to extract insights from multivariate data efficiently.

---

## 📝 Description

This project analyzes a dataset of different **Wines**. The data is stored in the file wines_condescrvar.xls and includes:

- 3 **categories** of red wines: Barolo (OLO), Barbera (ERA), Grignolino (GR) characterised by 14 variables (wines.xls)**Category index** indicating the region of origin:  
  - OLO → Barolo
  - ERA → Barbera
  - GR → Grignolino

- 14 variables describing typical properties of the wine, such as alcohol content, organic acids and color properies.

In this project, I focus on **PCA analysis** to reduce dimensionality and explore relationships between variables.

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

---
