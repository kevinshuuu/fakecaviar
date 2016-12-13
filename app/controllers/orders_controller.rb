class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:complete]

  def show
    @order = Order.find(params[:id])
  end

  def complete
    @order = Order.find(params[:order_id])
    @order.user_id = current_user.id
    @order.complete = true;
    @order.save
    session[:order_id] = Order.create.id

    redirect_to :back
  end
end
