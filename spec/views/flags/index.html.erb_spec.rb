require 'rails_helper'

RSpec.describe "flags/index", type: :view do
  before(:each) do
    assign(:flags, [
      Flag.create!(
        :name => "Name",
        :flag_type => "Flag Type"
      ),
      Flag.create!(
        :name => "Name",
        :flag_type => "Flag Type"
      )
    ])
  end

  it "renders a list of flags" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Flag Type".to_s, :count => 2
  end
end
