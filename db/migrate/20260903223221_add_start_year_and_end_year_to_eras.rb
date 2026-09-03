class AddStartYearAndEndYearToEras < ActiveRecord::Migration[7.1]
  def change
    add_column :eras, :start_year, :date
    add_column :eras, :end_year, :date
  end
end
