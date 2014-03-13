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

ActiveRecord::Schema.define(version: 20140313031224) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultations", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.text     "message"
    t.datetime "date_time"
    t.integer  "length_in_minutes"
    t.boolean  "comfirmed"
    t.text     "notes"
    t.text     "actions"
    t.string   "consultation_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "consultations", ["user_id"], name: "index_consultations_on_user_id"

  create_table "enquiries", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "subject"
    t.text     "message"
    t.integer  "user_id"
    t.boolean  "followed_up"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enquiries", ["user_id"], name: "index_enquiries_on_user_id"

  create_table "event_registrations", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_registrations", ["event_id"], name: "index_event_registrations_on_event_id"
  add_index "event_registrations", ["user_id"], name: "index_event_registrations_on_user_id"

  create_table "events", force: true do |t|
    t.string   "title"
    t.string   "tagline"
    t.text     "about"
    t.string   "address1"
    t.string   "address2"
    t.string   "suburb"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.datetime "start_date_time"
    t.datetime "end_date_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interactions", force: true do |t|
    t.integer  "user_id"
    t.integer  "admin_id"
    t.string   "interaction_type"
    t.datetime "occurred"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "interactions", ["user_id"], name: "index_interactions_on_user_id"

  create_table "post_categories", force: true do |t|
    t.integer  "post_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_categories", ["category_id"], name: "index_post_categories_on_category_id"
  add_index "post_categories", ["post_id"], name: "index_post_categories_on_post_id"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "lead"
    t.text     "content"
    t.string   "image"
    t.boolean  "publish"
    t.string   "slug"
    t.string   "image_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["slug"], name: "index_posts_on_slug"

  create_table "programme_units", force: true do |t|
    t.integer  "programme_id"
    t.integer  "unit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programme_units", ["programme_id"], name: "index_programme_units_on_programme_id"
  add_index "programme_units", ["unit_id"], name: "index_programme_units_on_unit_id"

  create_table "programmes", force: true do |t|
    t.integer  "user_id"
    t.datetime "start_date_time"
    t.datetime "end_date_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programmes", ["user_id"], name: "index_programmes_on_user_id"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "skills", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testimonial_answers", force: true do |t|
    t.integer  "testimonial_question_id"
    t.integer  "testimonial_id"
    t.text     "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "testimonial_answers", ["testimonial_id"], name: "index_testimonial_answers_on_testimonial_id"
  add_index "testimonial_answers", ["testimonial_question_id"], name: "index_testimonial_answers_on_testimonial_question_id"

  create_table "testimonial_questions", force: true do |t|
    t.string   "question"
    t.integer  "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testimonials", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "testimonials", ["user_id"], name: "index_testimonials_on_user_id"

  create_table "unit_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.integer  "unit_type_id"
    t.string   "name"
    t.string   "tagline"
    t.text     "description"
    t.integer  "hours"
    t.integer  "points"
    t.integer  "difficulty"
    t.boolean  "online"
    t.boolean  "offline"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "units", ["unit_type_id"], name: "index_units_on_unit_type_id"

  create_table "user_profiles", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "tagline"
    t.text     "about"
    t.string   "image"
    t.string   "facebook"
    t.string   "linkedin"
    t.string   "googlegithub"
    t.string   "twitter"
    t.string   "blog"
    t.boolean  "show_email"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_profiles", ["user_id"], name: "index_user_profiles_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

end
