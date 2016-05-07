require 'rails_helper'

RSpec.describe "set_lists/edit", type: :view do
  before(:each) do
    @set_list = assign(:set_list, SetList.create!(
      :target_length_in_seconds => 1,
      :name => "Rock the house!"
    ))
  end

  it "renders the edit set_list form" do
    render

    assert_select "form[action=?][method=?]", set_list_path(@set_list), "post" do

      assert_select "input#set_list_target_length_in_seconds[name=?]", "set_list[target_length_in_seconds]"
    end
  end
end
