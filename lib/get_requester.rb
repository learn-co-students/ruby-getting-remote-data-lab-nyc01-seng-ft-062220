# Practice sending GET requests using Ruby to access (Fake) remote data
require 'open-uri'
require 'net/http'
require 'json'

class GetRequester

    attr_reader :uri

    def initialize(url)
        @uri = URI.parse(url)
    end

    def uri=(url)
        @uri = URI.parse(url)
    end

    def get_response_body
        response_body = Net::HTTP.get_response(uri).body
    end

    def parse_json
        JSON.parse(get_response_body)
    end

end