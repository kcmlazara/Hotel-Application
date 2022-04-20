class ReviewsController < ApplicationController
    before_action :set_hotel

    def create
        review = @hotel.reviews.create! params.required(:review).permit(:content_review)
        ReviewsMailer.submitted(review).deliver_later
        redirect_to @hotel
    end
   
    def update
        review = @hotel.reviews.find(params[:id])
        review.update! params.required(:review).permit(:content_review)
        redirect_to @hotel
    end

    private
    def set_hotel
        @hotel = Hotel.find(params[:hotel_id])
    end
end
