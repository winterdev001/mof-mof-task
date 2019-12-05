class PropertyNestsController < ApplicationController
  before_action :set_property_nest, only: [:show, :edit, :update, :destroy]

  # GET /property_nests
  def index
    @property_nests = PropertyNest.all
  end

  # GET /property_nests/1
  def show
  end

  # GET /property_nests/new
  def new
    @property_nest = PropertyNest.new
  end

  # GET /property_nests/1/edit
  def edit
  end

  # POST /property_nests
  def create
    @property_nest = PropertyNest.new(property_nest_params)

    if @property_nest.save
      redirect_to @property_nest, notice: 'Property nest was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /property_nests/1
  def update
    if @property_nest.update(property_nest_params)
      redirect_to @property_nest, notice: 'Property nest was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /property_nests/1
  def destroy
    @property_nest.destroy
    redirect_to property_nests_url, notice: 'Property nest was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_nest
      @property_nest = PropertyNest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def property_nest_params
      params.require(:property_nest).permit(:rent, :adress, :building_age, :remarks, :name_of_railway_line, :statation_name, :how_many_minutes_walks, :name_of_railway_line1, :statation_name1, :how_many_minutes_walks1)
    end
end
