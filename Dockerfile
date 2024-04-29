FROM tensorflow/tensorflow:2.16.1

WORKDIR /project

COPY . .

RUN apt update && apt dist-upgrade -y
RUN apt install ffmpeg -y
RUN pip install -U wheel
RUN pip install -U pandas ipykernel scikit-learn numpy pillow librosa matplotlib

ENTRYPOINT ["top","-b"]