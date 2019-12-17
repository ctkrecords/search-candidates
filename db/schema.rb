# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_17_173537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.string "cellphone"
    t.date "birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "genre"
    t.string "status"
    t.string "industry"
    t.string "regional_candidate"
    t.string "civil_status"
    t.string "recruitment_source"
    t.string "relocate"
    t.string "email"
    t.string "actual_company"
    t.money "actual_salary", scale: 2
    t.money "variable_salary", scale: 2
    t.money "wage_aspiration", scale: 2
    t.string "position"
    t.text "comparative_chart"
    t.text "specific_benefit"
    t.text "general_benefits"
    t.text "general_comments"
    t.text "address"
    t.text "conditions_to_move"
    t.string "telephone"
    t.date "interview_date"
    t.string "nationality"
    t.index ["user_id"], name: "index_candidates_on_user_id"
  end

  create_table "careers", force: :cascade do |t|
    t.string "name"
    t.bigint "candidate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidate_id"], name: "index_careers_on_candidate_id"
  end

  create_table "education_levels", force: :cascade do |t|
    t.string "name"
    t.bigint "candidate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidate_id"], name: "index_education_levels_on_candidate_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.bigint "candidate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidate_id"], name: "index_languages_on_candidate_id"
  end

  create_table "performance_areas", force: :cascade do |t|
    t.string "name"
    t.bigint "candidate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidate_id"], name: "index_performance_areas_on_candidate_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.bigint "candidate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidate_id"], name: "index_skills_on_candidate_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "candidates", "users"
  add_foreign_key "careers", "candidates"
  add_foreign_key "education_levels", "candidates"
  add_foreign_key "languages", "candidates"
  add_foreign_key "performance_areas", "candidates"
  add_foreign_key "skills", "candidates"
end
