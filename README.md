# OpenData-Profinit

## About project
This project is dedicated to get data from API and show it to the costumer.


## Before you run this app, you need to make following steps:

1. Change values in application.properties to your values:
 * server=server.port
 * database name
 * database user
 * user password

2. Also you need to setup path on what API is. Path settings are in retrofitconfiguration class.
* retrofitconfiguration class
## How to run app:
You have to have maven installed. Next you need only to run maven and he automatically load all dependencies
from pom.xml file. After maven load all dependencies run application by starting main project class. 
SpringBoot already have tomcat inside so application can run without any server configuration.
