require 'rails/generators/base'

module Dop
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      desc "Creates a dop initializer and copy locale files to your application."

      def copy_initializer
        template "dop.rb",  "config/initializers/dop.rb"
      end
    end
  end
end
