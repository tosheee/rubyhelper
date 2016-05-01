class CreateAdminRubySyntaxNameElements < ActiveRecord::Migration
  def change
    create_table :admin_ruby_syntax_name_elements do |t|
      t.integer :num_view
      t.string :name_element

      t.timestamps null: false
    end
  end
end
