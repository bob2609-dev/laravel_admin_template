# Use the official MongoDB image as the base image
FROM mongo:latest

# Set the working directory
WORKDIR /usr/src/app

# Copy the MongoDB configuration file to the container
COPY ./Docker/mongod.conf /etc/mongod.conf


# Set the log path
RUN mkdir -p /var/log/mongodb
RUN touch /var/log/mongodb/mongod.log
RUN chmod -R 777 /var/log/mongodb
RUN chown -R mongodb:mongodb /var/log/mongodb
RUN sed -i 's#/var/log/mongodb/mongod.log#/proc/1/fd/1#' /etc/mongod.conf

# RUN apt-get update && apt-get install -y mongodb-clients
# RUN apt-get update && apt-get install -y mongo-tools
RUN apt-get update && apt-get install -y mongodb-org-tools

# RUN mongo admin --eval 'db.createUser({ user: "root", pwd: "root", roles: [ { role: "readWriteAnyDatabase", db: "admin" } ] });'


# Expose the default MongoDB port
EXPOSE 27017

# Start MongoDB when the container launches
CMD ["mongod", "--config --auth", "/etc/mongod.conf"]
