module FeedlyApi
  class Client
    module Markers

      def markers
        get("markers/counts")
      end

      def update_markers(params = {})
        post("markers", params)
      end
    end
  end
end
