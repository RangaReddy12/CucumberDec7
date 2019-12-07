package testRunner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features= {"FeatureFiles"},glue= {"stepDefinitions"},
tags= {"@scenariowithDatatable"},monochrome=true,
plugin= {"com.cucumber.listener.ExtentCucumberFormatter:Reports/report.html","pretty", "html:target/cucumber-reports"})
public class Runner1 {

}
