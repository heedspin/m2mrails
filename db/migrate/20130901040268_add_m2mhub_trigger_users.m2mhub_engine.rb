# This migration comes from m2mhub_engine (originally 20120615151244)
class AddM2mhubTriggerUsers < ActiveRecord::Migration
  def up
    create_table :m2mhub_trigger_users, :force => true do |t|
      t.references :trigger
      t.references :user
    end
  end

  def down
    drop_table :m2mhub_trigger_users
  end
end