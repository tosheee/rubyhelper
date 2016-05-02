class CreateAdminRubyNameMethods < ActiveRecord::Migration
  def change
    create_table :admin_ruby_name_methods do |t|
      t.integer :ruby_name_class_id
      t.string :name_method
      t.text :short_method_description

      t.timestamps null: false
    end
  end
end
