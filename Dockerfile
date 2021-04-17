FROM python:slim
LABEL maintainer="fgierlinger"
RUN apt-get -y update && apt-get -y install git
RUN pip install commitizen
ENTRYPOINT ["cz", "check", "-m"]
