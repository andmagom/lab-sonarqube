We need to expose our deployment , so we've created the following service

```copy
apiVersion: v1
kind: Service
metadata:
  name: sonarqube-svc
spec:
  type: ClusterIP
  selector:
    app: sonarqube
  ports:
  - port: 9000
    protocol: TCP
```

We just need to apply this file to create our Sonarqube instance
```execute
kubectl apply -f files/sonar.yaml
```
This should output
```
service/sonarqube-svc created
```
If you want to verify if your service was created, you can execute
```execute
kubectl describe service sonarqube-svc
```
Please, verify if there is a value on the Endpoinds field