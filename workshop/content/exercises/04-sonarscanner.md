Please download sonar-scanner on your machine from the following [link](https://docs.sonarqube.org/latest/analysis/scan/sonarscanner/)

**Note:** This step must be done on your machine, not on the kubernetes cluster.

You have to add this CLI to you PATH environment. 
Add the following line to your bashrc or zshrc file, change the BIN_SONAR_SCANNER_FOLDER for the path of your sonar scanner

```copy
export PATH={BIN_SONAR_SCANNER_FOLDER}:$PATH
```

In order to verify if your sonar-scanner is installed correctly, you can execute on your terminal:

```copy
sonar-scanner -v
```

This can be your output, it depends of your OS, sonar-scanner version, etc.

```
INFO: Scanner configuration file: /Users/andrs/bin/sonar-scanner-4.6.1.2450-macosx/conf/sonar-scanner.properties
INFO: Project root configuration file: NONE
INFO: SonarScanner 4.6.1.2450
INFO: Java 11.0.3 AdoptOpenJDK (64-bit)
INFO: Mac OS X 10.15.7 x86_64
```