class CreateAdminRailsMethodDescriptions < ActiveRecord::Migration
  def change
    create_table :admin_rails_method_descriptions do |t|
      t.integer :rails_name_method_id
      t.integer :num_view
      t.string :lable_description
      t.text :full_method_description
      t.string :label_code
      t.text :method_code
      t.string :label_result
      t.text :result_code

      t.timestamps null: false
    end
  end
end
