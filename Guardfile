# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'sass', :all_on_start => true, :input => 'bower_components/foundation/scss', :output => 'public/css' do
  watch(%r{^sass/.+(\.sass)$})
end

guard "slim", :all_on_start => true do
  watch(%r{^templates/.+(\.slim)$})
end
