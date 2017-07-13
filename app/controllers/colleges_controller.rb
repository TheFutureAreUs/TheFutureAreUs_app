class CollegesController < ApplicationController

  def index
    @colleges = College.all
    @maryland_colleges = @colleges[0]
  end
  
end
