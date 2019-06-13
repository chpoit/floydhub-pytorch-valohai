FROM floydhub/pytorch:1.0.1-gpu.cuda9cudnn7-py3.42

RUN pip --no-cache-dir install --upgrade http://download.pytorch.org/whl/cu80/torch-0.1.11.post5-cp35-cp35m-linux_x86_64.whl

RUN pip --no-cache-dir install --upgrade torchvision numpy scipy scikit-learn nltk emoji

RUN git clone https://github.com/facebookresearch/fastText/ && cd fastText && pip install -e . && make && export PATH=$PWD:$PATH
