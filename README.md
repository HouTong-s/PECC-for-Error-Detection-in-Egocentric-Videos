# PECC-for-Error-Detection-in-Egocentric-Videos

[data](#data)  
[environment](#environment)  
[Training](#Training)   
[Inference](#Inference)   

## Introduction

This is the source code of "Probabilistic Embeddings with Causal Constraint for Error Detection in Egocentric Procedural Videos"

## Environment

This codebase has been developed and validated under the following environment:
- **OS:** Ubuntu 20.04.5 LTS
- **Python:** 3.8
- **PyTorch:** 1.13.1
- **CUDA:** 11.7

### Setup

To set up the environment, please follow these steps:

```bash
conda create -n pecc python=3.8
conda activate pecc
pip install torch==1.13.1+cu117 torchvision==0.14.1+cu117 torchaudio==0.13.1 --extra-index-url https://download.pytorch.org/whl/cu117
pip install -r requirements.txt
```

For Non-Maximum Suppression (NMS) Library, please refer to the guidance provided in the ActionFormer documentation, which can be found here: [ActionFormer Installation Guide](https://github.com/happyharrycn/actionformer_release/blob/main/INSTALL.md).


## data
111
### access

### Preprocessing

## Training
222

## Inference
333

