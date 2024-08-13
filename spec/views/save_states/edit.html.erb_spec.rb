require 'rails_helper'

RSpec.describe "save_states/edit", type: :view do
  let(:save_state) {
    SaveState.create!(
      encoded_string: "MyString"
    )
  }

  before(:each) do
    assign(:save_state, save_state)
  end

  it "renders the edit save_state form" do
    render

    assert_select "form[action=?][method=?]", save_state_path(save_state), "post" do

      assert_select "input[name=?]", "save_state[encoded_string]"
    end
  end
end
