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

      def update_collection(collection_id, params = {})
        params[:id] = GI.escape(collection_id)
        post("collections", params)
      end

      def add_feed(collection_id, params = {})
        put("collections/#{CGI.escape(collection_id)}/feeds", params)
      end

      def add_feeds(collection_id, params = {})
        post("collections/#{CGI.escape(collection_id)}/feeds.mput")
      end

      def remove_feed(collection_id, feed_id)
        delete("collections/#{CGI.escape(collection_id)}/feeds/#{CGI.escape(feed_id)}")
      end

      def remove_feeds(collection_id, params = {})
        delete("collections/#{CGI.escape(collection_id)}/feeds.mdelete", params)
      end
    end
  end
end
