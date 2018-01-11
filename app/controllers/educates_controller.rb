class EducatesController < ApplicationController
  def index
    @educates = Knowledge.all
  end
  
  def edit
  end
  
  def new
  end
end
