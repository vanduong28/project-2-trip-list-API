class CitiesController < ProtectedController
  before_action :set_city, only: [:show, :update, :destroy]

  # GET /cities
  def index
    @cities = current_user.cities

    render json: @cities
  end

  # GET /cities/1
  def show
    render json: @city
  end

  # POST /cities
  def create
    @city = current_user.cities.build(city_params)

    if @city.save
      render json: @city, status: :created, location: @city
    else
      render json: @city.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cities/1
  def update
    # # check if current user matches the user_id of the city to be updated
    # if current_user.id == @city.user_id
    #   # if user is valid then make update
    #   if @city.update(city_params)
    #     # if update is successful display updated city
    #     render json: @city
    #   else
    #     # if update is unsuccessful display error
    #     render json: @city.errors, status: :unprocessable_entity
    #   end
    # else
    #   # if user is not valid then display error indicating user not authorized
    #   render json: 'Not authorized', status: :unprocessable_entity
    # end
    if @city.update(city_params)
      head :no_content
    else
      render json: @city.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cities/1
  def destroy
    @city.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_city
    # @city = City.find(params[:id])
    @city = current_user.cities.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def city_params
    # REMOVE user_id hard code
    params.require(:city).permit(:name, :state, :country)
  end
end
