module FeedlyApi
  class Client
    module Feeds

      def feeds
        res = get("feeds")
        JSON.parse(res.body)
      end
    end
  end
end
