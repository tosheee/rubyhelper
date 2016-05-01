class Admin::RailsNameStructuresController < ApplicationController
  before_action :set_admin_rails_name_structure, only: [:show, :edit, :update, :destroy]

  def index
    @admin_rails_name_structures = Admin::RailsNameStructure.all
  end

  def show
  end

  def new
    @admin_rails_name_structure = Admin::RailsNameStructure.new
  end

  def edit
  end

  def create
    @admin_rails_name_structure = Admin::RailsNameStructure.new(admin_rails_name_structure_params)
    if @admin_rails_name_structure.save
      redirect_to :index
    else
      render :new
    end
  end

  def update
    if @admin_rails_name_structure.update(admin_rails_name_structure_params)
      redirect_to :index
    else
      render :edit
    end
  end

  def destroy
    @admin_rails_name_structure.destroy
    redirect_to :index
  end

  private
    def set_admin_rails_name_structure
      @admin_rails_name_structure = Admin::RailsNameStructure.find(params[:id])
    end

    def admin_rails_name_structure_params
      params.require(:admin_rails_name_structure).permit(:num_structure, :name_structure)
    end
end
