gcloud compute instances create servidor-web-1 \
    --zone=us-central1-a \
    --machine-type=e2-micro \
    --subnet=subred-us \
    --image-family=debian-11 \
    --image-project=debian-cloud \
    --tags=web-server \
    --metadata=startup-script='#!/bin/bash
    sudo apt-get update -y
    sudo apt-get install -y nginx
    sudo systemctl enable nginx
    sudo systemctl start nginx'

# Una sola línea
gcloud compute instances create servidor-web-1 --zone=us-central1-a --machine-type=e2-micro --subnet=subred-us --image-family=debian-11 --image-project=debian-cloud --tags=web-server --metadata=startup-script='./startup-script.sh'