> # Project 5 – Support Vector Machines (SVM) vs Convolutional Neural Network (CNN)

A complete workflow demonstrates essential skills in building, tuning, training, evaluating and confronting two classification models: Support Vector Machine (SVM) and Convolutional Neural Network (CNN) using Python (Scikit-learn and TensorFlow/Keras). It covers the full process from data loading and preprocessing to model optimization, evaluation and visualization, providing a hands-on example of how to efficiently develop and assess Machine Learning and Deep Learning models.

---

## 📝 Description

This project focuses on classifying grayscale 28×28 images from the **Fashion-MNIST dataset** (https://www.kaggle.com/datasets/zalando-research/fashionmnist#). The dataset includes:
- **Training set**: fashion-mnist_train.csv
- **Test set**: fashion-mnist_test.csv
- **Labels**: 10 classes of fashion items (e.g., T-shirt, trouser, sneaker, etc.)  
- Each row contains **784 pixel values (28×28)** plus a **label column**.

---

## 🎯 Objectives

- Load and preprocess image datasets for both SVM and CNN training
- Build an **interpretable SVM model** and a **flexible and tunable CNN** with convolutional blocks, dropout, batch normalization and dense layers  
- Study the behaviour of the SVM model across crucial hyperparameter (C, kernel, ganmma). For CNN, tune hyperparameters (filters, dropout rates, dense units, learning rate) using **Keras Tuner**  
- Apply different values of the parameters in order to mitigate the overfiting in SVM. For the CNN, apply **EarlyStopping** and **TensorBoard** for efficient training and monitoring  
- Evaluate both the models performance with Accuracy, learning curves, Confusion Matrix and classification metrics (Precision, Recall, F1-score)  
- Save the trained CNN for future inference or further experiments  

---

## 🛠️ Tech Stack

- Python 3.13  
- TensorFlow 2.20.0 & Keras  
- Keras Tuner  
- NumPy  
- Pandas  
- Matplotlib
- Scikit-learn

---

## ⏱️ Execution Time

- 35 code cells for SVM and 19 code cells or CNN
- Full notebook execution (including hyperparameter tuning and training) should take a maximum of **~90 minutes** (on an average-performing laptop).

---

## 🚀 Result

- The **SVM** used feature scaling and optional PCA to enhance stability and reduce overfitting, while the **CNN** required data reshaping and scaling for its convolutional layers.
- **SVM:** ~97% train / 91% test accuracy, strong but slightly closer to overfitting.  
- **CNN:** ~92% consistent across train/test/validation, with better generalization and lower loss (~0.2).
- The SVM demanded heavier parameter tuning, whereas the CNN benefited from GPU acceleration and regularization (dropout, batch norm).  

Both models performed excellently, but **CNN showed slightly better robustness and adaptability**, while **SVM remains simpler and more interpretable** for structured data.

---

## ⚠️ Warning (CNN)

- The tuning process was performed using **10 random Keras combinations**. Because of this random selection, re-running the code may produce a **different optimized model** each time. For those who wish to **replicate the exact same results** though, the project folder includes the **saved tuning procedure** and the **final optimized model**. To reuse my model, simply place the notebook and these folders within the **same project directory**. This ensures that the code recognizes the existing files and **skips the tuning step**, saving considerable computation time. If the code is executed without these files though, it will **rerun the entire tuning process** and may yield a **different model configuration**.

- Furthermore, to obtain information about the CNN's architecture during tuning and/or training, run the following command in the terminal: "tensorboard --logdir=./logs". After a few seconds, the link "http://localhost:6006/" may appear. Clicking on it will redirect you to the TensorBoard page.
