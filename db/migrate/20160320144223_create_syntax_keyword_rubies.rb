class CreateSyntaxKeywordRubies < ActiveRecord::Migration
  def change
    create_table :syntax_keyword_rubies do |t|
      t.integer :syntax_elements_rubies_id
      t.string  :syntax_keyword
      t.timestamps null: false
    end
  end
end
