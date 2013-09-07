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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130901040282) do

  create_table "backlog_reports", :force => true do |t|
    t.date     "date"
    t.decimal  "total_backlog", :precision => 12, :scale => 2
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.text     "data"
  end

  create_table "bookings_reports", :force => true do |t|
    t.integer  "report_time_period_id"
    t.date     "date"
    t.text     "data"
    t.decimal  "bookings",              :precision => 12, :scale => 2
    t.decimal  "ytd_bookings",          :precision => 12, :scale => 2
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
  end

  create_table "commission_rates", :force => true do |t|
    t.integer  "customer_id"
    t.string   "customer_name"
    t.string   "customer_number"
    t.integer  "sales_person_id"
    t.string   "sales_person_name"
    t.integer  "item_id"
    t.string   "part_number"
    t.decimal  "commission_percentage", :precision => 12, :scale => 4
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
  end

  create_table "customer_reports", :force => true do |t|
    t.string   "customer_number"
    t.decimal  "total_quote_amount", :precision => 12, :scale => 2
    t.decimal  "total_sales_amount", :precision => 12, :scale => 2
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "queue"
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "inspection_tasks", :force => true do |t|
    t.string   "part_number"
    t.string   "revision"
    t.decimal  "quantity",                           :precision => 14, :scale => 4
    t.string   "title"
    t.text     "body"
    t.integer  "task_type_id"
    t.string   "purchase_order_number"
    t.string   "purchase_order_item_number"
    t.string   "purchase_order_item_id"
    t.integer  "rma_number"
    t.string   "rma_item_number"
    t.string   "rma_item_id"
    t.string   "rma_customer_name"
    t.datetime "date_expected"
    t.string   "last_receiver_id"
    t.integer  "status_id"
    t.string   "lighthouse_ticket_id"
    t.string   "lighthouse_project_id"
    t.string   "lighthouse_project_name"
    t.string   "lighthouse_milestone"
    t.string   "lighthouse_status"
    t.boolean  "lighthouse_closed"
    t.string   "lighthouse_url"
    t.string   "lighthouse_title"
    t.text     "lighthouse_last_comment"
    t.datetime "lighthouse_last_updated_at"
    t.string   "lighthouse_last_updater"
    t.string   "lighthouse_last_assigned_user_name"
    t.datetime "created_at",                                                        :null => false
    t.datetime "updated_at",                                                        :null => false
  end

  create_table "inventory_report_customers", :force => true do |t|
    t.integer "inventory_report_id"
    t.string  "customer_name"
    t.string  "customer_number"
    t.integer "m2m_identity_column"
    t.text    "movement_data"
    t.decimal "total_on_hand_cost",   :precision => 12, :scale => 2
    t.decimal "total_on_order_cost",  :precision => 12, :scale => 2
    t.decimal "total_available_cost", :precision => 12, :scale => 2
    t.decimal "total_committed_cost", :precision => 12, :scale => 2
  end

  create_table "inventory_report_items", :force => true do |t|
    t.integer  "inventory_report_id"
    t.integer  "inventory_report_customer_id"
    t.string   "part_number"
    t.string   "revision"
    t.integer  "m2m_identity_column"
    t.integer  "inventory_report_cost_method_id"
    t.datetime "last_incoming_date"
    t.datetime "last_outgoing_date"
    t.datetime "next_outgoing_date"
    t.datetime "next_incoming_date"
    t.string   "item_group_code_key"
    t.integer  "last_incoming_inventory_transaction_id"
    t.integer  "next_sales_order_release_id"
    t.integer  "last_sales_order_release_id"
    t.text     "movement_data"
    t.decimal  "quantity_on_hand",                       :precision => 12, :scale => 2
    t.decimal  "quantity_committed",                     :precision => 12, :scale => 2
    t.decimal  "quantity_available",                     :precision => 12, :scale => 2
    t.decimal  "quantity_on_order",                      :precision => 12, :scale => 2
    t.decimal  "cost",                                   :precision => 14, :scale => 4
  end

  create_table "inventory_reports", :force => true do |t|
    t.integer  "delayed_job_id"
    t.integer  "delayed_job_status_id"
    t.text     "delayed_job_log"
    t.datetime "created_at",                                                     :null => false
    t.datetime "updated_at",                                                     :null => false
    t.integer  "inventory_report_cost_method_id"
    t.integer  "total_on_hand_locations"
    t.integer  "total_run_time_seconds"
    t.datetime "earliest_release_date"
    t.text     "movement_data"
    t.date     "report_date"
    t.decimal  "total_on_hand_cost",              :precision => 12, :scale => 2
    t.decimal  "total_on_order_cost",             :precision => 12, :scale => 2
    t.decimal  "total_available_cost",            :precision => 12, :scale => 2
    t.decimal  "total_committed_cost",            :precision => 12, :scale => 2
  end

  create_table "m2mhub_events", :force => true do |t|
    t.integer  "trigger_id"
    t.string   "erp_type"
    t.integer  "erp_id"
    t.string   "erp_number"
    t.string   "lighthouse_ticket_id"
    t.string   "lighthouse_project_id"
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "ticket_status"
    t.boolean  "closed"
    t.string   "ticket_url"
    t.text     "body"
  end

  create_table "m2mhub_trigger_users", :force => true do |t|
    t.integer "trigger_id"
    t.integer "user_id"
  end

  create_table "m2mhub_triggers", :force => true do |t|
    t.integer  "trigger_type_id"
    t.integer  "trigger_state_id"
    t.string   "part_number"
    t.integer  "notification_type_id"
    t.integer  "target_user_id"
    t.string   "lighthouse_project_id"
    t.string   "title"
    t.text     "instructions"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "purchase_queue_notes", :force => true do |t|
    t.integer  "item_id"
    t.string   "part_number"
    t.string   "revision"
    t.text     "comments"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sales_reports", :force => true do |t|
    t.integer  "report_time_period_id"
    t.date     "date"
    t.text     "data"
    t.decimal  "invoiced_sales",        :precision => 12, :scale => 2
    t.decimal  "net_invoiced_sales",    :precision => 12, :scale => 2
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
  end

  create_table "sales_territories", :force => true do |t|
    t.string   "name"
    t.string   "sales_rep_name"
    t.text     "description"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "user_activities", :force => true do |t|
    t.integer  "user_id"
    t.string   "remote_ip"
    t.string   "report_name"
    t.string   "format"
    t.text     "params"
    t.float    "elapsed_time"
    t.datetime "created_at"
  end

  add_index "user_activities", ["user_id", "created_at"], :name => "user_activities_user_id_created_at"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "notification_preference"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.integer  "user_state_id"
    t.integer  "user_role_id"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "single_access_token"
    t.string   "perishable_token"
    t.integer  "login_count",             :default => 0
    t.integer  "failed_login_count",      :default => 0
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "lighthouse_user_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["perishable_token"], :name => "index_users_on_perishable_token"

end
