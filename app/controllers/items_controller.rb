class ItemsController < ApplicationController
  def show
    @item = Item.find_by(random_url: params[:id])
  end

  def new
    @item = Item.new
    4.times { @item.item_images.build }
  end

  def create
    item = Item.create!(item_params)
    session[:item_id] = item.id
    redirect_to item_path(item)
  end

  private

  def item_params
    params.require(:item).permit(:name,
                                 :description,
                                 :item_condition,
                                 :delivery_method,
                                 :asking_price,
                                 item_images_attributes: [:image])
  end
end
