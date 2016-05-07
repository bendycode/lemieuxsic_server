require 'rails_helper'

RSpec.describe "set_lists/show", type: :view do
  before(:each) do
    @set_list = assign(:set_list, SetList.create!(
      target_length_in_seconds: 1,
      name: "Rock the house"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
  end
end
