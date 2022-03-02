# Flutter : Integration Testing

## Topics Covered
- Introduction
- Pre-requisite
- How to Create Project
- Application Walk through
- Folder Structure Wal through
- Running Application - android, web 
- Integration Test Setup
- Running Integration Test
- Report Integration
- Other Scope

### Introduction
 A single platform for web, ios, android app.

### Pre-requisite
| Flutter SDK Download | [https://docs.flutter.dev/get-started/install/macos][PlDb] |
| Flutter Extension | [VS Code platform ]
| Setup Test | ````flutter doctor ````

### How to Create Project
- Navigate to desired directory
- Run command ````flutter create <project name> ````
- Run command ````flutter pub get ````

### Application Walkthrough
A simple application with 2 pages and navigations on Button Click.
 - Demo

### Folder Structure Walkthrough
 - lib folder
 - android, ios, web etc folder
 - pubspec.yaml file and pubspec-lock.ymal file
 - dependency structure

### Running Application
 - In Emulator
 - In Web 
 -    To Run in web,, enable via - ````flutter config --enable-web ````
      and Reload the IDE.

### Integration Test Setup and Folder Structure
 - Dependencies
 - Current project folder structure
 - Some basic of Dart,, Whatever we used in code
 - Finders, BasePage, Widget Initialization, Page, Test
 - How to develop the automation Script - Getting Locators
 - Detailed of Finders, Test folder
 - Test file walk through

### Running Integration Test
 - Dependencies
 - Running All Tests or A single File
 - Run command ```` DEVICE=<device_name> ./testRunner.sh  ````
 
### Reporting
 - dot dart reporter
 - junit reporter

### Further Scope
 - We can integrate with Jenkins by Running Test on FireBase Test Lab
 - CircleCi also support e2e CI/CD integration 

Stay Tunned for those configuration level details.




