#!/bin/bash

# Update package index
sudo apt update

# Install Java (required for Elasticsearch and Logstash)
sudo apt install -y openjdk-11-jdk

# Install Elasticsearch
sudo apt install -y apt-transport-https
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-7.x.list
sudo apt update
sudo apt install -y elasticsearch

# Start and enable Elasticsearch service
sudo systemctl start elasticsearch
sudo systemctl enable elasticsearch

# Install Logstash
sudo apt install -y logstash

# Install Kibana
sudo apt install -y kibana

# Start and enable Kibana service
sudo systemctl start kibana
sudo systemctl enable kibana

# Print information about accessing ELK Stack components
echo "ELK Stack components have been installed successfully."
echo "Elasticsearch: http://localhost:9200"
echo "Kibana: http://localhost:5601"
