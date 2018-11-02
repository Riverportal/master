class TourismController < ApplicationController
#  before_action :set_registration, [:show, :edit]

  def index
    @tourist = Tourist.all
  end
  def new
    @tourist = Tourist.new
  end
  
  def edit
  end
  
  def show
  end
  
  def registration
    @tourist = Tourist.new(firstname: params[:firstname],lastname: params[:lastname],email: params[:email],mobile: params[:mobile],city: params[:city],tourist_place: params[:tourist_place])
    @tourist.save
    flash[:notice] = "Registration sucessfully"
    p 'tourisum registration sucess'
  end
  
  private
    def set_registration
      @tourist = Tourist.find(params[:id])
    end

    def registration_params
      params.require(:tourist).permit(:firstname,:lastname,:email,:mobile,:city,:tourist_place)
    end
    
end
