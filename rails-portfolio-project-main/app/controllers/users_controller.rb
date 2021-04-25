class UsersController < ApplicationController

    def index 
        @reviews = Review.all
    end 
end
