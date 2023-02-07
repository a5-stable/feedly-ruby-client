module FeedlyApi
  module Request
    ENDPOINT_BASE = "http://cloud.feedly.com".freeze
    API_VERSION_PATH = '/v3/'.freeze

    def get(path, params = {})
      path = API_VERSION_PATH + path
      conn.get(path, params)
    end

    def post(path, params = {})
      path = API_VERSION_PATH + path
      conn.post(path, params)
    end

    private

    def conn
      @conn ||= Faraday.new(ENDPOINT_BASE, headers: base_headers)
    end

    def base_headers
      {
        Authorization: "Bearer #{access_token}"
      }
    end
  end
end
