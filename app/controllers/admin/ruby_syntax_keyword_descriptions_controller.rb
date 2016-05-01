class Admin::RubySyntaxKeywordDescriptionsController < ApplicationController
  before_action :set_admin_ruby_syntax_keyword_description, only: [:show, :edit, :update, :destroy]

  # GET /admin/ruby_syntax_keyword_descriptions
  # GET /admin/ruby_syntax_keyword_descriptions.json
  def index
    @admin_ruby_syntax_keyword_descriptions = Admin::RubySyntaxKeywordDescription.all
  end

  # GET /admin/ruby_syntax_keyword_descriptions/1
  # GET /admin/ruby_syntax_keyword_descriptions/1.json
  def show
  end

  # GET /admin/ruby_syntax_keyword_descriptions/new
  def new
    @admin_ruby_syntax_keyword_description = Admin::RubySyntaxKeywordDescription.new
  end

  # GET /admin/ruby_syntax_keyword_descriptions/1/edit
  def edit
  end

  # POST /admin/ruby_syntax_keyword_descriptions
  # POST /admin/ruby_syntax_keyword_descriptions.json
  def create
    @admin_ruby_syntax_keyword_description = Admin::RubySyntaxKeywordDescription.new(admin_ruby_syntax_keyword_description_params)

    respond_to do |format|
      if @admin_ruby_syntax_keyword_description.save
        format.html { redirect_to @admin_ruby_syntax_keyword_description, notice: 'Ruby syntax keyword description was successfully created.' }
        format.json { render :show, status: :created, location: @admin_ruby_syntax_keyword_description }
      else
        format.html { render :new }
        format.json { render json: @admin_ruby_syntax_keyword_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/ruby_syntax_keyword_descriptions/1
  # PATCH/PUT /admin/ruby_syntax_keyword_descriptions/1.json
  def update
    respond_to do |format|
      if @admin_ruby_syntax_keyword_description.update(admin_ruby_syntax_keyword_description_params)
        format.html { redirect_to @admin_ruby_syntax_keyword_description, notice: 'Ruby syntax keyword description was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_ruby_syntax_keyword_description }
      else
        format.html { render :edit }
        format.json { render json: @admin_ruby_syntax_keyword_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/ruby_syntax_keyword_descriptions/1
  # DELETE /admin/ruby_syntax_keyword_descriptions/1.json
  def destroy
    @admin_ruby_syntax_keyword_description.destroy
    respond_to do |format|
      format.html { redirect_to admin_ruby_syntax_keyword_descriptions_url, notice: 'Ruby syntax keyword description was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_ruby_syntax_keyword_description
      @admin_ruby_syntax_keyword_description = Admin::RubySyntaxKeywordDescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_ruby_syntax_keyword_description_params
      params.require(:admin_ruby_syntax_keyword_description).permit(:ruby_syntax_name_keyword_id, :num_view, :label_description, :full_keyword_description, :label_code, :keyword_code, :label_result, :result_code)
    end
end
