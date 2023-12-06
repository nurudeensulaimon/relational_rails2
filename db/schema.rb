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

ActiveRecord::Schema[7.0].define(version: 2023_12_02_055735) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "instructor_name"
    t.string "name"
    t.integer "duration"
    t.boolean "music"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "gym_id", null: false
    t.index ["gym_id"], name: "index_events_on_gym_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "member_fee"
    t.boolean "pool_service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "gyms"
end
