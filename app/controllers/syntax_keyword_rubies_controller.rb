class SyntaxKeywordRubiesController < ApplicationController

  def index
    @syntax_keyword_rubies = SyntaxKeywordRuby.all
  end

  def show
    #@syntax_keyword_ruby = SyntaxKeywordRuby.find(params[:id])
  end

  def new
    @syntax_keyword_ruby = SyntaxKeywordRuby.new
  end

  def create
    @syntax_keyword_ruby = SyntaxKeywordRuby.new(syntax_keyword_ruby_params)
    if @syntax_keyword_ruby.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def edit
    @syntax_keyword_ruby = SyntaxKeywordRuby.find(params[:id])
  end

  def update
    @syntax_keyword_ruby = SyntaxKeywordRuby.find(params[:id])
    if @syntax_keyword_ruby.update_attributes(params[:syntax_keyword_ruby])
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def delete
    @syntax_keyword_ruby = SyntaxKeywordRuby.find(params[:id])
    @syntax_keyword_ruby.destroy
    redirect_to action: :index
  end

  private

  def syntax_keyword_ruby_params
    params.require(:syntax_keyword_ruby).permit(:syntax_elements_rubies_id, :syntax_keyword)
  end

end
