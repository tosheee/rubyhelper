class RubyGuideMethodsController < ApplicationController

  def index
  @type_inner_methods = TypeInnerMethod.all

  end

  def show
    @type_inner_methods = TypeInnerMethod.all
    @type_inner_method =  TypeInnerMethod.find(params[:id])
    @class_name_method = ClassNameMethod.where(type_inner_methods_id: @type_inner_method).pluck(:id, :name_method)
  end


end
