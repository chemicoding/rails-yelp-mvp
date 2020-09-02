class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
    
    def index
        @restaurants = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new
      end

      def edit
        @restaurant = Restaurant.find(params[:id])
      end

      def show
        @review = Review.new
        @restaurant = Restaurant.find(params[:id])
      end

      def create
        @restaurant = Restaurant.new(restaurant_params)
    
        if @restaurant.save
          redirect_to @restaurant, notice: 'Restaurant was successfully created.'
        else
          render :new
        end
      end

      def update
        @restaurant.update(restaurant_params)
          redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
        
      end

      def destroy
        @restaurant.destroy
        redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.'
      end
    
      private
      # Use callbacks to share common setup or constraints between actions.
      def set_restaurant
        @restaurant = Restaurant.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def restaurant_params
        params.require(:restaurant).permit(:name, :address, :phone_number, :category)
      end
  end
    

