class Car
	attr_accessor :type, :color, :engine, :drivers

  def initialize(type = "regular", color = nil, engine = 100)
    @type = type
    @color = color
    @engine = engine
    @drivers = []
    @wheels = []
  end

  def ready?
    if @drivers.length >= 1
      return true
    else
      return false
    end
  end

  def add_driver(driver)
    if driver.authorized?
      @drivers << driver
    else
     p "cannot add"
    end
  end

end

class Driver
  attr_accessor :name, :license

  def initialize name = nil, license = false
    @name = name
    @license = license
  end

  def authorized?
    if @license == true
      return true
    else
      false
    end
  end

end