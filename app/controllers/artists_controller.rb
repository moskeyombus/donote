class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
    @user = @artist.build_user
  end

  def create
  end

  def destroy
  end

  def index
    @artists = Artist.all
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :image, user_attributes: [ :id, :email, :password ])
  end
end
