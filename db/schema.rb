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

ActiveRecord::Schema[7.0].define(version: 2022_07_20_112534) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "homeowner_insurances", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "phone", null: false
    t.integer "assessment", null: false
    t.string "address", null: false
    t.string "zip", null: false
    t.string "city", null: false
    t.string "province", null: false
    t.string "language", null: false
    t.string "homeowner_names", null: false, array: true
    t.integer "type_of_property", null: false
    t.string "existing_homeowner"
    t.string "purchase_date", null: false
    t.string "lot_numbers", null: false
    t.string "property_address", null: false
    t.string "property_city", null: false
    t.string "property_zip", null: false
    t.boolean "bound_by_water", null: false
    t.boolean "on_municipal_water", null: false
    t.boolean "title_insurance_already_issued", null: false
    t.boolean "denied_for_insurance", null: false
    t.text "notes"
    t.string "referral_agent_name"
    t.string "referral_agent_email"
    t.string "request_a_callback_phone", null: false
    t.integer "request_a_callback_best_moment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
