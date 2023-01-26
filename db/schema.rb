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

ActiveRecord::Schema[7.0].define(version: 2023_01_26_173518) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "properties", force: :cascade do |t|
    t.bigint "price_current"
    t.string "subdivision"
    t.string "region"
    t.string "district"
    t.string "map_area"
    t.string "property_type"
    t.integer "mls_id"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.integer "half_bathrooms"
    t.integer "number_of_rooms"
    t.integer "lot_sqftsqft_total"
    t.integer "closed_area"
    t.integer "open_area"
    t.string "style"
    t.string "remodelled"
    t.string "possession"
    t.string "remarks_es"
    t.string "unique_id"
    t.integer "monthly_assessment"
    t.text "interior_features"
    t.text "exterior_features"
    t.text "other_services"
    t.string "lot_shape"
    t.text "directions_es"
    t.text "web_title_es"
    t.string "access"
    t.string "roof"
    t.string "flooring"
    t.string "water"
    t.string "construction"
    t.integer "parking_spaces"
    t.text "internal_features"
    t.string "link"
    t.string "leter"
    t.string "a1"
    t.string "a2"
    t.string "a3"
    t.string "a4"
    t.string "a5"
    t.string "a6"
    t.string "a8"
    t.string "a9"
    t.string "a10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
