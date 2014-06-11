class FruitsController < ApplicationController

  layout 'header_footer'

  def index
  	@fruits = Fruit.all
  end

end
