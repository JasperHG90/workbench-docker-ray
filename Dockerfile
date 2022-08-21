#rayproject/ray:latest-py38-cpu
FROM rayproject/ray:1.12.1-py38-cpu
RUN sudo apt-get update
RUN sudo apt-get install -y default-jre
RUN mkdir ~/jars
RUN wget https://repo1.maven.org/maven2/io/delta/delta-core_2.12/2.0.0/delta-core_2.12-2.0.0.jar -O ~/jars/delta-core_2.12-2.0.0.jar
RUN wget https://repo1.maven.org/maven2/com/google/cloud/bigdataoss/gcs-connector/hadoop2-2.2.7/gcs-connector-hadoop2-2.2.7.jar -O ~/jars/gcs-connector-hadoop2-2.2.7.jar
RUN pip install mlflow gcsfs scikit-learn
