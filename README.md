# capstone-thesis

## Crop Disease Auto-Localization and Classification

### *Synopsis*

The main objectives of this project was to classify and detect various rice crop diseases. We implemented all ML pipelines from Data Collection to Model Deployment. The approach was to simulate medical imaging as an image segmentation technique using the DICOM image format. Deep Neural Network models such as VGG16, MobileNet, Xception and ResNet50 were used for model training. To validate the model performance, a simple version of GradCAM was created. For detection of diseases, bounding box regression was performed to locate the disease symptoms (an IoU score of 0.5 was obtained). The best performing model (using accuracy and IoU as criteria) was deployed using Flask and hosted as a web application.

### *Key Concepts*

- Image Processing
- Computer Vision
- DICOM

### *Conference Presentation*

International Conference on Artificial Intelligence and Data Science (ICAIDS-2022), Springer Series.

### *Team Members*

- G Deepank
- Aditya Verma
- Shivani Bisht
- R Tharun Raj
