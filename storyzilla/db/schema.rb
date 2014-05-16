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

ActiveRecord::Schema.define(version: 20140516185211) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contributions", force: true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "story_id"
    t.integer  "contribution_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contributions", ["contribution_id"], name: "index_contributions_on_contribution_id", using: :btree
  add_index "contributions", ["story_id"], name: "index_contributions_on_story_id", using: :btree
  add_index "contributions", ["user_id"], name: "index_contributions_on_user_id", using: :btree

  create_table "stories", force: true do |t|
    t.string   "title",                             null: false
    t.text     "beginning"
    t.boolean  "completion_status", default: false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stories", ["user_id"], name: "index_stories_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
