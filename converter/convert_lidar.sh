#!/bin/bash

multicorrupt_root="/home/bk/study/datasets/corrupted_dataset"
nuscenes_data_dir="/home/bk/study/datasets/nuscenes_mini"

severity_levels=("1" "2" "3")

for severity in "${severity_levels[@]}"; do
    python3 lidar_converter.py \
    --corruption spatialmisalignment \
    --root_folder $nuscenes_data_dir \
    --dst_folder $multicorrupt_root/$severity/ \
    --severity 3 \
    --n_cpus 64 \
    --sweep true
done