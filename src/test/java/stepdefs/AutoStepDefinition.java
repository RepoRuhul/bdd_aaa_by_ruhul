package stepdefs;

import java.util.List;
import java.util.Map;

import base.TestBase;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class AutoStepDefinition extends TestBase{

	@When("user click submit button")
	public void user_click_submit_button() {
		homePage.clickSubmitBtn();
	}

	@Then("verify zipcode error message is {string}")
	public void verify_zipcode_error_message_is(String string) {
		homePage.verifyErrorMsgText(string);
	}

	@When("user input zipcode {string}")
	public void user_input_zipcode(String string) {
		homePage.inputZipCodeField(string);
	}

	@Then("verify zipcode length is {string}")
	public void verify_zipcode_length_is(String string) {
		homePage.verifyLength(string);
	}

	@When("user input zipcode <zipCode>")
	public void user_input_zipcode(DataTable table) {
		List<String> zipCodes = table.asList();
		for(String zipCode : zipCodes) {
			homePage.inputZipCodeField(zipCode);
		}
	}

	@Then("verify zipcode length is <length>")
	public void verify_zipcode_length_is(DataTable table) {
		Map<String, String> map = table.asMap();
		for(String key : map.keySet()) {
			homePage.verifyLength(map.get(key));
		}
	}
	
	@When("user clear zipcode field")
	public void user_clear_zipcode_field() {
		homePage.clearZipCodeField();
	}
	
}
