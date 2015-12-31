require 'rails_helper'

RSpec.describe "tracks/index", type: :view do
  before(:each) do
    assign(:tracks, [
      Track.create!(
        :name => "Name",
        :short_description => "Short Description",
        :long_description => "MyText",
        :link_img => "Link Img",
        :conference => nil
      ),
      Track.create!(
        :name => "Name",
        :short_description => "Short Description",
        :long_description => "MyText",
        :link_img => "Link Img",
        :conference => nil
      )
    ])
  end

  it "renders a list of tracks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Short Description".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Link Img".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
