require 'rspec/expectations'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'timeout'
# # require 'pry'

Capybara.default_driver = :selenium

# AfterStep('@pause') do
#   print "Press Return to continue..."
#   STDIN.getc
# end

# # Configure the base urls for frontend and backend here
 $mobileweb_url = 'http://mhigh.usatoday.com'

def base_url(path)
  $mobileweb_url + path
end


# encoding: UTF-8
# require 'selenium/webdriver'
# require 'capybara/cucumber'
# # require 'json'
# # require 'date'
require 'capybara/poltergeist'

# $base_url     = ENV["HOST_URL"] || "http://mhigh.usatoday.com"
# $alt_url      = ENV["ALT_URL"]  || "https://presto-njgroup-stage.gannettdigital.com"
# $base_company = ENV["COMPANY"]  || "Gannett"
$global_asset_path = "assets/"
$max_reload_tries  = 3
$default_timeout   = ENV['TIMEOUT'] || 30


if    ENV['LOCAL']
  Capybara.register_driver :active_browser do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
elsif ENV['HEADLESS']
  Capybara.register_driver :active_browser do |app|
    Capybara::Poltergeist::Driver.new(app, :timeout => $default_timeout)
  end
# else
#   caps = Selenium::WebDriver::Remote::Capabilities.chrome
#   caps['os']         = 'Windows'   if ENV['REMOTE']
#   caps['os_version'] = '7'         if ENV['REMOTE']
#   caps['resolution'] = '1280x1024' if ENV['REMOTE']
#   url = (ENV["SELENIUM_HOST"] || "http://davidjonathanada1:ySHo1QFg2LixvMAyDvj6@hub.browserstack.com/wd/hub")
  # Override original value if localremote is set.
  # Then { register the driver with Capybara.
  # url = 'http://127.0.0.1:4444/wd/hub' unless ENV['REMOTE'] }

  Capybara.register_driver  :active_browser do|app|
    Capybara::Selenium::Driver.new(app,
    :browser => :remote,
    :url => url,
    :desired_capabilities => caps)
  end
end

# Capybara defaults.
Capybara.default_driver    = :active_browser
Capybara.javascript_driver = :active_browser
Capybara.default_wait_time = $default_timeout
Capybara.default_selector  = :css

# Before do
#   visit $base_url
#   expect(page).to have_css ".loginContent"   # Ensure page has loaded.
#   page.driver.browser.manage.window.maximize unless ENV['HEADLESS']
# end

After do |scenario|
  # Close any extra tabs/windows that the previous test created.
  # Note that this will not work for user created tabs.
  browser = page.driver.browser
  windows = browser.window_handles
  windows.each_index do |index|
    if windows.last != windows.first
      browser.switch_to.window(windows.pop)
      browser.close
    end
  end
  browser.switch_to.window(windows.first) unless ENV['HEADLESS']
  execute_script("window.localStorage.clear()")
end
