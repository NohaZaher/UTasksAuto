#Author: Noha Zaher

 Feature: Sign up , sign in, Create task
 @firstTest
  Scenario Outline: Sign up, sign in, create new project, and create new task
   
  When user clicks on Sign up link 
  Then user fills mandatory fields as <username>, <email>,<password>,and <passwordConfirmation>  
  When user redirected to login 
  Then fill in <emailuser> and <userpassword>
  When user redirected to home page
  Then User click on add new project with <projectName> , add it, and selects it
  Then user add new task with <taskName> ,select <dueDate> from drop down menu ,and add Task
  

  Examples: 
  | username  | email              | password|passwordConfirmation|projectName|taskName  | dueDate |emailuser          | userpassword|
  | nohaada01 |nahnoa01@gmail.com  |abcde123 |abcde123            |Vodafone1  |automation|Next week|nahnoa19@gmail.com |abcde123     |
      

   @firstTest
  Scenario: Editing existing task  
  When user redirected to login 
  Then fill in <emailuser> and <userpassword>
  Then fill in <emailuser> and <userpassword>
  When user redirected to home page
  Then User selects an existing <projectName>
  Then user add new task with <taskName> ,select <dueDate> from drop down menu ,and add Task
  
  Examples:
  |emailuser          | userpassword|projectName|taskName  | dueDate |
  |nahnoa19@gmail.com |abcde123     | Vodafone1  |automation|Today   |