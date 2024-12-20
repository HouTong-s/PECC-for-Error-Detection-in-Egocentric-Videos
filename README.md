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
- **GPU:** NVIDIA A6000 with 48 GB of VRAM

### Setup

To set up the environment, please follow these steps:

```bash
conda create -n pecc python=3.8
conda activate pecc
pip install torch==1.13.1+cu117 torchvision==0.14.1+cu117 torchaudio==0.13.1 --extra-index-url https://download.pytorch.org/whl/cu117
pip install -r requirements.txt
```

For Non-Maximum Suppression (NMS) Library, please refer to the guidance provided in the ActionFormer documentation, which can be found here: [ActionFormer Installation Guide](https://github.com/happyharrycn/actionformer_release/blob/main/INSTALL.md).


## Data
This experiment utilizes two datasets: EgoPER and HoloAssist. You have the option to either use the pre-extracted feature files that we provide (available via a Google Drive link) or to extract features yourself using the original data processing methods described below.
### Feature File Description
(Provide details about the feature files here, including information on the format, dimensions, and any relevant statistics that would be useful to the user.)
### Original Data Processing
For **EgoPER**: To obtain the dataset, please visit [EgoPER Official Repository](https://github.com/robert80203/EgoPER_official).
For **HoloAssist**: To access this dataset, please refer to [HoloAssist Official Website](https://holoassist.github.io/).
### Preprocessing Steps
1. **Extract Frames at 10 FPS:**
Navigate to the preprocessing directory and run the following command to extract frames at 10 frames per second (FPS):

```bash
cd preprocessing
python extract_frames.py
```   

2. **Generate I3D Features:**
Use the extracted frames to generate I3D features. Download the pre-trained weights from the following link: [Pre-trained Weights for I3D](https://drive.google.com/file/d/1SF4NduQ7w08wP00IgftZjnRqRYRdppd6/view).
After downloading, move the weights to the directory:

I3D_extractor/src/feature_extractor/pretrained_models
   

3. **Modify Configuration Script:**
Open the script features_{task_name}.sh and change the root_dir variable to the correct path where your data is located (e.g., data/EgoPER/pinwheels).
4. **Run Feature Extraction:**
Create a directory to store the extracted features and execute the feature extraction script:

```bash
mkdir -p data/EgoPER/pinwheels/features_10fps
cd I3D_extractor
./features_pin.sh
```   

Following these steps will allow you to preprocess the data and generate the necessary features for your experiment.

## Training
for EgoPER 
```bash
bash ./tools/EgoPER/run_train.sh
```

for HoloAssist
```bash
bash ./tools/EgoPER/run_train.sh
```

## Inference
for EgoPER 
```bash
bash ./tools/EgoPER/run_test.sh
```

for HoloAssist
```bash
bash ./tools/EgoPER/run_test.sh
```

