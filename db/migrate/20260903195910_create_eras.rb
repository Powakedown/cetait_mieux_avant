class CreateEras < ActiveRecord::Migration[7.1]
  def change
    create_table :eras do |t|
      t.string :name
      t.string :description
      t.string :source
      t.string :question

      t.timestamps
    end
  end
end
