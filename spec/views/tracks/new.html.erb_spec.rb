require 'rails_helper'

RSpec.describe "tracks/new", type: :view do
  before(:each) do
    assign(:track, Track.new(
      :name => "MyString",
      :short_description => "MyString",
      :long_description => "MyText",
      :link_img => "MyString",
      :conference => nil
    ))
  end

  it "renders new track form" do
    render

    assert_select "form[action=?][method=?]", tracks_path, "post" do

      assert_select "input#track_name[name=?]", "track[name]"

      assert_select "input#track_short_description[name=?]", "track[short_description]"

      assert_select "textarea#track_long_description[name=?]", "track[long_description]"

      assert_select "input#track_link_img[name=?]", "track[link_img]"

      assert_select "input#track_conference_id[name=?]", "track[conference_id]"
    end
  end
end
