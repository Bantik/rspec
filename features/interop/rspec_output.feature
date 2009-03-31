Feature: spec output

  When running in interop mode with test/unit, RSpec will output
  the RSpec summary, but not the test/unit summary.

  Scenario: Run with ruby
    Given the file ../../resources/spec/simple_spec.rb
    When I run it with the ruby interpreter
    Then the exit code should be 0
    And the stdout should not match /\d+ tests, \d+ assertions, \d+ failures, \d+ errors/m
    And the stdout should match "1 example, 0 failures"

  Scenario: Run with CommandLine object
    Given the file ../../resources/spec/simple_spec.rb
    When I run it with the CommandLine object
    Then the exit code should be 0
    And the stdout should not match "Loaded suite"
    And the stdout should not match /\d+ tests, \d+ assertions, \d+ failures, \d+ errors/m
    And the stdout should match "1 example, 0 failures"