require 'feedly_api/client/boards'
require 'feedly_api/client/categories'
require 'feedly_api/client/collections'
require 'feedly_api/client/feeds'
require 'feedly_api/client/tags'
require 'feedly_api/request'
require 'json'

module FeedlyApi
  class Client
    include FeedlyApi::Client::Boards
    include FeedlyApi::Client::Categories
    include FeedlyApi::Client::Collections
    include FeedlyApi::Client::Feeds
    include FeedlyApi::Client::Tags
    include FeedlyApi::Request

    attr_accessor :access_token

    def initialize(params)
      raise 'access token required' if params.fetch(:access_token).nil?
      @access_token = params.fetch(:access_token)
    end
  end
end
