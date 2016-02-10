class OrdersController < ApplicationController
  def new_order
  	@customer = Customer.find(params[:id])
    @orders = @customer.orders
  	@order = Order.new

  end

  def new_create
  	@customer = Customer.find(params[:customer_id])
  	@order = @customer.orders.new(orders_params)
  	if @order.save
  		redirect_to root_path
  	else
  		render new_order
  	end
  end

private

def orders_params
	params.require(:order).permit(:products,:price)
end

end
