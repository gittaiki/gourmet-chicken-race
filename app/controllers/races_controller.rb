class RacesController < ApplicationController
  def new
    @menus = RakutenWebService::Ichiba::Item.search(keyword: 'フランス料理').first(15).sample(10)
    price = 0
    @menus.each { |menu| price += menu['itemPrice'] * 10 }
    num = [25, 30, 30, 35, 35, 40].sample
    @set_price = (price / num).round(-3)
  end

  def show; end
end
