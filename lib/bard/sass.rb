require "bard/sass/version"

module Bard
  module Sass
    if defined?(Rails) && defined?(Rails::Engine)
      class Engine < Rails::Engine
        config.assets.paths << File.expand_path("../../sass", __dir__)
      end
    end
  end
end

