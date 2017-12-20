- Name: Conor Tighe
- Id: G00314417
- Module: Distributed Systems

# Overview:
This is a multi-threaded distributed dictionary web service. A client hosted by maven that takes input on a JSP page and sends it to a RMI server to interact with a full dictionary, you can look up words, look up definitions and delete or edit words.

### Dictionary 
I found a dictionary online, copied it into notepad and used regular expression to get rid of white lines and formatted it in a way that I could loop through and split the word and definition into 2 Strings. I then put these 2 strings in a HashMap that is created when the server starts, The Client interacts with the HashMap to get results.

### Login:
- Username: DSProject
- password: password

## Tomcat:
The client runs on Tomcat 7 which is taken care off through a Maven plug-in:
```pom.xml:
    <build>
        <pluginManagement>
            <plugins>
                <plugin>
                    <groupId>org.apache.maven.plugins</groupId>
                    <artifactId>maven-compiler-plugin</artifactId>
                    <version>3.2</version>
                    <configuration>
                        <verbose>true</verbose>
                        <source>1.7</source>
                        <target>1.7</target>
                        <showWarnings>true</showWarnings>
                    </configuration>
                </plugin>
                <plugin>
                    <groupId>org.apache.tomcat.maven</groupId>
                    <artifactId>tomcat7-maven-plugin</artifactId>
                    <version>2.2</version>
                    <configuration>
                        <path>/</path>
                        <contextReloadable>true</contextReloadable>
                    </configuration>
                </plugin>
            </plugins>
        </pluginManagement>
    </build>
```

# Architecture:

Client:
![client](clientuml.png "Client")

Serverside:
![client](serveruml.png "Server")

## References:

-[RMI Tutorial](http://www.ejbtutorial.com/java-rmi/a-step-by-step-implementation-tutorial-for-java-rmi)

-[Java Multithreading](https://www.tutorialspoint.com/java/java_multithreading.htm)

-[Tomcat Maven Plugin](http://tomcat.apache.org/maven-plugin-2.0/tomcat7-maven-plugin/)

-[Dictionary](https://raw.githubusercontent.com/sujithps/Dictionary/master/Oxford%20English%20Dictionary.txt)