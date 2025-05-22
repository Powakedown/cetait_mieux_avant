class CreateAssets < ActiveRecord::Migration[7.1]
  def change
    create_table :assets do |t|
      t.string :name
      t.string :comment
      t.string :source
      t.string :start_year
      t.string :end_year
      t.integer :order

      t.timestamps
    end
  end
end
