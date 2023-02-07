module FeedlyApi
  class Client
    module Categories

      def categories
        res = get("categories")
        JSON.parse(res.body)
      end
    end
  end
end
