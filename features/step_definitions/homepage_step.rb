

Given /^I'm on the home page$/ do
  visit ('/')
end

When /^I go to Job Seeker Login$/ do
  visit ('/users/sign_in')
end

When /^I go to Employer Login$/ do
  visit ('/employers/sign_in')
end

When /^I go to Admin Login$/ do
  visit ('/admins/sign_in')
end

When /^I go to Contact Us$/ do
  visit ('/contact/view')
end

Then /^I should see Emails and Password are required to log in as a job seeker$/ do
  page.should have_content("Job Seeker Log in")
  page.should have_content("Email")
  page.should have_content("Password")
  page.should have_content("Log in")
end

Then /^I should see Emails and Password are required to log in as an employer$/ do
  page.should have_content("Employer Log in")
  page.should have_content("Email")
  page.should have_content("Password")
  page.should have_content("Log in")
end

Then /^I should see Emails and Password are required to log in as an admin$/ do
  page.should have_content("Admin Log in")
  page.should have_content("Email")
  page.should have_content("Password")
  page.should have_content("Log in")
end

Then /^I should see contact information$/ do
  page.should have_content("Author: Shiqian Xu, Miaohua Liu, Qiyu Zhou")
  page.should have_content("Existing JobSeeker Account:")
  page.should have_content("Existing Employer Account:")
  page.should have_content("Existing Admin Account:")
end

# When /^I should go to (.+)$/ do |page_name|
#   visit path_to(page_name)
# end
#
# When /^I press "([^\"]*)"$/ do |button|
#   click_button(button)
# end
#
# When /^I click "([^\"]*)"$/ do |link|
#   click_link(link)
# end
#
 When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
   fill_in(field.gsub(' ', '_'), :with => value)
 end
#
# When /^I fill in "([^\"]*)" for "([^\"]*)"$/ do |value, field|
#   fill_in(field.gsub(' ', '_'), :with => value)
# end
#
# When /^I fill in the following:$/ do |fields|
#   fields.rows_hash.each do |name, value|
#     When %{I fill in "#{name}" with "#{value}"}
#   end
# end
#
# When /^I select "([^\"]*)" from "([^\"]*)"$/ do |value, field|
#   select(value, :from => field)
# end
#
# When /^I check "([^\"]*)"$/ do |field|
#   check(field)
# end
#
# When /^I uncheck "([^\"]*)"$/ do |field|
#   uncheck(field)
# end
#
# When /^I choose "([^\"]*)"$/ do |field|
#   choose(field)
# end
#
# Then /^I should see "([^\"]*)"$/ do |text|
#   page.should have_content(text)
# end
#
# Then /^I should see \/([^\/]*)\/$/ do |regexp|
#   regexp = Regexp.new(regexp)
#   page.should have_content(regexp)
# end
#
# Then /^I should not see "([^\"]*)"$/ do |text|
#   page.should_not have_content(text)
# end
#
# Then /^I should not see \/([^\/]*)\/$/ do |regexp|
#   regexp = Regexp.new(regexp)
#   page.should_not have_content(regexp)
# end
#
# Then /^the "([^\"]*)" field should contain "([^\"]*)"$/ do |field, value|
#   find_field(field).value.should =~ /#{value}/
# end
#
# Then /^the "([^\"]*)" field should not contain "([^\"]*)"$/ do |field, value|
#   find_field(field).value.should_not =~ /#{value}/
# end
#
# Then /^the "([^\"]*)" checkbox should be checked$/ do |label|
#   find_field(label).should be_checked
# end
#
# Then /^the "([^\"]*)" checkbox should not be checked$/ do |label|
#   find_field(label).should_not be_checked
# end
#
# Then /^I should be on (.+)$/ do |page_name|
#   current_path.should == path_to(page_name)
# end
#
# Then /^page should have (.+) message "([^\"]*)"$/ do |type, text|
#   page.has_css?("p.#{type}", :text => text, :visible => true)
# end
