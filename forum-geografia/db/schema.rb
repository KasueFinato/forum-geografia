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

ActiveRecord::Schema.define(version: 20140912013921) do

  create_table "niveis", force: true do |t|
    t.string   "nivel",      limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "nome",       limit: 100
    t.string   "email",      limit: 140
    t.string   "login",      limit: 50
    t.string   "senha",      limit: 15
    t.date     "nascimento"
    t.boolean  "ativo"
    t.integer  "nivel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["nivel_id"], name: "index_usuarios_on_nivel_id"

end
