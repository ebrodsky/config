#!/bin/bash
GPU_TEMP=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits)
echo "{\"text\": \"gpu ${GPU_TEMP}°\", \"tooltip\": \"GPU Temp: $GPU_TEMP\"}"
