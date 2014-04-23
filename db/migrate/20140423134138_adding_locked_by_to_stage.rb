class AddingLockedByToStage < ActiveRecord::Migration
  def self.up
    add_column :stages, :locked_by_id, :integer
    add_index :stages, :locked_by_id
  end

  def self.down
    remove_index :stages, :locked_by_id
    remove_column :stages, :locked_by_id
  end
end
