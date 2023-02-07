module FeedlyApi
  class Client
    module Feeds

      def feeds
        get("feeds")
      end
    end
  end
end
