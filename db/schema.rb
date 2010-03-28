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

ActiveRecord::Schema.define(:version => 20100328142552) do

  create_table "devices", :force => true do |t|
    t.string   "api_key",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "device_id"
  end

  create_table "sensors", :force => true do |t|
    t.string   "sensor_type", :null => false
    t.integer  "device_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.integer  "pin_number",  :null => false
    t.integer  "value"
  end

  create_table "triggers", :force => true do |t|
    t.text     "raw_parameters", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
