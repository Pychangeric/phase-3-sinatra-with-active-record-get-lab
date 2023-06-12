class Bakery < ActiveRecord::Base
  # add association macro here
    def index
      bakeries = Bakery.all
      render json: bakeries
    end
  
    def show
      bakery = Bakery.find(params[:id])
      baked_goods = bakery.baked_goods
      render json: bakery, include: { baked_goods: { only: [:name, :price] } }
    end
  
  
end
