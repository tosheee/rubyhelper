class CreateAdminRailsNameMethods < ActiveRecord::Migration
  def change
    create_table :admin_rails_name_methods do |t|
      t.integer :rails_name_structure_id
      t.string :name_method
      t.text :short_description

      t.timestamps null: false
    end
  end
end
