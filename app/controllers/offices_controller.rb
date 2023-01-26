class OfficesController < ApplicationController

    def import
    file = params[:file]
    return redirect_to offices_path, notice: "offices imported." unless file.content_type == "text/csv"
    CsvImportOfficeService.new.call(file)
    redirect_to offices_path, notice: "offices imported."

  end


  def index
    @offices = Office.all
  end

  def show
    @office = Office.find(params[:id])
  end

  def new
    @office = Office.new
  end

  def create
    @office = Office.new(office_params)
    if @office.save
      redirect_to @office
    else
      render :new
    end
  end

  def edit
    @office = Office.find(params[:id])
  end

  def update
    @office = Office.find(params[:id])
    if @office.update(office_params)
      redirect_to @office
    else
      render :edit
    end
  end

  def destroy
    @office = Office.find(params[:id])
    @office.destroy
    redirect_to offices_path
  end

  private

  # def office_params
  #   params.require(:office).permit(:price_current, :subdivision, :region, :district, :map_area, :commercial_type, :lot_sqft, :sqft_total, :closed_area, :open_area, :remarks_es, :monthly_assessment, :interior_features, :exterior_features, :other_services, :web_title_es, :roof, :flooring, :construction, :parking_types)

end
end
