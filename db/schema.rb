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

ActiveRecord::Schema.define(version: 20180111170818) do

  create_table "activities", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "category"
    t.text "photo"
    t.string "place"
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_activities_on_member_id"
  end

  create_table "collections", force: :cascade do |t|
    t.integer "member_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_collections_on_member_id"
    t.index ["product_id"], name: "index_collections_on_product_id"
  end

  create_table "knowledges", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "category"
    t.text "movie_link"
    t.string "photo_url"
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "user_id"
    t.string "password"
    t.string "name"
    t.date "birthday"
    t.string "tel"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "member_id"
    t.integer "product_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_orders_on_member_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "participates", force: :cascade do |t|
    t.integer "member_id"
    t.integer "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_participates_on_activity_id"
    t.index ["member_id"], name: "index_participates_on_member_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "store"
    t.decimal "price"
    t.string "stock"
    t.text "content"
    t.text "photo"
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_products_on_member_id"
  end

end
