FROM floydhub/pytorch:1.0.1-gpu.cuda9cudnn7-py3.42

RUN pip install --upgrade pip

RUN pip install --no-cache-dir numpy scipy scikit-learn nltk emoji

RUN pip install --no-cache-dir pandas cupy

RUN pip install --no-cache-dir boto boto3

RUN git clone https://github.com/facebookresearch/fastText/ && cd fastText && pip --no-cache-dir install -e . && make

RUN python3 -m nltk.downloader 'averaged_perceptron_tagger' 'punkt'

ENV PATH=${PATH}:/fastText/
