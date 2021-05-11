In order to execute sonar-scanner, run the following command on your code repository.
 
Remember to change: 
* sonar.host.url 
* sonar.login 
* sonar.projectKey

```copy
sonar-scanner \
  -Dsonar.projectKey=educates-operator \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://sonar-{{session_namespace}}.{{ingress_domain}}:9000 \
  -Dsonar.login=247fb82bbe15b31ba98aab20595c75ae49840381
```