class CreateAdminRubyNameMethodFullDescriptions < ActiveRecord::Migration
  def change
    create_table :admin_ruby_name_method_full_descriptions do |t|
      t.integer :ruby_name_method_id
      t.integer :num_view
      t.string :label_description
      t.text :full_method_description
      t.string :label_code
      t.text :method_code
      t.string :label_result
      t.text :result_code

      t.timestamps null: false
    end
  end
end
