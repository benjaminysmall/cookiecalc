require 'rails_helper'

RSpec.describe "save_states/show", type: :view do
  before(:each) do
    assign(:save_state, SaveState.create!(
      encoded_string: "Encoded String"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Encoded String/)
  end
end
