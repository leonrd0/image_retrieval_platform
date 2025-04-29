#!/bin/bash

set -e  # Exit immediately if any command fails

echo "📦 Creating virtual environment..."
python3 -m venv venv
source venv/bin/activate

echo "⬇️ Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "📁 Checking for pretrained model..."
if [ ! -f retrieval/models/your_model.pth ]; then
    echo "⚠️ Pretrained model not found in retrieval/models/."
    echo "Please download it manually as described in the documentation."
    exit 1
fi

echo "🚀 Starting the server..."
python image_retrieval_cnn.py

echo "🌐 Access the app at: http://$(hostname -I | awk '{print $1}'):8080"