# floydhub-pytorch-valohai
Building the docker:
```
docker build -t chpoit/floydhub-pytorch-valohai:TAG_NUMBER .
```

Pushing the docker
```
docker push chpoit/floydhub-pytorch-valohai:TAG_NUMBER 
```

You can also create a new tag and push it to github for an automated build.

# Description
This is a fork of floydhub/pytorch containing various additions:

pip:
- nunpy
- scipy
- scikit-learn
- nltk
- emoji
- pandas
- cupy
fastText:
- Installed as a pip pacakges
- built and added to path for cmd execution

nltk packages:
- averaged_perceptron_tagger
- punkt