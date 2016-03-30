class CreateTypeInnerMethods < ActiveRecord::Migration
  def change
    create_table :type_inner_methods do |t|
      t.string :name_type_method
      t.timestamps null: false
    end
  end
end
