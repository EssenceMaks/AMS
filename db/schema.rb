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

ActiveRecord::Schema.define(version: 20161118042501) do

  create_table "amsfoodpictures", force: :cascade do |t|
    t.string   "titlerus"
    t.string   "titleeng"
    t.string   "titlear"
    t.text     "descriptionrus"
    t.text     "descriptioneng"
    t.text     "descriptionar"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "imagefoodpicture_file_name"
    t.string   "imagefoodpicture_content_type"
    t.integer  "imagefoodpicture_file_size"
    t.datetime "imagefoodpicture_updated_at"
  end

  create_table "amsfoods", force: :cascade do |t|
    t.string   "titlerus"
    t.string   "titleeng"
    t.string   "titlear"
    t.text     "descriptionrus"
    t.text     "descriptioneng"
    t.text     "descriptionar"
    t.integer  "user_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "imagefood_file_name"
    t.string   "imagefood_content_type"
    t.integer  "imagefood_file_size"
    t.datetime "imagefood_updated_at"
  end

  create_table "amsgrouppictures", force: :cascade do |t|
    t.string   "titlerus"
    t.string   "titleeng"
    t.string   "titlear"
    t.text     "descriptionrus"
    t.text     "descriptioneng"
    t.text     "descriptionar"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "imagegrouppicture_file_name"
    t.string   "imagegrouppicture_content_type"
    t.integer  "imagegrouppicture_file_size"
    t.datetime "imagegrouppicture_updated_at"
  end

  create_table "amsgroups", force: :cascade do |t|
    t.string   "titlerus"
    t.string   "titleeng"
    t.string   "titlear"
    t.text     "descriptionrus"
    t.text     "descriptioneng"
    t.text     "descriptionar"
    t.integer  "user_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "imagegroup_file_name"
    t.string   "imagegroup_content_type"
    t.integer  "imagegroup_file_size"
    t.datetime "imagegroup_updated_at"
  end

  create_table "amsnovosts", force: :cascade do |t|
    t.string   "titlerus"
    t.string   "titleeng"
    t.string   "titlear"
    t.text     "descriptionrus"
    t.text     "descriptioneng"
    t.text     "descriptionar"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "amsstonepictures", force: :cascade do |t|
    t.string   "titlerus"
    t.string   "titleeng"
    t.string   "titlear"
    t.text     "descriptionrus"
    t.text     "descriptioneng"
    t.text     "descriptionar"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "imagestonepicture_file_name"
    t.string   "imagestonepicture_content_type"
    t.integer  "imagestonepicture_file_size"
    t.datetime "imagestonepicture_updated_at"
  end

  create_table "amsstones", force: :cascade do |t|
    t.string   "titlerus"
    t.string   "titleeng"
    t.string   "titlear"
    t.string   "number"
    t.text     "descriptionrus"
    t.text     "descriptioneng"
    t.text     "descriptionar"
    t.integer  "category"
    t.integer  "user_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "imagestone_file_name"
    t.string   "imagestone_content_type"
    t.integer  "imagestone_file_size"
    t.datetime "imagestone_updated_at"
  end

end
