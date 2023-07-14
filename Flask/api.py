from flask import Flask,request,jsonify
import tensorflow as tf
import librosa
import numpy as np
# import pandas as pd
# from flask_ngrok import run_with_ngrok

app = Flask(__name__)
# run_with_ngrok(app)

model = tf.keras.models.load_model('cnnmodel')

d = {0: 'TB Negative', 1: 'TB Positive'}

def func(filename):
    audio, sample_rate = librosa.load(filename)
    mfccs_features = librosa.feature.mfcc(y=audio, sr=sample_rate, n_mfcc=40)
    mfccs_scaled_features = np.mean(mfccs_features.T,axis=0)
    mfccs_scaled_features = np.repeat(mfccs_scaled_features, 1, axis=0)
    mfccs_scaled_features=mfccs_scaled_features.reshape(1, 8, 5, 1)
    predicted_label=np.argmax(model.predict(mfccs_scaled_features),axis=1)
    return d[predicted_label[0]]


@app.route('/predict',methods=['POST'])
def predict():
    if 'audio' not in request.files:
        return 'No file provided', 400

    audio_file = request.files['audio']
    if not audio_file.filename.lower().endswith('.wav'):
        return 'Invalid file type, must be .wav', 400
    preditction = func(audio_file)
    print(preditction)
    return preditction



if __name__ == '__main__':
    app.run(debug = True)
