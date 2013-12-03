class GradesController < ApplicationController

  def index
	  @grades =  Grade.all
  end

end