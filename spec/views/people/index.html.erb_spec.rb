require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :bio => "MyText",
        :link_bio => "Link Bio",
        :link_img => "Link Img",
        :full_name => "Full Name",
        :prefix => "Prefix",
        :forename => "Forename",
        :surname => "Surname"
      ),
      Person.create!(
        :bio => "MyText",
        :link_bio => "Link Bio",
        :link_img => "Link Img",
        :full_name => "Full Name",
        :prefix => "Prefix",
        :forename => "Forename",
        :surname => "Surname"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Link Bio".to_s, :count => 2
    assert_select "tr>td", :text => "Link Img".to_s, :count => 2
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Prefix".to_s, :count => 2
    assert_select "tr>td", :text => "Forename".to_s, :count => 2
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
  end
end
