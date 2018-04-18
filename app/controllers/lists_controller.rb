class ListsController < ApplicationController
  def index
    @lists = List.all
    render :index
  end

  def show
    @list = List.find(params[:id])
    render :show
  end

  def new
    @list = List.new
    render :new
  end

  def create
  # list_params needed for list to appear. otherwise it will come up as blank
  # based on lessons (@list) can be added at the end of lists_path but still needs (list_params to work)
    @list = List.new(list_params)
    if @list.save
      flash[:notice] = "List successfully added~"
      redirect_to  lists_path
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
    render :edit
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to
    else
      render :edit
    end
  end

  def destroy
    @list = List.find(params[:id])
    if @list.destroy
      flash[:notice] = "Item destroyed"
      redirect_to lists_path
    else
      render :new
    end
  end

  private
  def list_params
    params.require(:list).permit(:name, :image)
  end

end
