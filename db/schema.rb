# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160311001552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accepts", force: :cascade do |t|
    t.integer  "job_id"
    t.integer  "student_id"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "accepts", ["company_id"], name: "index_accepts_on_company_id", using: :btree
  add_index "accepts", ["job_id"], name: "index_accepts_on_job_id", using: :btree
  add_index "accepts", ["student_id"], name: "index_accepts_on_student_id", using: :btree

  create_table "applies", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "applies", ["job_id"], name: "index_applies_on_job_id", using: :btree
  add_index "applies", ["student_id"], name: "index_applies_on_student_id", using: :btree

  create_table "approvals", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "approvals", ["company_id"], name: "index_approvals_on_company_id", using: :btree
  add_index "approvals", ["job_id"], name: "index_approvals_on_job_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "full_name"
    t.string   "company_name"
    t.string   "phone_number"
  end

  add_index "companies", ["email"], name: "index_companies_on_email", unique: true, using: :btree
  add_index "companies", ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true, using: :btree

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.integer  "resume_id"
    t.string   "company_name"
    t.string   "position"
    t.date     "start_work"
    t.date     "end_work"
    t.boolean  "is_current"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "experiences", ["resume_id"], name: "index_experiences_on_resume_id", using: :btree

  create_table "jobs", force: :cascade do |t|
    t.string   "job_title"
    t.string   "job_type"
    t.text     "address"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.text     "short_desc"
    t.text     "job_desc"
    t.text     "requirement"
    t.text     "benefit"
    t.boolean  "is_paid"
    t.integer  "salary"
    t.string   "salary_interval"
    t.date     "start_period"
    t.date     "end_period"
    t.time     "start_work"
    t.time     "end_work"
    t.datetime "deadline"
    t.string   "urgency"
    t.string   "difficulties"
    t.string   "main_category"
    t.string   "second_category"
    t.boolean  "active"
    t.integer  "company_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "jobs", ["company_id"], name: "index_jobs_on_company_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.text     "content"
    t.integer  "conversation_id"
    t.integer  "student_id"
    t.integer  "company_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "messages", ["company_id"], name: "index_messages_on_company_id", using: :btree
  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["student_id"], name: "index_messages_on_student_id", using: :btree

  create_table "portfolios", force: :cascade do |t|
    t.integer  "resume_id"
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "portfolios", ["resume_id"], name: "index_portfolios_on_resume_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.text     "address"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "website"
    t.string   "field"
    t.text     "description"
    t.integer  "company_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  add_index "profiles", ["company_id"], name: "index_profiles_on_company_id", using: :btree

  create_table "resumes", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "gender"
    t.date     "birth_date"
    t.string   "phone_number"
    t.text     "address"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "postal_code"
    t.string   "university"
    t.string   "major"
    t.string   "level"
    t.date     "grad_year"
    t.float    "gpa"
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.string   "linkedin_url"
    t.string   "googleplus_url"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "resume_image_file_name"
    t.string   "resume_image_content_type"
    t.integer  "resume_image_file_size"
    t.datetime "resume_image_updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "resumes", ["student_id"], name: "index_resumes_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "full_name"
    t.string   "nim"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true, using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  add_foreign_key "accepts", "companies"
  add_foreign_key "accepts", "jobs"
  add_foreign_key "accepts", "students"
  add_foreign_key "applies", "jobs"
  add_foreign_key "applies", "students"
  add_foreign_key "approvals", "companies"
  add_foreign_key "approvals", "jobs"
  add_foreign_key "experiences", "resumes"
  add_foreign_key "jobs", "companies"
  add_foreign_key "messages", "companies"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "students"
  add_foreign_key "portfolios", "resumes"
  add_foreign_key "profiles", "companies"
  add_foreign_key "resumes", "students"
end
