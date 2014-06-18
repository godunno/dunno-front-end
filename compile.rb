#!/usr/bin/env ruby
# https://github.com/marvinahv/listen-slim-to-html

require 'fileutils'
require 'listen'
require 'slim'

class SlimListener
  attr_accessor :input_folder, :output_folder

  def initialize(input_folder, output_folder)
    @input_folder, @output_folder = input_folder, output_folder
  end

  def html_path(path)
    path.sub(input_folder, output_folder)
  end

  def html_file(path)
    dir = File.dirname(path)
    base = File.basename(path, ".slim")
    base << '.html'
    File.join(dir, base)
  end

  # LISTEN TO
  def listen
    Listen.to(input_folder, only: /\.slim$/) do |modified, added, removed|

      # ADDED
      unless added.empty?
        added.each do |slim_path|
          new_path = html_path(slim_path)
          dir = File.dirname(new_path)

          FileUtils.mkpath(dir) unless File.directory?(dir)

          File.new(html_file(new_path), 'w')

          puts "#{html_file(new_path)} was created."
        end
      end

      # MODIFIED
      unless modified.empty?
        modified.each do |slim_path|
          html_file = File.open(html_file(html_path(slim_path)), 'w+')

          template = Slim::Template.new(slim_path, { :pretty => true }).render

          html_file.write(template)
          html_file.close

          puts "#{html_file(html_path(slim_path))} was modified."
        end
      end

      # REMOVED
      unless removed.empty?
        removed.each do |slim_path|
          html_file = html_file(html_path(slim_path))
          dir = File.dirname(slim_path)

          FileUtils.remove_file(html_file)
          FileUtils.rmdir([html_path(dir)]) unless File.directory?(dir)

          puts "#{html_file(html_path(slim_path))} was removed."
        end
      end
    end
  end

  def run
    puts "Listening for changes in #{input_folder}"
    listen.start
    sleep
  end
end

#SlimListener.new(ARGV[0], ARGV[1]).run
SlimListener.new("src/slim/", "templates/").run
