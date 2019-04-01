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

ActiveRecord::Schema.define(version: 2019_04_01_000940) do

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "post_id_id"
    t.integer "comment_id_id"
    t.integer "user_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id_id"], name: "index_favorites_on_comment_id_id"
    t.index ["post_id_id"], name: "index_favorites_on_post_id_id"
    t.index ["user_id_id"], name: "index_favorites_on_user_id_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.integer "category_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id_id"], name: "index_genres_on_category_id_id"
  end

  create_table "post_comments", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.string "image_file_id"
    t.string "remarks"
    t.integer "user_id_id"
    t.integer "post_help_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_help_id_id"], name: "index_post_comments_on_post_help_id_id"
    t.index ["user_id_id"], name: "index_post_comments_on_user_id_id"
  end

  create_table "post_helps", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.string "image_file_id"
    t.string "remarks"
    t.integer "user_id_id"
    t.integer "tame_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tame_id_id"], name: "index_post_helps_on_tame_id_id"
    t.index ["user_id_id"], name: "index_post_helps_on_user_id_id"
  end

  create_table "tames", force: :cascade do |t|
    t.string "tame_name"
    t.integer "genre_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id_id"], name: "index_tames_on_genre_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.boolean "admin", default: false
    t.string "name"
    t.integer "age"
    t.string "prefectural"
    t.string "city_ward"
    t.string "profile_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
