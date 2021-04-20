class ReviewsController < ApplicationController
    before_action :set_review, only: [:show, :edit, :update, :destroy]

    def index
        @reviews = Review.all
    end 

    def show
    end 

    def new
        @review = Review.new
    end 

    def edit
    end 

    def create
      @rental = Rental.find_by(params[:rental_id])
      @review = @rental.review.create(review_params)
      redirect_to rental_path(@rental)   
    end 

    def update
      @review.update(review_params)
    end 

    def destroy
        @review.destroy
    end 

    private

    def set_review
        @review = Review.find(params[:id])
    end 

    def review_params
        params.require(:review).permit(:title, :body, :rating, :rental_id, :user_id)
    end 




end
