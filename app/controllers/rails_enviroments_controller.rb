class RailsEnviromentsController < ApplicationController

  def index
    @rails_name_structures = Admin::RailsNameStructure.all
  end


  def show
    @rails_name_structures = Admin::RailsNameStructure.all
    @rails_name_structure = Admin::RailsNameStructure.find(params[:id])

    @name_methods = Admin::RailsNameMethod.where(rails_name_structure_id: @rails_name_structure).pluck(:id, :name_method, :short_description)

    @rails_method_descriptions = Admin::RailsMethodDescription.all
  end


  def show2
    @syntax_name_elements = Admin::RubySyntaxNameElement.all
    @syntax_name_element = Admin::RubySyntaxNameElement.find(params[:id])

    @syntax_name_keywords = Admin::RubySyntaxNameKeyword.where(admin_ruby_suntax_name_element_id: @syntax_name_element).pluck(:id, :name_keyword, :name_keyword_description)
    @syntax_keyword_descriptions = Admin::RubySyntaxKeywordDescription.all
    end

end
