# Use Ubuntu as the base image
FROM ubuntu:latest

# Install required dependencies
RUN apt update && apt install -y \
    build-essential \
    git \
    curl \
    procps

# Install Homebrew
RUN curl -fsSL -o install.sh https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh && \
    /bin/bash install.sh && \
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && \
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /root/.bashrc

# Install Hugo using Homebrew
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && brew install hugo

# Set the working directory for the Hugo project
WORKDIR /site

# Expose port 1313 for the Hugo server
EXPOSE 1313

# Default to starting a bash session
CMD ["bash"]
