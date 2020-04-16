FROM ubuntu:20.04

# Set the working directory to /docker-perforce
WORKDIR /docker-perforce

# Download Perforce server
RUN apt-get update && apt-get -y install wget
RUN wget ftp://ftp.perforce.com/perforce/r18.1/bin.linux26x86_64/p4d
RUN wget ftp://ftp.perforce.com/perforce/r18.1/bin.linux26x86_64/p4

# Copy the current directory contents into the container at /docker-perforce
COPY . /docker-perforce

# Install Perforce
RUN chmod +x install-perforce
RUN ./install-perforce

# Make port 80 available to the world outside this container
EXPOSE 1666