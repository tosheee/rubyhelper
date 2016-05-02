class CreateAdminRubyNameClasses < ActiveRecord::Migration
  def change
    create_table :admin_ruby_name_classes do |t|
      t.integer :num_view
      t.string :name_class

      t.timestamps null: false
    end
  end
end
