class SpeccollegesController < ApplicationController

  def find_by_college
    college = College.find(params[:college_id])
    speccolleges = college.speccolleges.find_all
    render json: { speccolleges: speccolleges }
  end

end
