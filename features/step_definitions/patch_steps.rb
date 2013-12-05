Given(/^I am on our test page$/) do
  visit '/'
end

When(/^I click the special button$/) do
  find('input#do-put').click
end

Then(/^I should see a proper response$/) do
  page.should have_content('test')
  ## This is currently passing... we need a body param as well I think
  ##  since that was the one that was failing
end