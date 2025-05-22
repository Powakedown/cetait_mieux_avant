ActiveRecord::Schema[7.1].define(version: 2025_05_22_135430) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", force: :cascade do |t|
    t.string "name"
    t.string "comment"
    t.string "source"
    t.string "start_year"
    t.string "end_year"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
