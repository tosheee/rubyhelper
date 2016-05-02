class RubySyntaxController < ApplicationController

  def index
    @syntax_name_elements = Admin::RubySyntaxNameElement.all
    @index_ruby_syntaxes = IndexRubySyntax.all
  end

  def show
    @syntax_name_elements = Admin::RubySyntaxNameElement.all
    @syntax_name_element = Admin::RubySyntaxNameElement.find(params[:id])
    @syntax_name_keywords = Admin::RubySyntaxNameKeyword.where(admin_ruby_suntax_name_element_id: @syntax_name_element).pluck(:id, :name_keyword, :name_keyword_description)
    @syntax_keyword_descriptions = Admin::RubySyntaxKeywordDescription.all
  end

end
