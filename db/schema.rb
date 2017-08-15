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

ActiveRecord::Schema.define(version: 20170815054430) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authenticate_twitters", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigserial "twitter_user_id", null: false
    t.string "access_token", null: false
    t.string "access_token_secret", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["twitter_user_id"], name: "index_authenticate_twitters_on_twitter_user_id", unique: true
    t.index ["user_id"], name: "index_authenticate_twitters_on_user_id"
  end

  create_table "content_twitter_images", force: :cascade do |t|
    t.bigint "content_id", null: false
    t.string "image_key", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_content_twitter_images_on_content_id"
  end

  create_table "contents", force: :cascade do |t|
    t.bigint "user_id"
    t.uuid "uuid", null: false
    t.string "source_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contents_on_user_id"
  end

  create_table "taggees", force: :cascade do |t|
    t.bigint "content_twitter_images_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_twitter_images_id"], name: "index_taggees_on_content_twitter_images_id"
    t.index ["user_id"], name: "index_taggees_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
