# This migration comes from m2mhub_engine (originally 20121126185514)
class M2mhubDropSalesBacklogReports < ActiveRecord::Migration
  def up
    drop_table :sales_backlog_reports
  end

  def down
  end
end
