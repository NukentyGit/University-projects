# Project 2 – Principal Component Analysis (PCA) Exploration

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

- Full notebook execution (81 code cells): <10 seconds (on an medium performant laptop)

---

## 🚀 Results

- PCA revealed the main sources of variation in fatty acid concentrations, separating regions along the first principal components.  
- **Scores plots** highlighted clustering of samples by geographic region.  
- **Loadings plots** showed which fatty acids contributed most to each principal component.  
- **T² vs Q residual plots** identified a few outlier samples, which could indicate unusual compositions or measurement errors.  
- Interpretation of scores and loadings together provided a clear understanding of relationships between variables and regional differences.
