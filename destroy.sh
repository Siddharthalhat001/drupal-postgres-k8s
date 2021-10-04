
#!bin/bash
echo "Destroying ConfigMap....."
kubectl delete -f configmap-drupal.yaml  
echo "Destroying Secrets....."
echo
kubectl delete -f postgres-secrets.yaml  
echo "Done with Destruction of configMap and Postgres-Secrets !"
echo
echo  "Now starting to terminate drupal and postgres....."
kubectl delete -f drupal.yaml   
echo "Terminating the postgres....."
echo "almost done....."
kubectl delete -f postgres.yaml
echo "Successfully Destroyed everything"
echo
echo "Destroyed in seconds"


