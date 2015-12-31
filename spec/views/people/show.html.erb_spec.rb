require 'rails_helper'

RSpec.describe "people/show", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :bio => "MyText",
      :link_bio => "Link Bio",
      :link_img => "Link Img",
      :full_name => "Full Name",
      :prefix => "Prefix",
      :forename => "Forename",
      :surname => "Surname"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Link Bio/)
    expect(rendered).to match(/Link Img/)
    expect(rendered).to match(/Full Name/)
    expect(rendered).to match(/Prefix/)
    expect(rendered).to match(/Forename/)
    expect(rendered).to match(/Surname/)
  end
end
