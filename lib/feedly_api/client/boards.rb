module FeedlyApi
  class Client
    module Boards

      def boards
        get("boards")
      end

      def update_board(tag_id, params = {})
        params[:id] = tag_id
        post("boards", params)
      end
    end
  end
end
