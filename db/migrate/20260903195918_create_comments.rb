class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.references :asset, null: false, foreign_key: true
      t.references :era, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
    add_index :comments, [:asset_id, :era_id], unique: true
  end
end
