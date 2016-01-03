require 'rails_helper'

RSpec.describe "programs/show", type: :view do
  before(:each) do
    @program = assign(:program, Program.create!(
      :title => "Title",
      :subtitle => "Subtitle",
      :activity_type => "Activity Type",
      :short_description => "Short Description",
      :long_description => "MyText",
      :loc => "Loc",
      :mins => 1,
      :conference => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Subtitle/)
    expect(rendered).to match(/Activity Type/)
    expect(rendered).to match(/Short Description/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Loc/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
