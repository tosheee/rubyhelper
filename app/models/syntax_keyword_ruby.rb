class SyntaxKeywordRuby < ActiveRecord::Base

 belongs_to :SyntaxElementsRuby, :foreign_key => 'syntax_elements_rubies_id'
end
