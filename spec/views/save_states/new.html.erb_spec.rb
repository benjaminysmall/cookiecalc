require 'rails_helper'

RSpec.describe "save_states/new", type: :view do
  before(:each) do
    assign(:save_state, SaveState.new(
      encoded_string: "MyString"
    ))
  end

  it "renders new save_state form" do
    render

    assert_select "form[action=?][method=?]", save_states_path, "post" do

      assert_select "input[name=?]", "save_state[encoded_string]"
    end
  end
end
