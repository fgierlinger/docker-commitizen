FROM python:slim
LABEL maintainer="fgierlinger"
RUN pip install commitizen
ENTRYPOINT ["cz", "check", "-m"]