module FeedlyApi
  class Client
    module Feeds

      def feeds(params = {})
        get("feeds/.mget", params)
      end

      def feed(feed_id)
        get("feeds/#{CGI.escape(feed_id)}")
      end
    end
  end
end
