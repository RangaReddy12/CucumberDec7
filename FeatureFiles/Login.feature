Feature: Admin Login
@scenariowithoutDatatable
Scenario: Verify Login Functionality
     When I open OrangeHRMS URL on chrome
    And I enter username in usernameField and enter password
     When I click Login Button
    Then I Should see Welcome Link on Home Page
    When I close the browser
@scenariowithDatatable
    Scenario Outline: Login Functionality Validation
    When I open OrangeHRMS URL on "<Browser>"
    And I enter "<UserName>" in usernameField
    And I enter "<Password>" in passwordField
    When clicking Login Button
    Then I Should see dashboard in url
    When Closingbrowser
    Examples:
    |Browser|UserName|Password|
    |Chrome|Admin|Qedge123!@#|
    |Firefox|Admin|admin123|
    |Chrome|Admin|admin123|
    |Firefox|Admin|Qedge123!@#|
    |Chrome|Admin|admin123|
    |Firefox|Admin|Qedge123!@#|