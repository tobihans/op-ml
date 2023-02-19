[![Lint Status](https://circleci.com/gh/tobihans/op-ml.svg?style=svg)](https://github.com/tobihans/op-ml.git)

## Project Overview

This project is to apply the skills I have acquired in the course to operationalize a Machine Learning Microservice API. 


## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it.
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .venv
source .venv/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


Use the script `make_prediction.sh` to then test the app.

### Project Structure
```shell
.
├── app.py
├── Dockerfile
├── Makefile
├── make_prediction.sh
├── model_data  # application model
│   ├── boston_housing_prediction.joblib
│   └── housing.csv
├── output_txt_files
│   ├── docker_out.txt  # output file after running the app with docker
│   └── kubernetes_out.txt  # output file after running the app using k8s
├── README.md # you're here
├── requirements.txt # app dependencies
├── run_docker.sh
├── run_kubernetes.sh
└── upload_docker.sh
```