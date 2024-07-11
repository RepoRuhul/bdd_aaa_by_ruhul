package stepdefs;

import java.util.Map;
import base.TestBase;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import loggers.Loggers;

public class CommonSteps extends TestBase{

	@Given("homepage title is {string}")
	public void homepage_title_is(String string) {
		homePage.verifyTitleText(string);
	}
	
	@Given("sub-title is {string}")
	public void sub_title_is(String string) {
		homePage.verifySubTitleText(string);
	}

	@Given("footer is {string}")
	public void footer_is(String string) {
		homePage.verifyFooterText(string);
	}
	
	@Then("verify homepage title is {string}")
	public void verify_homepage_title_is(String string) {
		homePage.verifyHomePageTitleText(getDriver(),string);
	}
	
	@Given("print <msg>")
	public void printMsg(DataTable dataTable) {
	    // Write code here that turns the phrase above into concrete actions
	    // For automatic transformation, change DataTable to one of
	    // E, List<E>, List<List<E>>, List<Map<K,V>>, Map<K,V> or
	    // Map<K, List<V>>. E,K,V must be a String, Integer, Float,
	    // Double, Byte, Short, Long, BigInteger or BigDecimal.
	    //
	    // For other transformations you can register a DataTableType.
	    
		Map<String, String> map = dataTable.asMap();
		for(Map.Entry<String, String> entry : map.entrySet()) {
			Loggers.log(entry.getKey());
		}
	}
}
