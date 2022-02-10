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

Append test:

```editor:append-lines-to-file
file: ~/files/service.yaml
text: |4
        sso:
          secret: my-sso-credentials
```
Create Dashboard:
```dashboard:create-dashboard
name: "Product Documentation"
url: https://www.taringa.net
```

Update Dashboard:
```dashboard:reload-dashboard
name: "Product Documentation"
url: https://www.google.com
```



We just need to apply this file to create our Sonarqube instance
```execute
kubectl apply -f files/service.yaml
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
