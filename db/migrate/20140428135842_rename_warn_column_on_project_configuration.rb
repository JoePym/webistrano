class RenameWarnColumnOnProjectConfiguration < ActiveRecord::Migration
  def self.up
    remove_column :configuration_parameters, :warn
    add_column :configuration_parameters, :warn_on_change, :integer, :default => 0
  end

  def self.down
    add_column :configuration_parameters, :warn, :boolean, :default => false
    remove_column :configuration_parameters, :warn_on_change
  end
end
