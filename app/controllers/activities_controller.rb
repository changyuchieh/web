class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end



  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      redirect_to activities_path, notice: "新增活動成功!"
    else
      render :new
    end
  end

  def update
     @activity = Activity.find_by(id: params[:id])

     if @activity.update(activity_params)
       redirect_to activities_path, notice: "資料更新成功!"
     else
       render :edit
     end
   end

   def participate
     @activity = Activity.find_by(id: params[:id])
     @activity.participate_logs.create(ip_address: request.remote_ip) if @activity
     redirect_to activities_path, notice: "參加成功!"
  end

   def destroy
    @activity = Activity.find_by(id: params[:id])
    @activity.destroy if @activity
    redirect_to activities_path, notice: "活動資料已刪除!"
  end

  private
  def activity_params
    params.require(:activity).permit(:title, :content, :category, :place, :avatar)
  end


end
