package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import base.PageBase;

public class SignInPage extends PageBase{
	
   public SignInPage(WebDriver driver) {
		super(driver);
		
	}

By link_signUp=By.xpath("//a[text()=\"Sign Up\"]");

By input_userName=By.xpath("//div[@id=\"email\"]//input");
By input_password=By.xpath("//div[@id=\"password\"]//input");
By btn_signIn=By.xpath("//button[@type=\"submit\"]");
   
   public void signUp() {
	   clickElement(driver,link_signUp);
   }
   
   public void fillSignIn(String email, String password) {
	   moveToWrite(driver,input_userName, email);
	 //  setElement(input_userName,email);
	   //setElement(input_password,password);
	   moveToWrite(driver,input_password, password);
	  moveToANDClick(driver,btn_signIn);
	  sleep(6000);
   }
   
}
