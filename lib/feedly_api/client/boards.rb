module FeedlyApi
  class Client
    module Boards

      def boards
        options = { 
          headers: {
            Authorization: "Bearer #{access_token}"
          }
        }
  
        http_client = Faraday.new("https://cloud.feedly.com/v3/boards", options)
        res = http_client.get
  
        require 'json'
        JSON.parse(res.body)
      end
    end
  end
end
