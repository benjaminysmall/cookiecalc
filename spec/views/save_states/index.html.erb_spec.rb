require 'rails_helper'

RSpec.describe "save_states/index", type: :view do
  before(:each) do
    assign(:save_states, [
      SaveState.create!(
        encoded_string: "Encoded String"
      ),
      SaveState.create!(
        encoded_string: "Encoded String"
      )
    ])
  end

  it "renders a list of save_states" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Encoded String".to_s), count: 2
  end
end
