class RegistrationsController < ApplicationController
  
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new
    if @registration.update_attributes(registration_params)
      current_visit.update_attributes(registration: @registration)
      session[:current_visit_id] = nil
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