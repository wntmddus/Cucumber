require 'watir-webdriver'

browser = Watir::Browser.new
Given (/^user is on qa\-test\.avenuecode\.com link and click sign in button/) do
  #browser = Watir::Browser.new
  $browser = Watir::Browser.new
  $browser.goto('http://qa-test.avenuecode.com')
  $browser.link(:text => "Sign In").when_present.click
end

Given (/^user is logging in$/) do

  $browser.text_field(:name, "user[email]").set("wntmddussla@hotmail.com")
  $browser.text_field(:name, "user[password]").set("12341234")
  $browser.button(:name, "commit").click
end
