class EducatesController < ApplicationController
  def index
    @educates = Knowledge.all
  end
  def show
    @knowledge = Knowledge.find_by(id: params[:id])#那筆id的全部資料
  end

  def edit
  end

  def new
  end

  # private
  #  def knowledge_params
  #    params.require(:educ).permit(:id)
  #  end
end
