class RentalsController < ApplicationController
 
    def index 
        @rentals = Rental.all
    end
    
    def show
        @review = Review.find_by(id: params[:id])
        return if @rental = Rental.find_by(id: params[:id])
        redirect_to root_path, notice: "Rental is not available"
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
        @rental = Rental.find_by(id: params[:id])
        @rental.update(rental_params)
        redirect_to @rental, notice: "Your rental has been succesfully updated."
    end
    
    def destroy
        @rental = Rental.find_by(id: params[:id])
        @rental.destroy
        redirect_to root_path
    end 
    
    
    private

    def rental_params
        params.require(:rental).permit(
            :street_add,
            :city,
            :state,
            :owner,
        )
    end

end
