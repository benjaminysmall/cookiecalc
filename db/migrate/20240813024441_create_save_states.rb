class CreateSaveStates < ActiveRecord::Migration[7.2]
  def change
    create_table :save_states do |t|
      t.string :encoded_string

      t.timestamps
    end
  end
end
