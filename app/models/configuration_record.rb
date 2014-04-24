class ConfigurationRecord < ActiveRecord::Base
  belongs_to :configuration_parameter
  belongs_to :deploymnent
end
