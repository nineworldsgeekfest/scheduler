require 'rails_helper'

RSpec.describe "tracks/edit", type: :view do
  before(:each) do
    @track = assign(:track, Track.create!(
      :name => "MyString",
      :short_description => "MyString",
      :long_description => "MyText",
      :link_img => "MyString",
      :conference => nil
    ))
  end

  it "renders the edit track form" do
    render

    assert_select "form[action=?][method=?]", track_path(@track), "post" do

      assert_select "input#track_name[name=?]", "track[name]"

      assert_select "input#track_short_description[name=?]", "track[short_description]"

      assert_select "textarea#track_long_description[name=?]", "track[long_description]"

      assert_select "input#track_link_img[name=?]", "track[link_img]"

      assert_select "input#track_conference_id[name=?]", "track[conference_id]"
    end
  end
end
