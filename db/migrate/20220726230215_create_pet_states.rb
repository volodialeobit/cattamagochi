class CreatePetStates < ActiveRecord::Migration[7.0]
  def change
    create_table :pet_states do |t|
      t.string :hunger
      t.string :happiness

      t.references :pet

      t.timestamps
    end
  end
end
