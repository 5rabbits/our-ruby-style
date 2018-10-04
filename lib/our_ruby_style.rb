require 'our_ruby_style/version'
require 'rails/generators'

# Our Ruby Style Gem
# Our config files for code style tools:
#   * rubocop
#   * fasterer
#   * reek
module OurRubyStyle
  def self.install
    Rails::Generators.invoke('our_ruby_style:settings')
  end
end
