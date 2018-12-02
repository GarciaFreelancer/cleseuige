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

ActiveRecord::Schema.define(version: 2018_12_02_181035) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classcourses", force: :cascade do |t|
    t.string "name"
    t.string "period"
    t.boolean "available"
    t.bigint "course_id"
    t.bigint "former_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_classcourses_on_course_id"
    t.index ["former_id"], name: "index_classcourses_on_former_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.boolean "visible"
    t.boolean "available"
    t.bigint "category_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.bigint "image_file_size"
    t.datetime "image_updated_at"
    t.decimal "price"
    t.index ["category_id"], name: "index_courses_on_category_id"
  end

  create_table "formers", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.string "literary_habilitation"
    t.string "address"
    t.bigint "user_id"
    t.bigint "classcourse_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classcourse_id"], name: "index_subscriptions_on_classcourse_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.boolean "admin", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "classcourses", "courses"
  add_foreign_key "classcourses", "formers"
  add_foreign_key "courses", "categories"
  add_foreign_key "subscriptions", "classcourses"
  add_foreign_key "subscriptions", "users"
end
