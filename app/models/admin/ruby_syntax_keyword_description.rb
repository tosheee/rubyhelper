class Admin::RubySyntaxKeywordDescription < ActiveRecord::Base
  validates :ruby_syntax_name_keyword_id, presence: true
end
