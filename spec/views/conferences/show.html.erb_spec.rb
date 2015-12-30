require 'rails_helper'

RSpec.describe "conferences/show", type: :view do
  before(:each) do
    @conference = assign(:conference, Conference.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
