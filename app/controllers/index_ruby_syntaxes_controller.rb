class IndexRubySyntaxesController < ApplicationController
  before_filter :check_if_admin, only:[:index, :show, :new, :create, :edit, :update, :delete]

  def index
    @index_ruby_syntaxes = IndexRubySyntax.all
  end

  def show
    @index_ruby_syntax = IndexRubySyntax.find(params[:id])
  end

  def new
    @index_ruby_syntax = IndexRubySyntax.new
  end

  def create
    @index_ruby_syntax = IndexRubySyntax.new(index_ruby_syntax_params)
    if @index_ruby_syntax.save
      redirect_to action: :new
    else
      render action: :show
    end
  end

  def edit
    @index_ruby_syntax = IndexRubySyntax.find(params[:id])
  end

  def update
    @index_ruby_syntax = IndexRubySyntax.find(params[:id])
    if @index_ruby_syntax.update(index_ruby_syntax_params)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def delete
    @index_ruby_syntax.find(params[:id])
    @index_ruby_syntax.destroy
    redirect_to action: :index
  end

  private
  def index_ruby_syntax_params
    params.require(:index_ruby_syntax).permit(:index_title_ruby, :index_title_description_ruby, :index_description, :ruby_urls)
  end

  def check_if_admin
    if current_user.role == 'superadmin'
      true
    else
      render 'static_pages/rubyhelper/'
    end
  end
end
