class CosukaFargateGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  desc 'For fargate setting files'

  def fargate_settings
    template 'Procfile'
    template 'buildspec.yml'
    template 'config/database.yml.docker'
    #template 'config/backup.rb'
    #template 'config/schedule.rb'
  end
end
