class ReviewsController < ApplicationController

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
    @loo = Loo.find(params[:loo_id])
  end

  def create
    # Save the trip first
    review_params[:trip][:started_at] = DateTime.parse(review_params[:trip][:started_at])
    review_params[:trip][:ended_at] = DateTime.parse(review_params[:trip][:ended_at])
    @trip = Trip.new(review_params[:trip])
    @trip.save

    # Save the review, it's OK if trip failed (for now)
    @review = Review.new(review_params[:review])
    @review.trip = @trip

    if @review.save
      # Save review notes
      review_params[:notes].each do |i, v|
        @review.review_notes.create(note_id: i) if v == '1'
      end
      redirect_to @review
    else
      # TODO: SOMETHING BETTER
      # render 'new'
      redirect_to new_trip_path(loo_id: review_params[:trip][:loo_id])
    end
  end

  private

    def review_params
      params.require(:trip).permit!
      params.require(:review).permit!
      params.require(:notes).permit!
      params
    end

end
