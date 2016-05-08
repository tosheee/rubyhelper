class Admin::RailsNameStructure < ActiveRecord::Base
    has_many :admin_rails_name_methods, :class_name => 'Admin::RailsNameMethod'
end
