# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2026_09_06_164325) do
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
    t.string "color", default: "neutral"
    t.boolean "public", default: true, null: false
    t.string "validation", default: "draft", null: false
    t.string "type"
    t.index ["type"], name: "index_assets_on_type"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "asset_id", null: false
    t.bigint "era_id", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "coming", default: false, null: false
    t.index ["asset_id", "era_id"], name: "index_comments_on_asset_id_and_era_id", unique: true
    t.index ["asset_id"], name: "index_comments_on_asset_id"
    t.index ["era_id"], name: "index_comments_on_era_id"
  end

  create_table "eras", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "source"
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "start_year"
    t.date "end_year"
  end

  add_foreign_key "comments", "assets"
  add_foreign_key "comments", "eras"
end
