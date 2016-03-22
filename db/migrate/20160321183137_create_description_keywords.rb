class CreateDescriptionKeywords < ActiveRecord::Migration
  def change
    create_table :description_keywords do |t|
      t.integer :syntax_keyword_rubies_id
      t.text :description
      t.text :code

      t.timestamps null: false
    end
  end
end
