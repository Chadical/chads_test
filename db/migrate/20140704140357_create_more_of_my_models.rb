class CreateMoreOfMyModels < ActiveRecord::Migration
  def change
    create_table :more_of_my_models do |t|
      t.string :you_betcha
      t.integer :how_many
      t.references :my_model, index: true

      t.timestamps
    end
  end
end
