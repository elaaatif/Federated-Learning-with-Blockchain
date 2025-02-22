# Federated Learning for Diabetes Prediction with Solidity Smart Contracts

## Overview
This project implements Federated Learning (FL) models—both Horizontal and Vertical—for diabetes prediction while ensuring secure client-server communication using Solidity-based smart contracts. It aims to preserve data privacy while enabling collaborative model training.

## Table of Contents
- [Introduction](#introduction)
- [Problem Statement](#problem-statement)
- [Fundamentals](#fundamentals)
  - [Federated Learning](#federated-learning)
  - [Solidity](#solidity)
- [Dataset](#dataset)
- [Implementation](#implementation)
  - [Local Model Testing](#local-model-testing)
  - [Federated Learning Models](#federated-learning-models)
  - [Smart Contract for Security](#smart-contract-for-security)
- [Deployment & Execution](#deployment--execution)
- [Conclusion](#conclusion)
- [References](#references)

## Introduction
Traditional machine learning approaches require centralized data collection, posing security and compliance risks. Federated Learning (FL) addresses this by training models locally and only exchanging model updates. This project integrates Solidity smart contracts to enhance FL security.

## Problem Statement
Medical data privacy is critical. This project focuses on federated learning for diabetes prediction using a dataset where data remains distributed among multiple institutions, ensuring compliance with regulations like GDPR and HIPAA.

## Fundamentals
### Federated Learning
- **Decentralized ML approach** that enables collaborative training without sharing raw data.
- **Types of FL:**
  - **Horizontal Federated Learning (HFL):** Clients have the same feature space but different data samples.
  - **Vertical Federated Learning (VFL):** Clients share common user samples but different feature spaces.
![image](https://github.com/user-attachments/assets/8d3cadfb-73df-42e5-a4a5-36e19f8afebc)

### Solidity
Solidity is used to implement smart contracts for securing FL communication. The contract records participant consent on the blockchain, ensuring trust and data integrity.

## Dataset
- **Source:** Diabetes Prediction in America dataset (Kaggle)
- **Features:** Pregnancies, Glucose, Blood Pressure, BMI, Insulin, Age, etc.
- **Target Variable:** Diabetes Diagnosis (1 = diabetic, 0 = non-diabetic)

## Implementation
### Local Model Testing
Implemented baseline classifiers:
1. **Random Forest Classifier**
2. **Gradient Boosting Classifier**
3. **Stacking Ensemble (Meta-Model)**

### Federated Learning Models
Implemented both **Horizontal FL (HFL)** and **Vertical FL (VFL)** using PyTorch.
- **HFL:** Clients train models locally, updates are aggregated using Federated Averaging.
- **VFL:** Clients contribute different features, with a central model aggregating partial outputs.

### Smart Contract for Security
A Solidity smart contract **(FLConsent.sol)** ensures:
- **Immutable consent storage** for FL participants.
- **Tamper-proof data integrity** using Ethereum blockchain.
- **Secure authentication** of participating clients.

## Deployment & Execution
### Steps:
1. **Compile and Deploy Solidity Contract**
   - Use Remix IDE with Solidity v0.8.19.
   - Deploy on Ganache for local testing.
2. **Train Federated Learning Model**
   - Split dataset for multiple clients.
   - Train models locally and aggregate weights.
3. **Integrate Smart Contract**
   - Record client consent.
   - Securely authenticate FL participants.
![image](https://github.com/user-attachments/assets/12903b75-0069-4a32-a6cb-0c882f369c74)
![image](https://github.com/user-attachments/assets/981c6d80-2c80-4369-a52f-f19471884a7a)

## Conclusion
This project successfully integrates **Federated Learning** and **Blockchain** to enable privacy-preserving AI in healthcare. Future work includes:
- **Enhancing security** with cryptographic techniques (e.g., Secure Multi-Party Computation).
- **Extending the framework** to other medical datasets.
- **Incorporating incentive mechanisms** for participant engagement.

## References
1. [Google Research - Federated Learning](https://research.google/blog/federated-learning-collaborative-machine-learning-without-centralized-training-data/)
2. [Flower AI - Vertical Federated Learning](https://flower.ai/docs/examples/vertical-fl.html)
3. [Solidity Documentation](https://docs.soliditylang.org/en/latest/)
