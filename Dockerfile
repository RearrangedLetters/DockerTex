FROM ubuntu:22.04

# Set the timezone
ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Update the package lists
RUN apt-get update

# Install the texlive-full package, which provides a complete LaTeX environment
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install texlive-full
