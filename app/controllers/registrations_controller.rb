class RegistrationsController < ApplicationController
  
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new
    if @registration.update_attributes(registration_params)
      redirect_to :root
    else
      render :new
    end
  end

  private
    def registration_params
      params.require(:registration).permit(:name, :email, :extra_info)
    end
  
end