module FeedlyApi
  class Client
    attr_accessor :access_token

    def initialize(params)
      raise 'access token required' if params.fetch(:access_token).nil?
      @access_token = params.fetch(:access_token)
    end

    def categories
      options = { 
        headers: {
          Authorization: "Bearer #{access_token}"
        }
      }

      http_client = Faraday.new("https://cloud.feedly.com/v3/categories", options)
      res = http_client.get

      require 'json'
      JSON.parse(res.body)
    end
  end
end
