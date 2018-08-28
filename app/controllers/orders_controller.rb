class OrdersController < ApplicationController
  def index
    @orders = Order.includes(:product).all
  end

  def show
    @order = Order.find(params[:id])
  end

class Order < ActiveRecord::Base
    belongs_to :product
    belongs_to :user
end
class User < ActiveRecord::Base
    has_many :orders
end

  def new
  end

  def create
  end

  def destroy
  end
end