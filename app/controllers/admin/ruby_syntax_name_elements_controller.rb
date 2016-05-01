class Admin::RubySyntaxNameElementsController < ApplicationController
  before_action :set_admin_ruby_syntax_name_element, only: [:show, :edit, :update, :destroy]

  # GET /admin/ruby_syntax_name_elements
  # GET /admin/ruby_syntax_name_elements.json
  def index
    @admin_ruby_syntax_name_elements = Admin::RubySyntaxNameElement.all
  end

  # GET /admin/ruby_syntax_name_elements/1
  # GET /admin/ruby_syntax_name_elements/1.json
  def show
  end

  # GET /admin/ruby_syntax_name_elements/new
  def new
    @admin_ruby_syntax_name_element = Admin::RubySyntaxNameElement.new
  end

  # GET /admin/ruby_syntax_name_elements/1/edit
  def edit
  end

  # POST /admin/ruby_syntax_name_elements
  # POST /admin/ruby_syntax_name_elements.json
  def create
    @admin_ruby_syntax_name_element = Admin::RubySyntaxNameElement.new(admin_ruby_syntax_name_element_params)

    respond_to do |format|
      if @admin_ruby_syntax_name_element.save
        format.html { redirect_to @admin_ruby_syntax_name_element, notice: 'Ruby syntax name element was successfully created.' }
        format.json { render :show, status: :created, location: @admin_ruby_syntax_name_element }
      else
        format.html { render :new }
        format.json { render json: @admin_ruby_syntax_name_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/ruby_syntax_name_elements/1
  # PATCH/PUT /admin/ruby_syntax_name_elements/1.json
  def update
    respond_to do |format|
      if @admin_ruby_syntax_name_element.update(admin_ruby_syntax_name_element_params)
        format.html { redirect_to @admin_ruby_syntax_name_element, notice: 'Ruby syntax name element was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_ruby_syntax_name_element }
      else
        format.html { render :edit }
        format.json { render json: @admin_ruby_syntax_name_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/ruby_syntax_name_elements/1
  # DELETE /admin/ruby_syntax_name_elements/1.json
  def destroy
    @admin_ruby_syntax_name_element.destroy
    respond_to do |format|
      format.html { redirect_to admin_ruby_syntax_name_elements_url, notice: 'Ruby syntax name element was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_ruby_syntax_name_element
      @admin_ruby_syntax_name_element = Admin::RubySyntaxNameElement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_ruby_syntax_name_element_params
      params.require(:admin_ruby_syntax_name_element).permit(:num_view, :name_element)
    end
end
