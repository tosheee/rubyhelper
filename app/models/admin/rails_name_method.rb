class Admin::RailsNameMethod < ActiveRecord::Base
  validates :rails_name_structure_id, :name_method, presence: true
  belongs_to :admin_rails_name_structure, :class_name => 'Admin::RailsNameStructure'
end
