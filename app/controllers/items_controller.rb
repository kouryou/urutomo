class ItemsController < ApplicationController
  def show
    @item = Item.friendly.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create!(item_params)
    redirect_to items_complete_path
  end

  def complete
  end

  private

  def item_params
    params.require(:item).permit(:name,
                                 :description,
                                 :item_condition,
                                 :delivery_method,
                                 :asking_price)
  end
end
