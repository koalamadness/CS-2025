# Computer Science 

## 2025/06/16
###Java
+ Space Invaders started
+  Opción: -3.4e+038
🟢 Correcto: float en Java tiene un rango de aproximadamente ±3.4e38, así que sí cabe.

+✅ Legal, aunque pierde precisión:
1000L no cabe en un byte (>127), pero el cast es explícito, así que compila.
Resultado sería desbordado, pero compilación = legal.

## 2025/06/13
###Java
+ var needs to be initialized
+ Start of Sandfoundry quiz
  ![image](https://github.com/user-attachments/assets/cf4ffbe0-ba28-44c0-b784-30dfc479ca56)
  ![image](https://github.com/user-attachments/assets/1653491c-c25d-4b7f-8487-0d3a2377e4ec)
  ![image](https://github.com/user-attachments/assets/e52222b0-3c45-4363-b626-685cc91f2ac6)
  ![image](https://github.com/user-attachments/assets/113ed578-b968-405f-88cc-b3944d7d6638)
  ![image](https://github.com/user-attachments/assets/f54468e8-cdd2-4044-8301-d975f41cf65e)
  ![image](https://github.com/user-attachments/assets/7ddbcbf6-e1e4-46ee-8b16-cc375076ded7)
  ![image](https://github.com/user-attachments/assets/64f9cd4f-f40c-485b-addb-59a1b5f1c09a)




## 2025/06/12
###Java
+ Chrome Dinosaur write & read to file
+ CMS Content Management System
+ Spring Initializer
![image](https://github.com/user-attachments/assets/2c2031cc-9b94-438a-ac72-b0d01baff9bb)
![image](https://github.com/user-attachments/assets/5dc0bdd7-48e3-429a-a802-8f02aebd9300)
![image](https://github.com/user-attachments/assets/b2c19b3c-b1ca-4fbd-984f-c486e33dc3b9)

  
## 2025/06/11
###Java
+ Chrome Dinosaur Completed
+ Primitive types access RAM
 ![image](https://github.com/user-attachments/assets/4cfcb5b1-7bc4-4639-9ad0-84b02973aa72)
+ Does not allow the use of non-initialized variable
![image](https://github.com/user-attachments/assets/f3f4a2be-d028-4246-81aa-6427aecf99f6)
![image](https://github.com/user-attachments/assets/bd0a1891-692a-4064-adc3-369c16058f13)
![image](https://github.com/user-attachments/assets/7c46a4b9-f1dd-4ce6-aa68-783b5f6e7163)
![image](https://github.com/user-attachments/assets/34a07f83-16c3-49fc-9593-92632938cbd8)
+Constructor for all required dependencies, setters for optional dep
+What is an embbeded server? Ex. Tomcat, Yeti etc
+ Actuator
+ 
Dependency Injection - is nothing but a buzz phrase that means giving a class it's variables from outside the class. If you have a setter method that passes in an object reference to set a variable, that's dependency injection. If you have a constructor that passes in an object reference to set a variable, that's dependency injection. If you use an annotation to have a container (such as glassfish, jboss, etc.) inject an instance variable, that's dependency injection. It's just a fancy buzz word for something that you more than likely have already done using constructors and setters.

Maven - is a build tool. What is a build tool? It is a tool to compile, test and then package up your application into whatever format you like i.e. jar, war, ear, etc. Maven provides a default project structure (directory structure) and a pom file (this is just a config file in xml) to configure how you want to do the above operations on your project e.g. you may want to skip some tests, you may want to have your jar file put into certain locations, etc. Maven also provides dependency management (of libraries you need in your project) and "plugins" that greatly extend it's use. For example, you can add plugins to generate reports about your project such as code coverage, unit test coverage, etc. There a tons of plugins for different things. Good thing about Maven is that everything you do in it is managed from the pom file. No need to download plugins manually and configure them, etc. It's all done by writing it into the pom. If I were you I would use maven in every project. I love it. The default ant scripts that are used in Netbeans, eclipse, etc. aren't as good in my opinion.

What's a framework (in java) - in layman's terms, it's nothing but a collection of jar files (aka "libraries" or "api's") that contain some handy code written by nice people to perform a given task, so that you don't have to write that stuff yourself from scratch. A framework is geared towards different things of course. You could have a framework that is aimed at creating web applications, managing databases, etc.

Spring - is an application framework. In saying that, it's quite broad. It covers many things such as web app creation, transaction management, dependency injection (using annotations, which isn't provided by default in standard java libraries, but I'm open to correction on that), etc. I wouldn't get bogged down in Spring (or frameworks in general) just yet. Out of all the frameworks, I personally found it to be not so beginner friendly.

JUnit - is a "unit testing" library. It let's you write tests for your classes methods i.e. if I pass X into method Y, make sure the result coming back out is always Z; or not depending on your required functionality.

Buzzwords, in my opinion, do nothing but stifle beginners when all they describe are very simple things. Here's a couple that got me early on that I have also used above:

Library/Libraries - a jar file / jar files that provide specific functionality. e.g. JUnit is a jar file that contains classes that will test your code, ApachePOI is a jar file that contains classes that let you perform operations on excel documents.

API - An API describes what a library should do, it doesn't actually implement it. For example, the Java Persistence API (JPA) is a specification (a document from a bunch of Java experts) that says: if you want to manage (create, read, update, delete) stuff in a database using Java, here is what you should do. Then anyone is free to take that specification and implement it how they see fit. By doing this you get many different flavours of JPA e.g. Hibernate, TopLink, OpenJPA. Each has their own interpretation of the specification. The above three are now "libraries", that are based off the API/specification.
  
## 2025/06/10
###Java
+ Started Chrome Dinosaur
+ @Controller & RequestMapping Annotation
+ endpoint example: /about /contact
  ![image](https://github.com/user-attachments/assets/b0362923-09dd-4f7c-a18a-524425e7e403)
+ mapping mistake
  ![image](https://github.com/user-attachments/assets/ba685e42-ff95-4924-854e-a32591d20d99)
+ breakpoint: marker to tell the IDE where to pause || step over / step into / step out
+ build project automatically / allow automake
+ settings: port, DB credentials, custom
+ @Value() will get value associated with key and inject it
+ Configuring Application Properties
  ![image](https://github.com/user-attachments/assets/85775be4-8e6b-4316-9e48-41d84e0fe895)
  ![image](https://github.com/user-attachments/assets/a1fc22dc-576d-4682-b09b-9824c522ecf6)
+ Dependency Injection
+ Tightly coupled / decouple
 ![image](https://github.com/user-attachments/assets/2839fb2c-9aef-47d2-80f0-a29e0c14de83)
+ Inject object into a class
+ https://dethstrobe.com/blog/20250118-10-things-i-wish-i-knew/


## 2025/06/06
###Java
+ Snake Game completed
![image](https://github.com/user-attachments/assets/81563550-12e4-4895-b536-0c1c35dd7351)

## 2025/06/05
###Java
+ Snake Game until snakeHead movement
+ Tiobe Index
+ Processor Nucleus (?
  ![image](https://github.com/user-attachments/assets/51b3e295-1782-4d83-87eb-208c06ee9006)
+ .class Bytecode -> JVM
### Linux
+UNiplexed Information Computing System. The Full Form of UNIX (also referred to as UNICS) is UNiplexed Information Computing System

## 2025/06/04
###Java
+ Build tools Maven Gradel
+ Development Environment
+ Dependencies: third parthy libraries or frameworks used in our app
+ Remove versions as Spring Boot updates
![image](https://github.com/user-attachments/assets/f46a68fa-91b6-4734-ab5c-88c0ce57ad1f)
+ Anotation: label or tag to give instructions or additional context to the compiler applied to classes, methods, etc

### Linux Commands
+ head -n 10 file.txt
+ tail -n 10 file.txt
+ less file.txt
+ less -N file.txt
+ cd ../..
+ touch some_file.txt
+ mkdir new_file
+ mv credit_cards/tbills.txt investments/
+  rm -r passwords/
+  cp 2020.csv backups/
+  grep "CRITICAL" 2024-01-10.log


