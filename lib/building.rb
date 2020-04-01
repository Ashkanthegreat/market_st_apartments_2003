
class Building
  attr_reader :units, :renters, :rented_units

  def initialize
    @units = []
    @renters = []
    @rented_units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    @units.find_all do |unit|
      if unit.renter != nil
        @renters << unit.renter.name
      end
    end
    @renters
  end

  def average_rent
    units_rents = []
    @units.each { |unit| units_rents << unit.monthly_rent  }

    ave_rent = units_rents.sum / units_rents.size.to_f

    ave_rent
  end


end
