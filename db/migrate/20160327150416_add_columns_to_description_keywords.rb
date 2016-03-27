class AddColumnsToDescriptionKeywords < ActiveRecord::Migration
  def change
    add_column :description_keywords, :description_title, :string
    add_column :description_keywords, :code_title, :string
  end
end
