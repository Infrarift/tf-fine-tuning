# tf-fine-tuning
A toolkit for fine-tuning TensorFlow object detection models.

Use a tool to annotate: https://github.com/tzutalin/labelImg

1. This process is based on fine tuning an existing Tensorflow Object Detection model: 
  https://research.googleblog.com/2017/06/supercharge-your-computer-vision-models.html

2. This is based on the Faster RCNN model. Download the model first. To use a different model, you will also need to adjust the config file.
  https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/detection_model_zoo.md

3. Install the Tensorflow Object Detection API:
  https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/installation.md

4.Create a training and a test set in the format of TFRecord. You can use the converter script in tf-record-converter to do the job. Run it on a directory which has JPG images and matching XML annotation files, and it should generate two record files.

5. Put your new records file into the 'data' directory.

6. Run the below commands, replacing the path to the right ones:

