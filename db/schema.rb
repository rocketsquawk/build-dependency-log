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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130827230649) do

  create_table "associations", :force => true do |t|
    t.integer  "dependent_build_id"
    t.string   "dependent_project_name"
    t.string   "dependent_build_version"
    t.integer  "dependency_build_id"
    t.string   "dependency_project_name"
    t.string   "dependency_build_version"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "associations", ["dependency_build_id"], :name => "index_associations_on_dependency_build_id"
  add_index "associations", ["dependent_build_id"], :name => "index_associations_on_dependent_build_id"

  create_table "builds", :force => true do |t|
    t.integer  "project_id"
    t.string   "project_name"
    t.string   "build_version"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "builds", ["project_id"], :name => "index_builds_on_project_id"

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
