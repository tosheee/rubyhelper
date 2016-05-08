class Admin::RubyNameClass < ActiveRecord::Base
  validates :name_class, presence: true
end
