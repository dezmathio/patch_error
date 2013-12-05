Feature: Test the HTTP Patch Request
@javascript
Scenario: Click on the button that makes an HTTP Patch Request and check all the params are sent
  Given I am on our test page
  When I click the special button
  Then I should see a proper response