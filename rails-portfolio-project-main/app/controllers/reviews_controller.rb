class ReviewsController < ApplicationController
  require 'pry'
    before_action :set_review, only: [:show, :edit, :update, :destroy]
    # before_action :set_rental

    def index
      @users = User.all

        if !params[:user].blank?
          @reviews = Review.by_user(params[:user])
        elsif !params[:date].blank?
          @reviews = Review.by_date
        else
           @reviews = Review.all
        end 
    end 

    def show
        @review = Review.find_by(id: params[:id]) 
    end 

    def new
       @review = Review.new(rental_id: params[:rental_id])
    end 

    def edit
    end 

    def create
      @rental = Rental.find_by(id: params.dig(:review, :rental_id))
      return redirect_to root_path, notice: "Rental is not available" unless @rental

      @review = @rental.reviews.new(review_params)
      @review.user_id = current_user.id

      if @review.save
        redirect_to @rental
      else
        render :new
      end
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

    # def set_rental
    #     @rental = Rental.find_by(id: params[:id])
    #   end

    def review_params
        params.require(:review).permit(:title, :body, :rating, :rental_id)
    end 




end
