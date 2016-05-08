class Admin::RubySyntaxNameElement < ActiveRecord::Base
  validates :name_element, presence: true
  #has_many :
end
