module FeedlyApi
  class Client
    module Categories

      def categories
        get("categories")
      end
    end
  end
end
