
class PropertiesController < ApplicationController
require 'csv'

  def import
    file = params[:file]
    return redirect_to properties_path, notice: "properties imported." unless file.content_type == "text/csv"
    CsvImportPropertyService.new.call(file)
    redirect_to properties_path, notice: "properties imported."
  end

  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to @property
    else
      render :new
    end
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])
    if @property.update(property_params)
      redirect_to @property
    else
      render :edit
    end
  end

  def destroy
    @property = Property.find(params[:id])
    @property.destroy
    redirect_to properties_path
  end

  private

  def property_params
    params.require(:property).permit(:price_content, :subdivision, :region, :district, :map_area, :property_tipe, :mls_id, :year_built, :bedrooms, :bathrooms, :half_bathrooms, :number_of_rooms, :lot_sqft, :closed_area, :open_area, :style, :remodelled, :posession, :remarks_es, :monthly_assessment, :interior_features, :exterior_featrues, :other_services, :lot_shape, :web_title_es, :roof, :flooring, :water, :contruction, :parking_spaces, :internal_features, :link, :leter, :a1, :a2, :a3, :a4, :a5, :a6, :a8, :a9, :a10)
  end


end
