module FeedlyApi
  class Client
    attr_accessor :access_token

    def initialize(params)
      raise 'access token required' if params.fetch(:access_token).blank?
      @access_token = params.fetch(:access_token)
    end
  end
end
