class AddComingToComments < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :coming, :boolean, default: false, null: false
  end
end
