class SuscribersController < ApplicationController
  def index
    @suscriber = Suscriber.new
  end

  def create
    @suscriber = Suscriber.new(suscriber_params)
    if @suscriber.save
      redirect_to root_path, notice: 'Thanks for suscribing!'
    else
      redirect_to root_path, notice: 'Error! Please try again.'
    end
  end

  private
  def suscriber_params
    params.require(:suscriber).permit(:email, :preference1, :preference2, :preference3)
  end
end