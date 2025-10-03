> # Project 5 – Convolutional Neural Network

A complete workflow demonstrates essential skills in building, tuning, training and evaluating a Convolutional Neural Network (CNN) using Python and TensorFlow/Keras. It covers the full process from data loading and preprocessing to model optimization, evaluation and visualization, providing a hands-on example of how to efficiently develop and assess deep learning models.

---

## 📝 Description

This project focuses on classifying grayscale 28×28 images from the **Fashion-MNIST dataset** (https://www.kaggle.com/datasets/zalando-research/fashionmnist#). The dataset includes:
- **Training set**: fashion-mnist_train.csv
- **Test set**: fashion-mnist_test.csv
- **Labels**: 10 classes of fashion items (e.g., T-shirt, trouser, sneaker, etc.)  
- Each row contains **784 pixel values (28×28)** plus a **label column**.

---

## 🎯 Objectives

- Load and preprocess image datasets for CNN training  
- Build a **flexible and tunable CNN** with convolutional blocks, dropout, batch normalization and dense layers  
- Tune hyperparameters (filters, dropout rates, dense units, learning rate) using **Keras Tuner**  
- Apply **EarlyStopping** and **TensorBoard** for efficient training and monitoring  
- Evaluate model performance with accuracy, learning curves, confusion matrix and classification metrics (Precision, Recall, F1-score)  
- Save the trained CNN for future inference or further experiments  

---

## 🛠️ Tech Stack

- Python 3.13  
- TensorFlow 2.20.0 & Keras  
- Keras Tuner  
- NumPy  
- Pandas  
- Matplotlib

You can obtain information about the model architecture by running the following command in the terminal:
"tensorboard --logdir=./logs"
After a few seconds, the link "http://localhost:6006/" may appear. Clicking on it will redirect you to the TensorBoard page.

---

## ⏱️ Execution Time

Full notebook execution (including hyperparameter tuning and training) takes **~90 minutes** (on an average-performing laptop).

---

## 🚀 Result

The combination of hyperparameter tuning, dropout, batch normalization and careful evaluation ensures a robust and reproducible deep learning pipeline.
