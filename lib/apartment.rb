class Apartment
  attr_reader :number,
              :monthly_rent,
              :bedrooms

  def initialize(apartment_params)
    @number = apartment_params[:number]
    @monthly_rent = apartment_params[:monthly_rent]
    @bedrooms = apartment_params[:bedrooms]
  end
end
