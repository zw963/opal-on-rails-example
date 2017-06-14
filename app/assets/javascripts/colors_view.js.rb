require 'console'

class ColorsView
  def initialize(selector = 'body.controller-colors', parent = Element)
    @element = parent.find(selector)
    setup
  end

  attr_reader :element

  def setup
    # Put here the setup for the view behavior
    say_hello_when_a_link_is_clicked
  end

  def say_hello_when_a_link_is_clicked
    all_links.on :click do |event|
      # Use prevent_default to stop default behavior (as you would do in jQuery)
      # event.prevent_default
      puts "Hello! (You just clicked on a link: #{event.current_target.text})"
    end
  end

  def all_links
    @all_links ||= element.find('a')
  end
end
