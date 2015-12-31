require 'rails_helper'

RSpec.describe "tracks/show", type: :view do
  before(:each) do
    @track = assign(:track, Track.create!(
      :name => "Name",
      :short_description => "Short Description",
      :long_description => "MyText",
      :link_img => "Link Img",
      :conference => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Short Description/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Link Img/)
    expect(rendered).to match(//)
  end
end
