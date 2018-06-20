# United Airlines App Project 

This repositpry contains mobile automation using Appium on United-Airlines App.  

# Test Environment
- Cucumber Framework
- Ruby Language
- RubyMine IDE
- Appium for Automation

# How to run the project
- clone the repository
- open the IDE(RubyMine)
- open the project using file tab--> open --> select project
- select the language - Ruby from preferences --> language and framework
- in terminal :
    - run gem install cucumber (if you donot install cucumber)
    - gem install appium-lib
    - cucumber -t @home
    Along with that  connect your device with your PC and open Appium Server and fill the desired capabilities and start session.
    
# How to generate a report 

- make a cucumber yml file 
   'home: --format html --out homepage.html --format pretty --tags @home,@signin'
- in terminal - run the following command:
 'cucumber -p home'
 
 - homepage.html is created in features folder .
 - right click on homepage.html file and select the option "open with browser" and select your chrome.
 - You can see your cucumber report
