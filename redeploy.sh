#!/bin/bash
PROJECT=$1
{
echo "Atualizando o projeto "$PROJECT
echo "Gerando o war"
cd "..\\..\\project\\"$PROJECT
mvn clean install
echo "Copiando o war para a pasta de deploy"
cp "target\\"$PROJECT".war" "..\\..\\..\\run\\tomcat\\deploy"
echo "Atualizando a app"
curl "http://vivian:password@localhost:8080/manager/text/reload?path=/"$PROJECT
} || {
read -p "Press enter to continue"
}