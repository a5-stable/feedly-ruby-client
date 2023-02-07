module FeedlyApi
  module Request
    ENDPOINT_BASE = "http://cloud.feedly.com".freeze
    API_VERSION_PATH = '/v3/'.freeze

    def get(path, params = {})
      path = API_VERSION_PATH + path
      res = conn.get(path, params)

      respond(res)
    end

    def post(path, params = {})
      path = API_VERSION_PATH + path
      res = conn.post(path, params)
      
      respond(res)
    end

    private

    def conn
      @conn ||= Faraday.new(ENDPOINT_BASE, headers: base_headers)
    end

    def base_headers
      {
        Accept: "application/json",
        :"Content-Type" => "application/json",
        Authorization: "Bearer #{access_token}"
      }
    end

    def respond(res)
      JSON.parse(res.body)
    end
  end
end
