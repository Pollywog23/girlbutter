class PublicController < ApplicationController
  
  def index
  
  end

  def projects
     # @projects = Event.each.order(:created_at => 'desc').page([params[:page].to_i, 1].max).per(6)

  end

end