FROM rayproject/ray:latest-py38-cpu
RUN pip install mlflow gcsfs scikit-learn
