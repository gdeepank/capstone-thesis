# capstone-thesis

## Crop Disease Auto-Localization and Classification

### *Synopsis*

The main objectives of this project was to classify and detect various rice crop diseases. We implemented all ML pipelines from Data Collection to Model Deployment. The approach was to simulate medical imaging as an image segmentation technique using the DICOM image format. Deep Neural Network models such as VGG16, MobileNet, Xception and ResNet50 were used for model training. To validate the model performance, a simple version of GradCAM was created. For detection of diseases, bounding box regression was performed to locate the disease symptoms (an IoU score of 0.5 was obtained). The best performing model (using accuracy and IoU as criteria) was deployed using Flask and hosted as a web application.

### *Key Concepts*

- Image Processing
- Computer Vision
- DICOM

### *Version Requirements*

1. Python 3.7.6
2. TensorFlow 2.6.0
3. Keras 2.6.0
4. NumPy 1.19.5
5. Pandas 1.0.1
6. Opencv 4.5.2
7. Matplotlib 3.4.3
8. Pydicom 2.1.2
9. Sklearn 0.23.1
10. Seaborn 0.10.0
11. Flask 2.0.2

### *Project Code Implementation Procedure*

1. Command to get a list of folders and files in your directory:-- dir /b/s1.
2. Command to get file names and save to a text file:-- dir /b/s/w *.jpg > "filename.txt".
3. test.txt file contains all file names present in the directory with a .jpg extension.
4. Now enter ctrl+f and remove main directory details, for excel to pull images into it we need to give details of subdirectories and filenames starting with a " ./ " so we replace first backslash \ with ./ and the second one with /.
5. Open a new excel workbook and go to Data tab > Get & Transform Data group > From Text/CSV. Click Load to import all the data.
6. Save the excel notebook (as csv is optional). Dataset is now ready to be used for data sciece tasks. This is data.csv.
7. Use the test.sh bash script to convert the jpg images to dicom formatted images. This process is carried out on a linux terminal.
8. Place the bash script in each subdirectories and run it accordingly. Make a new directory using 'mkdir' command.
9. Command to move all dcm files to the new created directory:-- mv *.dcm new-directory-name. 
10. Repeat this for all subdirectories as well. This is done for uniformity and maintaining simplicity.
11. Repeat steps 1-5 above for loading the file path of .dcm files also into Excel. data.csv file is now updated.
12. dcm.txt file contains all file names present in the directory with a .dcm extension.
13. Run bboxcsv.ipynb file to load image annotations (created using LabelImg) from xml files. At the end, dataset - New.csv file is created. This is serves as the dataset for the project. It now contains image labels, (file) location and annotations.
14. Run model.ipynb file to perform exploratory data analysis, classification, model training and evaluation. The weights and architecture of the best classification model is saved in mymodels.h5 file. This allows us to reuse the H5 file in the future.
15. Run analysis-new.ipynb and the model_ResNet50.ipynb file to see an analysis of different neural network models in the classification problem.
16. Run gradcam.ipynb file to validate the model's performance in performing classification. This is implemented to check if the model is looking at the right regions or areas of interest in an image.
17. Finlly run bboxregr.ipynb file to perform localization (detection) on an image. Bounding box regression algorithm is utilised here. The localization model is saved in newmodel.h5 file. The two H5 files are used in model deployment.
18. For Flask deployment procedure:-
    - Navigate to the main folder, containing all the subfolders from terminal.
    - Command to run the server:-- python app_keras.py
    - Open a web browser, and navigate to http://localhost:5000/

### *Conference Presentation*

International Conference on Artificial Intelligence and Data Science (ICAIDS-2022), Springer Series.

### *Team Members*

- G Deepank
- Aditya Verma
- Shivani Bisht
- R Tharun Raj
