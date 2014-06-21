class FruitsController < ApplicationController

  layout 'header_footer'

  def index
  	@fruits = Fruit.all
  	@fruits << Fruit.first
  	@fruits << Fruit.first
  	@fruits << Fruit.first
  	@fruits << Fruit.first
  	@fruits << Fruit.first
  	@fruits << Fruit.first
  	@fruits << Fruit.first
  	@fruits << Fruit.first
  	@fruits << Fruit.first
  	@fruits << Fruit.first
  	@fruits << Fruit.first
  	@fruits << Fruit.first
  	@fruits << Fruit.first
  	@fruits << Fruit.first
  	@fruits << Fruit.first
  	@fruits << Fruit.first
  end

end
