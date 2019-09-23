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

ActiveRecord::Schema.define(version: 2019_09_15_030000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "host_company"
    t.string "organizer_company"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "minutes_session"
    t.boolean "evoting", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "page_contents", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "poll_banks", force: :cascade do |t|
    t.bigint "poll_id"
    t.bigint "poll_voter_id"
    t.bigint "poll_candidate_id"
    t.index ["poll_candidate_id"], name: "index_poll_banks_on_poll_candidate_id"
    t.index ["poll_id"], name: "index_poll_banks_on_poll_id"
    t.index ["poll_voter_id"], name: "index_poll_banks_on_poll_voter_id"
  end

  create_table "poll_candidates", force: :cascade do |t|
    t.bigint "poll_id"
    t.string "subject"
    t.string "description"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poll_id"], name: "index_poll_candidates_on_poll_id"
  end

  create_table "poll_voters", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "register_id"
    t.string "evote_code", limit: 8
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_poll_voters_on_event_id"
    t.index ["register_id"], name: "index_poll_voters_on_register_id"
  end

  create_table "polls", force: :cascade do |t|
    t.bigint "event_id"
    t.string "name"
    t.string "description"
    t.string "max_votes", default: "1"
    t.datetime "start_session"
    t.datetime "end_session"
    t.integer "minutes_session"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_polls_on_event_id"
  end

  create_table "registers", force: :cascade do |t|
    t.bigint "event_id", default: 1
    t.string "full_name"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "phone_number_2"
    t.string "identity_number"
    t.float "purchase_amount", default: 0.0
    t.integer "drawing_chance", default: 0
    t.string "ticket_number", limit: 3
    t.integer "status", default: 0
    t.integer "category", default: 0
    t.string "employee_id"
    t.boolean "attendance", default: true
    t.boolean "checkin", default: false
    t.boolean "draw_allowed", default: true
    t.string "company"
    t.string "department"
    t.string "info_1"
    t.string "info_2"
    t.string "info_3"
    t.string "info_4"
    t.string "info_5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_registers_on_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.date "birthday"
    t.string "password_digest"
    t.string "remember_digest"
    t.integer "role", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

end
