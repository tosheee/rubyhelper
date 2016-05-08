class Admin::RailsNameStructure < ActiveRecord::Base
    validates :name_structure, presence: true
    has_many :admin_rails_name_methods, :class_name => 'Admin::RailsNameMethod'
end
