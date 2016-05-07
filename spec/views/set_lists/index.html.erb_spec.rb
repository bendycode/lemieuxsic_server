require 'rails_helper'

RSpec.describe "set_lists/index", type: :view do
  before(:each) do
    assign(:set_lists, [
      SetList.create!(
        target_length_in_seconds: 1,
        name: "Rock the house!"
      ),
      SetList.create!(
        target_length_in_seconds: 1,
        name: "Rock the other house!"
      )
    ])
  end

  it "renders a list of set_lists" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
