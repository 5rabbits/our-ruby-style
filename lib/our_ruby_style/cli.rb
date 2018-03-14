require 'thor'
require 'our_ruby_style'

module OurRubyStyle
  # Cli for command line tasks
  class CLI < Thor
    desc 'install', 'Install configuration Files'
    def install
      puts OurRubyStyle.install
    end
  end
end
