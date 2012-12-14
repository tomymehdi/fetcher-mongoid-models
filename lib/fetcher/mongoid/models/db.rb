require 'mongoid'
require 'pry'

module Fetcher
  module Mongoid
    module Models
      class DB

        def initialize path_to_mongoid_config
          ::Mongoid.load!(path_to_mongoid_config, :development)
        end

      end
    end
  end
end