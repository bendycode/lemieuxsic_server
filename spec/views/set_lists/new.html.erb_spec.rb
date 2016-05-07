require 'rails_helper'

RSpec.describe "set_lists/new", type: :view do
  before(:each) do
    assign(:set_list, SetList.new(
      :target_length_in_seconds => 1
    ))
  end

  it "renders new set_list form" do
    render

    assert_select "form[action=?][method=?]", set_lists_path, "post" do

      assert_select "input#set_list_target_length_in_seconds[name=?]", "set_list[target_length_in_seconds]"
    end
  end
end
