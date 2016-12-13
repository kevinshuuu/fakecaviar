class LineItemsController < ApplicationController
  def create
    LineItem.create(
      order_id: params[:order_id],
      menu_item_id: params[:menu_item_id]
    )

    redirect_to :back
  end

  def destroy
    li = LineItem.find(params[:id])
    li_order = li.order
    li.destroy

    if li_order.line_items.count == 0
      redirect_to root_path
    else
      redirect_to :back
    end
  end
end
