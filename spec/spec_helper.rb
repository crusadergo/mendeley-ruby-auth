require "mendeley/auth"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.disable_monkey_patching!
  config.order = :random
  config.warnings = true
  # config.profile_examples = 3

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  Kernel.srand config.seed
end
