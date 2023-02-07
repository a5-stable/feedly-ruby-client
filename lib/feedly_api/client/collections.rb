module FeedlyApi
  class Client
    module Collections

      def collections
        get("collections")
      end

      def collection(collection_id)
        get("collections/#{CGI.escape(collection_id)}")
      end

      def create_collection(params = {})
        post("collections", params)
      end
    end
  end
end
