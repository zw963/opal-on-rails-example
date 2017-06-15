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
    # 这是给所有的 a 元素, 逐个绑定事件.(需要绑定很多事件)
    # 这种情况下,  evt.target 和 evt.current_target 是一样的.
    # element.find('a').on :click do |evt|
    #   $console.log "Hello! (You just clicked on a link: #{evt.current_target.text})"
    # end

    # 这是给 element 绑定了一个事件而已.
    # 这种情况下, 经过测试, 为什么两者还是一样的?
    element.on :click, 'a' do |evt|
      $console.log "Hello! (You just clicked on a link: #{evt.current_target.text})"
    end
  end
end

Document.ready? do
  ColorsView.new
end
