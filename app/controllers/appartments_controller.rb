class AppartmentsController < ApplicationController

  def index
    @appartments = Appartment.all
  end

  def new
    @appartment = Appartment.new
  end

  def create
    @user = current_user
    @appartment = Appartment.new(appartment_params)
    @appartment.user_id = @user.id
    @appartment.save
    redirect_to pages_home_path
  end

  def show
    @appartment = Appartment.find(params[:id])
  end

  def edit
    @appartment = Appartment.find(params[:id])
  end

  def update
    @appartment = Appartment.find(params[:id])
    @appartment.update(appartment_params)
  end

  private

  def appartment_params
    params.require(:appartment).permit(:address, :description, :header, :appartment_type, :price, :photo, pictures: [])
  end
end
