class CreateClassNameMethods < ActiveRecord::Migration
  def change
    create_table :class_name_methods do |t|
      t.integer :type_inner_methods_id
      t.string :name_method
      t.timestamps null: false
    end
  end
end
