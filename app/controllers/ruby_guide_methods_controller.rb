class RubyGuideMethodsController < ApplicationController

  def index
    @ruby_name_classes = Admin::RubyNameClass.all
  end

  def show
    @ruby_name_classes = Admin::RubyNameClass.all
    @ruby_name_class = Admin::RubyNameClass.find(params[:id])
    @name_methods =Admin::RubyNameMethod.where(ruby_name_class_id: @ruby_name_class).pluck(:id, :name_method, :short_method_description)
    @method_full_descriptions = Admin::RubyNameMethodFullDescription.all
  end


end
