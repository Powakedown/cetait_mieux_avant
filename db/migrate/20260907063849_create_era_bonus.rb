class CreateEraBonus < ActiveRecord::Migration[7.1]
  def change
    create_table :era_bonuses do |t|
      t.references :era, null: false, foreign_key: true
      t.references :bonus, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
    add_index :era_bonuses, [:era_id, :bonus_id], unique: true
  end
end
