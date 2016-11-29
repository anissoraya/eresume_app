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

ActiveRecord::Schema.define(version: 20161129062659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: :cascade do |t|
    t.string   "major"
    t.string   "school"
    t.string   "status"
    t.text     "location"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_educations_on_user_id", using: :btree
  end

  create_table "employment_histories", force: :cascade do |t|
    t.string   "job_title"
    t.string   "company"
    t.text     "location"
    t.boolean  "presently_emp"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_employment_histories_on_user_id", using: :btree
  end

  create_table "languages", force: :cascade do |t|
    t.string   "title"
    t.integer  "writing_rate"
    t.integer  "spoken_rate"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_languages_on_user_id", using: :btree
  end

  create_table "layouts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "layout_image_file_name"
    t.string   "layout_image_content_type"
    t.integer  "layout_image_file_size"
    t.datetime "layout_image_updated_at"
  end

  create_table "personal_details", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.integer  "postal_code"
    t.string   "phone_no"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_personal_details_on_user_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.string   "company"
    t.date     "project_date"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "link"
    t.index ["user_id"], name: "index_projects_on_user_id", using: :btree
  end

  create_table "references", force: :cascade do |t|
    t.string   "name"
    t.string   "relationship"
    t.string   "company"
    t.string   "email"
    t.string   "phone"
    t.text     "address"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_references_on_user_id", using: :btree
  end

  create_table "skills", force: :cascade do |t|
    t.string   "title"
    t.integer  "rate"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_skills_on_user_id", using: :btree
  end

  create_table "summaries", force: :cascade do |t|
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "link"
    t.index ["user_id"], name: "index_summaries_on_user_id", using: :btree
  end

  create_table "user_layouts", force: :cascade do |t|
    t.integer  "layout_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["layout_id"], name: "index_user_layouts_on_layout_id", using: :btree
    t.index ["user_id"], name: "index_user_layouts_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "subdomain"
    t.index ["email", "subdomain"], name: "index_users_on_email_and_subdomain", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

  create_table "video_galleries", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_video_galleries_on_user_id", using: :btree
  end

  add_foreign_key "educations", "users"
  add_foreign_key "employment_histories", "users"
  add_foreign_key "languages", "users"
  add_foreign_key "personal_details", "users"
  add_foreign_key "projects", "users"
  add_foreign_key "references", "users"
  add_foreign_key "skills", "users"
  add_foreign_key "summaries", "users"
  add_foreign_key "user_layouts", "layouts"
  add_foreign_key "user_layouts", "users"
end
