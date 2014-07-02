# A sample Guardfile
# More info at https://github.com/guard/guard#readme
require 'json'

guard 'sass', :all_on_start => true, :input => 'bower_components/foundation/scss', :output => 'public/css' do
  watch(%r{^src/sass/.+(\.sass)$})
end

class RoutesContext
  def initialize(template)
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
    `cp -r bower_components/* public/js`
  end
end

guard 'process', :name => 'server', :command => 'ruby server.rb', :stop_signal => "KILL"  do
end

