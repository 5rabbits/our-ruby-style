require 'rails/generators'
module OurRubyStyle
  # Generator for Settings files
  class SettingsGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../templates', __FILE__)

    def create_settings_files
      template('rubocop.yml', '.rubocop.yml')
      template('fasterer.yml', '.fasterer.yml')
      template('config.reek', 'config.reek')
      if yes?('Would you like enable Rails Best practices?')
        @include_rails = true
        template('rails_best_practices.yml', 'config/rails_best_practices.yml')
      end

      if yes?('Would you like enable Precommit Hook?')
        template 'overcommit.yml.erb', '.overcommit.yml'
      end
    end
  end
end
