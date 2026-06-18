# Habilitar OS Login a nivel de proyecto (o instancia)
gcloud compute project-info add-metadata --metadata enable-oslogin=TRUE

#Conectarnos por ssh al servidor web 1
gcloud compute ssh servidor-web-1 --zone=us-central1-a
