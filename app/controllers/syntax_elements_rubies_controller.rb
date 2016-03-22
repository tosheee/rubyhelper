class SyntaxElementsRubiesController < ApplicationController
  before_action :set_syntax_elements_ruby, only: [:show, :edit, :update, :destroy]
  before_filter :check_if_admin, only:[:index, :show, :new, :create, :edit, :update, :delete]

  # GET /syntax_elements_rubies
  # GET /syntax_elements_rubies.json
  def index
    @syntax_elements_rubies = SyntaxElementsRuby.all
  end

  # GET /syntax_elements_rubies/1
  # GET /syntax_elements_rubies/1.json
  def show
  end

  # GET /syntax_elements_rubies/new
  def new
    @syntax_elements_ruby = SyntaxElementsRuby.new
  end

  # GET /syntax_elements_rubies/1/edit
  def edit
  end

  # POST /syntax_elements_rubies
  # POST /syntax_elements_rubies.json
  def create
    @syntax_elements_ruby = SyntaxElementsRuby.new(syntax_elements_ruby_params)

    respond_to do |format|
      if @syntax_elements_ruby.save
        format.html { redirect_to @syntax_elements_ruby, notice: 'Syntax elements ruby was successfully created.' }
        format.json { render :show, status: :created, location: @syntax_elements_ruby }
      else
        format.html { render :new }
        format.json { render json: @syntax_elements_ruby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syntax_elements_rubies/1
  # PATCH/PUT /syntax_elements_rubies/1.json
  def update
    respond_to do |format|
      if @syntax_elements_ruby.update(syntax_elements_ruby_params)
        format.html { redirect_to @syntax_elements_ruby, notice: 'Syntax elements ruby was successfully updated.' }
        format.json { render :show, status: :ok, location: @syntax_elements_ruby }
      else
        format.html { render :edit }
        format.json { render json: @syntax_elements_ruby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syntax_elements_rubies/1
  # DELETE /syntax_elements_rubies/1.json
  def destroy
    @syntax_elements_ruby.destroy
    respond_to do |format|
      format.html { redirect_to syntax_elements_rubies_url, notice: 'Syntax elements ruby was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syntax_elements_ruby
      @syntax_elements_ruby = SyntaxElementsRuby.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def syntax_elements_ruby_params
      params.require(:syntax_elements_ruby).permit(:element)
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
