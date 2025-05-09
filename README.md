# A simple image retrieval demo with pytorch and flask

This is a simple demo of image retrieval based on pretrained CNN.

## Demo.

The demo video is shown downside.
![image](https://github.com/SongKaixiang/image_retrieval_platform/blob/master/retrieval/demo.gif)

## Local Deployment

Clone the repository and run the following:

```bash
chmod +x deploy.sh
./deploy.sh
```
## Usage.

Please install requirements.txt first:

```
$ pip install requirements.txt
```

Get the pretrained CNN model from [this link](https://drive.google.com/open?id=1TG_Fq_UryffsmV045u4MJGaWB-MJqNgI)
and put the model in path "./retrieval/models/".

run the following command:

```
$ python image_retrieval_cnn.py
```

Your computer where the code run will work as a server, other terminals within the same LAN network can visit the website: http://XXX.XXX.XXX.XXX:8080/, where `XXX.XXX.XXX.XXX` is ip of the server, type "ifconfig" in command widow to get it.

# Only Test.

If you only want to test the retrieval proccess, just read the code image_retrieval_cnn.py for reference, and run the following command:

```
cd retieval/
python retrieval.py
```

The sorted images will be printed.
