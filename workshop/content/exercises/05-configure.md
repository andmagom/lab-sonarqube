We must create the Project  on SonarQube platform for our repository.

Please, open the Sonarqube link 

```dashboard:open-url
url: http://sonar-{{session_namespace}}.{{ingress_domain}}
```
### Log In
Log in to SonarQube with:

**username:** admin <br>
**password:** admin

### Create Project
In order to add a project to sonar, click on: 

 1. Add Project -> Manually

 2. Fill ProjectKey and DisplayName inputs and save the Project Key, we are going to need that value for scanning our repository. Click on Setup

3. Generate a token and save it  


