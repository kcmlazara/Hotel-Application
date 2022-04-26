class CarsController < ApplicationController
    before_action :set_car, only: %i[ show edit update destroy move]

    def index
        @cars = Car.all
    end

    def new
        @car = Car.new
    end

    def create
        @car = Car.new(car_params)
        #@car.save!
        #redirect_to cars_path

        respond_to do |format|
            if @car.save
              format.html { redirect_to car_url(@car), notice: "Hotel was successfully created." }
              format.json { render :show, status: :created, location: @car}
            else
              format.html { render :new, status: :unprocessable_entity }
              format.json { render json: @car.errors, status: :unprocessable_entity }
            end
          end
    end

    def move
        @car.insert_at(params[:position].to_i)
        head :ok
    end

    private

    def set_car
        @car = Car.find(params[:id])
    end
  
    def car_params
        params.require(:car).permit(:name, :country_id)
    end


end