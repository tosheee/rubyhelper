class Admin::RubyNameClassesController < ApplicationController
  before_action :set_admin_ruby_name_class, only: [:show, :edit, :update, :destroy]
  before_filter :check_if_admin, only:[:index, :show, :new, :create, :edit, :update, :delete]

  def index
    @admin_ruby_name_classes = Admin::RubyNameClass.all
  end

  def show
  end

  def new
    @admin_ruby_name_class = Admin::RubyNameClass.new
  end

  def edit
  end

  def create
    @admin_ruby_name_class = Admin::RubyNameClass.new(admin_ruby_name_class_params)
    if @admin_ruby_name_class.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def update
    if @admin_ruby_name_class.update(admin_ruby_name_class_params)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    @admin_ruby_name_class.destroy
    redirect_to action: :index
  end

  private
    def set_admin_ruby_name_class
      @admin_ruby_name_class = Admin::RubyNameClass.find(params[:id])
    end

    def admin_ruby_name_class_params
      params.require(:admin_ruby_name_class).permit(:num_view, :name_class)
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
