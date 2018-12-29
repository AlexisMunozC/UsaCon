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

ActiveRecord::Schema.define(version: 20181229055352) do

  create_table "administrators", force: :cascade do |t|
    t.string   "email",              limit: 255, null: false
    t.string   "password_encrypted", limit: 255, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "administrators", ["email"], name: "index_administrators_on_email", unique: true, using: :btree

  create_table "applications", force: :cascade do |t|
    t.integer  "student_id", limit: 4,                 null: false
    t.integer  "vacant_id",  limit: 4,                 null: false
    t.boolean  "contacted",            default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "applications", ["student_id"], name: "fk_rails_06e63a643c", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "email",              limit: 255,                 null: false
    t.string   "password_encrypted", limit: 255,                 null: false
    t.string   "RFC",                limit: 255,                 null: false
    t.string   "name",               limit: 255,                 null: false
    t.string   "business_activity",  limit: 255,                 null: false
    t.string   "address",            limit: 255,                 null: false
    t.string   "zip_code",           limit: 255,                 null: false
    t.string   "phone_number",       limit: 255,                 null: false
    t.boolean  "civil_association",              default: false, null: false
    t.string   "res_name",           limit: 255,                 null: false
    t.string   "res_schedule",       limit: 255,                 null: false
    t.string   "res_phone_number",   limit: 255,                 null: false
    t.string   "res_email",          limit: 255,                 null: false
    t.string   "online",             limit: 255, default: "0"
    t.boolean  "validate",                       default: false
    t.boolean  "confirmed_email",                default: false
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "companies", ["RFC"], name: "index_companies_on_rfc", unique: true, using: :btree
  add_index "companies", ["email"], name: "index_companies_on_email", unique: true, using: :btree

  create_table "contacts", force: :cascade do |t|
    t.integer  "company_id", limit: 4, null: false
    t.integer  "student_id", limit: 4, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["company_id"], name: "fk_rails_42b4583938", using: :btree
  add_index "contacts", ["student_id"], name: "fk_rails_c1d4b3024c", using: :btree

  create_table "departaments", force: :cascade do |t|
    t.string   "description", limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departaments", ["description"], name: "index_departaments_on_description", unique: true, using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "group",      limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["group"], name: "index_groups_on_group", unique: true, using: :btree

  create_table "professional_strengths", force: :cascade do |t|
    t.integer  "departament_id", limit: 4,     null: false
    t.text     "description",    limit: 65535, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professional_strengths", ["departament_id"], name: "fk_rails_3e30b226e8", using: :btree

  create_table "services", force: :cascade do |t|
    t.string   "description", limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "services", ["description"], name: "index_services_on_description", unique: true, using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "email",                  limit: 255,                   null: false
    t.string   "password_encrypted",     limit: 255,                   null: false
    t.string   "control_number",         limit: 255,                   null: false
    t.string   "CURP",                   limit: 255,                   null: false
    t.string   "name",                   limit: 255,                   null: false
    t.string   "last_name",              limit: 255,                   null: false
    t.string   "mother_last_name",       limit: 255,                   null: false
    t.integer  "departament_id",         limit: 4
    t.integer  "group_id",               limit: 4
    t.string   "phone_number",           limit: 255
    t.string   "zip_code",               limit: 255
    t.string   "previous_school",        limit: 255
    t.integer  "age",                    limit: 4
    t.text     "professional_strengths", limit: 65535
    t.text     "attitudinal_strengths",  limit: 65535
    t.text     "work_experience",        limit: 65535
    t.text     "ideal_job",              limit: 65535
    t.boolean  "registration",                         default: false
    t.boolean  "online",                               default: false
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
  end

  add_index "students", ["CURP"], name: "index_students_on_CURP", unique: true, using: :btree
  add_index "students", ["control_number"], name: "index_students_on_control_number", unique: true, using: :btree
  add_index "students", ["departament_id"], name: "fk_rails_e2198e7418", using: :btree
  add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree
  add_index "students", ["group_id"], name: "fk_rails_92bb7a13fa", using: :btree

  create_table "vacants", force: :cascade do |t|
    t.integer  "company_id",               limit: 4,                    null: false
    t.string   "name",                     limit: 255,                  null: false
    t.integer  "departament_id",           limit: 4,                    null: false
    t.integer  "service_id",               limit: 4,                    null: false
    t.text     "function",                 limit: 65535,                null: false
    t.integer  "vacancy_numbers",          limit: 4,                    null: false
    t.string   "working_hours",            limit: 255,                  null: false
    t.string   "reference_name_1",         limit: 255,                  null: false
    t.string   "reference_number_phone_1", limit: 255,                  null: false
    t.string   "reference_name_2",         limit: 255,                  null: false
    t.string   "reference_number_phone_2", limit: 255,                  null: false
    t.text     "benefits",                 limit: 65535,                null: false
    t.text     "observations",             limit: 65535
    t.boolean  "active",                                 default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vacants", ["company_id"], name: "fk_rails_a83bdc7075", using: :btree
  add_index "vacants", ["departament_id"], name: "fk_rails_fc496b7fa8", using: :btree
  add_index "vacants", ["service_id"], name: "fk_rails_ebae70e135", using: :btree

  add_foreign_key "applications", "students", on_update: :cascade, on_delete: :cascade
  add_foreign_key "contacts", "companies", on_update: :cascade, on_delete: :cascade
  add_foreign_key "contacts", "students", on_update: :cascade, on_delete: :cascade
  add_foreign_key "professional_strengths", "departaments", on_update: :cascade, on_delete: :cascade
  add_foreign_key "students", "departaments", on_update: :cascade, on_delete: :cascade
  add_foreign_key "students", "groups", on_update: :cascade, on_delete: :cascade
  add_foreign_key "vacants", "companies", on_update: :cascade, on_delete: :cascade
  add_foreign_key "vacants", "departaments", on_update: :cascade, on_delete: :cascade
  add_foreign_key "vacants", "services", on_update: :cascade, on_delete: :cascade
end
