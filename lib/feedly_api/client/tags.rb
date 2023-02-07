module FeedlyApi
  class Client
    module Tags

      def tags
        res = get("tags")
        JSON.parse(res.body)
      end
    end
  end
end
