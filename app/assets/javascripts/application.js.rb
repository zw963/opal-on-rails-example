require 'rails-ujs'
# require 'turbolinks'
require 'opal'
require 'jquery'
require 'opal-jquery'
require 'console'
require_tree '.'

Document.ready? do
  $console.log 'hello!'
end
