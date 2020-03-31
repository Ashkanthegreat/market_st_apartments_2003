class Building
  attr_reader :units

  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    @renters.find_all do
      if @renter != nil
        @renters << @renter.name
      end
    end
  end

end
