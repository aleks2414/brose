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

ActiveRecord::Schema.define(version: 20170601132602) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advantages", force: :cascade do |t|
    t.string   "boceto"
    t.string   "infografia"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "advantages", ["team_id"], name: "index_advantages_on_team_id", using: :btree

  create_table "capitans", force: :cascade do |t|
    t.string   "nombre"
    t.string   "departamento"
    t.string   "funcion"
    t.string   "plata"
    t.integer  "team_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "capitans", ["team_id"], name: "index_capitans_on_team_id", using: :btree

  create_table "challenges", force: :cascade do |t|
    t.string   "definicion"
    t.string   "resumen"
    t.string   "reto_innovacion"
    t.integer  "team_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "challenges", ["team_id"], name: "index_challenges_on_team_id", using: :btree

  create_table "concepts", force: :cascade do |t|
    t.string   "entrevistas"
    t.string   "propuesta"
    t.string   "boceto2"
    t.integer  "team_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "concepts", ["team_id"], name: "index_concepts_on_team_id", using: :btree

  create_table "fifth_reviews", force: :cascade do |t|
    t.integer  "prototype_id"
    t.integer  "team_id"
    t.integer  "q16"
    t.integer  "q17"
    t.integer  "q18"
    t.integer  "q19"
    t.integer  "q20"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "fifth_reviews", ["prototype_id"], name: "index_fifth_reviews_on_prototype_id", using: :btree
  add_index "fifth_reviews", ["team_id"], name: "index_fifth_reviews_on_team_id", using: :btree

  create_table "first_reviews", force: :cascade do |t|
    t.integer  "challenge_id"
    t.integer  "team_id"
    t.integer  "q1"
    t.integer  "q2"
    t.integer  "q3"
    t.integer  "q4"
    t.integer  "q5"
    t.integer  "q6"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "first_reviews", ["challenge_id"], name: "index_first_reviews_on_challenge_id", using: :btree
  add_index "first_reviews", ["team_id"], name: "index_first_reviews_on_team_id", using: :btree

  create_table "fourth_reviews", force: :cascade do |t|
    t.integer  "proposition_id"
    t.integer  "team_id"
    t.integer  "q13"
    t.integer  "q14"
    t.integer  "q15"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "fourth_reviews", ["proposition_id"], name: "index_fourth_reviews_on_proposition_id", using: :btree
  add_index "fourth_reviews", ["team_id"], name: "index_fourth_reviews_on_team_id", using: :btree

  create_table "players", force: :cascade do |t|
    t.string   "nombre"
    t.string   "departamento"
    t.string   "funcion"
    t.string   "planta"
    t.string   "work"
    t.integer  "team_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "players", ["team_id"], name: "index_players_on_team_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "nombre_proyecto"
    t.text     "descripcion"
    t.string   "enfoque"
    t.string   "division"
    t.boolean  "terminos"
    t.integer  "team_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "projects", ["team_id"], name: "index_projects_on_team_id", using: :btree

  create_table "propositions", force: :cascade do |t|
    t.string   "vpd"
    t.string   "video_pitch"
    t.integer  "team_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "propositions", ["team_id"], name: "index_propositions_on_team_id", using: :btree

  create_table "prototypes", force: :cascade do |t|
    t.string   "video_pitch2"
    t.integer  "team_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "prototypes", ["team_id"], name: "index_prototypes_on_team_id", using: :btree

  create_table "second_reviews", force: :cascade do |t|
    t.integer  "advantage_id"
    t.integer  "team_id"
    t.integer  "q7"
    t.integer  "q8"
    t.integer  "q9"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "second_reviews", ["advantage_id"], name: "index_second_reviews_on_advantage_id", using: :btree
  add_index "second_reviews", ["team_id"], name: "index_second_reviews_on_team_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "teams", ["email"], name: "index_teams_on_email", unique: true, using: :btree
  add_index "teams", ["reset_password_token"], name: "index_teams_on_reset_password_token", unique: true, using: :btree

  create_table "third_reviews", force: :cascade do |t|
    t.integer  "concept_id"
    t.integer  "team_id"
    t.integer  "q10"
    t.integer  "q11"
    t.integer  "q12"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "third_reviews", ["concept_id"], name: "index_third_reviews_on_concept_id", using: :btree
  add_index "third_reviews", ["team_id"], name: "index_third_reviews_on_team_id", using: :btree

  add_foreign_key "advantages", "teams"
  add_foreign_key "capitans", "teams"
  add_foreign_key "challenges", "teams"
  add_foreign_key "concepts", "teams"
  add_foreign_key "fifth_reviews", "prototypes"
  add_foreign_key "fifth_reviews", "teams"
  add_foreign_key "first_reviews", "challenges"
  add_foreign_key "first_reviews", "teams"
  add_foreign_key "fourth_reviews", "propositions"
  add_foreign_key "fourth_reviews", "teams"
  add_foreign_key "players", "teams"
  add_foreign_key "projects", "teams"
  add_foreign_key "propositions", "teams"
  add_foreign_key "prototypes", "teams"
  add_foreign_key "second_reviews", "advantages"
  add_foreign_key "second_reviews", "teams"
  add_foreign_key "third_reviews", "concepts"
  add_foreign_key "third_reviews", "teams"
end
