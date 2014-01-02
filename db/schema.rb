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

ActiveRecord::Schema.define(version: 20131229150905) do

  create_table "resume1s", force: true do |t|
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "col_sept"
  end

  create_table "resumes", force: true do |t|
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "col_sept"
  end

  create_table "targets", force: true do |t|
    t.string   "source_type"
    t.string   "source_location"
    t.string   "data"
    t.string   "source_info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trans_layouts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_step1s", force: true do |t|
    t.string   "project_name"
    t.string   "phase_name"
    t.string   "project_urls"
    t.string   "subject_area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_step2s", force: true do |t|
    t.string   "source_type"
    t.string   "source_location"
    t.string   "data"
    t.string   "source_info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "passwordsalt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
