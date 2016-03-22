class DescriptionKeywordsController < ApplicationController
  before_action :set_description_keyword, only: [:show, :edit, :update, :destroy]
  before_filter :check_if_admin, only:[:index, :show, :new, :create, :edit, :update, :delete]

  # GET /description_keywords
  # GET /description_keywords.json
  def index
    @description_keywords = DescriptionKeyword.all
  end

  # GET /description_keywords/1
  # GET /description_keywords/1.json
  def show
  end

  # GET /description_keywords/new
  def new
    @description_keyword = DescriptionKeyword.new
  end

  # GET /description_keywords/1/edit
  def edit
  end

  # POST /description_keywords
  # POST /description_keywords.json
  def create
    @description_keyword = DescriptionKeyword.new(description_keyword_params)

    respond_to do |format|
      if @description_keyword.save
        format.html { redirect_to @description_keyword, notice: 'Description keyword was successfully created.' }
        format.json { render :show, status: :created, location: @description_keyword }
      else
        format.html { render :new }
        format.json { render json: @description_keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /description_keywords/1
  # PATCH/PUT /description_keywords/1.json
  def update
    respond_to do |format|
      if @description_keyword.update(description_keyword_params)
        format.html { redirect_to @description_keyword, notice: 'Description keyword was successfully updated.' }
        format.json { render :show, status: :ok, location: @description_keyword }
      else
        format.html { render :edit }
        format.json { render json: @description_keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /description_keywords/1
  # DELETE /description_keywords/1.json
  def destroy
    @description_keyword.destroy
    respond_to do |format|
      format.html { redirect_to description_keywords_url, notice: 'Description keyword was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_description_keyword
      @description_keyword = DescriptionKeyword.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def description_keyword_params
      params.require(:description_keyword).permit(:syntax_keyword_rubies_id, :description, :code)
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
