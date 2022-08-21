# NB: jars added to raydp need to be local i.e. on the machine that creates a spark cluster
FROM rayproject/ray:1.12.1-py38-cpu
RUN sudo apt-get update
RUN sudo apt-get install -y default-jre
ENV JAVA_HOME "/usr"
RUN pip install mlflow gcsfs scikit-learn py4j raydp-nightly
