echo 필수 패키지 설치
apt-get update && apt-get install -y \
    build-essential \
    curl \
    wget \
    unzip \
    git \
    espeak-ng \
    libsndfile1-dev \
 && rm -rf /var/lib/apt/lists/*

echo 폴더 생성
mkdir -p src/
cd src

echo 라이브러리 복제
git clone --depth 1 https://github.com/sce-tts/g2pK.git
git clone --depth 1 https://github.com/sce-tts/TTS.git -b sce-tts

cd g2pK/
pip install --no-cache-dir -e .

cd ../
cd TTS/
pip install --no-cache-dir -e .

cd ../
mkdir -p flask/
cd flask

echo Pytorch 설치
pip3 install torch==1.11.0+cpu torchvision==0.12.0+cpu torchaudio==0.11.0+cpu -f https://download.pytorch.org/whl/cpu/torch_stable.html