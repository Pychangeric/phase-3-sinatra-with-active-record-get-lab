class BakedGood < ActiveRecord::Base
  
    def by_price
      baked_goods = BakedGood.order(price: :desc)
      render json: baked_goods
    end
  
    def most_expensive
      baked_good = BakedGood.order(price: :desc).first
      render json: baked_good
    end
 
end



