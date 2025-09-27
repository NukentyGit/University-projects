# Project 3 – Clustering Analysis

This project applies **Hierarchical Clustering, K-Means and Density-Based methods** to the well-known *Italian Extra Virgin Olive Oil* dataset.  
The goal is to test different clustering strategies, visualize results and compare performances, showcasing skills in **unsupervised learning, dimensionality reduction and data visualization**.  

---

## 📝 Description  

The dataset (olive_oil.xlsx) contains chemical measurements of fatty acid concentrations in olive oil samples collected from various Italian regions.  

- **Category index** (region of origin): indicated with numers ranging from 1 to 9

- **7 fatty acids concentrations** measured via chromatography (columns).  

---

## 🎯 Objectives  

- Perform **Hierarchical Clustering** with different distances and linkage criteria.  
- Select the best-performing combination and report:  
  1. **Samples dendrogram**  
  2. **Scores plot (PC1 vs PC2)** colored by cluster assignments (threshold value included in the title)  
  3. **Clustering of variables** (transpose dataset, use correlation as distance) with "heatmap" visualization of standardized data ordered by dendrograms.  
- Compare results with **K-Means** and a **density-based method (DBSCAN)**.  
- Interpret and discuss differences between clustering approaches.

---

## 🛠️ Tech Stack  

- Python v 3.13.0
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- SciPy

---

## ⏱️ Execution Time  

- Full notebook execution (31 code cells): <30 seconds *(measured on average laptop performance)*  

---

## 🚀 Results  

## 🚀 Results  

- **Hierarchical clustering**  
  - PCA showed strong overlap between categories.  
  - Best silhouette (**0.543**) with *complete linkage* (threshold = 2000).      
  - Variable clustering revealed strong correlations (*palmitic–palmitoleic*, *eicosanoic–linolenic*) and *linoleic acid* as a “bridge variable”.  

- **K-Means**  
  - Elbow suggested **k = 3**, with silhouette ≈ **0.48**.  
  - Clusters compact but less aligned with true categories.  

- **DBSCAN**  
  - Good for anomalies and density-based groups.  
  - Results highly sensitive to ε.  

**In Summary**

Hierarchical clustering gave the most consistent structure, Ward’s method the most balanced results, while K-Means and DBSCAN offered complementary but less robust perspectives.  

---

📌 This project demonstrates advanced **unsupervised learning techniques** and practical skills in **clustering evaluation and visualization**.  
