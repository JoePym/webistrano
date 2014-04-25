class CreateConfigurationRecords < ActiveRecord::Migration
  def self.up
    create_table :configuration_records do |t|
      t.integer :deployment_id
      t.integer :configuration_parameter_id
      t.string :value
      t.timestamps
    end

    add_index :configuration_records, :deployment_id
    add_index :configuration_records, :configuration_parameter_id
  end

  def self.down
    drop_table :configuration_records
  end
end
