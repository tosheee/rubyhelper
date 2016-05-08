class Admin::RailsNameMethod < ActiveRecord::Base
  belongs_to :admin_rails_name_structure, :class_name => 'Admin::RailsNameStructure'
end
