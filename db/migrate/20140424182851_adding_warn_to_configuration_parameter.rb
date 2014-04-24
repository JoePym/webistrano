class AddingWarnToConfigurationParameter < ActiveRecord::Migration
  def self.up
    add_column :configuration_parameters, :warn, :boolean, :default => false, :null => false
  end

  def self.down
    remove_column :configuration_parameters, :warn
  end
end
