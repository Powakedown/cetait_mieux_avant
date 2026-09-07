class CreateBonus < ActiveRecord::Migration[7.1]
  def change
    create_table :bonuses do |t|
      t.string :name

      t.timestamps
    end
    add_index :bonuses, :name, unique: true
  end
end
