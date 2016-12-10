#!/usr/bin/env rake

require 'bundler/gem_tasks'

desc 'Upgrade gallery-css'
task :upgrade do
  postfix=".scss"
  files = {
    '_gallery':  "https://raw.githubusercontent.com/benschwarz/gallery-css/master/sass/_gallery#{postfix}",
    '_variables': "https://raw.githubusercontent.com/benschwarz/gallery-css/master/sass/_variables#{postfix}",
    'gallery.build': "https://raw.githubusercontent.com/benschwarz/gallery-css/master/sass/gallery.build#{postfix}",
    'gallery.theme': "https://raw.githubusercontent.com/benschwarz/gallery-css/master/sass/gallery.theme#{postfix}"
  }

  files.each do |file, url|
    puts "Downloading #{file}#{postfix}"
    puts `curl -o vendor/assets/stylesheets/gallery-css/#{file}#{postfix} #{url}`
  end
end


