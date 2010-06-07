require 'rubygems'
require 'gosu'
require 'player'

class GameWindow < Gosu::Window
  def initialize
    super(640, 480, false)
    self.caption = "Airport Superman"
    @background_image = Gosu::Image.new(self, 'media/Space.png', true)

    @player = Player.new(self)
    @player.warp(320, 240)
  end

  def update
    if button_down? Gosu::Button::KbLeft
      @player.turn_left
    end
    if button_down? Gosu::Button::KbUp
      @player.accelerate
    end
    if button_down? Gosu::Button::KbRight
      @player.turn_right
    end
    @player.move
  end

  def draw
    @player.draw
    @background_image.draw(0,0,0)
  end

  def button_down(id)
    if id == Gosu::Button::KbEscape
      close
    end
  end
end

window = GameWindow.new
window.show
