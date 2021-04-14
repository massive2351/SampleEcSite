class Admins::ItemsController < ApplicationController
  
  def index
    @items = Item.all
  end
  
  def show
  end
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to root_path
  end
  
  def destroy
  end
  
  def edit
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :image, :price, :introduction, :genre_id, :is_active)
  end
  
end
