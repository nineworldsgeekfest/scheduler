require 'rails_helper'

RSpec.describe "people/edit", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :bio => "MyText",
      :link_bio => "MyString",
      :link_img => "MyString",
      :full_name => "MyString",
      :prefix => "MyString",
      :forename => "MyString",
      :surname => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    assert_select "form[action=?][method=?]", person_path(@person), "post" do

      assert_select "textarea#person_bio[name=?]", "person[bio]"

      assert_select "input#person_link_bio[name=?]", "person[link_bio]"

      assert_select "input#person_link_img[name=?]", "person[link_img]"

      assert_select "input#person_full_name[name=?]", "person[full_name]"

      assert_select "input#person_prefix[name=?]", "person[prefix]"

      assert_select "input#person_forename[name=?]", "person[forename]"

      assert_select "input#person_surname[name=?]", "person[surname]"
    end
  end
end
