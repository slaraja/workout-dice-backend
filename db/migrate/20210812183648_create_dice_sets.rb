class CreateDiceSets < ActiveRecord::Migration[6.1]
  def change
    create_table :dice_sets do |t|
      t.string :name
      t.string :side

      t.timestamps
    end
  end
end
