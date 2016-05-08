class Admin::RubySyntaxKeywordDescriptionsController < ApplicationController
  before_action :set_admin_ruby_syntax_keyword_description, only: [:show, :edit, :update, :destroy]
  before_filter :check_if_admin, only:[:index, :show, :new, :create, :edit, :update, :delete]

  def index
    @admin_ruby_syntax_keyword_descriptions = Admin::RubySyntaxKeywordDescription.all
  end

  def show
  end

  def new
    @admin_ruby_syntax_keyword_description = Admin::RubySyntaxKeywordDescription.new
  end

  def edit
  end

  def create
    @admin_ruby_syntax_keyword_description = Admin::RubySyntaxKeywordDescription.new(admin_ruby_syntax_keyword_description_params)
    if @admin_ruby_syntax_keyword_description.save
      redirect_to action: :index
    else
     render action: :new
    end
  end

  def update
    if @admin_ruby_syntax_keyword_description.update(admin_ruby_syntax_keyword_description_params)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    @admin_ruby_syntax_keyword_description.destroy
    redirect_to action: :index
  end

  private
    def set_admin_ruby_syntax_keyword_description
      @admin_ruby_syntax_keyword_description = Admin::RubySyntaxKeywordDescription.find(params[:id])
    end

    def admin_ruby_syntax_keyword_description_params
      params.require(:admin_ruby_syntax_keyword_description).permit(:ruby_syntax_name_keyword_id, :num_view, :label_description, :full_keyword_description, :label_code, :keyword_code, :label_result, :result_code)
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
