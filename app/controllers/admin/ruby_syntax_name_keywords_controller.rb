class Admin::RubySyntaxNameKeywordsController < ApplicationController
  before_action :set_admin_ruby_syntax_name_keyword, only: [:show, :edit, :update, :destroy]

  # GET /admin/ruby_syntax_name_keywords
  # GET /admin/ruby_syntax_name_keywords.json
  def index
    @admin_ruby_syntax_name_keywords = Admin::RubySyntaxNameKeyword.all
  end

  # GET /admin/ruby_syntax_name_keywords/1
  # GET /admin/ruby_syntax_name_keywords/1.json
  def show
  end

  # GET /admin/ruby_syntax_name_keywords/new
  def new
    @admin_ruby_syntax_name_keyword = Admin::RubySyntaxNameKeyword.new
  end

  # GET /admin/ruby_syntax_name_keywords/1/edit
  def edit
  end

  # POST /admin/ruby_syntax_name_keywords
  # POST /admin/ruby_syntax_name_keywords.json
  def create
    @admin_ruby_syntax_name_keyword = Admin::RubySyntaxNameKeyword.new(admin_ruby_syntax_name_keyword_params)

    respond_to do |format|
      if @admin_ruby_syntax_name_keyword.save
        format.html { redirect_to @admin_ruby_syntax_name_keyword, notice: 'Ruby syntax name keyword was successfully created.' }
        format.json { render :show, status: :created, location: @admin_ruby_syntax_name_keyword }
      else
        format.html { render :new }
        format.json { render json: @admin_ruby_syntax_name_keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/ruby_syntax_name_keywords/1
  # PATCH/PUT /admin/ruby_syntax_name_keywords/1.json
  def update
    respond_to do |format|
      if @admin_ruby_syntax_name_keyword.update(admin_ruby_syntax_name_keyword_params)
        format.html { redirect_to @admin_ruby_syntax_name_keyword, notice: 'Ruby syntax name keyword was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_ruby_syntax_name_keyword }
      else
        format.html { render :edit }
        format.json { render json: @admin_ruby_syntax_name_keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/ruby_syntax_name_keywords/1
  # DELETE /admin/ruby_syntax_name_keywords/1.json
  def destroy
    @admin_ruby_syntax_name_keyword.destroy
    respond_to do |format|
      format.html { redirect_to admin_ruby_syntax_name_keywords_url, notice: 'Ruby syntax name keyword was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_ruby_syntax_name_keyword
      @admin_ruby_syntax_name_keyword = Admin::RubySyntaxNameKeyword.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_ruby_syntax_name_keyword_params
      params.require(:admin_ruby_syntax_name_keyword).permit(:admin_ruby_suntax_name_element_id, :num_view, :name_keyword, :name_keyword_description)
    end
end
