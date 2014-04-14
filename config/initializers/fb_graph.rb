module FbGraph
  module Connections
    module Locations
      def locations(options = {})
        locations = self.connection :locations, options
        locations.map! do |post|
          Post.new post[:id], post.merge(
            :access_token => options[:access_token] || self.access_token
          )
        end
      end
    end
  end

  class User < Node

    include Connections::Locations
  end

end