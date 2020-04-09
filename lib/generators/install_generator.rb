module Dop
  class InstallGenerator < Rails::Generator::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_config_file
      copy_file "dop.yml", "config/dop.yml"
    end

    def copy_initializer_file
      copy_file "dop.rb",  "config/initializers/dop.rb"
    end
  end
end
