package Runner;
import org.testng.annotations.DataProvider;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(features = "src/test/Resource/Feature",
				  glue = {"apiStepDef"},
				  plugin = {"html:target/cucumber-reports","json:target/cucmber.json"},
				  monochrome = true,
				  publish = true)


public class TestRunner extends AbstractTestNGCucumberTests {
	/*
	 * @DataProvider public Object [][] Scenario(){
	 * 
	 * return super.scenarios(); }
	 */
}
