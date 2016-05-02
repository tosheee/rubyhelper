class Admin::RubyNameMethodsController < ApplicationController
  before_action :set_admin_ruby_name_method, only: [:show, :edit, :update, :destroy]

  # GET /admin/ruby_name_methods
  # GET /admin/ruby_name_methods.json
  def index
    @admin_ruby_name_methods = Admin::RubyNameMethod.all
  end

  # GET /admin/ruby_name_methods/1
  # GET /admin/ruby_name_methods/1.json
  def show
  end

  # GET /admin/ruby_name_methods/new
  def new
    @admin_ruby_name_method = Admin::RubyNameMethod.new
  end

  # GET /admin/ruby_name_methods/1/edit
  def edit
  end

  # POST /admin/ruby_name_methods
  # POST /admin/ruby_name_methods.json
  def create
    @admin_ruby_name_method = Admin::RubyNameMethod.new(admin_ruby_name_method_params)

    respond_to do |format|
      if @admin_ruby_name_method.save
        format.html { redirect_to @admin_ruby_name_method, notice: 'Ruby name method was successfully created.' }
        format.json { render :show, status: :created, location: @admin_ruby_name_method }
      else
        format.html { render :new }
        format.json { render json: @admin_ruby_name_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/ruby_name_methods/1
  # PATCH/PUT /admin/ruby_name_methods/1.json
  def update
    respond_to do |format|
      if @admin_ruby_name_method.update(admin_ruby_name_method_params)
        format.html { redirect_to @admin_ruby_name_method, notice: 'Ruby name method was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_ruby_name_method }
      else
        format.html { render :edit }
        format.json { render json: @admin_ruby_name_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/ruby_name_methods/1
  # DELETE /admin/ruby_name_methods/1.json
  def destroy
    @admin_ruby_name_method.destroy
    respond_to do |format|
      format.html { redirect_to admin_ruby_name_methods_url, notice: 'Ruby name method was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_ruby_name_method
      @admin_ruby_name_method = Admin::RubyNameMethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_ruby_name_method_params
      params.require(:admin_ruby_name_method).permit(:ruby_name_class_id, :name_method, :short_method_description)
    end
end
