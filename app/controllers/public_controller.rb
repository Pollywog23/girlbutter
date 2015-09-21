class PublicController < ApplicationController
  
  def index
    @projects = Project.where(:published => true).order(:created_at => 'DESC').limit(6)
  end

end