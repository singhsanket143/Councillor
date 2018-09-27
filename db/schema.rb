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

ActiveRecord::Schema.define(version: 2018_09_27_064520) do

  create_table "academic_years", force: :cascade do |t|
    t.integer "start_year"
    t.integer "end_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "academic_years_course_outcomes", id: false, force: :cascade do |t|
    t.integer "academic_year_id", null: false
    t.integer "course_outcome_id", null: false
    t.index ["academic_year_id", "course_outcome_id"], name: "acad_course_outcome"
    t.index ["course_outcome_id", "academic_year_id"], name: "course_outcome_acad"
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "batches", force: :cascade do |t|
    t.string "batch_code"
    t.integer "academic_year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "semester_id"
    t.integer "admin_user_id"
    t.index ["academic_year_id"], name: "index_batches_on_academic_year_id"
    t.index ["admin_user_id"], name: "index_batches_on_admin_user_id"
    t.index ["semester_id"], name: "index_batches_on_semester_id"
  end

  create_table "course_outcomes", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_outcomes_courses", id: false, force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "course_outcome_id", null: false
    t.index ["course_id", "course_outcome_id"], name: "c_co"
    t.index ["course_outcome_id", "course_id"], name: "co_c"
  end

  create_table "courses", force: :cascade do |t|
    t.string "code"
    t.string "title"
    t.integer "semester_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["semester_id"], name: "index_courses_on_semester_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.integer "sem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "academic_year_id"
    t.index ["academic_year_id"], name: "index_semesters_on_academic_year_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "enrollment_no"
    t.integer "year"
    t.string "group"
    t.string "remark", default: "Regular"
    t.string "contact"
    t.string "cet_roll_no"
    t.integer "cet_rank"
    t.string "fathers_name"
    t.string "mothers_name"
    t.date "dob"
    t.string "gender"
    t.integer "pcode", default: 23
    t.string "programme", default: "BTECH"
    t.integer "institute_code", default: 964
    t.text "address"
    t.string "fathers_profession"
    t.string "category"
    t.integer "academic_year_id"
    t.integer "batch_id"
    t.index ["academic_year_id"], name: "index_users_on_academic_year_id"
    t.index ["batch_id"], name: "index_users_on_batch_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
