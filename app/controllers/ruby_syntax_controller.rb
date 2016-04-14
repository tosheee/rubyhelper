class RubySyntaxController < ApplicationController

  def index
    @syntax_elements_rubies = SyntaxElementsRuby.all
    @index_ruby_syntaxes = IndexRubySyntax.all
  end

  def show
    @syntax_elements_rubies = SyntaxElementsRuby.all
    @syntax_elements_ruby = SyntaxElementsRuby.find(params[:id])
    @syntax_keyword_rubies = SyntaxKeywordRuby.where(syntax_elements_rubies_id: @syntax_elements_ruby).pluck(:id, :syntax_keyword, :description_keyword)
    @description_keyword = DescriptionKeyword.all
  end

end
