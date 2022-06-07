class RacesController < ApplicationController
  def new
    @menus = RakutenWebService::Ichiba::Item.search(keyword: 'フランス料理').first(10)
  end

  def show; end
end
