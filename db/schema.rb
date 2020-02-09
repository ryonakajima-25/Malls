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

ActiveRecord::Schema.define(version: 20200206131047) do

  create_table "brands", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                         null: false
    t.string   "category_large",               null: false
    t.string   "category_small",               null: false
    t.string   "target_sex",                   null: false
    t.string   "target_age",                   null: false
    t.integer  "area_max",                     null: false
    t.integer  "area_min",                     null: false
    t.text     "sales_record",   limit: 65535
    t.integer  "user_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["user_id"], name: "index_brands_on_user_id", using: :btree
  end

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "image",      null: false
    t.integer  "space_id"
    t.integer  "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_images_on_brand_id", using: :btree
    t.index ["space_id"], name: "index_images_on_space_id", using: :btree
  end

  create_table "likes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "space_id"
    t.integer  "brand_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_likes_on_brand_id", using: :btree
    t.index ["space_id"], name: "index_likes_on_space_id", using: :btree
    t.index ["user_id"], name: "index_likes_on_user_id", using: :btree
  end

  create_table "spaces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "location",                                         null: false
    t.string   "mall_name",                                        null: false
    t.integer  "floor",                                            null: false
    t.integer  "block_number",                                     null: false
    t.decimal  "area",         precision: 6, scale: 2,             null: false
    t.integer  "rent",                                             null: false
    t.integer  "sector",                               default: 0
    t.integer  "user_id"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.index ["user_id"], name: "index_spaces_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "company",                default: "", null: false
    t.integer  "genre",                               null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "brands", "users"
  add_foreign_key "likes", "users"
  add_foreign_key "spaces", "users"
end
