# A sample Guardfile
# More info at https://github.com/guard/guard#readme
require 'json'
require 'slim'

guard 'sass', :all_on_start => true, :input => 'bower_components/foundation/scss', :output => 'public/css' do
  watch(%r{^src/sass/.+(\.sass)$})
end

class RoutesContext
  def initialize(template)
    ::Slim::Engine.set_default_options :attr_delims => {'(' => ')', '[' => ']'}
  end

  def publish?
    !!ENV["PUBLISH"]
  end

  def routes
    files = `find src/templates -name \*.slim -print`.split
    files.delete("src/templates/index.slim")
    paths = files.map do |file|
      file.sub(%r{^src/templates/}, '').
        sub(/slim$/, 'html')
    end
    JSON.generate(paths)
  end
end

guard "slim", context: RoutesContext, :all_on_start => true, output: '../public' do
  watch(%r{^src/templates/.+(\.slim)$})
end

guard :shell, :all_on_start => true do
  watch(%r{^src/.*}) do |m|
    `[ ! -d public/js ] && mkdir -p public/js`
    `cp -R bower_components/* public/js`
    `cp -R src/fonts/* public/fonts`
  end
end

guard 'process', :name => 'server', :command => 'ruby server.rb', :stop_signal => "KILL"  do
end

