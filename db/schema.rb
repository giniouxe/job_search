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

ActiveRecord::Schema.define(version: 20150417131720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "offers", force: :cascade do |t|
    t.string   "job_title"
    t.string   "organisation_name"
    t.string   "agency_sub_element"
    t.string   "min_salary"
    t.string   "max_salary"
    t.string   "salary_basis"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "who_may_apply"
    t.string   "pay_plan"
    t.string   "series"
    t.string   "grade"
    t.string   "work_schedule"
    t.string   "work_type"
    t.string   "locations"
    t.string   "announcement_number"
    t.text     "job_summary"
    t.string   "apply_online_url"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
