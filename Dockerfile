FROM floydhub/pytorch:1.1.0-gpu.cuda9cudnn7-py3.44

RUN pip install --upgrade pip

RUN pip install --no-cache-dir numpy scipy scikit-learn nltk emoji

RUN pip install --no-cache-dir pandas cupy

RUN pip install --no-cache-dir boto boto3 fastText

RUN git clone https://github.com/facebookresearch/fastText/ && cd fastText && make

RUN python3 -m nltk.downloader 'averaged_perceptron_tagger' 'punkt'

RUN pip install --no-cache-dir fairseq

ENV PATH=${PATH}:/fastText/
