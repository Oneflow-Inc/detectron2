export CUDA_VISIBLE_DEVICES=0
rm -rf ./output
python3 tools/train_net.py          \
  --eval-only                       \
  --num-gpus 1                      \
  --config-file configs/COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_1x.yaml
