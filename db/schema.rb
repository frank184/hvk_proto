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

ActiveRecord::Schema.define(version: 20151019193121) do

  create_table "addresses", force: :cascade do |t|
    t.string   "number",     limit: 255
    t.string   "street",     limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 2
    t.string   "zip",        limit: 6
    t.string   "country",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "addresses_users", id: false, force: :cascade do |t|
    t.integer "address_id", limit: 4, null: false
    t.integer "user_id",    limit: 4, null: false
  end

  add_index "addresses_users", ["address_id", "user_id"], name: "index_addresses_users_on_address_id_and_user_id", using: :btree
  add_index "addresses_users", ["user_id", "address_id"], name: "index_addresses_users_on_user_id_and_address_id", using: :btree

  create_table "cats", force: :cascade do |t|
    t.boolean  "litter_trained"
    t.boolean  "declawed"
    t.boolean  "outdoor"
    t.boolean  "bath"
    t.boolean  "grooming"
    t.boolean  "medication"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.integer  "size",              limit: 4
    t.integer  "feeding_frequency", limit: 4
    t.boolean  "walk"
    t.boolean  "playtime"
    t.boolean  "dietary_needs"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "emergency_contacts", force: :cascade do |t|
    t.string   "first_name",   limit: 255
    t.string   "last_name",    limit: 255
    t.string   "phone_number", limit: 255
    t.integer  "address_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "emergency_contacts", ["address_id"], name: "index_emergency_contacts_on_address_id", using: :btree

  create_table "notes", force: :cascade do |t|
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "notes_pets", id: false, force: :cascade do |t|
    t.integer "pet_id",  limit: 4, null: false
    t.integer "note_id", limit: 4, null: false
  end

  add_index "notes_pets", ["note_id", "pet_id"], name: "index_notes_pets_on_note_id_and_pet_id", using: :btree
  add_index "notes_pets", ["pet_id", "note_id"], name: "index_notes_pets_on_pet_id_and_note_id", using: :btree

  create_table "pets", force: :cascade do |t|
    t.integer  "actable_id",           limit: 4
    t.string   "actable_type",         limit: 255
    t.string   "name",                 limit: 255
    t.string   "gender",               limit: 1
    t.datetime "birthday"
    t.boolean  "sprayed_neutered"
    t.boolean  "medication"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "veterinary_clinic_id", limit: 4
    t.integer  "emergency_contact_id", limit: 4
  end

  add_index "pets", ["emergency_contact_id"], name: "index_pets_on_emergency_contact_id", using: :btree
  add_index "pets", ["veterinary_clinic_id"], name: "index_pets_on_veterinary_clinic_id", using: :btree

  create_table "pets_users", id: false, force: :cascade do |t|
    t.integer "pet_id",  limit: 4, null: false
    t.integer "user_id", limit: 4, null: false
  end

  add_index "pets_users", ["pet_id", "user_id"], name: "index_pets_users_on_pet_id_and_user_id", using: :btree
  add_index "pets_users", ["user_id", "pet_id"], name: "index_pets_users_on_user_id_and_pet_id", using: :btree

  create_table "pets_vaccinations", id: false, force: :cascade do |t|
    t.integer  "pet_id",               limit: 4, null: false
    t.integer  "vaccination_id",       limit: 4, null: false
    t.datetime "vaccination_datetime"
  end

  add_index "pets_vaccinations", ["pet_id", "vaccination_id"], name: "index_pets_vaccinations_on_pet_id_and_vaccination_id", using: :btree
  add_index "pets_vaccinations", ["vaccination_id", "pet_id"], name: "index_pets_vaccinations_on_vaccination_id_and_pet_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "slug",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "role_id",                limit: 4
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "phone_number",           limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

  create_table "vaccinations", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.boolean  "revaccination"
    t.integer  "days_of_duration", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "veterinary_clinics", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "phone_number", limit: 255
    t.integer  "address_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "veterinary_clinics", ["address_id"], name: "index_veterinary_clinics_on_address_id", using: :btree

  add_foreign_key "emergency_contacts", "addresses"
  add_foreign_key "pets", "emergency_contacts"
  add_foreign_key "pets", "veterinary_clinics"
  add_foreign_key "users", "roles"
  add_foreign_key "veterinary_clinics", "addresses"
end
