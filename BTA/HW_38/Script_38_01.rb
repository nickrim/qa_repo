require "json"
require "selenium-webdriver"
gem "test-unit"
require "test/unit"

class Script38RubyTest < Test::Unit::TestCase

  def setup
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://www.mortgagecalculator.org/"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end
  
  def teardown
    @driver.quit
    assert_equal [], @verification_errors
  end
  
  def test_script38_ruby
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
    @driver.find_element(:name, "param[property_tax]").send_keys "0"
    @driver.find_element(:name, "param[pmi]").clear
    @driver.find_element(:name, "param[pmi]").send_keys "0"
    @driver.find_element(:css, "input[type=\"submit\"]").click
    verify { assert_equal "$2,529.62", @driver.find_element(:css, "td > h3").text }
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
  rescue Test::Unit::AssertionFailedError => ex
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
