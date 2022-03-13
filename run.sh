export TTS_MODEL_FILE=/home/ubuntu/synthesis/models/glowtts-v2/glow_model.pth.tar
export TTS_MODEL_CONFIG=/home/ubuntu/synthesis/models/glowtts-v2/config.json
export VOCODER_MODEL_ONYX=/home/ubuntu/synthesis/models/hifigan-v2/hifigan.onnx
python3 -u server.py