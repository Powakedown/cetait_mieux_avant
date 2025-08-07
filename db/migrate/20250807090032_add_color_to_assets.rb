class AddColorToAssets < ActiveRecord::Migration[7.1]
  def change
    add_column :assets, :color, :string, null: true, default: "neutral"
    add_column :assets, :public, :boolean, null: false, default: true
    add_column :assets, :validation, :string, null: false, default: "draft"
  end
end
