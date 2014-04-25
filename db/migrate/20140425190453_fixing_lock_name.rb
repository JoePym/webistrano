class FixingLockName < ActiveRecord::Migration
  def self.up
    rename_column :stages, :locked_by_id, :locked_by_user_id
  end

  def self.down
    rename_column :stages, :locked_by_user_id, :locked_by_id
  end
end
