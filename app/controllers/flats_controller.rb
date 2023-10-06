require "open-uri"

class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json".freeze
    @flats = JSON.parse(URI.open(url).read)
  end
end
