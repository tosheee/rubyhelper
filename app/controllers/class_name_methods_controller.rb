class ClassNameMethodsController < ApplicationController
  def index
    @class_name_methods = ClassNameMethod.all
  end

  def show
    #@class
  end

  def new
    @class_name_method = ClassNameMethod.new
  end

  def create
    @class_name_method = ClassNameMethod.new(class_name_method_params)
    if @class_name_method.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def edit
    @class_name_method = ClassNameMethod.find([:id])
  end

  def update
    @class_name_method = ClassNameMethod.find([:id])
    if @class_name_method.update(class_name_method_params)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    @class_name_method = ClassNameMethod.find([:id])
    @class_name_method.destroy
    redirect_to action: :index
  end

  private

  def class_name_method_params
    params.require(:class_name_method).permit(:type_inner_methods_id, :name_method)
  end

  def check_if_admin
    if current_user.role == 'superadmin'
      true
    else
      render 'static_pages/rubyhelper'
    end
  end
end
