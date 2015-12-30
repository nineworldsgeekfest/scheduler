require 'rails_helper'

feature 'homepage' do
  context 'without further setup' do

    scenario 'should appear in a headless browser', js: true do
      expect { visit '/' }.not_to raise_error
    end

    scenario 'should appear in standard tests' do
      expect { visit '/' }.not_to raise_error
    end

  end
end
