# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_18_204406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "family_member_child_parents", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "parent_id", null: false
    t.integer "child_id", null: false
  end

  create_table "family_members", force: :cascade do |t|
    t.string "fname", null: false
    t.string "lname", null: false
    t.string "sex", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nickname"
  end

  create_table "spouses", force: :cascade do |t|
    t.integer "partner_1_id", null: false
    t.integer "partner_2_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "current_spouse", default: false
  end

end
