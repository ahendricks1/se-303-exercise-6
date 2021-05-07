button_details = ForegroundFactory.new(is_dark_mode)

def draw_button(button_details)
  paint(button_details, button_details.color_id)
end

class ForegroundFactory
  def new(is_dark_mode)
    if is_dark_mode
      DarkForeground.new
    else
      LightForeground.new
    end
  end
end

class DarkForeground < ForegroundFactory
  def initialize(label_text, x, y, foreground_color)
    @label_text = label_text
    @x = x
    @y = y
    @foreground_color = foreground_color - 10
  end

  def color_id
    '#E0E0E0'
  end
end

class LightForeground < ForegroundFactory
  def initialize(label_text, x, y, foreground_color)
    @label_text = label_text
    @x = x
    @y = y
    @foreground_color = foreground_color + 10
  end

  def color_id
    '#111111'
  end
end