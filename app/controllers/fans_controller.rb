class FansController < ApplicationController
  def new
    @fan = Fan.new
    @user = @fan.build_user
  end

  #Cant figure out how to create the fan with nested user attributes

  def create
    binding.pry
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

  #temporary whitelist all for troubleshooting
  def fan_params
    params.require(:fan).permit!
  end

end
