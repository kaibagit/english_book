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

ActiveRecord::Schema.define(version: 2019_04_13_060713) do

  create_table "examples", force: :cascade do |t|
    t.integer "meaning_id"
    t.string "original"
    t.string "zh_meaning"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "proficiency"
  end

  create_table "meanings", force: :cascade do |t|
    t.string "kind"
    t.string "zh_meaning"
    t.string "en_meaning"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vocabulary_id"
  end

  create_table "phrases", force: :cascade do |t|
    t.integer "word_id"
    t.integer "phrase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "related_word_and_vocabularies", force: :cascade do |t|
    t.integer "related_word_id"
    t.integer "vocabulary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "related_words", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vocabularies", force: :cascade do |t|
    t.string "content"
    t.string "kind"
    t.string "soundmark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
