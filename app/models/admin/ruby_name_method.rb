class Admin::RubyNameMethod < ActiveRecord::Base
  validates :ruby_name_class_id, :name_method, presence: true
end
