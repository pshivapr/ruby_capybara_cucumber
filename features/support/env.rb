require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara-screenshot/cucumber'
require 'axe-cucumber-steps'

FileUtils.remove_dir("results") if File.directory?("results")
FileUtils.mkdir_p("results") if not File.directory?("results")

Capybara.save_path = "results/screenshot"

Selenium::WebDriver::Chrome::Service.driver_path="/Users/shivapasham/Downloads/resources/chromedriver"

Capybara.default_driver = :selenium_chrome