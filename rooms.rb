class Room
  attr_reader :color, :style, :windows
  attr_writer :color, :style, :windows
  def initialize(color = "red", style = "modern", windows = 5)
      @color = color
      @style = style
      @windows = windows
  end

  def create(style, windows)
    @style = style
    @windows = windows
  end

  def paint(color)
   @color = color
  end

  def complete?
    if @style == "corner" && @windows == 2
     return true
    elsif @style == "regular" && @windows == 1
     return true
    else
     return false
    end
  end
end

class Floor
  attr_accessor :rooms, :capacity

  def initialize(capacity = nil)
    @rooms = []
    @capacity = capacity
  end

  def complete?
    if @capacity == nil
      return false
    end
    if @rooms.length == @capacity
      return true
    else
      return false
    end
  end

  def inspect_room(room)
    if room.complete?
      @rooms.push room
      return @rooms
    else
      return nil
    end
  end
end

class Building
  attr_accessor :floors, :height
  def initialize(height = nil)
    @floors = []
    @height = height
  end

  def built?
    return unless @height
    if @floors.count == @height
      return true
    else
      return false
    end
  end

  def add_floor(floor)
    if floor.complete?
      @floors.push floor
      return @floors
    else
      return nil
    end
  end
end