class TripsController < ApplicationController

  def new
    @trip = Trip.new
    @loo = Loo.find(params[:loo_id])
    @user = User.order('RANDOM()').first
    @notes = Note.all
    @review = Review.new(user: @user, loo: @loo)
  end

end
