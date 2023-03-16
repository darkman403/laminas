# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_16_015437) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "dpersonals", force: :cascade do |t|
    t.integer "cedula", null: false
    t.string "nombre", null: false
    t.string "genero", null: false
    t.string "email", null: false
    t.string "pais", null: false
    t.string "departamento", null: false
    t.string "ciudad", null: false
    t.string "direccion", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dproductos", force: :cascade do |t|
    t.integer "cedula", null: false
    t.string "poliza", null: false
    t.integer "valaseg", null: false
    t.string "ciaaseg", null: false
    t.string "estadoseg", null: false
    t.string "pdtaseg", null: false
    t.bigint "dpersonal_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dpersonal_id"], name: "index_dproductos_on_dpersonal_id"
  end

  create_table "laminas", force: :cascade do |t|
    t.string "lamref", null: false
    t.string "lamnombre", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicituds", force: :cascade do |t|
    t.integer "cedula", null: false
    t.string "lamref", null: false
    t.string "lamnombre", null: false
    t.integer "carta"
    t.integer "empaque"
    t.datetime "enviadoen"
    t.bigint "dproducto_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dproducto_id"], name: "index_solicituds_on_dproducto_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "dproductos", "dpersonals"
  add_foreign_key "solicituds", "dproductos"
end
