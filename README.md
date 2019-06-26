# floydhub-pytorch-valohai

[Docker hub page](https://hub.docker.com/r/chpoit/floydhub-pytorch-valohai)

## Publishing the docker image

### Through docker (must be collaborator on there)
Building the docker:
```
docker build -t chpoit/floydhub-pytorch-valohai:TAG_NUMBER .
```

Pushing the docker
```
docker push chpoit/floydhub-pytorch-valohai:TAG_NUMBER 
```

### Through git
You can also create a new tag and push it to github for an automated build.

Creating a tag:
```
git tag -a TAG_NAME -m "SOME MESSAGE (Optional, but useful)"
```
Pushing the tag:
```
git push origin TAG_NAME
```


## Description
This is a fork of floydhub/pytorch containing various additions:

pip:
- nunpy
- scipy
- scikit-learn
- nltk
- emoji
- pandas
- cupy
- boto
- boto3
- fasttext

fastText:
- built and added to path for command line execution

nltk packages:
- averaged_perceptron_tagger
- punkt
