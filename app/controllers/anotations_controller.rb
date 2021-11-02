class AnotationsController < ApplicationController
  def index
    @anotations = Anotation.where(user_id: current_user.id)

    @q = Anotation.where(user_id: current_user.id).ransack(params[:q])
    @anotations = @q.result(distinct: true)
  end
  
  def create
    anotation = Anotation.new(anotation_params)
    anotation.user_id = current_user.id
    anotation.save
    
    redirect_to root_path
  end

  def edit
    @anotation = Anotation.find(params[:id])
  end

  def update
      anotation = Anotation.find(params[:id])
      anotation.update(anotation_params)
      
      redirect_to root_path
  end

  def destroy
    anotation = Anotation.find(params[:id])
    anotation.destroy
    redirect_to root_path
  end

  private

  def anotation_params
    params.require(:anotation).permit(:title, :note, :date, :priority, :user_id)
  end
end
