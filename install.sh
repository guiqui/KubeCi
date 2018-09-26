echo “Installing Local persiting volume” 
kubectl create -f local_pv.yml

echo “Installin jenkin”

kubectl create -f jenkins_pvc.yml
kubectl create -f  jenkins_dep.yml
kubectl create -f jenkins_sev.yml

echo “Installin Postgres“

kubectl create -f pq_pvc.yml
kubectl create -f pq_dep.yml
kubectl create -f pq_sev.yml

echo “Installin Sonnar”
kubectl create -f sonar_dep.yml
kubectl create -f sonnar_sev.yml