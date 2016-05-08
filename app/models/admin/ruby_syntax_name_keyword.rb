class Admin::RubySyntaxNameKeyword < ActiveRecord::Base
 validates :admin_ruby_suntax_name_element_id, :name_keyword, presence: true
 #belongs_to RubySyntaxNameElement, :foreign_key => 'admin_ruby_suntax_name_element_id'
end
