module FeedlyApi
  class Client
    module Categories

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
end
