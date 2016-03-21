class CreateSyntaxElementsRubies < ActiveRecord::Migration
  def change
    create_table :syntax_elements_rubies do |t|
      t.string :element
      t.timestamps null: false
    end
  end
end
