# Arquivo onde ficam as bibliotecas que serão usadas durante o teste
require 'capybara/cucumber'
require 'site_prism'
require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'faker'

Capybara.register_driver :site_prism do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
    config.run_server = false
    Capybara.default_driver = :site_prism
    Capybara.page.driver.browser.manage.window.maximize
    config.default_max_wait_time = 10
    config.app_host = 'http://automationpractice.com/index.php'
end