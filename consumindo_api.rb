require 'URI'
require 'net/http'
require "active_support"


uri = URI("https://api.adviceslip.com/advice")

response = Net::HTTP.get(uri)


phrase = ActiveSupport::JSON.decode(response)
puts phrase['slip']["advice"]