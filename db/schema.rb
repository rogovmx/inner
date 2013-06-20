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

ActiveRecord::Schema.define(:version => 20121121113634) do

  create_table "albums", :force => true do |t|
    t.string   "title"
    t.integer  "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "work"
  end

  create_table "albumsimgs", :force => true do |t|
    t.integer  "album_id"
    t.string   "title"
    t.string   "img"
    t.string   "prw"
    t.integer  "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                                 :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 25
    t.string   "guid",              :limit => 10
    t.integer  "locale",            :limit => 1,  :default => 0
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "fk_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_assetable_type"
  add_index "ckeditor_assets", ["user_id"], :name => "fk_user"

  create_table "confs", :force => true do |t|
    t.string   "conf"
    t.integer  "office_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dep1s", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "desk_answs", :force => true do |t|
    t.integer  "desk_subj_id"
    t.integer  "desk_subj2_id"
    t.text     "a_text"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "desk_subj2s", :force => true do |t|
    t.text     "subj"
    t.text     "s_text"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city"
  end

  create_table "desk_subjs", :force => true do |t|
    t.text     "subj"
    t.text     "s_text"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city"
  end

  create_table "deskavatars", :force => true do |t|
    t.string   "img"
    t.integer  "deskprof_id"
    t.integer  "redaktor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deskprofs", :force => true do |t|
    t.integer  "user_id"
    t.string   "nic"
    t.string   "job"
    t.integer  "deskavatar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "editansws", :force => true do |t|
    t.integer  "desk_subj_id"
    t.text     "a_text"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "editsubjs", :force => true do |t|
    t.string   "subj"
    t.text     "s_text"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forumroots", :force => true do |t|
    t.string   "title"
    t.boolean  "vis"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forumtalks", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "vis"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forumthemes", :force => true do |t|
    t.string   "title"
    t.boolean  "vis"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "holidays", :force => true do |t|
    t.integer "month"
    t.integer "day"
    t.text    "title"
  end

  create_table "office1s", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                               :null => false
    t.string   "last_name",                          :null => false
    t.string   "patronimic",                         :null => false
    t.string   "job"
    t.string   "phone"
    t.string   "mail"
    t.string   "pic"
    t.integer  "user_id"
    t.boolean  "dir",             :default => false, :null => false
    t.string   "password"
    t.text     "about"
    t.string   "login"
    t.string   "hashed_password"
    t.string   "salt"
    t.integer  "city"
    t.string   "role",                               :null => false
    t.integer  "dep1"
    t.integer  "otdel1"
    t.boolean  "dekret",          :default => false, :null => false
    t.string   "room"
  end

  create_table "otdel1s", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", :force => true do |t|
    t.integer  "desk_subj_id"
    t.string   "comment"
    t.string   "name"
    t.string   "content_type"
    t.binary   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "deskprof_id"
  end

  create_table "questionansws", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "user_answ"
    t.integer  "q_id"
  end

  create_table "questions", :force => true do |t|
    t.text     "qestion"
    t.text     "answ1"
    t.text     "answ2"
    t.text     "answ3"
    t.text     "answ4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "status1s", :force => true do |t|
    t.string   "name"
    t.string   "date"
    t.integer  "status"
    t.string   "subst"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "scr_name"
    t.string   "name"
    t.string   "last_name"
    t.string   "password"
  end

  create_table "works", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city"
  end

end
