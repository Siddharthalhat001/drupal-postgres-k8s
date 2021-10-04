
#!bin/bash
echo "Initializing ConfigMap....."
kubectl apply -f configmap-drupal.yaml  

echo "Creating Secrets....."
kubectl apply -f postgres-secrets.yaml  
echo
echo "Done with Setting-up configMap and Postgres-Secrets !"
echo

echo  "Now starting to start drupal and postgres....."
kubectl apply -f drupal.yaml   
echo "Drupal is UP"

echo "Starting the postgres....."
echo "almost done....."
kubectl apply -f postgres.yaml
echo "Postgres Successfully Started"
echo
echo "If you are able see this message | It means everything is running"


