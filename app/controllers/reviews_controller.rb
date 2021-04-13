class ReviewsController < ApplicationController

  def new 
    @review = Review.new
  end

  def create
      @review = Review.new(review_params)
      @review.save
  
      # no need for app/views/reviews/create.html.erb
      redirect_to review_path(@review)
    end

  private

    def review_params
      params.require(:review).permit(:content, :rating)
    end

end
