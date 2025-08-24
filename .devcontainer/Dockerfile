FROM maven:3.9.7-eclipse-temurin-21

WORKDIR /home/app/src

# Install additional tools for development, including openssh-client
RUN apt-get update && apt-get install -y \
    git \
    openssh-client \
    curl \
    wget \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Copy project files
COPY . /home/app/src

# Expose port for Java debugging
EXPOSE 5005

# Keep the container running for VS Code
CMD ["tail", "-f", "/dev/null"]