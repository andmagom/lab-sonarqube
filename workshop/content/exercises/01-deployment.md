We need deploy an instance of Sonarqube, so we've created  the following deployment

```copy
apiVersion: apps/v1
kind: Deployment
metadata:
  name: sonarqube-deployment
  labels:
    app: sonarqube
spec:
  replicas: 1
  selector:
    matchLabels:
      app: sonarqube
  template:
    metadata:
      labels:
        app: sonarqube
    spec:
      containers:
      - name: sonarqube
        image: sonarqube:community
        ports:
        - containerPort: 9000
        resources:
          requests:
            memory: "64Mi"
            cpu: "250m"
          limits:
            memory: "1000Mi"
            cpu: "1000m"

```
We just need to apply this file to create our Sonarqube instance
```execute
kubectl apply -f files/sonar.yaml
```
This should output
```
deployment.apps/sonarqube-deployment created
```
If you want to verify if your deployment is running, you can execute
```execute
kubectl get deployments
```
This should output
```
NAME                   READY   UP-TO-DATE   AVAILABLE   AGE
sonarqube-deployment   1/1     1            1           40s
```