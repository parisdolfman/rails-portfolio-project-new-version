class RentalsController < ApplicationController
require 'pry'
    def index 
        @rentals = Rental.all
    end
    
    def show
        @rental = Rental.find_by(params[:id])
    end 

    def new
        @rental = Rental.new 
    end

    def edit
        @rental = Rental.find_by(id: params[:id])
    end
    
    def create
        @rental = Rental.new(rental_params)
        if @rental.save
          redirect_to @rental, notice: "Your rental has been succesfully added."
        else 
            render :new
        end 
    end

    def update
        @rental = Rental.find_by(params[:id])
        @rental.update(rental_params)
        redirect_to @rental, notice: "Your rental has been succesfully updated."
    end
    
    def destroy
        @rental = Rental.find_by(params[:id])
        @rental.destroy
        redirect_to root_path
    end 
    
    
    private

    def rental_params
        params.require(:rental).permit(
            :street_add,
            :city,
            :state,
            :owner
        )
    end

end
