# This migration comes from m2mhub_engine (originally 20120204175107)
class M2mhubUserStatusToUserState < ActiveRecord::Migration
  def up
    rename_column :users, :user_status_id, :user_state_id
  end

  def down
    rename_column :users, :user_state_id, :user_status_id
  end
end