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

ActiveRecord::Schema.define(version: 20170910171217) do

  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.integer "school_id"
    t.index ["school_id"], name: "index_classrooms_on_school_id"
  end

  create_table "classrooms_subjects", force: :cascade do |t|
    t.integer "classroom_id"
    t.integer "subject_id"
    t.index ["classroom_id"], name: "index_classrooms_subjects_on_classroom_id"
    t.index ["subject_id"], name: "index_classrooms_subjects_on_subject_id"
  end

  create_table "classrooms_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "classroom_id"
    t.integer "as"
    t.index ["classroom_id"], name: "index_classrooms_users_on_classroom_id"
    t.index ["user_id"], name: "index_classrooms_users_on_user_id"
  end

  create_table "homeworks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "deadline"
    t.integer "subject_id"
    t.integer "classroom_id"
    t.integer "created_by_id"
    t.integer "edited_by_id"
    t.index ["classroom_id"], name: "index_homeworks_on_classroom_id"
    t.index ["created_by_id"], name: "index_homeworks_on_created_by_id"
    t.index ["edited_by_id"], name: "index_homeworks_on_edited_by_id"
    t.index ["subject_id"], name: "index_homeworks_on_subject_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title"
    t.string "color"
    t.integer "teacher_id"
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.text "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

end
