FROM floydhub/pytorch:latest-gpu-py3

RUN pip3 install torch==1.2.0+cu92 torchvision==0.4.0+cu92 -f https://download.pytorch.org/whl/torch_stable.html

RUN pip install --upgrade pip

RUN pip install --no-cache-dir numpy scipy scikit-learn nltk emoji

RUN pip install --no-cache-dir pandas cupy-cuda92

RUN pip install --no-cache-dir boto boto3 fastText

RUN git clone https://github.com/facebookresearch/fastText/ && cd fastText && make

RUN python3 -m nltk.downloader 'averaged_perceptron_tagger' 'punkt'

RUN pip install --no-cache-dir fairseq

ENV PATH=${PATH}:/fastText/
