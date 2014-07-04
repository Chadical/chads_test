class CreateMyModels < ActiveRecord::Migration
  def change
    create_table :my_models do |t|
      t.string :title
      t.boolean :for_sure

      t.timestamps
    end
  end
end
