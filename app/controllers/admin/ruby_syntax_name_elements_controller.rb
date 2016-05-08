class Admin::RubySyntaxNameElementsController < ApplicationController
  before_action :set_admin_ruby_syntax_name_element, only: [:show, :edit, :update, :destroy]
  before_filter :check_if_admin, only:[:index, :show, :new, :create, :edit, :update, :delete]

  def index
    @admin_ruby_syntax_name_elements = Admin::RubySyntaxNameElement.all
  end

  def show
  end

  def new
    @admin_ruby_syntax_name_element = Admin::RubySyntaxNameElement.new
  end

  def edit
  end

  def create
    @admin_ruby_syntax_name_element = Admin::RubySyntaxNameElement.new(admin_ruby_syntax_name_element_params)
    if @admin_ruby_syntax_name_element.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def update
    if @admin_ruby_syntax_name_element.update(admin_ruby_syntax_name_element_params)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    @admin_ruby_syntax_name_element.destroy
    redirect_to action: :index
  end

  private
    def set_admin_ruby_syntax_name_element
      @admin_ruby_syntax_name_element = Admin::RubySyntaxNameElement.find(params[:id])
    end

    def admin_ruby_syntax_name_element_params
      params.require(:admin_ruby_syntax_name_element).permit(:num_view, :name_element)
    end

    def check_if_admin
      if current_user.role == 'superadmin'
        true
      else
        render 'static_pages/rubyhelper/'
        #render text: "Access denied "
      end
    end
end
