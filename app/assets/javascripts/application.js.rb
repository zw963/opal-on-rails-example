require 'rails-ujs'
require 'turbolinks'
require 'opal'
require 'jquery'
require 'opal-jquery'
# require 'opal-jquery-ujs'
require_tree '.'

Document.ready? do
  ColorsView.new
end
