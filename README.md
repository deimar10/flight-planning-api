## Table of Contents
* <strong>Overview</strong>
    * <strong>Backend Setup and Run Instructions 

## Backend Setup and Run Instructions
  * Ensure you have the following installed and added to your system's PATH before proceeding:
    * Java Development Kit (JDK): Version 17 or above (check version using ```java -version```)
    * Maven: Build tool for Java (check version using ```mvn -version```)
    * Docker: You can download Docker from https://www.docker.com/products/docker-desktop/
    * MySQL: You can download MySQL from https://www.mysql.com/downloads/
    * git: You can download Git from https://git-scm.com/downloads
  * Clone the Repository
    * ```git clone <repository_url>```
    * ```cd <backend_folder_name>```
  * Install dependencies using:
    * ```mvn clean install -DskipTests```
  * Run the application and database - *IMPORTANT Ensure MySQL is not running, then execute the following:*
    * ```chmod +x init-db.sh start-project.sh;```
    * ```bash start-project.sh```
    * *Note: If using Windows, make sure to run ```chmod``` commands inside Git Bash*
