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

ActiveRecord::Schema.define(version: 20191223095729) do

  create_table "brands", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                         null: false
    t.string   "category_large",               null: false
    t.string   "category_small",               null: false
    t.string   "target_sex"
    t.string   "target_age"
    t.integer  "area_max",                     null: false
    t.integer  "area_min",                     null: false
    t.text     "sales_record",   limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "tenant_id"
    t.string   "image"
  end

  create_table "developers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "company",                default: "", null: false
    t.string   "name",                   default: "", null: false
    t.string   "work_location",          default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "phone_number",           default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_developers_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_developers_on_reset_password_token", unique: true, using: :btree
  end

  create_table "spaces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "location",     null: false
    t.string   "mall_name",    null: false
    t.integer  "floor",        null: false
    t.integer  "block_number", null: false
    t.integer  "area",         null: false
    t.integer  "rent"
    t.string   "sector"
    t.string   "image"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "developer_id"
    t.index ["developer_id"], name: "index_spaces_on_developer_id", using: :btree
  end

  create_table "tenants", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "company",                default: "", null: false
    t.string   "name",                   default: "", null: false
    t.string   "work_location",          default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "phone_number",           default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_tenants_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_tenants_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "spaces", "developers"
end
