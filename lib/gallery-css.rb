require "gallery-css/version"

module GalleryCss
  if defined?(Rails)
    require 'gallery-css/engine'
  else
    Sass.load_paths << File.expand_path("../../vendor/assets/stylesheets", __FILE__)
  end
end
