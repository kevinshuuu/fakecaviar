class SiteController < ApplicationController
  def index
    session[:order_id] ||= Order.create.id
  end
end
