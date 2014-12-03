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

ActiveRecord::Schema.define(version: 20141024110453) do

  create_table "assuntos", force: true do |t|
    t.string   "assunto"
    t.integer  "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "niveis", force: true do |t|
    t.string   "nivel",      limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.integer  "usuario_id"
    t.datetime "data"
    t.string   "conteudo"
    t.integer  "assunto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["assunto_id"], name: "index_posts_on_assunto_id"
  add_index "posts", ["usuario_id"], name: "index_posts_on_usuario_id"

  create_table "usuarios", force: true do |t|
    t.string   "nome",       limit: 100
    t.string   "email",      limit: 140
    t.string   "login",      limit: 50
    t.string   "senha",      limit: 32
    t.date     "nascimento"
    t.boolean  "ativo"
    t.integer  "nivel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["nivel_id"], name: "index_usuarios_on_nivel_id"

end
