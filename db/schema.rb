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

ActiveRecord::Schema[7.0].define(version: 2022_11_23_200958) do
  create_table "coordinators", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_coordinators_on_email"
    t.index ["name"], name: "index_coordinators_on_name"
    t.index ["phone"], name: "index_coordinators_on_phone"
  end

  create_table "participants", force: :cascade do |t|
    t.string "registre_id", null: false
    t.string "name", null: false
    t.string "gender", null: false
    t.string "dob", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dob"], name: "index_participants_on_dob"
    t.index ["gender"], name: "index_participants_on_gender"
    t.index ["name"], name: "index_participants_on_name"
    t.index ["registre_id"], name: "index_participants_on_registre_id"
  end

  create_table "registries", force: :cascade do |t|
    t.integer "coordinator_id", null: false
    t.integer "participant_id", null: false
    t.string "name", null: false
    t.string "location", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
