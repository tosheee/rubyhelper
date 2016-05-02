class Admin::RubySyntaxNameKeywordsController < ApplicationController
  before_action :set_admin_ruby_syntax_name_keyword, only: [:show, :edit, :update, :destroy]
  before_filter :check_if_admin, only:[:index, :show, :new, :create, :edit, :update, :delete]

  def index
    @admin_ruby_syntax_name_keywords = Admin::RubySyntaxNameKeyword.all
  end

  def show
  end

  def new
    @admin_ruby_syntax_name_keyword = Admin::RubySyntaxNameKeyword.new
  end

  def edit
  end

  def create
    @admin_ruby_syntax_name_keyword = Admin::RubySyntaxNameKeyword.new(admin_ruby_syntax_name_keyword_params)
    if @admin_ruby_syntax_name_keyword.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def update
    if @admin_ruby_syntax_name_keyword.update(admin_ruby_syntax_name_keyword_params)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    @admin_ruby_syntax_name_keyword.destroy
    render action: :index
  end

  private

  def set_admin_ruby_syntax_name_keyword
      @admin_ruby_syntax_name_keyword = Admin::RubySyntaxNameKeyword.find(params[:id])
    end

    def admin_ruby_syntax_name_keyword_params
      params.require(:admin_ruby_syntax_name_keyword).permit(:admin_ruby_suntax_name_element_id, :num_view, :name_keyword, :name_keyword_description)
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
