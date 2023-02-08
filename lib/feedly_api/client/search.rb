module FeedlyApi
  class Client
    module Search
      def search_feeds(params = {})
        get("search/feeds", params)
      end

      def search_entities(params = {})
        get("search/entities", params)
      end
    end
  end
end
