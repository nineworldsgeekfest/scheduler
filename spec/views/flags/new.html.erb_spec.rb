require 'rails_helper'

RSpec.describe "flags/new", type: :view do
  before(:each) do
    assign(:flag, Flag.new(
      :name => "MyString",
      :flag_type => "MyString"
    ))
  end

  it "renders new flag form" do
    render

    assert_select "form[action=?][method=?]", flags_path, "post" do

      assert_select "input#flag_name[name=?]", "flag[name]"

      assert_select "input#flag_flag_type[name=?]", "flag[flag_type]"
    end
  end
end
