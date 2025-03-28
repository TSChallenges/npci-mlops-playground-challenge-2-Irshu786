# pull python base image
FROM python:3.10

# add requirements file & trained model
COPY requirements.txt .

COPY random_forest_model.pkl .

# update pip
RUN pip install --upgrade pip

# install dependencies
RUN pip install -r requirements.txt

# add application file
COPY app.py .

# expose port where your application will be running
EXPOSE 7860

# start application
CMD ["python", "app.py"]

#docker build -t my-bike-rental-application:v1 .
#docker tag my-bike-rental-application:v1 aliirshadurrahman/my-bike-rental-application:v1
#docker push aliirshadurrahman/my-bike-rental-application:v1
#docker run --network=host -p 7860:7860 aliirshadurrahman/my-bike-rental-application:v1


##Open the app on http://localhost:7860
