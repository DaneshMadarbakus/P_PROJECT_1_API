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

ActiveRecord::Schema.define(version: 20170503153028) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collectionids", force: :cascade do |t|
    t.integer  "influencer_id"
    t.string   "shopify_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["influencer_id"], name: "index_collectionids_on_influencer_id", using: :btree
  end

  create_table "influencers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "moniker"
    t.string   "last_name"
    t.string   "one_liner"
    t.text     "about"
    t.string   "front_pic"
    t.string   "about_pic"
    t.text     "spotify_about"
    t.string   "spotify_pic"
    t.string   "pic_1"
    t.string   "pic_2"
    t.string   "facebook_link"
    t.string   "instagram_link"
    t.string   "twitter_link"
    t.string   "website_link"
    t.string   "spotify_user_id"
    t.string   "spotify_playlist_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_foreign_key "collectionids", "influencers"
end
