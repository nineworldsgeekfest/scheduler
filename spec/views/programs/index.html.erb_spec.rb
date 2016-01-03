require 'rails_helper'

RSpec.describe "programs/index", type: :view do
  before(:each) do
    assign(:programs, [
      Program.create!(
        :title => "Title",
        :subtitle => "Subtitle",
        :activity_type => "Activity Type",
        :short_description => "Short Description",
        :long_description => "MyText",
        :loc => "Loc",
        :mins => 1,
        :conference => nil
      ),
      Program.create!(
        :title => "Title",
        :subtitle => "Subtitle",
        :activity_type => "Activity Type",
        :short_description => "Short Description",
        :long_description => "MyText",
        :loc => "Loc",
        :mins => 1,
        :conference => nil
      )
    ])
  end

  it "renders a list of programs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Subtitle".to_s, :count => 2
    assert_select "tr>td", :text => "Activity Type".to_s, :count => 2
    assert_select "tr>td", :text => "Short Description".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Loc".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # the following were scaffolded by rails, but make no sense at present
    # assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
