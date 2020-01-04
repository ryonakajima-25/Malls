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

ActiveRecord::Schema.define(version: 20200104091814) do

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
    t.integer  "goods_count"
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

  create_table "goods", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "brand_id"
    t.integer  "developer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "nices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "space_id"
    t.integer  "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_nices_on_space_id", using: :btree
    t.index ["tenant_id"], name: "index_nices_on_tenant_id", using: :btree
  end

  create_table "spaces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "location",                             null: false
    t.string   "mall_name",                            null: false
    t.integer  "floor",                                null: false
    t.integer  "block_number",                         null: false
    t.decimal  "area",         precision: 6, scale: 2, null: false
    t.integer  "rent"
    t.string   "sector"
    t.string   "image"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
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

  add_foreign_key "nices", "spaces"
  add_foreign_key "nices", "tenants"
  add_foreign_key "spaces", "developers"
end
