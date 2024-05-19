#kali linux image
FROM --platform=arm64 kalilinux/kali-rolling

# Update and upgrade
RUN apt-get update && apt-get upgrade -y

# Install tools
RUN apt-get install -y \
    nmap \
    metasploit-framework \
    sqlmap \
    hydra \
    john \
    hashcat \
    aircrack-ng \
    nikto \
    dirb \
    gobuster \
    burpsuite \
    sqlmap \
    python3 \
    python3-pip \
    && pip3 install beautifulsoup4 requests
    
# Set the working directory
WORKDIR /root

# Start the shell
CMD ["/bin/bash"]

