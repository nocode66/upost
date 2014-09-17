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

ActiveRecord::Schema.define(version: 20140917060733) do

  create_table "cities", force: true do |t|
    t.integer "country_id",            null: false
    t.integer "region_id",             null: false
    t.string  "name",       limit: 45, null: false
    t.float   "latitude",              null: false
    t.float   "longitude",             null: false
    t.string  "timezone",   limit: 10, null: false
    t.integer "dma_id"
    t.string  "code",       limit: 4
  end

  add_index "cities", ["name"], name: "index_cities_on_name"

  create_table "countries", force: true do |t|
    t.string  "name",                 limit: 50, null: false
    t.string  "fips104",              limit: 2,  null: false
    t.string  "iso2",                 limit: 2,  null: false
    t.string  "iso3",                 limit: 3,  null: false
    t.string  "ison",                 limit: 4,  null: false
    t.string  "internet",             limit: 2,  null: false
    t.string  "capital",              limit: 25
    t.string  "map_reference",        limit: 50
    t.string  "nationality_singular", limit: 35
    t.string  "nationality_plural",   limit: 35
    t.string  "currency",             limit: 30
    t.string  "currency_code",        limit: 3
    t.integer "population"
    t.string  "title",                limit: 50
    t.string  "comment"
  end

  add_index "countries", ["name"], name: "index_countries_on_name"

  create_table "people", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "string"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
    t.integer  "city_id"
  end

  add_index "people", ["city_id"], name: "index_people_on_city_id"
  add_index "people", ["country_id"], name: "index_people_on_country_id"

  create_table "regions", force: true do |t|
    t.integer "country_id",            null: false
    t.string  "name",       limit: 45, null: false
    t.string  "code",       limit: 8,  null: false
    t.string  "adm1code",   limit: 4,  null: false
  end

  add_index "regions", ["name"], name: "index_regions_on_name"

end
