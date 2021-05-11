We need to expose our deployment outside the cluster, so we've created the following ingress

```copy
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: sonarqube
spec:
  rules:
  - host: sonar-${SESSION_NAMESPACE}.${INGRESS_DOMAIN}
    http:
      paths:
      - path: "/"
        backend:
          serviceName: sonarqube-svc
          servicePort: 9000
```
We just need to apply this file to create our Sonarqube instance
```execute
kubectl apply -f files/ingress.yaml
```
This should output
```
ingress/sonarqube created
```
In this example, the URL for accessing the web application will be:

```dashboard:open-url
url: http://sonar-{{session_namespace}}.{{ingress_domain}}
```

Visit the front end web application by clicking on this link. If it shows as not being available, keep refreshing the page until it is.
