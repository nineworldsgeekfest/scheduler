require 'rails_helper'

RSpec.describe "flags/edit", type: :view do
  before(:each) do
    @flag = assign(:flag, Flag.create!(
      :name => "MyString",
      :flag_type => "MyString"
    ))
  end

  it "renders the edit flag form" do
    render

    assert_select "form[action=?][method=?]", flag_path(@flag), "post" do

      assert_select "input#flag_name[name=?]", "flag[name]"

      assert_select "input#flag_flag_type[name=?]", "flag[flag_type]"
    end
  end
end
