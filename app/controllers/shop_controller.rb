class ShopController < ApplicationController
  before_action :must_be_logged_in
  def main
     @db = Item.where(user_id: params[:id])
  end
  def checkitem
    inventory = Inventory.create(user_id:session[:user_id].to_i,item_id: params[:data_id].to_i,price:params[:data_price].to_i)
    inventory.save
    item=Item.where(id:params[:data_id])
    item.update(stock: item.first.stock-1) 
    redirect_to "/shop/#{params[:id]}"
  end
end
