class WellcomeController < ApplicationController
  def home
  end
  def listing
  	@fillings = Filling.all
  	@yesnos   = Yesno.all
  	@multiples = Multiple.all
  end
end
