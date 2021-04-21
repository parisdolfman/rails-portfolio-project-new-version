class ReviewsController < ApplicationController
    before_action :set_review, only: [:show, :edit, :update, :destroy]

    def index
        @reviews = Review.all
    end 

    def show
        @review = Review.find_by(id: params[:id]) 
    end 

    def new
        @review = Review.new
    end 

    def edit
    end 

    def create
      @rental = Rental.find_by(params[:rental_id])
      @review = @rental.reviews.create(review_params)
      redirect_to rental_path(@rental)   
    end 

    def update
      @review.update(review_params)
    end 

    def destroy
        @review = Review.find_by(id: params[:id]) 
        @review.destroy
        redirect_to root_path
    end 

    private

    def set_review
        @review = Review.find_by(id: params[:id])
    end 

    def review_params
        params.require(:review).permit(:title, :body, :rating)
    end 




end
