require "sass"
require "bard/sass/version"

module Bard
  module Sass
    SASS_PATH = File.expand_path("../../sass", __dir__)

    if defined?(Rails) && defined?(Rails::Engine)
      class Engine < Rails::Engine
        config.assets.paths << SASS_PATH
      end
    else
      Sass.load_paths << SASS_PATH
    end
  end
end

