> # Project 4 – Linear Discriminant Analysis (LDA): Fisher's discriminant

A simple workflow demonstrates essential skills in **Linear Discriminant Analysis (LDA)** using MATLAB.  
It covers the full process, including data loading, mean calculation, scatter matrices, eigen decomposition and projection, providing a hands-on example of how to separate and visualize multiple classes in lower dimensions.

---

## 📝 **Description**

This project analyzes three synthetic datasets ("class1.csv", "class2.csv", "class3.csv").  
Each dataset contains 3D samples representing different classes. The workflow includes:

- Loading the three datasets from CSV files  
- Computing class means and global mean  
- Constructing within-class and between-class scatter matrices  
- Solving the generalized eigenvalue problem "Sw⁻¹ Sb"
- Projecting the 3D data into 2D using the most discriminative directions  

---

## 🎯 **Objectives**

- Load and manage datasets in MATLAB  
- Implement within-class ("Sw") and between-class ("Sb") scatter matrices  
- Perform eigenvalue decomposition to find discriminative features  
- Visualize both original 3D data and 2D projected data  
- Show how LDA improves class separation  

---

## 🛠️ **Tech Stack**

MATLAB (tested on R2024b and newer)  

---

## ⏱️ **Execution Time**

Full script (59 lines) execution: **<5 seconds** (on an average-performing laptop).

---

## 🚀 **Result**

- **3D visualization** of the three classes with their centroids.  
- **2D projection** along the two most discriminant directions, showing clear class separation.  
- Demonstrates how LDA can reduce dimensionality while preserving class discriminability.
