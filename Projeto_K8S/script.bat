echo "Criando as imagens..."

docker built -t denilsonbonatti/projeto-backend:1.0 backend/.
docker push denilsonbonatti/projeto-database:1.0 database/.

echo "Push imagens..."

docker push denilsonbonatti/projeto-backend:1.0
docker push denilsonbonatti/projeto-database:1.0

echo "Criando Cluster kubernetes"

kubectl apply -f ./service.yml

echo "Criando deploymentes"

kubectl apply -f ./deployment.yml