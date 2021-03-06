require 'rails'

module Envb
  module Generators
    class StylesheetGenerator < ::Rails::Generators::Base
      desc 'Copies an envb-rails customization stylesheet into your application.'
      source_root File.expand_path('../templates/', __FILE__)

      # Internal: Copies the envb_custom stylesheet into your application.
      #
      # Returns no value.
      def copy_stylesheet_file
        copy_file 'envb_custom.css.scss', 'app/assets/stylesheets/envb_custom.css.scss'
      end
    end
  end
end
