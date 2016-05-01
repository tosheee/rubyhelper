class CreateAdminRailsNameStructures < ActiveRecord::Migration
  def change
    create_table :admin_rails_name_structures do |t|
      t.integer :num_structure
      t.string :name_structure

      t.timestamps null: false
    end
  end
end
