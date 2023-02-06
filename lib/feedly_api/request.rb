module FeedlyApi
  module Request
    ENDPOINT_BASE = "http://cloud.feedly.com".freeze
    API_VERSION_PATH = '/v3'.freeze

    attr_accessor :method, :path, :params, :headers

    def initialize(method, path, params, headers)
      @method = method
      @path = path
      @params = params
      @headers = headers
    end

    def do
      conn.public_send(method, path, params, headers)
    end

    private

    def conn
      @conn ||= Faraday.new(ENDPOINT_BASE)
    end
  end
end
