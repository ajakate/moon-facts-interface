# load path
lib_path = File.expand_path('../', __FILE__)
($:.unshift lib_path) unless ($:.include? lib_path)

Bundler.require(:default)

