class ItemsController < ApplicationController

  def index
    if params[:user_id]
      user = User.find(params[:id])
      items = user.items
    else 
      items = Item.all
    end
    render json: items, inlude: :user
  end



end
