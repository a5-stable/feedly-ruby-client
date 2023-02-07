module FeedlyApi
  class Client
    module Boards

      def boards
        get("boards")
      end
    end
  end
end
