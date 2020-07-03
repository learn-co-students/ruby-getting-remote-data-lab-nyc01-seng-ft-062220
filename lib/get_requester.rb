# Write your code here
require 'open-uri'
require 'net/http'
require 'json'

class GetRequester

  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def get_response_body
    uri = URI.parse(@string)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    data = JSON.parse(self.get_response_body)
    data
  end

end