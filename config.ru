# encoding: utf-8

# environment
ENV['RACK_ENV'] ||= 'development'

# bootstap app logic
require './lib/moon'

# sinatra app
require './moon_app'

map '/' do
  run MoonApp
end
