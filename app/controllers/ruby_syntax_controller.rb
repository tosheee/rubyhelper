class RubySyntaxController < ApplicationController

  def index
    @syntax_elements_rubies = SyntaxElementsRuby.all
  end

  def show
    @syntax_elements_rubies = SyntaxElementsRuby.all#vertical nav

    @syntax_elements_ruby = SyntaxElementsRuby.find(params[:id])#dumata gore

    @syntax_keyword_rubies = SyntaxKeywordRuby.where(syntax_elements_rubies_id: @syntax_elements_ruby).pluck(:id, :syntax_keyword)

    #@description_keyword = DescriptionKeyword.all


    #@syntax_keyword_rubies_id = SyntaxKeywordRuby.where(syntax_elements_rubies_id: @syntax_elements_ruby).pluck(:syntax_elements_rubies_id)
  end

end
