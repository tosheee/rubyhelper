class Admin::RailsNameMethodsController < ApplicationController
  before_action :set_admin_rails_name_method, only: [:show, :edit, :update, :destroy]

  def index
    @admin_rails_name_methods = Admin::RailsNameMethod.all
  end

  def show
  end

  def new
    @admin_rails_name_method = Admin::RailsNameMethod.new
  end

  def edit
  end

  def create
    @admin_rails_name_method = Admin::RailsNameMethod.new(admin_rails_name_method_params)
    if @admin_rails_name_method.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def update
    if @admin_rails_name_method.update(admin_rails_name_method_params)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    @admin_rails_name_method.destroy
    redirect_to action: :index
  end

  private
    def set_admin_rails_name_method
      @admin_rails_name_method = Admin::RailsNameMethod.find(params[:id])
    end

    def admin_rails_name_method_params
      params.require(:admin_rails_name_method).permit(:rails_name_structure_id, :name_method, :short_description)
    end
end
