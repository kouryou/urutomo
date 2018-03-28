class StaticPagesController < ApplicationController
  def home
    redirect_to new_item_path
  end
end
