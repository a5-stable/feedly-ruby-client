require 'feedly_api/client/boards'
require 'feedly_api/client/categories'
require 'feedly_api/client/feeds'
require 'feedly_api/client/tags'

module FeedlyApi
  class Client
    include FeedlyApi::Client::Boards
    include FeedlyApi::Client::Categories
    include FeedlyApi::Client::Feeds
    include FeedlyApi::Client::Tags

    attr_accessor :access_token

    def initialize(params)
      raise 'access token required' if params.fetch(:access_token).nil?
      @access_token = params.fetch(:access_token)
    end
  end
end
