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

ActiveRecord::Schema.define(version: 20180811053822) do

  create_table "administrators", force: true do |t|
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
  end

  add_index "administrators", ["email"], name: "index_administrators_on_email", unique: true, using: :btree
  add_index "administrators", ["reset_password_token"], name: "index_administrators_on_reset_password_token", unique: true, using: :btree

  create_table "applications", force: true do |t|
    t.integer  "student_id",                 null: false
    t.integer  "vacant_id",                  null: false
    t.boolean  "contacted",  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "RFC",                                    null: false
    t.string   "name",                                   null: false
    t.string   "business_activity",                      null: false
    t.string   "address",                                null: false
    t.string   "zip_code",                               null: false
    t.string   "phone_number",                           null: false
    t.boolean  "civil_association",      default: false, null: false
    t.string   "res_name",                               null: false
    t.string   "res_schedule",                           null: false
    t.string   "res_phone_number",                       null: false
    t.string   "res_email",                              null: false
    t.string   "online",                 default: "0"
    t.boolean  "validate",               default: false
    t.boolean  "confirmed_email",        default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "companies", ["RFC"], name: "index_companies_on_RFC", unique: true, using: :btree
  add_index "companies", ["email"], name: "index_companies_on_email", unique: true, using: :btree
  add_index "companies", ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true, using: :btree

  create_table "contacts", force: true do |t|
    t.integer  "company_id", null: false
    t.integer  "student_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departaments", force: true do |t|
    t.string   "description", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departaments", ["description"], name: "index_departaments_on_description", unique: true, using: :btree

  create_table "groups", force: true do |t|
    t.string   "group",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["group"], name: "index_groups_on_group", unique: true, using: :btree

  create_table "messages", force: true do |t|
    t.integer  "contact_id",                       null: false
    t.boolean  "emisor_is_student", default: true, null: false
    t.text     "message",                          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professional_strengths", force: true do |t|
    t.integer  "departament_id", null: false
    t.text     "description",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "description", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "services", ["description"], name: "index_services_on_description", unique: true, using: :btree

  create_table "students", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "control_number",                         null: false
    t.string   "CURP",                                   null: false
    t.string   "name",                                   null: false
    t.string   "last_name",                              null: false
    t.string   "mother_last_name",                       null: false
    t.integer  "departament_id"
    t.integer  "group_id"
    t.string   "phone_number"
    t.string   "zip_code"
    t.string   "previous_school"
    t.integer  "age"
    t.text     "professional_strengths"
    t.text     "attitudinal_strengths"
    t.text     "work_experience"
    t.text     "ideal_job"
    t.boolean  "registration",           default: false
    t.boolean  "online",                 default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "students", ["control_number"], name: "index_students_on_control_number", unique: true, using: :btree
  add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true, using: :btree

  create_table "vacants", force: true do |t|
    t.integer  "company_id",                              null: false
    t.string   "name",                                    null: false
    t.integer  "departament_id",                          null: false
    t.integer  "service_id",                              null: false
    t.text     "function",                                null: false
    t.integer  "vacancy_numbers",                         null: false
    t.string   "working_hours",                           null: false
    t.string   "reference_name_1",                        null: false
    t.string   "reference_number_phone_1",                null: false
    t.string   "reference_name_2",                        null: false
    t.string   "reference_number_phone_2",                null: false
    t.text     "benefits",                                null: false
    t.text     "observations"
    t.boolean  "active",                   default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
