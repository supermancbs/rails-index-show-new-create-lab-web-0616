require 'pry'
class CouponsController < ApplicationController
    
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end 

  def create
    @coupon = Coupon.new
   # binding.pry
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon.id)
  end 

  def new
  end 

  
end 