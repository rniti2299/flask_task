#Create a ubuntu base image with python 3 installed.
FROM python:3

#Set the working directory
WORKDIR /python-docker

#copy all the files
COPY . .

#Install the dependencies
RUN apt-get -y update
RUN pip3 install -r requirements.txt

#Run the command
CMD [“python3”, "-m", "flask", "run", "--host=0.0.0.0"]
