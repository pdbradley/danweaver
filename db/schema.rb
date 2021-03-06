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

ActiveRecord::Schema.define(version: 20151031122224) do

  create_table "class_memberships", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "schoolclass_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "class_memberships", ["schoolclass_id"], name: "index_class_memberships_on_schoolclass_id"
  add_index "class_memberships", ["student_id"], name: "index_class_memberships_on_student_id"

  create_table "schoolclasses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timeslots", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "schoolclass_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "timeslots", ["schoolclass_id"], name: "index_timeslots_on_schoolclass_id"
  add_index "timeslots", ["teacher_id"], name: "index_timeslots_on_teacher_id"

end
