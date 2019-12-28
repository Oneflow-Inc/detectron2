export CUDA_VISIBLE_DEVICES=0
rm -rf ./output
python3 tools/train_net.py \
	--num-gpus 1      								\
        --config-file configs/COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_1x.yaml
# /opt/nvidia/nsight-systems/2019.6.1/bin/nsys profile -t cuda -o /detectron2/maskrcnn --force-overwrite true python3 tools/train_net.py \
# 	--num-gpus 1      								\
#       --config-file configs/COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_1x.yaml
