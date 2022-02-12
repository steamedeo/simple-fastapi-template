FROM python:3.9

# set the workdir
WORKDIR /app

# expose port
EXPOSE 8080

# copy the code into the workdir
COPY . .

# make script executable and install dependencies
RUN chmod a+x scripts/install.sh scripts/run.sh \
    && ./scripts/install.sh

# run the application
CMD ./scripts/run.sh

