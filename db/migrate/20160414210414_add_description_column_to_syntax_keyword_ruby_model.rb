class AddDescriptionColumnToSyntaxKeywordRubyModel < ActiveRecord::Migration
  def change
    add_column :syntax_keyword_rubies, :description_keyword, :text
  end
end
