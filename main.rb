button_details = ForegroundFactory.new(label_text, x, y, foreground_color, is_dark_mode)

def draw_button(button_details)
  paint(button_details, button_details.color_id)
end

class ForegroundFactory
  def initialize(label_text, x, y, foreground_color, is_dark_mode)
    @label_text = label_text
    @x = x
    @y = y
    @foreground_color = foreground_color + 10
    @is_dark_mode = is_dark_mode

    if is_dark_mode
      DarkForeground.new(label_text, x, y, foreground_color)
    else
      LightForeground.new(label_text, x, y, foreground_color)
    end
  end
end

class DarkForeground < ForegroundFactory
  def initialize(label_text, x, y, foreground_color)
    super(label_text, x, y, foreground_color - 10)
  end

  def color_id
    '#E0E0E0'
  end
end

class LightForeground < ForegroundFactory
  def initialize(label_text, x, y, foreground_color)
    super(label_text, x, y, foreground_color + 10)
  end

  def color_id
    '#111111'
  end
end