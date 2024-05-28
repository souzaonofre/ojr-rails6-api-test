# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_05_27_092013) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "recruiter_jobs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean "status", default: true
    t.text "skills", default: [], array: true
    t.integer "recruiter_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["skills"], name: "index_recruiter_jobs_on_skills", using: :gin
    t.index ["status"], name: "index_recruiter_jobs_on_status"
  end

  create_table "recruiter_submissions", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "mobile_phone"
    t.string "resume"
    t.integer "recruiter_job_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recruiters", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
