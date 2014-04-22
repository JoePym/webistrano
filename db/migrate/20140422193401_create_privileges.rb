class CreatePrivileges < ActiveRecord::Migration
  def self.up
    create_table :privileges do |t|
      t.integer :user_id
      t.string :name
      t.timestamps
    end
    add_index :privileges, :user_id
  end

  def self.down
    drop_table :privileges
  end
end
