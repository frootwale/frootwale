class FruitsController < ApplicationController

  layout 'header_footer'

  def index
  	@fruits = Fruit.where(:stock != 0)
  end

end
