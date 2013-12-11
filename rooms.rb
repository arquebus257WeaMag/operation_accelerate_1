class Room
    attr_reader :color, :style, :windows
    attr_writer :color, :style, :windows
    def initialize(color = "red", style = "modern", windows = 5)
        @color = color
        @style = style
        @windows = windows
    end
end
