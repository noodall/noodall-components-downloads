Feature: Downloads Component
  In order to provide down-loadable documents
  As a website editor
  I want to to create a list of documents within a template

  @javascript
  Scenario: Add some downloads
    Given I am editing content
    And place a "Downloads" component in a slot
    And attach files a want to make available to download
    When I view the content
    Then I should see a list of the files in the slot
