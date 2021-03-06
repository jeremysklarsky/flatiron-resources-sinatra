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

ActiveRecord::Schema.define(version: 20150304200112) do

  create_table "cohorts", force: :cascade do |t|
    t.string "name"
  end

  create_table "resource_subjects", force: :cascade do |t|
    t.integer "resource_id"
    t.integer "subject_id"
  end

  create_table "resource_tools", force: :cascade do |t|
    t.integer "resource_id"
    t.integer "tool_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string  "name"
    t.text    "description"
    t.string  "link"
    t.integer "student_id"
    t.integer "karma"
  end

  create_table "students", force: :cascade do |t|
    t.string  "name"
    t.integer "cohort_id"
    t.string  "pic_link"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
  end

end
