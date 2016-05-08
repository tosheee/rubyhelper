class Admin::RailsMethodDescriptionsController < ApplicationController
  before_action :set_admin_rails_method_description, only: [:show, :edit, :update, :destroy]

  def index
    @admin_rails_method_descriptions = Admin::RailsMethodDescription.all
  end

  def show
  end

  def new
    @admin_rails_method_description = Admin::RailsMethodDescription.new
  end

  def edit
  end

  def create
    @admin_rails_method_description = Admin::RailsMethodDescription.new(admin_rails_method_description_params)
    if @admin_rails_method_description.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def update
    if @admin_rails_method_description.update(admin_rails_method_description_params)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    @admin_rails_method_description.destroy
    redirect_to action: :index
  end

  private
    def set_admin_rails_method_description
      @admin_rails_method_description = Admin::RailsMethodDescription.find(params[:id])
    end

    def admin_rails_method_description_params
      params.require(:admin_rails_method_description).permit(:rails_name_method_id, :num_view, :lable_description, :full_method_description, :label_code, :method_code, :label_result, :result_code)
    end
end
