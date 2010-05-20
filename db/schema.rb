# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100316170657) do

  create_table "adm_cases", :force => true do |t|
    t.string   "titulo"
    t.text     "case"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fotocase_file_name"
    t.string   "fotocase_content_type"
    t.integer  "fotocase_file_size"
    t.datetime "fotocase_updated_at"
  end

  create_table "adm_clientes", :force => true do |t|
    t.string   "titulo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "adm_servicos", :force => true do |t|
    t.string   "tx_video"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contatos", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome"
    t.string   "email"
    t.string   "telefone"
    t.string   "empresa"
    t.text     "mensagem"
  end

  create_table "imprensas", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome"
    t.string   "email"
    t.string   "telefone"
    t.string   "empresa"
  end

  create_table "noticias", :force => true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.text     "noticia"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
    t.string   "taglist"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "taggable_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "login"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
