class FansController < ApplicationController
  def new
    @fan = Fan.new
  end

  def create
    @fan = Fan.new(fan_params)
    if @fan.save
      message = "Fan Created Successfully!"
      redirect_to artists_path, notice: message
    else
      flash.alert = "Your fan profile could not be created. Please correct the errors below."
      render :new
    end
  end

  def destroy
  end

  private

  def fan_params
    params.require(:fan).permit(:name, user_attributes: [ :id, :email, :password ])
  end

end
