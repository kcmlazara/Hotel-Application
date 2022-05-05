class ReviewsController < ApplicationController
    before_action :set_hotel
    before_action :authenticate_user!, except: [:index, :show]
    
    def create
        review_params = params.required(:review).permit(:content_review)
        review_params[:user_id] = current_user.id
        review = @hotel.reviews.create!(review_params)
        #review = @hotel.reviews.create! params.required(:review).permit(:content_review)
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
