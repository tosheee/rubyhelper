class CreateAdminRubySyntaxNameKeywords < ActiveRecord::Migration
  def change
    create_table :admin_ruby_syntax_name_keywords do |t|
      t.integer :admin_ruby_suntax_name_element_id
      t.integer :num_view
      t.string :name_keyword
      t.text :name_keyword_description

      t.timestamps null: false
    end
  end
end
