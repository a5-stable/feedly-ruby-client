module FeedlyApi
  class Client
    module Boards

      def boards
        res = get("boards")
        JSON.parse(res.body)
      end
    end
  end
end
