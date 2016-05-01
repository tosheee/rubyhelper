class CreateAdminRubySyntaxKeywordDescriptions < ActiveRecord::Migration
  def change
    create_table :admin_ruby_syntax_keyword_descriptions do |t|
      t.integer :ruby_syntax_name_keyword_id
      t.integer :num_view
      t.string :label_description
      t.text :full_keyword_description
      t.string :label_code
      t.text :keyword_code
      t.string :label_result
      t.text :result_code

      t.timestamps null: false
    end
  end
end
