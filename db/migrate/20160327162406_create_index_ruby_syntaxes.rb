class CreateIndexRubySyntaxes < ActiveRecord::Migration
  def change
    create_table :index_ruby_syntaxes do |t|
      t.string :index_title_ruby
      t.string :index_title_description_ruby
      t.text   :index_description
      t.text   :ruby_urls
      t.timestamps null: false
    end
  end
end
