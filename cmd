TO TRAIN:
python /opt/models/research/object_detection/train.py --logtostderr --pipeline_config_path=/{???}/models/tl_finetune.config --train_dir=/{???}/models/model/train

TO EVALUATE:
python /opt/models/research/object_detection/eval.py --logtostderr --pipeline_config_path=/{???}/models/tl_finetune.config --checkpoint_dir=/{???}/models/model/train --eval_dir=/{???}/models/model/eval

TO VIEW IN TENSORBAORD
tensorboard --logdir=/{???}/models/model

TO EXPORT MODE: (RUN FROM /opt/models/research/)
python object_detection/export_inference_graph.py \
    --input_type image_tensor \
    --pipeline_config_path=/{???}/models/tl_finetune.config \
    --trained_checkpoint_prefix=/{???}/models/model/train/model.ckpt-{???} \
    --output_directory=/{???}/export/output_inference_graph.pb



python /opt/models/research/object_detection/train.py --logtostderr --pipeline_config_path=/home/krin/AI/fine-tuning/traffic-lights/models/tl_finetune.config --train_dir=/home/krin/AI/fine-tuning/traffic-lights/models/model/train

python /opt/models/research/object_detection/eval.py --logtostderr --pipeline_config_path=/home/krin/AI/fine-tuning/traffic-lights/models/tl_finetune.config --checkpoint_dir=/home/krin/AI/fine-tuning/traffic-lights/models/model/train --eval_dir=/home/krin/AI/fine-tuning/traffic-lights/models/model/eval

tensorboard --logdir=`pwd`

python object_detection/export_inference_graph.py \
    --input_type image_tensor \
    --pipeline_config_path=/home/krin/AI/fine-tuning/traffic-lights/models/tl_finetune.config \
    --trained_checkpoint_prefix=/home/krin/AI/fine-tuning/traffic-lights/models/model/train/model.ckpt-20000 \
    --output_directory=/home/krin/AI/fine-tuning/traffic-lights/export/output_inference_graph.pb
