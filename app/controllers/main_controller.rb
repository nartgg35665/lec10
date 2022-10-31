class MainController < ApplicationController
  def login
  end

  def create
    u=User.where(login: params[:login]).first
    session[:user_id]=User.where(login:params[:login]).first.id
    if u&&u.authenticate(params[:password])
      redirect_to '/main/user_items'
      session[:logged_in]=true
    else
      redirect_to main_login_path
    end
  end

  def destroy
    reset_session
  end
  def user_items
    # @student = Item.find(session[:user_id])
    
    @db = Item.where(user_id: session[:user_id])
  end
  def inventories
    @db=[]
    @inventory = Inventory.where(user_id: session[:user_id])
    for data in @inventory
      item=Item.where(id:data.item_id)
      user=User.where(id:item.first.user_id)
      @db.push([item.first.name,data.price,item.first.user_id,user.first.name])
    end
  end
  def delete
    item=Item.where(id:params[:data_id])
    item.first.update(stock:0)
    redirect_to '/main/user_items',notice: 'Item was successfully deleted'
  end
end
