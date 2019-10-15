# You can remove this file, it is added here to show you the structure of specs.

# This 'require' imports config from spec/rails_helper.rb file.
require 'rails_helper'

# 'feature' or 'describe' is the basic block in spec where you describe the tested feature. There should be only one 'feature'/'describe' block in one file/spec.
# Use js: true to switch to the Capybara.javascript_driver and to see your specs running on real Chrome browser with interface.
# Example:
# feature 'It is just a test', js: true do

feature 'It is just a test' do

# 'context' is not a required part of spec, but it helps organizing scenarios. You can have as many contexts in one spec as you need.
# However, if you have too many, maybe it's wroth to split the spec file into more files.

  context 'with context' do
    # 'scenario' describes one test case of the feature, e.g. 'login with valid credentials' or 'login with invalid password'
    scenario 'does something' do
      visit '/'
    end
  end

  # And here is a scenario outside the context block
  scenario 'without context' do
    visit '/'
  end
end
