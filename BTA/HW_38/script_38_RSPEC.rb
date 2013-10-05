require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "RSPEC" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://www.mortgagecalculator.org/"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end
  
  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end
  
  it "test_r_s_p_e_c" do
    @driver.get(@base_url + "/")
    @driver.find_element(:name, "param[homevalue]").clear
    @driver.find_element(:name, "param[homevalue]").send_keys "800,000"
    @driver.find_element(:name, "param[principal]").clear
    @driver.find_element(:name, "param[principal]").send_keys "600,000"
    # ERROR: Caught exception [ReferenceError: selectLocator is not defined]
    @driver.find_element(:name, "param[interest_rate]").clear
    @driver.find_element(:name, "param[interest_rate]").send_keys "3"
    # ERROR: Caught exception [ReferenceError: selectLocator is not defined]
    # ERROR: Caught exception [ReferenceError: selectLocator is not defined]
    @driver.find_element(:name, "param[property_tax]").clear
    @driver.find_element(:name, "param[property_tax]").send_keys ""
    @driver.find_element(:name, "param[pmi]").clear
    @driver.find_element(:name, "param[pmi]").send_keys ""
    @driver.find_element(:css, "input[type=\"submit\"]").click
    verify { (@driver.find_element(:css, "td > h3").text).should == "$2,529.62" }
  end
  
  def element_present?(how, what)
    @driver.find_element(how, what)
    true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
  end
  
  def alert_present?()
    @driver.switch_to.alert
    true
  rescue Selenium::WebDriver::Error::NoAlertPresentError
    false
  end
  
  def verify(&blk)
    yield
  rescue ExpectationNotMetError => ex
    @verification_errors << ex
  end
  
  def close_alert_and_get_its_text(how, what)
    alert = @driver.switch_to().alert()
    alert_text = alert.text
    if (@accept_next_alert) then
      alert.accept()
    else
      alert.dismiss()
    end
    alert_text
  ensure
    @accept_next_alert = true
  end
end
