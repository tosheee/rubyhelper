class TypeInnerMethodsController < ApplicationController

  def index
    @type_inner_methods = TypeInnerMethod.all
  end

  def show
   # @type_inner_method = TypeInnerMethod.find([:id])
  end

  def new
    @type_inner_method = TypeInnerMethod.new
  end

  def create
    @type_inner_method = TypeInnerMethod.new(type_inner_method_param)
    if @type_inner_method.save
    redirect_to action: :index
    else
      render action: :new
    end
  end

  def edit
    @type_inner_method = TypeInnerMethod.find(params[:id])
  end

  def update
    @type_inner_method = TypeInnerMethod.find(params[:id])
    if @type_inner_method.update(type_inner_method_param)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def delete
    @type_inner_method = TypeInnerMethod.find(params[:id])
    @type_inner_method.destroy
    redirect_to action: :index

  end

  private

    def type_inner_method_param
    params.require(:type_inner_method).permit(:name_type_method)
    end

end
